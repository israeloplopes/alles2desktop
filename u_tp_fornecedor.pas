unit u_tp_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_TPFORNECEDOR = class(Tfrm_CADASTROPAI)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_TPFORNECEDOR: Tfrm_CAD_TPFORNECEDOR;

implementation

{$R *.dfm}

end.
