unit dlg_receituario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tfrm_DLG_RECEITUARIO = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Receitas: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    zqry_PRODUTOSRECEITA: TZQuery;
    zqry_PRODUTOSRECEITACODEMP: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIAL: TSmallintField;
    zqry_PRODUTOSRECEITACODPROD: TIntegerField;
    zqry_PRODUTOSRECEITADESCPROD: TWideStringField;
    zqry_PRODUTOSRECEITAREFPROD: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPAX: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALAX: TSmallintField;
    zqry_PRODUTOSRECEITACODALMOX: TIntegerField;
    zqry_PRODUTOSRECEITACODEMPMA: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALMA: TSmallintField;
    zqry_PRODUTOSRECEITACODMOEDA: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPUD: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALUD: TSmallintField;
    zqry_PRODUTOSRECEITACODUNID: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPFC: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALFC: TSmallintField;
    zqry_PRODUTOSRECEITACODFISC: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPMC: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALMC: TSmallintField;
    zqry_PRODUTOSRECEITACODMARCA: TWideStringField;
    zqry_PRODUTOSRECEITADESCAUXPROD: TWideStringField;
    zqry_PRODUTOSRECEITATIPOPROD: TWideStringField;
    zqry_PRODUTOSRECEITACVPROD: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPGP: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALGP: TSmallintField;
    zqry_PRODUTOSRECEITACODGRUP: TWideStringField;
    zqry_PRODUTOSRECEITACODBARPROD: TWideStringField;
    zqry_PRODUTOSRECEITACLOTEPROD: TWideStringField;
    zqry_PRODUTOSRECEITASERIEPROD: TWideStringField;
    zqry_PRODUTOSRECEITACODFABPROD: TWideStringField;
    zqry_PRODUTOSRECEITACOMISPROD: TFloatField;
    zqry_PRODUTOSRECEITAPESOLIQPROD: TFloatField;
    zqry_PRODUTOSRECEITAPESOBRUTPROD: TFloatField;
    zqry_PRODUTOSRECEITAQTDMINPROD: TFloatField;
    zqry_PRODUTOSRECEITAQTDMAXPROD: TFloatField;
    zqry_PRODUTOSRECEITADTMPMPROD: TDateField;
    zqry_PRODUTOSRECEITACUSTOMPMPROD: TFloatField;
    zqry_PRODUTOSRECEITACUSTOPEPSPROD: TFloatField;
    zqry_PRODUTOSRECEITACUSTOINFOPROD: TFloatField;
    zqry_PRODUTOSRECEITAPRECOBASEPROD: TFloatField;
    zqry_PRODUTOSRECEITAPRECOCOMISPROD: TFloatField;
    zqry_PRODUTOSRECEITASLDPROD: TFloatField;
    zqry_PRODUTOSRECEITASLDRESPROD: TFloatField;
    zqry_PRODUTOSRECEITASLDCONSIGPROD: TFloatField;
    zqry_PRODUTOSRECEITASLDLIQPROD: TFloatField;
    zqry_PRODUTOSRECEITAATIVOPROD: TWideStringField;
    zqry_PRODUTOSRECEITADTULTCPPROD: TDateField;
    zqry_PRODUTOSRECEITAQTDULTCPPROD: TFloatField;
    zqry_PRODUTOSRECEITADESCCOMPPROD: TWideStringField;
    zqry_PRODUTOSRECEITAOBSPROD: TWideStringField;
    zqry_PRODUTOSRECEITAVERIFPROD: TWideStringField;
    zqry_PRODUTOSRECEITARMAPROD: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPPE: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALPE: TSmallintField;
    zqry_PRODUTOSRECEITACODPE: TIntegerField;
    zqry_PRODUTOSRECEITACODEMPCC: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALCC: TSmallintField;
    zqry_PRODUTOSRECEITAANOCC: TSmallintField;
    zqry_PRODUTOSRECEITACODCC: TWideStringField;
    zqry_PRODUTOSRECEITAUSARECEITAPROD: TWideStringField;
    zqry_PRODUTOSRECEITAUSATELAADICPDV: TWideStringField;
    zqry_PRODUTOSRECEITAVLRDENSIDADE: TFloatField;
    zqry_PRODUTOSRECEITAVLRCONCENT: TFloatField;
    zqry_PRODUTOSRECEITACOMPRIMENTO: TFloatField;
    zqry_PRODUTOSRECEITALARGURA: TFloatField;
    zqry_PRODUTOSRECEITAESPESSURA: TFloatField;
    zqry_PRODUTOSRECEITAGUIATRAFPROD: TWideStringField;
    zqry_PRODUTOSRECEITAQTDEMBALAGEM: TFloatField;
    zqry_PRODUTOSRECEITACODEANPROD: TWideStringField;
    zqry_PRODUTOSRECEITACUBAGEM: TFloatField;
    zqry_PRODUTOSRECEITACODEMPSC: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALSC: TSmallintField;
    zqry_PRODUTOSRECEITACODSECAO: TWideStringField;
    zqry_PRODUTOSRECEITACODEMPTC: TSmallintField;
    zqry_PRODUTOSRECEITACODFILIALTC: TSmallintField;
    zqry_PRODUTOSRECEITACODTPCHAMADO: TIntegerField;
    zqry_PRODUTOSRECEITAQTDHORASSERV: TFloatField;
    zqry_PRODUTOSRECEITANRODIASVALID: TSmallintField;
    zqry_PRODUTOSRECEITADESCCLI: TWideStringField;
    zqry_PRODUTOSRECEITAQTDPORPLANO: TSmallintField;
    zqry_PRODUTOSRECEITANROPLANOS: TSmallintField;
    zqry_PRODUTOSRECEITACERTFSC: TWideStringField;
    zqry_PRODUTOSRECEITAFATORFSC: TFloatField;
    zqry_PRODUTOSRECEITACODEMPOG: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALOG: TSmallintField;
    zqry_PRODUTOSRECEITACODPRODOG: TIntegerField;
    zqry_PRODUTOSRECEITACODEMPMG: TIntegerField;
    zqry_PRODUTOSRECEITACODFILIALMG: TSmallintField;
    zqry_PRODUTOSRECEITACODMODG: TIntegerField;
    zqry_PRODUTOSRECEITAPRAZOREPO: TIntegerField;
    zqry_PRODUTOSRECEITAMEDIAVENDA: TFloatField;
    zqry_PRODUTOSRECEITAEMMANUT: TWideStringField;
    zqry_PRODUTOSRECEITADTINS: TDateField;
    zqry_PRODUTOSRECEITAHINS: TTimeField;
    zqry_PRODUTOSRECEITAIDUSUINS: TWideStringField;
    zqry_PRODUTOSRECEITADTALT: TDateField;
    zqry_PRODUTOSRECEITAHALT: TTimeField;
    zqry_PRODUTOSRECEITAIDUSUALT: TWideStringField;
    zqry_PRODUTOSRECEITAFINAME: TWideStringField;
    zqry_PRODUTOSRECEITAMDA: TWideStringField;
    zqry_PRODUTOSRECEITAPTSFIDELIDADE: TIntegerField;
    zqry_PRODUTOSRECEITACURVA: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_ORIGEM: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_IAT: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_ICMS: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_BLOQUEIO: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_USA_PROMO: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_PBALANCA: TWideStringField;
    zqry_PRODUTOSRECEITAPROD_ATIVO: TWideStringField;
    zqry_PRODUTOSRECEITACODNCM: TWideStringField;
    zqry_PRODUTOSRECEITAMARKUP: TFloatField;
    zqry_PRODUTOSRECEITAICRE: TWideStringField;
    zqry_PRODUTOSRECEITACEST: TWideStringField;
    zqry_PRODUTOSRECEITAPROMOCAO: TWideStringField;
    zqry_PRODUTOSRECEITACODMIX: TIntegerField;
    zqry_PRODUTOSRECEITAINTERVSEGUR: TIntegerField;
    zqry_PRODUTOSRECEITACLASSETOXICO: TWideStringField;
    zqry_PRODUTOSRECEITAGRUPOQUIMICO: TWideStringField;
    zqry_PRODUTOSRECEITANOMETECNICO: TWideStringField;
    zqry_PRODUTOSRECEITAPRINCIPIOATIVO: TWideStringField;
    zqry_PRODUTOSRECEITALOCALPROD: TWideStringField;
    zqry_PRODUTOSRECEITACODCLASSE: TWideStringField;
    zqry_PRODUTOSRECEITACLASSE: TWideStringField;
    zqry_PRODUTOSRECEITACONCENTRACAO: TWideStringField;
    zqry_PRODUTOSRECEITAFORMULACAO: TWideStringField;
    zqry_PRODUTOSRECEITAANTIDOTO: TWideStringField;
    zdts_PRODUTOSRECEITA: TDataSource;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    btn_NOVO_CULT: TBitBtn;
    ZQuery1: TZQuery;
    btn_GRAVAR_CULT: TBitBtn;
    Panel1: TPanel;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    btn_NOVO_DIAG: TBitBtn;
    btn_GRAVA_DIAG: TBitBtn;
    ZQuery2: TZQuery;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    CULTURA: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    ComboBox1: TComboBox;
    Label8: TLabel;
    DBGrid5: TDBGrid;
    btn_IMPRIMIR: TBitBtn;
    lbl_numreceita: TLabel;
    DBNavigator1: TDBNavigator;
    lbl_CULTSELECIONA: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_NOVO_CULTClick(Sender: TObject);
    procedure btn_GRAVAR_CULTClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btn_NOVO_DIAGClick(Sender: TObject);
    procedure btn_GRAVA_DIAGClick(Sender: TObject);
    procedure btn_IMPRIMIRClick(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure PageControl1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_RECEITUARIO: Tfrm_DLG_RECEITUARIO;

implementation

{$R *.dfm}

uses dados, uFuncoes, rel_receituario;

procedure Tfrm_DLG_RECEITUARIO.btn_GRAVA_DIAGClick(Sender: TObject);
begin
IF (DBEDIT4.Text='') {OR (DBEDIT5.Text='')} OR (ComboBox1.Text='') THEN
begin
  mostratelaaviso('Há campos de preenchimento obrigatório não informados','');
end
else
begin
  if ComboBox1.Text='DOENCAS' THEN DM_DADOS.zqry_EQDIAGNOSTICOTIPO.AsString:='D';
  if ComboBox1.Text='PRAGAS' THEN DM_DADOS.zqry_EQDIAGNOSTICOTIPO.AsString:='P';
  if ComboBox1.Text='ERVAS' THEN DM_DADOS.zqry_EQDIAGNOSTICOTIPO.AsString:='E';
  if ComboBox1.Text='OUTROS' THEN DM_DADOS.zqry_EQDIAGNOSTICOTIPO.AsString:='O';
  if dm_dados.zqry_EQDIAGNOSTICO.State in[ dsedit,dsinsert] then dm_dados.zqry_eqdiagnostico.Post;
  //dm_dados.zqry_EQDIAGNOSTICO.ApplyUpdates;
  showmessage('Diagnóstico cadastrado com sucesso');
end;
end;

procedure Tfrm_DLG_RECEITUARIO.btn_IMPRIMIRClick(Sender: TObject);
begin
if lbl_numreceita.Caption='' then
begin
  DM_DADOS.zqry_VDRECEITA.Params.Clear;
  DM_DADOS.zqry_VDRECEITA.Close;
  DM_dADOS.zqry_VDRECEITA.SQL.Clear;
  DM_DADOS.zqry_VDRECEITA.SQL.Add('SELECT * FROM VDRECEITA');
  dm_Dados.zqry_VDreceita.Open;
  if dm_Dados.zqry_VDreceita.IsEmpty then
  begin
     mostratelaaviso('Nada localizado com base nas informações','tab.: vdreceita');
  end
  else
  begin
    frm_rel_receituario.rlreport1.preview;
  end;
end
else
begin
  DM_DADOS.zqry_VDRECEITA.Params.Clear;
  DM_DADOS.zqry_VDRECEITA.Close;
  DM_dADOS.zqry_VDRECEITA.SQL.Clear;
  DM_DADOS.zqry_VDRECEITA.SQL.Add('SELECT * FROM VDRECEITA WHERE CODRECEITA=:RECEITA');
  dm_Dados.zqry_VDreceita.ParamByName('receita').AsInteger:=strtoint(lbl_numreceita.Caption);
  dm_Dados.zqry_VDreceita.Open;
  if dm_Dados.zqry_VDreceita.IsEmpty then
  begin
     mostratelaaviso('Nada localizado com base nas informações','tab.: vdreceita');
  end
  else
  begin
    frm_rel_receituario.rlreport1.preview;
  end;
end;
end;

procedure Tfrm_DLG_RECEITUARIO.btn_NOVO_CULTClick(Sender: TObject);
begin
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(codcultura) as Sequencia FROM eqcultura');
zquery1.Open;
dm_dados.zqry_eqcultura.Close;
dm_dados.zqry_eqcultura.Open;
dm_dados.zqry_eqcultura.Insert;
dm_dados.zqry_EQCULTURACODCULTURA.AsInteger:=(1+zquery1.FieldByname('sequencia').asInteger);
dbedit1.text:= inttostr(1+zquery1.FieldByname('sequencia').asInteger);
dbedit2.setfocus;
end;

procedure Tfrm_DLG_RECEITUARIO.btn_NOVO_DIAGClick(Sender: TObject);
begin
{IF DM_DADOS.zqry_EQCULTURACODCULTURA.asinteger IsNull  THEN
BEGIN
  //
END
ELSE
BEGIN}
  zquery2.Close;
  zquery2.SQL.Clear;
  zquery2.sql.add('SELECT MAX(coddiagnostico) as SeqDIAG FROM eqDIAGNOSTICO');
  zquery2.Open;
  dm_dados.zqry_eqdiagnostico.Close;
  dm_dados.zqry_eqdiagnostico.Open;
  dm_dados.zqry_eqdiagnostico.Insert;
  dm_dados.zqry_EQDIAGNOSTICOCODDIAGNOSTICO.AsInteger:=(1+zquery2.FieldByname('seqDIAG').asInteger);
  dbedit3.text:= inttostr(1+zquery2.FieldByname('seqDIAG').asInteger);
  dbedit4.Text:= inttostr(dm_dados.zqry_EQCULTURACODCULTURA.AsInteger);
  dbedit5.setfocus;
//END;
end;

procedure Tfrm_DLG_RECEITUARIO.btn_GRAVAR_CULTClick(Sender: TObject);
begin
if dbedit2.Text='' then
begin
  showmessage('Necessário informar Nome da Cultura');
  dbedit2.SetFocus;
end
else
begin
  if dm_Dados.zqry_EQCULTURA.State in [dsedit,dsinsert] then dm_dados.zqry_eqcultura.Post;
  showmessage('Dados gravados com sucesso');
end;
end;

procedure Tfrm_DLG_RECEITUARIO.DBGrid1CellClick(Column: TColumn);
begin
dm_dados.zqry_eqlote.Params.clear;
dm_dados.zqry_eqlote.close;
dm_dados.zqry_eqlote.sql.clear;
dm_dados.zqry_eqlote.sql.add('select * from eqlote where codprod=:prodcod');
dm_Dados.zqry_eqlote.parambyname('prodcod').asinteger:=zqry_PRODUTOSRECEITACODPROD.asinteger;
dm_dados.zqry_eqlote.open;
if dm_Dados.zqry_EQLOTE.IsEmpty then  mostratelaaviso('Nada localizado com base nas informações','tab.: eqlote');

end;

procedure Tfrm_DLG_RECEITUARIO.DBGrid2CellClick(Column: TColumn);
begin
DM_DADOS.zqry_EQDIAGNOSTICO.Params.Clear;
DM_DADOS.zqry_EQDIAGNOSTICO.Close;
DM_DADOS.zqry_EQDIAGNOSTICO.SQL.Clear;
DM_DADOS.zqry_EQDIAGNOSTICO.SQL.Add('SELECT * FROM EQDIAGNOSTICO WHERE CODCULTURA=:CULTURA order by nomecomum');
DM_dADOS.zqry_EQDIAGNOSTICO.ParamByName('cultura').AsInteger:=dm_DADOS.zqry_EQCULTURACODCULTURA.AsInteger;
dm_dados.zqry_EQDIAGNOSTICO.Open;
if dm_dados.zqry_EQDIAGNOSTICO.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: eqdiagnostico');
lbl_CULTSELECIONA.Caption:='A Cultura '+dm_dados.zqry_EQCULTURACULTURA.AsString+' está selecionado';
end;

procedure Tfrm_DLG_RECEITUARIO.DBGrid5CellClick(Column: TColumn);
begin
lbl_numreceita.Caption:=inttostr(dm_dados.zqry_VDRECEITACODRECEITA.AsInteger);
end;

procedure Tfrm_DLG_RECEITUARIO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_Dados.zqry_EQCULTURA.Cancel;
end;

procedure Tfrm_DLG_RECEITUARIO.FormShow(Sender: TObject);
begin
zqry_PRODUTOSRECEITA.Params.Clear;
ZQRY_PRODUTOSRECEITA.Close;
zqry_PRODUTOSRECEITA.SQL.Clear;
zqry_PRODUTOSRECEITA.SQL.Add('SELECT * from eqproduto where ativoprod=:ativo and codemp=:empcod and usareceitaprod=:receita');
zqry_PRODUTOSRECEITA.ParamByName('ativo').AsString:='S';
zqry_PRODUTOSRECEITA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
zqry_PRODUTOSRECEITA.ParamByName('receita').AsString:='S';
zqry_PRODUTOSRECEITA.Open;
if zqry_PRODUTOSRECEITA.IsEmpty THEN  mostratelaaviso('Nada localizado com base nas informações','tab.: eqproduto');
//
dm_dados.zqry_EQCULTURA.Params.Clear;
dm_Dados.zqry_EQCULTURA.Close;
dm_dados.zqry_eqcultura.SQL.Clear;
dm_Dados.zqry_EQCULTURA.SQL.Add('select * from eqcultura order by cultura');
dm_dados.zqry_EQCULTURA.Open;
if dm_dados.zqry_EQCULTURA.IsEmpty  then  mostratelaaviso('Nada localizado com base nas informações','tab.: eqcultura');
//
DM_DADOS.zqry_VDRECEITA.Params.Clear;
DM_DADOS.zqry_VDRECEITA.Close;
DM_dADOS.zqry_VDRECEITA.SQL.Clear;
DM_DADOS.zqry_VDRECEITA.SQL.Add('SELECT * FROM VDRECEITA');
dm_Dados.zqry_VDreceita.Open;
end;

procedure Tfrm_DLG_RECEITUARIO.PageControl1Enter(Sender: TObject);
begin
DM_DADOS.zqry_VDRECEITA.Params.Clear;
DM_DADOS.zqry_VDRECEITA.Close;
DM_dADOS.zqry_VDRECEITA.SQL.Clear;
DM_DADOS.zqry_VDRECEITA.SQL.Add('SELECT * FROM VDRECEITA');
dm_Dados.zqry_VDreceita.Open;
end;

end.
