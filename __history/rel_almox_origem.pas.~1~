unit rel_almox_origem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_REL_ALMOX_ORIGEM = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_ALMOX_ORIGEM: Tfrm_REL_ALMOX_ORIGEM;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_REL_ALMOX_ORIGEM.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
RLLabel2.Caption:='Imprimindo Relatório do Almoxarifado '+dm_Dados.zqry_eqsaldoprodcodalmox.asstring;
end;

end.
