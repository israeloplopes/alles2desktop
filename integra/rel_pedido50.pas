unit rel_pedido50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_REL_PEDIDO50 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLBand3: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLMemo1: TRLMemo;
    lbl_forma_pagto: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText8: TRLDBText;
    rl_valorpago: TRLLabel;
    rl_valortroco: TRLLabel;
    RLLabel4: TRLLabel;
    rl_NOMECLI: TRLLabel;
    rl_VDVENDA: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw4: TRLDraw;
    RLSystemInfo3: TRLSystemInfo;
    rl_valordesconto: TRLLabel;
    RLLabel2: TRLLabel;
    rl_NOMEAVULSO: TRLLabel;
    rl_OBSVENDA: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    texto:string;
  end;

var
  frm_REL_PEDIDO50: Tfrm_REL_PEDIDO50;

implementation

{$R *.dfm}

uses fechacupom, principal, dados;


procedure Tfrm_REL_PEDIDO50.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
//texto:=dm_Dados.zqry_SGFILIALENDFILIAL.AsString+' ,'+dm_dados.zqry_SGFILIALNUMFILIAL.AsString;
RL_VALORPAGO.CAPTION:=    'Pago :'+FormatFloat('R$ #,,,,0.00', dm_dados.zqry_FASTSALEVALORPAGO.asfloat);
//RL_VALORPAGO.CAPTION:=    'Vlr. Pago :'+FormatFloat('R$ #,,,,0.00', strtofloat(FRM_FECHACUPOM.edt_valorpago.Text));
//rl_valordesconto.Caption:='Vlr. Desc :'+formatfloat('R$ #,,,,0.00', strtofloat(FRM_FECHACUPOM.edt_VLRDESC.Text));
rl_valordesconto.Caption:='Desc :'+formatfloat('R$ #,,,,0.00', dm_dados.zqry_FASTSALEVLRDESCVENDA.asfloat);

if DM_DADOS.zqry_FASTSALEVALORTROCO.isnull then
begin
  rl_valortroco.Caption:= 'Troco : R$ 0.00';
end
else
begin
//  rl_valortroco.Caption:= 'Vlr Troco :'+FormatFloat('R$ #,,,,0.00',strtofloat(frm_FECHACUPOM.edt_valortroco.Text));
  rl_valortroco.Caption:= 'Troco :'+FormatFloat('R$ #,,,,0.00',dm_Dados.zqry_FASTSALEVALORTROCO.asfloat);
end;
rl_NOMECLI.Caption:=frm_fechacupom.dbtext1.caption;
rl_NOMEAVULSO.Caption:=frm_fechacupom.edt_NOMECLI.Text;
rl_OBSVENDA.caption:=frm_fechacupom.edt_obsvenda.text;
//if frm_principal.lbl_status_orc.caption='ORÇAMENTO' then rl_orc.Caption:='É UM ORÇAMENTO';
RLMemo1.Lines:=frm_fechacupom.memo_troco.lines;
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger=1 then lbl_forma_pagto.Caption:='Forma Pagto: Dinheiro';
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger=2 then lbl_forma_pagto.Caption:='Forma Pagto: Cheque';
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger=3 then lbl_forma_pagto.Caption:='Forma Pagto: Cartão Débito';
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger=4 then lbl_forma_pagto.Caption:='Forma Pagto: Cartão Crédito';
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger=5 then lbl_forma_pagto.Caption:='Forma Pagto: Crédito Loja';
if dm_dados.zqry_FASTSALECODTIPOCOB.AsInteger>=6 then lbl_forma_pagto.Caption:='Forma Pagto: Outros';
//RL_VDVENDA.Caption:='Cód. Venda: '+inttostr(frm_fechacupom.seqsequencia);
RL_VDVENDA.Caption:='Cód.: '+INTTOSTR(dm_dados.zqry_VDVENDACODVENDA.ASINTEGER);

//RL_SITE.Caption:=TRIM(dm_dados.zqry_sgfilialwwwfilial.asstring);
//rl_mail.caption:=trim(dm_dados.zqry_sgfilialemailfilial.asstring);
//rl_ENDERECO.lines.Add(texto);
end;


end.
