unit u_unidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  Tfrm_CAD_UNIDADES = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODUNID: TWideStringField;
    zqry_CADASTRODESCUNID: TWideStringField;
    zqry_CADASTROCASASDEC: TSmallintField;
    zqry_CADASTROCALCVOLEMB: TWideStringField;
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure btn_EDITAClick(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_UNIDADES: Tfrm_CAD_UNIDADES;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_UNIDADES.btn_EDITAClick(Sender: TObject);
begin
  inherited;
  dbedit1.Text;
end;

procedure Tfrm_CAD_UNIDADES.btn_GRAVAClick(Sender: TObject);
begin
  zqry_CADASTROCODEMP.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIAL.AsInteger:=1;
  zqry_CADASTRODTINS.AsDateTime:=now;
  zqry_CADASTROHINS.AsDateTime:=now;
  zqry_CADASTROIDUSUINS.AsString:=dm_dados.usuario;
  inherited;
end;

procedure Tfrm_CAD_UNIDADES.btn_NOVOClick(Sender: TObject);
begin
  inherited;
  DBEDIT1.SetFocus;
end;

procedure Tfrm_CAD_UNIDADES.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from equnidade where codemp=:empcod order by codunid');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='UNIDADES'
end;

end.
