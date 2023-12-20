unit sangria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset, RLPrinters,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_DLG_SANGRIA = class(TForm)
    Label1: TLabel;
    edt_VLRSANGRIA: TEdit;
    btn_SANGR_INSERI: TBitBtn;
    btn_SANGR_CANCELA: TBitBtn;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_SANGR_INSERIClick(Sender: TObject);
    procedure btn_SANGR_CANCELAClick(Sender: TObject);
    procedure edt_VLRSANGRIAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_SANGRIA: Tfrm_DLG_SANGRIA;

implementation

{$R *.dfm}

uses dados, rel_movcaixa,uFuncoes,rel_movcaixa50;

procedure Tfrm_DLG_SANGRIA.btn_SANGR_CANCELAClick(Sender: TObject);
begin
dm_dados.zqry_pvmovcaixa.cancel;
close;
end;

procedure Tfrm_DLG_SANGRIA.btn_SANGR_INSERIClick(Sender: TObject);
var
  valor,sangria:double;
  sequencia:integer;
begin
IF (edt_VLRSANGRIA.Text='') or (edt_VLRSANGRIA.Text='0') THEN
BEGIN
   MOSTRATELANOTIFICA('CAMPO VAZIO','Preencha o valor da Sangria');
   edt_VLRSANGRIA.SetFocus;
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
  dm_dados.zqry_PVMOVCAIXA.Open;
  dm_Dados.zqry_PVMOVCAIXA.Append;
  dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
  dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.estacao;
  dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia;
  dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='S';
  sangria:=strtofloat(edt_VLRSANGRIA.Text)* -1;
  dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=sangria;
  dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
  dm_Dados.zqry_PVMOVCAIXAIDUSU.AsString:='sysdba';
  dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
  dm_Dados.zqry_PVMOVCAIXAHINS.AsDateTime:=time;
  //showmessage('Empresa '+inttostr(frm_splash.codemp)+' Estacao '+inttostr(dm_Dados.estacao)+' Sequencia '+inttostr(sequencia)+' Valor '+edt_VLRSUPRIMENTO.Text);
  dm_dados.zqry_PVMOVCAIXA.Post;
  dm_Dados.zqry_pvmovcaixa.ApplyUpdates;
  dm_dados.zqry_pvmovcaixa.close;
  dm_dados.zqry_pvmovcaixa.params.clear;
  dm_dados.zqry_pvmovcaixa.sql.clear;
  dm_dados.zqry_pvmovcaixa.sql.add('select * from pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and dtamov=:data and nromov=:mov and tipomov=:movtipo');
  dm_dados.zqry_pvmovcaixa.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_pvmovcaixa.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
  dm_dados.zqry_pvmovcaixa.parambyname('data').AsDateTime:=dm_dados.ultdata;
  dm_dados.zqry_pvmovcaixa.parambyname('mov').asinteger:=sequencia;
  dm_dados.zqry_pvmovcaixa.parambyname('movtipo').asstring:='S';
  dm_dados.zqry_pvmovcaixa.open;
  valor:=strtofloat(edt_vlrsangria.text);
  frm_rel_movcaixa.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa.rl_descreve.caption:='RETIRADA DO CAIXA';
  frm_rel_movcaixa.rlreport1.Title:='CheckOut - Sangria Caixa '+datetostr(now);
  frm_rel_movcaixa50.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa50.rl_descreve.caption:='RETIRADA DO CAIXA';
  frm_rel_movcaixa50.rlreport1.Title:='CheckOut - Sangria Caixa '+datetostr(now);
  RLPRINTER.Printerindex:=-1;
  //showmessage('aguarde');
    if dm_dados.impressao50='S' then
      begin
        frm_rel_movcaixa50.rlreport1.Update;
        frm_rel_movcaixa50.rlreport1.Prepare;
        frm_rel_movcaixa50.rlreport1.Print;
      end
      else
      begin
        frm_rel_movcaixa.rlreport1.Update;
        frm_rel_movcaixa.rlreport1.Prepare;
        frm_rel_movcaixa.rlreport1.Print;
      end;
  sleep(1000);
  close;
 end;

end;

procedure Tfrm_DLG_SANGRIA.edt_VLRSANGRIAKeyPress(Sender: TObject; var Key: Char);
begin
if (key =#13) then btn_SANGR_INSERIClick(Self);
end;

procedure Tfrm_DLG_SANGRIA.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure Tfrm_DLG_SANGRIA.FormShow(Sender: TObject);
begin
edt_VLRSANGRIA.Clear;
edt_VLRSANGRIA.SetFocus;
end;

end.
