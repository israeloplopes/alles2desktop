unit uNFE;

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

procedure CriarNFe;
procedure ZeraVariaveis;
procedure Identificacao;
procedure Emitente;
procedure Destinatario;
procedure itensvenda;
procedure itenscompra;
procedure icms;
procedure pis;
procedure cofins;
procedure ipi;
procedure difal;
procedure totais;
procedure transportevenda;
procedure transportecompra;
procedure pesovolume;
procedure faturavenda;
procedure faturacompra;
Procedure AlimentarComponente(NumDFe: String);
procedure AlimentarNFe(NumDFe: String);
procedure EnviarEmail;
procedure OpenURL(const URL: string);
procedure ExibirErroClassificacao;


var
  csosn,DESCRICAO,NCM,EAN,UNI,CEST,ncaminho,vsincrono, observacao,tipofrete:string;
  icmsdest, vicmsdest, SomaVProd, SomaVDesc :double;
  contador, achavenda, codigoproduto, numnf:integer;
  Sincrono: Boolean;

implementation

uses  u_Funcoes, con_pedido, u_dados, u_principal, frm_acbrnfe, TypInfo, synacode,
      blcksock, Grids, Printers, pcnRetConsReciDFe, ACBrDFeUtil, Frm_Status,
      Frm_SelecionarCertificado, Frm_ConfiguraSerial, u_verificainternet;

const
  SELDIRHELP = 1000;

procedure OpenURL(const URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure ExibirErroClassificacao;
begin
  if (MessageDlg('O Produto tem um erro na classifica��o fiscal. Para mais informa��es clique em OK',
    mtInformation, [mbOK, mbCancel], 0) = mrOK) then
  begin
    OpenURL('https://nonoelemento.com.br/site/2023/12/15/erro-na-classificacao-fiscal/');
  end;
end;


procedure AlimentarNFe(NumDFe: String);
var
  Ok: Boolean;
  NotaF: NotaFiscal;
  Produto: TDetCollectionItem;
//    Servico: TDetCollectionItem;
  Volume: TVolCollectionItem;
  Duplicata: TDupCollectionItem;
  ObsComplementar: TobsContCollectionItem;
  ObsFisco: TobsFiscoCollectionItem;
//    Referenciada: TNFrefCollectionItem;
//    DI: TDICollectionItem;
//    Adicao: TAdiCollectionItem;
//    Rastro: TrastroCollectionItem;
//    Medicamento: TMedCollectionItem;
//    Arma: TArmaCollectionItem;
//    Reboque: TreboqueCollectionItem;
//    Lacre: TLacresCollectionItem;
//    ProcReferenciado: TprocRefCollectionItem;
  InfoPgto: TpagCollectionItem;
  valorfrete, totalfrete:double;
begin
  //////////////////////////////////////////////////
  ///  PROCEDURE ZERA VARIAVEIS
  zeravariaveis;
  //////////////////////////////////////////////////
  ///
  IF FRM_CON_PEDIDOS.TIPOMOVIMENTO=0 THEN
  BEGIN
    frm_CON_PEDIDOS.zqry_VDCLIENTE.Close;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.sql.clear;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
    frm_CON_PEDIDOS.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=dm_dados.zqry_VDVENDACODCLI.AsInteger;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.Open;
    frm_CON_PEDIDOS.iecliente:=frm_CON_PEDIDOS.zqry_VDCLIENTEINSCCLI.asstring;
    if dm_dados.zqry_fnreceber.IsEmpty then Showmessage('N�o existem valores do Contas a Receber que coincidem com a busca');
  END;
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=1 THEN
  BEGIN
    dm_dados.zqry_CPFORNECED.Close;
    dm_Dados.zqry_CPFORNECED.sql.clear;
    dm_Dados.zqry_CPFORNECED.SQL.Add('select * from CPFORNECED where codfor=:clicod and codemp=:empcod');
    dm_Dados.zqry_CPFORNECED.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_dados.zqry_CPFORNECED.ParamByName('clicod').AsInteger:=dm_dados.zqry_CPCOMPRACODFOR.AsInteger;
    dm_Dados.zqry_CPFORNECED.Open;
    frm_CON_PEDIDOS.iecliente:=frm_CON_PEDIDOS.zqry_FORNECCOMPRAINSCFOR.asstring;
    if dm_dados.zqry_FNPAGAR.IsEmpty then Showmessage('N�o existem valores do Contas a Pagar que coincidem com a busca');
  END;
  frm_CON_PEDIDOS.ano:=FormatDateTime('yyyy',Now);
  //
  //lbl_numnf.caption:=dm_dados.zqry_SGSEQUENCIA_nfNROSEQ.asstring;
  frm_CON_PEDIDOS.estado1:=dm_dados.zqry_SGFILIALSIGLAUF.AsString;
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.estado2:=frm_CON_PEDIDOS.zqry_VDCLIENTEUFCLI.asstring;
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.estado2:=frm_CON_PEDIDOS.zqry_FORNECCOMPRAUFFOR.asstring;
  // consulta icms estado1
  dm_dados.zqry_lftabicms.Close;
  dm_dados.zqry_lftabicms.sql.Clear;
  dm_dados.zqry_lftabicms.sql.add('select * from lftabicms where ufti=:sigla and codemp=:empcod');
  dm_dados.zqry_lftabicms.ParamByName('sigla').asstring:=dm_dados.zqry_VDVENDA_UFCLIENTE.asstring;
  dm_dados.zqry_lftabicms.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
  dm_dados.zqry_lftabicms.open;
  if dm_dados.zqry_lftabicms.IsEmpty then
  begin
    IF dm_dados.zqry_VDVENDA_SIGLAUF.AsString<>'SP' then frm_CON_PEDIDOS.aliqint:=12 else frm_CON_PEDIDOS.ALIQINT:=7;
    frm_CON_PEDIDOS.aliqext:=12;
  end
  else
  begin
    frm_CON_PEDIDOS.aliqint:=dm_dados.zqry_LFTABICMSALIQTI.asfloat;
    frm_CON_PEDIDOS.aliqext:=dm_dados.zqry_LFTABICMSALIQINTRATI.AsFloat;
  end;
  MostraTelaAguarde('Criando e Enviando NFe. '+dm_dados.zqry_SGSEQUENCIANROSEQ.asstring);
  frm_CON_PEDIDOS.DATA:= FormatDateTime('YYYY-MM-DD', Now) + 'T' + FormatDateTime('hh:nn:ss', Now) + PegaTimeZone;
  with frmacbrnfe.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    dm_dados.zqry_EQTIPOMOV.Close;
    dm_dados.zqry_EQTIPOMOV.sql.Clear;
    dm_dados.zqry_EQTIPOMOV.sql.add('select * from eqtipomov where codtipomov=:mov and codemp=:empcod');
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then dm_dados.zqry_EQTIPOMOV.ParamByName('mov').asinteger:=frm_CON_PEDIDOS.zqry_VDVENDACODTIPOMOV.asinteger;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then dm_dados.zqry_EQTIPOMOV.ParamByName('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger;
    dm_dados.zqry_EQTIPOMOV.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_EQTIPOMOV.open;
    if dm_dados.zqry_EQTIPOMOV.IsEmpty then
    begin
      if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=201 then Ide.natOp     := 'COMPRA DO ESTABELECIMENTO';
      if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=301 then Ide.natOp     := 'COMPRA DO ESTABELECIMENTO';
      if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=305 then Ide.natOp     := 'COMPRA EM ENTREGA FUTURA';
      if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=213 then Ide.natOp     := 'SIMPLES REMESSA';
      if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=212 then Ide.natOp     := 'DEVOLU��O DE COMPRA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=501  then Ide.natOp     := 'VENDA DO ESTABELECIMENTO';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=505  then Ide.natOp     := 'VENDA EM ENTREGA FUTURA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=560  then Ide.natOp     := 'INDUSTRIALIZA��O PARA DESTINAT�RIO';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=570  then Ide.natOp     := 'CONSIGNA��O';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=572  then Ide.natOp     := 'BONIFICA��O';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=580  then Ide.natOp     := 'ENTREGA FUTURA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=583  then Ide.natOp     := 'SAIDA NAO ESPECIFICADA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=585  then Ide.natOp     := 'AMOSTRA GR�TIS';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=590  then Ide.natOp     := 'SIMPLES REMESSA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=595  then Ide.natOp     := 'REMESSA PARA CONSERTO';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=598  then Ide.natOp     := 'NOTA DE AJUSTE';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=599  then Ide.natOp     := 'NOTA COMPLEMENTAR';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202  then Ide.natOp     := 'DEVOLUCAO DE VENDA';
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=207  then Ide.natOp     := 'RETORNO';
    end
    else
    begin
      Ide.natOp     := dm_dados.zqry_EQTIPOMOVDESCNATCOMPL.asstring;
    end;
    Ide.indPag    := ipVista;
    Ide.modelo    := 55;
    Ide.serie     := 1;
    Ide.nNF       := strtoint(frm_CON_PEDIDOS.lbl_NFNUM.Caption);
    Ide.cNF       := GerarCodigoDFe(Ide.nNF);
    Ide.dEmi      := Date;
    Ide.dSaiEnt   := Date;
    Ide.hSaiEnt   := Now;
    Ide.tpNF      := tnSaida;
    if Trim(frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring) = '' then Ide.indFinal  := TpcnConsumidorFinal(cfConsumidorFinal) else Ide.indFinal  := TpcnConsumidorFinal(cfNao);
    dm_dados.temnet:=u_verificainternet.Ping(10000,'www.google.com.br',80);

    if dm_dados.temnet=0  then Ide.tpEmis    := TpcnTipoEmissao(teNormal);
    if dm_dados.temnet<>0 then
    begin
      //frm_prefacbr.show;
      Ide.tpEmis    := TpcnTipoEmissao(teContingencia);
      Ide.dhCont    := Now;
      Ide.xJust     := 'Nota Emitida em Contingencia. Problema T�cnico';
    end;

   // if dm_dados.ambiente='0' then frmacbrnfe.acbrnfe

    if dm_dados.ambiente='0' then frmacbrnfe.acbrnfe1.configuracoes.webservices.ambiente:=taProducao;
    if dm_dados.ambiente='1' then frmacbrnfe.acbrnfe1.configuracoes.webservices.ambiente:=taHomologacao;
    if dm_dados.ambiente='0' then Ide.tpAmb     := taProducao;
    if dm_dados.ambiente='1' then Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta vari�vel quando for para ambiente de produ��o
    Ide.verProc   := versaoexe; //Vers�o do seu sistema
    dm_dados.zqry_sgmunicipio.close;
    dm_dados.zqry_sgmunicipio.sql.Clear;
    dm_dados.zqry_sgmunicipio.sql.add('select * from sgmunicipio where siglauf=:sigla and codmunic=:codigo');
    dm_dados.zqry_sgmunicipio.ParamByName('codigo').asString:=dm_dados.zqry_sgfilialcodmunic.Value;
    dm_dados.zqry_sgmunicipio.ParamByName('sigla').asString:= dm_dados.zqry_sgfilialsiglauf.AsString;
    dm_dados.zqry_sgmunicipio.open;
    Ide.cUF       := UFtoCUF(DM_DADOS.zqry_SGFILIALSIGLAUF.asstring);
    Ide.cMunFG    := StrToInt(dm_dados.zqry_SGFILIAL_coduf.asstring+dm_dados.zqry_SGFILIALcodmunic.asstring);
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=501) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=560) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=570)    then Ide.finNFe    := fnNormal;
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=572) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=580) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=583)    then Ide.finNFe    := fnNormal;
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=585) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=590) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=595)    then Ide.finNFe    := fnNormal;
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=572) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=207)                                                       then Ide.finNFe    := fnNormal;
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=599)                                                                                                          then Ide.finNFe    := fnComplementar;
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=598)                                                                                                          then Ide.finNFe    := fnAjuste;

    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202)                                                                                                          then Ide.finNFe    := fnDevolucao;
    if (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=201) or (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=213) or (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=301) then Ide.finNFe    := fnNormal;
    if (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=212)                                                                                                         then Ide.finNFe    := fnDevolucao;
    if  Assigned( frmacbrnfe.ACBrNFe1.DANFE )                                                                                                                   then Ide.tpImp     := frmacbrnfe.ACBrNFe1.DANFE.TipoDANFE;

//  NotaF.NFe.Ide.dhCont := date;
//  NotaF.NFe.Ide.xJust  := 'Justificativa Contingencia';

//Para NFe referenciada use os campos abaixo
  (*
  Referenciada := NotaF.NFe.Ide.NFref.Add;
  Referenciada.refNFe       := ''; //NFe Eletronica

  Referenciada.RefNF.cUF    := 0;  // |
  Referenciada.RefNF.AAMM   := ''; // |
  Referenciada.RefNF.CNPJ   := ''; // |
  Referenciada.RefNF.modelo := 1;  // |- NFe Modelo 1/1A
  Referenciada.RefNF.serie  := 1;  // |
  Referenciada.RefNF.nNF    := 0;  // |

  Referenciada.RefNFP.cUF     := 0;  // |
  Referenciada.RefNFP.AAMM    := ''; // |
  Referenciada.RefNFP.CNPJCPF := ''; // |
  Referenciada.RefNFP.IE      := ''; // |- NF produtor Rural
  Referenciada.RefNFP.modelo  := ''; // |
  Referenciada.RefNFP.serie   := 1;  // |
  Referenciada.RefNFP.nNF     := 0;  // |

  Referenciada.RefECF.modelo  := ECFModRef2B; // |
  Referenciada.RefECF.nECF    := '';          // |- Cupom Fiscal
  Referenciada.RefECF.nCOO    := '';          // |
  *)
  Emit.CNPJCPF           := DM_DADOS.zqry_sgfilialCNPJFILIAL.asstring;
  Emit.IE                := DM_DADOS.zqry_sgfilialINSCFILIAL.asstring;
  Emit.xNome             := REMOVEACENTO(DM_DADOS.zqry_SGFILIALRAZFILIAL.VALUE);
  Emit.xFant             := REMOVEACENTO(DM_DADOS.zqry_SGFILIALNOMEFILIAL.VALUE);

  Emit.EnderEmit.fone    := dm_dados.zqry_SGFILIALDDDFILIAL.asstring+dm_dados.zqry_SGFILIALFONEFILIAL.asstring;
  Emit.EnderEmit.CEP     := StrToInt(DM_DADOS.zqry_SGFILIALCEPFILIAL.asstring);
  Emit.EnderEmit.xLgr    := REMOVEACENTO(DM_DADOS.zqry_SGFILIALENDFILIAL.VALUE);
  Emit.EnderEmit.nro     := DM_DADOS.zqry_SGFILIALNUMFILIAL.asstring;
  Emit.EnderEmit.xCpl    := dm_dados.zqry_SGFILIALCOMPLFILIAL.asstring;
  Emit.EnderEmit.xBairro := dm_dados.zqry_SGFILIALBAIRFILIAL.asstring;

  dm_dados.zqry_sgmunicipio.close;
  dm_dados.zqry_sgmunicipio.sql.Clear;
  dm_dados.zqry_sgmunicipio.sql.add('select * from sgmunicipio where siglauf=:sigla and codmunic=:codigo');
  dm_dados.zqry_sgmunicipio.ParamByName('codigo').asString:=dm_dados.zqry_sgfilialcodmunic.Value;
  dm_dados.zqry_sgmunicipio.ParamByName('sigla').asString:= dm_dados.zqry_sgfilialsiglauf.AsString;
  dm_dados.zqry_sgmunicipio.open;
  Emit.EnderEmit.cMun    := strtoint(dm_dados.zqry_SGFILIAL_coduf.asstring+dm_dados.zqry_SGFILIALcodmunic.asstring);
  Emit.EnderEmit.xMun    := dm_dados.zqry_SGFILIALCIDFILIAL.asstring;
  Emit.EnderEmit.UF      := DM_DADOS.zqry_SGFILIALSIGLAUF.VALUE;
  Emit.enderEmit.cPais   := 1058;
  Emit.enderEmit.xPais   := 'BRASIL';

  Emit.IEST              := '';
  Emit.IM                := ''; // Preencher no caso de existir servi�os na nota
  Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se � permitido
                                                 // a inclus�o de servi�os na NFe
  // esta sendo somando 1 uma vez que o ItemIndex inicia do zero e devemos
  // passar os valores 1, 2 ou 3
  // (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
  //Emit.CRT  := StrToCRT(Ok, IntToStr(cbTipoEmpresa.ItemIndex + 1));
  if dm_dados.zqry_SGFILIALSIMPLESFILIAL.asstring='S' then Emit.CRT := crtSimplesNacional else Emit.CRT := crtRegimeNormal;

  //Para NFe Avulsa preencha os campos abaixo
  {NotaF.NFe.Avulsa.CNPJ    := '';
  NotaF.NFe.Avulsa.xOrgao  := '';
  NotaF.NFe.Avulsa.matr    := '';
  NotaF.NFe.Avulsa.xAgente := '';
  NotaF.NFe.Avulsa.fone    := '';
  NotaF.NFe.Avulsa.UF      := '';
  NotaF.NFe.Avulsa.nDAR    := '';
  NotaF.NFe.Avulsa.dEmi    := now;
  NotaF.NFe.Avulsa.vDAR    := 0;
  NotaF.NFe.Avulsa.repEmi  := '';
  NotaF.NFe.Avulsa.dPag    := now; }
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=0 THEN
  BEGIN
    if (frm_CON_PEDIDOS.zqry_VDVENDA_CPFCLI.ASSTRING<>'') and (frm_CON_PEDIDOS.zqry_VDCLIENTEPESSOACLI.AsString='F') then
    begin
      Dest.CNPJCPF           := frm_CON_PEDIDOS.zqry_VDVENDA_CPFCLI.ASSTRING;
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end
      else
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
    end;
  END;
  ///////////////////////////////////////
  ///  SE ENTRADA
  ///////////////////////////////////////
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=1 THEN
  BEGIN
    if (frm_CON_PEDIDOS.zqry_FORNECCOMPRACPFFOR.ASSTRING<>'') and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.AsString='F') then
    begin
      Dest.CNPJCPF           := frm_CON_PEDIDOS.zqry_FORNECCOMPRACPFFOR.AsString;
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end
      else
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
    end;
  END;
  if (frm_CON_PEDIDOS.zqry_VDVENDA_CNPJCLI.AsString<>'') AND (frm_CON_PEDIDOS.zqry_VDVENDA_PESSOACLI.AsString='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then Dest.CNPJCPF     :=frm_CON_PEDIDOS.zqry_VDVENDA_CNPJCLI.ASSTRING;
  if (frm_CON_PEDIDOS.zqry_FORNECCOMPRACNPJFOR.AsString<>'') AND (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.AsString='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then Dest.CNPJCPF  :=frm_CON_PEDIDOS.zqry_FORNECCOMPRACNPJFOR.ASSTRING;
  if (frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring<>'') then
  begin
    if (frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring) = 'ISENTO' then
    begin
      // SE FOR SAIDA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.zqry_VDVENDA_PESSOACLI.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end;
      // SE FOR ENTRADA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end;
      // SE FOR SAIDA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.zqry_VDVENDA_PESSOACLI.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
      // SE FOR ENTRADA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
      dm_dados.zqry_Sguf.Params.Clear;
      dm_dados.zqry_sguf.close;
      dm_dados.zqry_sguf.sql.clear;
      dm_Dados.zqry_sguf.sql.add('select * from sguf where siglauf=:ufsigla');
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then dm_dados.zqry_sguf.parambyname('ufsigla').asstring:=frm_CON_PEDIDOS.zqry_VDVENDA_SIGLAUF.ASSTRING;
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then dm_dados.zqry_sguf.parambyname('ufsigla').asstring:=dm_dados.zqry_CPCOMPRA_SIGLAUF.ASSTRING;
      dm_dados.zqry_sguf.open;
      if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='S' else frm_CON_PEDIDOS.partilha:='N';
      Dest.indIEDest := TpcnindIEDest (inIsento);
      Dest.IE :=frm_CON_PEDIDOS.ZQRY_VDVENDA_INSCCLI.ASSTRING;
    end
    else
    begin
      Dest.indIEDest := TpcnindIEDest(inContribuinte);
      Dest.IE  := frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring;
      if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='N' else frm_CON_PEDIDOS.partilha:='N';
    end;
  end;
  if Trim(frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring) = '' then
  begin
    // SE FOR SAIDA
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.recicmpf:=1;
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.recicmpf:=0;
    // SE FOR ENTRADA
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.recicmpf:=1;
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.recicmpf:=0;
    //
    Dest.indIEDest := TpcnindIEDest(inNaoContribuinte);
    Dest.IE  :='';
    if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='S' else frm_CON_PEDIDOS.partilha:='N';
  end;
  if frm_CON_PEDIDOS.zqry_vdvenda_cpfcli.asstring<>''  then dest.CNPJCPF := frm_CON_PEDIDOS.zqry_vdvenda_cpfcli.asstring;
  if frm_CON_PEDIDOS.zqry_vdvenda_cnpjcli.AsString<>'' then dest.CNPJCPF := frm_CON_PEDIDOS.zqry_vdvenda_cnpjcli.asstring;
  Dest.ISUF              := '';
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN  Dest.xNome := removeacento(frm_CON_PEDIDOS.zqry_VDVENDA_RAZCLI.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN  Dest.xNome := removeacento(dm_dados.zqry_CPCOMPRA_RAZFOR.VALUE);
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_VDVENDA_FONECLI.AsString='')  then Dest.EnderDest.Fone :='';
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_VDVENDA_FONECLI.AsString<>'') then Dest.EnderDest.Fone := frm_CON_PEDIDOS.zqry_VDVENDA_dddcli.value+frm_CON_PEDIDOS.zqry_VDVENDA_FONECLI.VALUE;
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (dm_dados.zqry_CPCOMPRA_TELFOR.AsString='')     then Dest.EnderDest.Fone :='';
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (dm_Dados.zqry_CPCOMPRA_TELFOR.AsString<>'')    then Dest.EnderDest.Fone := dm_dados.zqry_CPCOMPRA_DDDFOR.value+dm_dados.zqry_CPCOMPRA_TELFOR.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.CEP     := frm_CON_PEDIDOS.zqry_VDVENDA_CEPCLI.asinteger;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.CEP     := dm_dados.zqry_CPCOMPRA_CEPFOR.asinteger;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.xLgr    := removeacento(frm_CON_PEDIDOS.zqry_VDVENDA_ENDCLI.asstring);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.xLgr    := removeacento(dm_dados.zqry_CPCOMPRA_ENDFOR.asstring);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.nro     := frm_CON_PEDIDOS.zqry_VDVENDA_NUMCLI.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.nro     := dm_dados.zqry_CPCOMPRA_NUMFOR.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.xCpl    := frm_CON_PEDIDOS.zqry_VDVENDA_COMPLCLI.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.xCpl    := dm_dados.zqry_CPCOMPRA_COMPLFOR.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.xBairro := removeacento(frm_CON_PEDIDOS.zqry_VDVENDA_BAIRCLI.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.xBairro := removeacento(dm_dados.zqry_CPCOMPRA_BAIRROFOR.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN Dest.EnderDest.UF      := frm_CON_PEDIDOS.zqry_VDVENDA_SIGLAUF.VALUE;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN Dest.EnderDest.UF      := dm_dados.zqry_CPCOMPRA_UFFOR.VALUE;
  dm_dados.zqry_SGMUNICIPIO.close;
  dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
  dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=frm_CON_PEDIDOS.zqry_VDVENDA_CODMUNIC.ASSTRING;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= frm_CON_PEDIDOS.zqry_VDVENDA_SIGLAUF.asstring;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=dm_dados.zqry_CPCOMPRA_CODMUNICFOR.ASSTRING;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= dm_dados.zqry_CPCOMPRA_SIGLAUF.asstring;
  dm_dados.zqry_sgmunicipio.open;
  Dest.EnderDest.cMun   := strtoint(dm_dados.zqry_sgmunicipiocoduf.asstring+dm_dados.zqry_sgmunicipiocodmunic.asstring);
  Dest.EnderDest.xMun   := removeacento(dm_dados.zqry_SGMUNICIPIONOMEMUNIC.asstring);
  if Dest.EnderDest.UF = Emit.EnderEmit.UF then ide.idDest := dointerna else ide.iddest :=dointerestadual;

  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.emaildest:=dm_dados.zqry_VDVENDA_MAILCLIENTENF.AsString;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.emaildest:=dm_dados.zqry_CPCOMPRA_MAILFOR.AsString;
  Dest.EnderDest.cPais   := 1058;
  Dest.EnderDest.xPais   := 'BRASIL';

  //NotaF.NFe.Dest.CNPJCPF           := '05481336000137';
  //NotaF.NFe.Dest.IE                := '687138770110';
  //NotaF.NFe.Dest.ISUF              := '';
  //NotaF.NFe.Dest.xNome             := 'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

  //NotaF.NFe.Dest.EnderDest.Fone    := '1532599600';
  //NotaF.NFe.Dest.EnderDest.CEP     := 18270170;
  //NotaF.NFe.Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
  //NotaF.NFe.Dest.EnderDest.nro     := '973';
  //NotaF.NFe.Dest.EnderDest.xCpl    := '';
  //NotaF.NFe.Dest.EnderDest.xBairro := 'Centro';
  //NotaF.NFe.Dest.EnderDest.cMun    := 3554003;
  //NotaF.NFe.Dest.EnderDest.xMun    := 'Tatui';
  //NotaF.NFe.Dest.EnderDest.UF      := 'SP';
  //NotaF.NFe.Dest.EnderDest.cPais   := 1058;
  //NotaF.NFe.Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio

  {NotaF.NFe.Retirada.CNPJCPF := '';
  NotaF.NFe.Retirada.xLgr    := '';
  NotaF.NFe.Retirada.nro     := '';
  NotaF.NFe.Retirada.xCpl    := '';
  NotaF.NFe.Retirada.xBairro := '';
  NotaF.NFe.Retirada.cMun    := 0;
  NotaF.NFe.Retirada.xMun    := '';
  NotaF.NFe.Retirada.UF      := ''; }

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio

  {NotaF.NFe.Entrega.CNPJCPF := '';
  NotaF.NFe.Entrega.xLgr    := '';
  NotaF.NFe.Entrega.nro     := '';
  NotaF.NFe.Entrega.xCpl    := '';
  NotaF.NFe.Entrega.xBairro := '';
  NotaF.NFe.Entrega.cMun    := 0;
  NotaF.NFe.Entrega.xMun    := '';
  NotaF.NFe.Entrega.UF      := '';  }

//Adicionando Produtos
  dm_dados.zqry_VDFRETEVD.Close;
  dm_dados.zqry_VDFRETEVD.SQL.Clear;
  dm_dados.zqry_VDFRETEVD.SQL.Add('select * from vdfretevd where codvenda=:vendacod and codemp=:empcod');
  dm_dados.zqry_VDFRETEVD.ParamByName('vendacod').AsInteger:=frm_CON_PEDIDOS.zqry_VDVENDACODVENDA.AsInteger;
  dm_dados.zqry_VDFRETEVD.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_VDFRETEVD.Open;
  totalfrete:=0;
  totalfrete:=dm_dados.zqry_VDFRETEVDVLRFRETEVD.AsFloat;
  valorfrete:=round(dm_dados.zqry_VDFRETEVDVLRFRETEVD.AsFloat/frm_CON_PEDIDOS.zqry_vditvenda.recordcount);
  tipofrete:=dm_Dados.zqry_VDFRETEVDTIPOFRETEVD.asstring;
  frm_CON_PEDIDOS.zqry_vditvenda.First;
  contador:=1;
  SomaVProd:=0;
  SomaVDesc:=0;
  while not frm_CON_PEDIDOS.zqry_VDITVENDA.eof do
  begin
    with Det.Add do
    begin
      achavenda:=0;
      codigoproduto:=frm_CON_PEDIDOS.zqry_VDITVENDACODPROD.AsInteger;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.Params.Clear;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.close;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.SQL.Clear;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.SQL.Add('select codprod, codbarprod, descprod, custoinfoprod, codunid, codfisc, cest from eqproduto where codprod=:prodcod and codemp=:empcod');
      frm_CON_PEDIDOS.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=codigoproduto;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      frm_CON_PEDIDOS.zqry_EQPRODUTO.Open;
      DESCRICAO:=frm_CON_PEDIDOS.zqry_EQPRODUTODESCPROD.AsString;
      if frm_CON_PEDIDOS.zqry_VDITVENDACODLOTE.ASSTRING<>'' then
      begin
        dm_dados.zqry_EQLOTE.params.Clear;
        dm_Dados.zqry_EQLOTE.Close;
        dm_Dados.zqry_EQLOTE.SQL.Clear;
        dm_dados.zqry_EQLOTE.SQL.Add('select * from eqlote where codprod=:prodcod and codemp=:empcod and codlote=:lotecod');
        dm_dados.zqry_EQLOTE.ParamByName('prodcod').AsInteger:=frm_con_pedidos.zqry_VDITVENDACODPROD.AsInteger;
        dm_dados.zqry_EQLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.zqry_EQLOTE.ParamByName('lotecod').AsString:=frm_con_pedidos.zqry_VDITVENDACODLOTE.AsString;
        dm_dados.zqry_EQLOTE.Open;
        if dm_dados.zqry_EQLOTE.IsEmpty then DESCRICAO:=frm_CON_PEDIDOS.zqry_EQPRODUTODESCPROD.AsString+' EAN '+frm_CON_PEDIDOS.zqry_EQPRODUTOCODBARPROD.AsString+' Lt:'+frm_CON_PEDIDOS.zqry_VDITVENDACODLOTE.ASSTRING+' Vcto:'+formatdatetime('dd/mm/yyyy',dm_dados.zqry_EQLOTEVENCTOLOTE.asdatetime);
        if not dm_dados.zqry_EQLOTE.IsEmpty then DESCRICAO:=frm_CON_PEDIDOS.zqry_EQPRODUTODESCPROD.AsString+' EAN '+frm_CON_PEDIDOS.zqry_EQPRODUTOCODBARPROD.AsString+' Lt:'+frm_CON_PEDIDOS.zqry_VDITVENDACODLOTE.ASSTRING+' Vcto:'+formatdatetime('dd/mm/yyyy',dm_dados.zqry_EQLOTEVENCTOLOTE.asdatetime);
      end;


      NCM:=frm_CON_PEDIDOS.zqry_EQPRODUTOCODFISC.AsString;
      EAN:=frm_CON_PEDIDOS.zqry_EQPRODUTOCODBARPROD.asstring;
      UNI:=frm_CON_PEDIDOS.zqry_EQPRODUTOCODUNID.AsString;
      CEST:=frm_CON_PEDIDOS.zqry_EQPRODUTOCEST.AsString;
      Prod.nItem    := contador;
      Prod.cProd    := inttostr(codigoproduto);
      if ean.IsEmpty then  EAN     :='SEM GTIN';
      if EAN13Valido(ean) then Prod.cEAN:= ean;
      Prod.xProd    := DESCRICAO;
      Prod.NCM      := NCM; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
      Prod.EXTIPI   := '';
      Prod.CFOP     := frm_CON_PEDIDOS.zqry_VDITVENDACODNAT.ASSTRING;
      Prod.uCom     := UNI;
      Prod.qCom     := SimpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAQTDITVENDA.value,-4);
      Prod.vUnCom   := SimpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAPRECOITVENDA.value,-4);
      Prod.vProd    := simpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAVLRPRODITVENDA.value, -4);
        SomaVProd     := SomaVProd + simpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAVLRPRODITVENDA.value, -4);

      if ean.IsEmpty then  EAN     :='SEM GTIN';
      if EAN13Valido(ean) then Prod.cEANTrib:= ean;
      Prod.uTrib     := UNI;
      Prod.qTrib     := SimpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAQTDITVENDA.value,-4);
      Prod.vUnTrib   := simpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAPRECOITVENDA.value, -4);
      { AJUSTE CASA DA BORRACHA
         Prod.vUnTrib   := achavenda;//SimpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2);
         }
      Prod.vOutro    := 0;
      Prod.vFrete    := valorfrete;
      Prod.vSeg      := 0;
      //Prod.vDesc     := frm_CON_PEDIDOS.zqry_VDITVENDAVLRDESCITVENDA.AsCurrency;//SimpleRoundto(desconto,-3);//
      Prod.vDesc     := simpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAVLRDESCITVENDA.value, -4);
        SomaVDesc    := SomaVDesc + simpleRoundto(frm_CON_PEDIDOS.zqry_VDITVENDAVLRDESCITVENDA.value, -4);


      Prod.CEST := CEST;

      //Produto.infAdProd := 'Informacao Adicional do Produto';

      //Declara��o de Importa��o. Pode ser adicionada v�rias atrav�s do comando Prod.DI.Add
      (*
      DI := Produto.Prod.DI.Add;
      DI.nDi         := '';
      DI.dDi         := now;
      DI.xLocDesemb  := '';
      DI.UFDesemb    := '';
      DI.dDesemb     := now;
      DI.cExportador := '';

      Adicao := DI.adi.Add;
      Adicao.nAdicao     := 1;
      Adicao.nSeqAdi     := 1;
      Adicao.cFabricante := '';
      Adicao.vDescDI     := 0;
      *)

      //Campos para venda de ve�culos novos

      {  Produto.Prod.veicProd.tpOP    := toVendaConcessionaria;
      Produto.Prod.veicProd.chassi  := '';
      Produto.Prod.veicProd.cCor    := '';
      Produto.Prod.veicProd.xCor    := '';
      Produto.Prod.veicProd.pot     := '';
      Produto.Prod.veicProd.Cilin   := '';
      Produto.Prod.veicProd.pesoL   := '';
      Produto.Prod.veicProd.pesoB   := '';
      Produto.Prod.veicProd.nSerie  := '';
      Produto.Prod.veicProd.tpComb  := '';
      Produto.Prod.veicProd.nMotor  := '';
      Produto.Prod.veicProd.CMT     := '';
      Produto.Prod.veicProd.dist    := '';
      Produto.Prod.veicProd.anoMod  := 0;
      Produto.Prod.veicProd.anoFab  := 0;
      Produto.Prod.veicProd.tpPint  := '';
      Produto.Prod.veicProd.tpVeic  := 0;
      Produto.Prod.veicProd.espVeic := 0;
      Produto.Prod.veicProd.VIN     := '';
      Produto.Prod.veicProd.condVeic := cvAcabado;
      Produto.Prod.veicProd.cMod    := ''; }

      // Campos de Rastreabilidade do produto
      {
      O grupo <rastro> permiti a rastreabilidade de qualquer produto sujeito a
      regula��es sanit�rias, casos de recolhimento/recall, al�m de defensivos agr�colas,
      produtos veterin�rios, odontol�gicos, medicamentos, bebidas, �guas envasadas,
      embalagens, etc., a partir da indica��o de informa��es de n�mero de lote,
      data de fabrica��o/produ��o, data de validade, etc.
      Obrigat�rio o preenchimento deste grupo no caso de medicamentos e
      produtos farmac�uticos.
      }

      // Ocorr�ncias: 0 - 500
      (*
      Rastro := Produto.Prod.rastro.Add;
      Rastro.nLote  := '17H8F5';
      Rastro.qLote  := 1;
      Rastro.dFab   := StrToDate('01/08/2017');
      Rastro.dVal   := StrToDate('01/08/2019');
      Rastro.cAgreg := ''; // C�digo de Agrega��o (opcional) de 1 at� 20 d�gitos
      *)

      //Campos espec�ficos para venda de medicamentos
      // Ocorr�ncias: 1 - 500 ==> 1 - 1 (4.00)
      (*
      Medicamento := Produto.Prod.med.Add;
      Medicamento.cProdANVISA := '1256802470029';
      Medicamento.vPMC        := 100.00; // Pre�o m�ximo consumidor
      *)

      //Campos espec�ficos para venda de armamento
      (*
      Arma := Produto.Prod.arma.Add;
      Arma.nSerie := 0;
      Arma.tpArma := taUsoPermitido;
      Arma.nCano  := 0;
      Arma.descr  := '';
      *)

      //Campos espec�ficos para venda de combust�vel(distribuidoras)
      { Produto.Prod.comb.cProdANP := 0;
      Produto.Prod.comb.CODIF    := '';
      Produto.Prod.comb.qTemp    := 0;
      Produto.Prod.comb.UFcons   := '';
      Produto.Prod.comb.CIDE.qBCprod   := 0;
      Produto.Prod.comb.CIDE.vAliqProd := 0;
      Produto.Prod.comb.CIDE.vCIDE     := 0;
      Produto.Prod.comb.ICMS.vBCICMS   := 0;
      Produto.Prod.comb.ICMS.vICMS     := 0;
      Produto.Prod.comb.ICMS.vBCICMSST := 0;
      Produto.Prod.comb.ICMS.vICMSST   := 0;
      Produto.Prod.comb.ICMSInter.vBCICMSSTDest := 0;
      Produto.Prod.comb.ICMSInter.vICMSSTDest   := 0;
      Produto.Prod.comb.ICMSCons.vBCICMSSTCons := 0;
      Produto.Prod.comb.ICMSCons.vICMSSTCons   := 0;
      Produto.Prod.comb.ICMSCons.UFcons        := '';  }

      with Imposto do
      begin
        // lei da transparencia nos impostos
        vTotTrib := 0;

        with ICMS do
        begin
          // caso o CRT seja:
          // 1=Simples Nacional
          // Os valores aceitos para CSOSN s�o:
          // csosn101, csosn102, csosn103, csosn201, csosn202, csosn203,
          // csosn300, csosn400, csosn500,csosn900
          // 2=Simples Nacional, excesso sublimite de receita bruta;
          // ou 3=Regime Normal.
          // Os valores aceitos para CST s�o:
          // cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51,
          // cst60, cst70, cst80, cst81, cst90, cstPart10, cstPart90,
          // cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN, cstRep60
          // (consulte o contador do seu cliente para saber qual deve ser utilizado)
          // Pode variar de um produto para outro.
          frm_CON_PEDIDOS.zqry_ITFISCAL.close;
          frm_CON_PEDIDOS.zqry_itfiscal.SQL.Clear;
          frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
          frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
          frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and coditfisc=:itfisc and codemp=:empcod');
          frm_CON_PEDIDOS.zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(frm_CON_PEDIDOS.zqry_VDITVENDACODFISC.AsString);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=frm_CON_PEDIDOS.zqry_VDVENDACODTIPOMOV.AsInteger;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('itfisc').asinteger:=frm_CON_PEDIDOS.zqry_VDITVENDACODITFISC.asinteger;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_CPITCOMPRACODFISC.AsString);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('itfisc').asinteger:=dm_dados.zqry_CPITCOMPRACODITFISC.asinteger;
          frm_CON_PEDIDOS.zqry_itfiscal.open;
          if frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty then
          begin
            ExibirErroClassificacao;
            showmessage('C�digo do Produto com erro na Classifica��o � '+frm_CON_PEDIDOS.zqry_VDITVENDACODPROD.asstring+' e o NCM dele � '+frm_con_pedidos.zqry_VDITVENDACODFISC.asstring);
          // SE CLASSIFICACAO FISCAL VAZIA DENTRO DO ESTADO
            if Emit.EnderEmit.UF = Dest.EnderDest.UF then
            begin
              frm_CON_PEDIDOS.zqry_ITFISCAL.close;
              frm_CON_PEDIDOS.zqry_itfiscal.SQL.Clear;
              frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
              frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
              frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and codemp=:empcod and noufitfisc=:dentrouf');
              frm_CON_PEDIDOS.zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
              if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(frm_CON_PEDIDOS.zqry_VDITVENDACODFISC.AsString);
              if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=frm_CON_PEDIDOS.zqry_VDVENDACODTIPOMOV.AsInteger;
              if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_CPITCOMPRACODFISC.AsString);
              if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
              frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('dentrouf').asstring:='S';
              frm_CON_PEDIDOS.zqry_itfiscal.open;
              if frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty then
              begin
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  CSOSN := csosn101;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  CSOSN := csosn102;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  CSOSN := csosn101;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.tipomovimento=0) then CSOSN :=csosn202;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  CSOSN := csosn101;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  CSOSN := csosn102;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  CSOSN := csosn101;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then CSOSN := csosn500;
                if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.tipomovimento=1) then CSOSN :=csosn202;
              end
              else
              begin
                EXECUTASGINICONSP;
                if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then
                begin
                  frm_CON_PEDIDOS.zqry_VDITVENDA.Edit;
                  frm_CON_PEDIDOS.zqry_VDITVENDACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
                  frm_CON_PEDIDOS.zqry_VDITVENDA.Post;
                  frm_CON_PEDIDOS.zqry_VDITVENDA.ApplyUpdates();
                  //showmessage('Aten��o'#13'Regra Fiscal alterada para este pedido');
                end;
                if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then
                begin
                  dm_dados.zqry_CPITCOMPRA.Edit;
                  dm_Dados.zqry_CPITCOMPRACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
                  dm_Dados.zqry_CPITCOMPRA.Post;
                  dm_Dados.zqry_CPITCOMPRA.ApplyUpdates();
                end;
                if dm_dados.zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN.AsString<>'' then
                begin
                  CSOSN :=csosn500;
                end
              else
              begin
                CSOSN := csosn102;
              end;
            end;
          end
        end
        else
        begin
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.isNull) then CSOSN :=csosn500;
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'') and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'101') then CSOSN :=csosn400;
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring='') and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString='101') then CSOSN :=csosn102;
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_VDVENDA_INSCCLI.asstring<>'') then CSOSN :=csosn101;
                       //if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then CSOSN :=csosn202;
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.isNull) then frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'') then frm_CON_PEDIDOS.larq.Add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
          if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.Add('CSOSN=202');
        end;
        orig    := oeNacional;
        modBC   := dbiValorOperacao;
        frm_CON_PEDIDOS.VALORICMS:=0;
        if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
        begin
          icmsdest:=dm_dados.zqry_SGFILIALDESTICMS.AsFloat;
          vicmsdest:=roundto(((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*icmsdest)/100),-2);
          pCREDSN     := icmsdest;
          vCREDICMSSN := vicmsdest;
        end;
        vBC     := 0;
        pICMS   := 0;
        vICMS   := 0;
        modBCST := dbisMargemValorAgregado;
        pMVAST  := 0;
        pRedBCST:= 0;
        vBCST   := 0;
        pICMSST := 0;
        vICMSST := 0;
        pRedBC  := 0;

        pCredSN := 0;
        vCredICMSSN := 0;
        vBCFCPST := 100;
        pFCPST := 2;
        vFCPST := 2;
        vBCSTRet := 0;
        pST := 0;
        vICMSSubstituto := 0;
        vICMSSTRet := 0;
        vBCFCPSTRet := 0;
        pFCPSTRet := 0;
        vFCPSTRet := 0;
        pRedBCEfet := 0;
        vBCEfet := 0;
        pICMSEfet := 0;
        vICMSEfet := 0;

          with ICMSUFDest do
          begin
            // partilha do ICMS e fundo de probreza
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

        (*
        // IPI, se hpouver...
        with IPI do
        begin
          CST      := ipi99;
          clEnq    := '999';
          CNPJProd := '';
          cSelo    := '';
          qSelo    := 0;
          cEnq     := '';
          vBC    := 100;
          qUnid  := 0;
          vUnid  := 0;
          pIPI   := 5;
          vIPI   := 5;
        end;
        *)

        with II do
        begin
          II.vBc      := 0;
          II.vDespAdu := 0;
          II.vII      := 0;
          II.vIOF     := 0;
        end;

        with PIS do
        begin
          CST  := pis99;
          vBC  := 0;
          pPIS := 0;
          vPIS := 0;
          qBCProd   := 0;
          vAliqProd := 0;
          vPIS      := 0;
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
          CST     := cof99;
          vBC     := 0;
          pCOFINS := 0;
          vCOFINS := 0;
          qBCProd   := 0;
          vAliqProd := 0;
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
    frm_CON_PEDIDOS.zqry_VDITVENDA.Next;
  end;
  end;

  //Adicionando Servi�os
  (*
  Servico := NotaF.Nfe.Det.Add;
  Servico.Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
  Servico.Prod.cProd    := '123457';
  Servico.Prod.cEAN     := '';
  Servico.Prod.xProd    := 'Descri��o do Servi�o';
  Servico.Prod.NCM      := '99';
  Servico.Prod.EXTIPI   := '';
  Servico.Prod.CFOP     := '5933';
  Servico.Prod.uCom     := 'UN';
  Servico.Prod.qCom     := 1;
  Servico.Prod.vUnCom   := 100;
  Servico.Prod.vProd    := 100;

  Servico.Prod.cEANTrib  := '';
  Servico.Prod.uTrib     := 'UN';
  Servico.Prod.qTrib     := 1;
  Servico.Prod.vUnTrib   := 100;

  Servico.Prod.vFrete    := 0;
  Servico.Prod.vSeg      := 0;
  Servico.Prod.vDesc     := 0;

  Servico.infAdProd      := 'Informa��o Adicional do Servi�o';

  //Grupo para servi�os
  Servico.Imposto.ISSQN
  Servico.Imposto.cSitTrib  := ISSQNcSitTribNORMAL;
  Servico.Imposto.vBC       := 100;
  Servico.Imposto.vAliq     := 2;
  Servico.Imposto.vISSQN    := 2;
  Servico.Imposto.cMunFG    := 3554003;
  // Preencha este campo usando a tabela dispon�vel
  // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
  Servico.Imposto.cListServ := '1402';

  NotaF.NFe.Total.ISSQNtot.vServ   := 100;
  NotaF.NFe.Total.ISSQNTot.vBC     := 100;
  NotaF.NFe.Total.ISSQNTot.vISS    := 2;
  NotaF.NFe.Total.ISSQNTot.vPIS    := 0;
  NotaF.NFe.Total.ISSQNTot.vCOFINS := 0;

*)
  ////////////////////////////////////
  ///  TOTAIS DA NOTA
  ////////////////////////////////////
  Total.ICMSTot.vBC     := 0;
  Total.ICMSTot.vICMS   := 0;
  Total.ICMSTot.vBCST   := 0;
  Total.ICMSTot.vST     := 0;
  if frm_CON_PEDIDOS.AGRUPADOS=1 then
  begin
    Total.ICMSTot.vProd   := frm_CON_PEDIDOS.totagrupa+frm_CON_PEDIDOS.TOTDESCAGRUPA;
    Total.ICMSTot.vDesc   := frm_CON_PEDIDOS.TOTDESCAGRUPA;
    Total.ICMSTot.vNF     := frm_CON_PEDIDOS.TOTAGRUPA;
  end;
  if frm_CON_PEDIDOS.AGRUPADOS=0 then
  begin
    Total.ICMSTot.vProd   := SomaVProd;//frm_CON_PEDIDOS.zqry_VDVENDAVLRPRODVENDA.AsCurrency;
    Total.ICMSTot.vDesc   := SomaVDesc;// frm_CON_PEDIDOS.zqry_VDVENDAVLRDESCitvenda.AsCurrency;
    Total.ICMSTot.vNF     := SomaVProd-SomaVDesc;//frm_CON_PEDIDOS.zqry_VDVENDAVLRLIQVENDA.ascurrency;

  end;
  Total.ICMSTot.vFrete  := totalfrete;
  Total.ICMSTot.vSeg    := 0;
  Total.ICMSTot.vII     := 0;
  Total.ICMSTot.vIPI    := 0;
  Total.ICMSTot.vPIS    := 0;
  Total.ICMSTot.vCOFINS := 0;
  Total.ICMSTot.vOutro  := 0;

  // lei da transparencia de impostos
  Total.ICMSTot.vTotTrib := 0;

  // partilha do icms e fundo de probreza
  Total.ICMSTot.vFCPUFDest   := 0.00;
  Total.ICMSTot.vICMSUFDest  := 0.00;
  Total.ICMSTot.vICMSUFRemet := 0.00;

  Total.retTrib.vRetPIS    := 0;
  Total.retTrib.vRetCOFINS := 0;
  Total.retTrib.vRetCSLL   := 0;
  Total.retTrib.vBCIRRF    := 0;
  Total.retTrib.vIRRF      := 0;
  Total.retTrib.vBCRetPrev := 0;
  Total.retTrib.vRetPrev   := 0;

  if tipofrete='C' then Transp.modFrete := mfContaEmitente;
  if tipofrete='F' then Transp.modfrete := mfContaDestinatario;

  Transp.Transporta.CNPJCPF  := frm_con_pedidos.edt_CPFCNPJ_TRANSP.text;
  Transp.Transporta.xNome    := frm_con_pedidos.edt_NOMERAZ_TRANSP.text;
  Transp.Transporta.IE       := frm_con_pedidos.edt_IE_TRANSP.text;
  Transp.Transporta.xEnder   := frm_con_pedidos.edt_END_TRANSP.text;
  Transp.Transporta.xMun     := frm_con_pedidos.edt_CID_TRANSP.text;
  Transp.Transporta.UF       := frm_con_pedidos.edt_UF_TRANSP.text;

  Transp.retTransp.vServ    := 0;
  Transp.retTransp.vBCRet   := 0;
  Transp.retTransp.pICMSRet := 0;
  Transp.retTransp.vICMSRet := 0;
  Transp.retTransp.CFOP     := '';
  Transp.retTransp.cMunFG   := 0;

  Volume := Transp.Vol.New;
  Volume.qVol  := strtoint(frm_con_pedidos.edt_volumes.text);
  Volume.esp   := frm_con_pedidos.edt_especie.text;
  Volume.marca := frm_con_pedidos.edt_marca.text;
  Volume.nVol  := frm_con_pedidos.edt_volumes.text;
  Volume.pesoL := strtofloat(frm_con_pedidos.edt_PESOLIQUIDO.text);
  Volume.pesoB := strtofloat(frm_con_pedidos.edt_PESOBRUTO.text);

  //Lacres do volume. Pode ser adicionado v�rios
  (*
  Lacre := Volume.Lacres.Add;
  Lacre.nLacre := '';
  *)

  Cobr.Fat.nFat  := frm_CON_PEDIDOS.zqry_VDVENDACODVENDA.asstring;
  if frm_CON_PEDIDOS.AGRUPADOS=1 then
  begin
    Cobr.Fat.vOrig := frm_CON_PEDIDOS.TOTAGRUPA+frm_CON_PEDIDOS.TOTDESCAGRUPA;
    Cobr.Fat.vDesc := frm_CON_PEDIDOS.TOTDESCAGRUPA;
    Cobr.Fat.vLiq  := frm_CON_PEDIDOS.TOTAGRUPA;
  end;
  if frm_CON_PEDIDOS.AGRUPADOS=0 then
  begin
    Cobr.Fat.vOrig := frm_CON_PEDIDOS.zqry_VDVENDAVLRPRODVENDA.AsCurrency;
    Cobr.Fat.vDesc := frm_CON_PEDIDOS.zqry_VDVENDAVLRDESCitvenda.AsCurrency;
    Cobr.Fat.vLiq  := frm_CON_PEDIDOS.zqry_VDVENDAVLRLIQVENDA.ascurrency;
  end;

  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.agrupados=0) then
  begin
    dm_dados.zqry_FNRECEBER.Close;
    dm_dados.zqry_FNRECEBER.sql.Clear;
    dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
    dm_dados.zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=frm_CON_PEDIDOS.zqry_VDVENDACODVENDA.AsInteger;
    dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_FNRECEBER.Open;
    if dm_dados.zqry_FNRECEBER.IsEmpty  then showmessage('Contas a Receber n�o foram localizadas');
    // CONSULTA ITENS DAS CONTAS A RECEBER
    dm_dados.zqry_FNITRECEBER.Close;
    dm_dados.zqry_FNITRECEBER.sql.Clear;
    dm_dados.zqry_fnITreceber.SQL.Add('SELECT * FROM FNITRECEBER where codrec=:reccod and codemp=:empcod');
    dm_dados.zqry_FNITRECEBER.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNRECEBERCODREC.asinteger;
    dm_dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_FNITRECEBER.Open;
    if dm_dados.zqry_FNITRECEBER.IsEmpty then showmessage('Itens do Contas a Receber n�o foram localizados');

    dm_dados.zqry_fnitreceber.First;
    while not dm_dados.zqry_fnITreceber.eof do
    begin
      Duplicata := Cobr.Dup.New;
      Duplicata.nDup  := StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE),3);
      Duplicata.dVenc := dm_dados.zqry_FNITRECEBERDTVENCITREC.asdatetime;
      Duplicata.vDup  := frm_CON_PEDIDOS.zqry_VDVENDAVLRLIQVENDA.ascurrency;
      dm_dados.zqry_FNITRECEBER.Next;
    end;
  end;

  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.agrupados=1) then
  begin
    Duplicata := Cobr.Dup.New;
    Duplicata.nDup  := '001';
    Duplicata.dVenc := now;
    Duplicata.vDup  := frm_CON_PEDIDOS.TOTAGRUPA;
  end;


  {Duplicata := Cobr.Dup.New;
  Duplicata.nDup  := '002';
  Duplicata.dVenc := now+20;
  Duplicata.vDup  := 50;}

    InfAdic.infCpl     :=  observacao+'|DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL E NAO GERA DIREITO A CREDITO FISCAL DE ICMS, DE ISS E DE IPI | O Vlr. Aprox. Tributos Lei 12.741/12 de '+(formatfloat('##0.00',((frm_CON_PEDIDOS.zqry_VDVENDAVLRLIQVENDA.asfloat*7)/100)));
    InfAdic.infAdFisco :=  '';

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Pedido N.:';
      xTexto := frm_CON_PEDIDOS.zqry_VDVENDACODVENDA.asstring;
    end;

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Vendedor.:';
      xTexto := 'N�o informado';
    end;

    {with InfAdic.obsFisco.New do
    begin
      xCampo := 'ObsFisco';
      xTexto := 'Texto';
    end;}

//Processo referenciado
  (*
  ProcReferenciado := NotaF.Nfe.InfAdic.procRef.Add;
  ProcReferenciado.nProc := '';
  ProcReferenciado.indProc := ipSEFAZ;
  *)

  exporta.UFembarq   := '';;
  exporta.xLocEmbarq := '';

  compra.xNEmp := '';
  compra.xPed  := '';
  compra.xCont := '';

// YA. Informa��es de pagamento

  InfoPgto := pag.New;
  InfoPgto.indPag := ipVista;
  InfoPgto.tPag   := fpDinheiro;
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.agrupados=0) then InfoPgto.vPag   := SomaVProd-SomaVDesc;
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.agrupados=1) then InfoPgto.vPag   := frm_CON_PEDIDOS.totagrupa;

// Exemplo de pagamento integrado.

  {InfoPgto := NotaF.NFe.pag.New;
  InfoPgto.indPag := ipVista;
  InfoPgto.tPag   := fpCartaoCredito;
  InfoPgto.vPag   := 75;
  InfoPgto.tpIntegra := tiPagIntegrado;
  InfoPgto.CNPJ      := '05481336000137';
  InfoPgto.tBand     := bcVisa;
  InfoPgto.cAut      := '1234567890123456';}

  infRespTec.CNPJ     := '06976896000125';
  infRespTec.xContato := 'Israel de Oliveira Pinheiro Lopes'; // Nome do respons�vel t�cnico
  infRespTec.email    := 'contato@nonoelemento.com.br';
  infRespTec.fone     := '2731800309';


end;

// YA09 Troco
// Regra opcional: Informar se valor dos pagamentos maior que valor da nota.
// Regra obrigat�ria: Se informado, N�o pode diferir de "(+) vPag (id:YA03) (-) vNF (id:W16)"
//  NotaF.NFe.pag.vTroco := 75;

  frmacbrnfe.ACBrNFe1.NotasFiscais.GerarNFe;
  fechatelaaguarde;
  frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
  frmacbrnfe.ACBrNFeDANFeRL1.Sistema:='Alles '+VersaoExe+' - ';
  //frmacbrnfe.ACBrNFeDANFeRL1.Site:='www.nonoelemento.com.br';
  frmacbrnfe.ACBrNFeDANFeRL1.Logo:=dm_dados.logomarca;
  vSincrono := '0';
  if (frmacbrnfe.ACBrNFe1.Integrador= frmacbrnfe.ACBrIntegrador1) or (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;

  case MessageDlg('Deseja ENVIAR sem VISUALIZAR?',  mtConfirmation,  [mbYes, mbNo], 0) of
    mrYes: //se clicar em sim fa?a isso
    begin
      //frmacbrnfe.ACBrNFe1.NotasFiscais.Validar;
      frmacbrnfe.ACBrNFe1.Enviar(1,True);
    end;
    mrNo: //se clicar em n?o fa?a isso
    begin
      frmacbrnfe.ACBrNFe1.NotasFiscais.Imprimir;
      case MessageDlg('Deseja ENVIAR a nota agora?',  mtConfirmation,  [mbYes, mbNo], 0) of
      mrYES:  //se clicar em sim fa?a isso
      begin
        frmacbrnfe.ACBrNFe1.NotasFiscais.Validar;
        frmacbrnfe.ACBrNFe1.NotasFiscais.Assinar;
        frmacbrnfe.ACBrNFe1.Enviar(1,True);
      end;
      mrNO:  //se clicar em n?o fa?a isso
      begin
        //
      end;
    end;
  end;
end;
end;

procedure EnviarEmail;
var
 Para, Assunto, Corpo : String;
 CC: Tstrings;
begin
  if frm_CON_PEDIDOS.zqry_VDVENDA_EMAILNFECLI.ASSTRING<>'' then
  begin
    para:=frm_CON_PEDIDOS.zqry_VDVENDA_EMAILNFECLI.ASSTRING;
    MostraTelaAguarde('Enviando DANFE e XML no email '+para);
  end
  else
  begin
    para:='contato@nonoelemento.com.br';
    MostraTelaAguarde('Enviando DANFE e XML no email Reposit�rio');
  end;
  frmacbrnfe.LerConfiguracao;
  frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(ncaminho);
  assunto:='Nota Fiscal emitida por '+ trim(dm_dados.zqry_SGFILIALNOMEFILIAL.asstring);
  corpo:='Segue em anexo Danfe em formato PDF e XML de Nota Fiscal emitida';
  CC:=TstringList.Create;
  try
    frmacbrnfe.lerconfiguracao;
    cc.Add('fiscal.nonoelemento@gmail.com'); //especifique um email válido
    cc.Add('contato@nonoelemento.com.br');
//      CC.Add(dm_dados.zqry_SGFILIALEMAILFILIAL.asstring);    //especifique um email válido
//      if dm_dados.zqry_SGFILIALEMAILRESP.AsString<>'' then cc.Add(dm_Dados.zqry_SGFILIALEMAILRESP.asstring);
    frmacbrnfe.ACBrMail1.Clear;
    //showmessage('Host '+frmacbrnfe.edtSmtpHost.Text);
    frmacbrnfe.ACBrMail1.Host     := frmacbrnfe.edtSmtpHost.Text;
    //showmessage('Porta '+frmacbrnfe.edtSmtpPort.Text);
    frmacbrnfe.ACBrMail1.Port     := frmacbrnfe.edtSmtpPort.Text;
    //showmessage('User '+frmacbrnfe.edtSmtpUser.Text);
    frmacbrnfe.ACBrMail1.Username := frmacbrnfe.edtSmtpUser.Text;
    //showmessage('Pass '+frmacbrnfe.edtSmtpPass.Text);
    frmacbrnfe.ACBrMail1.Password := frmacbrnfe.edtSmtpPass.Text;
    //showmessage('From '+frmacbrnfe.edtSmtpUser.Text);
    frmacbrnfe.ACBrMail1.From := frmacbrnfe.edtSmtpUser.Text;
    frmacbrnfe.ACBrMail1.SetSSL := frmacbrnfe.cbEmailSSL.Checked;// SSL - Conexão Segura}
    frmacbrnfe.ACBrMail1.SetTLS := frmacbrnfe.cbEmailTLS.Checked; // Auto TLS
    frmacbrnfe.ACBrMail1.ReadingConfirmation := False; //Pede confirmação de leitura do email
    frmacbrnfe.ACBrMail1.UseThread := true;           //Aguarda Envio do Email(não usa thread)
    frmacbrnfe.ACBrMail1.FromName := 'Alles ';
    frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, frmacbrnfe.edtEmailAssunto.Text,
                                               frmacbrnfe.mmEmailMsg.Lines
                                               , True  // Enviar PDF junto
                                               , CC    // Lista com emails que serão enviado cópias - TStrings
                                               , nil); // Lista de anexos - TStrings
  except
    on E:Exception do
    begin
      showmessage('N�o foi poss�vel enviar o email '+E.Message);
      fechatelaaguarde;
      exit
    end;
  end;
  CC.Free;
  fechatelaaguarde;
end;

Procedure AlimentarComponente(NumDFe: String);
begin
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  if frmacbrnfe.ACBrNFe1.Configuracoes.Geral.ModeloDF = moNFe then
  begin
    AlimentarNFe(NumDFe);
    frm_CON_PEDIDOS.lbl_RETCSTAT.Caption:=inttostr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat);
    frm_CON_PEDIDOS.Update;
    if frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat=100 then
    begin
      numnf:=strtoint(frm_CON_PEDIDOS.lbl_NFNUM.Caption);
      MostraTelaAguarde('Arquivando Nota Emitida '+ inttostr(numnf));
      ncaminho:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.Value+'\nfe\'+inttostr(currentyear)+'\'+formatdatetime('mm',date)+'\nfe\'+copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44)+'-nfe.xml';
      frm_CON_PEDIDOS.lbl_RETCSTAT.Caption:='Nota Ok';
      frm_CON_PEDIDOS.lbl_PROTOCOLO.caption:=frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      frm_CON_PEDIDOS.lbl_CHAVE.Caption:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
      //
      frm_CON_PEDIDOS.zqry_MAX.Close;
      frm_CON_PEDIDOS.zqry_MAX.SQL.Clear;
      frm_CON_PEDIDOS.zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
      frm_CON_PEDIDOS.zqry_MAX.Open;
      //
      dm_dados.zqry_SGNF.Close;
      dm_dados.zqry_SGNF.Open;
      dm_dados.zqry_sgnf.Insert;
      dm_dados.zqry_SGNFCODIGO.Value:=1+frm_CON_PEDIDOS.zqry_MAX.FieldByname('ultcodigo').asInteger;
      dm_Dados.zqry_SGNFCHAVE.Value:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
      dm_dados.zqry_SGNFDATA.value:=date;
      dm_dados.zqry_SGNFHORA.Value:=time;
      dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
      dm_dados.zqry_SGNFCODMOV.AsInteger:=frm_CON_PEDIDOS.zqry_VDVENDACODTIPOMOV.AsInteger;
      dm_Dados.zqry_SGNFSITUACAO.Value:='NFe Venda Emitida';
      dm_dados.zqry_sgnfvalor.asfloat:=frm_CON_PEDIDOS.zqry_VDVENDAVLRLIQVENDA.AsFloat;
      dm_dados.zqry_SGNFNFCE.AsString:='N';
      dm_dados.zqry_SGNFENVIADO.AsString:='S';
      DM_dADOS.zqry_SGNFNUMERO.asinteger:=strtoint(frm_CON_PEDIDOS.lbl_NFNUM.Caption);
  	  dm_Dados.zqry_SGNF.post;
      dm_dados.zqry_SGNF.applyupdates();
      //
      EXECUTASGINICONSP;
      frm_CON_PEDIDOS.zqry_UPDDEL.Params.Clear;
      frm_CON_PEDIDOS.zqry_UPDDEL.Close;
      frm_CON_PEDIDOS.zqry_UPDDEL.sql.clear;
      frm_CON_PEDIDOS.zqry_UPDDEL.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
      frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('seq').asinteger:=numnf+1;
      frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('tabsg').asstring:='NF';
      frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      frm_CON_PEDIDOS.zqry_UPDDEL.execsql;
      //
      if (frm_CON_PEDIDOS.AGRUPADOS=0) then
      begin
        frm_CON_PEDIDOS.zqry_UPDDEL.Params.Clear;
        frm_CON_PEDIDOS.zqry_UPDDEL.Close;
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Clear;
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Add('update vdvenda set codtipomov=:tipomov, serie=:serienf,dtsaidavenda=:dtsaida,chavenfevenda=:chave,docvenda=:vendadoc, protocolo=:proto, caminho=:pathnfe');
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Add('where codvenda='+frm_CON_PEDIDOS.zqry_VDVENDACODVENDA.asstring+' and codemp='+inttostr(dm_dados.codemp));
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('tipomov').AsInteger:=601;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('serienf').AsInteger:=1;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('dtsaida').AsDateTime:=now;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('chave').asstring:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('proto').AsString:= frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('pathnfe').asstring:=ncaminho;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('vendadoc').asinteger:=numnf;
        frm_CON_PEDIDOS.zqry_UPDDEL.ExecSQL;
        fechatelaaguarde;
      end;

      if (frm_CON_PEDIDOS.AGRUPADOS=1) then
      begin
        frm_CON_PEDIDOS.zqry_UPDDEL.Params.Clear;
        frm_CON_PEDIDOS.zqry_UPDDEL.Close;
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Clear;
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Add('update vdvenda set codtipomov=:tipomov, serie=:serienf,dtsaidavenda=:dtsaida,chavenfevenda=:chave,docvenda=:vendadoc, protocolo=:proto, caminho=:pathnfe');
        frm_CON_PEDIDOS.zqry_UPDDEL.SQL.Add('where codvenda in('+frm_CON_PEDIDOS.edit3.text+') and codemp='+inttostr(dm_dados.codemp));
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('tipomov').AsInteger:=601;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('serienf').AsInteger:=1;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('dtsaida').AsDateTime:=now;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('chave').asstring:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('proto').AsString:= frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('pathnfe').asstring:=ncaminho;
        frm_CON_PEDIDOS.zqry_UPDDEL.ParamByName('vendadoc').asinteger:=numnf;
        frm_CON_PEDIDOS.zqry_UPDDEL.ExecSQL;
        fechatelaaguarde;
      end;

      //
      EnviarEmail;
      //
      numnf:=0;
      ncaminho:=EmptyStr;
      if (frm_CON_PEDIDOS.AGRUPADOS=1) then
      begin
        frm_CON_PEDIDOS.edt_VLRTOTALAGRUPADO.Clear;
        frm_CON_PEDIDOS.edt_BUSCACLI.Clear;
      end;

      frm_CON_PEDIDOS.FECHACONEXOES;
    end;
    if frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat<>100 then
    begin
      mostratelaaviso('NOTA N�O EMITIDA','Consulte o motivo do CSTAT '+inttostr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat)+' no alto da tela');
    end;
  end;
  {else
    AlimentarNFCe(NumDFe);^}

end;

procedure ZeraVariaveis;
begin
  frm_CON_PEDIDOS.cpfcliente:=EmptyStr;
  frm_CON_PEDIDOS.cnpjcliente:=EmptyStr;
  frm_CON_PEDIDOS.pessoacliente:=EmptyStr;
  frm_CON_PEDIDOS.iecliente:=EmptyStr;
  frm_CON_PEDIDOS.ufcliente:=EmptyStr;
//
  frm_CON_PEDIDOS.ALIQINT:=0;
  frm_CON_PEDIDOS.ALIQEXT:=0;
  frm_CON_PEDIDOS.DIFERENCAFAT:=0;
  frm_CON_PEDIDOS.DIFERENCAPAG:=0;
  frm_CON_PEDIDOS.NUMREC:=0;
  frm_CON_PEDIDOS.NUMPARCELA:=0;
  frm_CON_PEDIDOS.PRIMEIRAPARCELA:=0;
  frm_CON_PEDIDOS.PRIMEIRAPARCELAST:=0;
  frm_CON_PEDIDOS.SOMABC:=0;
  frm_CON_PEDIDOS.SOMAICMS:=0;
  frm_CON_PEDIDOS.SOMAST:=0;
  frm_CON_PEDIDOS.SOMABCST:=0;
  frm_CON_PEDIDOS.SOMAAGRUPADO:=0;
  frm_CON_PEDIDOS.TOTALDESC:=0;
  frm_CON_PEDIDOS.TOTALDESTAQUE:=0;
  frm_CON_PEDIDOS.TOTALNOTA:=0;
  frm_CON_PEDIDOS.UFDEST:=0;
  frm_CON_PEDIDOS.UFREMET:=0;
  frm_CON_PEDIDOS.VALORPARCELA:=0;
  frm_CON_PEDIDOS.VALORPARTILHA:=0;
  frm_CON_PEDIDOS.VALORPARTILHADEST:=0;
  frm_CON_PEDIDOS.VALORPARTILHAUF:=0;
  frm_CON_PEDIDOS.VALORICMSITEM:=0;
  frm_CON_PEDIDOS.VALORNOTA:=0;
  frm_CON_PEDIDOS.VALORAGRUPADO:=0;
end;

procedure Identificacao;
begin
  //INICIO DA NFE
  frm_CON_PEDIDOS.larq.add('[infNFe]');
  frm_CON_PEDIDOS.larq.add('versao=4.00');
  //CHAVE IDENTIFICA��O
  frm_CON_PEDIDOS.larq.add('[Identificacao]');
  frm_CON_PEDIDOS.larq.add('dEmi=' + datetostr(date));
  frm_CON_PEDIDOS.larq.add('dSaiEnt=' + datetostr(date));
  if frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2 then
  begin
    frm_CON_PEDIDOS.larq.add('idDest=1');
    frm_CON_PEDIDOS.ufigual:=0;   // ufigual 0 � mesmo estado
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('iddest=2');
    frm_CON_PEDIDOS.ufigual:=1;  // uf igual 1 � outro estado
  end;
  frm_CON_PEDIDOS.partilha:='';
  frm_CON_PEDIDOS.larq.add('tpImp=1');
  frm_CON_PEDIDOS.larq.add('indFinal=1');
  frm_CON_PEDIDOS.larq.add('tpEmis='+(dm_dados.ambiente));
 { if dm_Dados.teminternet<>0 then
  begin
    //frm_prefacbr.show;
    //frm_acbrnfe.acbrnfe1.Configuracoes.Geral.FormaEmissao:=teContingencia;
    frm_CON_PEDIDOS.larq.add('dhCont='+DateTimeToStr(Now));
    frm_CON_PEDIDOS.larq.add('xJust=Nota Emitida em Contingencia. Problema T�cnico');
  end;}
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=501) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=560) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=570) then frm_CON_PEDIDOS.larq.add('finNFe=1');
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=572) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=580) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=583) then frm_CON_PEDIDOS.larq.add('finNFe=1');
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=585) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=590) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=595) then frm_CON_PEDIDOS.larq.add('finNFe=1');
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=572) or (dm_dados.zqry_VDVENDAcodtipomov.asinteger=207) then frm_CON_PEDIDOS.larq.add('finNFe=1');
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) then frm_CON_PEDIDOS.larq.add('finNFe=4');
  if (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=201) or (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=213) or (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=301) then frm_CON_PEDIDOS.larq.add('finNFe=1');
  if (dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=212) then frm_CON_PEDIDOS.larq.Add('finNFe=4');
  frm_CON_PEDIDOS.larq.add('indPres=');
  dm_dados.zqry_EQTIPOMOV.Close;
  dm_dados.zqry_EQTIPOMOV.sql.Clear;
  dm_dados.zqry_EQTIPOMOV.sql.add('select * from eqtipomov where codtipomov=:mov and codemp=:empcod');
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then dm_dados.zqry_EQTIPOMOV.ParamByName('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.asinteger;
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then dm_dados.zqry_EQTIPOMOV.ParamByName('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.asinteger;
  dm_dados.zqry_EQTIPOMOV.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_EQTIPOMOV.open;
  if dm_dados.zqry_EQTIPOMOV.IsEmpty then
  begin
    if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=201 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=COMPRA');
    if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=301 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=COMPRA');
    if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=213 then frm_CON_PEDIDOS.larq.Add('NaturezaOperacao=SIMPLES REMESSA');
    if dm_dados.zqry_CPCOMPRAcodtipomov.asinteger=212 then frm_CON_PEDIDOS.larq.Add('NaturezaOperacao=DEVOLUCAO');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=501 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=VENDA');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=560 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=INDUSTRIALIZACAO PARA DESTINATARIO');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=570 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=CONSIGNACAO');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=572 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=BONIFICA��O');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=580 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=REMESSA-ENTREGA FUTURA');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=583 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=SAIDA NAO ESPECIFICADA');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=585 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=AMOSTRA GRATIS');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=590 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=SIMPLES REMESSA');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=595 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=REMESSA CONSERTO');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=DEVOLUCAO');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=207 then frm_CON_PEDIDOS.larq.add('NaturezaOperacao=RETORNO');
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('NaturezaOperacao='+dm_dados.zqry_EQTIPOMOVDESCNATCOMPL.Value);
  end;
  frm_CON_PEDIDOS.larq.add('Modelo=55');
  frm_CON_PEDIDOS.larq.add('Serie=1');
  {if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('Codigo=' + inttostr(dm_dados.zqry_VDVENDACODVENDA.VALUE));
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.LARQ.Add('Codigo=' + inttostr(dm_dados.zqry_CPCOMPRACODCOMPRA.VALUE));}
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('Codigo=' + inttostr(random(99999999)+1));
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.LARQ.Add('Codigo=' + inttostr(random(99999999)+1));

  frm_CON_PEDIDOS.larq.add('Numero=' + dm_dados.zqry_MAX_NFEULTNFE.asstring);
  frm_CON_PEDIDOS.larq.add('Serie=1');
  // SE AGRUPADOS
  if frm_CON_PEDIDOS.AGRUPADOS=1 then
  begin
    frm_CON_PEDIDOS.larq.add('Emissao=' + datetostr(now));
    frm_CON_PEDIDOS.larq.add('Saida=' + datetostr(now));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('Emissao=' + datetostr(date));
    frm_CON_PEDIDOS.larq.add('Saida=' + datetostr(date));
  end;
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202)  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Tipo=2');
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202)  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Tipo=1');
  if (dm_dados.zqry_cpcompracodtipomov.asinteger=212) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.Add('Tipo=1');
  if (dm_dados.zqry_cpcompracodtipomov.asinteger<>212) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.Add('Tipo=2');
  // Formas de Pagto
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)   then frm_CON_PEDIDOS.larq.add('TipoPagto=0');
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger=1)  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)  then frm_CON_PEDIDOS.TipoPagto:=1;
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)  then frm_CON_PEDIDOS.larq.add('TipoPagto=1');
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)  then frm_CON_PEDIDOS.TipoPagto:=2;
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)   then frm_CON_PEDIDOS.larq.add('FormaPag=0');
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0)  then frm_CON_PEDIDOS.larq.add('FormaPag=1');
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1)  then frm_CON_PEDIDOS.larq.add('TipoPagto=0');
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1)  then frm_CON_PEDIDOS.TipoPagto:=1;
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('TipoPagto=1');
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.TipoPagto:=2;
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1)  then frm_CON_PEDIDOS.larq.Add('FormaPag=0');
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger>=2) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.Add('FormaPag=1');
  // SE DEVOLU��O
  if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) AND (frm_CON_PEDIDOS.tipomovimento=0) then
  begin
    frm_CON_PEDIDOS.larq.add('[NFRef001]');
    frm_CON_PEDIDOS.larq.add('Tipo=NFe');
    frm_CON_PEDIDOS.larq.add('refNFe='+frm_CON_PEDIDOS.edt_CHAVE.Text);
    frm_CON_PEDIDOS.devolucao:=1;
  end;
  if (dm_dados.zqry_cpcompracodtipomov.asinteger=212) AND (frm_CON_PEDIDOS.tipomovimento=1) then
  begin
    frm_CON_PEDIDOS.larq.add('[NFRef001]');
    frm_CON_PEDIDOS.larq.add('Tipo=NFe');
    frm_CON_PEDIDOS.larq.add('refNFe='+frm_CON_PEDIDOS.edt_CHAVE_ENT.Text);
    frm_CON_PEDIDOS.devolucao:=1;
  end;
  frm_CON_PEDIDOS.larq.add('[AUTXML001]');
  frm_CON_PEDIDOS.larq.add('CNPJCPF='+dm_dados.zqry_SGPREFERE1CNPJCPF.value);
  if dm_dados.autorizado2<>'' then
  begin
    frm_CON_PEDIDOS.larq.add('[autXML002]');
    frm_CON_PEDIDOS.larq.add('CNPJCPF='+dm_dados.autorizado2);
  end;
  frm_CON_PEDIDOS.LARQ.Add('[infRespTec]');
  frm_CON_PEDIDOS.LARQ.Add('CNPJ=06976896000125');
  frm_CON_PEDIDOS.LARQ.Add('xContato=Israel de Oliveira Pinheiro Lopes ME');
  frm_CON_PEDIDOS.LARQ.Add('email=contato@nonoelemento.com.br');
  frm_CON_PEDIDOS.LARQ.Add('fone=2731800309');
  frm_CON_PEDIDOS.LARQ.Add('idcsrt=0');
  frm_CON_PEDIDOS.LARQ.Add('csrt=');
end;

procedure Emitente;
begin
  //CONSULTA MUNICIPIO
  dm_dados.zqry_sgmunicipio.close;
  dm_dados.zqry_sgmunicipio.sql.Clear;
  dm_dados.zqry_sgmunicipio.sql.add('select * from sgmunicipio where siglauf=:sigla and codmunic=:codigo');
  dm_dados.zqry_sgmunicipio.ParamByName('codigo').asString:=dm_dados.zqry_sgfilialcodmunic.Value;
  dm_dados.zqry_sgmunicipio.ParamByName('sigla').asString:= dm_dados.zqry_sgfilialsiglauf.AsString;
  dm_dados.zqry_sgmunicipio.open;
  frm_CON_PEDIDOS.municipio:=REMOVEACENTO(dm_dados.zqry_SGMUNICIPIONOMEMUNIC.Value);
  frm_CON_PEDIDOS.larq.add('[Emitente]');
  frm_CON_PEDIDOS.larq.add('CNPJ=' + DM_DADOS.zqry_sgfilialCNPJFILIAL.VALUE);
  frm_CON_PEDIDOS.larq.add('IE=' + DM_DADOS.zqry_sgfilialINSCFILIAL.VALUE);
  if dm_dados.zqry_sgfilialsimplesfilial.asstring='S' then frm_CON_PEDIDOS.larq.add('CRT=1');
  if dm_dados.zqry_sgfilialsimplesfilial.asstring='N' then frm_CON_PEDIDOS.larq.add('CRT=3');
  frm_CON_PEDIDOS.larq.add('Razao=' + 			REMOVEACENTO(DM_DADOS.zqry_SGFILIALRAZFILIAL.VALUE));
  frm_CON_PEDIDOS.larq.add('Fantasia=' + REMOVEACENTO(DM_DADOS.zqry_SGFILIALNOMEFILIAL.VALUE));
  frm_CON_PEDIDOS.larq.add('Fone='+dm_dados.zqry_SGFILIALDDDFILIAL.value+dm_dados.zqry_SGFILIALFONEFILIAL.value);
  frm_CON_PEDIDOS.larq.add('CEP=' + DM_DADOS.zqry_SGFILIALCEPFILIAL.VALUE);
  frm_CON_PEDIDOS.larq.add('Logradouro=' + REMOVEACENTO(DM_DADOS.zqry_SGFILIALENDFILIAL.VALUE));
  frm_CON_PEDIDOS.larq.add('Numero=' + INTTOSTR(DM_DADOS.zqry_SGFILIALNUMFILIAL.VALUE));
  frm_CON_PEDIDOS.larq.add('Complemento=');
  frm_CON_PEDIDOS.larq.add('Bairro=' + REMOVEACENTO(DM_DADOS.zqry_SGFILIALBAIRFILIAL.VALUE));
  frm_CON_PEDIDOS.larq.add('CidadeCod='+ '3139409');// + {dm_dados.zqry_SGFILIAL_coduf.asstring+dm_dados.zqry_SGFILIALcodmunic.asstring);} //// CODCIDADE
  frm_CON_PEDIDOS.larq.add('Cidade=' + 'Nome da Cidade');
  ///+ //; NOME DA CIDADE ;//REMOVEACENTO(frm_CON_PEDIDOS.MUNICIPIO));
  frm_CON_PEDIDOS.larq.add('UF=' + DM_DADOS.zqry_SGFILIALSIGLAUF.ASSTRING);
end;

procedure Destinatario;
begin
  frm_CON_PEDIDOS.larq.add('[Destinatario]');
  ///////////////////////////////////////
  ///  SE SAIDA
  ///////////////////////////////////////
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=0 THEN
  BEGIN
    if (frm_CON_PEDIDOS.zqry_VDCLIENTECPFCLI.ASSTRING<>'') and (frm_CON_PEDIDOS.zqry_VDCLIENTEPESSOACLI.AsString='F') then
    begin
      frm_CON_PEDIDOS.larq.add('CPF=' + frm_CON_PEDIDOS.zqry_VDCLIENTECPFCLI.ASSTRING);
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end
      else
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
    end;
  END;
  ///////////////////////////////////////
  ///  SE ENTRADA
  ///////////////////////////////////////
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=1 THEN
  BEGIN
    if (frm_CON_PEDIDOS.zqry_FORNECCOMPRACPFFOR.ASSTRING<>'') and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.AsString='F') then
    begin
      frm_CON_PEDIDOS.larq.add('CPF=' + frm_CON_PEDIDOS.zqry_FORNECCOMPRACPFFOR.AsString);
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end
      else
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
    end;
  END;
  if (frm_CON_PEDIDOS.zqry_VDCLIENTECNPJCLI.AsString<>'') AND (frm_CON_PEDIDOS.zqry_VDCLIENTEPESSOACLI.AsString='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('CNPJ=' + frm_CON_PEDIDOS.zqry_VDCLIENTECNPJCLI.ASSTRING);
  if (frm_CON_PEDIDOS.zqry_FORNECCOMPRACNPJFOR.AsString<>'') AND (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.AsString='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('CNPJ=' + frm_CON_PEDIDOS.zqry_FORNECCOMPRACNPJFOR.ASSTRING);

  if (frm_CON_PEDIDOS.iecliente<>'') then
  begin
    if (frm_CON_PEDIDOS.iecliente) = 'ISENTO' then
    begin
      // SE FOR SAIDA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.zqry_VDCLIENTEPESSOACLI.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end;
      // SE FOR ENTRADA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then
      begin
        frm_CON_PEDIDOS.recicmpf:=1;
        frm_CON_PEDIDOS.pessoafisica:=1;
      end;
      // SE FOR SAIDA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.zqry_VDCLIENTEPESSOACLI.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
      // SE FOR ENTRADA
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.zqry_FORNECCOMPRAPESSOAFOR.asstring='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then
      begin
        frm_CON_PEDIDOS.recicmpf:=0;
        frm_CON_PEDIDOS.pessoafisica:=0;
      end;
      dm_dados.zqry_Sguf.Params.Clear;
      dm_dados.zqry_sguf.close;
      dm_dados.zqry_sguf.sql.clear;
      dm_Dados.zqry_sguf.sql.add('select * from sguf where siglauf=:ufsigla');
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then dm_dados.zqry_sguf.parambyname('ufsigla').asstring:=dm_dados.zqry_VDVENDA_SIGLAUF.ASSTRING;
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then dm_dados.zqry_sguf.parambyname('ufsigla').asstring:=dm_dados.zqry_CPCOMPRA_SIGLAUF.ASSTRING;
      dm_dados.zqry_sguf.open;
      frm_CON_PEDIDOS.larq.add('indiedest='+dm_Dados.zqry_sgufindiedest.asstring);
      if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='S' else frm_CON_PEDIDOS.partilha:='N';
      frm_CON_PEDIDOS.larq.add('ie=');
    end
    else
    begin
      frm_CON_PEDIDOS.larq.add('indiedest=1');
      frm_CON_PEDIDOS.larq.add('IE=' + frm_CON_PEDIDOS.IECLIENTE);
      if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='N' else frm_CON_PEDIDOS.partilha:='N';
    end;
  end;
  if Trim(frm_CON_PEDIDOS.iecliente) = '' then
  begin
    // SE FOR SAIDA
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.recicmpf:=1;
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.recicmpf:=0;
    // SE FOR ENTRADA
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=0) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.recicmpf:=1;
    if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (frm_CON_PEDIDOS.UFIGUAL=1) and (frm_CON_PEDIDOS.PESSOACLIENTE='J') AND (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.recicmpf:=0;
    //
    frm_CON_PEDIDOS.larq.add('indiedest=9');
    frm_CON_PEDIDOS.larq.add('ie=');
    if frm_CON_PEDIDOS.ufigual=1 then frm_CON_PEDIDOS.partilha:='S' else frm_CON_PEDIDOS.partilha:='N';
  end;
  frm_CON_PEDIDOS.larq.add('ISUF=');
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('NomeRazao=' + removeacento(dm_dados.zqry_VDVENDA_RAZCLIENTE.VALUE));
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('NomeRazao=' + removeacento(dm_dados.zqry_CPCOMPRA_RAZFOR.VALUE));
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (dm_dados.zqry_VDVENDA_TELCLIENTE.AsString='') then frm_CON_PEDIDOS.larq.add('Fone=');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (dm_Dados.zqry_VDVENDA_TELCLIENTE.AsString<>'') then frm_CON_PEDIDOS.larq.add('Fone=' + dm_dados.zqry_VDVENDA_dddcliente.value+dm_dados.zqry_VDVENDA_TELCLIENTE.VALUE);
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (dm_dados.zqry_CPCOMPRA_TELFOR.AsString='') then frm_CON_PEDIDOS.larq.add('Fone=');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (dm_Dados.zqry_CPCOMPRA_TELFOR.AsString<>'') then frm_CON_PEDIDOS.larq.add('Fone=' + dm_dados.zqry_CPCOMPRA_DDDFOR.value+dm_dados.zqry_CPCOMPRA_TELFOR.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('CEP=' + dm_dados.zqry_VDVENDA_CEPCLIENTE.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('CEP=' + dm_dados.zqry_CPCOMPRA_CEPFOR.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('Logradouro=' + removeacento(dm_dados.zqry_VDVENDA_ENDCLIENTE.VALUE));
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('Logradouro=' + removeacento(dm_dados.zqry_CPCOMPRA_ENDFOR.VALUE));
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('Numero=' + dm_dados.zqry_VDVENDA_NUMCLIENTE.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('Numero=' + dm_dados.zqry_CPCOMPRA_NUMFOR.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('Complemento=' + dm_dados.zqry_VDVENDA_COMPLCLIENTE.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('Complemento=' + dm_dados.zqry_CPCOMPRA_COMPLFOR.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('Bairro=' + removeacento(dm_dados.zqry_VDVENDA_BAIRROCLIENTE.VALUE));
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('Bairro=' + removeacento(dm_dados.zqry_CPCOMPRA_BAIRROFOR.VALUE));
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.larq.add('UF=' + dm_dados.zqry_VDVENDA_UFCLIENTE.VALUE);
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.larq.add('UF=' + dm_dados.zqry_CPCOMPRA_UFFOR.VALUE);
  dm_dados.zqry_SGMUNICIPIO.close;
  dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
  dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=dm_dados.zqry_VDVENDA_CODMUNICCLIENTE.ASSTRING;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= dm_dados.zqry_VDVENDA_SIGLAUF.asstring;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=dm_dados.zqry_CPCOMPRA_CODMUNICFOR.ASSTRING;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN dm_dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= dm_dados.zqry_CPCOMPRA_SIGLAUF.asstring;
  dm_dados.zqry_sgmunicipio.open;
  frm_CON_PEDIDOS.larq.add('CidadeCod='   + dm_dados.zqry_sgmunicipiocoduf.asstring+dm_dados.zqry_sgmunicipiocodmunic.asstring);
  frm_CON_PEDIDOS.larq.add('Cidade='      + removeacento(dm_dados.zqry_SGMUNICIPIONOMEMUNIC.asstring));
  frm_CON_PEDIDOS.larq.add('idDest=1');
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) THEN frm_CON_PEDIDOS.emaildest:=dm_dados.zqry_VDVENDA_MAILCLIENTENF.AsString;
  IF (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) THEN frm_CON_PEDIDOS.emaildest:=dm_dados.zqry_CPCOMPRA_MAILFOR.AsString;
end;

procedure itensvenda;
var
  descricao, ean, ncm, unid,cest, lote, desclote : string;
begin
  DM_DADOs.zqry_vditvenda.DisableControls;
  dm_Dados.zqry_vditvenda.First;
  frm_CON_PEDIDOS.contador:=1;
  while not DM_DADOS.zqry_VDITVENDA.eof do
  begin
    frm_CON_PEDIDOS.larq.add('[Produto' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
    frm_CON_PEDIDOS.larq.add('CFOP=' + DM_DADOS.zqry_VDITVENDACODNAT.VALUE);
    frm_CON_PEDIDOS.txtCFOP:=DM_DADOS.zqry_VDITVENDACODNAT.Value;
    frm_CON_PEDIDOS.larq.add('Codigo=' + inttostr(DM_DADOS.zqry_VDITVENDACODPROD.VALUE));
    //CONSULTA PRODUTO PARA SABER SE � MIX
    frm_CON_PEDIDOS.codigoproduto:=dm_dados.zqry_VDITVENDACODPROD.AsInteger;
   { lote:=dm_dados.zqry_VDITVENDACODLOTE.asstring;
    { Consulta de Lotes
    if not lote.IsEmpty then
    begin
      dm_dados.zqry_eqlote.Params.Clear;
      dm_Dados.zqry_EQLOTE.Close;
      dm_Dados.zqry_eqlote.SQL.Clear;
      dm_dados.zqry_eqlote.SQL.Add('SELECT * FROM eqlote WHERE codlote = :p1 AND codprod = :p2');
      dm_dados.zqry_eqlote.ParamByName('p1').AsString := lote;
      dm_dados.zqry_eqlote.ParamByName('p2').AsInteger := dm_dados.zqry_vditvendacodprod.AsInteger;
      dm_Dados.zqry_eqlote.Open;
      if not dm_dados.zqry_eqlote.isnull then

    end;                }
    {Consulta de Produtos}
    DM_DADOS.zqry_EQPRODUTO.Params.Clear;
    dm_dados.zqry_EQPRODUTO.close;
    dm_dados.zqry_EQPRODUTO.SQL.Clear;
    dm_dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodcod and codemp=:empcod');
    dm_dados.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=frm_CON_PEDIDOS.codigoproduto;
    dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_EQPRODUTO.Open;
    descricao:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
    ean:=dm_dados.zqry_EQPRODUTOCODBARPROD.AsString;
    if ean='7891111111111' then ean:='SEM GTIN';
    ncm:=dm_Dados.zqry_EQPRODUTOCODFISC.AsString;
    unid:=dm_dados.zqry_EQPRODUTOCODUNID.AsString;
    cest:=dm_dados.zqry_EQPRODUTOCEST.AsString;
    if dm_dados.zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN.AsString<>'' then csosn:=dm_dados.zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN.AsString;
    if dm_dados.zqry_VDITVENDACODLOTE.asString<>'' then
    begin
      dm_dados.zqry_EQLOTE.params.Clear;
      dm_Dados.zqry_EQLOTE.Close;
      dm_Dados.zqry_EQLOTE.SQL.Clear;
      dm_dados.zqry_EQLOTE.SQL.Add('select * from eqlote where codprod=:prodcod and codemp=:empcod and codlote=:lotecod');
      dm_dados.zqry_EQLOTE.ParamByName('prodcod').AsInteger:=DM_DADOS.zqry_VDITVENDACODPROD.AsInteger;
      dm_dados.zqry_EQLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_Dados.zqry_EQLOTE.ParamByName('lotecod').AsString:=dm_dados.zqry_VDITVENDACODLOTE.AsString;
      dm_dados.zqry_EQLOTE.Open;
      if dm_dados.zqry_EQLOTE.IsEmpty then frm_CON_PEDIDOS.larq.add('Descricao=' + DM_DADOS.zqry_VDITVENDAOBSITVENDA.VALUE) else frm_CON_PEDIDOS.larq.add('Descricao=' + DM_DADOS.zqry_VDITVENDAOBSITVENDA.VALUE+' Lote '+dm_dados.zqry_EQLOTECODLOTE.asstring);
    end
    else
    begin
      dm_dados.zqry_EQLOTE.params.Clear;
      dm_Dados.zqry_EQLOTE.Close;
      dm_Dados.zqry_EQLOTE.SQL.Clear;
      dm_dados.zqry_EQLOTE.SQL.Add('select * from eqlote where codprod=:prodcod and codemp=:empcod and codlote=:lotecod');
      dm_dados.zqry_EQLOTE.ParamByName('prodcod').AsInteger:=DM_DADOS.zqry_VDITVENDACODPROD.AsInteger;
      dm_dados.zqry_EQLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_Dados.zqry_EQLOTE.ParamByName('lotecod').AsString:=dm_dados.zqry_VDITVENDACODLOTE.AsString;
      dm_dados.zqry_EQLOTE.Open;
      if dm_dados.zqry_EQLOTE.IsEmpty then frm_CON_PEDIDOS.larq.add('Descricao=' + removeacento(dm_dados.zqry_EQPRODUTODESCPROD.AsString)) else frm_CON_PEDIDOS.larq.add('Descricao=' + removeacento(dm_dados.zqry_EQPRODUTODESCPROD.AsString)+' Lote '+dm_dados.zqry_EQLOTECODLOTE.asstring);
    end;
{    else
    begin
      frm_CON_PEDIDOS.codigomix:=dm_dados.zqry_EQPRODUTOCODMIX.AsInteger;
      dm_dados.zqry_eqproduto.Params.Clear;
      dm_dados.zqry_EQPRODUTO.close;
      dm_dados.zqry_EQPRODUTO.SQL.Clear;
      dm_dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodmix and codemp=:empcod');
      dm_dados.zqry_EQPRODUTO.ParamByName('prodmix').AsInteger:=frm_CON_PEDIDOS.codigomix;
      dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_EQPRODUTO.Open;
      descricao:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
      ean:=dm_dados.zqry_EQPRODUTOCODBARPROD.AsString;
      ncm:=dm_Dados.zqry_EQPRODUTOCODFISC.AsString;
      unid:=dm_dados.zqry_EQPRODUTOCODUNID.AsString;
      cest:=dm_dados.zqry_EQPRODUTOCEST.AsString;
      frm_CON_PEDIDOS.larq.add('Descricao=' + descricao);
    end;}
    //FINALIZA BLOCO PRODUTO MIX DE PRODUTOS
    frm_CON_PEDIDOS.larq.add('EAN=' + ean);
    frm_CON_PEDIDOS.larq.add('NCM=' +ncm);
    frm_CON_PEDIDOS.larq.add('Unidade=' + unid);
    frm_CON_PEDIDOS.larq.add('Quantidade=' + FormatFloat('##0.0000', dm_dados.zqry_VDITVENDAQTDITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('ValorUnitario=' + FormatFloat('##0.0000', dm_dados.zqry_VDITVENDAPRECOITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('ValorProduto='+ FormatFloat('##0.00', dm_dados.zqry_VDITVENDAPRECOITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('vDesc='+FormatFloat('##0.00', dm_dados.zqry_VDITVENDAVLRDESCITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('ValorTotal=' + formatfloat('##0.0000', dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('vFRETE=0.0000');
    frm_CON_PEDIDOS.larq.add('CEST='+cest);
    frm_CON_PEDIDOS.larq.add('CEANTRIB='+ ean);
    frm_CON_PEDIDOS.larq.add('uTRIB='+ unid);
    frm_CON_PEDIDOS.larq.add('qTRIB='+FormatFloat('##0.0000', dm_dados.zqry_VDITVENDAQTDITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('vUnTRIB='+FormatFloat('##0.0000', dm_dados.zqry_VDITVENDAPRECOITVENDA.asfloat));
    frm_CON_PEDIDOS.larq.add('IndTot=1');
    frm_CON_PEDIDOS.VALORPARTILHA:=roundto(((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*6)/100),-4);
    frm_CON_PEDIDOS.VALORPARTILHADEST:=roundto(((frm_CON_PEDIDOS.VALORPARTILHA*60)/100),-4);
    frm_CON_PEDIDOS.VALORPARTILHAUF:=roundto(((frm_CON_PEDIDOS.VALORPARTILHA*40)/100),-4);
    frm_CON_PEDIDOS.TOTALDESC:=frm_CON_PEDIDOS.TOTALDESC+ROUNDTO(dm_dados.zqry_VDITVENDAVLRDESCITVENDA.ASFLOAT, -2);
    //RASTREABILIDADE DO PRODUTO
    dm_dados.zqry_EQLOTE.params.Clear;
    dm_Dados.zqry_EQLOTE.Close;
    dm_Dados.zqry_EQLOTE.SQL.Clear;
    dm_dados.zqry_EQLOTE.SQL.Add('select * from eqlote where codprod=:prodcod and codemp=:empcod and codlote=:lotecod');
    dm_dados.zqry_EQLOTE.ParamByName('prodcod').AsInteger:=DM_DADOS.zqry_VDITVENDACODPROD.AsInteger;
    dm_dados.zqry_EQLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_EQLOTE.ParamByName('lotecod').AsString:=dm_dados.zqry_VDITVENDACODLOTE.AsString;
    dm_dados.zqry_EQLOTE.Open;
    if dm_dados.zqry_EQLOTE.IsEmpty then
    begin
      // SE ESTIVER VAZIO NAO FAZ NADA
    end
    else
    begin
      frm_CON_PEDIDOS.larq.add('[RASTRO' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
      frm_CON_PEDIDOS.larq.add('nLote='+dm_dados.zqry_EQLOTECODLOTE.asstring);
      frm_CON_PEDIDOS.larq.add('qLote='+FormatFloat('##0.0000', dm_dados.zqry_EQLOTEQTDPRODLOTE.asfloat));
      frm_CON_PEDIDOS.larq.add('dFab='+datetostr(dm_dados.zqry_EQLOTEDINILOTE.AsDateTime));
      frm_CON_PEDIDOS.larq.add('dVal='+datetostr(dm_Dados.zqry_EQLOTEVENCTOLOTE.AsDateTime));
    end;
    // FINALIZA RASTREABILIDADE DO PRODUTO
    // VALOR DO ICMS
    icms;
    // VALOR DO PIS
    pis;
    // VALOR DO IPI
    ipi;
    // VALOR DO COFINS
    cofins;
    // ICMS UF DESTINO
    difal;
    frm_CON_PEDIDOS.contador:=frm_CON_PEDIDOS.contador+1;
    DM_DADOS.zqry_VDITVENDA.Next;
  end;
  dm_Dados.zqry_VDITVENDA.EnableControls;
end;

procedure itenscompra;
var
  descricao, ean, ncm, unid,cest : string;
begin
  DM_DADOs.zqry_cpitcompra.DisableControls;
  dm_Dados.zqry_cpitcompra.First;
  frm_CON_PEDIDOS.contador:=1;
  while not DM_DADOS.zqry_cpitcompra.eof do
  begin
    frm_CON_PEDIDOS.CODIGOPRODUTO:=0;
    frm_CON_PEDIDOS.larq.add('[Produto' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
    frm_CON_PEDIDOS.larq.add('CFOP=' + DM_DADOS.zqry_cpitcompraCODNAT.VALUE);
    frm_CON_PEDIDOS.txtCFOP:=DM_DADOS.zqry_cpitcompraCODNAT.Value;
    frm_CON_PEDIDOS.larq.add('Codigo=' + inttostr(DM_DADOS.zqry_cpitcompraCODPROD.VALUE));
    frm_CON_PEDIDOS.codigoproduto:=dm_dados.zqry_cpitcompraCODPROD.AsInteger;
    DM_DADOS.zqry_EQPRODUTO.Params.Clear;
    dm_dados.zqry_EQPRODUTO.close;
    dm_dados.zqry_EQPRODUTO.SQL.Clear;
    dm_dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodcod and codemp=:empcod');
    dm_dados.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=frm_CON_PEDIDOS.codigoproduto;
    dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_dados.zqry_EQPRODUTO.Open;
    descricao:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
    ean:=dm_dados.zqry_EQPRODUTOCODBARPROD.AsString;
    ncm:=dm_Dados.zqry_EQPRODUTOCODFISC.AsString;
    unid:=dm_dados.zqry_EQPRODUTOCODUNID.AsString;
    cest:=dm_dados.zqry_EQPRODUTOCEST.AsString;
    if dm_dados.zqry_EQPRODUTOcodmix.IsNull then
    begin
      if dm_dados.zqry_cpitcompraobsitcompra.Value<>'' then frm_CON_PEDIDOS.larq.add('Descricao=' + DM_DADOS.zqry_cpitcompraOBSITCOMPRA.VALUE) else frm_CON_PEDIDOS.larq.add('Descricao=' + removeacento(descricao));
    end
    else
    begin
      frm_CON_PEDIDOS.codigomix:=dm_dados.zqry_EQPRODUTOCODMIX.AsInteger;
      dm_dados.zqry_eqproduto.Params.Clear;
      dm_dados.zqry_EQPRODUTO.close;
      dm_dados.zqry_EQPRODUTO.SQL.Clear;
      dm_dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodmix and codemp=:empcod');
      dm_dados.zqry_EQPRODUTO.ParamByName('prodmix').AsInteger:=frm_CON_PEDIDOS.codigomix;
      dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      dm_dados.zqry_EQPRODUTO.Open;
      frm_CON_PEDIDOS.larq.add('Descricao=' + dm_dados.zqry_EQPRODUTODESCPROD.VALUE);
    end;
    // FINALIZA BLOCO PRODUTO MIX DE PRODUTOS
    frm_CON_PEDIDOS.larq.add('EAN=' + ean); //
    frm_CON_PEDIDOS.larq.add('NCM=' + ncm);//
    frm_CON_PEDIDOS.larq.add('Unidade='+ unid);//
    frm_CON_PEDIDOS.larq.add('Quantidade=' + FormatFloat('##0.0000', dm_dados.zqry_CPITCOMPRAQTDITCOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.add('ValorUnitario=' + FormatFloat('##0.0000', dm_dados.zqry_CPITCOMPRAPRECOITCOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.Add('ValorProduto='+ FormatFloat('##0.0000', dm_dados.zqry_CPITCOMPRAPRECOITCOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.Add('vDesc='+FormatFloat('##0.00', dm_dados.zqry_CPITCOMPRAVLRDESCITCOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.Add('ValorTotal=' + formatfloat('##0.0000', dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.Add('vFRETE=0.0000');
    frm_CON_PEDIDOS.larq.Add('CEST='+cest);//
    frm_CON_PEDIDOS.larq.add('CEANTRIB='+ ean);//
    frm_CON_PEDIDOS.larq.add('uTRIB='+ unid);//
    frm_CON_PEDIDOS.larq.add('qTRIB='+FormatFloat('##0.0000', dm_dados.zqry_CPITCOMPRAQTDITCOMPRA.AsFloat));
    frm_CON_PEDIDOS.larq.add('vUnTRIB='+FormatFloat('##0.0000', dm_dados.zqry_CPITCOMPRAPRECOITCOMPRA.AsFloat));
    frm_CON_PEDIDOS.larq.add('IndTot=1');
    frm_CON_PEDIDOS.VALORPARTILHA:=roundto(((dm_dados.zqry_CPITCOMPRAVLRLIQITCOMPRA.asfloat*6)/100),-4);
    frm_CON_PEDIDOS.VALORPARTILHADEST:=roundto(((frm_CON_PEDIDOS.VALORPARTILHA*60)/100),-4);
    frm_CON_PEDIDOS.VALORPARTILHAUF:=roundto(((frm_CON_PEDIDOS.VALORPARTILHA*40)/100),-4);
    frm_CON_PEDIDOS.TOTALDESC:=frm_CON_PEDIDOS.TOTALDESC+ROUNDTO(dm_dados.zqry_CPITCOMPRAVLRDESCITCOMPRA.ASFLOAT, -2);
  // FINALIZA RASTREABILIDADE DO PRODUTO
  // VALOR DO ICMS
  icms;
  // VALOR DO PIS
  pis;
  // VALOR DO IPI
  ipi;
  // VALOR DO COFINS
  cofins;
  // ICMS UF DESTINO
  difal;
  frm_CON_PEDIDOS.contador:=frm_CON_PEDIDOS.contador+1;
  DM_DADOS.zqry_CPITCOMPRA.Next;
  end;
  DM_DADOS.zqry_CPITCOMPRA.EnableControls;
end;

procedure Totais;
begin
  frm_CON_PEDIDOS.larq.add('[Total]');
  // SE FOR SIMPLES NACIONAL
  if DM_dAdos.zqry_sgfilialsimplesfilial.asstring='S' then
  begin
    if frm_CON_PEDIDOS.siticms=0 then
    begin
      frm_CON_PEDIDOS.larq.add('BaseICMS=0');
      frm_CON_PEDIDOS.larq.add('ValorICMS=0');
    end
    else
    begin
      frm_CON_PEDIDOS.larq.add('BaseICMS=0.0000');// + formatfloat('##0.00', SOMABC));
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*frm_CON_PEDIDOS.aliqint)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*frm_CON_PEDIDOS.aliqext)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_CPCOMPRAVLRLIQCOMPRA.asfloat*frm_CON_PEDIDOS.aliqint)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_CPCOMPRAVLRLIQCOMPRA.asfloat*frm_CON_PEDIDOS.aliqext)/100);
      frm_CON_PEDIDOS.larq.add('ValorICMS=0.0000');// + formatfloat('##0.00', SOMAICMS));
    end;
  end
  // SE N�O FOR SIMPLES NACIONAL
  else
  begin
    if (frm_CON_PEDIDOS.siticms=0) or (frm_CON_PEDIDOS.zqry_itfiscalcodtrattrib.asstring='40') or (frm_CON_PEDIDOS.zqry_itfiscalcodtrattrib.asstring='51') then
    begin
      frm_CON_PEDIDOS.larq.add('BaseICMS=0');
      frm_CON_PEDIDOS.larq.add('ValorICMS=0');
    end
    else
    begin
      frm_CON_PEDIDOS.larq.add('BaseICMS=' + formatfloat('##0.00', (frm_CON_PEDIDOS.SOMABC*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.SOMABC))));
      //
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*frm_CON_PEDIDOS.aliqint)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*frm_CON_PEDIDOS.aliqext)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_CPCOMPRAVLRLIQCOMPRA.asfloat*frm_CON_PEDIDOS.aliqint)/100);
      if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) then frm_CON_PEDIDOS.VALORICMS:=((dm_dados.zqry_CPCOMPRAVLRLIQCOMPRA.asfloat*frm_CON_PEDIDOS.aliqext)/100);
      frm_CON_PEDIDOS.larq.add('ValorICMS=' + formatfloat('##0.00', frm_CON_PEDIDOS.SOMAICMS));
    end;
  end;
  // SE PRODUTOS AGRUPADOS
  if frm_CON_PEDIDOS.AGRUPADOS=1 then
  begin
    frm_CON_PEDIDOS.VALORAGRUPADO:=roundto(frm_CON_PEDIDOS.VLRAGRUPADO,-2);
    frm_CON_PEDIDOS.VALORNOTA:=roundto(frm_CON_PEDIDOS.VALORAGRUPADO,-2);
    frm_CON_PEDIDOS.larq.add('ValorProduto=' + formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
    frm_CON_PEDIDOS.larq.add('ValorNota=' + formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA));
    frm_CON_PEDIDOS.TOTALNOTA:=frm_CON_PEDIDOS.VALORNOTA;
  end
  // SE PRODUTOS NAO AGRUPADOS
  else
  begin
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('ValorProduto=' + formatfloat('##0.00', dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('ValorProduto=' + formatfloat('##0.00', dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat));
    if frm_CON_PEDIDOS.recicmpf=1 then
    begin
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('ValorNota=' + formatfloat('##0.00', ((dm_dados.zqry_VDVENDAVLRPRODVENDA.ASFLOAT)-frm_CON_PEDIDOS.TOTALDESC){(dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat)}+frm_CON_PEDIDOS.somaICMS));//+SOMAICMS+SOMAST+SOMAIPI)-TOTALDESC));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.TOTALNOTA:=(dm_dados.zqry_VDVENDAVLRPRODVENDA.ASFLOAT-frm_CON_PEDIDOS.TOTALDESC)+frm_CON_PEDIDOS.somaicms;
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('ValorNota=' + formatfloat('##0.00', ((dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.ASFLOAT)-frm_CON_PEDIDOS.TOTALDESC){(dm_dados.zqry_cpcompraNDAVLRLIQVENDA.asfloat)}+frm_CON_PEDIDOS.somaICMS));//+SOMAICMS+SOMAST+SOMAIPI)-TOTALDESC));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.TOTALNOTA:=(dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.ASFLOAT-frm_CON_PEDIDOS.TOTALDESC)+frm_CON_PEDIDOS.somaicms;
    end
    else
    begin

      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('ValorNota=' + formatfloat('##0.00', (dm_dados.zqry_VDVENDAVLRPRODVENDA.ASFLOAT)+(frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast))-frm_CON_PEDIDOS.TOTALDESC));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.TOTALNOTA:=dm_dados.zqry_VDVENDAVLRPRODVENDA.ASFLOAT+(frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast))-(frm_CON_PEDIDOS.TOTALDESC);
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('ValorNota=' + formatfloat('##0.00', (dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.ASFLOAT)+(frm_CON_PEDIDOS.somast-frm_CON_PEDIDOS.TOTALDESC)));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.TOTALNOTA:=dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.ASFLOAT+(frm_CON_PEDIDOS.somast-frm_CON_PEDIDOS.TOTALDESC);

    end;
  end;
  // SE FOR PARTILHA (DIFAL)
  if frm_CON_PEDIDOS.partilha='S' then
  begin
    if frm_CON_PEDIDOS.AGRUPADOS=1 then
    begin
      frm_CON_PEDIDOS.VALORAGRUPADO:=roundto(strtoCurr(frm_CON_PEDIDOS.edt_VLRTOTALAGRUPADO.TEXT),-2);
      frm_CON_PEDIDOS.VALORNOTA:=roundto(frm_CON_PEDIDOS.VALORAGRUPADO,-2);
      frm_CON_PEDIDOS.TOTALNOTA:=frm_CON_PEDIDOS.VALORNOTA;
      frm_CON_PEDIDOS.larq.add('vBCUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA));
    end
    else
    begin
      frm_CON_PEDIDOS.larq.add('vBCUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA)); //total da nota
    end;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('ValorIPI='+formatfloat('##0.0000', dm_dados.zqry_VDVENDAVLRIPIVENDA.asfloat));
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('ValorIPI='+formatfloat('##0.0000', dm_dados.zqry_CPCOMPRAVLRIPICOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.add('pFCPUFDest=0.0000');  // combate a pobreza
    frm_CON_PEDIDOS.larq.add('pICMSInter='+floattostr(frm_CON_PEDIDOS.aliqint));
    frm_CON_PEDIDOS.larq.add('pICMSUFDest='+floattostr(frm_CON_PEDIDOS.aliqext));
    if frm_CON_PEDIDOS.ano='2017' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=60.0000');
    if frm_CON_PEDIDOS.ano='2018' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=80.0000');
    if frm_CON_PEDIDOS.ano='2019' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=100.0000');
    frm_CON_PEDIDOS.larq.add('vFCPUFDest=0.00');
    frm_CON_PEDIDOS.larq.add('vICMSUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.UFDEST));
    frm_CON_PEDIDOS.larq.add('vICMSUFRemet='+ formatfloat('##0.00', frm_CON_PEDIDOS.UFREMET));
    frm_CON_PEDIDOS.larq.add('vFrete=0.0000');
    frm_CON_PEDIDOS.larq.add('vDESC='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
  end
  // SE NAO FOR PARTILHA (DIFAL)
  else
  begin
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('ValorIPI='+formatfloat('##0.00', dm_dados.zqry_VDVENDAVLRIPIVENDA.asfloat));
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('ValorIPI='+formatfloat('##0.00', dm_dados.zqry_CPCOMPRAVLRIPICOMPRA.asfloat));
    frm_CON_PEDIDOS.larq.add('vBCUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('pFCPUFDest=0.0000');  // combate a pobreza
    frm_CON_PEDIDOS.larq.add('pICMSUFDest=0.0000');                   //icms destino
    frm_CON_PEDIDOS.larq.add('pICMSInter=0.0000');   // icms entre estados
    frm_CON_PEDIDOS.larq.add('pICMSInterPart=0.0000');
    frm_CON_PEDIDOS.larq.add('vFCPUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('vICMSUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('vICMSUFRemet=0.0000');
    if (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') AND (frm_CON_PEDIDOS.recicmpf<>1) then  frm_CON_PEDIDOS.larq.add('vBCST=0.00');
    if (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') and (frm_CON_PEDIDOS.recicmpf=1) then frm_CON_PEDIDOS.larq.add('vBCST='+formatfloat('##0.0000', frm_CON_PEDIDOS.somabc));
    if (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.redicms>0) then frm_CON_PEDIDOS.larq.add('vBCST='+formatfloat('##0.00', (frm_CON_PEDIDOS.somabcst*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somabcst))));
    if (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.redicms=0) then frm_CON_PEDIDOS.larq.add('vBCST=0');
    if frm_CON_PEDIDOS.recicmpf<>1 then frm_CON_PEDIDOS.larq.add('vST='+formatfloat('##0.00', (frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast))));
    if frm_CON_PEDIDOS.recicmpf=1  then frm_CON_PEDIDOS.larq.add('vST='+formatfloat('##0.00', frm_CON_PEDIDOS.somaicms));
    frm_CON_PEDIDOS.larq.add('vICMSUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.UFDEST));
    frm_CON_PEDIDOS.larq.add('vFrete=0.0000');
    frm_CON_PEDIDOS.larq.add('vDESC='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
  end;
end;

procedure icms;
begin
  // VALOR DO ICMS
  frm_CON_PEDIDOS.larq.add('[ICMS' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
  frm_CON_PEDIDOS.larq.add('Origem=0');
  //SE FOR SIMPLES NACIONAL
  if dm_dados.zqry_sgfilialsimplesfilial.asstring='S' then
  begin
    frm_CON_PEDIDOS.zqry_ITFISCAL.close;
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Clear;
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and coditfisc=:itfisc and codemp=:empcod');
    frm_CON_PEDIDOS.zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_VDITVENDACODFISC.AsString);
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('itfisc').asinteger:=dm_dados.zqry_VDITVENDACODITFISC.asinteger;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_CPITCOMPRACODFISC.AsString);
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('itfisc').asinteger:=dm_dados.zqry_CPITCOMPRACODITFISC.asinteger;
    frm_CON_PEDIDOS.zqry_itfiscal.open;
    if frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty then
    begin
      // SE CLASSIFICACAO FISCAL VAZIA DENTRO DO ESTADO
      if frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2 then
      begin
        frm_CON_PEDIDOS.zqry_ITFISCAL.close;
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Clear;
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and codemp=:empcod and noufitfisc=:dentrouf');
        frm_CON_PEDIDOS.zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_VDITVENDACODFISC.AsString);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_CPITCOMPRACODFISC.AsString);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
        frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('dentrouf').asstring:='S';
        frm_CON_PEDIDOS.zqry_itfiscal.open;
        if frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty then
        begin
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=102');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.tipomovimento=0) then frm_CON_PEDIDOS.larq.add('CSOSN=202');
          //
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=102');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.tipomovimento=1) then frm_CON_PEDIDOS.larq.Add('CSOSN=202');
        end
        else
        begin
          EXECUTASGINICONSP;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then
          begin
            dm_dados.zqry_VDITVENDA.Edit;
            dm_Dados.zqry_VDITVENDACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
            dm_Dados.zqry_VDITVENDA.Post;
            dm_Dados.zqry_VDITVENDA.ApplyUpdates();
            //showmessage('Aten��o'#13'Regra Fiscal alterada para este pedido');
          end;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then
          begin
            dm_dados.zqry_CPITCOMPRA.Edit;
            dm_Dados.zqry_CPITCOMPRACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
            dm_Dados.zqry_CPITCOMPRA.Post;
            dm_Dados.zqry_CPITCOMPRA.ApplyUpdates();
          end;
          if dm_dados.zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN.AsString<>'' then
          begin
            frm_CON_PEDIDOS.larq.add('CSOSN='+csosn);
          end
          else
          begin
            frm_CON_PEDIDOS.larq.add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
          end;
        end;
      // SE CLASSIFICACAO FISCAL VAZIA FORA DO ESTADO
      end
      else
      begin
        frm_CON_PEDIDOS.zqry_ITFISCAL.Params.Clear;
        frm_CON_PEDIDOS.zqry_ITFISCAL.close;
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Clear;
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
        frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and codemp=:empcod and noufitfisc=:dentrouf');
        frm_CON_PEDIDOS.zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_VDITVENDACODFISC.AsString);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_CPITCOMPRACODFISC.AsString);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
        frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('dentrouf').asstring:='N';
        frm_CON_PEDIDOS.zqry_itfiscal.open;
        if frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty then
        begin
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=102');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE='5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_VDITVENDACODNAT.VALUE<>'5101') then  frm_CON_PEDIDOS.larq.add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('CSOSN=202');

          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=102');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE='1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=101');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2)  and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=1) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.tipomovimento=1) and (frm_CON_PEDIDOS.estado1<>frm_CON_PEDIDOS.estado2) and (frm_CON_PEDIDOS.pessoafisica=0) and (DM_DADOS.zqry_CPITCOMPRACODNAT.VALUE<>'1101') then  frm_CON_PEDIDOS.larq.Add('CSOSN=500');
          if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.tipomovimento=1) then frm_CON_PEDIDOS.larq.Add('CSOSN=202');
        end;
        EXECUTASGINICONSP;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then
        begin
          dm_dados.zqry_VDITVENDA.Edit;
          dm_Dados.zqry_VDITVENDACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
          dm_Dados.zqry_VDITVENDA.Post;
          dm_Dados.zqry_VDITVENDA.ApplyUpdates();
          frm_CON_PEDIDOS.larq.add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
          //showmessage('Aten��o'#13'Regra Fiscal alterada para este pedido');
        end;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then
        begin
          dm_dados.zqry_CPITCOMPRA.Edit;
          dm_Dados.zqry_CPITCOMPRACODITFISC.AsInteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODITFISC.AsInteger;
          dm_Dados.zqry_CPITCOMPRA.Post;
          dm_Dados.zqry_CPITCOMPRA.ApplyUpdates();
          frm_CON_PEDIDOS.larq.Add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
          //showmessage('Aten��o'#13'Regra Fiscal alterada para este pedido');
        end;
      end;
    END
    // SE CLASSIFICACAO FISCAL NAO ESTIVER VAZIA
    ELSE
    BEGIN
      if dm_dados.zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN.AsString<>'' then
        begin
        //showmessage('csosn '+csosn);
        frm_CON_PEDIDOS.larq.add('CSOSN='+csosn);
       end
          else
          begin
      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.isNull) then frm_CON_PEDIDOS.larq.add('CSOSN=500');
      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'') and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'101') then frm_CON_PEDIDOS.larq.add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.iecliente='') and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString='101') then frm_CON_PEDIDOS.larq.add('CSOSN=102');
      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.iecliente<>'') then frm_CON_PEDIDOS.larq.add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
      if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('CSOSN=202');

      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.isNull) then frm_CON_PEDIDOS.larq.Add('CSOSN=500');
      if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.AsString<>'') then frm_CON_PEDIDOS.larq.Add('CSOSN='+frm_CON_PEDIDOS.zqry_ITFISCALCSOSN.asstring);
      if (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.Add('CSOSN=202');
          end;
    END;
    frm_CON_PEDIDOS.VALORICMS:=0;
    frm_CON_PEDIDOS.larq.add('vICMS='+ floattostr(roundto(frm_CON_PEDIDOS.valoricms, -4)));//formatfloat('##0.0000', VALORICMS));
    frm_CON_PEDIDOS.larq.add('vBC=0');
    if (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
    begin
      icmsdest:=dm_dados.zqry_SGFILIALDESTICMS.AsFloat;
      vicmsdest:=roundto(((dm_dados.zqry_VDVENDAVLRLIQVENDA.asfloat*icmsdest)/100),-2);
      frm_CON_PEDIDOS.larq.Add('pCREDSN='+ formatfloat('##0.00', icmsdest));
      frm_CON_PEDIDOS.larq.Add('vCREDICMSSN='+ formatfloat('##0.00', vicmsdest));
    end;
  end;
  //SE NAO FOR SIMPLES NACIONAL
  if dm_dados.zqry_sgfilialsimplesfilial.asstring='N' then
  begin
    frm_CON_PEDIDOS.zqry_itfiscal.close;
    frm_CON_PEDIDOS.zqry_itfiscal.sql.clear;
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, ALIQLFISC, REDFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
    frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add(' from lfitclfiscal where codfisc=:fiscal and codemp=:empcod');
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.zqry_itfiscal.params.parambyname('fiscal').asstring:=DM_DADOS.zqry_VDITVENDACODFISC.asstring;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.zqry_itfiscal.params.parambyname('fiscal').asstring:=DM_DADOS.zqry_cpitcompraCODFISC.asstring;
    frm_CON_PEDIDOS.zqry_itfiscal.params.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
    frm_CON_PEDIDOS.zqry_itfiscal.open;
    if (frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then showmessage('Aten��o'#13'N�o existe Descritivo de Item na Classifica��o Fiscal cadastrada para esse NCM de acordo com o movimento escolhido'+ trim(DM_DADOS.zqry_VDITVENDA_NCMPRODUTO.VALUE));
    if (frm_CON_PEDIDOS.zqry_itfiscal.IsEmpty) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then showmessage('Aten��o'#13'N�o existe Descritivo de Item na Classifica��o Fiscal cadastrada para esse NCM de acordo com o movimento escolhido'+ trim(DM_DADOS.zqry_CPITCOMPRA_NCMPRODUTO.VALUE));
    frm_CON_PEDIDOS.larq.add('CST='+frm_CON_PEDIDOS.zqry_ITFISCALCODTRATTRIB.value);
  end;
  // SE FOR DENTRO DO ESTADO
  if frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2 then
  begin
    if (frm_CON_PEDIDOS.txtCFOP='5405') or (frm_CON_PEDIDOS.txtCFOP='5404') or (frm_CON_PEDIDOS.txtCFOP='5403') and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='5101') and (frm_CON_PEDIDOS.recicmpf=0) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='5949') or (frm_CON_PEDIDOS.txtCFOP='5102') or (frm_CON_PEDIDOS.txtCFOP='5401') or (frm_CON_PEDIDOS.txtCFOP='5910')  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.siticms:=1;
    if (frm_CON_PEDIDOS.txtCFOP='5101') and (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.siticms:=1;

    if (frm_CON_PEDIDOS.txtCFOP='1405') or (frm_CON_PEDIDOS.txtCFOP='1404') or (frm_CON_PEDIDOS.txtCFOP='1403')  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='1101') and (frm_CON_PEDIDOS.recicmpf=0)  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='1949') or (frm_CON_PEDIDOS.txtCFOP='1102') or (frm_CON_PEDIDOS.txtCFOP='1401')  and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.siticms:=1;
    if (frm_CON_PEDIDOS.txtCFOP='1101') and (frm_CON_PEDIDOS.recicmpf=1) and (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.siticms:=1;
    // SE SITUACAO ICMS (SITICMS)= 0
    if frm_CON_PEDIDOS.siticms=0 then
    begin
      frm_CON_PEDIDOS.VALORICMSITEM:=0;
      frm_CON_PEDIDOS.larq.add('modBC=0');
      frm_CON_PEDIDOS.larq.add('pICMS=0');
      frm_CON_PEDIDOS.larq.add('vICMS=0');
      frm_CON_PEDIDOS.larq.add('vBC=0');
    end
    // SE SITUACAO ICMS (SITICMS) NAO FOR ZERO
    else
    begin
      frm_CON_PEDIDOS.ALIQICMS:=frm_CON_PEDIDOS.zqry_ITFISCALALIQFISC.AsFloat;
      frm_CON_PEDIDOS.mva:=frm_CON_PEDIDOS.zqry_ITFISCALMARGEMVLAGR.AsFloat;
      //frm_CON_PEDIDOS.redicms:=frm_CON_PEDIDOS.zqry_ITFISCALALIQLFISC.AsFloat;
      frm_CON_PEDIDOS.redicms:=frm_CON_PEDIDOS.zqry_ITFISCALREDFISC.AsFloat;
   //   showmessage('Reducao '+floattostr(frm_CON_PEDIDOS.zqry_ITFISCALREDFISC.AsFloat));
      // SE ALIQUOTA DO ICMS MAIOR QUE ZERO
      if frm_CON_PEDIDOS.aliqicms>0 then
      begin
        frm_CON_PEDIDOS.larq.add('modBC=0');
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat*frm_CON_PEDIDOS.ALIQICMS)/100);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat*frm_CON_PEDIDOS.ALIQICMS)/100);
        frm_CON_PEDIDOS.larq.add('pICMS='+floattostr(frm_CON_PEDIDOS.aliqicms));
        frm_CON_PEDIDOS.larq.add('vICMS='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORICMSITEM*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.VALORICMSITEM))));
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('vBC='+ formatfloat('##0.00', (dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat))));
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('vBC='+ formatfloat('##0.00', dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat));
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+  dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat;
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+  dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat;
        frm_CON_PEDIDOS.larq.add('pRedBC='+floattostr(frm_CON_PEDIDOS.redicms));
        // aqui para dentro e fora do estado
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.bcicmsst:=((((dm_dados.zqry_VDITVENDAVLRIPIITVENDA.asfloat+dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat)*frm_CON_PEDIDOS.mva)/100)+dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat  +dm_dados.zqry_VDITVENDAVLRIPIITVENDA.asfloat);
        if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.bcicmsst:=((((dm_dados.zqry_CPCOMPRAVLRIPICOMPRA.asfloat  +dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat)  *frm_CON_PEDIDOS.mva)/100)+dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat+dm_dados.zqry_CPITCOMPRAVLRIPIITCOMPRA.asfloat);
        frm_CON_PEDIDOS.aliqst:=frm_CON_PEDIDOS.zqry_ITFISCALALIQICMSSTCM.asfloat;
        frm_CON_PEDIDOS.vlrst:=(((frm_CON_PEDIDOS.bcicmsst*frm_CON_PEDIDOS.aliqst)/100)-frm_CON_PEDIDOS.valoricmsitem);
        if frm_CON_PEDIDOS.mva>0 then frm_CON_PEDIDOS.larq.add('modBCST=4');
        if frm_CON_PEDIDOS.mva=0 then frm_CON_PEDIDOS.larq.add('modBCST=0');
        frm_CON_PEDIDOS.larq.add('pMVAST='+floattostr(frm_CON_PEDIDOS.mva));
        frm_CON_PEDIDOS.larq.add('pRedBCST='+floattostr(frm_CON_PEDIDOS.redicms));
        if frm_CON_PEDIDOS.redicms>0 then frm_CON_PEDIDOS.larq.add('vBCST='+formatfloat('##0.00',(frm_CON_PEDIDOS.bcicmsst*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.bcicmsst))));
        if frm_CON_PEDIDOS.redicms=0 then frm_CON_PEDIDOS.larq.add('vBCST=0');
        //showmessage(floattostr(frm_CON_PEDIDOS.redicms));
        frm_CON_PEDIDOS.somabcst:=roundto(frm_CON_PEDIDOS.somabcst, -2)+roundto(frm_CON_PEDIDOS.bcicmsst, -2);
        frm_CON_PEDIDOS.larq.add('pICMSST='+floattostr(frm_CON_PEDIDOS.aliqst));
        if frm_CON_PEDIDOS.aliqst=0 then frm_CON_PEDIDOS.vlrst:=0;
        frm_CON_PEDIDOS.larq.add('vICMSST='+formatfloat('##0.00',(frm_CON_PEDIDOS.vlrst*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.vlrst))));
        frm_CON_PEDIDOS.somast:=frm_CON_PEDIDOS.somast+frm_CON_PEDIDOS.vlrst;
        frm_CON_PEDIDOS.SOMAICMS:=frm_CON_PEDIDOS.SOMAICMS + (frm_CON_PEDIDOS.VALORICMSITEM*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.valoricmsitem));
      end
      else
      begin
        if frm_CON_PEDIDOS.recicmpf=1 then
        begin
          frm_CON_PEDIDOS.REDICMS:=roundto(dm_dados.zqry_SGPREFERE1MAJALIQRECOLHEICMPF.AsFloat, -2);
          frm_CON_PEDIDOS.larq.add('modBCST=4');
          frm_CON_PEDIDOS.larq.add('pMVAST='+formatfloat('##0.00', dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.VALUE));
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.VALORICMSITEM:=roundto(((dm_dados.zqry_VDITVENDAVLRLIQITVENDA.asfloat*(1+(dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.asfloat/100)))), -2);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.VALORDESCICMS:=roundto(((frm_CON_PEDIDOS.VALORICMSITEM*(frm_CON_PEDIDOS.REDICMS/100)-(dm_dados.zqry_VDITVENDAVLRLIQITVENDA.asfloat*(frm_CON_PEDIDOS.REDICMS/100)))),-2);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.VALORICMSITEM:=roundto(((dm_dados.zqry_CPITCOMPRAVLRLIQITCOMPRA.asfloat*(1+(dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.asfloat/100)))), -2);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.VALORDESCICMS:=roundto(((frm_CON_PEDIDOS.VALORICMSITEM*(frm_CON_PEDIDOS.REDICMS/100)-(dm_dados.zqry_CPITCOMPRAVLRLIQITCOMPRA.asfloat*(frm_CON_PEDIDOS.REDICMS/100)))),-2);
          frm_CON_PEDIDOS.larq.add('picmsst='+formatfloat('##0.00',dm_dados.zqry_SGPREFERE1MAJALIQRECOLHEICMPF.Asfloat));
          frm_CON_PEDIDOS.larq.add('vICMSST='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORDESCICMS));
          frm_CON_PEDIDOS.larq.add('vBCST='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORICMSITEM));
          frm_CON_PEDIDOS.SOMABC:=roundto(frm_CON_PEDIDOS.SOMABC+frm_CON_PEDIDOS.VALORICMSITEM, -2);
          frm_CON_PEDIDOS.SOMAICMS:=roundto(frm_CON_PEDIDOS.SOMAICMS+frm_CON_PEDIDOS.VALORDESCICMS, -2);
        end
        else
        begin
          frm_CON_PEDIDOS.larq.add('modBC=0');
          frm_CON_PEDIDOS.larq.add('pRedBC=0');
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat*frm_CON_PEDIDOS.ALIQINT)/100);
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat*frm_CON_PEDIDOS.ALIQINT)/100);
          frm_CON_PEDIDOS.larq.add('pICMS='+FLOATTOSTR(frm_CON_PEDIDOS.ALIQINT));
          frm_CON_PEDIDOS.larq.add('vICMS='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORICMSITEM));
          frm_CON_PEDIDOS.larq.add('vBC=0.00');//'+ formatfloat('##0.0000', PRECOTOTALX));
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+ dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat;
          if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+ dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat;
          frm_CON_PEDIDOS.SOMAICMS:=frm_CON_PEDIDOS.SOMAICMS + frm_CON_PEDIDOS.VALORICMSITEM;
        end;
      end;
    end;
  end
  // SE NAO FOR DENTRO DO ESTADO
  else
  begin
    if (frm_CON_PEDIDOS.txtCFOP='6404') or (frm_CON_PEDIDOS.txtCFOP='6403') or (frm_CON_PEDIDOS.txtCFOP='6405') or (frm_CON_PEDIDOS.txtCFOP='6108') and (frm_CON_PEDIDOS.tipomovimento=0) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='6949') or (frm_CON_PEDIDOS.txtCFOP='6101') or (frm_CON_PEDIDOS.txtCFOP='6102') or (frm_CON_PEDIDOS.txtCFOP='6401') and (frm_CON_PEDIDOS.tipomovimento=0) then frm_CON_PEDIDOS.siticms:=1;

    if (frm_CON_PEDIDOS.txtCFOP='1405') or (frm_CON_PEDIDOS.txtCFOP='1404') or (frm_CON_PEDIDOS.txtCFOP='1919')
    or (frm_CON_PEDIDOS.txtCFOP='2919') or (frm_CON_PEDIDOS.txtCFOP='1918') or (frm_CON_PEDIDOS.txtCFOP='2918')
    or (frm_CON_PEDIDOS.txtCFOP='2404') or (frm_CON_PEDIDOS.txtCFOP='2405') or (frm_CON_PEDIDOS.txtCFOP='1949')
    or (frm_CON_PEDIDOS.txtCFOP='2949') and (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.siticms:=0;
    if (frm_CON_PEDIDOS.txtCFOP='1101') or (frm_CON_PEDIDOS.txtCFOP='1102') or (frm_CON_PEDIDOS.txtCFOP='2101')
    or (frm_CON_PEDIDOS.txtCFOP='2102') or (frm_CON_PEDIDOS.txtCFOP='1401') or (frm_CON_PEDIDOS.txtCFOP='2401') and (frm_CON_PEDIDOS.tipomovimento=1) then frm_CON_PEDIDOS.siticms:=1;

    if frm_CON_PEDIDOS.siticms=0 then
    begin
      frm_CON_PEDIDOS.larq.add('modBC=0');
      frm_CON_PEDIDOS.VALORICMSITEM:=0;
      frm_CON_PEDIDOS.larq.add('pICMS=0');
      frm_CON_PEDIDOS.larq.add('vICMS=0');
      frm_CON_PEDIDOS.larq.add('vBC=0');
    end
    else
    begin
      frm_CON_PEDIDOS.zqry_itfiscal.close;
      frm_CON_PEDIDOS.zqry_itfiscal.sql.Clear;
      frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
      frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, ALIQLFISC, REDFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
      frm_CON_PEDIDOS.zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and noufitfisc=:fora and codemp=:empcod');
      if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=DM_DADOS.zqry_VDITVENDACODFISC.asstring;
      if frm_CON_PEDIDOS.tipomovimento=1 then frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fiscal').asstring:=DM_DADOS.zqry_cpitcompraCODFISC.asstring;
      frm_CON_PEDIDOS.zqry_itfiscal.parambyname('fora').asstring:='N';
      frm_CON_PEDIDOS.zqry_itfiscal.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      frm_CON_PEDIDOS.zqry_itfiscal.open;
      frm_CON_PEDIDOS.larq.add('modBC=0');
      if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat*frm_CON_PEDIDOS.ALIQEXT)/100);
      if frm_CON_PEDIDOS.tipomovimento=1 then frm_CON_PEDIDOS.VALORICMSITEM:=((dm_dados.zqry_cpitcompravlrproditcompra.asfloat*frm_CON_PEDIDOS.ALIQEXT)/100);
      frm_CON_PEDIDOS.larq.add('pICMS='+floattostr(frm_CON_PEDIDOS.ALIQEXT));
      frm_CON_PEDIDOS.larq.add('vICMS='+floattostr(roundto(frm_CON_PEDIDOS.valoricmsitem, -4)));//+ formatfloat('##0.0000', frm_CON_PEDIDOS.VALORICMSITEM));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.larq.add('vBC='+ formatfloat('##0.00', dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat));
      if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+  dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat;
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.larq.add('vBC='+ formatfloat('##0.00', dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat));
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.SOMABC:=frm_CON_PEDIDOS.SOMABC+  dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat;
      frm_CON_PEDIDOS.SOMAICMS:=roundto(frm_CON_PEDIDOS.SOMAICMS,-2) + roundto(frm_CON_PEDIDOS.VALORICMSITEM, -2);
      frm_CON_PEDIDOS.mva:=frm_CON_PEDIDOS.zqry_ITFISCALMARGEMVLAGR.AsFloat;
      frm_CON_PEDIDOS.redicms:=frm_CON_PEDIDOS.zqry_ITFISCALALIQLFISC.AsFloat;
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.bcicmsst:=((((dm_dados.zqry_VDITVENDAVLRIPIITVENDA.asfloat+dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat)*frm_CON_PEDIDOS.mva)/100)+dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat+dm_dados.zqry_VDITVENDAVLRIPIITVENDA.asfloat);
      if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.bcicmsst:=((((dm_dados.zqry_CPITCOMPRAVLRIPIITCOMPRA.asfloat+dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat)*frm_CON_PEDIDOS.mva)/100)+dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat+dm_dados.zqry_CPITCOMPRAVLRIPIITCOMPRA.asfloat);
      frm_CON_PEDIDOS.aliqst:=frm_CON_PEDIDOS.zqry_ITFISCALALIQICMSSTCM.asfloat;
      frm_CON_PEDIDOS.vlrst:=(((frm_CON_PEDIDOS.bcicmsst*frm_CON_PEDIDOS.aliqst)/100)-frm_CON_PEDIDOS.valoricmsitem);
      if frm_CON_PEDIDOS.mva>0 then frm_CON_PEDIDOS.larq.add('modBCST=4');
      if frm_CON_PEDIDOS.mva=0 then frm_CON_PEDIDOS.larq.add('modBCST=');
      frm_CON_PEDIDOS.larq.add('pMVAST='+floattostr(frm_CON_PEDIDOS.mva));
      frm_CON_PEDIDOS.larq.add('pRedBCST='+floattostr(frm_CON_PEDIDOS.redicms));
      if frm_CON_PEDIDOS.redicms>=0 then frm_CON_PEDIDOS.larq.add('vBCST='+formatfloat('##0.00',frm_CON_PEDIDOS.bcicmsst));
      frm_CON_PEDIDOS.somabcst:=roundto(frm_CON_PEDIDOS.somabcst, -2)+roundto(frm_CON_PEDIDOS.bcicmsst, -2);
      frm_CON_PEDIDOS.larq.add('pICMSST='+floattostr(frm_CON_PEDIDOS.aliqst));
      if frm_CON_PEDIDOS.aliqst=0 then frm_CON_PEDIDOS.vlrst:=0;
      frm_CON_PEDIDOS.larq.add('vICMSST='+formatfloat('##0.00',frm_CON_PEDIDOS.vlrst));
      frm_CON_PEDIDOS.somast:=frm_CON_PEDIDOS.somast+frm_CON_PEDIDOS.vlrst;
    end;
  end;
end;

procedure pis;
begin
  frm_CON_PEDIDOS.larq.add('[PIS' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
  frm_CON_PEDIDOS.larq.add('CST=99');
  frm_CON_PEDIDOS.larq.add('Aliquota=0.0000');
  frm_CON_PEDIDOS.larq.add('Valor=0.0000');
end;

procedure cofins;
begin
  frm_CON_PEDIDOS.larq.add('[COFINS' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
  frm_CON_PEDIDOS.larq.add('CST=99');
  frm_CON_PEDIDOS.larq.add('Aliquota=0.00');
  frm_CON_PEDIDOS.larq.add('Valor=0.00');
end;

procedure ipi;
begin
  frm_CON_PEDIDOS.larq.add('[IPI'+StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
  if frm_CON_PEDIDOS.zqry_ITFISCALCLENQ.asstring='' then
  begin
	  frm_CON_PEDIDOS.larq.add('clEnq=999');
    frm_CON_PEDIDOS.larq.add('cEnq=999');
  	frm_CON_PEDIDOS.larq.add('CST=50');
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('clEnq='+frm_CON_PEDIDOS.zqry_itfiscalclenq.asstring);
    frm_CON_PEDIDOS.larq.add('cEnq='+frm_CON_PEDIDOS.zqry_itfiscalcenq.asstring);
  	frm_CON_PEDIDOS.larq.add('CST='+frm_CON_PEDIDOS.zqry_ITFISCALCODSITTRIBIPI.value);
    //showmessage(frm_CON_PEDIDOS.zqry_ITFISCALCODSITTRIBIPI.asstring);
  end;
  if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.larq.add('vBC='+formatfloat('##0.00', dm_dados.zqry_VDITVENDAVLRBASEIPIITVENDA.AsFloat));
  if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.larq.add('pIPI='+formatfloat('##0.00', dm_dados.zqry_VDITVENDAPERCIPIITVENDA.AsFloat));
  if frm_CON_PEDIDOS.tipomovimento=0 then frm_CON_PEDIDOS.larq.add('vIPI='+formatfloat('##0.00', dm_dados.zqry_VDITVENDAVLRIPIITVENDA.asfloat));
  if frm_CON_PEDIDOS.tipomovimento=1 then frm_CON_PEDIDOS.larq.add('vBC='+formatfloat('##0.00', dm_dados.zqry_CPITCOMPRAVLRBASEIPIITCOMPRA.AsFloat));
  if frm_CON_PEDIDOS.tipomovimento=1 then frm_CON_PEDIDOS.larq.add('pIPI='+formatfloat('##0.00', dm_dados.zqry_CPITCOMPRAPERCIPIITCOMPRA.AsFloat));
  if frm_CON_PEDIDOS.tipomovimento=1 then frm_CON_PEDIDOS.larq.add('vIPI='+formatfloat('##0.00', dm_dados.zqry_CPITCOMPRAVLRIPIITCOMPRA.asfloat));
end;

procedure difal;
begin
  frm_CON_PEDIDOS.larq.add('[ICMSUFDest' + StrZero(inttostr(frm_CON_PEDIDOS.contador), 3) + ']');
  if frm_CON_PEDIDOS.partilha='S' then
  begin
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.VLRPARTILHA:=roundto(((dm_dados.zqry_VDITVENDAVLRLIQITVENDA.AsFloat*6)/100),-2);
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.VLRPARTILHA:=roundto(((dm_dados.zqry_CPITCOMPRAVLRLIQITCOMPRA.AsFloat*6)/100),-2);
    //2017
    if frm_CON_PEDIDOS.ano='2017' then frm_CON_PEDIDOS.VLRPARTILHADEST:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*60)/100),-2);
    if frm_CON_PEDIDOS.ano='2017' then frm_CON_PEDIDOS.VLRPARTILHAUF:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*40)/100),-2);
    //2018
    if frm_CON_PEDIDOS.ano='2018' then frm_CON_PEDIDOS.VLRPARTILHADEST:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*80)/100),-2);
    if frm_CON_PEDIDOS.ano='2018' then frm_CON_PEDIDOS.VLRPARTILHAUF:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*20)/100),-2);
    //2019
    if frm_CON_PEDIDOS.ano='2019' then frm_CON_PEDIDOS.VLRPARTILHADEST:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*100)/100),-2);
    if frm_CON_PEDIDOS.ano='2019' then frm_CON_PEDIDOS.VLRPARTILHAUF:=roundto(((frm_CON_PEDIDOS.VLRPARTILHA*0)/100),-2);
    // TERMINA AVALIACAO ANO DIFAL
    frm_CON_PEDIDOS.larq.add('vBCUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.PRECOTOTAL));
    frm_CON_PEDIDOS.larq.add('pFCPUFDest=0.0000');  // combate a pobreza
    frm_CON_PEDIDOS.larq.add('pICMSInter='+floattostr(frm_CON_PEDIDOS.aliqint));
    frm_CON_PEDIDOS.larq.add('pICMSUFDest='+floattostr(frm_CON_PEDIDOS.aliqext));
    //2017
    if frm_CON_PEDIDOS.ano='2017' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=60.0000');
    //2018
    if frm_CON_PEDIDOS.ano='2018' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=80.0000');
    //2019
    if frm_CON_PEDIDOS.ano='2019' then frm_CON_PEDIDOS.larq.add('pICMSInterPart=100.0000');
    // TERMINAR AVALIACAO ANO DIFAL
    frm_CON_PEDIDOS.larq.add('vFCPUFDest=0.0000');
    frm_CON_PEDIDOS.ufdest:=frm_CON_PEDIDOS.ufdest+frm_CON_PEDIDOS.vlrpartilhadest;
    frm_CON_PEDIDOS.ufremet:=frm_CON_PEDIDOS.ufremet+frm_CON_PEDIDOS.vlrpartilhauf;
    frm_CON_PEDIDOS.larq.add('vICMSUFDest='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARTILHADEST));
    frm_CON_PEDIDOS.larq.add('vICMSUFRemet='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARTILHAUF));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('vBCUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('pFCPUFDest=0.0000');  // combate a pobreza
    frm_CON_PEDIDOS.larq.add('pICMSUFDest=0.0000');                   //icms destino
    frm_CON_PEDIDOS.larq.add('pICMSInter=0.0000');   // icms entre estados
    frm_CON_PEDIDOS.larq.add('pICMSInterPart=0.0000');
    frm_CON_PEDIDOS.larq.add('vFCPUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('vICMSUFDest=0.0000');
    frm_CON_PEDIDOS.larq.add('vICMSUFRemet=0.0000');
    frm_CON_PEDIDOS.quantidadetotal:=frm_CON_PEDIDOS.quantidadetotal+frm_CON_PEDIDOS.qtd;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.somaagrupado:=frm_CON_PEDIDOS.somaagrupado+dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asfloat;
    if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.somaagrupado:=frm_CON_PEDIDOS.somaagrupado+dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat;
  end;
end;

procedure transportevenda;
begin
  frm_CON_PEDIDOS.larq.add('[Transportador]');
  // SE TIPO DE FRETE FOR C
  if (dm_dados.zqry_VDFRETEVDTIPOFRETEVD.asstring = 'C') then frm_CON_PEDIDOS.tipoenvio := 0 else frm_CON_PEDIDOS.tipoenvio := 1;
  // SE FOR DENTRO DO ESTADO
  if (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then
  begin
    // SE CODIGO DE TRANSPORTADORA VAZIO
    if dm_dados.zqry_VDFRETEVDCODTRAN.AsString='' then
    begin
      frm_CON_PEDIDOS.larq.add('FretePorConta=' + inttostr(frm_CON_PEDIDOS.tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+ansistring(frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('NomeRazao='+ansistring(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('IE='+ansistring(frm_CON_PEDIDOS.edt_IE_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('Endereco='+ansistring(frm_CON_PEDIDOS.edt_END_TRANSP.text));
      frm_CON_PEDIDOS.larq.add('Cidade='+ansistring(frm_CON_PEDIDOS.edt_CID_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) ELSE frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      if frm_CON_PEDIDOS.AGRUPADOS=1 then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
      frm_CON_PEDIDOS.larq.add('RNTC='+ansistring(frm_CON_PEDIDOS.edt_ANTT_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end
    // SE CODIGO DE TRANPORTADOR NAO ESTIVER VAZIO
    else
    begin
      if DM_dADOS.zqry_VDFRETEVDTIPOFRETEVD.AsString='C' then frm_CON_PEDIDOS.larq.add('FretePorConta=0') else frm_CON_PEDIDOS.larq.add('FretePorConta=1');
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.text);// dm_dados.zqry_VDTRANSPCNPJTRAN.value);
      frm_CON_PEDIDOS.larq.add('NomeRazao='+removeacento(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.text));// +REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value));
      frm_CON_PEDIDOS.larq.add('IE='+frm_CON_PEDIDOS.edt_IE_TRANSP.text);//+dm_dados.zqry_VDTRANSPINSCTRAN.value);
      frm_CON_PEDIDOS.larq.add('Endereco='+removeacento(frm_CON_PEDIDOS.edt_END_TRANSP.text));// +REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value));
      frm_CON_PEDIDOS.larq.add('Cidade='+removeacento(frm_CON_PEDIDOS.edt_CID_TRANSP.text));//+REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      frm_CON_PEDIDOS.larq.add('UF='+removeacento(frm_CON_PEDIDOS.edt_UF_TRANSP.text));//+dm_Dados.zqry_VDTRANSPUFTRAN.value);
      frm_CON_PEDIDOS.larq.add('RNTC='+frm_CON_PEDIDOS.edt_ANTT_TRANSP.text);//+dm_dados.zqry_VDFRETEVDRNTCVD.Value);
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end;
  end
  // SE FOR FORA DO ESTADO
  else
  begin
    // SE CODIGO DA TRANSPORTADORA VAZIO
    if dm_dados.zqry_VDFRETEVDCODTRAN.AsString='' then
    begin
      frm_CON_PEDIDOS.larq.add('FretePorConta=' + inttostr(frm_CON_PEDIDOS.tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+ansistring(frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('NomeRazao='+ansistring(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('IE='+ansistring(frm_CON_PEDIDOS.edt_IE_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('Endereco='+ansistring(frm_CON_PEDIDOS.edt_END_TRANSP.text));
      frm_CON_PEDIDOS.larq.add('Cidade='+ansistring(frm_CON_PEDIDOS.edt_CID_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      if frm_CON_PEDIDOS.AGRUPADOS=1 then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
      frm_CON_PEDIDOS.larq.add('RNTC='+ansistring(frm_CON_PEDIDOS.edt_ANTT_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end
    // SE CODIGO DA TRANSPORTADORA NAO FOR VAZIO
    else
    begin
      if DM_dADOS.zqry_VDFRETEVDTIPOFRETEVD.AsString='C' then frm_CON_PEDIDOS.larq.add('FretePorConta=0') else frm_CON_PEDIDOS.larq.add('FretePorConta=1');// + inttostr(tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.text);// dm_dados.zqry_VDTRANSPCNPJTRAN.value);
      frm_CON_PEDIDOS.larq.add('NomeRazao='+removeacento(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.text));// +REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value));
      frm_CON_PEDIDOS.larq.add('IE='+frm_CON_PEDIDOS.edt_IE_TRANSP.text);//+dm_dados.zqry_VDTRANSPINSCTRAN.value);
      frm_CON_PEDIDOS.larq.add('Endereco='+removeacento(frm_CON_PEDIDOS.edt_END_TRANSP.text));// +REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value));
      frm_CON_PEDIDOS.larq.add('Cidade='+removeacento(frm_CON_PEDIDOS.edt_CID_TRANSP.text));//+REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      frm_CON_PEDIDOS.larq.add('RNTC='+frm_CON_PEDIDOS.edt_ANTT_TRANSP.text);//+dm_dados.zqry_VDFRETEVDRNTCVD.Value);
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end;
  end;
  frm_CON_PEDIDOS.larq.add('[Volume001]');
  if frm_CON_PEDIDOS.edt_volumes.Text<>'' then
  begin
    frm_CON_PEDIDOS.larq.add('Quantidade='+ansistring(frm_CON_PEDIDOS.edt_volumes.text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('Quantidade='+floattostr(round(frm_CON_PEDIDOS.quantidadetotal)));
  end;
  frm_CON_PEDIDOS.larq.add('Especie='+ansistring(frm_CON_PEDIDOS.edt_especie.text));
  //MARCA �NICA
  if dm_Dados.zqry_SGFILIALMARCAUNICA.Value<>'' then
  begin
    frm_CON_PEDIDOS.larq.add('Marca='+dm_Dados.zqry_SGFILIALMARCAUNICA.asstring);
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('Marca='+ansistring(frm_CON_PEDIDOS.edt_marca.text));
  end;
  frm_CON_PEDIDOS.larq.add('Numeracao=');
  if frm_CON_PEDIDOS.edt_PESOLIQUIDO.text<>''  then
  begin
    frm_CON_PEDIDOS.larq.Add('PesoLiquido='+ansistring(frm_CON_PEDIDOS.edt_pesoliquido.Text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('PesoLiquido='+formatfloat('##0.0000', dm_dados.zqry_VDFRETEVDPESOLIQVD.asfloat));
  end;
  if frm_CON_PEDIDOS.edt_PESOBRUTO.Text<>''  then
  begin
    frm_CON_PEDIDOS.larq.Add('PesoBruto='+ansistring(frm_CON_PEDIDOS.edt_pesobruto.Text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('PesoBruto='+formatfloat('##0.0000', dm_dados.zqry_VDFRETEVDPESOBRUTVD.asfloat));
  end;
end;

procedure transportecompra;
begin
  frm_CON_PEDIDOS.larq.add('[Transportador]');
  // SE TIPO DE FRETE FOR C
  if (dm_dados.zqry_CPFRETECPTIPOFRETECP.asstring = 'C') then frm_CON_PEDIDOS.tipoenvio := 0 else frm_CON_PEDIDOS.tipoenvio := 1;
  // SE FOR DENTRO DO ESTADO
  if (frm_CON_PEDIDOS.estado1=frm_CON_PEDIDOS.estado2) then
  begin
    // SE CODIGO DE TRANSPORTADORA VAZIO
    if dm_dados.zqry_CPFRETECPCODTRAN.AsString='' then
    begin
      frm_CON_PEDIDOS.larq.add('FretePorConta=' + inttostr(frm_CON_PEDIDOS.tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+ansistring(frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('NomeRazao='+ansistring(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('IE='+ansistring(frm_CON_PEDIDOS.edt_IE_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('Endereco='+ansistring(frm_CON_PEDIDOS.edt_END_TRANSP.text));
      frm_CON_PEDIDOS.larq.add('Cidade='+ansistring(frm_CON_PEDIDOS.edt_CID_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) ELSE frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      if frm_CON_PEDIDOS.AGRUPADOS=1 then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
      frm_CON_PEDIDOS.larq.add('RNTC='+ansistring(frm_CON_PEDIDOS.edt_ANTT_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end
    // SE CODIGO DE TRANPORTADOR NAO ESTIVER VAZIO
    else
    begin
      if DM_dADOS.zqry_CPFRETECPTIPOFRETECP.AsString='C' then frm_CON_PEDIDOS.larq.add('FretePorConta=0') else frm_CON_PEDIDOS.larq.add('FretePorConta=1');
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.text);// dm_dados.zqry_VDTRANSPCNPJTRAN.value);
      frm_CON_PEDIDOS.larq.add('NomeRazao='+removeacento(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.text));// +REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value));
      frm_CON_PEDIDOS.larq.add('IE='+frm_CON_PEDIDOS.edt_IE_TRANSP.text);//+dm_dados.zqry_VDTRANSPINSCTRAN.value);
      frm_CON_PEDIDOS.larq.add('Endereco='+removeacento(frm_CON_PEDIDOS.edt_END_TRANSP.text));// +REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value));
      frm_CON_PEDIDOS.larq.add('Cidade='+removeacento(frm_CON_PEDIDOS.edt_CID_TRANSP.text));//+REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      frm_CON_PEDIDOS.larq.add('UF='+removeacento(frm_CON_PEDIDOS.edt_UF_TRANSP.text));//+dm_Dados.zqry_VDTRANSPUFTRAN.value);
      frm_CON_PEDIDOS.larq.add('RNTC='+frm_CON_PEDIDOS.edt_ANTT_TRANSP.text);//+dm_dados.zqry_VDFRETEVDRNTCVD.Value);
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end;
  end
  // SE FOR FORA DO ESTADO
  else
  begin
    // SE CODIGO DA TRANSPORTADORA VAZIO
    if dm_dados.zqry_CPFRETECPCODTRAN.AsString='' then
    begin
      frm_CON_PEDIDOS.larq.add('FretePorConta=' + inttostr(frm_CON_PEDIDOS.tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+ansistring(frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('NomeRazao='+ansistring(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('IE='+ansistring(frm_CON_PEDIDOS.edt_IE_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('Endereco='+ansistring(frm_CON_PEDIDOS.edt_END_TRANSP.text));
      frm_CON_PEDIDOS.larq.add('Cidade='+ansistring(frm_CON_PEDIDOS.edt_CID_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      if frm_CON_PEDIDOS.AGRUPADOS=1 then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
      frm_CON_PEDIDOS.larq.add('RNTC='+ansistring(frm_CON_PEDIDOS.edt_ANTT_TRANSP.Text));
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end
    // SE CODIGO DA TRANSPORTADORA NAO FOR VAZIO
    else
    begin
      if DM_dADOS.zqry_CPFRETECPTIPOFRETECP.AsString='C' then frm_CON_PEDIDOS.larq.add('FretePorConta=0') else frm_CON_PEDIDOS.larq.add('FretePorConta=1');// + inttostr(tipoenvio));
      frm_CON_PEDIDOS.larq.add('CnpjCpf='+frm_CON_PEDIDOS.edt_CPFCNPJ_TRANSP.text);// dm_dados.zqry_VDTRANSPCNPJTRAN.value);
      frm_CON_PEDIDOS.larq.add('NomeRazao='+removeacento(frm_CON_PEDIDOS.edt_NOMERAZ_TRANSP.text));// +REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value));
      frm_CON_PEDIDOS.larq.add('IE='+frm_CON_PEDIDOS.edt_IE_TRANSP.text);//+dm_dados.zqry_VDTRANSPINSCTRAN.value);
      frm_CON_PEDIDOS.larq.add('Endereco='+removeacento(frm_CON_PEDIDOS.edt_END_TRANSP.text));// +REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value));
      frm_CON_PEDIDOS.larq.add('Cidade='+removeacento(frm_CON_PEDIDOS.edt_CID_TRANSP.text));//+REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value));
      if frm_CON_PEDIDOS.edt_UF_TRANSP.Text='' then frm_CON_PEDIDOS.larq.add('UF='+dm_dados.zqry_SGFILIALUFFILIAL.asstring) else frm_CON_PEDIDOS.larq.add('UF='+ansistring(frm_CON_PEDIDOS.edt_UF_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa='+ansistring(frm_CON_PEDIDOS.edt_PLACA_TRANSP.Text));
      if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_VDCLIENTECODMUNIC.value then frm_CON_PEDIDOS.larq.add('Placa=');//+ansistring(edt_PLACA_TRANSP.Text));
      if frm_CON_PEDIDOS.edt_placauf_transp.Text='**' then
      begin
        if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+dm_dados.zqry_SGFILIALUFFILIAL.asstring);
        if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACA_TRANSP.Text));
      end
      else
      begin
         if dm_dados.zqry_SGFILIALCODMUNIC.Value=dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca='+ansistring(frm_CON_PEDIDOS.edt_PLACAUF_TRANSP.Text));
         if dm_dados.zqry_SGFILIALCODMUNIC.Value<>dm_dados.zqry_CPFORNECEDCODMUNIC.value then frm_CON_PEDIDOS.larq.add('UFPlaca=');//+ansistring(edt_PLACAUF_TRANSP.Text));
      end;
      frm_CON_PEDIDOS.larq.add('RNTC='+frm_CON_PEDIDOS.edt_ANTT_TRANSP.text);//+dm_dados.zqry_VDFRETEVDRNTCVD.Value);
      frm_CON_PEDIDOS.larq.add('[Reboque001]');
      frm_CON_PEDIDOS.larq.add('Placa=');
      frm_CON_PEDIDOS.larq.add('UF=');
      frm_CON_PEDIDOS.larq.add('RNTC=');
    end;
  end;
 frm_CON_PEDIDOS.larq.add('[Volume001]');
  if frm_CON_PEDIDOS.edt_VOLUMES_ENT.Text<>'' then
  begin
    frm_CON_PEDIDOS.larq.add('Quantidade='+ansistring(frm_CON_PEDIDOS.edt_VOLUMES_ENT.text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('Quantidade='+floattostr(round(frm_CON_PEDIDOS.quantidadetotal)));
  end;
  frm_CON_PEDIDOS.larq.add('Especie='+ansistring(frm_CON_PEDIDOS.edt_especie_ENT.text));
  //MARCA �NICA
  if dm_Dados.zqry_SGFILIALMARCAUNICA.Value<>'' then
  begin
    frm_CON_PEDIDOS.larq.add('Marca='+dm_Dados.zqry_SGFILIALMARCAUNICA.asstring);
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('Marca='+ansistring(frm_CON_PEDIDOS.edt_marca_ENT.text));
  end;
  frm_CON_PEDIDOS.larq.add('Numeracao=');
  if frm_CON_PEDIDOS.edt_PESOLIQUIDO_ENT.text<>''  then
  begin
    frm_CON_PEDIDOS.larq.Add('PesoLiquido='+ansistring(frm_CON_PEDIDOS.edt_PESOLIQUIDO_ENT.Text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('PesoLiquido='+formatfloat('##0.0000', dm_dados.zqry_CPFRETECPPESOLIQCP.asfloat));
  end;
  if frm_CON_PEDIDOS.edt_PESOBRUTO_ENT.Text<>''  then
  begin
    frm_CON_PEDIDOS.larq.Add('PesoBruto='+ansistring(frm_CON_PEDIDOS.edt_PESOBRUTO_ENT.Text));
  end
  else
  begin
    frm_CON_PEDIDOS.larq.add('PesoBruto='+formatfloat('##0.0000', dm_dados.zqry_CPFRETECPPESOBRUTCP.asfloat));
  end;
end;

procedure pesovolume;
begin
  frm_CON_PEDIDOS.larq.add('[Volume001]');
  if frm_CON_PEDIDOS.edt_volumes.Text<>'' then frm_CON_PEDIDOS.larq.add('Quantidade='+ansistring(frm_CON_PEDIDOS.edt_volumes.text)) else frm_CON_PEDIDOS.larq.add('Quantidade='+floattostr(round(frm_CON_PEDIDOS.quantidadetotal)));
  frm_CON_PEDIDOS.larq.add('Especie='+ansistring(frm_CON_PEDIDOS.edt_especie.text));
  //MARCA �NICA
  if dm_Dados.zqry_SGFILIALMARCAUNICA.Value<>'' then frm_CON_PEDIDOS.larq.add('Marca='+dm_Dados.zqry_SGFILIALMARCAUNICA.asstring) else frm_CON_PEDIDOS.larq.add('Marca='+ansistring(frm_CON_PEDIDOS.edt_marca.text));
  frm_CON_PEDIDOS.larq.add('Numeracao=');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.edt_PESOLIQUIDO.text<>'') then frm_CON_PEDIDOS.larq.add('PesoLiquido='+ansistring(frm_CON_PEDIDOS.edt_pesoliquido.Text)) else frm_CON_PEDIDOS.larq.add('PesoLiquido='+formatfloat('##0.0000', dm_dados.zqry_VDFRETEVDPESOLIQVD.asfloat));
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) and (frm_CON_PEDIDOS.edt_PESOBRUTO.Text<>'') then frm_CON_PEDIDOS.larq.add('PesoBruto='+ansistring(frm_CON_PEDIDOS.edt_pesobruto.Text)) else frm_CON_PEDIDOS.larq.add('PesoBruto='+formatfloat('##0.0000', dm_dados.zqry_VDFRETEVDPESOBRUTVD.asfloat));
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.edt_PESOLIQUIDO.text<>'') then frm_CON_PEDIDOS.larq.add('PesoLiquido='+ansistring(frm_CON_PEDIDOS.edt_pesoliquido.Text)) else frm_CON_PEDIDOS.larq.add('PesoLiquido='+formatfloat('##0.0000', dm_dados.zqry_CPFRETECPPESOLIQCP.asfloat));
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) and (frm_CON_PEDIDOS.edt_PESOBRUTO.Text<>'') then frm_CON_PEDIDOS.larq.add('PesoBruto='+ansistring(frm_CON_PEDIDOS.edt_pesobruto.Text)) else frm_CON_PEDIDOS.larq.add('PesoBruto='+formatfloat('##0.0000', dm_dados.zqry_CPFRETECPPESOBRUTCP.asfloat));
end;

procedure faturavenda;
begin
  // CONSULTA CONTAS A RECEBER
  dm_dados.zqry_FNRECEBER.Close;
  dm_dados.zqry_FNRECEBER.sql.Clear;
  dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
  dm_dados.zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=dm_dados.zqry_VDVENDACODVENDA.AsInteger;
  dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_FNRECEBER.Open;
  // CONSULTA ITENS DAS CONTAS A RECEBER
  dm_dados.zqry_FNITRECEBER.Close;
  dm_dados.zqry_FNITRECEBER.sql.Clear;
  dm_dados.zqry_fnITreceber.SQL.Add('SELECT * FROM FNITRECEBER where codrec=:reccod and codemp=:empcod');
  dm_dados.zqry_FNITRECEBER.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
  dm_dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_FNITRECEBER.Open;
  // SE PAGAMENTO A VISTA
  if (dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger=1) or (frm_CON_PEDIDOS.tipopagto=1) then
  begin
    dm_dados.zqry_fnitreceber.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat,-4);
    // TAG FAT
    frm_CON_PEDIDOS.larq.add('[FAT]');
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202 then frm_CON_PEDIDOS.larq.add('nFat='+inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202 then frm_CON_PEDIDOS.larq.add('nFat=001');
    if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));//dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
    if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');//+formatfloat('##0.00',TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
    if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vDesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
    if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vDesc=0.00');
    frm_CON_PEDIDOS.larq.add('vLiq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    // TAG DUPLICATA
    frm_CON_PEDIDOS.larq.add('[Duplicata001]');
    if dm_dados.zqry_VDVENDAcodtipomov.
    asinteger<>202 then frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3));//inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
    if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202 then frm_CON_PEDIDOS.larq.add('nDup=001');
    frm_CON_PEDIDOS.larq.add('dVenc='+datetostr(now));
    if (frm_CON_PEDIDOS.recicmpf=1)  and (dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202) then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela,-2)));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));//floattostr(roundto(VALORPARCELA,-2)));
    if (frm_CON_PEDIDOS.recicmpf=1)  and (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));//dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
    // 5949 e 6949 = Simples Remessa | 5910 e 6910 = Bonifica��o
    if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) or (dm_dados.zqry_VDITVENDACODNAT.AsString='5949') or (dm_dados.zqry_VDITVENDACODNAT.AsString='6949') or (dm_dados.zqry_VDITVENDACODNAT.AsString='5910') or (dm_dados.zqry_VDITVENDACODNAT.AsString='6910') then
    begin
      // TAG PAG
      frm_CON_PEDIDOS.larq.add('[PAG001]');
      frm_CON_PEDIDOS.larq.add('TPag=90');
      frm_CON_PEDIDOS.larq.add('VPag=0.00');
    end;
    DM_DADOS.zqry_FNITRECEBER.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.primeiraparcelast:=frm_CON_PEDIDOS.somast;
    frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITRECEBER.RecordCount;
    if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
    while not dm_dados.zqry_fnITreceber.eof do
    begin
      frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITRECEBERCODREC.AsInteger;
      frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITRECEBERNPARCITREC.AsInteger;
      frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat,-4);
      frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
      frm_CON_PEDIDOS.larq.add('[PAG'+ StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3) + ']');
      if (dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202) then frm_CON_PEDIDOS.larq.add('TPag=01');
      if (dm_dados.zqry_VDVENDAcodtipomov.asinteger=202) or (dm_dados.zqry_VDITVENDACODNAT.AsString='5949') or (dm_dados.zqry_VDITVENDACODNAT.AsString='6949') or (dm_dados.zqry_VDITVENDACODNAT.AsString='5910') or (dm_dados.zqry_VDITVENDACODNAT.AsString='6910') then frm_CON_PEDIDOS.larq.add('TPag=90');
      if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
      begin
        if frm_CON_PEDIDOS.diferencapag>1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencaPAG));
        if frm_CON_PEDIDOS.diferencapag<1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencaPAG));
      end
      else
      begin
        if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA-frm_CON_PEDIDOS.diferencaPAG));
      end;
      frm_CON_PEDIDOS.primeiraparcela:=0;
      frm_CON_PEDIDOS.primeiraparcelast:=0;
      frm_CON_PEDIDOS.diferencapag:=0;
      dm_dados.zqry_FNITRECEBER.Next;
    end;
  end;
  // SE PAGAMENTO DIFERENTE DE AVISTA
  if dm_dados.zqry_VDVENDACODPLANOPAG.AsInteger>1 then
  begin
    // SE AGRUPADOS
    if frm_CON_PEDIDOS.AGRUPADOS=1 then
    begin
      frm_CON_PEDIDOS.larq.add('[fat]');
      frm_CON_PEDIDOS.larq.add('nfat=001');//+inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
      if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));//dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
      if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');//+formatfloat('##0.00',TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vdesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
      frm_CON_PEDIDOS.larq.add('vliq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      frm_CON_PEDIDOS.VALORAGRUPADO:=roundto(frm_CON_PEDIDOS.VLRAGRUPADO,-4);
      frm_CON_PEDIDOS.VALORNOTA:=roundto(frm_CON_PEDIDOS.VALORAGRUPADO,-4);
      frm_CON_PEDIDOS.larq.add('[Duplicata001]');
      frm_CON_PEDIDOS.larq.add('nDup=001');
      frm_CON_PEDIDOS.larq.add('dVenc='+datetostr(now));
      frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.0000', frm_CON_PEDIDOS.VALORNOTA));
    end
    // SE NAO FOR AGRUPADO
    else
    begin
      frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
      frm_CON_PEDIDOS.primeiraparcelast:=(frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast));
      frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITRECEBER.RecordCount;
      if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
      frm_CON_PEDIDOS.larq.add('[fat]');
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202 then frm_CON_PEDIDOS.larq.add('nFat='+inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
      if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202 then frm_CON_PEDIDOS.larq.add('nFat=001');
      //frm_CON_PEDIDOS.larq.add('nfat='+inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
      if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));//dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
      if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');//+formatfloat('##0.00',TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vdesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
      frm_CON_PEDIDOS.larq.add('vliq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      // SOMA PARA VER DIFERENCA DAS PARCELAS
      frm_CON_PEDIDOS.diferencafat:=0;
      frm_CON_PEDIDOS.diferencapag:=0;
      frm_CON_PEDIDOS.somaparcela:=0;
      while not dm_dados.zqry_fnITreceber.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITRECEBERCODREC.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITRECEBERNPARCITREC.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat,-4);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+ roundto(frm_CON_PEDIDOS.vlrparcelast,-2);
        end
        else
        begin
          if frm_CON_PEDIDOS.recicmpf=1  then frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+ roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela,-2);
          if frm_CON_PEDIDOS.recicmpf<>1 then frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast, -2);
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        dm_dados.zqry_FNITRECEBER.Next;
      end;
      // EXECUTA A DIFERENCA DE PARCELAS
      frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
      frm_CON_PEDIDOS.primeiraparcelast:=(frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast));;
      frm_CON_PEDIDOS.DIFERENCAFAT:=ROUNDTO(frm_CON_PEDIDOS.somaparcela-frm_CON_PEDIDOS.totalnota,-2);
      frm_CON_PEDIDOS.diferencapag:=roundto(frm_CON_PEDIDOS.somaparcela-frm_CON_PEDIDOS.totalnota,-2);
      dm_dados.zqry_FNITRECEBER.first;
      while not dm_dados.zqry_fnITreceber.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITRECEBERCODREC.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITRECEBERNPARCITREC.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat,-2);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        frm_CON_PEDIDOS.larq.add('[Duplicata'+ StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3) + ']');
        if dm_dados.zqry_VDVENDAcodtipomov.asinteger<>202 then frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3));//inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
        if dm_dados.zqry_VDVENDAcodtipomov.asinteger=202 then frm_CON_PEDIDOS.larq.add('nDup=001');
        //frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3));//+frm_principal.db_nfe.caption+'/'+inttostr(dm_dados.zqry_FNITRECEBERCODREC.Value)+'-'+inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE));
        frm_CON_PEDIDOS.larq.add('dVenc='+DATETOSTR(dm_dados.zqry_FNITRECEBERDTVENCITREC.asdatetime));
        // SE SOMA ST NA DUPLICATA
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencafat,-2)));
          if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencafat,-2)));
        end
        // SE N�O SOMA ST NA DUPLICATA
        else
        begin
          if frm_CON_PEDIDOS.recicmpf=1 then
          begin
            if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(frm_CON_PEDIDOS.valorparcela+roundto(frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencafat,-4)));
            if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(frm_CON_PEDIDOS.valorparcela+roundto(frm_CON_PEDIDOS.primeiraparcela-frm_CON_PEDIDOS.diferencafat,-4)));
          end;
          if frm_CON_PEDIDOS.recicmpf<>1 then
          begin
            if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencafat));
            if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencafat));
            frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast, -2);
          end;
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        frm_CON_PEDIDOS.diferencafat:=0;
        dm_dados.zqry_FNITRECEBER.Next;
      end;
    end;
    //TAG NOVA NFE 4 PAGAMENTO
    DM_DADOS.zqry_FNITRECEBER.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.primeiraparcelast:=(frm_CON_PEDIDOS.somast*(1+((100-frm_CON_PEDIDOS.redicms)/100))-(frm_CON_PEDIDOS.somast));;
    frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITRECEBER.RecordCount;
    if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
    // SE PEDIDOS AGRUPADOS
    if frm_CON_PEDIDOS.AGRUPADOS=1 then
    begin
      frm_CON_PEDIDOS.larq.add('[PAG001]');
      frm_CON_PEDIDOS.larq.add('TPag=01');
      if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
    end
    // SE PEDIDOS NAO AGRUPADOS
    else
    begin
      while not dm_dados.zqry_fnITreceber.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITRECEBERCODREC.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITRECEBERNPARCITREC.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat,-4);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        frm_CON_PEDIDOS.larq.add('[PAG'+ StrZero(inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE), 3) + ']');
        frm_CON_PEDIDOS.larq.add('TPag=01');
        // SE SOMA ST NAS DUPLICATAS
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          if frm_CON_PEDIDOS.diferencapag>1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencaPAG));
          if frm_CON_PEDIDOS.diferencapag<1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencaPAG));
        end
        //SE NAO SOMA ST NAS DUPLICATAS
        else
        begin
          if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        frm_CON_PEDIDOS.diferencapag:=0;
        dm_dados.zqry_FNITRECEBER.Next;
      end;
    end;
  end;
end;

procedure faturacompra;
begin
  // CONSULTA CONTAS A PAGAR
  dm_dados.zqry_FNPAGAR.Close;
  dm_dados.zqry_FNPAGAR.sql.Clear;
  dm_dados.zqry_fnPAGAR.SQL.Add('select * from fnpagar where codcompra=:vendacod and codemp=:empcod');
  dm_dados.zqry_FNPAGAR.ParamByName('vendacod').AsInteger:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
  dm_dados.zqry_FNPAGAR.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_FNPAGAR.Open;
  // CONSULTA ITENS DAS CONTAS A PAGAR
  dm_dados.zqry_FNITPAGAR.Close;
  dm_dados.zqry_FNITPAGAR.sql.Clear;
  dm_dados.zqry_fnITPAGAR.SQL.Add('SELECT * FROM FNITPAGAR where codpag=:reccod and codemp=:empcod');
  dm_dados.zqry_FNITPAGAR.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNPAGARCODPAG.AsInteger;
  dm_dados.zqry_FNITPAGAR.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_FNITPAGAR.Open;
  // SE PAGAMENTO A VISTA
  if (dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger=1) or (frm_CON_PEDIDOS.tipopagto=1) then
  begin
    dm_dados.zqry_FNITPAGAR.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat,-4);
    // TAG FAT
    frm_CON_PEDIDOS.larq.add('[FAT]');
    if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212 then frm_CON_PEDIDOS.larq.add('nFat='+inttostr(dm_dados.zqry_FNITPAGARCODPAG.AsInteger));
    if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then frm_CON_PEDIDOS.larq.add('nFat=001');
    if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vOrig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
    if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vDesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC));
    if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vDesc=0.00');
    frm_CON_PEDIDOS.larq.add('vLiq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    // TAG DUPLICATA
    frm_CON_PEDIDOS.larq.add('[Duplicata001]');
    if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212 then frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3));
    if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then frm_CON_PEDIDOS.larq.add('nDup=001');
    frm_CON_PEDIDOS.larq.add('dVenc='+datetostr(now));
    if (frm_CON_PEDIDOS.recicmpf=1)  and (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212) then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela,-2)));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if (frm_CON_PEDIDOS.recicmpf=1)  and (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212) then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
    // 5949 e 6949 = Simples Remessa | 5910 e 6910 = Bonifica��o
    if (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212) or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='1949') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='2949') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='1910') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='2910') then
    begin
      // TAG PAG
      frm_CON_PEDIDOS.larq.add('[PAG001]');
      frm_CON_PEDIDOS.larq.add('TPag=90');
      frm_CON_PEDIDOS.larq.add('VPag=0.00');
    end;
    DM_DADOS.zqry_FNITPAGAR.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.primeiraparcelast:=frm_CON_PEDIDOS.somast;
    frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITPAGAR.RecordCount;
    if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
    while not dm_dados.zqry_fnITpagar.eof do
    begin
      frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITPAGARCODPAG.AsInteger;
      frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger;
      frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat,-4);
      frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
      frm_CON_PEDIDOS.larq.add('[PAG'+ StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3) + ']');
      if (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212) then frm_CON_PEDIDOS.larq.add('TPag=01');
      if (dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212) or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='1949') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='2949') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='1910') or (dm_dados.zqry_CPITCOMPRACODNAT.AsString='2910') then frm_CON_PEDIDOS.larq.add('TPag=90');
      if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
      begin
        if frm_CON_PEDIDOS.diferencapag>1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencaPAG));
        if frm_CON_PEDIDOS.diferencapag<1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencaPAG));
      end
      else
      begin
        if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA+frm_CON_PEDIDOS.diferencaPAG));
        if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA-frm_CON_PEDIDOS.diferencaPAG));
      end;
      frm_CON_PEDIDOS.primeiraparcela:=0;
      frm_CON_PEDIDOS.primeiraparcelast:=0;
      frm_CON_PEDIDOS.diferencapag:=0;
      dm_dados.zqry_FNITPAGAR.Next;
    end;
  end;
  // SE PAGAMENTO DIFERENTE DE AVISTA
  if dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger>1 then
  begin
    // SE AGRUPADOS
    if frm_CON_PEDIDOS.AGRUPADOS=1 then
    begin
      frm_CON_PEDIDOS.larq.add('[fat]');
      frm_CON_PEDIDOS.larq.add('nfat=001');//+inttostr(dm_dados.zqry_FNITRECEBERCODREC.AsInteger));
      if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.SOMAAGRUPADO));
      if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vdesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
      frm_CON_PEDIDOS.larq.add('vliq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      frm_CON_PEDIDOS.VALORAGRUPADO:=roundto(frm_CON_PEDIDOS.VLRAGRUPADO,-4);
      frm_CON_PEDIDOS.VALORNOTA:=roundto(frm_CON_PEDIDOS.VALORAGRUPADO,-4);
      frm_CON_PEDIDOS.larq.add('[Duplicata001]');
      frm_CON_PEDIDOS.larq.add('nDup=001');
      frm_CON_PEDIDOS.larq.add('dVenc='+datetostr(now));
      frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.0000', frm_CON_PEDIDOS.VALORNOTA));
    end
    // SE NAO FOR AGRUPADO
    else
    begin
      frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
      frm_CON_PEDIDOS.primeiraparcelast:=frm_CON_PEDIDOS.somast;
      frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITPAGAR.RecordCount;
      if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
      frm_CON_PEDIDOS.larq.add('[fat]');
    //  frm_CON_PEDIDOS.larq.add('nfat='+inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger));
      if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212 then frm_CON_PEDIDOS.larq.add('nFat='+inttostr(dm_dados.zqry_FNITPAGARCODPAG.AsInteger));
      if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then frm_CON_PEDIDOS.larq.add('nFat=001');
      if frm_CON_PEDIDOS.recicmpf=1  then   frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vorig='+ formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));//dm_dados.zqry_VDVENDAvlrprodvenda.asfloat));
      if frm_CON_PEDIDOS.RECICMPF=1 then frm_CON_PEDIDOS.larq.add('vdesc=0.00');//+formatfloat('##0.00',TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='S') then frm_CON_PEDIDOS.larq.add('vdesc='+formatfloat('##0.00',frm_CON_PEDIDOS.TOTALDESC{dm_dados.zqry_VDVENDAVLRDESCITVENDA.asfloat}));
      if (frm_CON_PEDIDOS.RECICMPF<>1) and (dm_dados.zqry_sgfilialsimplesfilial.asstring='N') then frm_CON_PEDIDOS.larq.add('vdesc=0.00');
      frm_CON_PEDIDOS.larq.add('vliq='+formatfloat('##0.00', frm_CON_PEDIDOS.TOTALNOTA));
      // SOMA PARA VER DIFERENCA DAS PARCELAS
      frm_CON_PEDIDOS.diferencafat:=0;
      frm_CON_PEDIDOS.diferencapag:=0;
      frm_CON_PEDIDOS.somaparcela:=0;
      while not dm_dados.zqry_FNITPAGAR.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITPAGARCODPAG.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat,-4);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+ roundto(frm_CON_PEDIDOS.vlrparcelast,-2);
        end
        else
        begin
          if frm_CON_PEDIDOS.recicmpf=1  then frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+ roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela,-2);
          if frm_CON_PEDIDOS.recicmpf<>1 then frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast, -2);
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        dm_dados.zqry_FNITPAGAR.Next;
      end;
      // EXECUTA A DIFERENCA DE PARCELAS
      frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
      frm_CON_PEDIDOS.primeiraparcelast:=frm_CON_PEDIDOS.somast;
      frm_CON_PEDIDOS.DIFERENCAFAT:=ROUNDTO(frm_CON_PEDIDOS.somaparcela-frm_CON_PEDIDOS.totalnota,-2);
      frm_CON_PEDIDOS.diferencapag:=roundto(frm_CON_PEDIDOS.somaparcela-frm_CON_PEDIDOS.totalnota,-2);
      dm_dados.zqry_FNITpagar.first;
      while not dm_dados.zqry_fnITpagar.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITPAGARCODPAG.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat,-2);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        frm_CON_PEDIDOS.larq.add('[Duplicata'+ StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3) + ']');
        if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212 then frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3));
        if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then frm_CON_PEDIDOS.larq.add('nDup=001');
        //frm_CON_PEDIDOS.larq.add('nDup='+StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3));//+frm_principal.db_nfe.caption+'/'+inttostr(dm_dados.zqry_FNITRECEBERCODREC.Value)+'-'+inttostr(dm_dados.zqry_FNITRECEBERNPARCITREC.VALUE));
        frm_CON_PEDIDOS.larq.add('dVenc='+DATETOSTR(dm_dados.zqry_FNITPAGARDTVENCITPAG.asdatetime));
        // SE SOMA ST NA DUPLICATA
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencafat,-2)));
          if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(roundto(frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencafat,-2)));
        end
        // SE N�O SOMA ST NA DUPLICATA
        else
        begin
          if frm_CON_PEDIDOS.recicmpf=1 then
          begin
            if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(frm_CON_PEDIDOS.valorparcela+roundto(frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencafat,-4)));
            if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ floattostr(frm_CON_PEDIDOS.valorparcela+roundto(frm_CON_PEDIDOS.primeiraparcela-frm_CON_PEDIDOS.diferencafat,-4)));
          end;
          if frm_CON_PEDIDOS.recicmpf<>1 then
          begin
            if frm_CON_PEDIDOS.diferencafat>1 then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencafat));
            if frm_CON_PEDIDOS.diferencafat<1 then frm_CON_PEDIDOS.larq.add('vDup='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencafat));
            frm_CON_PEDIDOS.somaparcela:=frm_CON_PEDIDOS.somaparcela+roundto(frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast, -2);
          end;
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        frm_CON_PEDIDOS.diferencafat:=0;
        dm_dados.zqry_FNITPAGAR.Next;
      end;
    end;
    //TAG NOVA NFE 4 PAGAMENTO
    DM_DADOS.zqry_FNITPAGAR.First;
    frm_CON_PEDIDOS.primeiraparcela:=frm_CON_PEDIDOS.somaicms;
    frm_CON_PEDIDOS.primeiraparcelast:=frm_CON_PEDIDOS.somast;
    frm_CON_PEDIDOS.parcelamento:= dm_dados.zqry_FNITPAGAR.RecordCount;
    if frm_CON_PEDIDOS.parcelamento >=1 then frm_CON_PEDIDOS.vlrparcelamento:=frm_CON_PEDIDOS.somast/frm_CON_PEDIDOS.parcelamento;
    // SE PEDIDOS AGRUPADOS
    if frm_CON_PEDIDOS.AGRUPADOS=1 then
    begin
      frm_CON_PEDIDOS.larq.add('[PAG001]');
      frm_CON_PEDIDOS.larq.add('TPag=01');
      if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
      if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORNOTA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
    end
    // SE PEDIDOS NAO AGRUPADOS
    else
    begin
      while not dm_dados.zqry_FNITPAGAR.eof do
      begin
        frm_CON_PEDIDOS.numrec:=dm_dados.zqry_FNITPAGARCODPAG.AsInteger;
        frm_CON_PEDIDOS.numparcela:=dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger;
        frm_CON_PEDIDOS.VALORPARCELA:=roundto(dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat,-4);
        frm_CON_PEDIDOS.VLRPARCELAST:=frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.VLRPARCELAMENTO;
        frm_CON_PEDIDOS.larq.add('[PAG'+ StrZero(inttostr(dm_dados.zqry_FNITPAGARNPARCPAG.VALUE), 3) + ']');
        frm_CON_PEDIDOS.larq.add('TPag=01');
        // SE SOMA ST NAS DUPLICATAS
        if dm_dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then
        begin
          if frm_CON_PEDIDOS.diferencapag>1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST+frm_CON_PEDIDOS.diferencaPAG));
          if frm_CON_PEDIDOS.diferencapag<1 then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VLRPARCELAST-frm_CON_PEDIDOS.diferencaPAG));
        end
        //SE NAO SOMA ST NAS DUPLICATAS
        else
        begin
          if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela+frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf=1)  and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcela)-frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag>1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast+frm_CON_PEDIDOS.diferencaPAG));
          if (frm_CON_PEDIDOS.recicmpf<>1) and (frm_CON_PEDIDOS.diferencapag<1) then frm_CON_PEDIDOS.larq.add('VPag='+ formatfloat('##0.00', (frm_CON_PEDIDOS.VALORPARCELA+frm_CON_PEDIDOS.primeiraparcelast)-frm_CON_PEDIDOS.diferencaPAG));
        end;
        frm_CON_PEDIDOS.primeiraparcela:=0;
        frm_CON_PEDIDOS.primeiraparcelast:=0;
        frm_CON_PEDIDOS.diferencapag:=0;
        dm_dados.zqry_FNITPAGAR.Next;
      end;
    end;
  end;
end;

procedure CriarNFe;
begin
//////////////////////////////////////////////////
///  PROCEDURE ZERA VARIAVEIS
zeravariaveis;
//////////////////////////////////////////////////
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=0 THEN
  BEGIN
    frm_CON_PEDIDOS.zqry_VDCLIENTE.Close;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.sql.clear;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
    frm_CON_PEDIDOS.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=dm_dados.zqry_VDVENDACODCLI.AsInteger;
    frm_CON_PEDIDOS.zqry_VDCLIENTE.Open;
    frm_CON_PEDIDOS.iecliente:=frm_CON_PEDIDOS.zqry_VDCLIENTEINSCCLI.asstring;
    if dm_dados.zqry_fnreceber.IsEmpty then Showmessage('N�o existem valores do Contas a Receber que coincidem com a busca');
  END;
  IF frm_CON_PEDIDOS.TIPOMOVIMENTO=1 THEN
  BEGIN
    dm_dados.zqry_CPFORNECED.Close;
    dm_Dados.zqry_CPFORNECED.sql.clear;
    dm_Dados.zqry_CPFORNECED.SQL.Add('select * from CPFORNECED where codfor=:clicod and codemp=:empcod');
    dm_Dados.zqry_CPFORNECED.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_dados.zqry_CPFORNECED.ParamByName('clicod').AsInteger:=dm_dados.zqry_CPCOMPRACODFOR.AsInteger;
    dm_Dados.zqry_CPFORNECED.Open;
    frm_CON_PEDIDOS.iecliente:=frm_CON_PEDIDOS.zqry_FORNECCOMPRAINSCFOR.asstring;
    if dm_dados.zqry_FNPAGAR.IsEmpty then Showmessage('N�o existem valores do Contas a Pagar que coincidem com a busca');
  END;
  frm_CON_PEDIDOS.ano:=FormatDateTime('yyyy',Now);
  //
  //lbl_numnf.caption:=dm_dados.zqry_SGSEQUENCIA_nfNROSEQ.asstring;
  frm_CON_PEDIDOS.estado1:=dm_dados.zqry_SGFILIALSIGLAUF.AsString;
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then frm_CON_PEDIDOS.estado2:=frm_CON_PEDIDOS.zqry_VDCLIENTEUFCLI.asstring;
  if frm_CON_PEDIDOS.TIPOMOVIMENTO=1 then frm_CON_PEDIDOS.estado2:=frm_CON_PEDIDOS.zqry_FORNECCOMPRAUFFOR.asstring;
  // consulta icms estado1
  dm_dados.zqry_lftabicms.Close;
  dm_dados.zqry_lftabicms.sql.Clear;
  dm_dados.zqry_lftabicms.sql.add('select * from lftabicms where ufti=:sigla and codemp=:empcod');
  dm_dados.zqry_lftabicms.ParamByName('sigla').asstring:=dm_dados.zqry_VDVENDA_UFCLIENTE.asstring;
  dm_dados.zqry_lftabicms.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
  dm_dados.zqry_lftabicms.open;
  if dm_dados.zqry_lftabicms.IsEmpty then
  begin
    IF dm_dados.zqry_VDVENDA_SIGLAUF.AsString<>'SP' then frm_CON_PEDIDOS.aliqint:=12 else frm_CON_PEDIDOS.ALIQINT:=7;
    frm_CON_PEDIDOS.aliqext:=12;
  end
  else
  begin
    frm_CON_PEDIDOS.aliqint:=dm_dados.zqry_LFTABICMSALIQTI.asfloat;
    frm_CON_PEDIDOS.aliqext:=dm_dados.zqry_LFTABICMSALIQINTRATI.AsFloat;
  end;
  MostraTelaAguarde('Criando e Enviando NFe. '+dm_dados.zqry_SGSEQUENCIANROSEQ.asstring);
  frm_CON_PEDIDOS.DATA:= FormatDateTime('YYYY-MM-DD', Now) + 'T' + FormatDateTime('hh:nn:ss', Now) + PegaTimeZone;
//////////////////////////////////////////////////
///  PROCEDURE DE IDENTIFICACAO
identificacao;
//////////////////////////////////////////////////
///  PROCEDURE DE EMITENTE
emitente;
//////////////////////////////////////////////////
///  PROCEDURE DE DESTINATARIO
destinatario;
//////////////////////////////////////////////////
///  PROCEDURE DE PRODUTOS NA NOTA
if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then itensvenda else itenscompra;
//////////////////////////////////////////////////
///  PROCEDURE DE TOTAIS DA NOTA
totais;
//////////////////////////////////////////////////
///  PROCEDURE DE TRANSPORTE
if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then transportevenda else transportecompra;;
//////////////////////////////////////////////////
///  PROCEDURE DE FATURA
if frm_CON_PEDIDOS.TIPOMOVIMENTO=0 then faturavenda else faturacompra;
//////////////////////////////////////////////////
  dm_dados.zqry_lfmensagem.close;
  dm_dados.zqry_lfmensagem.SQL.Clear;
  dm_dados.zqry_lfmensagem.SQL.Add('select * from lfmensagem where codmens=:mensnfe');
  if frm_CON_PEDIDOS.zqry_ITFISCALCODMENS.AsSTRING=''  then  dm_dados.zqry_lfmensagem.ParamByName('mensnfe').asinteger:=1;
  if frm_CON_PEDIDOS.zqry_ITFISCALCODMENS.AsSTRING<>'' then  dm_dados.zqry_lfmensagem.ParamByName('mensnfe').asinteger:=frm_CON_PEDIDOS.zqry_ITFISCALCODMENS.asinteger;
  dm_dados.zqry_lfmensagem.Open;
  if dm_dados.zqry_lfmensagem.IsEmpty then
  begin
     if dm_dados.zqry_sgfilialsimplesfilial.asstring='S' then frm_CON_PEDIDOS.mensagemnfe:='DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL E N�O GERA DIREITO A CR�DITO FISCAL DE ICMS, DE ISS E DE IPI |';
     if dm_dados.zqry_sgfilialsimplesfilial.asstring='N' then frm_CON_PEDIDOS.mensagemnfe:='DOCUMENTO EMITIDO COM ICMS POR SUBSTITUI��O TRIBUTARIA -COM DIREITO A CR�DITO DE ICMS |';
  end
  else
  begin
    frm_CON_PEDIDOS.mensagemnfe:=dm_dados.zqry_LFMENSAGEMMENS.asstring;
  end;
  frm_CON_PEDIDOS.ALIQDESTAQUE:=0;
  frm_CON_PEDIDOS.ALIQDESTAQUE:=DM_DADOS.zqry_SGFILIALDESTICMS.AsFloat;
  IF frm_CON_PEDIDOS.ALIQDESTAQUE>0 THEN
  begin
    frm_CON_PEDIDOS.TOTALDESTAQUE:=0;
    frm_CON_PEDIDOS.TOTALDESTAQUE:=roundto(frm_CON_PEDIDOS.totalnota*frm_CON_PEDIDOS.ALIQDESTAQUE/100,-2);
  end
  else
  begin
    frm_CON_PEDIDOS.totaldestaque:=0;
  end;
  frm_CON_PEDIDOS.larq.add('[DadosAdicionais]');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Complemento= '+trim(frm_CON_PEDIDOS.edt_obs.Text)+'|'+frm_CON_PEDIDOS.mensagemnfe);
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('Complemento= '+trim(frm_CON_PEDIDOS.edt_OBS_ENT.Text)+'|'+frm_CON_PEDIDOS.mensagemnfe);
  frm_CON_PEDIDOS.larq.add('[InfAdic001]');
  frm_CON_PEDIDOS.larq.add('Campo=Pedido..');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Texto='+dm_dados.zqry_VDVENDACODVENDA.asstring);
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('Texto='+dm_dados.zqry_CPCOMPRACODCOMPRA.asstring);
  frm_CON_PEDIDOS.larq.add('[InfAdic002]');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Campo=Vendedor');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('Campo=Comprador');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then frm_CON_PEDIDOS.larq.add('Texto='+dm_dados.zqry_VDVENDA_NOMEVENDEDOR.asstring);
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=1) then frm_CON_PEDIDOS.larq.add('Texto= N�o Informado');
  if (frm_CON_PEDIDOS.TIPOMOVIMENTO=0) then
  begin
    frm_CON_PEDIDOS.larq.add('[InfAdic003]');
    frm_CON_PEDIDOS.larq.add('Campo=Destaque');
    frm_CON_PEDIDOS.larq.add('Texto='+'R$ '+floattostr(frm_CON_PEDIDOS.totaldestaque));
  end;
end;


end.
