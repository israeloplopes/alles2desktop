unit uAviso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  Tfrm_AVISO = class(TForm)
    Label1: TLabel;
    lb7: TLabel;
    lb3: TLabel;
    lb2: TLabel;
    btn_FECHAR: TBitBtn;
    pn_AVISO: TPanel;
    procedure btn_FECHARClick(Sender: TObject);
    procedure lb7Click(Sender: TObject);
    procedure lb3Click(Sender: TObject);
    procedure lb2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_AVISO: Tfrm_AVISO;

implementation

{$R *.dfm}

procedure Tfrm_AVISO.btn_FECHARClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_AVISO.Image1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_AVISO.lb2Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_AVISO.lb3Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_AVISO.lb7Click(Sender: TObject);
begin
close;
end;

end.
