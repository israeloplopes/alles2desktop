unit suprimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_DLG_SUPRIMENTO = class(TForm)
    Label1: TLabel;
    edt_VLRSUPRIMENTO: TEdit;
    btn_SUPRI_INSERI: TBitBtn;
    btn_SUPRI_CANCELA: TBitBtn;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure btn_SUPRI_CANCELAClick(Sender: TObject);
    procedure btn_SUPRI_INSERIClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edt_VLRSUPRIMENTOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      sequencia:integer;
  end;

var
  frm_DLG_SUPRIMENTO: Tfrm_DLG_SUPRIMENTO;

implementation

{$R *.dfm}

uses dados, uFuncoes, rel_movcaixa, rel_movcaixa50;

procedure Tfrm_DLG_SUPRIMENTO.btn_SUPRI_INSERIClick(Sender: TObject);
var
  valor:double;
begin
IF (edt_VLRSUPRIMENTO.Text='') or (edt_VLRSUPRIMENTO.Text='0') THEN
BEGIN
   MOSTRATELANOTIFICA('CAMPO VAZIO','Preencha o valor do Suprimento');
   edt_VLRSUPRIMENTO.SetFocus;
END
else
begin
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(nromov) as nro FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and dtamov=:data');
  zquery1.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zquery1.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
  zquery1.ParamByName('data').AsDateTime:=dm_dados.ultdata;
  zquery1.Open;
  sequencia:=1+zquery1.FieldByname('nro').asinteger;
  //showmessage(inttostr(sequencia));
  dm_dados.zqry_PVMOVCAIXA.Open;
  dm_Dados.zqry_PVMOVCAIXA.Append;
  dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
  dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.estacao;
  dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia;
  dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='U';
  dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=strtofloat(edt_VLRSUPRIMENTO.Text);
  dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
  dm_Dados.zqry_PVMOVCAIXAIDUSU.AsString:='sysdba';
  dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
  dm_Dados.zqry_PVMOVCAIXAHINS.AsDateTime:=time;
  //showmessage('Empresa '+inttostr(frm_splash.codemp)+' Estacao '+inttostr(dm_Dados.estacao)+' Sequencia '+inttostr(sequencia)+' Valor '+edt_VLRSUPRIMENTO.Text);
  dm_dados.zqry_PVMOVCAIXA.Post;
  dm_Dados.zqry_pvmovcaixa.ApplyUpdates;
  valor:=strtofloat(edt_vlrsuprimento.text);
  frm_rel_movcaixa.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa.rl_descreve.caption:='SUPRIMENTO FINANCEIRO';
  frm_rel_movcaixa.rlreport1.Title:='CheckOut - Suprimento '+inttostr(sequencia)+'-'+datetostr(now);
  frm_rel_movcaixa50.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa50.rl_descreve.caption:='SUPRIMENTO FINANCEIRO';
  frm_rel_movcaixa50.rlreport1.Title:='CheckOut - Suprimento '+inttostr(sequencia)+'-'+datetostr(now);

 if dm_dados.impressao50='S' then
      begin
        frm_rel_movcaixa50.rlreport1.Update;
        frm_rel_movcaixa50.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_movcaixa50.rlreport1.Print;
      end
      else
      begin
        frm_rel_movcaixa.rlreport1.Update;
        frm_rel_movcaixa.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_movcaixa.rlreport1.Print;
      end;
  close;
end;
end;

procedure Tfrm_DLG_SUPRIMENTO.edt_VLRSUPRIMENTOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key =#13) then btn_SUPRI_INSERIClick(Self);
end;

procedure Tfrm_DLG_SUPRIMENTO.btn_SUPRI_CANCELAClick(Sender: TObject);
begin
dm_dados.zqry_pvmovcaixa.cancel;
close;
end;

procedure Tfrm_DLG_SUPRIMENTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm_dados.zqry_PVMOVCAIXA.Params.Clear;
dm_dados.zqry_PVMOVCAIXA.close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_PVMOVCAIXA.Open;
end;

procedure Tfrm_DLG_SUPRIMENTO.FormShow(Sender: TObject);
begin
edt_VLRSUPRIMENTO.Clear;
edt_VLRSUPRIMENTO.SetFocus;
end;

end.
