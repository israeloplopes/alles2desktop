unit rel_cheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser;

type
  Tfrm_REL_CHEQUES = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rl_endereco: TRLLabel;
    rl_endereco1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
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
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_CHEQUES: Tfrm_REL_CHEQUES;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_REL_CHEQUES.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
//rl_datas.caption:=frm_dlg_comissao.msk_dtinicio.Text+ ' e '+frm_dlg_comissao.msk_dtfim.Text;
//rl_status.caption:='CFOP´S : '+frm_dlg_inventario.lbl_nomestatus.Caption;
//rl_pretotal.Caption:='Pré Apurado no Total :'+frm_dlg_comissao.edt_VLRTOTAL.Text;
//rl_prepagar.Caption:='Pré Apurado a Pagar  :'+frm_dlg_comissao.edt_VLRPAGAR.Text;

end;

end.
