unit rel_ulttitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser, RLFilters,
  RLDraftFilter, RLXLSFilter, RLPDFFilter;

type
  Tfrm_REL_ULTTITULOS = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLExpressionParser1: TRLExpressionParser;
    rl_datas: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_ULTTITULOS: Tfrm_REL_ULTTITULOS;

implementation

{$R *.dfm}

uses con_receber;

procedure Tfrm_REL_ULTTITULOS.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//rl_datas.caption:=frm_con_receber.dt_inicio.Text+ ' e '+frm_con_receber.dt_fim.Text;

end;

end.
