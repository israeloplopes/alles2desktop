unit u_grupos1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CADASTROPAI1 = class(Tfrm_CADASTROPAI)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CADASTROPAI1: Tfrm_CADASTROPAI1;

implementation

{$R *.dfm}

end.
