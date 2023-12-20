unit u_almoxarifados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset,  Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  Tfrm_CAD_ALMOXARIFADOS = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODALMOX: TIntegerField;
    zqry_CADASTRODESCALMOX: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure btn_NOVOClick(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_ALMOXARIFADOS: Tfrm_CAD_ALMOXARIFADOS;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_ALMOXARIFADOS.btn_GRAVAClick(Sender: TObject);
begin
  zqry_CADASTROCODEMP.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIAL.AsInteger:=1;
  zqry_CADASTRODTINS.AsDateTime:=now;
  zqry_CADASTROHINS.AsDateTime:=now;
  zqry_CADASTROIDUSUINS.AsString:=dm_dados.usuario;
  inherited;

end;

procedure Tfrm_CAD_ALMOXARIFADOS.btn_NOVOClick(Sender: TObject);
begin
  inherited;
  DBEDIT1.SetFocus;
end;

procedure Tfrm_CAD_ALMOXARIFADOS.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from eqalmox where codemp=:empcod order by descalmox');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='ALMOXARIFADOS'
end;

end.
