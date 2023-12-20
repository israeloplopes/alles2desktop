unit dlg_fechanota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_DLG_FECHANOTA = class(TForm)
    btn_FECHAR: TBitBtn;
    procedure btn_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_FECHANOTA: Tfrm_DLG_FECHANOTA;

implementation

{$R *.dfm}

procedure Tfrm_DLG_FECHANOTA.btn_FECHARClick(Sender: TObject);
begin
CLOSE;
end;

end.
