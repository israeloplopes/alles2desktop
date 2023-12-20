unit rel_comi_atendente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser;

type
  Tfrm_REL_COMIS_ATENDENTE = class(TForm)
    RLReport1: TRLReport;
    RLExpressionParser1: TRLExpressionParser;
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
    rl_status: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLDBText3: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText9: TRLDBText;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    rl_pretotal: TRLLabel;
    rl_prepagar: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel10: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_COMIS_ATENDENTE: Tfrm_REL_COMIS_ATENDENTE;

implementation

{$R *.dfm}

uses dados, dlg_comissao;

procedure Tfrm_REL_COMIS_ATENDENTE.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_comissao.msk_dtinicio.Text+ ' e '+frm_dlg_comissao.msk_dtfim.Text;
//rl_status.caption:='CFOP´S : '+frm_dlg_inventario.lbl_nomestatus.Caption;
rl_pretotal.Caption:='Pré Apurado no Total :'+frm_dlg_comissao.edt_VLRTOTAL.Text;
rl_prepagar.Caption:='Pré Apurado a Pagar  :'+frm_dlg_comissao.edt_VLRPAGAR.Text;

end;

end.
