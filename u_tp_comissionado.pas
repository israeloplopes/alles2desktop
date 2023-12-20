unit u_tp_comissionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_TPCOMISSIONADO = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODTIPOVEND: TIntegerField;
    zqry_CADASTRODESCTIPOVEND: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_TPCOMISSIONADO: Tfrm_CAD_TPCOMISSIONADO;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_TPCOMISSIONADO.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from vdtipovend where codemp=:empcod order by codtipovend');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='TIPOS DE COMISSIONADO'

end;

end.
