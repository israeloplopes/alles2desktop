unit rel_movcaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_REL_MOVCAIXA = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rl_TITULO: TRLLabel;
    RLDraw1: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rl_VALOR: TRLLabel;
    rl_DESCREVE: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_MOVCAIXA: Tfrm_REL_MOVCAIXA;

implementation

{$R *.dfm}

end.
