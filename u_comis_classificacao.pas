unit u_comis_classificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_CLASCOMIS = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TIntegerField;
    zqry_CADASTROCODCLCOMIS: TIntegerField;
    zqry_CADASTRODESCCLCOMIS: TWideStringField;
    zqry_CADASTROPERCFATCLCOMIS: TFloatField;
    zqry_CADASTROPERCPGTOCLCOMIS: TFloatField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_CLASCOMIS: Tfrm_CAD_CLASCOMIS;

implementation

{$R *.dfm}

end.
