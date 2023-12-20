unit uNFCE;

interface

uses  Windows, Dialogs, Messages, SysUtils, Classes, Controls, StdCtrls, Mask,
      MaskUtils, Winsock, StrUtils, ShDocVw, Forms, IdSNTP, WinInet, Graphics,
      ExtCtrls, IdHTTP, DBClient, DB, IniFiles, IdDayTime, DateUtils, ShellApi,
      ComCtrls, ToolWin, Variants, TlHelp32, Math, ACBrNfe, pcnConversao, ACBrUtil,
      ACBrNFeDANFEClass,ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, XMLIntf, XMLDoc, ACBrMail,
      ACBrNFeDANFeRLClass, pcnNFe, pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar,
      ACBrDFeSSL, pcnNFeRTXT, FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL, ACBrNFeConfiguracoes,
      Spin, Buttons, OleCtrls, ACBrPosPrinter, ACBrDANFCeFortesFr, ACBrDFeReport, ACBrDFeDANFeReport,
      zlib, ACBrIntegrador, ACBrDANFCeFortesFrA4, ACBrSAT, ACBrSocket, ACBrCEP;

procedure alimentarnfce(NumDFe: String);
var
  cpfcli,cnpjcli,codmunicdest, siglauf:string;
  nfceemit,teminternet,codvenda,codtipocob:integer;
  valordesconto, valoracrescimo:double;
  valortroco, valorpago:currency;

implementation

uses  Frm_ACBrNFe, Frm_ConfiguraSerial, Frm_SelecionarCertificado, Frm_Status,
      u_aguarde, u_Aviso, u_dados, u_dadoscheckout, u_funcoes, u_notifica,
      u_verificainternet, TypInfo, synacode, blcksock, Printers,
      pcnRetConsReciDFe,ACBrDFeUtil, u_checkout;

const
  SELDIRHELP = 1000;



procedure AlimentarNFCe(NumDFe: String);
var
  cpf, cepempresa, prod_codbar, prod_descri, prod_unidad, prod_codfisc:string;
  contador,munic_emit,tamanho:integer;
  desconto,acrescimo, acumulaacrescimo, acumula, acumuladesconto, acumulado,zeraacrescimo, zeradesconto:Currency;
  testaean:boolean;
begin
  tamanho:=0;
  cpf:=emptystr;
  cpfcli:=emptystr;
  cnpjcli:=emptystr;
  //  CONFIGURA ACBR
  frmACBrNFe.ACBrNFe1.NotasFiscais.Clear;
  frmACBrNFe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  //frmACBrNFe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
  //frmACBrNFe.ACBrNFe1.Configuracoes.Geral.VersaoQRCode:=veqr200;
  frmACBrNFe.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largura;
  //frmACBrNFe.ACBrNFeDANFCeFortes1.ArquivoPDF:='nfce'+(numdfe);
  //frmACBrNFe.ACBrNFeDANFCeFortes1.PathPDF:=
  if dm_dados.logomarca<>'' then frmACBrNFe.ACBrNFeDANFCeFortes1.Logo:=dm_dados.logomarca;
  // RETORNA ULTIMO NUMERO DE NFCE
  dm_dados.zqry_MAX_NFCE.Close;
  dm_dados.zqry_MAX_NFCE.SQL.Clear;
  dm_dados.zqry_MAX_NFCE.SQL.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
  dm_dados.zqry_MAX_NFCE.ParamByName('p1').AsString:='NC';
  dm_dados.zqry_MAX_NFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_MAX_NFCE.Open;
  if dm_dados.zqry_MAX_NFCE.IsEmpty then
  begin
    showmessage('Dados de Sequ�ncia da NFCe n�o localizados.'#13'Solicite Suporte T�cnico'#13'Erro: SGTAB=NC | Tab: SEQUENCIA');
  end;
  numdfe:=dm_dados.zqry_MAX_NFCEULTNFCE.Asstring;
  try
    strtofloat(numdfe);
  except
    on E:Exception do
  begin
    MessageDlg('Valor informado est� errado. Solicite suporte para verificar SGSEQUENCIA - NC!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
    raise;
    exit;
  end;
  end;
  nfceemit:=strtoint(numdfe);
  //* fazer consulta empresa *//
  dm_dados.zqry_SGFILIAL.Params.clear;
  dm_dados.zqry_SGFILIAL.Close;
  dm_dados.zqry_SGFILIAL.SQL.Clear;
  dm_dados.zqry_SGFILIAL.sql.Add('select * from sgfilial where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_SGFILIAL.Open;
  //showmessage(dm_dados.zqry_SGFILIALCNPJFILIAL.AsString);
  //* fazer consulta *//
  dm_checkout.zqry_VDVENDA_NFCE.Params.Clear;
  dm_checkout.zqry_VDVENDA_NFCE.Close;
  dm_checkout.zqry_VDVENDA_NFCE.sql.clear;
  dm_checkout.zqry_VDVENDA_NFCE.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
  dm_checkout.zqry_VDVENDA_NFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_checkout.zqry_VDVENDA_NFCE.ParamByName('vendacod').AsInteger:=codvenda;//dm_dados.zqry_VDVENDACODCLI.AsInteger;
  dm_checkout.zqry_VDVENDA_NFCE.Open;
  // Consulta Cliente
    // Retorna Cliente
  dm_dados.zqry_VDCLIENTE.Close;
  dm_Dados.zqry_vdcliente.sql.clear;
  dm_Dados.zqry_vdcliente.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
  dm_Dados.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=dm_checkout.zqry_VDVENDA_nfcecodcli.AsInteger;
  dm_Dados.zqry_VDCLIENTE.Open;
  if dm_checkout.zqry_VDVENDA_NFCEcodcli.asinteger=1 then
  begin
    tamanho:=Length(frm_checkout.identifica);
    if (tamanho = 11) then cpfcli:=frm_checkout.identifica;
    if (tamanho = 14) then cnpjcli:=frm_checkout.identifica;
  end
  else
  begin
    cpfcli:=dm_Dados.zqry_vdclientecpfcli.asstring;
    cnpjcli:=dm_dados.zqry_VDCLIENTECNPJCLI.AsString;
  end;

  teminternet:=u_verificainternet.Ping(10000,'www.google.com.br',80);
  with frmACBrNFe.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.natOp     := 'VENDA';
    Ide.indPag    := ipVista;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    Ide.nNF       := strtoint(NumDFe);
    Ide.cNF       := GerarCodigoDFe(Ide.nNF);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    if teminternet=0  then Ide.tpEmis     := teNormal;
    if teminternet<>0 then ide.tpemis     := teContingencia;
    //Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao);;
    if dm_dados.ambiente='1' then Ide.tpAmb     := taHomologacao;
    if dm_dados.ambiente='0' then ide.tpAmb     := taProducao;
    dm_checkout.zqry_SGMUNICIPIO.close;
    dm_checkout.zqry_SGMUNICIPIO.SQL.Clear;
    dm_checkout.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
    dm_checkout.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=DM_DADOS.zqry_SGFILIALCODMUNIC.ASSTRING;
    dm_checkout.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:=DM_DADOS.zqry_SGFILIALSIGLAUF.AsString;
    dm_checkout.zqry_sgmunicipio.open;
    munic_emit:=strtoint(dm_checkout.zqry_sgmunicipiocoduf.asstring+dm_checkout.zqry_sgmunicipiocodmunic.asstring);

    Ide.cUF       := UFtoCUF(dm_Dados.zqry_SGFILIALSIGLAUF.asstring);
    Ide.cMunFG    := munic_emit;
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    Ide.verProc   := 'NonoElemento';
    Ide.indPres   := pcPresencial;
    //ide.indintermed:= iiOperacaoSemIntermediador;

    if teminternet<>0 then
    begin
     Ide.dhCont := now;
     Ide.xJust  := 'Sistema de comunica��o com a Receita em falha';

    end;

    Emit.CNPJCPF           := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;
    Emit.IE                := dm_dados.zqry_SGFILIALINSCFILIAL.asstring;
    Emit.xNome             := dm_dados.zqry_SGFILIALRAZFILIAL.asstring;
    Emit.xFant             := dm_dados.zqry_SGFILIALNOMEFILIAL.asstring;

    Emit.EnderEmit.fone    := dm_dados.zqry_SGFILIALDDDFILIAL.asstring+dm_dados.zqry_SGFILIALFONEFILIAL.asstring;
    cepempresa             := tirapontos(dm_dados.zqry_SGFILIALCEPFILIAL.asstring);
    Emit.EnderEmit.CEP     := strtoint(cepempresa);
    Emit.EnderEmit.xLgr    := dm_dados.zqry_SGFILIALENDFILIAL.asstring;
    Emit.EnderEmit.nro     := dm_dados.zqry_SGFILIALNUMFILIAL.asstring;
    Emit.EnderEmit.xCpl    := dm_dados.zqry_SGFILIALCOMPLFILIAL.asstring;
    Emit.EnderEmit.xBairro := dm_dados.zqry_SGFILIALBAIRFILIAL.asstring;
    Emit.EnderEmit.cMun    := munic_emit;
    if dm_dados.zqry_SGFILIALCIDFILIAL.AsString='' then
    begin
      showmessage('Campo Nome Cidade n�o preenchido em SGFILIAL');
    end;
    Emit.EnderEmit.xMun    := dm_dados.zqry_SGFILIALCIDFILIAL.AsString;

    //showmessage(dm_dados.zqry_SGFILIALCIDFILIAL.AsString);
    Emit.EnderEmit.UF      := dm_dados.zqry_SGFILIALSIGLAUF.asstring;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
    infRespTec.CNPJ:= '06976896000125';
    infRespTec.xContato:='Israel de Oliveira Pinheiro Lopes';
    infRespTec.email:= 'contato@nonoelemento.com.br';
    infRespTec.fone:='2731800309';
    infResptec.idcsrt:=0;
    infRespTec.hashCSRT:='';

    if dm_dados.zqry_SGFILIALSIMPLESFILIAL.AsString='S' then Emit.CRT := crtSimplesNacional else  Emit.CRT :=crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      If (cpfcli='') and (cnpjcli='') and (dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.AsFloat>=500) then
      begin
        if not(InputQuery('Alles - NFCe: Informar CNPJ/CPF', 'Informe o CNPJ/CPF do Comprador', cpf)) then
        exit;
        Dest.CNPJCPF := cpf;
      end
      else
      begin
        if cpfcli<>'' then Dest.CNPJCPF := cpfcli else Dest.CNPJCPF := cnpjcli;
      end;

//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := frm_checkout.nomedest;
      //Dest.CNPJCPF           := '05481336000137';
//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
    Dest.ISUF              := '';
    if dm_checkout.zqry_VDVENDA_NFCE_FONECLI.AsString=''  then
        Dest.EnderDest.Fone := '' else
        Dest.EnderDest.Fone := dm_checkout.zqry_VDVENDA_NFCE_DDDCLI.asstring+dm_checkout.zqry_VDVENDA_NFCE_FONECLI.asstring;
    if dm_checkout.zqry_VDVENDA_NFCE_CEPCLI.IsNull        then
        Dest.EnderDest.CEP  :=0   else
        Dest.EnderDest.CEP  :=dm_checkout.zqry_VDVENDA_NFCE_CEPCLI.AsInteger;
    Dest.EnderDest.xLgr    := dm_checkout.zqry_VDVENDA_NFCE_ENDCLI.AsString;
    Dest.EnderDest.nro     := dm_checkout.zqry_VDVENDA_NFCE_NUMCLI.AsString;;
    Dest.EnderDest.xCpl    := dm_checkout.zqry_VDVENDA_NFCE_COMPLCLI.AsString;
    Dest.EnderDest.xBairro := dm_checkout.zqry_VDVENDA_NFCE_BAIRCLI.AsString;
    dest.indIEDest:=inNaoContribuinte;
    dm_dados.zqry_SGMUNICIPIO.close;
    dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
    dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
    dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=codmunicdest;
    dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= siglauf;
    dm_dados.zqry_sgmunicipio.open;
    Dest.EnderDest.cMun   := strtoint(dm_dados.zqry_sgmunicipiocoduf.asstring+codmunicdest);
    Dest.EnderDest.xMun    := dm_checkout.zqry_VDVENDA_NFCE_CIDCLI.AsString;
    Dest.EnderDest.UF      := dm_checkout.zqry_VDVENDA_NFCE_UFCLI.AsString;;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio
    Retirada.CNPJCPF := '';
    Retirada.xLgr    := '';
    Retirada.nro     := '';
    Retirada.xCpl    := '';
    Retirada.xBairro := '';
    Retirada.cMun    := 0;
    Retirada.xMun    := '';
    Retirada.UF      := '';

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio
    Entrega.CNPJCPF := '';
    Entrega.xLgr    := '';
    Entrega.nro     := '';
    Entrega.xCpl    := '';
    Entrega.xBairro := '';
    Entrega.cMun    := 0;
    Entrega.xMun    := '';
    Entrega.UF      := '';

    dm_checkout.zqry_VDITVENDA_NFCE.Close;
    dm_checkout.zqry_VDITVENDA_NFCE.SQL.clear;
    dm_checkout.zqry_VDITVENDA_NFCE.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    dm_checkout.zqry_VDITVENDA_NFCE.ParamByName('vendacod').AsInteger:=codvenda;//strtoint(frm_cupom.DBText1.Caption);
    dm_checkout.zqry_VDITVENDA_NFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_checkout.zqry_VDITVENDA_NFCE.Open;
    if dm_checkout.zqry_VDITVENDA_NFCE.IsEmpty then
    begin
      showmessage('Fechamento do Cupom n�o Localizado');
    end
    else
    begin
      dm_checkout.zqry_VDITVENDA_NFCE.First;
    end;
    contador:=1;
    desconto:=simpleroundto(valordesconto/dm_checkout.zqry_vditvenda_nfce.RecordCount, -2);
    zeradesconto:=valordesconto;
    acumuladesconto:=0;

    acrescimo:=simpleroundto(valoracrescimo/dm_checkout.zqry_vditvenda_nfce.RecordCount, -2);
    zeraacrescimo:=valoracrescimo;
    acumulaacrescimo:=0;

    while not dm_checkout.zqry_VDITVENDA_NFCE.eof do
    begin
      //Adicionando Produtos
        with Det.New do
        begin
          Prod.nItem    := contador; // N�mero sequencial, para cada item deve ser incrementado
          Prod.cProd    := dm_checkout.zqry_VDITVENDA_NFCECODPROD.AsString;
          //Consulta Produtos
          dm_checkout.zqry_EQPRODUTO.Params.Clear;
          dm_checkout.zqry_EQPRODUTO.close;
          dm_checkout.zqry_EQPRODUTO.SQL.Clear;
          dm_checkout.zqry_EQPRODUTO.SQL.Add('select codemp,codprod,descprod,codfisc,codbarprod,codunid,precobaseprod from eqproduto where codprod=:prodcod and codemp=:empcod');
          dm_checkout.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=dm_checkout.zqry_VDITVENDA_NFCECODPROD.AsInteger;
          dm_checkout.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
          dm_checkout.zqry_EQPRODUTO.Open;
          testaean:= validagtin(dm_checkout.zqry_EQPRODUTOCODBARPROD.AsString);
          //showmessage(BoolToStr(testaean));
          if booltostr(testaean)<>'0' then PROD_CODBAR   := dm_checkout.zqry_EQPRODUTOCODBARPROD.AsString;
          if (PROD_CODBAR='') or (booltostr(testaean)='0') then PROD_CODBAR:='SEM GTIN';
          PROD_DESCRI   := dm_checkout.zqry_EQPRODUTODESCPROD.AsString;
          PROD_UNIDAD   := dm_checkout.zqry_EQPRODUTOCODUNID.AsString;
          Prod.cEAN     := PROD_CODBAR;
          Prod.xProd    := PROD_DESCRI;
          PROD_CODFISC  :=dm_checkout.zqry_EQPRODUTOCODFISC.asstring;
          Prod.NCM      := PROD_CODFISC; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
          Prod.EXTIPI   := '';
          Prod.CFOP     := dm_checkout.zqry_VDITVENDA_NFCECODNAT.ASSTRING;
          Prod.uCom     := prod_UNIDAD;
          Prod.qCom     := dm_checkout.zqry_VDITVENDA_NFCEQTDITVENDA.asfloat;
          Prod.vUnCom   := dm_checkout.zqry_VDITVENDA_NFCEPRECOITVENDA.AsCurrency;
          Prod.vProd    := dm_checkout.zqry_VDITVENDA_NFCEVLRPRODITVENDA.AsCurrency;

          Prod.cEANTrib  := PROD_CODBAR;
          Prod.uTrib     := prod_UNIDAD;;
          Prod.qTrib     := dm_checkout.zqry_VDITVENDA_NFCEQTDITVENDA.asfloat;
          Prod.vUnTrib   := dm_checkout.zqry_VDITVENDA_NFCEPRECOITVENDA.AsCurrency;

          //ACRESCIMO
          acumulaacrescimo:=acumulaacrescimo+acrescimo;
          acumula:=zeraacrescimo-acumulaacrescimo;
          {if (acumulado<=desconto) then
          begin
            Prod.vOutro     := acrescimo;
            showmessage(floattostr(acrescimo));
          end
          else
          begin
            Prod.vOutro     := ZeraAcrescimo-acumula;
            showmessage(floattostr(zeraacrescimo-acumula));
          end;      }

          if (acumula<=0.03) then
          begin
            Prod.vOutro    := acrescimo+(acumula);
            //showmessage(floattostr(acrescimo+acumula));
          end
          else
          begin
            Prod.vOutro     := acrescimo;
            //showmessage(floattostr(acrescimo));
          end;

          Prod.vFrete    := 0;
          Prod.vSeg      := 0;

          //DESCONTO
          acumuladesconto:=acumuladesconto+desconto;
          acumulado:=zeradesconto-acumuladesconto;
         // showmessage('acumulado '+floattostr(acumulado));
         { if (acumulado<desconto) then
          begin
            Prod.vDesc     := Desconto+(acumulado);
            //showmessage('menor que | acumulado '+floattostr(acumulado));
            //showmessage('menor que | desconto '+floattostr(desconto));
            showmessage('menor')
          end;
          if (acumulado=desconto) then
          begin
            Prod.vDesc     := desconto;
            showmessage('igual')
          end;
          if (acumulado>desconto) then
          begin
            Prod.vDesc     := desconto;
            showmessage('maior');
          end;     }

          if (acumulado<=0.03) then
          begin
            Prod.vDesc     := Desconto+(acumulado);
          end
          else
          begin
            Prod.vDesc     := desconto;
          end;




          Prod.CEST := '1111111';

          //         infAdProd      := 'Informa��o Adicional do Produto';

        with Imposto do
        begin
          // lei da transparencia nos impostos
        vTotTrib := 0;

        with ICMS do
        begin
          //CST          := cst00;
          if dm_checkout.zqry_VDITVENDA_NFCECODNAT.ASSTRING='5102' then CSOSN        := csosn102;
          if dm_checkout.zqry_VDITVENDA_NFCECODNAT.ASSTRING='5405' then CSOSN        := csosn500;
          ICMS.orig    := oeNacional;
          ICMS.modBC   := dbiValorOperacao;
          ICMS.vBC     := 0;//100;
          ICMS.pICMS   := 0;//18;
          ICMS.vICMS   := 0;//18;
          ICMS.modBCST := dbisPrecoTabelado;//dbisMargemValorAgregado;
          ICMS.pMVAST  := 0;
          ICMS.pRedBCST:= 0;
          ICMS.vBCST   := 0;
          ICMS.pICMSST := 0;
          ICMS.vICMSST := 0;
          ICMS.pRedBC  := 0;

          // partilha do ICMS e fundo de probreza
          with ICMSUFDest do
          begin
            vBCUFDest      := 0.00;
            pFCPUFDest     := 0.00;
            pICMSUFDest    := 0.00;
            pICMSInter     := 0.00;
            pICMSInterPart := 0.00;
            vFCPUFDest     := 0.00;
            vICMSUFDest    := 0.00;
            vICMSUFRemet   := 0.00;
          end;
        end;

        with PIS do
        begin
          CST      := pis99;
          PIS.vBC  := 0;
          PIS.pPIS := 0;
          PIS.vPIS := 0;

          PIS.qBCProd   := 0;
          PIS.vAliqProd := 0;
          PIS.vPIS      := 0;
        end;

        with PISST do
        begin
          vBc       := 0;
          pPis      := 0;
          qBCProd   := 0;
          vAliqProd := 0;
          vPIS      := 0;
        end;

        with COFINS do
        begin
          CST            := cof99;
          COFINS.vBC     := 0;
          COFINS.pCOFINS := 0;
          COFINS.vCOFINS := 0;

          COFINS.qBCProd   := 0;
          COFINS.vAliqProd := 0;
        end;

        with COFINSST do
        begin
          vBC       := 0;
          pCOFINS   := 0;
          qBCProd   := 0;
          vAliqProd := 0;
          vCOFINS   := 0;
        end;
      end;
      contador:=contador+1;
      dm_checkout.zqry_VDITVENDA_nfce.Next;
    end;

    (*
    //Adicionando Servi�os
    with Det.New do
    begin
      Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
      Prod.cProd    := '123457';
      Prod.cEAN     := '';
      Prod.xProd    := 'Descri��o do Servi�o';
      Prod.NCM      := '99';
      Prod.EXTIPI   := '';
      Prod.CFOP     := '5933';
      Prod.uCom     := 'UN';
      Prod.qCom     := 1;
      Prod.vUnCom   := 100;
      Prod.vProd    := 100;

      Prod.cEANTrib  := '';
      Prod.uTrib     := 'UN';
      Prod.qTrib     := 1;
      Prod.vUnTrib   := 100;

      Prod.vFrete    := 0;
      Prod.vSeg      := 0;
      Prod.vDesc     := 0;

      infAdProd      := 'Informa��o Adicional do Servi�o';

      //Grupo para servi�os
      with Imposto.ISSQN do
      begin
        cSitTrib  := ISSQNcSitTribNORMAL;
        vBC       := 100;
        vAliq     := 2;
        vISSQN    := 2;
        cMunFG    := 3554003;
        cListServ := '14.02'; // Preencha este campo usando a tabela dispon�vel
                              // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      end;
    end;
    *)
    end;

    Total.ICMSTot.vBC     := 0;//100;
    Total.ICMSTot.vICMS   := 0;//18;
    Total.ICMSTot.vBCST   := 0;
    Total.ICMSTot.vST     := 0;
    Total.ICMSTot.vProd   := (dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.AsFloat+valordesconto)-valoracrescimo;
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vSeg    := 0;
    Total.ICMSTot.vDesc   := valordesconto;

    Total.ICMSTot.vII     := 0;
    Total.ICMSTot.vIPI    := 0;
    Total.ICMSTot.vPIS    := 0;
    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro  := VALORACRESCIMO;
    Total.ICMSTot.vNF     := dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.AsFloat;

    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest   := 0.00;
    Total.ICMSTot.vICMSUFDest  := 0.00;
    Total.ICMSTot.vICMSUFRemet := 0.00;

    Total.ISSQNtot.vServ   := 0;
    Total.ISSQNTot.vBC     := 0;
    Total.ISSQNTot.vISS    := 0;
    Total.ISSQNTot.vPIS    := 0;
    Total.ISSQNTot.vCOFINS := 0;

    Total.retTrib.vRetPIS    := 0;
    Total.retTrib.vRetCOFINS := 0;
    Total.retTrib.vRetCSLL   := 0;
    Total.retTrib.vBCIRRF    := 0;
    Total.retTrib.vIRRF      := 0;
    Total.retTrib.vBCRetPrev := 0;
    Total.retTrib.vRetPrev   := 0;

    pag.vTroco:=valortroco;

    Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

    {Cobr.Fat.nFat  := 'Numero da Fatura';
    Cobr.Fat.vOrig := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;
    Cobr.Fat.vDesc := strtocurr(edt_VALORDESCONTO.Text);
    Cobr.Fat.vLiq  := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;

    {with Cobr.Dup.New do
    begin
      nDup  := '1234';
      dVenc := now+10;
      vDup  := 50;
    end;

    with Cobr.Dup.New do
    begin
      nDup  := '1235';
      dVenc := now+10;
      vDup  := 50;
    end;}

    dm_checkout.cds_MULTIPAGTO.First;
    while not dm_checkout.cds_MULTIPAGTO.eof do
    begin
      with pag.New do
      begin
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=1  then tpag:=fpDinheiro;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=2  then tpag:=fpCheque;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=3  then tpag:=fpCartaoDebito;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=4  then tpag:=fpCartaoCredito;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=5  then tpag:=fpCreditoLoja;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=6  then tpag:=fpBoletoBancario;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=10 then tpag:=fpValeAlimentacao;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=11 then tpag:=fpValeRefeicao;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=12 then tpag:=fpValePresente;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=13 then tpag:=fpValeCombustivel;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=14 then tpag:=fpValePresente;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=15 then tpag:=fpPagamentoInstantaneo;
        if dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=16 then tpag:=fpOutro;
        if (dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=3) or (dm_checkout.cds_MULTIPAGTOCODTIPOCOB.asinteger=4) then
        begin
          tpIntegra:=tiPagIntegrado;
          CNPJ      := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;
          cAut      := '1234567890';
          tband :=bcOutros;
        end;

        valorpago:=dm_checkout.cds_MULTIPAGTOVALOR.AsCurrency;
        vpag:= dm_checkout.cds_MULTIPAGTOVALOR.AsCurrency;
      end;
      dm_checkout.cds_MULTIPAGTO.next;
    end;

    {if codtipocob=1 then
    begin
      with pag.New do
      begin
        tPag := fpDinheiro;
        vPag := valorpago;
      end;
    end;

    if codtipocob=2 then
    begin
      with pag.New do
      begin
        tPag := fpCheque;
        vPag := valorpago;
      end;
    end;

    if codtipocob=3 then
    begin
      with pag.New do
      begin
        tPag := fpCartaoDebito;
        vPag := valorpago;
        tpIntegra:=tiPagIntegrado;
        CNPJ      := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;
        cAut      := '1234567890';
        tband :=bcOutros;
      end;
    end;

    if codtipocob=4 then
    begin
      with pag.New do
      begin
        tPag := fpCartaoCredito;
        vPag := valorpago;
        tpIntegra:=tiPagIntegrado;
        CNPJ      := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;
        cAut      := '1234567890';
        tband :=bcOutros;
      end;
    end;

    if codtipocob=5 then
    begin
      with pag.New do
      begin
        tPag := fpCreditoLoja;
        vPag := valorpago;
      end;
    end;

    if codtipocob=6 then
    begin
      with pag.New do
      begin
        tPag := fpBoletoBancario;
        vPag := valorpago;
      end;
    end;

    if codtipocob=7 then
    begin
      with pag.New do
      begin
        tPag := fpCheque;
        vPag := valorpago;
      end;
    end;


    if codtipocob=10 then
    begin
      with pag.New do
      begin
        tPag := fpValeAlimentacao;
        vPag := valorpago;
      end;
    end;

    if codtipocob=11 then
    begin
      with pag.New do
      begin
        tPag := fpValeRefeicao;
        vPag := valorpago;
      end;
    end;

    if codtipocob=12 then
    begin
      with pag.New do
      begin
        tPag := fpValePresente;
        vPag := valorpago;
      end;
    end;

    if codtipocob=13 then
    begin
      with pag.New do
      begin
        tPag := fpValeCombustivel;
        vPag := valorpago;
      end;
    end;

    if codtipocob=14 then
    begin
      with pag.New do
      begin
        tPag := fpPagamentoInstantaneo;
        xPag := 'PIX';
        vPag := valorpago;
      end;
    end;

   if codtipocob=15 then
    begin
      with pag.New do
      begin
        tPag := fpOutro;
        xPag := 'CARTEIRA DIGITAL';
        vPag := valorpago;
      end;
    end;
    }
    InfAdic.infCpl     :=  'O Vlr. Aprox. Tributos Lei 12.741/12 de R$ '+(formatfloat('##0.00',((dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.asfloat*7)/100)));
    InfAdic.infAdFisco :=  '';

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Pedido N.:';
      xTexto := inttostr(codvenda);
    end;

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Cliente:';
      if FRM_CHECKOUT.nomedest='' then FRM_CHECKOUT.nomedest:='VENDA A CONSUMIDOR';
      xTexto := frm_checkout.nomedest;
    end;

    with InfAdic.obsFisco.New do
    begin
      xCampo := 'ObsFisco';
      xTexto := 'Texto';
    end;
  end;

end;

end.
