unit rel_difpmz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.StdCtrls, RLParser,
  RLRichFilter, RLPDFFilter, RLXLSFilter, RLFilters, RLPreviewForm;

type
  Tfrm_REL_DIFPMZ = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLExpressionParser1: TRLExpressionParser;
    RLDBText3: TRLDBText;
    RLBand5: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLXLSFilter2: TRLXLSFilter;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rl_endereco: TRLLabel;
    rl_endereco1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    rl_datas: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel8: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText9: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_DIFPMZ: Tfrm_REL_DIFPMZ;

implementation

{$R *.dfm}

uses dados, dlg_inventario, dlg_difpmz;

procedure Tfrm_REL_DIFPMZ.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_difpmz.MaskEdit1.Text+ ' e '+frm_dlg_difpmz.MaskEdit2.Text;

end;

end.
