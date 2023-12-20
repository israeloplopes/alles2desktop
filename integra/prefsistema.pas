unit prefsistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, ufuncoes, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrm_PREFSISTEMA = class(TForm)
    btn_GRAVAR: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBText4: TDBText;
    edt_UF: TEdit;
    edt_CSOSN: TEdit;
    btn_ATUALIZAUF: TBitBtn;
    btn_ATUALIZACSOSN: TBitBtn;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    GERAL: TTabSheet;
    TabSheet2: TTabSheet;
    ck_COMANDAS: TCheckBox;
    ck_EAN: TCheckBox;
    ck_SOMAST: TCheckBox;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    gp_RECOLHEICMS: TGroupBox;
    gp_RECOLHEICMSIND: TGroupBox;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    edt_ICMS: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    edt_PEDIDO: TEdit;
    btn_AJUSTAPEDIDO: TBitBtn;
    DBText5: TDBText;
    DBText6: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    btn_ALT_MOV_PEDIDO501: TBitBtn;
    btn_ALT_MOV_PEDIDO601: TBitBtn;
    DBGrid1: TDBGrid;
    ck_DESC: TCheckBox;
    zqry_SGINICONSP: TZQuery;
    ck_RECICMSPF: TCheckBox;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    procedure btn_GRAVARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_ATUALIZAUFClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ATUALIZACSOSNClick(Sender: TObject);
//    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_AJUSTAPEDIDOClick(Sender: TObject);
    procedure btn_ALT_MOV_PEDIDO501Click(Sender: TObject);
    procedure btn_ALT_MOV_PEDIDO601Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    numpedido:integer;
  end;

var
  frm_PREFSISTEMA: Tfrm_PREFSISTEMA;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_PREFSISTEMA.btn_GRAVARClick(Sender: TObject);
begin
dm_Dados.zqry_SGPREFERE1.Edit;
if ck_COMANDAS.Checked then dm_dados.zqry_SGPREFERE1EXIBIRPAINELCOMANDAS.Value:='SIM';
if ck_EAN.checked then dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value:='S';
if ck_SOMAST.Checked then DM_DAdos.zqry_SGPREFERE1SOMASTDUPNFE.Value:='S';
if ck_DESC.Checked then dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value:='N';
//if ck_RECICMSPF.Checked then dm_dados.zqry_SGPREFERE1RECOLHEICMSPF.Value:='S';

dm_Dados.EXECUTASGINICONSP;
dm_dados.zqry_sgprefere1.post;
dm_dados.zqry_SGPREFERE1.ApplyUpdates;
mostratelaaviso('Registro gravado com Sucesso','tab: sgprefere1');
end;

procedure Tfrm_PREFSISTEMA.DBEdit7Exit(Sender: TObject);
begin
if dbedit7.Text='S' THEN
BEGIN
  DBEDIT5.Enabled:=true;
  dbedit6.Enabled:=true;
END
ELSE
BEGIN
  DBEDIT5.Enabled:=false;
  dbedit6.Enabled:=false;
END;
end;

procedure Tfrm_PREFSISTEMA.btn_ATUALIZAUFClick(Sender: TObject);
begin
dm_Dados.zqry_lfitclfiscal.close;
dm_Dados.zqry_lfitclfiscal.sql.clear;
dm_dados.zqry_lfitclfiscal.sql.add('update lfitclfiscal set siglauf=:sigla');
dm_Dados.zqry_lfitclfiscal.ParamByName('sigla').value:=edt_uf.text;
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de UF na Classificação Fiscal efetuada','tab: lfitclfiscal');
end;

procedure Tfrm_PREFSISTEMA.BitBtn1Click(Sender: TObject);
begin
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.Clear;
dm_Dados.zqry_lfitclfiscal.sql.add('update lfitclfiscal set codtrattrib=:cst');
dm_Dados.zqry_lfitclfiscal.params.ParamByName('cst').value:=edt_ICMS.text;
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de CST na Classificação Fiscal efetuada','tab: lfitclfiscal');
end;

procedure Tfrm_PREFSISTEMA.BitBtn2Click(Sender: TObject);
begin
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.clear;
dm_Dados.zqry_lfitclfiscal.sql.Add('update lfitclfiscal set redfisc=0');
dm_dados.zqry_lfitclfiscal.ExecSQL;
mostratelaaviso('Atualização de Redução de Base na Classificação Fiscal efetuada','01/05 redfisc');
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.clear;
dm_Dados.zqry_lfitclfiscal.sql.Add('update lfitclfiscal set aliqfisc=0');
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de Aliquota Interna na Classificação Fiscal efetuada','02/05 aliqfisc');
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.Clear;
dm_Dados.zqry_lfitclfiscal.sql.Add('update lfitclfiscal set aliqfiscintra=0');
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de Aliquota InterEstadual na Classificação Fiscal efetuada','03/05 aliqfiscintra');
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.clear;
dm_Dados.zqry_lfitclfiscal.sql.Add('update lfitclfiscal set aliqlfisc=0');
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de Aliquota Liv. ICMS na Classificação Fiscal efetuada','04/05 aliqlfisc');
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.clear;
dm_Dados.zqry_lfitclfiscal.sql.Add('update lfitclfiscal set margemvlagr=0');
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de Margem de Valor Agregado na Classificação Fiscal efetuada','05/05 margemvlagr');
end;

procedure Tfrm_PREFSISTEMA.btn_AJUSTAPEDIDOClick(Sender: TObject);
begin
dm_Dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=strtoint(edt_pedido.Text);
dm_Dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_VDVENDA.Open;
if dm_Dados.zqry_VDVENDA.IsEmpty then
begin
    mostratelaaviso('Nada localizado com base nas informações','tab.: vdvenda');
    edt_pedido.Clear;
    edt_pedido.SetFocus;
end;
numpedido:=dm_Dados.zqry_VDVENDACODVENDA.AsInteger;
end;

procedure Tfrm_PREFSISTEMA.btn_ALT_MOV_PEDIDO501Click(Sender: TObject);
begin
dm_Dados.executasginiconsp;
dm_dados.zqry_VDVENDA.Close;
dm_Dados.zqry_VDVENDA.SQL.Clear;
dm_Dados.zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=:mov where codemp=:empcod and codvenda=:vendacod');
dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=numpedido;
dm_Dados.zqry_VDVENDA.ParamByName('mov').asinteger:=501;
dm_dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_VDVENDA.execsql;
mostratelaaviso('Alterando pedido n.º '+inttostr(numpedido)+' para o movimento 501','');
end;

procedure Tfrm_PREFSISTEMA.btn_ALT_MOV_PEDIDO601Click(Sender: TObject);
begin
dm_Dados.executasginiconsp;
dm_dados.zqry_VDVENDA.Close;
dm_Dados.zqry_VDVENDA.SQL.Clear;
dm_Dados.zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=:mov where codemp=:empcod and codvenda=:vendacod');
dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=numpedido;
dm_Dados.zqry_VDVENDA.ParamByName('mov').asinteger:=601;
dm_dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_VDVENDA.execsql;
mostratelaaviso('Alterando pedido n.º '+inttostr(numpedido)+' para o movimento 601','');
end;

procedure Tfrm_PREFSISTEMA.btn_ATUALIZACSOSNClick(Sender: TObject);
begin
dm_Dados.zqry_lfitclfiscal.Close;
dm_dados.zqry_lfitclfiscal.sql.clear;
dm_Dados.zqry_lfitclfiscal.sql.add('update lfitclfiscal set csosn=:cso');
dm_Dados.zqry_lfitclfiscal.ParamByName('cso').value:=edt_csosn.text;
dm_dados.zqry_lfitclfiscal.execsql;
mostratelaaviso('Atualização de CSOSN na Classificação Fiscal efetuada','CSOSN/CST');
end;

procedure Tfrm_PREFSISTEMA.FormActivate(Sender: TObject);
begin
PageControl1.ActivePage:=GERAL;
dm_Dados.zqry_SGPREFERE1.Close;
dm_Dados.zqry_SGPREFERE1.SQL.Clear;
dm_dados.zqry_SGPREFERE1.SQL.Add('select * from sgprefere1 where codemp=:empcod');
dm_dados.zqry_SGPREFERE1.ParamByName('empcod').AsInteger:=99;//dm_Dados.zqry_SGFILIALCODEMP.AsInteger;
dm_Dados.zqry_SGPREFERE1.open;
//if dm_dados.zqry_SGPREFERE1EXIBIRPAINELCOMANDAS.Value='SIM' then ck_COMANDAS.Checked ;
//if dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value='S' then ck_EAN.checked;
//if DM_DAdos.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then ck_SOMAST.Checked;
ck_COMANDAS.Checked:=dm_dados.zqry_SGPREFERE1EXIBIRPAINELCOMANDAS.Value='SIM';
ck_EAN.Checked:=dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value='S';
ck_SOMAST.Checked:=dm_Dados.zqry_SGPREFERE1SOMASTDUPNFE.Value='S';
ck_RECICMSPF.Checked:=dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.Value='S';
//if dm_dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S' then RadioGroup1.ItemIndex:=0;
//if dm_dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='N' then RadioGroup1.ItemIndex:=1;

end;

procedure Tfrm_PREFSISTEMA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm_dados.zqry_LFITCLFISCAL.Close;
dm_dados.zqry_LFITCLFISCAL.Open;
dm_Dados.zqry_SGPREFERE1.Close;
dm_Dados.zqry_VDVENDA.Close;
end;

procedure Tfrm_PREFSISTEMA.FormCreate(Sender: TObject);
begin
dm_Dados.zqry_SGPREFERE1.Close;
dm_dados.zqry_SGPREFERE1.SQL.Clear;
dm_Dados.zqry_sgprefere1.sql.Add('select * from sgprefere1 where codemp=:empcod');
dm_dados.zqry_sgprefere1.ParamByName('empcod').ASINTEGER:=dm_Dados.codemp;
dm_Dados.zqry_sgprefere1.Open;
dm_Dados.zqry_lfitclfiscal.close;
dm_Dados.zqry_LFITCLFISCAL.Open;
dm_dados.zqry_LFITCLFISCAL.Edit;
dm_Dados.zqry_SGPREFERE1.Edit;
if dm_dados.zqry_SGPREFERE1EXIBIRPAINELCOMANDAS.Value='SIM' then ck_COMANDAS.Checked;
if dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value='S' then ck_EAN.Checked;
if DM_DAdos.zqry_SGPREFERE1SOMASTDUPNFE.Value='S' then ck_SOMAST.Checked;
end;

{procedure Tfrm_PREFSISTEMA.RadioGroup1Click(Sender: TObject);
begin
case RadioGroup1.ItemIndex of
  0:begin
    gp_RECOLHEICMSIND.Enabled:=true;
    dm_Dados.zqry_SGPREFERE1.Close;
    dm_Dados.zqry_SGPREFERE1.SQL.Clear;
    dm_dados.zqry_SGPREFERE1.SQL.Add('select * from sgprefere1 where codemp=:empcod');
    dm_dados.zqry_SGPREFERE1.ParamByName('empcod').AsInteger:=99;//dm_Dados.zqry_SGFILIALCODEMP.AsInteger;
    dm_Dados.zqry_SGPREFERE1.open;
    dm_dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString:='S';
    dbedit5.SetFocus;
  end;
  1:begin
    gp_RECOLHEICMSIND.Enabled:=false;
    dm_Dados.zqry_SGPREFERE1.Close;
    dm_Dados.zqry_SGPREFERE1.SQL.Clear;
    dm_dados.zqry_SGPREFERE1.SQL.Add('select * from sgprefere1 where codemp=:empcod');
    dm_dados.zqry_SGPREFERE1.ParamByName('empcod').AsInteger:=99;//dm_Dados.zqry_SGFILIALCODEMP.AsInteger;
    dm_Dados.zqry_SGPREFERE1.open;
    dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString:='N';
  end;
end;
end;}

end.
