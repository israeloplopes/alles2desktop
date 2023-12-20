unit rel_retboletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, RLParser;

type
  Tfrm_REL_RETBOLETOS = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel1: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText6: TRLDBText;
    DataSource1: TDataSource;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText15: TRLDBText;
    RLBand3: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_RETBOLETOS: Tfrm_REL_RETBOLETOS;

implementation

{$R *.dfm}

end.
