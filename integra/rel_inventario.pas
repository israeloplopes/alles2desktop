unit rel_inventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLDraftFilter,
  RLXLSFilter, RLPDFFilter, RLHTMLFilter, RLParser;

type
  Tfrm_REL_INVENTARIO = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLBand3: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
    RLLabel10: TRLLabel;
    procedure RLDBResult1Compute(Sender: TObject; var Value: Variant;
      var Text: string; var ComputeIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_INVENTARIO: Tfrm_REL_INVENTARIO;
  variavel: double;


implementation

{$R *.dfm}

procedure Tfrm_REL_INVENTARIO.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rllabel10.caption := 'Valor Total '+ floattostrF(variavel,ffnumber,12,2);
variavel := 0.00;
end;

procedure Tfrm_REL_INVENTARIO.RLDBResult1Compute(Sender: TObject;
  var Value: Variant; var Text: string; var ComputeIt: Boolean);
begin
variavel := (variavel + rldbresult1.field.asFloat);
end;

end.
