unit rel_recibo90;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, ACBrBase, ACBrExtenso,
  RLFilters, RLDraftFilter, math;

type
  Tfrm_REL_RECIBO90 = class(TForm)
    RLReport1: TRLReport;
    ACBrExtenso1: TACBrExtenso;
    RLBand1: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rl_numero: TRLLabel;
    RLLabel2: TRLLabel;
    rl_nome: TRLLabel;
    rl_valor: TRLLabel;
    rl_parcela: TRLLabel;
    RLLabel6: TRLLabel;
    rl_cidade: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    rl_valorparcial: TRLLabel;
    rl_valorpagar: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLDraw3: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    rl_SLDDEVEDOR: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_RECIBO90: Tfrm_REL_RECIBO90;
  vlrpago, vlrparcial:string;

implementation

{$R *.dfm}

uses con_receber, dados;

procedure Tfrm_REL_RECIBO90.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if (dm_dados.zqry_fnitrecebervlrpagoitrec.asfloat>0.00) and (dm_dados.zqry_FNITRECEBERVLRAPAGITREC.AsFloat>0.00) then
  begin
     ACBrExtenso1.Valor := dm_dados.zqry_fnitrecebervlrpagoitrec.asfloat ;
//     RLLabel4.Caption := 'Quantia de '+ACBrExtenso1.Texto ;
     RLmemo1.Lines.Text:= 'Quantia de '+ACBrExtenso1.Texto ;
     rl_valorparcial.caption:='Pagto. Parcial R$  '+ floattostr(roundto(dm_dados.zqry_FNITRECEBERVLRPAGOITREC.asfloat,-2));
     rl_valorpagar.caption:=  'A Pagar na Parcela R$ '+floattostr(roundto(dm_Dados.zqry_fnitrecebervlrapagitrec.asfloat, -2));
  end;
  if dm_dados.zqry_fnitrecebervlrpagoitrec.asfloat<=dm_Dados.zqry_fnitrecebervlrapagitrec.asfloat then
  begin
     ACBrExtenso1.Valor := dm_Dados.zqry_fnitrecebervlrapagitrec.asfloat ;
     RLmemo1.Lines.Text:= 'Quantia de '+ACBrExtenso1.Texto ;
     rl_valorparcial.caption:='Pagto Parcial R$  '+floattostr(roundto(dm_Dados.zqry_fnitrecebervlrpagoitrec.asfloat, -2));
     rl_valorpagar.caption:=  'A Pagar na Parcela R$ '+floattostr(roundto(dm_Dados.zqry_fnitrecebervlrapagitrec.asfloat, -2));
  end;
  if dm_Dados.zqry_fnitrecebervlrapagitrec.asfloat=0.00 then
  begin
     ACBrExtenso1.Valor := dm_Dados.zqry_fnitrecebervlrpagoitrec.asfloat ;
     RLmemo1.Lines.Text:= 'Quantia de '+ACBrExtenso1.Texto ;
     rl_valorparcial.caption:='Sem Pagto Parcial na parcela ';
     rl_valorpagar.caption:=  'Parcela Quitada. Agradecemos.'
  end;

  rl_cidade.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value);
  rl_numero.Caption:=trim(dm_Dados.zqry_fnitrecebercodrec.asstring+'-'+dm_Dados.zqry_fnitrecebernparcitrec.asstring);
  rl_parcela.Caption:='Nº. Venda/Nº. Parcela '+rl_numero.Caption;
  rlmemo2.Lines.text:=trim(dm_dados.zqry_SGFILIALRAZFILIAL.asstring);
  rl_nome.Caption:=trim(dm_dados.zqry_fnreceber_nomecliente.asstring);
  rl_valor.Caption:= 'Vlr. Parcela de R$   '+floattostr(roundto(dm_Dados.zqry_fnitrecebervlritrec.asfloat, -2));
  rl_SLDDEVEDOR.Caption:='R$ '+floattostr(roundto(frm_con_receber.zqry_saldodevedorsaldodevedor.asfloat, -2));
end;

end.
