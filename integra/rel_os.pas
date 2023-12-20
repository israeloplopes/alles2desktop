unit rel_os;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLXLSFilter, RLFilters,
  RLPDFFilter, RLDraftFilter;

type
  Tfrm_REL_OS = class(TForm)
    rlreport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
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
    rl_nomestatus: TRLLabel;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel6: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLLabel7: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw9: TRLDraw;
    RLDBText10: TRLDBText;
    procedure rlreport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_OS: Tfrm_REL_OS;

implementation

{$R *.dfm}

uses dados, dlg_os;

procedure Tfrm_REL_OS.rlreport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_os.MaskEdit1.Text+ ' e '+frm_dlg_os.MaskEdit2.Text;
rl_nomestatus.caption:='Tipo de Status da OS é '+frm_dlg_os.lbl_nomestatus.Caption;
end;

end.
