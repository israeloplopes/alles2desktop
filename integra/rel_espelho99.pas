unit rel_espelho99;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser;

type
  Tfrm_REL_ESPELHO99 = class(TForm)
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
    RLExpressionParser1: TRLExpressionParser;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLGroup1: TRLGroup;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    Sumário: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel9: TRLLabel;
    RLBand3: TRLBand;
    RLDBText6: TRLDBText;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw6: TRLDraw;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBResult6: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDraw7: TRLDraw;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLLabel11: TRLLabel;
    RLDBResult13: TRLDBResult;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_ESPELHO99: Tfrm_REL_ESPELHO99;

implementation

{$R *.dfm}

uses dados, dlg_inventario;

procedure Tfrm_REL_ESPELHO99.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_inventario.MaskEdit1.Text+ ' e '+frm_dlg_inventario.MaskEdit2.Text;
rl_status.caption:='CFOP´S : '+frm_dlg_inventario.lbl_nomestatus.Caption;

end;

end.
