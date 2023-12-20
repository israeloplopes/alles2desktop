unit u_comis_regra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_COMISREGRA = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODREGRCOMIS: TIntegerField;
    zqry_CADASTRODESCREGRCOMIS: TWideStringField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROCODEMPSC: TIntegerField;
    zqry_CADASTROCODFILIALSC: TSmallintField;
    zqry_CADASTROCODSECAO: TWideStringField;
    zqry_CADASTROPERCCOMISGERAL: TFloatField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_COMISREGRA: Tfrm_CAD_COMISREGRA;

implementation

{$R *.dfm}

end.
