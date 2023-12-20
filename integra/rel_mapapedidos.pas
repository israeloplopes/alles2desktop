unit rel_mapapedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLBarcode, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  Tfrm_REL_MAPAPEDIDOS = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    rl_numlinhas: TRLLabel;
    rl_numitens: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw4: TRLDraw;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw2: TRLDraw;
    RLDBText13: TRLDBText;
    RLDraw3: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDraw5: TRLDraw;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    rl_tributos: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDraw7: TRLDraw;
    RLDBMemo1: TRLDBMemo;
    RLDBText27: TRLDBText;
    rl_TRANSPORTADORA: TRLLabel;
    RLBand3: TRLBand;
    RLImage1: TRLImage;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_MAPAPEDIDOS: Tfrm_REL_MAPAPEDIDOS;

implementation

{$R *.dfm}

uses con_pedido;

procedure Tfrm_REL_MAPAPEDIDOS.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
rl_numlinhas.Caption:='N.º de Linhas Digitadas : '+inttostr(frm_con_pedido.numlinhas);
rl_numitens.Caption:='Quant. de Itens Pedido : '+floattostr(frm_con_pedido.NUMITENS);
if frm_con_pedido.edt_NOMERAZ_TRANSP.Text<>'' then rl_TRANSPORTADORA.Caption:='Transp.: '+frm_con_pedido.edt_nomeraz_transp.text;
if frm_con_pedido.edt_NOMERAZ_TRANSP.Text='' then rl_TRANSPORTADORA.Caption:='Transp.: Não informado';
if frm_CON_PEDIDO.lbl_ICMSST.Caption<>'' then rl_tributos.Caption:='Valor + Tributos :'+frm_con_pedido.lbl_ICMSST.Caption;
if frm_CON_PEDIDO.lbl_ICMSST.Caption='' then rl_tributos.Caption:='Valor + Tributos :';
//  Image1.Picture.Assign(PngImage);
  RLImage1.Picture.Assign(frm_con_pedido.pngimage);
end;

end.
