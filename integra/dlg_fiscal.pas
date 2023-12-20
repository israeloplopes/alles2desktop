unit dlg_fiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_FISCAL = class(TForm)
    btn_SAIR: TBitBtn;
    btn_SINTEGRA: TBitBtn;
    btn_SPEDFISCAL: TBitBtn;
    btn_SPEDCONTABIL: TBitBtn;
    btn_SPEDPISCOFINS: TBitBtn;
    procedure btn_SAIRClick(Sender: TObject);
    procedure btn_SINTEGRAClick(Sender: TObject);
    procedure btn_SPEDCONTABILClick(Sender: TObject);
    procedure btn_SPEDFISCALClick(Sender: TObject);
    procedure btn_SPEDPISCOFINSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_FISCAL: Tfrm_FISCAL;

implementation

{$R *.dfm}

uses sintegra;

procedure Tfrm_FISCAL.btn_SINTEGRAClick(Sender: TObject);
begin
frm_sintegra.show;
end;

procedure Tfrm_FISCAL.btn_SPEDCONTABILClick(Sender: TObject);
begin
  if FileExists ('SPEDContabil.exe') then Winexec('SPEDContabil.exe',sw_shownormal) else Showmessage('Módulo não Localizado'#13'SPED Contábil');
end;

procedure Tfrm_FISCAL.btn_SPEDFISCALClick(Sender: TObject);
begin
  if FileExists ('SPEDFiscal.exe') then Winexec('SPEDFiscal.exe',sw_shownormal) else Showmessage('Módulo não Localizado'#13'SPED Fiscal');

end;

procedure Tfrm_FISCAL.btn_SPEDPISCOFINSClick(Sender: TObject);
begin
  if FileExists ('SPEDPISCOFINS.exe') then Winexec('SPEDPISCOFINS.exe',sw_shownormal) else Showmessage('Módulo não Localizado'#13'SPED PIS/COFINS');

end;

procedure Tfrm_FISCAL.btn_SAIRClick(Sender: TObject);
begin
CLOSE;
end;

end.
