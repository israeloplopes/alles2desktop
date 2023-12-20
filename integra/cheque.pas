unit cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Mask, Vcl.Menus;

type
  Tfrm_DLG_CHEQUES = class(TForm)
    gb_MOV_CHEQUE: TGroupBox;
    BitBtn1: TBitBtn;
    btn_CHDEPOSITADO: TBitBtn;
    btn_CHDEVOLVIDO: TBitBtn;
    btn_CHCOMPENSADO: TBitBtn;
    gb_SLD_CHEQUE: TGroupBox;
    gp_CON_CHEQUE: TGroupBox;
    Label1: TLabel;
    edt_VLRTOTAL_RECEBIDO: TEdit;
    Label2: TLabel;
    edt_VLRTOTAL_DEPOSITADO: TEdit;
    Label3: TLabel;
    edt_VLRTOTAL_DEVOLVIDO: TEdit;
    rg_CHEQUES: TRadioGroup;
    DBGrid1: TDBGrid;
    gp_HIST_CLIENTE: TGroupBox;
    Label4: TLabel;
    edt_QTDCH_RECEBIDO: TEdit;
    Label5: TLabel;
    edt_QTDCH_DEVOLVIDO: TEdit;
    Label6: TLabel;
    edt_VLRCLIENTE_CHABERTO: TEdit;
    edt_QTDCH_ABERTOO: TEdit;
    Label7: TLabel;
    zqry_TOT_CH_CAD: TZQuery;
    zdts_TOT_CH_CAD: TDataSource;
    zqry_TOT_CH_CADRECEBIDO: TExtendedField;
    zqry_TOT_CH_DEP: TZQuery;
    zqry_TOT_CH_DEPDEPOSITADO: TExtendedField;
    zdts_TOT_CH_DEP: TDataSource;
    zqry_TOT_CH_DEV: TZQuery;
    zdts_TOT_CH_DEV: TDataSource;
    zqry_TOT_CH_DEVDEVOLVIDO: TExtendedField;
    zqry_CHEQUES: TZQuery;
    zqry_CHEQUESCODEMP: TIntegerField;
    zqry_CHEQUESCODFILIAL: TSmallintField;
    zqry_CHEQUESCODEMPBO: TIntegerField;
    zqry_CHEQUESSEQCHEQ: TIntegerField;
    zqry_CHEQUESCODFILIALBO: TSmallintField;
    zqry_CHEQUESCODBANC: TWideStringField;
    zqry_CHEQUESAGENCIACHEQ: TWideStringField;
    zqry_CHEQUESCONTACHEQ: TWideStringField;
    zqry_CHEQUESNUMCHEQ: TIntegerField;
    zqry_CHEQUESNOMEEMITCHEQ: TWideStringField;
    zqry_CHEQUESNOMEFAVCHEQ: TWideStringField;
    zqry_CHEQUESDTEMITCHEQ: TDateField;
    zqry_CHEQUESDTVENCTOCHEQ: TDateField;
    zqry_CHEQUESDTCOMPCHEQ: TDateField;
    zqry_CHEQUESTIPOCHEQ: TWideStringField;
    zqry_CHEQUESPREDATCHEQ: TWideStringField;
    zqry_CHEQUESSITCHEQ: TWideStringField;
    zqry_CHEQUESVLRCHEQ: TFloatField;
    zqry_CHEQUESHISTCHEQ: TWideStringField;
    zqry_CHEQUESCNPJEMITCHEQ: TWideStringField;
    zqry_CHEQUESCPFEMITCHEQ: TWideStringField;
    zqry_CHEQUESCNPJFAVCHEQ: TWideStringField;
    zqry_CHEQUESCPFFAVCHEQ: TWideStringField;
    zqry_CHEQUESDDDFAVCHEQ: TWideStringField;
    zqry_CHEQUESDDDEMITCHEQ: TWideStringField;
    zqry_CHEQUESFONEEMITCHEQ: TWideStringField;
    zqry_CHEQUESFONEFAVCHEQ: TWideStringField;
    zqry_CHEQUESDTINS: TDateField;
    zqry_CHEQUESHINS: TTimeField;
    zqry_CHEQUESIDUSUINS: TWideStringField;
    zqry_CHEQUESDTALT: TDateField;
    zqry_CHEQUESHALT: TTimeField;
    zqry_CHEQUESIDUSUALT: TWideStringField;
    zqry_CHEQUESCONTAEMITE: TWideStringField;
    zqry_CHEQUESCODCLI: TIntegerField;
    zqry_CHEQUESCODVENDA: TIntegerField;
    zqry_CHEQUESNOMEBANCO: TWideStringField;
    zqry_CHEQUESCODEMPCL: TIntegerField;
    zqry_CHEQUESCODFILIALCL: TSmallintField;
    zqry_CHEQUESCODEMPVD: TIntegerField;
    zqry_CHEQUESCODFILIALVD: TSmallintField;
    zqry_CHEQUESDTDEPCHEQ: TDateField;
    zqry_CHEQUESCODALINEA: TSmallintField;
    zqry_CHEQUESDTDEVOLCHEQ: TDateField;
    zqry_CHEQUESDTREAPRESENTAR: TDateField;
    zqry_CHEQUESREAPRESENTAR: TWideStringField;
    zqry_CHEQUESAUTREAPRESENTAR: TWideStringField;
    zdts_CHEQUES: TDataSource;
    GroupBox1: TGroupBox;
    msk_PESQ: TMaskEdit;
    lbl_MSG_PESQ: TLabel;
    sp_BUSCA: TSpeedButton;
    Label8: TLabel;
    PopupMenu1: TPopupMenu;
    Recebido1: TMenuItem;
    Depositado1: TMenuItem;
    Devolvido1: TMenuItem;
    Compensado1: TMenuItem;
    N1: TMenuItem;
    PorCheque1: TMenuItem;
    PorCliente1: TMenuItem;
    PorData1: TMenuItem;
    PorPedido1: TMenuItem;
    PorSituao1: TMenuItem;
    N2: TMenuItem;
    ConsultaClientes1: TMenuItem;
    zqry_IND_QTDCH: TZQuery;
    zqry_IND_QTDCHCOUNT: TIntegerField;
    zdts_IND_QTDCH: TDataSource;
    zqry_IND_VLRCH: TZQuery;
    zdts_IND_VLRCH: TDataSource;
    zqry_IND_VLRCHVLRABERTOCLI: TExtendedField;
    zqry_IND_TOTCH: TZQuery;
    zqry_IND_TOTCHQTDCHABERTO: TIntegerField;
    zdts_IND_TOTCH: TDataSource;
    zqry_IND_CHDEV: TZQuery;
    zqry_IND_CHDEVQTDCHDEV: TIntegerField;
    zdts_IND_CHDEV: TDataSource;
    btn_IMPRIMIR: TBitBtn;
    procedure btn_CHDEVOLVIDOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_CHDEPOSITADOClick(Sender: TObject);
    procedure btn_CHCOMPENSADOClick(Sender: TObject);
    procedure LerTotais;
    procedure BuscaCheque;
    procedure BuscaChequeData;
    procedure FechaConexoes;
    procedure rg_CHEQUESClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure msk_PESQKeyPress(Sender: TObject; var Key: Char);
    procedure PorCheque1Click(Sender: TObject);
    procedure PorCliente1Click(Sender: TObject);
    procedure PorData1Click(Sender: TObject);
    procedure PorPedido1Click(Sender: TObject);
    procedure PorSituao1Click(Sender: TObject);
    procedure Depositado1Click(Sender: TObject);
    procedure Devolvido1Click(Sender: TObject);
    procedure Compensado1Click(Sender: TObject);
    procedure ConsultaClientes1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
       ENTRE, OUTROBT, SCRIPT, PARAMETRO1, PARAMETRO2, PARAMETRO3, INSTRUCAO, CLIENTE:string; //SCRIPT PARA CONSULTA SQL

  end;

var
  frm_DLG_CHEQUES: Tfrm_DLG_CHEQUES;

implementation

{$R *.dfm}

uses cad_chequedevolvido, cad_chequedepositado, dlg_cheques_hoje,
  cad_chequecompensado, dados, uFuncoes, con_clientes, rel_cheques;

procedure Tfrm_DLG_CHEQUES.FechaConexoes;
begin
zqry_CHEQUES.Cancel;
zqry_CHEQUES.Params.Clear;
zqry_CHEQUES.Close;
//
dm_dados.zqry_FNCHEQUE.Cancel;
dm_dados.zqry_FNCHEQUE.Params.Clear;
dm_dados.zqry_FNCHEQUE.Close;
//
zqry_TOT_CH_CAD.Cancel;
zqry_TOT_CH_CAD.Params.Clear;
zqry_TOT_CH_CAD.Close;
//
zqry_TOT_CH_DEP.Cancel;
zqry_TOT_CH_DEP.Params.Clear;
zqry_TOT_CH_DEP.Close;
//
zqry_TOT_CH_DEV.Cancel;
zqry_TOT_CH_DEV.Params.Clear;
zqry_TOT_CH_DEV.Close;
end;

procedure Tfrm_DLG_CHEQUES.LerTotais;
begin
// TOTAL CADASTRADO
zqry_TOT_CH_CAD.Params.Clear;
zqry_TOT_CH_CAD.Close;
zqry_TOT_CH_CAD.SQL.Clear;
zqry_TOT_CH_CAD.SQL.Add('select sum(vlrcheq) as RECEBIDO from fncheque where fncheque.tipocheq=:tipo and fncheque.sitcheq=:cad');
zqry_TOT_CH_CAD.ParamByName('tipo').AsString:='RC';
zqry_TOT_CH_CAD.ParamByName('cad').AsString:='CA';
zqry_TOT_CH_CAD.Open;
edt_VLRTOTAL_RECEBIDO.Text:=formatfloat('R$ ##0.00',zqry_TOT_CH_CADRECEBIDO.asfloat);
// TOTAL DEPOSITADO
zqry_TOT_CH_DEP.Params.Clear;
zqry_TOT_CH_DEP.Close;
zqry_TOT_CH_DEP.SQL.Clear;
zqry_TOT_CH_DEP.SQL.Add('select sum(vlrcheq) as DEPOSITADO from fncheque where fncheque.tipocheq=:tipo and fncheque.sitcheq=:dep');
zqry_TOT_CH_DEP.ParamByName('tipo').AsString:='RC';
zqry_TOT_CH_DEP.ParamByName('dep').AsString:='DP';
zqry_TOT_CH_DEP.Open;
edt_VLRTOTAL_DEPOSITADO.Text:=formatfloat('R$ ##0.00',zqry_TOT_CH_DEPDEPOSITADO.asfloat);
// TOTAL DEVOLVIDO
zqry_TOT_CH_DEV.Params.Clear;
zqry_TOT_CH_DEV.Close;
zqry_TOT_CH_DEV.SQL.Clear;
zqry_TOT_CH_DEV.SQL.Add('select sum(vlrcheq) as DEVOLVIDO from fncheque where fncheque.tipocheq=:tipo and fncheque.sitcheq=:dev');
zqry_TOT_CH_DEV.ParamByName('tipo').AsString:='RC';
zqry_TOT_CH_DEV.ParamByName('dev').AsString:='DV';
zqry_TOT_CH_DEV.Open;
edt_VLRTOTAL_DEVOLVIDO.Text:=formatfloat('R$ ##0.00',zqry_TOT_CH_DEVDEVOLVIDO.asfloat);
// TODOS OS CHEQUES
zqry_CHEQUES.Params.Clear;
zqry_CHEQUES.Close;
zqry_CHEQUES.SQL.Clear;
zqry_CHEQUES.SQL.Add('SELECT * FROM FNCHEQUE WHERE CODEMP=:EMPCOD ORDER BY DTVENCTOCHEQ,SITCHEQ,NUMCHEQ,CODBANC');
zqry_CHEQUES.ParamByName('EMPCOD').AsInteger:=dm_dados.CODEMP;
zqry_CHEQUES.Open;
end;


procedure Tfrm_DLG_CHEQUES.msk_PESQKeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN sp_BUSCAClick(Self);
end;

procedure Tfrm_DLG_CHEQUES.PorCheque1Click(Sender: TObject);
begin
rg_CHEQUES.ItemIndex:=0;
end;

procedure Tfrm_DLG_CHEQUES.PorCliente1Click(Sender: TObject);
begin
rg_CHEQUES.ItemIndex:=1;
end;

procedure Tfrm_DLG_CHEQUES.PorData1Click(Sender: TObject);
begin
rg_CHEQUES.ItemIndex:=2;
end;

procedure Tfrm_DLG_CHEQUES.PorPedido1Click(Sender: TObject);
begin
rg_CHEQUES.ItemIndex:=3;
end;

procedure Tfrm_DLG_CHEQUES.PorSituao1Click(Sender: TObject);
begin
rg_CHEQUES.ItemIndex:=4;
end;

procedure Tfrm_DLG_CHEQUES.BUSCACHEQUE;
begin
MostraTelaAguarde('Consultando Informações');
dm_Dados.zdts_FNCHEQUE.DataSet:=nil;
dm_dados.zqry_FNCHEQUE.Params.Clear;
dm_dados.zqry_FNCHEQUE.Close;
dm_dados.zqry_FNCHEQUE.SQL.Clear;
dm_dados.zqry_FNCHEQUE.sql.Add('SELECT * FROM FNCHEQUE WHERE CODEMP=:EMPCOD AND '+SCRIPT+' order by dtvenctocheq desc');
dm_dados.zqry_FNCHEQUE.ParamByName(parametro1).value:=instrucao+msk_pesq.Text+instrucao;
if ENTRE='S' then dm_dados.zqry_FNCHEQUE.ParamByName(parametro2).value:=instrucao+msk_pesq.Text+instrucao;
dm_dados.zqry_FNCHEQUE.ParamByName('empcod').asinteger:=dm_Dados.codemp;
dm_dados.zqry_FNCHEQUE.Open;
if dm_dados.zqry_FNCHEQUE.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque');
FechaTelaAguarde;
IF CLIENTE='S' then
begin
  zqry_IND_QTDCH.Params.Clear;
  zqry_IND_QTDCH.Close;
  zqry_IND_QTDCH.SQL.Clear;
  zqry_IND_QTDCH.SQL.Add('select count(seqcheq) from fncheque where codcli=:clicod and codemp=:empcod');
  zqry_IND_QTDCH.ParamByName('clicod').AsInteger:=dm_dados.zqry_FNCHEQUECODCLI.AsInteger;
  zqry_IND_QTDCH.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_IND_QTDCH.Open;
  edt_QTDCH_RECEBIDO.Text:=INTTOSTR(zqry_IND_QTDCHCOUNT.AsInteger);
  //
  zqry_IND_VLRCH.Params.Clear;
  zqry_IND_VLRCH.Close;
  zqry_IND_VLRCH.SQL.Clear;
  zqry_IND_VLRCH.SQL.Add('select sum(vlrcheq) as VLRABERTOCLI from fncheque where fncheque.tipocheq=''RC'' and fncheque.sitcheq in(''CA'',''DP'',''DV'') and fncheque.codcli=:clicod');
  zqry_IND_VLRCH.ParamByName('clicod').AsInteger:=dm_dados.zqry_FNCHEQUECODCLI.AsInteger;
  zqry_IND_VLRCH.Open;
  edt_VLRCLIENTE_CHABERTO.Text:='R$ '+floattostr(zqry_IND_VLRCHVLRABERTOCLI.AsFloat);
  //
  zqry_IND_TOTCH.Params.Clear;
  zqry_IND_TOTCH.Close;
  zqry_IND_TOTCH.SQL.Clear;
  zqry_IND_TOTCH.SQL.Add('select count(seqcheq) as QTDCHABERTO from fncheque where fncheque.tipocheq=''RC'' and fncheque.sitcheq in(''CA'',''DP'',''DV'') and fncheque.codcli=:clicod');
  zqry_IND_TOTCH.ParamByName('clicod').AsInteger:=dm_dados.zqry_FNCHEQUECODCLI.AsInteger;
  zqry_IND_TOTCH.Open;
  edt_QTDCH_ABERTOO.Text:=IntToStr(zqry_IND_TOTCHQTDCHABERTO.ASINTEGER);
  //
  zqry_IND_CHDEV.Params.Clear;
  zqry_IND_CHDEV.Close;
  zqry_IND_CHDEV.SQL.Clear;
  zqry_IND_CHDEV.SQL.Add('select count(seqcheq) as QTDCHDEV from fncheque where fncheque.tipocheq=''RC'' and fncheque.sitcheq=''DV'' and fncheque.codcli=:clicod');
  zqry_IND_CHDEV.ParamByName('clicod').AsInteger:=dm_dados.zqry_FNCHEQUECODCLI.AsInteger;
  zqry_IND_CHDEV.Open;
  edt_QTDCH_DEVOLVIDO.Text:=inttostr(zqry_IND_CHDEVQTDCHDEV.AsInteger);
end;


lbl_MSG_PESQ.caption:='';
msk_PESQ.Visible:=False;
ENTRE:='N';
sp_BUSCA.Visible:=False;
dm_Dados.zdts_FNCHEQUE.DataSet:=dm_Dados.zqry_FNCHEQUE;
rg_CHEQUES.ItemIndex:= -1;
end;

procedure Tfrm_DLG_CHEQUES.BUSCACHEQUEDATA;
begin
MostraTelaAguarde('Consultando Informações');
dm_Dados.zdts_FNCHEQUE.DataSet:=nil;
dm_dados.zqry_FNCHEQUE.Params.Clear;
dm_dados.zqry_FNCHEQUE.Close;
dm_dados.zqry_FNCHEQUE.SQL.Clear;
dm_dados.zqry_FNCHEQUE.sql.Add('SELECT * FROM FNCHEQUE WHERE CODEMP=:EMPCOD AND DTVENCTOCHEQ=:DTVENCTO order by sitcheq asc');
dm_dados.zqry_FNCHEQUE.ParamByName('DTVENCTO').AsDate:=strtodate(msk_pesq.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('empcod').asinteger:=dm_Dados.codemp;
dm_dados.zqry_FNCHEQUE.Open;
if dm_dados.zqry_FNCHEQUE.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque');
FechaTelaAguarde;
lbl_MSG_PESQ.caption:='';
msk_PESQ.Visible:=False;
ENTRE:='N';
sp_BUSCA.Visible:=False;
dm_Dados.zdts_FNCHEQUE.DataSet:=dm_Dados.zqry_FNCHEQUE;
rg_CHEQUES.ItemIndex:= -1;
end;

procedure Tfrm_DLG_CHEQUES.Compensado1Click(Sender: TObject);
begin
btn_CHCOMPENSADOClick(Self);
end;

procedure Tfrm_DLG_CHEQUES.ConsultaClientes1Click(Sender: TObject);
begin
frm_con_clientes.show;
end;

procedure Tfrm_DLG_CHEQUES.Depositado1Click(Sender: TObject);
begin
btn_CHDEPOSITADOClick(Self);
end;

procedure Tfrm_DLG_CHEQUES.Devolvido1Click(Sender: TObject);
begin
btn_CHDEVOLVIDOClick(Self);
end;

procedure Tfrm_DLG_CHEQUES.rg_CHEQUESClick(Sender: TObject);
begin
 case rg_CHEQUES.ItemIndex of
    0:begin
      FECHACONEXOES;
      lbl_MSG_PESQ.Caption:='CONSULTA POR N.º';
      msk_PESQ.Visible:=TRUE;
      msk_PESQ.Clear;
      msk_PESQ.SetFocus;
      msk_PESQ.EditMask:='';
      ENTRE:='N';
      OUTROBT:='N';
      CLIENTE:='N';
      sp_BUSCA.Visible:=TRUE;
      script:='NUMCHEQ=:CHEQNUM';
      parametro1:='CHEQNUM';
      instrucao:='';
    end;
    1:begin
      FECHACONEXOES;
      lbl_MSG_PESQ.Caption:='CONSULTA POR CÓD. CLI.';
      msk_PESQ.Visible:=TRUE;
      msk_PESQ.Clear;
      msk_PESQ.SetFocus;
      msk_PESQ.EditMask:='';
      ENTRE:='N';
      OUTROBT:='N';
      CLIENTE:='S';
      sp_BUSCA.Visible:=TRUE;
      script:='CODCLI=:CLICOD';
      parametro1:='CLICOD';
      instrucao:='';
    end;
    2:begin
      FECHACONEXOES;
      lbl_MSG_PESQ.Caption:='CONSULTA POR DT. VENCTO.';
      msk_PESQ.Visible:=TRUE;
      msk_PESQ.Clear;
      msk_PESQ.SetFocus;
      msk_PESQ.EditMask:='99/99/9999';
      ENTRE:='N';
      OUTROBT:='S';
      CLIENTE:='N';
      sp_BUSCA.Visible:=TRUE;
      script:='DTVENCTOCHEQ=:DTVENCTO';
      parametro1:='DTVENCTO';
      instrucao:='';
    end;
    3:begin
      FECHACONEXOES;
      lbl_MSG_PESQ.Caption:='CONSULTA POR VENDA';
      msk_PESQ.Visible:=TRUE;
      msk_PESQ.Clear;
      msk_PESQ.SetFocus;
      msk_PESQ.EditMask:='';
      ENTRE:='N';
      OUTROBT:='N';
      CLIENTE:='N';
      sp_BUSCA.Visible:=TRUE;
      script:='CODVENDA=:VENDACOD';
      parametro1:='VENDACOD';
      instrucao:='';
    end;
    4:begin
      FECHACONEXOES;
      lbl_MSG_PESQ.Caption:='CONSULTA POR SITUAÇÃO';
      msk_PESQ.Visible:=TRUE;
      msk_PESQ.Clear;
      msk_PESQ.SetFocus;
      msk_PESQ.EditMask:='';
      ENTRE:='N';
      OUTROBT:='N';
      CLIENTE:='N';
      sp_BUSCA.Visible:=TRUE;
      script:='SITCHEQ=:CHEQSIT';
      parametro1:='CHEQSIT';
      instrucao:='';
    end;

    end;

end;

procedure Tfrm_DLG_CHEQUES.sp_BUSCAClick(Sender: TObject);
begin
  if msk_PESQ.Text='' then
  begin
    mostratelaaviso('Como não foi informado valor a consulta contemplará todos os registros','tab:fncheque');
    dm_dados.zqry_FNCHEQUE.Params.Clear;
    dm_dados.zqry_FNCHEQUE.Close;
    dm_dados.zqry_FNCHEQUE.SQL.Clear;
    dm_dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where codemp=:empcod');
    dm_dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    dm_dados.zqry_FNCHEQUE.Open;
    msk_PESQ.Clear;
    msk_PESQ.SetFocus;
  end
  else
  begin
    If OUTROBT='N' then BUSCACHEQUE; // ou b.OnClick(b);
    IF OUTROBT='S' then BUSCACHEQUEDATA;
    //BUSCACHEQUE; // ou b.OnClick(b);
  end;
end;

procedure Tfrm_DLG_CHEQUES.btn_CHDEPOSITADOClick(Sender: TObject);
begin
frm_CAD_CHEQUEDEPOSITADO.SHOW;
end;

procedure Tfrm_DLG_CHEQUES.btn_CHCOMPENSADOClick(Sender: TObject);
begin
frm_CAD_CHEQUECOMPENSADO.SHOW;
end;

procedure Tfrm_DLG_CHEQUES.btn_CHDEVOLVIDOClick(Sender: TObject);
begin
frm_CAD_CHEQUEDEVOLVIDO.SHOW;
end;

procedure Tfrm_DLG_CHEQUES.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_cheques.rlreport1.preview;
end;

procedure Tfrm_DLG_CHEQUES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm_dados.zqry_FNCHEQUE.Cancel;
dm_dados.zqry_FNCHEQUE.Close;
//
zqry_TOT_CH_CAD.Cancel;
zqry_TOT_CH_CAD.Close;
//
zqry_TOT_CH_DEP.Cancel;
zqry_TOT_CH_DEP.Close;
//
zqry_TOT_CH_DEV.Cancel;
zqry_TOT_CH_DEV.Close;
//
zqry_CHEQUES.Cancel;
zqry_CHEQUES.Close;
//
zqry_IND_QTDCH.Cancel;
zqry_IND_QTDCH.Close;
//
zqry_IND_VLRCH.Cancel;
zqry_IND_VLRCH.Close;
//
zqry_IND_TOTCH.Cancel;
zqry_IND_TOTCH.Close;
//
zqry_IND_CHDEV.Cancel;
zqry_IND_CHDEV.Close;
end;

procedure Tfrm_DLG_CHEQUES.FormShow(Sender: TObject);
begin
frm_DLG_CHEQUES.Left:=Round(screen.Width/2)-415;
frm_dlg_cheques.Top:=round(screen.Height/2)-320;
LerTotais;
msk_PESQ.Visible:=false;
sp_BUSCA.Visible:=false;
// CHEQUES PARA HOJE
frm_dlg_cheques_hoje.zqry_cheque_hoje.params.clear;
frm_dlg_cheques_hoje.zqry_cheque_hoje.close;
frm_dlg_cheques_hoje.zqry_cheque_hoje.sql.clear;
frm_dlg_cheques_hoje.zqry_cheque_hoje.sql.add('select * from fncheque where codemp=:empcod and dtvenctocheq=:data and sitcheq=:sit');
frm_dlg_cheques_hoje.zqry_cheque_hoje.parambyname('empcod').asinteger:=dm_dados.codemp;
frm_dlg_cheques_hoje.zqry_cheque_hoje.parambyname('data').asdatetime:=now;
frm_dlg_cheques_hoje.zqry_cheque_hoje.parambyname('sit').asstring:='CA';
frm_dlg_cheques_hoje.zqry_cheque_hoje.open;
if frm_dlg_cheques_hoje.zqry_cheque_hoje.isempty then
begin
  //
end
else
begin
  frm_dlg_cheques_hoje.show;
end;
//
end;

end.
