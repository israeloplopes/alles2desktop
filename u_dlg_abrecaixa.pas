unit u_dlg_abrecaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.Buttons, RLPRINTERS,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_DLG_ABRECAIXA = class(TForm)
    Label1: TLabel;
    edt_VLRABRECAIXA: TEdit;
    btn_ABRECAIXA_INSERI: TBitBtn;
    btn_ABRECAIXA_CANCELA: TBitBtn;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    Label2: TLabel;
    procedure btn_ABRECAIXA_CANCELAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ABRECAIXA_INSERIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_VLRABRECAIXAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    sequencia, seqitem:integer;
  end;

var
  frm_DLG_ABRECAIXA: Tfrm_DLG_ABRECAIXA;

implementation

{$R *.dfm}

uses u_dados, rel_movcaixa,rel_movcaixa50, u_funcoes, u_notifica, u_checkout;

procedure Tfrm_DLG_ABRECAIXA.btn_ABRECAIXA_CANCELAClick(Sender: TObject);
begin
dm_dados.zqry_pvmovcaixa.cancel;
close;
end;

procedure Tfrm_DLG_ABRECAIXA.btn_ABRECAIXA_INSERIClick(Sender: TObject);
var
  valor:double;
begin
IF (edt_VLRABRECAIXA.Text='') THEN
BEGIN
   MOSTRATELANOTIFICA('CAMPO VAZIO','Preencha o valor para o Caixa');
   edt_VLRABRECAIXA.SetFocus;
END
else
begin
  seqitem:=0;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(nromov) as nro FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod');
  zquery1.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zquery1.ParamByName('caixacod').AsInteger:=dm_dados.terminal;
  zquery1.Open;
  sequencia:=1+zquery1.FieldByname('nro').asinteger;
  //showmessage(inttostr(sequencia));
  dm_dados.zqry_PVMOVCAIXA.Open;
  dm_Dados.zqry_PVMOVCAIXA.Append;
  dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
  dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
  dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.terminal;
  dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(item) as proxitem FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and nromov=:p3');
  zquery1.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zquery1.ParamByName('caixacod').AsInteger:=dm_dados.terminal;
  zquery1.ParamByName('p3').AsInteger:=sequencia;
  zquery1.Open;
  seqitem:=seqitem+1;
  dm_dados.zqry_pvmovcaixaitem.asinteger:=seqitem;
  dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='A';
  dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=strtofloat(edt_VLRABRECAIXA.Text);
  dm_Dados.zqry_PVMOVCAIXAVLRSLDMOV.asfloat:=strtofloat(edt_vlrabrecaixa.Text);
  dm_dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_dados.codemp;
  dm_Dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXAHINS.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXAIDUSU.AsString:='sysdba';
  //showmessage('Empresa '+inttostr(frm_splash.codemp)+' Estacao '+inttostr(dm_Dados.estacao)+' Sequencia '+inttostr(sequencia)+' Valor '+edt_VLRSUPRIMENTO.Text);
  dm_dados.zqry_PVMOVCAIXA.Post;
  dm_Dados.zqry_pvmovcaixa.ApplyUpdates;
  valor:=strtofloat(edt_vlrabrecaixa.Text);
  frm_rel_movcaixa.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa.rl_descreve.caption:='ABERTURA DO CAIXA';
  frm_rel_movcaixa.rlreport1.Title:='CheckOut - Abre Caixa'+datetostr(now);
  frm_rel_movcaixa50.rl_valor.caption:=FormatFloat('R$ #,,,,0.00', valor);
  frm_rel_movcaixa50.rl_descreve.caption:='ABERTURA DO CAIXA';
  frm_rel_movcaixa50.rlreport1.Title:='CheckOut - Abre Caixa'+datetostr(now);
  RLPRINTER.Printerindex:=-1;
  //showmessage(dm_dados.impressao50);
  //showmessage(dm_dados.ticket);

    if (dm_dados.impressao50='S') and (dm_dados.ticket='S') then
      begin
        frm_rel_movcaixa50.rlreport1.Update;
        frm_rel_movcaixa50.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_movcaixa50.rlreport1.Print;
      end;
     if (dm_dados.impressao50='N') and (dm_dados.ticket='S') then
      begin
        frm_rel_movcaixa.rlreport1.Update;
        frm_rel_movcaixa.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_movcaixa.rlreport1.Print;
      end;


  sleep(500);
  frm_checkout.Show;
  close;
 end;

end;

procedure Tfrm_DLG_ABRECAIXA.edt_VLRABRECAIXAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then btn_ABRECAIXA_INSERIClick(Self);
end;

procedure Tfrm_DLG_ABRECAIXA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm_dados.zqry_PVMOVCAIXA.Params.Clear;
dm_dados.zqry_PVMOVCAIXA.close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.terminal;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_PVMOVCAIXA.Open;
end;

procedure Tfrm_DLG_ABRECAIXA.FormShow(Sender: TObject);
begin
edt_VLRABRECAIXA.Clear;
edt_VLRABRECAIXA.SetFocus;
end;

end.
