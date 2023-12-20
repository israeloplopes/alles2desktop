unit rel_etiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_REL_ETIQUETA = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw2: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw4: TRLDraw;
    RLDBText8: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLDBText11: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel1: TRLLabel;
    rl_lbl_NOME: TRLLabel;
    rl_lbl_TRANSP: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_ETIQUETA: Tfrm_REL_ETIQUETA;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_REL_ETIQUETA.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  VAR
  SEQ:INTEGER;
begin
rlband1.CarbonCopies:=dm_dados.zqry_VDFRETEVDQTDFRETEVD.AsInteger;
rl_lbl_nome.Caption:=trim(dm_dados.zqry_VDVENDACODCLI.AsString);
rl_lbl_transp.Caption:=trim(dm_dados.zqry_VDTRANSPNOMETRAN.AsString);
end;

end.