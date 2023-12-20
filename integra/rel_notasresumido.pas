unit rel_notasresumido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  RLParser;

type
  Tfrm_REL_NOTASRESUMIDO = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    rl_datas: TRLLabel;
    rl_endereco: TRLLabel;
    rl_endereco1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel7: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_NOTASRESUMIDO: Tfrm_REL_NOTASRESUMIDO;

implementation

{$R *.dfm}

uses u_dados, Frm_ACBrNFe;

procedure Tfrm_REL_NOTASRESUMIDO.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frmACBrNFe.MaskEdit1.Text+ ' e '+frmACBrNFe.MaskEdit2.Text;

end;

end.
