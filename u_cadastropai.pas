unit u_cadastropai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ImgList, Vcl.Buttons, ZSqlUpdate, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, System.ImageList;

type
  Tfrm_CADASTROPAI = class(TForm)
    pn_CABECALHO: TPanel;
    lbl_TITULO_FORM: TLabel;
    pn_BOTOES: TPanel;
    lbl_STATUS_DADOS: TLabel;
    btn_NOVO: TBitBtn;
    btn_CANCELA: TBitBtn;
    btn_APAGA: TBitBtn;
    btn_EDITA: TBitBtn;
    btn_GRAVA: TBitBtn;
    btn_PESQUISA: TBitBtn;
    btn_SAI: TBitBtn;
    btn_PRIMEIRO: TBitBtn;
    btn_ULTIMO: TBitBtn;
    btn_ANTERIOR: TBitBtn;
    btn_PROXIMO: TBitBtn;
    BalloonHint1: TBalloonHint;
    ImageList1: TImageList;
    zqry_CADASTRO: TZQuery;
    zdts_CADASTRO: TDataSource;
    zupt_CADASTRO: TZUpdateSQL;
    StatusBar1: TStatusBar;
    DBGrid2: TDBGrid;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Timer1: TTimer;
    procedure btn_NOVOClick(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure btn_CANCELAClick(Sender: TObject);
    procedure btn_APAGAClick(Sender: TObject);
    procedure btn_PRIMEIROClick(Sender: TObject);
    procedure btn_ANTERIORClick(Sender: TObject);
    procedure btn_PROXIMOClick(Sender: TObject);
    procedure btn_ULTIMOClick(Sender: TObject);
    procedure ChangeEnter(Sender: TObject);
    procedure ChangeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_SAIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_EDITAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitaControles;
    procedure HabilitaControlesVisuais(Status: Boolean);
  public
    { Public declarations }
  end;

var
  frm_CADASTROPAI: Tfrm_CADASTROPAI;

implementation

uses u_dados, u_funcoes;

{$R *.dfm}

procedure Tfrm_CADASTROPAI.btn_ANTERIORClick(Sender: TObject);
begin
zqry_cadastro.Prior;
end;

procedure Tfrm_CADASTROPAI.btn_APAGAClick(Sender: TObject);
begin
if MessageDlg('Deseja Excluir o Registro', mtconfirmation, [mbYes, mbNo], 0)
    = mrYes then
  Begin
    zqry_CADASTRO.Delete;
    StatusBar1.Panels[0].Text:='Apagando Registro';
  End;
end;

procedure Tfrm_CADASTROPAI.btn_CANCELAClick(Sender: TObject);
begin
if zqry_CADASTRO.State in [dsedit,dsinsert] then
 begin
  zqry_cadastro.Cancel;
  StatusBar1.Panels[0].Text:='Cancelando Operação Registro';
 end;
end;

procedure Tfrm_CADASTROPAI.btn_EDITAClick(Sender: TObject);
begin
if zqry_CADASTRO.State in [dsedit,dsinsert] then
 begin
  zqry_cadastro.edit;
  StatusBar1.Panels[0].Text:='Editando Registro';
 end;
end;

procedure Tfrm_CADASTROPAI.btn_GRAVAClick(Sender: TObject);
begin
 if zqry_cadastro.state in [dsedit,dsinsert] then
  begin
    zqry_cadastro.Post;
    StatusBar1.Panels[0].Text:='Gravando Registro';
  end;
end;

procedure Tfrm_CADASTROPAI.btn_NOVOClick(Sender: TObject);
begin
if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.Insert;
    StatusBar1.Panels[0].Text:='Inserindo Novo Registro';
  end;
end;

procedure Tfrm_CADASTROPAI.btn_PRIMEIROClick(Sender: TObject);
begin
zqry_cadastro.First;
end;

procedure Tfrm_CADASTROPAI.btn_PROXIMOClick(Sender: TObject);
begin
zqry_cadastro.Next;
end;

procedure Tfrm_CADASTROPAI.btn_SAIClick(Sender: TObject);
begin
//zqry_CADASTRO.Cancel;
//memoria;
close;
end;

procedure Tfrm_CADASTROPAI.btn_ULTIMOClick(Sender: TObject);
begin
zqry_cadastro.Last;
end;

procedure Tfrm_CADASTROPAI.ChangeEnter(Sender: TObject);
begin
  if Sender is TDBEdit then
    TDBEdit(Sender).Color := $00E6FED8
  else if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := $00E6FED8
  else if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := $00E6FED8
  else if Sender is TDBMemo then
    TDBMemo(Sender).Color := $00E6FED8;
end;

procedure Tfrm_CADASTROPAI.ChangeExit(Sender: TObject);
begin
  if Sender is TDBEdit then
    TDBEdit(Sender).Color := clWindow
  else if Sender is TDBLookupComboBox then
    TDBLookupComboBox(Sender).Color := clWindow
  else if Sender is TDBComboBox then
    TDBComboBox(Sender).Color := clWindow
  else if Sender is TDBMemo then
    TDBMemo(Sender).Color := clWindow;
end;

procedure Tfrm_CADASTROPAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;

procedure Tfrm_CADASTROPAI.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
    begin
      TDBEdit(Components[I]).OnEnter  := ChangeEnter;
      TDBEdit(Components[I]).OnExit   := ChangeExit;
    end
    else
    if Components[I] is TDBLookupComboBox then
    begin
      TDBLookupComboBox(Components[I]).OnEnter := ChangeEnter;
      TDBLookupComboBox(Components[I]).OnExit  := ChangeExit;
    end
    else
    if Components[I] is TDBComboBox then
    begin
      TDBComboBox(Components[I]).OnEnter := ChangeEnter;
      TDBComboBox(Components[I]).OnExit  := ChangeExit;
    end
    else
    if Components[I] is TDBMemo then
    begin
      TDBMemo(Components[I]).OnEnter   := ChangeEnter;
      TDBMemo(Components[I]).OnExit    := ChangeExit;
    end
  end;
end;

procedure Tfrm_CADASTROPAI.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:='Usuário : '+dm_dados.meuusuario;
  zqry_CADASTRO.Params.Clear;
  zqry_cadastro.Close;
  zqry_cadastro.SQL.Clear;
end;

procedure Tfrm_CADASTROPAI.HabilitaControles;
begin
  Btn_Novo.Enabled     := not(zqry_cadastro.State in [dsInsert, dsEdit]);
  Btn_Grava.Enabled   := (zqry_cadastro.State in [dsInsert, dsEdit]);
  Btn_Edita.Enabled   := (zqry_cadastro.State in [dsBrowse]);
  Btn_Apaga.Enabled  := (zqry_cadastro.State in [dsBrowse, dsEdit]);
  Btn_Cancela.Enabled := (zqry_cadastro.State in [dsInsert, dsEdit]);
  Btn_Pesquisa.Enabled := not (zqry_cadastro.State in [dsInsert, dsEdit]);
end;

procedure Tfrm_CADASTROPAI.HabilitaControlesVisuais(Status: Boolean);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TDBEdit then
      TDBEdit(Components[I]).Enabled := Status
    else if Components[I] is TDBLookupComboBox then
      TDBLookupComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBComboBox then
      TDBComboBox(Components[I]).Enabled := Status
    else if Components[I] is TDBMemo then
      TDBMemo(Components[I]).Enabled := Status;
  end;
end;

procedure Tfrm_CADASTROPAI.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:='Em : '+timetostr(time);
end;

end.
