unit rel_comi_vendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB;

type
  Tfrm_REL_COMIS_VENDEDOR = class(TForm)
    RLReport1: TRLReport;
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
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand3: TRLBand;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText11: TRLDBText;
    RLBand4: TRLBand;
    RLLabel9: TRLLabel;
    RLDBResult1: TRLDBResult;
    rl_pretotal: TRLLabel;
    rl_prepagar: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel10: TRLLabel;
    RLDraw3: TRLDraw;
    DataSource1: TDataSource;
    RLBand5: TRLBand;
    RLLabel13: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_COMIS_VENDEDOR: Tfrm_REL_COMIS_VENDEDOR;

implementation

{$R *.dfm}

uses dados, dlg_comissao;


procedure Tfrm_REL_COMIS_VENDEDOR.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_comissao.msk_inicio.Text+ ' e '+frm_dlg_comissao.msk_fim.Text;
//rl_status.caption:='CFOP´S : '+frm_dlg_inventario.lbl_nomestatus.Caption;
rl_pretotal.Caption:='Pré Apurado no Total :'+frm_dlg_comissao.edt_VLRTOTALCOMI.Text;
rl_prepagar.Caption:='Pré Apurado a Pagar  :'+frm_dlg_comissao.edt_VLRPAGARCOMI.Text;
end;

end.
