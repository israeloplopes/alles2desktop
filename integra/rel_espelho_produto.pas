unit rel_espelho_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLPDFFilter, RLPreviewForm,
  RLXLSFilter, RLFilters, RLHTMLFilter, RLDraftFilter, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, RLParser;

type
  Tfrm_REL_ESPELHO_PRODUTO = class(TForm)
    RLReport1: TRLReport;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLPreviewSetup1: TRLPreviewSetup;
    RLPDFFilter1: TRLPDFFilter;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rl_endereco: TRLLabel;
    rl_endereco1: TRLLabel;
    RLDraw1: TRLDraw;
    RLSystemInfo2: TRLSystemInfo;
    rl_datas: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLDraw2: TRLDraw;
    RLGroup1: TRLGroup;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLExpressionParser1: TRLExpressionParser;
    RLBand5: TRLBand;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    rl_status: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLExpressionParser2: TRLExpressionParser;
    RLDraw8: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw9: TRLDraw;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_ESPELHO_PRODUTO: Tfrm_REL_ESPELHO_PRODUTO;

implementation

{$R *.dfm}

uses dlg_inventario, dados;

procedure Tfrm_REL_ESPELHO_PRODUTO.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//if CLIENTE.Caption='' then CLIENTE.VISIBLE:=FALSE;
end;

procedure Tfrm_REL_ESPELHO_PRODUTO.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_endereco.Caption:=trim(dm_dados.zqry_sgfilialendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_datas.caption:=frm_dlg_inventario.MaskEdit1.Text+ ' e '+frm_dlg_inventario.MaskEdit2.Text;

rl_status.caption:='CFOP´S : '+frm_dlg_inventario.lbl_nomestatus.Caption;

//if dm_DADOS.cds_ESPELHOTIPOMOV.value='E' then RLDBText8.Font.Style:=[fsBold];
//if dm_DADOS.cds_ESPELHOTIPOMOV.value='S' then RLDBText8.Font.Style:=[fsItalic];

end;

end.
