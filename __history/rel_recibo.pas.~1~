unit rel_recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrExtenso, RLReport;

type
  Tfrm_REL_RECIBO = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    ACBrExtenso1: TACBrExtenso;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    rl_cidade: TRLLabel;
    rl_numero: TRLLabel;
    rl_nome: TRLLabel;
    rl_valor: TRLLabel;
    rl_parcela: TRLLabel;
    RLLabel6: TRLLabel;
    RLDraw2: TRLDraw;
    rl_empresa: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_RECIBO: Tfrm_REL_RECIBO;

implementation

{$R *.dfm}

uses dados, con_receber;

procedure Tfrm_REL_RECIBO.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 // ACBrExtenso1.Valor := strtofloat(frm_con_receber.dbtxt_valor.Caption) ;
  RLLabel4.Caption := ACBrExtenso1.Texto ;

  rl_cidade.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value);
  rl_numero.Caption:=trim(dm_Dados.zqry_fnitrecebercodrec.asstring+'-'+dm_Dados.zqry_fnitrecebernparcitrec.asstring);
  rl_parcela.Caption:='Nº. Venda/Nº. Parcela '+rl_numero.Caption;
  rl_empresa.Caption:=trim(dm_dados.zqry_SGFILIALRAZFILIAL.asstring);
  rl_nome.Caption:=trim(dm_dados.zqry_fnreceber_nomecliente.asstring);
  rl_valor.Caption:= 'Vlr. Parcela de R$   '+dm_Dados.zqry_fnitrecebervlritrec.asstring;

 // rl_valor.Caption:='R$ '+(frm_con_receber.dbtxt_valor.Caption);
end;

end.
