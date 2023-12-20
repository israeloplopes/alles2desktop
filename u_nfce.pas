unit u_nfce;

interface

uses   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.Menus,
  ComCtrls, OleCtrls, SHDocVw, IdExplicitTLSClientServerBase, IdFTP, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ShellApi, WinSock, WinInet,
  Vcl.Imaging.jpeg, ACBrDANFCeFortesFrA4, ACBrNFeDANFeESCPOS, ACBrNFeDANFEClass,
  ACBrDANFCeFortesFr, ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFeRLClass,
  ACBrPosPrinter, ACBrIntegrador, ACBrMail, ACBrBase, ACBrDFe, ACBrNFe, ACBrUtil,
  XMLIntf, XMLDoc, zlib;

procedure CriarEnviar;
procedure AlimentarComponente(NumDFe: String);
procedure AlimentarNFCe(NumDFe: String);


var
 { Public declarations }
    //double
    pagoparcial, vlrtotalpagar, vlrdesconto,vlracrescimo,
    vlrprodutos, pago, falta, apagar : double;
    // Currency
    testavalor, valorpago, valortotal, valortroco, valordesconto, valoracrescimo : Currency;
    // Integer
    itemmultipagto, codvenda, codtipocob, codcli,ultmov, teminternet, pedvenda, nfceemit:integer;
    // String;
    cpfcli,cnpjcli,numdfe, retornacstat: string;

implementation

uses u_principal, frm_acbrnfe,u_monitor, u_Dados,u_verificainternet, u_funcoes,
     strutils, math, TypInfo, DateUtils, synacode, blcksock, FileCtrl, IniFiles, Printers, pcnAuxiliar, pcnNFe,
     pcnConversao, pcnConversaoNFe, pcnNFeRTXT, pcnRetConsReciDFe, ACBrDFeConfiguracoes,
     ACBrDFeSSL, ACBrDFeOpenSSL, ACBrDFeUtil, ACBrNFeNotasFiscais, ACBrNFeConfiguracoes, u_dadoscheckout;

procedure CriarEnviar;
var
  vAux, vNumLote, vSincrono: String;
  Sincrono: Boolean;
begin
  vAux := '';
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  vNumLote := '1';
  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);
  Sincrono := False;

  if Trim(vNumLote) = '' then
  begin
    MessageDlg('Número do Lote inválido.', mtError,[mbok], 0);
    exit;
  end;

  AlimentarComponente(vAux);

  vSincrono := '1';
  if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
    exit;

  if (Trim(vSincrono) <> '1') and (Trim(vSincrono) <> '0') then
  begin
    MessageDlg('Valor Inválido.', mtError,[mbok], 0);
    exit;
  end;

  if (FRMACBRNFE.ACBrNFe1.Integrador= FRMACBRNFE.ACBrIntegrador1) or (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;

  FRMACBRNFE.ACBrNFe1.Enviar(vNumLote, True, Sincrono);

  // PG DAS RESPOSTAS
  //pgRespostas.ActivePageIndex := 1;

  if not Sincrono then
  begin
    frm_monitor.MemoResp.Lines.Text := frmacbrnfe.ACBrNFe1.WebServices.Retorno.RetWS;
    frm_monitor.memoRespWS.Lines.Text := frmacbrnfe.ACBrNFe1.WebServices.Retorno.RetornoWS;
    frmacbrnfe.LoadXML(frmacbrnfe.ACBrNFe1.WebServices.Retorno.RetWS, frm_monitor.WBResposta);

    frm_monitor.MemoDados.Lines.Add('');
    frm_monitor.MemoDados.Lines.Add('Envio NFe');
    frm_monitor.MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.TpAmb));
    frm_monitor.MemoDados.Lines.Add('verAplic: ' + frmacbrnfe.ACBrNFe1.WebServices.Retorno.verAplic);
    frm_monitor.MemoDados.Lines.Add('cStat: ' + IntToStr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat));
    frm_monitor.MemoDados.Lines.Add('cUF: ' + IntToStr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cUF));
    frm_monitor.MemoDados.Lines.Add('xMotivo: ' + frmacbrnfe.ACBrNFe1.WebServices.Retorno.xMotivo);
    frm_monitor.MemoDados.Lines.Add('cMsg: ' + IntToStr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cMsg));
    frm_monitor.MemoDados.Lines.Add('xMsg: ' + frmacbrnfe.ACBrNFe1.WebServices.Retorno.xMsg);
    frm_monitor.MemoDados.Lines.Add('Recibo: ' + frmacbrnfe.ACBrNFe1.WebServices.Retorno.Recibo);
    frm_monitor.MemoDados.Lines.Add('Protocolo: ' + frmacbrnfe.ACBrNFe1.WebServices.Retorno.Protocolo);
  end
  else
  begin
    frm_monitor.MemoResp.Lines.Text := frmacbrnfe.ACBrNFe1.WebServices.Enviar.RetWS;
    frm_monitor.memoRespWS.Lines.Text := frmacbrnfe.ACBrNFe1.WebServices.Enviar.RetornoWS;
    frmacbrnfe.LoadXML(frmacbrnfe.ACBrNFe1.WebServices.Enviar.RetWS, frmacbrnfe.WBResposta);

    frm_monitor.MemoDados.Lines.Add('');
    frm_monitor.MemoDados.Lines.Add('Envio NFCe');
    frm_monitor.MemoDados.Lines.Add('tpAmb: ' + TpAmbToStr(frmacbrnfe.ACBrNFe1.WebServices.Enviar.TpAmb));
    frm_monitor.MemoDados.Lines.Add('verAplic: ' + frmacbrnfe.ACBrNFe1.WebServices.Enviar.verAplic);
    frm_monitor.MemoDados.Lines.Add('cStat: ' + IntToStr(frmacbrnfe.ACBrNFe1.WebServices.Enviar.cStat));
    frm_monitor.MemoDados.Lines.Add('cUF: ' + IntToStr(frmacbrnfe.ACBrNFe1.WebServices.Enviar.cUF));
    frm_monitor.MemoDados.Lines.Add('xMotivo: ' + frmacbrnfe.ACBrNFe1.WebServices.Enviar.xMotivo);
    frm_monitor.MemoDados.Lines.Add('Recibo: '+ frmacbrnfe.ACBrNFe1.WebServices.Enviar.Recibo);

    if (frmacbrnfe.ACBrNFe1.Integrador= frmacbrnfe.ACBrIntegrador1) then
    begin
      if (frmacbrnfe.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo <> '') then
      begin
        frm_monitor.MemoResp.Lines.Add('[Integrador]');
        frm_monitor.MemoResp.Lines.Add('Codigo=' + frmacbrnfe.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo);
        frm_monitor.MemoResp.Lines.Add('Valor=' + frmacbrnfe.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Valor);

        frmacbrnfe.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Codigo := '';
        frmacbrnfe.ACBrIntegrador1.ComandoIntegrador.IntegradorResposta.Valor := '';
      end;
    end;
  end;
  (*
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo
  *)
end;

procedure AlimentarComponente(NumDFe: String);
begin
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  AlimentarNFCe(NumDFe);
end;

procedure AlimentarNFCe(NumDFe: String);
var
  cpf, cepempresa, prod_codbar, prod_descri, prod_unidad:string;
  contador,munic_emit:integer;
  desconto:double;
begin
  //CONSULTA ULTIMA NFCE
  dm_dados.zqry_MAX_NFCE.Close;
  dm_dados.zqry_MAX_NFCE.SQL.Clear;
  dm_dados.zqry_MAX_NFCE.SQL.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
  dm_dados.zqry_MAX_NFCE.ParamByName('p1').AsString:='NC';
  dm_dados.zqry_MAX_NFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_MAX_NFCE.Open;
  if dm_dados.zqry_MAX_NFCE.IsEmpty then
  begin
    showmessage('Dados de Sequência da NFCe não localizados.'#13'Solicite Suporte Técnico'#13'Erro: SGTAB=NC | Tab: SEQUENCIA');
  end;
  numdfe:=dm_dados.zqry_MAX_NFCEULTNFCE.Asstring;
  //CONSULTA FILIAL
  dm_dados.zqry_SGFILIAL.Params.clear;
  dm_dados.zqry_SGFILIAL.Close;
  dm_dados.zqry_SGFILIAL.SQL.Clear;
  dm_dados.zqry_SGFILIAL.sql.Add('select * from sgfilial where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_SGFILIAL.Open;
  //CONSULTA VENDA  E ITENS DA VENDA
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
  dm_dados.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=1;//dm_dados.zqry_VDVENDACODCLI.AsInteger;
  dm_Dados.zqry_VDCLIENTE.Open;
  cpfcli:=dm_Dados.zqry_vdclientecpfcli.asstring;
  cnpjcli:=dm_dados.zqry_VDCLIENTECNPJCLI.AsString;

  with frmacbrnfe.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.natOp     := 'VENDA';
    Ide.indPag    := ipVista;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    Ide.nNF       := StrToInt(NumDFe);
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
    Ide.indPres   := pcPresencial;

    if teminternet<>0 then
    begin
     Ide.dhCont := date;
     Ide.xJust  := 'Sistema de comunicação com a Receita em falha';
    end;

    Emit.CNPJCPF           := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;;
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
    Emit.EnderEmit.cMun    := 2611606;//munic_emit;
    Emit.EnderEmit.xMun    := dm_dados.zqry_SGFILIALCIDFILIAL.AsString;
    //showmessage(dm_dados.zqry_SGFILIALCIDFILIAL.AsString);
    Emit.EnderEmit.UF      := dm_dados.zqry_SGFILIALSIGLAUF.asstring;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe

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
//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
       Dest.ISUF              := '';
      Dest.xNome             := dm_checkout.zqry_VDVENDA_NFCE_RAZCLI.AsString;
      //Dest.CNPJCPF           := '05481336000137';
//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
    Dest.ISUF              := '';
    if dm_checkout.zqry_VDVENDA_NFCE_FONECLI.AsString=''  then
        Dest.EnderDest.Fone := '' else
        Dest.EnderDest.Fone := dm_checkout.zqry_VDVENDA_NFCE_DDDCLI.value+dm_checkout.zqry_VDVENDA_NFCE_FONECLI.VALUE;
    if dm_checkout.zqry_VDVENDA_NFCE_CEPCLI.IsNull        then
        Dest.EnderDest.CEP  :=0   else
        Dest.EnderDest.CEP  :=dm_checkout.zqry_VDVENDA_NFCE_CEPCLI.AsInteger;
    Dest.EnderDest.xLgr    := dm_checkout.zqry_VDVENDA_NFCE_ENDCLI.AsString;
    Dest.EnderDest.nro     := dm_checkout.zqry_VDVENDA_NFCE_NUMCLI.AsString;;
    Dest.EnderDest.xCpl    := dm_checkout.zqry_VDVENDA_NFCE_COMPLCLI.AsString;
    Dest.EnderDest.xBairro := dm_checkout.zqry_VDVENDA_NFCE_BAIRCLI.AsString;
    Dest.EnderDest.cMun    := dm_checkout.zqry_VDVENDA_NFCE_CODMUNIC.AsInteger;
    Dest.EnderDest.xMun    := dm_checkout.zqry_VDVENDA_NFCE_CIDCLI.AsString;
    //SHOWMESSAGE(zqry_vdvenda_nfce_ufcli.AsString);
    Dest.EnderDest.UF      := dm_checkout.zqry_VDVENDA_NFCE_UFCLI.AsString;;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    Retirada.CNPJCPF := '';
    Retirada.xLgr    := '';
    Retirada.nro     := '';
    Retirada.xCpl    := '';
    Retirada.xBairro := '';
    Retirada.cMun    := 0;
    Retirada.xMun    := '';
    Retirada.UF      := '';

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    Entrega.CNPJCPF := '';
    Entrega.xLgr    := '';
    Entrega.nro     := '';
    Entrega.xCpl    := '';
    Entrega.xBairro := '';
    Entrega.cMun    := 0;
    Entrega.xMun    := '';
    Entrega.UF      := '';

//Adicionando Produtos
    dm_checkout.zqry_VDITVENDA_NFCE.Close;
    dm_checkout.zqry_VDITVENDA_NFCE.SQL.clear;
    dm_checkout.zqry_VDITVENDA_NFCE.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    dm_checkout.zqry_VDITVENDA_NFCE.ParamByName('vendacod').AsInteger:=codvenda;//strtoint(frm_cupom.DBText1.Caption);
    dm_checkout.zqry_VDITVENDA_NFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_checkout.zqry_VDITVENDA_NFCE.Open;
    if dm_checkout.zqry_VDITVENDA_NFCE.IsEmpty then
    begin
      showmessage('Fechamento do Cupom não Localizado');
    end
    else
    begin
      dm_checkout.zqry_VDITVENDA_NFCE.First;
    end;
    contador:=1;
    //totitens:=zqry_vditvenda_nfce.recordcount;
    desconto:=0;//strtocurr(edt_vlrdesc.text)/zqry_vditvenda_nfce.recordcount;

    while not dm_checkout.zqry_VDITVENDA_NFCE.eof do
    begin
      with Det.New do
      begin
          Prod.nItem    := contador; // Número sequencial, para cada item deve ser incrementado
          Prod.cProd    := dm_checkout.zqry_VDITVENDA_NFCECODPROD.AsString;
          //Consulta Produtos
          dm_checkout.zqry_EQPRODUTO.Params.Clear;
          dm_checkout.zqry_EQPRODUTO.close;
          dm_checkout.zqry_EQPRODUTO.SQL.Clear;
          dm_checkout.zqry_EQPRODUTO.SQL.Add('select codemp,codprod,descprod,codfisc,codbarprod,codunid,precobaseprod from eqproduto where codprod=:prodcod and codemp=:empcod');
          dm_checkout.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=dm_checkout.zqry_VDITVENDA_NFCECODPROD.AsInteger;
          dm_checkout.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
          dm_checkout.zqry_EQPRODUTO.Open;
          PROD_CODBAR   := dm_checkout.zqry_EQPRODUTOCODBARPROD.AsString;
          PROD_DESCRI   := dm_checkout.zqry_EQPRODUTODESCPROD.AsString;
          PROD_UNIDAD   := dm_checkout.zqry_EQPRODUTOCODUNID.AsString;
          Prod.cEAN     := PROD_CODBAR;
          //showmessage(prod_descri);
          Prod.xProd    := PROD_DESCRI;
          Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
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

          Prod.vOutro    := 0;
          Prod.vFrete    := 0;
          Prod.vSeg      := 0;
          Prod.vDesc     := SimpleRoundto(desconto,-3);

          Prod.CEST := '1111111';

        //         infAdProd      := 'Informação Adicional do Produto';

      with Imposto do
      begin
        // lei da transparencia nos impostos
        vTotTrib := 0;

        with ICMS do
        begin
          CSOSN        := csosn102;
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
    //Adicionando Serviços
    with Det.New do
    begin
      Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
      Prod.cProd    := '123457';
      Prod.cEAN     := '';
      Prod.xProd    := 'Descrição do Serviço';
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

      infAdProd      := 'Informação Adicional do Serviço';

      //Grupo para serviços
      with Imposto.ISSQN do
      begin
        cSitTrib  := ISSQNcSitTribNORMAL;
        vBC       := 100;
        vAliq     := 2;
        vISSQN    := 2;
        cMunFG    := 3554003;
        cListServ := '14.02'; // Preencha este campo usando a tabela disponível
                              // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      end;
    end;
    *)

    Total.ICMSTot.vBC     := 0;//100;
    Total.ICMSTot.vICMS   := 0;//18;
    Total.ICMSTot.vBCST   := 0;
    Total.ICMSTot.vST     := 0;
    Total.ICMSTot.vProd   := dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.AsFloat;
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vSeg    := 0;
    Total.ICMSTot.vDesc   := valordesconto;
    Total.ICMSTot.vII     := 0;
    Total.ICMSTot.vIPI    := 0;
    Total.ICMSTot.vPIS    := 0;
    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro  := valoracrescimo;
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

    Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

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

    with pag.New do
    begin
      tPag := fpDinheiro;
      vPag := valorpago;
    end;

    InfAdic.infCpl     :=  'O Vlr. Aprox. Tributos Lei 12.741/12 de R$ '+(formatfloat('##0.00',((dm_checkout.zqry_VDVENDA_NFCEVLRVENDA.asfloat*7)/100)));
    InfAdic.infAdFisco :=  '';

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Pedido N.:';
      xTexto := inttostr(codvenda);
    end;

    with InfAdic.obsFisco.New do
    begin
      xCampo := 'ObsFisco';
      xTexto := 'Nota Fiscal a Consumidor';
    end;
  end;

  frmacbrnfe.ACBrNFe1.NotasFiscais.GerarNFe;
end;
end;

end.
