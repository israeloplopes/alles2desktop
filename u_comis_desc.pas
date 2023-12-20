unit u_comis_desc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_COMISDESC = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TIntegerField;
    zqry_CADASTROCODREGCOMISDESC: TSmallintField;
    zqry_CADASTRODESCREGCOMISDESC: TWideStringField;
    zqry_CADASTRODESCONTO: TFloatField;
    zqry_CADASTROCOMISSAO: TFloatField;
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
  frm_CAD_COMISDESC: Tfrm_CAD_COMISDESC;

implementation

{$R *.dfm}

end.
