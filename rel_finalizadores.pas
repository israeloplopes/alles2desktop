unit rel_finalizadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser, RLFilters,
  RLPDFFilter;

type
  Tfrm_REL_FINALIZADORES = class(TForm)
    RLReport1: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    RLExpressionParser1: TRLExpressionParser;
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
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
   procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_FINALIZADORES: Tfrm_REL_FINALIZADORES;

implementation

{$R *.dfm}

uses u_dados, Frm_ACBrNFe, u_dlg_vendas;


procedure Tfrm_REL_FINALIZADORES.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_vendas.msk_ini.Text+ ' e '+frm_dlg_vendas.msk_fim.Text;
end;

end.
