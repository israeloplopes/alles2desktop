unit dlg_vendastransp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, uFuncoes, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ComCtrls;

type
  Tfrm_DLG_VENDASTRANSP = class(TForm)
    edt_CODTRANSP: TEdit;
    lbl_NOMETRANSP: TLabel;
    Label10: TLabel;
    btn_BUSCATRANSP: TBitBtn;
    msk_INICIO: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    msk_FIM: TMaskEdit;
    btn_BUSCAENTREGAS: TBitBtn;
    DBGrid1: TDBGrid;
    dts_TRANSP: TDataSource;
    zqry_TRANSP: TZQuery;
    zqry_TRANSPCODTRAN: TIntegerField;
    zqry_TRANSPDTALT: TDateField;
    zqry_TRANSPCODVENDA: TIntegerField;
    zqry_TRANSPRAZCLI: TWideStringField;
    zqry_TRANSPCIDCLI: TWideStringField;
    zqry_TRANSPUFCLI: TWideStringField;
    zqry_TRANSPVLRPRODVENDA: TFloatField;
    zqry_TRANSPDOCVENDA: TIntegerField;
    zqry_TRANSPQTDFRETEVD: TFloatField;
    zqry_TRANSPPESOBRUTVD: TFloatField;
    zqry_TRANSP_NOMETRANS: TStringField;
    btn_LIMPAR: TBitBtn;
    btn_IMPRIMIR: TBitBtn;
    btn_SAIR: TBitBtn;
    PageControl1: TPageControl;
    ts_TRANSPORTADORA: TTabSheet;
    ts_VENDA: TTabSheet;
    ts_TODOS: TTabSheet;
    Label1: TLabel;
    edt_CODVENDA: TEdit;
    btn_BUSCAVENDA: TBitBtn;
    msk_all_inicio: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    msk_all_fim: TMaskEdit;
    btn_BUSCATODOS: TBitBtn;
    procedure btn_BUSCATRANSPClick(Sender: TObject);
    procedure btn_BUSCAENTREGASClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_IMPRIMEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_CODTRANSPKeyPress(Sender: TObject; var Key: Char);
    procedure msk_INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure msk_FIMKeyPress(Sender: TObject; var Key: Char);
    procedure btn_LIMPARClick(Sender: TObject);
    procedure btn_IMPRIMIRClick(Sender: TObject);
    procedure btn_BUSCAVENDAClick(Sender: TObject);
    procedure btn_BUSCATODOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_VENDASTRANSP: Tfrm_DLG_VENDASTRANSP;

implementation

{$R *.dfm}

uses dados, rel_vendastransp;

procedure Tfrm_DLG_VENDASTRANSP.btn_BUSCAENTREGASClick(Sender: TObject);
begin
mostratelaaguarde('Consultando Entregas');
if LBL_NOMEtransp.Caption='' then
begin
  zqry_transp.close;
  zqry_transp.SQL.Clear;
 // dm_Dados.iqry_vdfretevd.SQL.add('SELECT * FROM vdfretevd where dtalt between :inicio and :fim ');
  zqry_transp.SQL.Add('select vd.codtran, vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda, ve.docvenda, vd.qtdfretevd, vd.pesobrutvd from vdfretevd vd');
  zqry_transp.SQL.Add('inner join vdvenda ve on vd.codvenda = ve.codvenda');
  zqry_transp.SQL.Add('inner join vdcliente cli on ve.codcli = cli.codcli');
  zqry_transp.SQL.Add('where cli.codemp=vd.codemp and ve.codemp=vd.codemp and vd.dtalt between :inicio and :fim and vd.codemp=:empcod');
  zqry_transp.SQL.Add('group by vd.codtran,vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda,ve.docvenda, vd.qtdfretevd, vd.pesobrutvd');
  zqry_transp.ParamByName('inicio').AsDate:=strtodate(msk_INICIO.Text);
  zqry_transp.ParamByName('fim').asDate:=strtodate(msk_FIM.Text);
  zqry_transp.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_transp.Open;
  fechatelaaguarde;
  if zqry_transp.IsEmpty then
  begin
    showmessage('Não foram encontradas Entregas dentro da data especificada'#13'tab.: vdfretevd');
  end;
end
else
begin
  zqry_transp.close;
  zqry_transp.SQL.Clear;
//  dm_Dados.iqry_vdfretevd.SQL.add('SELECT * FROM vdfretevd where codtran=:transcod and dtalt between :inicio and :fim ');
  zqry_transp.SQL.Add('select vd.codtran, vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda, ve.docvenda, vd.qtdfretevd, vd.pesobrutvd from vdfretevd vd');
  zqry_transp.SQL.Add('inner join vdvenda ve on vd.codvenda = ve.codvenda');
  zqry_transp.SQL.Add('inner join vdcliente cli on ve.codcli = cli.codcli');
  zqry_transp.SQL.Add('where cli.codemp=vd.codemp and ve.codemp=vd.codemp and vd.codtran=:trancod and vd.dtalt between :inicio and :fim and vd.codemp=:empcod ');
  zqry_transp.SQL.Add('group by vd.codtran,vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda,ve.docvenda, vd.qtdfretevd, vd.pesobrutvd');
  zqry_transp.ParamByName('trancod').AsInteger:=strtoint(edt_CODTRANSP.Text);
  zqry_transp.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_transp.ParamByName('inicio').AsDate:=strtodate(msk_INICIO.Text);
  zqry_transp.ParamByName('fim').asDate:=strtodate(msk_FIM.Text);
  zqry_transp.Open;
  fechatelaaguarde;
  if zqry_transp.IsEmpty then
  begin
    showmessage('Não foram encontradas Entregas dentro da data especificada'#13'tab.: vdfretevd');
  end;
end;
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_BUSCATODOSClick(Sender: TObject);
begin
mostratelaaguarde('Consultando Entregas');
  zqry_transp.close;
  zqry_transp.SQL.Clear;
 // dm_Dados.iqry_vdfretevd.SQL.add('SELECT * FROM vdfretevd where dtalt between :inicio and :fim ');
  zqry_transp.SQL.Add('select vd.codtran, vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda, ve.docvenda, vd.qtdfretevd, vd.pesobrutvd from vdfretevd vd');
  zqry_transp.SQL.Add('inner join vdvenda ve on vd.codvenda = ve.codvenda');
  zqry_transp.SQL.Add('inner join vdcliente cli on ve.codcli = cli.codcli');
  zqry_transp.SQL.Add('where cli.codemp=vd.codemp and ve.codemp=vd.codemp and vd.dtalt between :inicio and :fim and vd.codemp=:empcod');
  zqry_transp.SQL.Add('group by vd.codtran,vd.dtalt, vd.codvenda, cli. razcli, cli.cidcli, cli.ufcli, ve.vlrprodvenda,ve.docvenda, vd.qtdfretevd, vd.pesobrutvd');
  zqry_transp.ParamByName('inicio').AsDate:=strtodate(msk_all_INICIO.Text);
  zqry_transp.ParamByName('fim').asDate:=strtodate(msk_all_FIM.Text);
  zqry_transp.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_transp.Open;
  fechatelaaguarde;
  if zqry_transp.IsEmpty then
  begin
    showmessage('Não foram encontradas Entregas dentro da data especificada'#13'tab.: vdfretevd');
  end;
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_BUSCATRANSPClick(Sender: TObject);
begin
if edt_codTRANSP.Text='' then
begin
  showmessage('Atenção'#13'Não foram informados de Transportadores para a busca');
  edt_codtransp.Clear;
  lbl_NOMETRANSP.Caption:='';
end
else
begin
  DM_dADOS.zQRY_vdtransp.CLOSE;
  DM_DADOS.zQRY_vdtransp.SQL.CLEAR;
  DM_DADOS.zQRY_vdtransp.SQL.ADD('SELECT * FROM vdtransp WHERE CODTRAN=:TRANCOD and codemp=:empcod ');
  DM_DADOS.zQRY_vdtransp.PARAMBYNAME('TRANCOD').ASINTEGER:=STRTOINT(EDT_CODTRANSP.Text);
  dm_Dados.zqry_VDtransp.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
 // dm_DADOS.iQRY_vdvendedor.PARAMBYNAME('EMPCOD').ASINTEGER:=dm_DADOS.CODEMP;
  DM_DADOS.zqry_vdtransp.OPEN;
  if dm_dados.zqry_VDtransp.IsEmpty then
  begin
    showmessage('Atenção!!!'#13'Não foram localizadas informações para esse parâmetro'#13'tab: VDTRANSP');
    edt_codtransp.Clear;
    edt_codtransp.setfocus;
  end
  else
  begin
    LBL_NOMEtransp.Caption:=DM_DADOS.zqry_vdtranspraztran.AsString;
  end;
end;
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_BUSCAVENDAClick(Sender: TObject);
begin
if edt_codvenda.Text='' then
begin
  showmessage('Atenção'#13'Não foram informados de Transportadores para a busca');
  edt_codvenda.Clear;
end
else
begin
  DM_dADOS.zQRY_vdtransp.CLOSE;
  DM_DADOS.zQRY_vdtransp.SQL.CLEAR;
  DM_DADOS.zQRY_vdtransp.SQL.ADD('SELECT * FROM vdtransp WHERE CODVENDA=:VENDACOD and codemp=:empcod ');
  DM_DADOS.zQRY_vdtransp.PARAMBYNAME('VENDACOD').ASINTEGER:=STRTOINT(EDT_CODVENDA.Text);
  dm_Dados.zqry_VDtransp.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
 // dm_DADOS.iQRY_vdvendedor.PARAMBYNAME('EMPCOD').ASINTEGER:=dm_DADOS.CODEMP;
  DM_DADOS.zqry_vdtransp.OPEN;
  if dm_dados.zqry_VDtransp.IsEmpty then
  begin
    showmessage('Atenção!!!'#13'Não foram localizadas informações para esse parâmetro'#13'tab: VDTRANSP');
    edt_codvenda.Clear;
    edt_codvenda.setfocus;
  end
  else
  begin
    LBL_NOMEtransp.Caption:=DM_DADOS.zqry_vdtranspraztran.AsString;
  end;
end;
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_IMPRIMEClick(Sender: TObject);
begin
frm_rel_vendastransp.rlreport1.preview();
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_vendastransp.rlreport1.preview();
end;

procedure Tfrm_DLG_VENDASTRANSP.btn_LIMPARClick(Sender: TObject);
begin
dm_dados.zqry_VDVENDA.Close;
zqry_transp.Close;
edt_codtransp.Clear;
msk_inicio.Clear;
msk_fim.Clear;
lbl_NOMETRANSP.caption:='';
edt_codtransp.SetFocus;
end;

procedure Tfrm_DLG_VENDASTRANSP.DBGrid1CellClick(Column: TColumn);
begin
MostraTelaAguarde('Consultando Informações do Pedido '+dm_dados.zqry_VDVENDACODVENDA.asstring);
DM_DADOS.zqry_VDVENDA.Close;
dm_dados.zqry_VDVENDA.SQL.Clear;
dm_dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
dm_dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=dm_dados.zqry_VDfretevdCODVENDA.AsInteger;
dm_dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_VDVENDA.Open;
fechatelaaguarde;
end;



procedure Tfrm_DLG_VENDASTRANSP.edt_CODTRANSPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then btn_BUSCATRANSPClick(Self);
end;

procedure Tfrm_DLG_VENDASTRANSP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
zQRY_TRANSP.Close;
edt_CODTRANSP.Clear;
MSK_INICIO.Clear;
msk_FIM.Clear;
end;

procedure Tfrm_DLG_VENDASTRANSP.msk_FIMKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then btn_BUSCAENTREGASClick(Self);
end;

procedure Tfrm_DLG_VENDASTRANSP.msk_INICIOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then msk_FIM.SetFocus
end;



end.
