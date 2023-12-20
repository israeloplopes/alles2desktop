unit uNotifica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfrm_NOTIFICA = class(TForm)
    lbl_TITULO: TLabel;
    lbl_AVISO: TLabel;
    Panel1: TPanel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_NOTIFICA: Tfrm_NOTIFICA;

implementation

{$R *.dfm}

procedure Tfrm_NOTIFICA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TIMER1.Enabled:=FALSE;
end;

procedure Tfrm_NOTIFICA.Timer1Timer(Sender: TObject);
begin
FRM_NOTIFICA.Close;
end;

end.