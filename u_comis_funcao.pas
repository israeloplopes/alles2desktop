unit u_comis_funcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  Tfrm_CAD_FUNCAO = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODFUNC: TIntegerField;
    zqry_CADASTRODESCFUNC: TWideStringField;
    zqry_CADASTROCBOFUNC: TWideStringField;
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
  frm_CAD_FUNCAO: Tfrm_CAD_FUNCAO;

implementation

{$R *.dfm}

end.
