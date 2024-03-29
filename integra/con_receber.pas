unit con_receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, ACBrBase, ACBrBoleto, typinfo,
  ACBrBoletoFCFortesFr, Vcl.ExtCtrls, uFuncoes, uAguarde, Vcl.Imaging.jpeg, DB,
   Datasnap.DBClient, Datasnap.Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  RLFilters, RLPDFFilter, Vcl.FileCtrl, ACBrMail, ACBrSocket, ACBrFeriado;

type
  Tfrm_CON_RECEBER = class(TForm)
    lbl_INFORMA: TLabel;
    ACBrBoleto1: TACBrBoleto;
    gb_INFORMA: TGroupBox;
    gp_RECIBO: TGroupBox;
    gp_BOLETO: TGroupBox;
    btn_RECIBO: TBitBtn;
    btn_LIMPAR: TBitBtn;
    btn_GERAREMESSA: TBitBtn;
    btn_GERAPDF: TBitBtn;
    btn_GERAHTML: TBitBtn;
    edt_instru2: TEdit;
    edt_instru1: TEdit;
    edt_mensagem: TEdit;
    edt_dias: TEdit;
    edt_percmulta: TEdit;
    edt_dtprotesto: TEdit;
    edt_dtabate: TEdit;
    edt_dtdesc: TEdit;
    edt_dtmora: TEdit;
    edt_vlrdesc: TEdit;
    edt_vlrmora: TEdit;
    edt_localpagto: TEdit;
    edt_vlrabate: TEdit;
    cbxaceite: TComboBox;
    btn_INCLUIRBOLETO: TBitBtn;
    btn_IMPRIMIRBOLETO: TBitBtn;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    btn_PREBOLETO: TBitBtn;
    rg_CONRECEBER: TRadioGroup;
    gp_BOL_PARAMETROS: TGroupBox;
    db_BOL_RECEBER: TDBGrid;
    db_BOL_ITRECEBER: TDBGrid;
    lbl_PESQUISA: TLabel;
    msk_PESQUISA1: TMaskEdit;
    lbl_ATE: TLabel;
    msk_PESQUISA2: TMaskEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btn_BUSCANOME: TBitBtn;
    btn_BLOG: TBitBtn;
    Image1: TImage;
    GroupBox1: TGroupBox;
    db_txt_NUMCONTA: TDBText;
    Label3: TLabel;
    btn_BUSCARECEBER: TBitBtn;
    sp_BUSCA: TSpeedButton;
    cbOCORRENCIA: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cbxlayout: TComboBox;
    ACBrBoleto2: TACBrBoleto;
    lbl_MENS1: TLabel;
    Label20: TLabel;
    edtCPFCNPJ: TEdit;
    btn_INCLUI: TBitBtn;
    lbl_MENS2: TLabel;
    pg_BOLREC: TPageControl;
    ts_BOLRECIBO: TTabSheet;
    ts_CONITREC: TTabSheet;
    rg_CONITRECEBER: TRadioGroup;
    gp_REC_PARAMETROS: TGroupBox;
    lbl_PESQUISA1: TLabel;
    lbl_ATE1: TLabel;
    sp_BUSCA1: TSpeedButton;
    msk_REC_PESQUISA1: TMaskEdit;
    msk_REC_PESQUISA2: TMaskEdit;
    btn_BUSCAITRECEBER: TBitBtn;
    db_REC_ITRECEBER: TDBGrid;
    gp_CLIENTE: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label22: TLabel;
    db_VDVENDA: TDBGrid;
    GroupBox2: TGroupBox;
    btn_APPREMRET: TBitBtn;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    edt_REMDIA_CODBANCO: TEdit;
    btn_INCLUIRDIA: TBitBtn;
    Conta: TLabel;
    edt_REMDIA_CONTA: TEdit;
    edt_REMDIA_DATA: TMaskEdit;
    gb_ULTIMOTITULO: TGroupBox;
    Label25: TLabel;
    dt_INICIO: TMaskEdit;
    Label26: TLabel;
    dt_FIM: TMaskEdit;
    btn_IMP_RELULTTIULO: TBitBtn;
    Label27: TLabel;
    DBGrid1: TDBGrid;
    btn_BUSCAULTTITULOS: TBitBtn;
    Label28: TLabel;
    zqry_SGINICONSP: TZQuery;
    btn_BUSCARECEBER_DATA: TBitBtn;
    FileListBox1: TFileListBox;
    ACBrMail1: TACBrMail;
    ACBrFeriado1: TACBrFeriado;
    zqry_SALDODEVEDOR: TZQuery;
    zqry_SALDODEVEDORSALDODEVEDOR: TExtendedField;
    zdts_SALDODEVEDOR: TDataSource;
    gb_DEVEDOR: TGroupBox;
    DBText3: TDBText;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    procedure btn_BUSCAEMISSAOClick(Sender: TObject);
    procedure db_BOL_RECEBERKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_BOL_ITRECEBERKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_BOL_ITRECEBERCellClick(Column: TColumn);
    procedure edt_diasExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn_GERAHTMLClick(Sender: TObject);
    procedure btn_GERAPDFClick(Sender: TObject);
    procedure btn_GERAREMESSAClick(Sender: TObject);
    procedure btn_LIMPARClick(Sender: TObject);
    procedure btn_RECIBOClick(Sender: TObject);
    procedure btn_BUSCANOMEClick(Sender: TObject);
    procedure btn_INCLUIRBOLETOClick(Sender: TObject);
    procedure btn_PREBOLETOClick(Sender: TObject);
    procedure btn_IMPRIMIRBOLETOClick(Sender: TObject);
    procedure rg_CONRECEBERClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_BLOGClick(Sender: TObject);
    procedure btn_BUSCACODCLIClick(Sender: TObject);
    procedure btn_BUSCACODRECClick(Sender: TObject);
    procedure btn_BUSCARECEBERClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxlayoutChange(Sender: TObject);
    procedure db_BOL_RECEBERDblClick(Sender: TObject);
    procedure btn_INCLUIClick(Sender: TObject);
    procedure rg_CONITRECEBERClick(Sender: TObject);
    procedure btn_BUSCAITRECEBERClick(Sender: TObject);
    procedure msk_REC_PESQUISA2KeyPress(Sender: TObject; var Key: Char);
    procedure db_REC_ITRECEBERDblClick(Sender: TObject);
    procedure btn_APPREMRETClick(Sender: TObject);
    procedure sp_BUSCA1Click(Sender: TObject);
    procedure btn_INCLUIRDIAClick(Sender: TObject);
    procedure btn_IMP_RELULTTIULOClick(Sender: TObject);
    procedure ts_CONITRECEnter(Sender: TObject);
    procedure ts_BOLRECIBOEnter(Sender: TObject);
    procedure dt_INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure dt_FIMKeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCAULTTITULOSClick(Sender: TObject);
    procedure btn_BUSCARECEBER_DATAClick(Sender: TObject);
//    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    juros, valor, total:double;
    documento, codcart, codcnab, outrobt, ano, ENTRE, SCRIPT, PARAMETRO1, PARAMETRO2, PARAMETRO3, INSTRUCAO,NNUM:STRING;
    data:TDate;
    Titulo : TACBrTitulo;
  end;

var
  frm_CON_RECEBER: Tfrm_CON_RECEBER;

implementation

{$R *.dfm}

uses dados, rel_recibo, rel_recibo90, dlg_appremret, rel_ULTTITULOS,
  principal, rel_ultitulos2, prefacbr;

FUNCTION RemoveZeros(S: string): string;
var
I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do
      begin
      Dec(I);
      end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
      begin
      Inc(J);
      end;
Result := Copy(S, J, (I-J)+1);
end;

procedure Tfrm_CON_RECEBER.btn_PREBOLETOClick(Sender: TObject);
var
  codmodelo:integer;
  localpagto:string;
begin
dm_Dados.zqry_FNBANCO.Close;
dm_dados.zqry_FNBANCO.SQL.Clear;
dm_dados.zqry_FNBANCO.SQL.Add('select * from fnbanco where codbanco=:bancocod and codemp=:empcod');
dm_dados.zqry_FNBANCO.ParamByName('bancocod').value:=dm_DAdos.zqry_FNRECEBERCODBANCO.value;
dm_dados.zqry_FNBANCO.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_fnbanco.open;
if dm_dados.zqry_fnbanco.isempty  then
begin
  mostratelaaviso('N�o existem BANCOS cadastrados com essas informa��es','tab.: fnbanco');
end
else
begin
  dm_dados.zqry_FNITMODBOLETO.close;
  dm_dados.zqry_FNITMODBOLETO.SQL.Clear;
  dm_dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto where numconta=:conta and codemp=:empcod');
  dm_dados.zqry_FNITMODBOLETO.ParamByName('conta').asstring:=dm_dados.zqry_FNRECEBERNUMCONTA.asstring;
  dm_Dados.zqry_FNITMODBOLETO.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_fnITMODBOLETO.Open;
  if dm_dados.zqry_fnITMODBOLETO.IsEmpty then
  begin
    mostratelaaviso('N�o existem MODELOS DE BOLETOS cadastrados com essas informa��es','tab.: fnitmodboleto');
  end
  else
  begin
    codmodelo:=dm_Dados.zqry_FNITMODBOLETOCODMODBOL.AsInteger;
    dm_dados.zqry_FNMODBOLETO.Close;
    dm_dados.zqry_FNMODBOLETO.SQL.Clear;
    dm_dados.zqry_FNMODBOLETO.SQL.Add('select * from fnmodboleto where codmodbol=:modelo and codemp=:empcod');
    dm_Dados.zqry_FNMODBOLETO.ParamByName('modelo').AsInteger:=codmodelo;
    dm_Dados.zqry_FNMODBOLETO.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    dm_dados.zqry_FNMODBOLETO.Open;
    localpagto:=dm_dados.zqry_FNMODBOLETODESCLPMODBOL.AsString;
    if localpagto<>'' then edt_localpagto.Text:=localpagto else edt_localpagto.Text:='Pag�vel em qualquer banco at� o valor limite';
    //
    Dm_dados.zqry_FNCONTA.close;
    dm_dados.zqry_fnCONTA.SQL.Clear;
    dm_dados.zqry_fnCONTA.SQL.Add('select * from fnconta where numconta=:conta1 and codemp=:empcod');
    dm_dados.zqry_fnCONTA.ParamByName('conta1').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
    dm_Dados.zqry_FNCONTA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_fnCONTA.Open;
    if dm_dados.zqry_fnCONTA.IsEmpty then
    begin
       mostratelaaviso('N�o existem CONTAS cadastrados com essas informa��es','tab.: fnconta');
    end
    else
    begin
      btn_incluirboleto.enabled:=true;
      btn_BLOGClick(Sender);
    end;
  end;
end;
end;

procedure Tfrm_CON_RECEBER.cbxlayoutChange(Sender: TObject);
begin
  //ACBrBoletoFCFortes1.LayOut := TACBrBolLayOut(cbxLayOut.ItemIndex);
end;

procedure Tfrm_CON_RECEBER.btn_BUSCANOMEClick(Sender: TObject);
begin
dm_dados.zqry_fnreceber.close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codcli=:clicod and codemp=:empcod');
dm_dados.zqry_fnreceber.ParamByName('clicod').asinteger:=dm_dados.zqry_vdclientecodcli.asinteger;
dm_Dados.zqry_fnreceber.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_fnreceber.Open;
if dm_dados.zqry_fnreceber.IsEmpty then
 begin
  mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnreceber');
 end
end;

procedure Tfrm_CON_RECEBER.btn_BUSCARECEBERClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informa��es de Contas a Receber');
DM_DADOS.zqry_fnreceber.Close;
DM_DADOS.zqry_fnreceber.SQL.Clear;
DM_DADOS.zqry_fnreceber.sql.Add('SELECT * FROM FNRECEBER WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
DM_DADOS.zqry_fnreceber.ParamByName(parametro1).value:=instrucao+msk_pesquisa1.Text+instrucao;
if ENTRE='S' then DM_DADOS.zqry_FNRECEBER.ParamByName(parametro2).value:=instrucao+msk_pesquisa2.Text+instrucao;
DM_DADOS.zqry_FNRECEBER.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
DM_DADOS.zqry_FNRECEBER.Open;
if DM_DADOS.zqry_FNRECEBER.IsEmpty then
begin
  mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnreceber');
end;
{zqry_SALDODEVEDOR.Params.Clear;
zqry_SALDODEVEDOR.close;
zqry_SALDODEVEDOR.SQL.Clear;
zqry_SALDODEVEDOR.SQL.Add('select sum(vlrapagrec) as saldodevedor from fnreceber where codcli=:clicod and codemp=:empcod');
zqry_SALDODEVEDOR.ParamByName('clicod').asinteger:=dm_dados.zqry_FNRECEBERCODCLI.asinteger;
zqry_saldodevedor.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
fechatelaaguarde;
zqry_SALDODEVEDOR.Open;}
FechaTelaAguarde;
end;

procedure Tfrm_CON_RECEBER.btn_BUSCARECEBER_DATAClick(Sender: TObject);
begin
dm_dados.zqry_fnreceber.Params.Clear;
dm_dados.zqry_fnreceber.Close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.sql.Add('SELECT * FROM FNRECEBER WHERE CODEMP=:EMPCOD AND DATAREC BETWEEN :DTINI AND :DTFIM');//quotedstr(script);
dm_dados.zqry_fnreceber.ParamByName('DTINI').AsDate:=strtodate(msk_pesquisa1.Text);
dm_dados.zqry_fnreceber.ParamByName('DTFIM').asdate:=strtodate(msk_pesquisa2.Text);
dm_dados.zqry_fnreceber.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_fnreceber.Open;
if dm_dados.zqry_FNRECEBER.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: FNRECEBER');

end;

procedure Tfrm_CON_RECEBER.btn_BUSCAULTTITULOSClick(Sender: TObject);
begin
if dt_INICIO.Text = '' Then
begin
  DM_DADOS.zqry_ULTTITULO.Close;
  DM_DADOS.zqry_ULTTITULO.SQL.Clear;
  DM_DADOS.zqry_ulttitulo.SQL.Add('select fn.codrec,max(it.dtvencitrec), fn.vlrrec, vd.razcli from fnreceber fn');
  DM_DADOS.zqry_ulttitulo.SQL.Add('inner join fnitreceber it on fn.codrec=it.codrec');
  DM_DADOS.zqry_ulttitulo.SQL.Add('inner join vdcliente vd on fn.codcli=vd.codcli');
  DM_DADOS.zqry_ulttitulo.SQL.Add('where it.vlrpagoitrec=0.00 and fn.codemp=:empcod and fn.codfilial=1 and it.codemp=fn.codemp and vd.codemp=fn.codemp');
  DM_DADOS.zqry_ulttitulo.SQL.Add('group by fn.codrec,vd.razcli, fn.vlrrec');
  dm_Dados.zqry_ULTTITULO.SQL.Add('order by fn.codrec desc');
  dm_Dados.zqry_ulttitulo.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  DM_DADOS.zqry_ULTTITULO.Open;
  if DM_DADOS.zqry_ULTTITULO.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitreceber');
end
else
begin
  DM_DADOS.zqry_ULTTITULO.Close;
  DM_DADOS.zqry_ULTTITULO.SQL.Clear;
  DM_DADOS.zqry_ulttitulo.SQL.Add('select fn.codrec,max(it.dtvencitrec), fn.vlrrec, vd.razcli from fnreceber fn');
  DM_DADOS.zqry_ulttitulo.SQL.Add('inner join fnitreceber it on fn.codrec=it.codrec');
  DM_DADOS.zqry_ulttitulo.SQL.Add('inner join vdcliente vd on fn.codcli=vd.codcli');
  DM_DADOS.zqry_ulttitulo.SQL.Add('where it.vlrpagoitrec=0.00 and fn.codemp=:empcod and fn.codfilial=1 and it.codemp=fn.codemp and vd.codemp=fn.codemp');
  dm_Dados.zqry_ULTTITULO.SQL.Add('and it.dtvencitrec between :DTINICIO and :DTFIM');
  DM_DADOS.zqry_ulttitulo.SQL.Add('group by fn.codrec,vd.razcli, fn.vlrrec');
  dm_Dados.zqry_ULTTITULO.SQL.Add('order by fn.codrec desc');
  DM_DADOS.zqry_ULTTITULO.ParamByName('DTINICIO').AsDate:=strtodate(dt_INICIO.Text);
  DM_DADOS.zqry_ULTTITULO.ParamByName('DTFIM').AsDate:=strtodate(dt_FIM.Text);
  dm_Dados.zqry_ulttitulo.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  DM_DADOS.zqry_ULTTITULO.Open;
  if DM_DADOS.zqry_ULTTITULO.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitreceber');
end;
//dt_INICIO.Clear;
//dt_fim.Clear;
end;

procedure Tfrm_CON_RECEBER.btn_BUSCACODRECClick(Sender: TObject);
begin
mostratelaaguarde('Consultando valores');
dm_dados.zqry_fnreceber.close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_fnreceber.ParamByName('reccod').asinteger:=strtoint(msk_pesquisa1.Text);
dm_Dados.zqry_fnreceber.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_fnreceber.Open;
fechatelaaguarde;
if dm_dados.zqry_fnreceber.IsEmpty then
 begin
    mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnreceber');
 end
end;

procedure Tfrm_CON_RECEBER.btn_INCLUIRBOLETOClick(Sender: TObject);
begin
  ano:=     FormatDateTime('yy',Now);
  btn_preboleto.Enabled:=false;
  acbrboleto1.Cedente.Convenio:=dm_dados.zqry_FNITMODBOLETOCONVCOB.asstring;
if dm_dados.zqry_fncontanumcontabol.asstring='' then
begin
  mostratelaaviso('Favor selecionar o Sacado na caixa Superior','Veja tamb�m se est� cadastrado a Conta Banc�ria (Financeiro/Contas) para cr�dito dos boletos');
end
else
begin
  if MessageBox(HANDLE, 'Incluir todas as Parcelas ?'#13'Clique em Sim/Yes'#13'Para lan�amento Individual clique em N�o/No', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
  // Venda
  begin
    while not DM_DADOS.zqry_FNITRECEBER.eof do
    begin
      btn_INCLUIClick(Sender);
      DM_DADOS.zqry_FNITRECEBER.Next;
    end;
  end
  else
  begin
    btn_INCLUIClick(Sender);
  end;
end;
mostratelaaviso('T�TULO INCLU�DO COM SUCESSO!!!','Pode Incluir mais t�tulos caso deseje ou clique em Imprimir');
btn_imprimirboleto.enabled:=true;
end;

procedure Tfrm_CON_RECEBER.btn_IMPRIMIRBOLETOClick(Sender: TObject);
var
 Para, emaildest : String;
 CC: Tstrings;
begin
emaildest:=dm_Dados.zqry_FNRECEBER_MAILCLIENTE.AsString;
//showmessage(emaildest);
if dm_Dados.zqry_FNRECEBERCODBANCO.asstring='' then
  begin
   mostratelaaviso('T�TULO SEM INDICA��O DE BOLETO','tab.: fnreceber->codbanco');
  end
else
  begin
  if dm_Dados.zqry_FNRECEBERCODBANCO.asstring='' then mostratelaaviso('C�digo do Banco ausente ou informado incorretamente','tab: fnreceber->codbanco');
  ACBrBoleto1.Banco.Numero:=dm_Dados.zqry_FNRECEBERCODBANCO.asinteger;
  if dm_dados.zqry_fnbancodvbanco.IsNull then mostratelaaviso('D�gito do Banco ausente ou informado incorretamente','tab: fnbanco->codvbanco');
  ACBrBoleto1.banco.Digito:=dm_dados.zqry_FNBANCOdvbanco.asinteger;
  if dm_dados.zqry_FNBANCONOMEBANCO.asstring='' then mostratelaaviso('Nome do Banco  ausente ou informado incorretamente','tab: fnbanco->nomebanco' );
  ACBrBoleto1.banco.Nome:=dm_dados.zqry_FNBANCONOMEBANCO.asstring;
//  if dm_DADOS.zqry_FNRECEBERCODBANCO.AsString='756' then ACBrBoleto1.Banco.
  if dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring='' then mostratelaaviso('C�digo Conv�nio/Cedente  ausente ou informado incorretamente','tab: fnitmodboleto->convcob');
  ACBrBoleto1.Cedente.CodigoCedente:=removezeros(dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring);
  acbrboleto1.Cedente.Convenio:=removezeros(dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring);
  if dm_dados.zqry_FNCONTAAGENCIACONTA.asstring='' then mostratelaaviso('C�digo Ag�ncia ausente ou informado incorretamente','tab: fnconta->agenciaconta');
  acbrboleto1.Cedente.Agencia:=trim(dm_dados.zqry_FNCONTAAGENCIACONTA.asstring);
  if dm_dados.zqry_FNCONTADVAGENCIA.asstring='' then mostratelaaviso('D�gito Verificador da Ag�ncia ausente ou informado incorretamente. Caso n�o tenha coloque 0','tab: fnconta->dvagencia');
  acbrboleto1.Cedente.AgenciaDigito:=trim(dm_dados.zqry_FNCONTADVAGENCIA.asstring);
  if dm_dados.zqry_FNCONTANUMCONTABOL.asstring='' then mostratelaaviso('N�mero da Conta  ausente ou informado incorretamente','tab: fnconta->numcontabol');
  acbrboleto1.Cedente.Conta:=trim(dm_dados.zqry_FNCONTANUMCONTABOL.asstring);
  if dm_dados.zqry_FNCONTADVNUMCONTABOL.asstring='' then mostratelaaviso('D�gito Verificador da Conta  ausente ou informado incorretamente','tab: fnconta->dvnumcontabol');
  acbrboleto1.Cedente.ContaDigito:=trim(dm_dados.zqry_FNCONTADVNUMCONTABOL.asstring);
  //acbrboleto1.Cedente.TipoCarteira:=tctRegistrada;
  //acbrboleto1.Cedente.CaracTitulo:=tcSimples;
  if dm_dados.zqry_FNRECEBERCODBANCO.AsString='756' then acbrboleto1.LayoutRemessa:=c240;
  if dm_dados.zqry_fnrecebercodbanco.AsString='756' then acbrboleto1.cedente.Modalidade:='1';
  if dm_dados.zqry_FNRECEBERCODBANCO.asstring='033' then acbrboleto1.Cedente.Modalidade:='102';
//  if codcnab='240' then acbrboleto1.LayoutRemessa:=c240;
//  showmessage(codcnab);
  //acbrboleto1.Cedente.CaracTitulo:=tcVinculada;
  if dm_Dados.zqry_SGFILIALCNPJFILIAL.asstring='' then mostratelaaviso('CNPJ da Empresa Cedente  ausente ou informado incorretamente','tab: sgfilial->cnpjfilial');
  acbrboleto1.Cedente.CNPJCPF:=trim(dm_Dados.zqry_SGFILIALCNPJFILIAL.asstring);
  if dm_dados.zqry_SGFILIALRAZFILIAL.asstring='' then mostratelaaviso('Nome do Cedente  ausente ou informado incorretamente','tab: sgfilial->razfilial');
  acbrboleto1.Cedente.Nome:=dm_dados.zqry_SGFILIALRAZFILIAL.AsString;
//  acbrboleto1.Cedente.Nome:=dm_dados.zqry_SGFILIALRAZFILIAL.AsString+', '+trim(dm_Dados.zqry_SGFILIALENDFILIAL.asstring)+'-'#13+trim(dm_dados.zqry_SGFILIALNUMFILIAL.asstring)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.asstring)+' - '+trim(dm_Dados.zqry_SGFILIALCIDFILIAL.AsString)+'/'+trim(dm_dados.zqry_SGFILIALSIGLAUF.AsString);

   acbrboleto1.cedente.CodigoTransmissao:=dm_dados.zqry_FNCONTAAGENCIACONTA.asstring+dm_Dados.zqry_FNCONTADVAGENCIA.asstring+dm_dados.zqry_FNITMODBOLETOCONVCOB.asstring;
    try
    ACBrBoleto1.Imprimir;
    btn_GERAHTML.Enabled:=true;
    btn_GERAPDF.enabled:=true;
    btn_LIMPAR.Enabled:=true;
    if MessageBox(HANDLE, 'Deseja enviar no email do cliente?'#13'Clique em Sim'#13'Para n�o enviar clique em N�o', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin
      if emaildest<>'' then
      begin
        para:=emaildest;
        MostraTelaAguarde('Enviando Boleto no email '+para);
      end
      else
      begin
        para:=dm_dados.zqry_SGFILIALEMAILFILIAL.text;
        MostraTelaAguarde('Enviando Boleto no seu email cadastrado');
      end;
      CC:=TstringList.Create;
      try
//        CC.Add(dm_dados.zqry_SGFILIALEMAILFILIAL.asstring);    //especifique um email válido
       // if dm_dados.zqry_SGFILIALEMAILRESP.AsString<>'' then cc.Add(dm_Dados.zqry_SGFILIALEMAILRESP.asstring);
        ACBrMail1.Host := frm_prefacbr.edtSmtpHost.Text;
        ACBrMail1.Username := frm_prefacbr.edtSmtpUser.Text;
        ACBrMail1.Port := frm_prefacbr.edtSmtpPort.Text;
        ACBrMail1.Password := frm_prefacbr.edtSmtpPass.Text;
        ACBrMail1.SetSSL := true; // SSL - Conexão Segura
        ACBrMail1.SetTLS := false; // Auto TLS

        ACBrMail1.From := frm_prefacbr.edtSmtpUser.Text;
        ACBrMail1.FromName := trim(dm_dados.zqry_SGFILIALNOMEFILIAL.asstring) +' | IntegraERP';
        //showmessage(para);

       // ACBrMail1.AddAddress('israel.ipnet@gmail.com');
        ACBrMail1.SetSSL := frm_prefacbr.cbEmailSSL.Checked; // SSL - Conexão Segura
        ACBrMail1.SetTLS := frm_prefacbr.cbEmailSSL.Checked; // Auto TLS
        ACBrMail1.ReadingConfirmation := False; //Pede confirmação de leitura do email
        ACBrMail1.UseThread := False;           //Aguarda Envio do Email(não usa thread)
       // ACBrMail1.AddAttachment('boleto.pdf');
        //ACBrBoleto1.EnviarEmail( Para,'Aqui est�o seus boletos em formato PDF - '+dm_dados.zqry_SGFILIALNOMEFILIAL.asstring, nil , True); // Lista de anexos - TStrings
        ACBrBoleto1.EnviarEmail( Para,'Aqui est�o seus boletos em formato PDF - '+dm_dados.zqry_SGFILIALNOMEFILIAL.asstring, nil , True); // Lista de anexos - TStrings

        // acbrmail1.Send();

         except
        fechatelaaguarde;
      end;
      CC.Free;
      fechatelaaguarde;
    end
    else
    begin
      //fechatelaaguarde;
    end;
    //    fechatelaaguarde;
    //  btn_GERAREMESSA.Enabled:=true;
  except
    MessageDlg('Erro ao imprimir os boletos. Verifique!',mtWarning,[mbOK],0);
  end;
  end;
 // showmessage('GErar pdf');
btn_GERAPDFClick(Sender);
btn_GERAREMESSAClick(Sender);
btn_LIMPARClick(Sender);
dm_Dados.zqry_FNITRECEBER.First;
end;

procedure Tfrm_CON_RECEBER.btn_IMP_RELULTTIULOClick(Sender: TObject);
begin
//frm_RELULTTITULOS2.Show;
frm_REL_ULTTITULOS.RLReport1.Preview();
end;

procedure Tfrm_CON_RECEBER.btn_APPREMRETClick(Sender: TObject);
begin
dm_Dados.MEMORIA;
frm_dlg_appremret.show;
end;

procedure Tfrm_CON_RECEBER.btn_BLOGClick(Sender: TObject);
begin

image1.Picture.Assign(TBlobField(dm_dados.zqry_FNBANCO.FieldByName('imgbolbanco')));
end;

procedure Tfrm_CON_RECEBER.btn_BUSCACODCLIClick(Sender: TObject);
begin
mostratelaaguarde('Consultando valores');
dm_dados.zqry_fnreceber.close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codcli=:clicod and codemp=:empcod');
dm_dados.zqry_fnreceber.ParamByName('clicod').asinteger:=strtoint(msk_pesquisa1.Text);
dm_Dados.zqry_fnreceber.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_fnreceber.Open;
fechatelaaguarde;
if dm_dados.zqry_fnreceber.IsEmpty then
 begin
    mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnreceber');
 end
end;

procedure Tfrm_CON_RECEBER.btn_INCLUIClick(Sender: TObject);
var
numdocumento:string;
begin

  ACBrBoleto1.Cedente.FantasiaCedente := dm_dados.zqry_SGFILIALNOMEFILIAL.AsString;
  ACBrBoleto1.Cedente.Nome := dm_dados.zqry_SGFILIALRAZFILIAL.asstring;
  ACBrBoleto1.Cedente.Logradouro := dm_Dados.zqry_SGFILIALENDFILIAL.AsString+' ,'+dm_dados.zqry_SGFILIALNUMFILIAL.AsString;
  ACBrBoleto1.Cedente.Bairro := dm_dados.zqry_SGFILIALBAIRFILIAL.AsString;
  ACBrBoleto1.Cedente.Cidade := dm_Dados.zqry_SGFILIALCIDFILIAL.AsString;
  ACBrBoleto1.Cedente.CEP := dm_dados.zqry_SGFILIALCEPFILIAL.AsString;

//    frm_PRINCIPAL.StatusBar1.Panels[2].Text:='Inclui - Data';
    data :=dm_dados.zqry_fnitreceberdtvencitrec.AsDateTime+dm_dados.zqry_SGFILIALDIAS_ATRASO_BOLETO.asinteger;

    edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
    edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
    edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
    edt_dtprotesto.Text:=datetostr(dm_dados.zqry_fnitreceberdtvencitrec.AsDateTime+dm_Dados.zqry_SGFILIALDIAS_PROTESTO_BOLETO.asinteger);//dbtxt_dtvenc.Caption;
    codcart:= dm_dados.zqry_FNITRECEBERCODCARTCOB.asstring;
    codcnab:= dm_dados.zqry_fnitreceber_codcnab.asstring;
//    showmessage('Variavel '+codcnab+' Campo '+dm_dados.zqry_fnitreceber_codcnab.asstring);
    Titulo := ACBrBoleto1.CriarTituloNaLista;
//    frm_PRINCIPAL.StatusBar1.Panels[2].Text:='Inclui - NNum';

  //NNUM              :=ano+trim(dm_dados.zqry_FNITRECEBERcodrec.asstring+dm_dados.zqry_FNITRECEBERnparcitrec.asstring);
NNUM              :=trim(dm_dados.zqry_FNITRECEBERcodrec.asstring+dm_dados.zqry_FNITRECEBERnparcitrec.asstring);

    dm_dados.EXECUTASGINICONSP;

    dm_dados.zqry_FNITRECEBER.Edit;
    if frm_principal.tpnnum='D' then dm_Dados.zqry_FNITRECEBERNOSSONUMERO.AsString:=nnum;
    if frm_principal.tpnnum='S' then dm_dados.zqry_FNITRECEBERNOSSONUMERO.AsString:=dm_dados.zqry_FNITRECEBERSEQNOSSONUMERO.AsString;
   // showmessage('Nosso Numero '+ nnum+' Sequencia '+ dm_dados.zqry_FNITRECEBERSEQNOSSONUMERO.AsString);
    dm_Dados.zqry_FNITRECEBER.Post;

    if dm_Dados.zqry_FNRECEBERCODBANCO.asstring='237' then acbrboleto1.banco.TipoCobranca:=cobBradesco;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='748' then acbrboleto1.banco.TipoCobranca:=cobSicred;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='001' then acbrboleto1.banco.TipoCobranca:=cobBancoDoBrasil;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='756' then acbrboleto1.banco.TipoCobranca:=cobBancoob;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='341' then acbrboleto1.banco.TipoCobranca:=cobItau;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='033' then acbrboleto1.banco.TipoCobranca:=cobSantander;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='399' then acbrboleto1.banco.TipoCobranca:=cobHSBC;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='041' then acbrboleto1.banco.TipoCobranca:=cobBanrisul;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='021' then acbrboleto1.banco.TipoCobranca:=cobBanestes;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='004' then acbrboleto1.banco.TipoCobranca:=cobBancoDoNordeste;
    if dm_Dados.zqry_FNRECEBERcodbanco.asstring='104' then acbrboleto1.Banco.TipoCobranca:=cobCaixaEconomica;
    with Titulo do
    begin
        dm_Dados.zqry_vdvenda.params.clear;
        dm_Dados.zqry_vdvenda.close;
        dm_dados.zqry_VDVENDA.SQL.Clear;
        dm_Dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
        dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=dm_dados.zqry_FNRECEBERCODVENDA.AsInteger;
        dm_dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_dados.zqry_VDVENDA.Open;
        numdocumento:=dm_dados.zqry_VDVENDADOCVENDA.AsString;

      Vencimento        := dm_dados.zqry_FNITRECEBERDTVENCITREC.AsDateTime;
      DataDocumento     := dm_dados.zqry_FNITRECEBERDTITREC.AsDateTime;
      NumeroDocumento   := numdocumento+'/'+dm_dados.zqry_FNITRECEBERNPARCITREC.asstring;//+'/'+dm_Dados.zqry_FNITRECEBERCODREC.asstring+'-'+dm_Dados.zqry_FNITRECEBERNPARCITREC.AsString;
      EspecieDoc        := 'DM';
      //if cbxAceite.ItemIndex = 0 then Aceite := atSim else Aceite := atNao;
      //if cbxAceite.Text='' then Aceite := atNao;
        // Caixa Economica Federal
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='104' then
      begin
        if dm_dados.zqry_FNITRECEBERcodcartcob.asstring='14' then
        begin
          Codcart:='SR';
          //acbrboleto1.cedente.TipoCarteira:=tctSimples;
        end
        else
        begin
          codcart:='RG';
          //acbrboleto1.cedente.TipoCarteira:=tctRegistrada;
        end;
      end
      else
      begin
        Carteira := codcart;
      end;

      // banco do Nordeste
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='004' then carteira:='6';
     // banco Santander
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='033' then Carteira :='102' else Carteira := codcart;
      if dm_dados.zqry_FNRECEBERCODBANCO.AsString='756' then Carteira:='1';
      DataProcessamento := Now;
      if frm_principal.tpnnum='D' then  NossoNumero  := trim(dm_dados.zqry_FNITRECEBERcodrec.asstring+dm_dados.zqry_FNITRECEBERnparcitrec.asstring);
      if frm_principal.tpnnum='S' then  NossoNumero  := dm_dados.zqry_FNITRECEBERSEQNOSSONUMERO.AsString;

      ValorDocumento    := dm_Dados.zqry_FNITRECEBERvlritrec.asfloat;
      Sacado.NomeSacado := trim(dm_Dados.zqry_FNRECEBER_RAZCLIENTE.asstring);//+'-'+dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
      if dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring<>'' then documento:=dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring;
      if dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring<>'' then documento:=dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
      edtcpfcnpj.text:=dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
//        Sacado.CNPJCPF    := OnlyNumber(documento);
      Sacado.CNPJCPF    := dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
//      if dm_Dados.zqry_FNRECEBER_PESSOACLIENTE.AsString='J' then sacado.Pessoa:=pJuridica;
//      if DM_dados.zqry_FNRECEBER_PESSOACLIENTE.AsString='F' then sacado.Pessoa:=pFisica;
      Sacado.Logradouro := trim(dm_Dados.zqry_FNRECEBER_ENDCLIENTE.asstring);
      Sacado.Numero     := dm_Dados.zqry_FNRECEBER_NUMCLIENTE.asstring;
      Sacado.Bairro     := trim(dm_Dados.zqry_FNRECEBER_BAIRROCLIENTE.asstring);
      Sacado.Cidade     := trim(dm_Dados.zqry_FNRECEBER_CIDCLIENTE.asstring);
      Sacado.UF         := dm_Dados.zqry_FNRECEBER_UFCLIENTE.asstring;
      Sacado.CEP        := dm_Dados.zqry_FNRECEBER_CEPCLIENTE.asstring;
      if (edt_vlrabate.Text='') or (edt_vlrabate.text='0,00') then edt_vlrabate.Text:='0';
      ValorAbatimento   := strtocurr(edt_vlrabate.Text);
      LocalPagamento    := edt_localpagto.text;
      if (edt_vlrmora.Text='') or (edt_vlrabate.Text='0,00') then edt_vlrmora.Text:='0';
      ValorMoraJuros    := strtocurr(edt_vlrmora.text);
      if (edt_vlrdesc.text='') or (edt_vlrdesc.text='0,00') then edt_vlrdesc.Text:='0';
      ValorDesconto     := strtocurr(edt_vlrdesc.text);
      DataMulta         := strtodate(edt_dtmora.Text);
      DataMoraJuros     := strtodate(edt_dtmora.text);
      DataDesconto      := strtodate(edt_dtdesc.Text); //strtodate(dbtxt_dtvenc.caption);
      DataAbatimento    := strtodate(edt_dtabate.Text); //strtodate(dbtxt_dtvenc.caption);
      if DM_dADOS.zqry_SGFILIALDIAS_PROTESTO_BOLETO.VALUE>0 then DataProtesto      := strtodate(edt_dtprotesto.Text); //strtodate(dbtxt_dtvenc.Caption);
      PercentualMulta   := strtofloat(edt_percmulta.text);
      edt_mensagem.Text:=dm_Dados.zqry_SGFILIALmsg_boleto.AsString+' Multa '+edt_percmulta.text+'% e Juros '+dm_dados.zqry_SGFILIALTX_JUROS_BOLETO.asstring+'%';
      Mensagem.Text     := edt_mensagem.text;

      if cbOCORRENCIA.Text='Registrar' then OcorrenciaOriginal.Tipo := toRemessaRegistrar;
      if cbOCORRENCIA.Text='Baixar' then OcorrenciaOriginal.Tipo := toRemessaBaixar;
      if cbOCORRENCIA.Text='Protestar' then OcorrenciaOriginal.Tipo := toRemessaProtestar;
      if cbOCORRENCIA.Text='Sustar' then OcorrenciaOriginal.Tipo := toRemessaSustarProtesto;
      Instrucao1        := edt_instru1.text;
      Instrucao2        := edt_instru2.text;
    end;
end;

procedure Tfrm_CON_RECEBER.btn_BUSCAITRECEBERClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informa��es de Contas a Receber');
DM_DADOS.zqry_fnitreceber.Close;
DM_DADOS.zqry_fnitreceber.SQL.Clear;
DM_DADOS.zqry_fnitreceber.sql.Add('SELECT * FROM FNITRECEBER WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
DM_DADOS.zqry_fnitreceber.ParamByName(parametro1).value:=instrucao+msk_rec_pesquisa1.Text+instrucao;
if ENTRE='S' then DM_DADOS.zqry_FNITRECEBER.ParamByName(parametro2).value:=instrucao+msk_rec_pesquisa2.Text+instrucao;
DM_DADOS.zqry_FNITRECEBER.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
DM_DADOS.zqry_FNITRECEBER.Open;
if DM_DADOS.zqry_FNITRECEBER.IsEmpty then
begin
  mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitreceber');
end;
FechaTelaAguarde;

end;

procedure Tfrm_CON_RECEBER.btn_INCLUIRDIAClick(Sender: TObject);
var
  nomearq, dia,mes,nomemes,ano,hora,minuto,diretorio, numdocumento:string;
begin
dm_dados.MEMORIA;
dm_Dados.zqry_FNBANCO.Close;
dm_Dados.zqry_FNBANCO.Close;
dm_Dados.zqry_FNITMODBOLETO.Close;
dm_dados.zqry_FNCONTA.Close;
dm_Dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
dm_dados.zqry_VDVENDA.Close;
mostratelaaguarde('PODE DEMORAR ALGUNS INSTANTES');
dm_Dados.zqry_FNBANCO.Close;
dm_dados.zqry_FNBANCO.close;
dm_dados.zqry_FNBANCO.SQL.Clear;
dm_dados.zqry_FNBANCO.SQL.Add('select * from fnbanco where codbanco=:bancocod and codemp=:empcod');
dm_dados.zqry_FNBANCO.ParamByName('bancocod').value:=edt_REMDIA_CODBANCO.Text;
dm_dados.zqry_FNBANCO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_FNBANCO.open;
if dm_dados.zqry_FNBANCO.isempty  then
begin
  fechatelaaguarde;
  mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnbanco');
end
else
begin
  dm_dados.zqry_FNITMODBOLETO.close;
  dm_dados.zqry_FNITMODBOLETO.SQL.Clear;
  dm_dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto where numconta=:conta and codemp=:empcod');
  dm_dados.zqry_FNITMODBOLETO.ParamByName('conta').asstring:=edt_REMDIA_CONTA.TEXT;
  dm_Dados.zqry_FNITMODBOLETO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_fnITMODBOLETO.Open;
  if dm_dados.zqry_fnITMODBOLETO.IsEmpty then
  begin
    fechatelaaguarde;
    mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitmodboleto');
  end
  else
  begin
    Dm_dados.zqry_FNCONTA.close;
    dm_dados.zqry_fnCONTA.SQL.Clear;
    dm_dados.zqry_fnCONTA.SQL.Add('select * from fnconta where numconta=:conta1 and codemp=:empcod');
    dm_dados.zqry_fnCONTA.ParamByName('conta1').Value:=EDT_REMDIA_CONTA.TEXT;
    dm_Dados.zqry_FNCONTA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_fnCONTA.Open;
    if dm_dados.zqry_fnCONTA.IsEmpty then
    begin
      fechatelaaguarde;
      mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnconta');
    end
    else
    begin
      dm_Dados.zqry_FNITRECEBER.Close;
      dm_Dados.zqry_FNITRECEBER.SQL.Clear;
      dm_Dados.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where codbanco=:banco and dtitrec =:data and codemp=:empcod');
      dm_Dados.zqry_FNITRECEBER.ParamByName('banco').value:=edt_REMDIA_CODBANCO.text;
      dm_Dados.zqry_FNITRECEBER.ParamByName('data').AsDate:=strtodate(edt_REMDIA_DATA.Text);
      dm_Dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_Dados.zqry_FNITRECEBER.Open;
      ano:=     FormatDateTime('yy',Now);
      btn_preboleto.Enabled:=false;
      acbrboleto1.Cedente.Convenio:=dm_dados.zqry_FNITMODBOLETOCONVCOB.asstring;
      dm_Dados.zqry_FNITRECEBER.First;
      while not DM_DADOS.zqry_FNITRECEBER.eof do
      begin

      data :=dm_dados.zqry_FNITRECEBERdtvencitrec.AsDateTime+dm_dados.zqry_SGFILIALDIAS_ATRASO_BOLETO.asinteger;
      edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
      edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
      edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
      edt_dtprotesto.Text:=datetostr(dm_dados.zqry_FNITRECEBERdtvencitrec.AsDateTime+dm_Dados.zqry_SGFILIALDIAS_PROTESTO_BOLETO.asinteger);//dbtxt_dtvenc.Caption;
      codcart:= dm_dados.zqry_FNITRECEBERCODCARTCOB.asstring;
      Titulo := ACBrBoleto1.CriarTituloNaLista;
      NNUM              :=ano+trim(dm_dados.zqry_FNITRECEBERcodrec.asstring+dm_dados.zqry_FNITRECEBERnparcitrec.asstring);
      dm_dados.EXECUTASGINICONSP;
      dm_dados.zqry_FNITRECEBER.Edit;
      if frm_principal.tpnnum='D' then dm_Dados.zqry_FNITRECEBERNOSSONUMERO.AsString:=nnum;
      if frm_principal.tpnnum='S' then dm_Dados.zqry_FNITRECEBERNOSSONUMERO.AsString:=dm_Dados.zqry_FNITRECEBERSEQNOSSONUMERO.AsString;
      dm_Dados.zqry_FNITRECEBER.Post;

      dm_Dados.zqry_FNRECEBER.Close;
      dm_Dados.Zqry_fnreceber.sql.clear;
      dm_dados.Zqry_fnreceber.sql.add('select * from fnreceber where codrec=:reccod and codemp=:empcod');
      dm_dados.Zqry_fnreceber.parambyname('reccod').asinteger:=dm_dados.zqry_FNITRECEBERCODREC.asinteger;
      dm_dados.Zqry_fnreceber.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_FNRECEBER.Open;

      if dm_Dados.zqry_FNRECEBERCODBANCO.asstring='237' then acbrboleto1.banco.TipoCobranca:=cobBradesco;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='748' then acbrboleto1.banco.TipoCobranca:=cobSicred;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='001' then acbrboleto1.banco.TipoCobranca:=cobBancoDoBrasil;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='756' then acbrboleto1.banco.TipoCobranca:=cobBancoob;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='341' then acbrboleto1.banco.TipoCobranca:=cobItau;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='033' then acbrboleto1.banco.TipoCobranca:=cobSantander;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='399' then acbrboleto1.banco.TipoCobranca:=cobHSBC;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='041' then acbrboleto1.banco.TipoCobranca:=cobBanrisul;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='021' then acbrboleto1.banco.TipoCobranca:=cobBanestes;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='004' then acbrboleto1.banco.TipoCobranca:=cobBancoDoNordeste;
      if dm_Dados.zqry_FNRECEBERcodbanco.asstring='104' then acbrboleto1.Banco.TipoCobranca:=cobCaixaEconomica;
      with Titulo do
      begin
        Vencimento        := dm_dados.zqry_FNITRECEBERDTVENCITREC.AsDateTime;
        DataDocumento     := dm_dados.zqry_FNITRECEBERDTITREC.AsDateTime;
        dm_Dados.zqry_vdvenda.params.clear;
        dm_Dados.zqry_vdvenda.close;
        dm_dados.zqry_VDVENDA.SQL.Clear;
        dm_Dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
        dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=dm_dados.zqry_FNRECEBERCODVENDA.AsInteger;
        dm_dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_dados.zqry_VDVENDA.Open;
        numdocumento:=dm_Dados.zqry_VDVENDADOCVENDA.AsString;
        NumeroDocumento   := trim(numdocumento)+'/'+dm_dados.zqry_FNITRECEBERNPARCITREC.asstring;//+'/'+dm_Dados.zqry_FNITRECEBERCODREC.asstring+'-'+dm_Dados.zqry_FNITRECEBERNPARCITREC.AsString;
        EspecieDoc        := 'DM';
        //if cbxAceite.ItemIndex = 0 then Aceite := atSim else Aceite := atNao;
        //if cbxAceite.Text='' then Aceite := atNao;
          // Caixa Economica Federal
        if dm_Dados.zqry_FNRECEBERcodbanco.asstring='104' then
        begin
          if dm_dados.zqry_FNITRECEBERcodcartcob.asstring='14' then
          begin
            Codcart:='SR';
          //acbrboleto1.cedente.TipoCarteira:=tctSimples;
          end
          else
          begin
            codcart:='RG';
          //acbrboleto1.cedente.TipoCarteira:=tctRegistrada;
          end;
        end
        else
        begin
          Carteira := codcart;
        end;

      // banco do Nordeste
        if dm_Dados.zqry_FNRECEBERcodbanco.asstring='004' then carteira:='4';
      // banco Santander
        if dm_Dados.zqry_FNRECEBERcodbanco.asstring='033' then Carteira :='102' else Carteira := codcart;
        DataProcessamento := Now;
        if frm_principal.tpnnum='D' then NossoNumero      := trim(dm_dados.zqry_FNITRECEBERcodrec.asstring+dm_dados.zqry_FNITRECEBERnparcitrec.asstring);
        if frm_principal.tpnnum='S' then NossoNumero      := dm_dados.zqry_FNITRECEBERSEQNOSSONUMERO.asstring;
        ValorDocumento    := dm_Dados.zqry_FNITRECEBERvlritrec.asfloat;
        Sacado.NomeSacado := trim(dm_Dados.zqry_FNRECEBER_RAZCLIENTE.asstring);//+'-'+dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
        if dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring<>'' then documento:=dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring;
        if dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring<>'' then documento:=dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
        edtcpfcnpj.text:=dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
  //        Sacado.CNPJCPF    := OnlyNumber(documento);
        Sacado.CNPJCPF    := dm_Dados.zqry_FNRECEBER_CNPJCLIENTE.asstring+dm_Dados.zqry_FNRECEBER_CPFCLIENTE.asstring;
       // if dm_Dados.zqry_FNRECEBER_PESSOACLIENTE.AsString='J' then sacado.Pessoa:=pJuridica;
       // if DM_dados.zqry_FNRECEBER_PESSOACLIENTE.AsString='F' then sacado.Pessoa:=pFisica;
        Sacado.Logradouro := trim(dm_Dados.zqry_FNRECEBER_ENDCLIENTE.asstring);
        Sacado.Numero     := dm_Dados.zqry_FNRECEBER_NUMCLIENTE.asstring;
        Sacado.Bairro     := trim(dm_Dados.zqry_FNRECEBER_BAIRROCLIENTE.asstring);
        Sacado.Cidade     := trim(dm_Dados.zqry_FNRECEBER_CIDCLIENTE.asstring);
        Sacado.UF         := dm_Dados.zqry_FNRECEBER_UFCLIENTE.asstring;
        Sacado.CEP        := dm_Dados.zqry_FNRECEBER_CEPCLIENTE.asstring;
        ValorAbatimento   := strtocurr(edt_vlrabate.Text);
        LocalPagamento    := edt_localpagto.text;
        ValorMoraJuros    := strtocurr(edt_vlrmora.text);
        ValorDesconto     := strtocurr(edt_vlrdesc.text);
        DataMoraJuros     := strtodate(edt_dtmora.text);
        DataDesconto      := strtodate(edt_dtdesc.Text); //strtodate(dbtxt_dtvenc.caption);
        DataAbatimento    := strtodate(edt_dtabate.Text); //strtodate(dbtxt_dtvenc.caption);
        if DM_dADOS.zqry_SGFILIALDIAS_PROTESTO_BOLETO.VALUE>0 then DataProtesto      := strtodate(edt_dtprotesto.Text); //strtodate(dbtxt_dtvenc.Caption);
        PercentualMulta   := strtofloat(edt_percmulta.text);
        edt_mensagem.Text:=dm_Dados.zqry_SGFILIALmsg_boleto.AsString+' Multa '+edt_percmulta.text+'% e Juros '+dm_dados.zqry_SGFILIALTX_JUROS_BOLETO.asstring+'%';
        Mensagem.Text     := edt_mensagem.text;

        if cbOCORRENCIA.Text='Registrar' then OcorrenciaOriginal.Tipo := toRemessaRegistrar;
        if cbOCORRENCIA.Text='Baixar' then OcorrenciaOriginal.Tipo := toRemessaBaixar;
        if cbOCORRENCIA.Text='Protestar' then OcorrenciaOriginal.Tipo := toRemessaProtestar;
        if cbOCORRENCIA.Text='Sustar' then OcorrenciaOriginal.Tipo := toRemessaSustarProtesto;
        Instrucao1        := edt_instru1.text;
        Instrucao2        := edt_instru2.text;
      end;
      dm_dados.zqry_FNITRECEBER.Next;
  end;
  fechatelaaguarde;

  btn_imprimirboleto.enabled:=true;
  if dm_Dados.zqry_FNRECEBERCODBANCO.asstring='' then mostratelaaviso('C�digo do Banco ausente ou informado incorretamente','tab: fnreceber->cobanco');
  ACBrBoleto1.Banco.Numero:=dm_Dados.zqry_FNRECEBERCODBANCO.asinteger;
  if dm_dados.zqry_FNBANCOdvbanco.IsNull then mostratelaaviso('D�gito do Banco ausente ou informado incorretamente','tab: fnbanco->codvbanco');
  ACBrBoleto1.banco.Digito:=dm_dados.zqry_FNBANCOdvbanco.asinteger;
  if dm_dados.zqry_FNBANCONOMEBANCO.asstring='' then mostratelaaviso('Nome do Banco  ausente ou informado incorretamente','tab: fnbanco->nomebanco');
  ACBrBoleto1.banco.Nome:=dm_dados.zqry_FNBANCONOMEBANCO.asstring;
  if dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring='' then mostratelaaviso('C�digo Conv�nio/Cedente  ausente ou informado incorretamente','tab: fnitmodboleto->convcob');
  ACBrBoleto1.Cedente.CodigoCedente:=removezeros(dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring);
  acbrboleto1.Cedente.Convenio:=removezeros(dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring);
  if dm_dados.zqry_FNCONTAAGENCIACONTA.asstring='' then mostratelaaviso('C�digo Ag�ncia ausente ou informado incorretamente','tab: fnconta->agenciaconta');
  acbrboleto1.Cedente.Agencia:=trim(dm_dados.zqry_FNCONTAAGENCIACONTA.asstring);
  if dm_dados.zqry_FNCONTADVAGENCIA.asstring='' then mostratelaaviso('D�gito Verificador da Ag�ncia ausente ou informado incorretamente. Caso n�o tenha coloque 0','tab: fnconta->dvagencia');
  acbrboleto1.Cedente.AgenciaDigito:=trim(dm_dados.zqry_FNCONTADVAGENCIA.asstring);
  if dm_dados.zqry_FNCONTANUMCONTABOL.asstring='' then mostratelaaviso('N�mero da Conta  ausente ou informado incorretamente','tab: fnconta->numcontabol');
  acbrboleto1.Cedente.Conta:=trim(dm_dados.zqry_FNCONTANUMCONTABOL.asstring);
  if dm_dados.zqry_FNCONTADVNUMCONTABOL.asstring='' then mostratelaaviso('D�gito Verificador da Conta  ausente ou informado incorretamente','tab: fnconta->dvnumcontabol');
  acbrboleto1.Cedente.ContaDigito:=trim(dm_dados.zqry_FNCONTADVNUMCONTABOL.asstring);
  //acbrboleto1.Cedente.TipoCarteira:=tctRegistrada;
  //acbrboleto1.Cedente.CaracTitulo:=tcSimples;
  if dm_Dados.zqry_SGFILIALCNPJFILIAL.asstring='' then mostratelaaviso('CNPJ da Empresa Cedente  ausente ou informado incorretamente','tab: sgfilial->cnpjfilial');
  acbrboleto1.Cedente.CNPJCPF:=trim(dm_Dados.zqry_SGFILIALCNPJFILIAL.asstring);
  if dm_dados.zqry_SGFILIALRAZFILIAL.asstring='' then mostratelaaviso('Nome do Cedente  ausente ou informado incorretamente','tab: sgfilial->razfilial');
  acbrboleto1.Cedente.Nome:=dm_dados.zqry_SGFILIALRAZFILIAL.AsString;
  if dm_dados.zqry_FNRECEBERCODBANCO.asstring='033' then acbrboleto1.Cedente.Modalidade:='102';
   acbrboleto1.cedente.CodigoTransmissao:=dm_dados.zqry_FNCONTAAGENCIACONTA.asstring+dm_Dados.zqry_FNCONTADVAGENCIA.asstring+dm_dados.zqry_FNITMODBOLETOCONVCOB.asstring;
    try
    ACBrBoleto1.Imprimir;
    btn_GERAHTML.Enabled:=true;
    btn_GERAPDF.enabled:=true;
    btn_LIMPAR.Enabled:=true;
    btn_GERAREMESSA.Enabled:=true;
  except
    MessageDlg('Erro ao imprimir os boletos. Verifique!',mtWarning,[mbOK],0);
  end;
  end;

if dm_dados.zqry_FNBANCOCODBANCO.Value<>'748' then
begin
  nomearq:='ALLe';
  dia:=     FormatDateTime('dd',Now);
  mes:=     FormatDateTime('mm',Now);
  ano:=     FormatDateTime('yy',Now);
  hora:=    FormatDateTime('hh',Now);
  minuto:=  FormatDateTime('nn',Now);
  diretorio:=ano+mes+dia;
end
else
begin
  nomearq:=removezeros(dm_Dados.zqry_FNITMODBOLETOCONVCOB.asstring);
  dia:=     FormatDateTime('d',Now);
  mes:=     FormatDateTime('m',Now);
  if mes<='9' then nomemes:=mes;
  if mes='10' then nomemes:='O';
  if mes='11' then nomemes:='N';
  if mes='12' then nomemes:='D';
  ano:=     FormatDateTime('yy',Now);
  hora:=    FormatDateTime('hh',Now);
  minuto:=  FormatDateTime('nn',Now);
  diretorio:=ano+mes+dia;
end;
mostratelaaguarde('Gerando Arquivo Remessa na pasta c:\integra\remessa');
try
  if not DirectoryExists('..\remessa\'+diretorio) then ForceDirectories('..\remessa\'+diretorio);
  acbrboleto1.DirArqRemessa:='..\remessa\'+diretorio;
  if dm_dados.zqry_FNBANCOCODBANCO.ASSTRING='748'  then acbrboleto1.NomeArqRemessa:=nomearq+nomemes+dia+'.crm';
  if dm_Dados.zqry_FNBANCOCODBANCO.ASSTRING<>'748' then acbrboleto1.NomeArqRemessa:=nomearq+mes+dia+'.txt';//+dayof(date);
  if fileexists(nomearq+mes+dia+'.txt') then
  begin
    deletefile(nomearq+mes+dia+'.txt');
  end;
    if fileexists(nomearq+nomemes+dia+'.crm') then
  begin
    deletefile(nomearq+nomemes+dia+'.crm');
  end;

  ACBrBoleto1.GerarRemessa(1);
  if dm_dados.zqry_FNBANCOcodbanco.AsString='748' then
  begin
    mostratelaaviso('ARQUIVO GERADO COM SUCESSO'#13'c:\integra\remessa\'+diretorio+'\'+nomearq+mes+dia+'.crm','c:\integra\remessa\'+diretorio+'\'+nomearq+mes+dia+'.crm');
  end
  else
  begin
    mostratelaaviso('ARQUIVO GERADO COM SUCESSO'#13'c:\integra\remessa\'+diretorio+'\'+nomearq+mes+dia+'.txt','c:\integra\remessa\'+diretorio+'\'+nomearq+mes+dia+'.txt');
  end;
except
  fechatelaaguarde;
end;
mostratelaaviso('TODOS TITULOS INCLU�DOS : Dia '+edt_REMDIA_DATA.text,'');
fechatelaaguarde;
btn_LIMPARClick(Sender);
dm_Dados.zqry_FNITRECEBER.First;
end;
end;
//mostratelaaviso('REFAZENDO AMBIENTE DE PESQUISA','Limpando campos e Fechando Conex�es');
acbrboleto1.ListadeBoletos.Clear;
btn_PREBOLETO.Enabled:=false;
btn_INCLUIRBOLETO.Enabled:=false;
btn_IMPRIMIRBOLETO.Enabled:=false;
edt_dtmora.clear;//dbtxt_dtvenc.caption;
edt_dtdesc.clear;//dbtxt_dtvenc.caption;
edt_dtabate.clear;//dbtxt_dtvenc.caption;
edt_dtprotesto.clear;
edt_vlrmora.clear;
edt_percmulta.clear;
edt_mensagem.Clear;
Image1.Picture:=nil;
edt_REMDIA_CODBANCO.Clear;
edt_REMDIA_CONTA.Clear;
edt_REMDIA_DATA.Clear;
rg_CONRECEBER.ItemIndex := -1;
rg_CONITRECEBER.ItemIndex:= -1;
dm_Dados.zqry_FNBANCO.Close;
dm_Dados.zqry_FNITMODBOLETO.Close;
dm_dados.Zqry_FNCONTA.Close;
dm_Dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
dm_dados.zqry_VDVENDA.Close;
dm_dados.MEMORIA;
end;


procedure Tfrm_CON_RECEBER.BitBtn3Click(Sender: TObject);
begin
// CHECA SEQUENCIA
dm_Dados.zqry_sgsequencia.Close;
dm_dados.zqry_sgsequencia.sql.Clear;
dm_Dados.zqry_sgsequencia.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia.sql.add('where sgtab=:buscanf');
dm_Dados.zqry_sgsequencia.ParamByName('buscanf').Value:='NF';
dm_dados.zqry_sgsequencia.open;
if dm_dados.zqry_sgsequencia.IsEmpty then
begin
mostratelaaviso('Sequ�ncia de Notas Fiscais n�o cadastradas','Verifique seu �ltimo n�mero de Nota emitido e insira o pr�ximo na aba seq�encia');
dm_dados.zqry_SGSEQUENCIA.Append;
dm_dados.zqry_SGSEQUENCIACODEMP.Value:=dm_dados.zqry_SGFILIALCODEMP.Value;
dm_dados.zqry_SGSEQUENCIACODFILIAL.Value:=DM_dADOS.zqry_SGFILIALCODFILIAL.Value;
dm_dados.zqry_SGSEQUENCIASGTAB.Value:='NF';
dm_Dados.zqry_SGSEQUENCIANROSEQ.Value:=1;
DM_dados.zqry_SGSEQUENCIADTINS.Value:=date;
dm_dados.zqry_SGSEQUENCIAHINS.Value:=time;
dm_Dados.zqry_SGSEQUENCIAIDUSUINS.Value:='sysdba';
dm_Dados.zqry_SGSEQUENCIADTALT.Value:=date;
dm_Dados.zqry_SGSEQUENCIAHALT.Value:=time;
dm_dados.zqry_SGSEQUENCIAIDUSUALT.Value:='sysdba';
dm_dados.zqry_sgsequencia.post;
dm_dados.zqry_sgsequencia.Close;
dm_dados.zqry_SGSEQUENCIA.Open;
end;
dm_dados.zqry_FNRECEBER.Close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber');
dm_Dados.zqry_fnreceber.SQL.Add('where datarec=:dtrec and codbanco<>:banco');
dm_dados.zqry_fnreceber.ParamByName('dtrec').Value:=DateToStr(date);
dm_dados.zqry_fnreceber.ParamByName('banco').Value:='';
dm_dados.zqry_FNRECEBER.Open;

end;

procedure Tfrm_CON_RECEBER.btn_BUSCAEMISSAOClick(Sender: TObject);
begin
mostratelaaguarde('Consultando valores');
dm_dados.zqry_FNRECEBER.Close;
dm_dados.zqry_fnreceber.SQL.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where datarec between :dtini and :dtfim '{and codbanco<>:banco'});
dm_dados.zqry_fnreceber.ParamByName('dtini').Value:=strtodate(msk_pesquisa1.Text);
dm_Dados.zqry_fnreceber.ParamByName('dtfim').Value:=strtodate(msk_pesquisa2.Text);
dm_dados.zqry_FNRECEBER.Open;
fechatelaaguarde;
if dm_dados.zqry_FNRECEBER.IsEmpty then
 begin
   mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnreceber');
 end

end;

procedure Tfrm_CON_RECEBER.btn_GERAHTMLClick(Sender: TObject);
begin
   ACBrBoleto1.ACBrBoletoFC.NomeArquivo := ExtractFilePath(Application.ExeName)+dm_dados.zqry_FNRECEBER_NOMECLIENTE.ASSTRING+'.html';
   ACBrBoleto1.GerarHTML;

end;

procedure Tfrm_CON_RECEBER.btn_GERAPDFClick(Sender: TObject);
begin
 ACBrBoleto1.GerarPDF;
end;

procedure Tfrm_CON_RECEBER.btn_GERAREMESSAClick(Sender: TObject);
var
  nomearq, dia,mes,ano,hora,minuto,rec,diretorio:string;
begin
rec:=dm_dados.zqry_FNRECEBERCODREC.Asstring;
nomearq:='e';
dia:=     FormatDateTime('dd',Now);
mes:=     FormatDateTime('mm',Now);
ano:=     FormatDateTime('yy',Now);
hora:=    FormatDateTime('hh',Now);
minuto:=  FormatDateTime('nn',Now);
diretorio:=ano+mes+dia;
mostratelaaguarde('Gerando Arquivo Remessa na pasta c:\integra\remessa');
try
  if not DirectoryExists('..\remessa\'+diretorio) then ForceDirectories('..\remessa\'+diretorio);
  acbrboleto1.DirArqRemessa:='..\remessa\'+diretorio;
  acbrboleto1.NomeArqRemessa:=rec+nomearq+mes+dia+'.txt';//+dayof(date);
  if fileexists(rec+nomearq+mes+dia+'.txt') then
  begin
    deletefile(rec+nomearq+mes+dia+'.txt');
  end;

  ACBrBoleto1.GerarRemessa(1);
    mostratelaaviso('ARQUIVO GERADO COM SUCESSO'#13'Pasta c:\integra\remessa\'+diretorio+'\'+rec+nomearq+mes+dia+'.txt','Pasta c:\integra\remessa\'+diretorio+'\'+rec+nomearq+mes+dia+'.txt');
except
  fechatelaaguarde;
end;
fechatelaaguarde;
end;

procedure Tfrm_CON_RECEBER.btn_LIMPARClick(Sender: TObject);
begin
  acbrboleto1.ListadeBoletos.Clear;
  btn_PREBOLETO.Enabled:=false;
  btn_INCLUIRBOLETO.Enabled:=false;
  btn_IMPRIMIRBOLETO.Enabled:=false;
  edt_dtmora.clear;//dbtxt_dtvenc.caption;
  edt_dtdesc.clear;//dbtxt_dtvenc.caption;
  edt_dtabate.clear;//dbtxt_dtvenc.caption;
  edt_dtprotesto.clear;
  edt_vlrmora.clear;
  edt_percmulta.clear;
  edt_mensagem.Clear;
  edt_dtmora.Text:=datetostr(date);
  edt_dtabate.Text:=datetostr(date);
  edt_dtdesc.Text:=datetostr(date);
  edt_vlrmora.Text:='0,00';
  edt_vlrdesc.Text:='0,00';
  edt_vlrabate.Text:='0,00';
  Image1.Picture:=nil;
  dm_dados.MEMORIA;
end;

procedure Tfrm_CON_RECEBER.btn_RECIBOClick(Sender: TObject);
begin
if MessageBox(HANDLE, 'Deseja Imprimir em Formato Reduzido?', 'Aviso', MB_YESNO + MB_ICONQUESTION) = idyes then
begin
  frm_rel_recibo90.rlreport1.preview;
end
else
begin
  frm_rel_recibo.rlreport1.preview;
end;
end;

procedure Tfrm_CON_RECEBER.db_BOL_RECEBERDblClick(Sender: TObject);
begin
mostratelaaguarde('Consulta Vendas pelo C�digo da Venda');
dm_dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_dados.zqry_Vdvenda.sql.add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
dm_dados.zqry_vdvenda.parambyname('vendacod').asinteger:=dm_dados.zqry_fnrecebercodvenda.asinteger;
dm_dados.zqry_vdvenda.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
fechatelaaguarde;
dm_dados.zqry_VDVENDA.Open;


mostratelaaguarde('Consulta Parcelamento da Contas a Receber');
dm_dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.SQL.Clear;
dm_dados.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsInteger:=dm_Dados.zqry_FNRECEBERCODREC.AsInteger;
dm_DAdos.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
fechatelaaguarde;
dm_dados.zqry_FNITRECEBER.Open;

//end;
mostratelaaguarde('Consulta Contas Banc�rias com permiss�o para Emitir Boletos');
dm_dados.zqry_FNCONTA.close;
dm_dados.zqry_fnCONTA.SQL.Clear;
dm_dados.zqry_fnCONTA.SQL.Add('select * from fnconta');
dm_Dados.zqry_fnCONTA.SQL.Add('where numconta=:conta1');
dm_dados.zqry_fnCONTA.ParamByName('conta1').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
fechatelaaguarde;
dm_dados.zqry_fnCONTA.Open;
if dm_dados.zqry_fnCONTA.IsEmpty then
 begin
   mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnconta');
 end;

//
mostratelaaguarde('Consulta Modelos de Boleto para a Conta Banc�ria informada');
dm_dados.zqry_FNITMODBOLETO.close;
dm_dados.zqry_FNITMODBOLETO.SQL.Clear;
dm_dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto where numconta=:conta');
dm_dados.zqry_FNITMODBOLETO.ParamByName('conta').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
fechatelaaguarde;
dm_dados.zqry_fnITMODBOLETO.Open;
if dm_dados.zqry_fnITMODBOLETO.IsEmpty then
 begin
   mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitmodboleto | Conta '+dm_dados.zqry_FNRECEBERNUMCONTA.asstring);
 end;
//
mostratelaaguarde('Consulta Saldo Devedor para este Cliente');
zqry_SALDODEVEDOR.Params.Clear;
zqry_SALDODEVEDOR.close;
zqry_SALDODEVEDOR.SQL.Clear;
zqry_SALDODEVEDOR.SQL.Add('select sum(vlrapagrec) as saldodevedor from fnreceber where codcli=:clicod and codemp=:empcod');
zqry_SALDODEVEDOR.ParamByName('clicod').asinteger:=dm_dados.zqry_FNRECEBERCODCLI.asinteger;
zqry_saldodevedor.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
fechatelaaguarde;
zqry_SALDODEVEDOR.Open;
if zqry_SALDODEVEDOR.IsEmpty then
 begin
   mostratelaaviso('N�o h� saldo devedor para este cliente','tab.: saldodevedor | Conta '+dm_dados.zqry_FNRECEBERcodcli.asstring);
 end;
//
end;

procedure Tfrm_CON_RECEBER.db_BOL_RECEBERKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if dm_dados.zqry_FNITRECEBERVLRPAGOITREC.Value=dm_Dados.zqry_FNRECEBERVLRREC.value then
  begin
    lbl_informa.Caption:='';
    lbl_informa.Caption:='T�TULO QUITADO INTEGRALMENTE';
  end;
if dm_dados.zqry_FNITRECEBERVLRPAGOITREC.Value>0 then
  begin
    lbl_informa.Caption:='';
    lbl_informa.Caption:='T�TULO QUITADO MAS N�O CONSTA QUITA��O INTEGRAL';
  end;
if dm_dados.zqry_FNITRECEBERVLRPAGOITREC.Value=0 then
  begin
    lbl_informa.Caption:='';
  end;
mostratelaaguarde('Consulta Modelos de Boleto para a Conta Banc�ria informada');
dm_dados.zqry_FNITMODBOLETO.close;
dm_dados.zqry_FNITMODBOLETO.SQL.Clear;
dm_dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto');
dm_Dados.zqry_FNITMODBOLETO.SQL.Add('where numconta=:conta');
dm_dados.zqry_FNITMODBOLETO.ParamByName('conta').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
fechatelaaguarde;
dm_dados.zqry_fnITMODBOLETO.Open;
if dm_dados.zqry_fnITMODBOLETO.IsEmpty then
 begin
   mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnitmodboleto');
 end;
////
mostratelaaguarde('Consulta Contas Banc�rias com permiss�o para Emitir Boletos');
dm_dados.zqry_FNCONTA.close;
dm_dados.zqry_fnCONTA.SQL.Clear;
dm_dados.zqry_fnCONTA.SQL.Add('select * from fnconta');
dm_Dados.zqry_fnCONTA.SQL.Add('where numconta=:conta1');
dm_dados.zqry_fnCONTA.ParamByName('conta1').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
fechatelaaguarde;
dm_dados.zqry_fnCONTA.Open;
if dm_dados.zqry_fnCONTA.IsEmpty then
 begin
   mostratelaaviso('Nada localizado com base nas informa��es','tab.: fnconta');
 end;
 edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtprotesto.Text:=datetostr(data);//dbtxt_dtvenc.Caption;
// edt_mensagem.text:=dbtxt_obs.caption;
end;

procedure Tfrm_CON_RECEBER.db_REC_ITRECEBERDblClick(Sender: TObject);
begin
mostratelaaguarde('Consulta Vendas pelo C�digo do Recebimento');
dm_dados.zqry_fnreceber.close;
dm_Dados.zqry_fnreceber.sql.clear;
dm_dados.zqry_fnreceber.sql.add('select * from fnreceber where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_fnreceber.parambyname('reccod').asinteger:=dm_dados.zqry_FNITRECEBERCODREC.asinteger;
dm_dados.zqry_fnreceber.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_fnreceber.Open;
//
dm_dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_dados.zqry_Vdvenda.sql.add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
dm_dados.zqry_vdvenda.parambyname('vendacod').asinteger:=dm_dados.zqry_fnrecebercodvenda.asinteger;
dm_dados.zqry_vdvenda.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
fechatelaaguarde;
dm_dados.zqry_VDVENDA.Open;
end;

procedure Tfrm_CON_RECEBER.dt_FIMKeyPress(Sender: TObject; var Key: Char);
begin
if (KEY=#13) then

end;

procedure Tfrm_CON_RECEBER.dt_INICIOKeyPress(Sender: TObject; var Key: Char);
begin
if (KEY=#13) then dt_FIM.SetFocus;
end;

procedure Tfrm_CON_RECEBER.db_BOL_ITRECEBERCellClick(Column: TColumn);
begin
if dm_dados.zqry_FNITRECEBERVLRAPAGITREC.asfloat=0.00 then
  begin
    lbl_informa.Caption:='';
    lbl_informa.Caption:='T�TULO QUITADO INTEGRALMENTE';
  end;
if (dm_dados.zqry_FNITRECEBERVLRPAGOITREC.asfloat>0.00) and (dm_dados.zqry_FNITRECEBERVLRAPAGITREC.AsFloat>0.00) then
  begin
    lbl_informa.Caption:='';
    lbl_informa.Caption:='T�TULO COM PAGAMENTO PARCIAL';
  end;
if dm_dados.zqry_FNITRECEBERVLRPAGOITREC.asfloat=0.00 then
  begin
    lbl_informa.Caption:='TITULO SEM QUITA��O';
  end;
if dm_dados.zqry_FNITRECEBERNUMCONTA.AsString<>'' then btn_preboleto.Enabled:=true;



 valor:=dm_dados.zqry_FNITRECEBERVLRITREC.AsFloat;
  total:=(((valor*juros)/100)/30);
  edt_vlrmora.text:=formatfloat('##0.00', TOTAL);
  edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
  edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
  edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
end;

procedure Tfrm_CON_RECEBER.db_BOL_ITRECEBERKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
  edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
  edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
  edt_dtprotesto.Text:=datetostr(data);//dbtxt_dtvenc.Caption; }

end;

procedure Tfrm_CON_RECEBER.edt_diasExit(Sender: TObject);
begin
 edt_dtmora.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtdesc.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtabate.Text:=datetostr(data);//dbtxt_dtvenc.caption;
 edt_dtprotesto.Text:=datetostr(data);//dbtxt_dtvenc.Caption;
end;

procedure Tfrm_CON_RECEBER.FormActivate(Sender: TObject);
begin
btn_gerahtml.Enabled:=false;
dm_Dados.zqry_VDVENDA.Close;
dm_dados.zqry_VDITVENDA.Close;
dm_dados.zqry_EQPRODUTO.Close;
dm_dados.zqry_SGFILIAL.Params.Clear;
dm_dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_SGFILIAL.Open;
btn_gerapdf.Enabled:=false;
//btn_limpar.Enabled:=false;
btn_geraremessa.Enabled:=false;
juros:=dm_dados.zqry_SGFILIALTX_JUROS_BOLETO.asfloat;
edt_percmulta.text:=dm_dados.zqry_SGFILIALTX_MULTA_BOLETO.asstring;
rg_CONRECEBER.ItemIndex := -1;
rg_CONITRECEBER.ItemIndex:= -1;
//dm_Dados.qry_VDCLIENTE.Active:=true;
end;

procedure Tfrm_CON_RECEBER.FormClose(Sender: TObject; var Action: TCloseAction);
begin
rg_CONRECEBER.ItemIndex := -1;
rg_CONITRECEBER.ItemIndex:= -1;
dm_Dados.zqry_FNBANCO.Close;
dm_Dados.zqry_FNITMODBOLETO.Close;
dm_dados.zqry_FNCONTA.Close;
dm_Dados.zqry_FNRECEBER.Close;
dm_Dados.Zqry_FNITRECEBER.Close;
dm_dados.zqry_VDVENDA.Close;
// Limpar Campos
  acbrboleto1.ListadeBoletos.Clear;
  btn_PREBOLETO.Enabled:=false;
  btn_INCLUIRBOLETO.Enabled:=false;
  btn_IMPRIMIRBOLETO.Enabled:=false;
  edt_dtmora.clear;//dbtxt_dtvenc.caption;
  edt_dtdesc.clear;//dbtxt_dtvenc.caption;
  edt_dtabate.clear;//dbtxt_dtvenc.caption;
  edt_dtprotesto.clear;
  edt_vlrmora.clear;
  edt_percmulta.clear;
  edt_mensagem.Clear;
  Image1.Picture:=nil;
dm_dados.MEMORIA;
//action:=cafree;
//release;
//frm_con_Receber:=nil;

end;

procedure Tfrm_CON_RECEBER.FormCreate(Sender: TObject);
  //I: TACBrBolLayOut;
begin
 // edtDataDoc.Text := DateToStr(Now);
//  edtVencimento.Text := DateToStr(IncMonth(StrToDate(edtDataDoc.Text), 1));
//  edtDataMora.Text := DateToStr(StrToDate(edtVencimento.Text) + 1);
  cbxLayOut.Items.Clear;
{  For I := Low(TACBrBolLayOut) to High(TACBrBolLayOut) do
    cbxLayOut.Items.Add(GetEnumName(TypeInfo(TACBrBolLayOut), Integer(I)));
  cbxLayOut.ItemIndex := 0;}
end;

procedure Tfrm_CON_RECEBER.FormShow(Sender: TObject);
begin
      lbl_pesquisa.Visible:=false;
      lbl_pesquisa1.Visible:=false;
      lbl_ate.Visible:=false;
      lbl_ate1.Visible:=false;
      msk_pesquisa1.Visible:=false;
      msk_pesquisa2.Visible:=false;
      msk_rec_pesquisa1.Visible:=false;
      msk_rec_pesquisa2.Visible:=false;
      label5.Visible:=false;
      DBLookupComboBox1.Visible:=false;
      btn_buscanome.Visible:=false;
      pg_BOLREC.ActivePage:=ts_BOLRECIBO;
      dm_Dados.MEMORIA;
end;

procedure Tfrm_CON_RECEBER.msk_REC_PESQUISA2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
    btn_BUSCAITRECEBERClick(Sender);
  end;
end;

procedure Tfrm_CON_RECEBER.rg_CONITRECEBERClick(Sender: TObject);
begin
case rg_CONITRECEBER.ItemIndex of
    0:begin
      //DATA DE EMISSAO
      lbl_pesquisa1.Visible:=true;
      LBL_PESQUISA1.Caption:='CONSULTA ENTRE EMISS�O';
      msk_REC_PESQUISA1.Visible:=TRUE;
      msk_REC_PESQUISA2.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=TRUE;
      LBL_ATE1.Caption:='AT�';
      msk_REC_PESQUISA1.EditMask:='99/99/9999';
      msk_REC_PESQUISA2.EditMask:='99/99/9999';
      msk_REC_PESQUISA1.Text:=DATETOSTR(DATE);
      msk_REC_PESQUISA2.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.SetFocus;
      script:='DTITREC BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
    1:begin
      //COD DE RECEBIMENTO
      LBL_PESQUISA1.Visible:=TRUE;
      LBL_PESQUISA1.Caption:='CONSULTA C�D. RECEBIMENTO';
      msk_REC_PESQUISA2.Visible:=FALSE;
      msk_REC_PESQUISA1.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.Clear;
      msk_REC_PESQUISA1.SetFocus;
      msk_REC_PESQUISA1.EditMask:='';
      script:='codrec=:reccod';
      parametro1:='reccod';
      instrucao:='';
    end;
    2:begin
      //COD DE DOCUMENTO
      LBL_PESQUISA1.Visible:=TRUE;
      LBL_PESQUISA1.Caption:='CONSULTA C�D. DOCUMENTO';
      msk_REC_PESQUISA2.Visible:=FALSE;
      msk_REC_PESQUISA1.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.Clear;
      msk_REC_PESQUISA1.SetFocus;
      msk_REC_PESQUISA1.EditMask:='';
      script:='obsitrec like :obs';
      parametro1:='obs';
      instrucao:='%';
    end;
    3:begin
      //POR NOSSO N�MERO
      LBL_PESQUISA1.Visible:=TRUE;
      LBL_PESQUISA1.Caption:='CONSULTA NOSSO N�MERO';
      msk_REC_PESQUISA2.Visible:=FALSE;
      msk_REC_PESQUISA1.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.Clear;
      msk_REC_PESQUISA1.SetFocus;
      msk_REC_PESQUISA1.EditMask:='';
      script:='nossonumero like :nnum';
      parametro1:='nnum';
      instrucao:='%';
    end;
    4:begin
      //POR VALOR
      LBL_PESQUISA1.Visible:=TRUE;
      LBL_PESQUISA1.Caption:='CONSULTA POR VALOR';
      msk_REC_PESQUISA2.Visible:=FALSE;
      msk_REC_PESQUISA1.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.Clear;
      msk_REC_PESQUISA1.SetFocus;
      msk_REC_PESQUISA1.EditMask:='';
      script:='vlrapagitrec like :vlrpagar';
      parametro1:='vlrpagar';
      instrucao:='%';
    end;
    5:begin
      //DATA DE VENCIMENTO
      lbl_pesquisa1.Visible:=true;
      LBL_PESQUISA1.Caption:='CONSULTA ENTRE VENCIMENTO';
      msk_REC_PESQUISA1.Visible:=TRUE;
      msk_REC_PESQUISA2.Visible:=TRUE;
      LBL_ATE1.VISIBLE:=TRUE;
      LBL_ATE1.Caption:='AT�';
      msk_REC_PESQUISA1.EditMask:='99/99/9999';
      msk_REC_PESQUISA2.EditMask:='99/99/9999';
      msk_REC_PESQUISA1.Text:=DATETOSTR(DATE);
      msk_REC_PESQUISA2.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      sp_BUSCA1.Visible:=TRUE;
      msk_REC_PESQUISA1.SetFocus;
      script:='DTVENCITREC BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
 {   5:begin
      DBLookupComboBox1.Visible:=false;
      LBL_PESQUISA.Visible:=TRUE;
      LBL_PESQUISA.Caption:='CONSULTA NOSSO N�MER';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='NOSSONUMERO LIKE :NUMERO';
      parametro1:='NUMERO';
      instrucao:='%';
    end;  }
end;

end;

procedure Tfrm_CON_RECEBER.rg_CONRECEBERClick(Sender: TObject);
begin
case rg_CONRECEBER.ItemIndex of
    0:begin
      DBLookupComboBox1.Visible:=false;
      lbl_pesquisa.Visible:=true;
      LBL_PESQUISA.Caption:='CONSULTA ENTRE DATAS';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=TRUE;
      LBL_ATE.VISIBLE:=TRUE;
      LBL_ATE.Caption:='AT�';
      msk_PESQUISA1.EditMask:='99/99/9999';
      msk_PESQUISA2.EditMask:='99/99/9999';
      msk_PESQUISA1.Text:=DATETOSTR(DATE);
      msk_PESQUISA2.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      OUTROBT:='S';
      sp_BUSCA.Visible:=TRUE;
      btn_BUSCANOME.Visible:=false;
      msk_PESQUISA1.SetFocus;
      script:='DATAREC BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
    1:begin
      dm_dados.zqry_VDCLIENTE.Close;
      DM_DADOS.zqry_VDCLIENTE.SQL.CLEAR;
      DM_DADOS.zqry_VDCLIENTE.SQL.Add('SELECT * FROM VDCLIENTE WHERE CODEMP=:EMPCOD ORDER BY RAZCLI');
      DM_dADOS.zqry_vdcliente.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_Dados.zqry_VDCLIENTE.Open;
      DBLookupComboBox1.Visible:=true;
      LBL_PESQUISA.Visible:=TRUE;
      LBL_PESQUISA.Caption:='CONSULTA NOME DO CLIENTE';
      msk_PESQUISA1.Visible:=FALSE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=false;
      btn_BUSCANOME.Visible:=true;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.EditMask:='';
      script:='codcli=:clicod';
      parametro1:='clicod';
      instrucao:='';
    end;
    2:begin
      DBLookupComboBox1.Visible:=false;
      LBL_PESQUISA.Visible:=TRUE;
      LBL_PESQUISA.Caption:='CONSULTA C�D. CLIENTE';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      btn_BUSCANOME.Visible:=false;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='codcli=:clicod';
      parametro1:='clicod';
      instrucao:='';
    end;
    3:begin
      DBLookupComboBox1.Visible:=false;
      LBL_PESQUISA.Visible:=TRUE;
      LBL_PESQUISA.Caption:='CONSULTA C�D. RECEBIMENTO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      btn_BUSCANOME.Visible:=false;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='codrec=:reccod';
      parametro1:='reccod';
      instrucao:='';
    end;
    4:begin
      DBLookupComboBox1.Visible:=false;
      LBL_PESQUISA.Visible:=TRUE;
      LBL_PESQUISA.Caption:='CONSULTA C�D. PEDIDO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='codvenda=:vendacod';
      parametro1:='vendacod';
      instrucao:='';
    end;
end;
end;

procedure Tfrm_CON_RECEBER.sp_BUSCA1Click(Sender: TObject);
begin
  if msk_REC_PESQUISA1.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
    msk_REC_PESQUISA1.Clear;
    msk_REC_PESQUISA1.SetFocus;
  end
  else
  begin
    btn_BUSCAITRECEBERClick(Sender); // ou b.OnClick(b);
  end;
end;

procedure Tfrm_CON_RECEBER.sp_BUSCAClick(Sender: TObject);
begin
  if msk_PESQUISA1.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
    msk_PESQUISA1.Clear;
    msk_PESQUISA1.SetFocus;
  end
  else
  begin
   // btn_BUSCARECEBERClick(Sender); // ou b.OnClick(b);
    if OUTROBT='N' then btn_BUSCARECEBERClick(Sender); // ou b.OnClick(b);
    IF OUTROBT='S' then btn_BUSCARECEBER_DATAClick(Sender);
  end;
end;

procedure Tfrm_CON_RECEBER.ts_BOLRECIBOEnter(Sender: TObject);
begin
dm_Dados.MEMORIA;
end;

procedure Tfrm_CON_RECEBER.ts_CONITRECEnter(Sender: TObject);
begin
dm_Dados.MEMORIA;
end;

end.
