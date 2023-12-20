unit rel_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  RLParser;

type
  Tfrm_REL_VENDAS = class(TForm)
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
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand3: TRLBand;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand4: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLDBResult1: TRLDBResult;

    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_VENDAS: Tfrm_REL_VENDAS;

implementation

{$R *.dfm}

uses u_dados, u_dlg_vendas;


procedure Tfrm_REL_VENDAS.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_vendas.msk_mov_ini.Text+ ' e '+frm_dlg_vendas.msk_mov_fim.Text;

end;

end.
