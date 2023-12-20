unit u_tp_atendente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_CAD_TPATENDENTE = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODTPATEND: TIntegerField;
    zqry_CADASTRODESCTPATEND: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure btn_EDITAClick(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_TPATENDENTE: Tfrm_CAD_TPATENDENTE;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_TPATENDENTE.btn_EDITAClick(Sender: TObject);
begin
  inherited;
  dbedit1.Text;
end;

procedure Tfrm_CAD_TPATENDENTE.btn_GRAVAClick(Sender: TObject);
begin
  zqry_CADASTROCODEMP.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIAL.AsInteger:=1;
  zqry_CADASTRODTINS.AsDateTime:=now;
  zqry_CADASTROHINS.AsDateTime:=now;
  zqry_CADASTROIDUSUINS.AsString:=dm_dados.usuario;
  inherited;
end;

procedure Tfrm_CAD_TPATENDENTE.btn_NOVOClick(Sender: TObject);
begin
  inherited;
  DBEDIT1.SetFocus;
end;

procedure Tfrm_CAD_TPATENDENTE.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from attipoatend where codemp=:empcod order by codtpatend');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='TIPOS DE ATENDENTE'
end;

end.
