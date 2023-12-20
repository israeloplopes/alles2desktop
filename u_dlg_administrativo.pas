unit u_dlg_administrativo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_DLG_ADMINISTRATIVO = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ADMINISTRATIVO: Tfrm_DLG_ADMINISTRATIVO;

implementation

{$R *.dfm}

uses u_dlg_instantaneo;

procedure Tfrm_DLG_ADMINISTRATIVO.BitBtn3Click(Sender: TObject);
begin
frm_dlg_instantaneo.show;
end;

end.
