unit rel_vendastransp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLParser, Data.DB;

type
  Tfrm_REL_VENDASTRANSP = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    Detalhe_Grupo: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand3: TRLBand;
    RLExpressionParser1: TRLExpressionParser;
    RLDBResult1: TRLDBResult;
    DataSource1: TDataSource;
    RLGroup1: TRLGroup;
    RLLabel12: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand4: TRLBand;
    RLLabel13: TRLLabel;
    Sumario_Grupo: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLDBResult2: TRLDBResult;
    RLLabel14: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_VENDASTRANSP: Tfrm_REL_VENDASTRANSP;

implementation

{$R *.dfm}

uses dlg_vendastransp;

end.
