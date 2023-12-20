unit rel_movimento50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser;

type
  Tfrm_REL_MOVIMENTO50 = class(TForm)
    RLREPORT1: TRLReport;
    RLBand1: TRLBand;
    rl_TITULO: TRLLabel;
    RLDraw1: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_MOVIMENTO50: Tfrm_REL_MOVIMENTO50;

implementation

{$R *.dfm}

end.
