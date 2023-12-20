unit u_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Menus, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_CAD_PRODUTOS = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODPROD: TIntegerField;
    zqry_CADASTRODESCPROD: TWideStringField;
    zqry_CADASTROREFPROD: TWideStringField;
    zqry_CADASTROCODEMPAX: TIntegerField;
    zqry_CADASTROCODFILIALAX: TSmallintField;
    zqry_CADASTROCODALMOX: TIntegerField;
    zqry_CADASTROCODEMPMA: TIntegerField;
    zqry_CADASTROCODFILIALMA: TSmallintField;
    zqry_CADASTROCODMOEDA: TWideStringField;
    zqry_CADASTROCODEMPUD: TIntegerField;
    zqry_CADASTROCODFILIALUD: TSmallintField;
    zqry_CADASTROCODUNID: TWideStringField;
    zqry_CADASTROCODEMPFC: TIntegerField;
    zqry_CADASTROCODFILIALFC: TSmallintField;
    zqry_CADASTROCODFISC: TWideStringField;
    zqry_CADASTROCODEMPMC: TIntegerField;
    zqry_CADASTROCODFILIALMC: TSmallintField;
    zqry_CADASTROCODMARCA: TWideStringField;
    zqry_CADASTRODESCAUXPROD: TWideStringField;
    zqry_CADASTROTIPOPROD: TWideStringField;
    zqry_CADASTROCVPROD: TWideStringField;
    zqry_CADASTROCODEMPGP: TIntegerField;
    zqry_CADASTROCODFILIALGP: TSmallintField;
    zqry_CADASTROCODGRUP: TWideStringField;
    zqry_CADASTROCODBARPROD: TWideStringField;
    zqry_CADASTROCLOTEPROD: TWideStringField;
    zqry_CADASTROSERIEPROD: TWideStringField;
    zqry_CADASTROCODFABPROD: TWideStringField;
    zqry_CADASTROCOMISPROD: TFloatField;
    zqry_CADASTROPESOLIQPROD: TFloatField;
    zqry_CADASTROPESOBRUTPROD: TFloatField;
    zqry_CADASTROQTDMINPROD: TFloatField;
    zqry_CADASTROQTDMAXPROD: TFloatField;
    zqry_CADASTRODTMPMPROD: TDateField;
    zqry_CADASTROCUSTOMPMPROD: TFloatField;
    zqry_CADASTROCUSTOPEPSPROD: TFloatField;
    zqry_CADASTROCUSTOINFOPROD: TFloatField;
    zqry_CADASTROPRECOBASEPROD: TFloatField;
    zqry_CADASTROPRECOCOMISPROD: TFloatField;
    zqry_CADASTROSLDPROD: TFloatField;
    zqry_CADASTROSLDRESPROD: TFloatField;
    zqry_CADASTROSLDCONSIGPROD: TFloatField;
    zqry_CADASTROSLDLIQPROD: TFloatField;
    zqry_CADASTROATIVOPROD: TWideStringField;
    zqry_CADASTRODTULTCPPROD: TDateField;
    zqry_CADASTROQTDULTCPPROD: TFloatField;
    zqry_CADASTRODESCCOMPPROD: TWideStringField;
    zqry_CADASTROOBSPROD: TWideStringField;
    zqry_CADASTROVERIFPROD: TWideStringField;
    zqry_CADASTROLOCALPROD: TWideStringField;
    zqry_CADASTRORMAPROD: TWideStringField;
    zqry_CADASTROCODEMPPE: TIntegerField;
    zqry_CADASTROCODFILIALPE: TSmallintField;
    zqry_CADASTROCODPE: TIntegerField;
    zqry_CADASTROCODEMPCC: TIntegerField;
    zqry_CADASTROCODFILIALCC: TSmallintField;
    zqry_CADASTROANOCC: TSmallintField;
    zqry_CADASTROCODCC: TWideStringField;
    zqry_CADASTROUSARECEITAPROD: TWideStringField;
    zqry_CADASTROUSATELAADICPDV: TWideStringField;
    zqry_CADASTROVLRDENSIDADE: TFloatField;
    zqry_CADASTROVLRCONCENT: TFloatField;
    zqry_CADASTROCOMPRIMENTO: TFloatField;
    zqry_CADASTROLARGURA: TFloatField;
    zqry_CADASTROESPESSURA: TFloatField;
    zqry_CADASTROGUIATRAFPROD: TWideStringField;
    zqry_CADASTROQTDEMBALAGEM: TFloatField;
    zqry_CADASTROCODEANPROD: TWideStringField;
    zqry_CADASTROCUBAGEM: TFloatField;
    zqry_CADASTROCODEMPSC: TIntegerField;
    zqry_CADASTROCODFILIALSC: TSmallintField;
    zqry_CADASTROCODSECAO: TWideStringField;
    zqry_CADASTROCODEMPTC: TSmallintField;
    zqry_CADASTROCODFILIALTC: TSmallintField;
    zqry_CADASTROCODTPCHAMADO: TIntegerField;
    zqry_CADASTROQTDHORASSERV: TFloatField;
    zqry_CADASTRONRODIASVALID: TSmallintField;
    zqry_CADASTRODESCCLI: TWideStringField;
    zqry_CADASTROQTDPORPLANO: TSmallintField;
    zqry_CADASTRONROPLANOS: TSmallintField;
    zqry_CADASTROCERTFSC: TWideStringField;
    zqry_CADASTROFATORFSC: TFloatField;
    zqry_CADASTROCODEMPOG: TIntegerField;
    zqry_CADASTROCODFILIALOG: TSmallintField;
    zqry_CADASTROCODPRODOG: TIntegerField;
    zqry_CADASTROCODEMPMG: TIntegerField;
    zqry_CADASTROCODFILIALMG: TSmallintField;
    zqry_CADASTROCODMODG: TIntegerField;
    zqry_CADASTROPRAZOREPO: TIntegerField;
    zqry_CADASTROMEDIAVENDA: TFloatField;
    zqry_CADASTROEMMANUT: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROPROMOCAO: TWideStringField;
    zqry_CADASTROCODMIX: TIntegerField;
    zqry_CADASTROINTERVSEGUR: TIntegerField;
    zqry_CADASTROCLASSETOXICO: TWideStringField;
    zqry_CADASTROGRUPOQUIMICO: TWideStringField;
    zqry_CADASTRONOMETECNICO: TWideStringField;
    zqry_CADASTROPRINCIPIOATIVO: TWideStringField;
    zqry_CADASTROCODCLASSE: TWideStringField;
    zqry_CADASTROCLASSE: TWideStringField;
    zqry_CADASTROCONCENTRACAO: TWideStringField;
    zqry_CADASTROFORMULACAO: TWideStringField;
    zqry_CADASTROANTIDOTO: TWideStringField;
    zqry_CADASTROMULTIPLICADOR: TSingleField;
    zqry_CADASTROCODBALANCA: TIntegerField;
    zqry_CADASTROCODRFIDPROD: TIntegerField;
    zqry_CADASTROFINAME: TWideStringField;
    zqry_CADASTROMDA: TWideStringField;
    zqry_CADASTROPTSFIDELIDADE: TIntegerField;
    zqry_CADASTROCURVA: TWideStringField;
    PageControl1: TPageControl;
    ts_BASICO: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    pn_CLASSIFICACAO: TPanel;
    zqry_CADASTROSLDINDISPONIVEL: TFloatField;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    cb_CLASSPRODUTO: TComboBox;
    Label19: TLabel;
    Label21: TLabel;
    cb_CADASTROPARA: TComboBox;
    Label22: TLabel;
    cb_SOBRECUSTO: TComboBox;
    ch_ATIVOPROD: TCheckBox;
    ch_PROMOCAO: TCheckBox;
    ch_LOTE: TCheckBox;
    ch_RECAGRO: TCheckBox;
    ch_RASTREIO: TCheckBox;
    Label23: TLabel;
    Label24: TLabel;
    sp_ALMOXARIFADO: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    zqry_EQALMOX: TZQuery;
    zqry_EQALMOXCODEMP: TIntegerField;
    zqry_EQALMOXCODALMOX: TIntegerField;
    zqry_EQALMOXDESCALMOX: TWideStringField;
    zdts_EQALMOX: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label25: TLabel;
    sp_MARCA: TSpeedButton;
    zqry_EQMARCA: TZQuery;
    zqry_EQMARCACODEMP: TIntegerField;
    zqry_EQMARCACODMARCA: TWideStringField;
    zqry_EQMARCADESCMARCA: TWideStringField;
    zdts_EQMARCA: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    sp_GRUPO: TSpeedButton;
    Label26: TLabel;
    zqry_EQGRUPO: TZQuery;
    zqry_EQGRUPOCODEMP: TIntegerField;
    zqry_EQGRUPOCODGRUP: TWideStringField;
    zqry_EQGRUPODESCGRUP: TWideStringField;
    zdts_EQGRUPO: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    sp_UNIDADE: TSpeedButton;
    Label27: TLabel;
    zqry_EQUNIDADE: TZQuery;
    zqry_EQUNIDADECODEMP: TIntegerField;
    zqry_EQUNIDADECODUNID: TWideStringField;
    zqry_EQUNIDADEDESCUNID: TWideStringField;
    zdts_EQUNIDADE: TDataSource;
    Label28: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    zdts_NCM: TDataSource;
    zqry_NCMCODEMP: TIntegerField;
    zqry_NCMCODFISC: TWideStringField;
    zqry_NCMDESCFISC: TWideStringField;
    zqry_NCM: TZQuery;
    sp_NCM: TSpeedButton;
    ts_AVANCADO: TTabSheet;
    ts_RECAGRO: TTabSheet;
    ts_PRECOS: TTabSheet;
    ts_FORNEC: TTabSheet;
    ts_FOTOS: TTabSheet;
    ts_WMS: TTabSheet;
    ts_WEB: TTabSheet;
    ts_LOTESERIE: TTabSheet;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    Label38: TLabel;
    DBEdit29: TDBEdit;
    Label39: TLabel;
    DBEdit30: TDBEdit;
    Label40: TLabel;
    DBEdit31: TDBEdit;
    Label41: TLabel;
    DBEdit32: TDBEdit;
    Label42: TLabel;
    DBEdit33: TDBEdit;
    Label43: TLabel;
    DBEdit34: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label44: TLabel;
    DBEdit35: TDBEdit;
    Label45: TLabel;
    DBEdit36: TDBEdit;
    Label46: TLabel;
    DBEdit37: TDBEdit;
    Label47: TLabel;
    DBEdit38: TDBEdit;
    Label48: TLabel;
    DBEdit39: TDBEdit;
    Label51: TLabel;
    DBEdit42: TDBEdit;
    DBEdit40: TDBEdit;
    Label49: TLabel;
    DBEdit41: TDBEdit;
    Label50: TLabel;
    Label52: TLabel;
    DBEdit43: TDBEdit;
    Label53: TLabel;
    DBEdit44: TDBEdit;
    Label54: TLabel;
    DBEdit45: TDBEdit;
    Label55: TLabel;
    DBEdit46: TDBEdit;
    Label56: TLabel;
    DBEdit47: TDBEdit;
    Label57: TLabel;
    DBEdit48: TDBEdit;
    Label58: TLabel;
    DBEdit49: TDBEdit;
    Label60: TLabel;
    DBEdit50: TDBEdit;
    Label61: TLabel;
    DBEdit51: TDBEdit;
    Label62: TLabel;
    CheckBox1: TCheckBox;
    DBEdit52: TDBEdit;
    DBGrid1: TDBGrid;
    zqry_PRECOCODEMP: TIntegerField;
    zqry_PRECOCODFILIAL: TSmallintField;
    zqry_PRECOCODPROD: TIntegerField;
    zqry_PRECOCODPRECOPROD: TIntegerField;
    zqry_PRECOCODEMPTB: TIntegerField;
    zqry_PRECOCODFILIALTB: TSmallintField;
    zqry_PRECOCODTAB: TIntegerField;
    zqry_PRECOCODEMPCC: TIntegerField;
    zqry_PRECOCODFILIALCC: TSmallintField;
    zqry_PRECOCODCLASCLI: TIntegerField;
    zqry_PRECOCODEMPPG: TIntegerField;
    zqry_PRECOCODFILIALPG: TSmallintField;
    zqry_PRECOCODPLANOPAG: TIntegerField;
    zqry_PRECOPRECOPROD: TFloatField;
    zqry_PRECOTIPOPRECOPROD: TWideStringField;
    zqry_PRECODTALTPRECO: TDateField;
    zqry_PRECOHALTPRECO: TTimeField;
    zqry_PRECOPRECOANT: TFloatField;
    zqry_PRECOIDUSUALTPRECO: TWideStringField;
    zqry_PRECOATIVOPRECOPROD: TWideStringField;
    zqry_PRECODTINS: TDateField;
    zqry_PRECOHINS: TTimeField;
    zqry_PRECOIDUSUINS: TWideStringField;
    zqry_PRECODTALT: TDateField;
    zqry_PRECOHALT: TTimeField;
    zqry_PRECOIDUSUALT: TWideStringField;
    zdts_PRECO: TDataSource;
    zqry_PRECO: TZQuery;
    DBText1: TDBText;
    zqry_LOTE: TZQuery;
    zqry_LOTECODEMP: TIntegerField;
    zqry_LOTECODFILIAL: TSmallintField;
    zqry_LOTECODPROD: TIntegerField;
    zqry_LOTECODLOTE: TWideStringField;
    zqry_LOTEVENCTOLOTE: TDateField;
    zqry_LOTESLDLOTE: TFloatField;
    zqry_LOTESLDRESLOTE: TFloatField;
    zqry_LOTESLDCONSIGLOTE: TFloatField;
    zqry_LOTESLDLIQLOTE: TFloatField;
    zqry_LOTEQTDPRODLOTE: TFloatField;
    zqry_LOTEDINILOTE: TDateField;
    zqry_LOTEDIASAVISOLOTE: TSmallintField;
    zqry_LOTEDTINS: TDateField;
    zqry_LOTEHINS: TTimeField;
    zqry_LOTEIDUSUINS: TWideStringField;
    zqry_LOTEDTALT: TDateField;
    zqry_LOTEHALT: TTimeField;
    zqry_LOTEIDUSUALT: TWideStringField;
    zdts_LOTE: TDataSource;
    zqry_PRODFOR: TZQuery;
    zqry_PRODFORCODEMP: TIntegerField;
    zqry_PRODFORCODFILIAL: TSmallintField;
    zqry_PRODFORCODPROD: TIntegerField;
    zqry_PRODFORCODEMPFR: TIntegerField;
    zqry_PRODFORCODFILIALFR: TSmallintField;
    zqry_PRODFORCODFOR: TIntegerField;
    zqry_PRODFORREFPRODFOR: TWideStringField;
    zqry_PRODFORDTINS: TDateField;
    zqry_PRODFORHINS: TTimeField;
    zqry_PRODFORIDUSUINS: TWideStringField;
    zqry_PRODFORDTALT: TDateField;
    zqry_PRODFORHALT: TTimeField;
    zqry_PRODFORIDUSUALT: TWideStringField;
    zdts_PRODFOR: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label59: TLabel;
    DBEdit53: TDBEdit;
    Label63: TLabel;
    DBEdit54: TDBEdit;
    Label65: TLabel;
    DBEdit56: TDBEdit;
    btn_ETIQUETA: TBitBtn;
    btn_SYNC: TBitBtn;
    Label64: TLabel;
    DBEdit55: TDBEdit;
    ts_FISCAL: TTabSheet;
    zqry_FISCAL: TZQuery;
    zdts_FISCAL: TDataSource;
    zqry_FISCALCODEMP: TIntegerField;
    zqry_FISCALCODFILIAL: TIntegerField;
    zqry_FISCALCODPROD: TIntegerField;
    zqry_FISCALCODFISC: TIntegerField;
    zqry_FISCALCFOPVDUF: TIntegerField;
    zqry_FISCALCFOPVDUFEXT: TIntegerField;
    zqry_FISCALCFOPCPUF: TIntegerField;
    zqry_FISCALCFOPCPUFEXT: TIntegerField;
    zqry_FISCALCSTCSOSN: TWideStringField;
    DBGrid5: TDBGrid;
    zqry_MAX: TZQuery;
    zdts_MAX: TDataSource;
    procedure btn_GRAVAClick(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_ANTERIORClick(Sender: TObject);
    procedure tipoproduto;
    procedure produtoativo;
    procedure btn_PRIMEIROClick(Sender: TObject);
    procedure btn_PROXIMOClick(Sender: TObject);
    procedure btn_ULTIMOClick(Sender: TObject);
    procedure sp_MARCAClick(Sender: TObject);
    procedure sp_ALMOXARIFADOClick(Sender: TObject);
    procedure sp_UNIDADEClick(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure ch_RECAGROClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure btn_APAGAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      ultimo:integer;
  end;

var
  frm_CAD_PRODUTOS: Tfrm_CAD_PRODUTOS;

implementation

{$R *.dfm}

uses u_dados, u_funcoes, u_aguarde, u_almoxarifados, u_marcas, u_unidades;

procedure Tfrm_CAD_PRODUTOS.produtoativo;
begin
  if zqry_CADASTROativoprod.AsString='S' then ch_ATIVOPROD.Checked:=true;
  if zqry_CADASTROativoprod.AsString='N' then ch_ATIVOPROD.Checked:=FALSE;
  //
  if zqry_CADASTROPROMOCAO.AsString='S' then ch_PROMOCAO.Checked:=true;
  if zqry_CADASTROPROMOCAO.AsString='N' then ch_PROMOCAO.Checked:=false;
  //
  if zqry_CADASTROUSARECEITAPROD.AsString='S' then ch_RECAGRO.Checked:=true;
  if zqry_CADASTROUSARECEITAPROD.AsString='N' then ch_RECAGRO.Checked:=false;
  //
  if zqry_CADASTROGUIATRAFPROD.AsString='S' then ch_RASTREIO.Checked:=true;
  if zqry_CADASTROGUIATRAFPROD.AsString='N' then ch_RASTREIO.Checked:=false;
  //
  if zqry_CADASTROCLOTEPROD.AsString='S' then ch_LOTE.Checked:=true;
  if zqry_CADASTROCLOTEPROD.AsString='N' then ch_LOTE.Checked:=false;
end;

procedure Tfrm_CAD_PRODUTOS.sp_ALMOXARIFADOClick(Sender: TObject);
begin
  inherited;
  frm_cad_almoxarifados.showmodal;
end;

procedure Tfrm_CAD_PRODUTOS.sp_MARCAClick(Sender: TObject);
begin
  inherited;
  frm_cad_marcas.showmodal;
end;

procedure Tfrm_CAD_PRODUTOS.sp_UNIDADEClick(Sender: TObject);
begin
  inherited;
frm_cad_unidades.showmodal;
end;

procedure Tfrm_CAD_PRODUTOS.tipoproduto;
begin
  if zqry_CADASTROTIPOPROD.AsString='' then cb_CLASSPRODUTO.Text:='Não escolhido';
  if zqry_CADASTROTIPOPROD.AsString='P' then cb_CLASSPRODUTO.Text:='Mercadoria para Revenda';

  //
  if zqry_CADASTROCVPROD.AsString='' then cb_CADASTROPARA.Text:='Não escolhido';
  if zqry_CADASTROCVPROD.AsString='C' then cb_CADASTROPARA.Text:='Compra';
  if zqry_CADASTROCVPROD.AsString='A' then cb_CADASTROPARA.Text:='Ambos';
  if zqry_CADASTROCVPROD.AsString='V' then cb_CADASTROPARA.Text:='Venda';
  //
  if zqry_CADASTROVERIFPROD.AsString='' then cb_SOBRECUSTO.Text:='Não escolhido';
  if zqry_CADASTROVERIFPROD.AsString='N' then cb_SOBRECUSTO.Text:='Bloqueado';
  if zqry_CADASTROVERIFPROD.AsString='S' then cb_SOBRECUSTO.Text:='Senha';
  if zqry_CADASTROVERIFPROD.AsString='L' then cb_SOBRECUSTO.Text:='Liberado';
  //
  zqry_preco.Params.clear;
  zqry_preco.Close;
  zqry_preco.SQL.Clear;
  zqry_preco.SQL.Add('select * from vdprecoprod where codemp=:empcod and codprod=:prodcod');
  zqry_preco.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_preco.ParamByName('prodcod').AsInteger:=zqry_CADASTROCODPROD.AsInteger;
  zqry_preco.Open;
  //
  zqry_prodfor.Params.Clear;
  zqry_prodfor.Close;
  zqry_prodfor.SQL.Clear;
  zqry_prodfor.SQL.Add('select * from cpprodfor where codemp=:empcod and codprod=:prodcod');
  zqry_prodfor.ParamByName('empcod').asinteger:=dm_dados.codemp;
  zqry_prodfor.ParamByName('prodcod').AsInteger:=zqry_cadastrocodprod.AsInteger;
  zqry_prodfor.Open;
  //
  zqry_lote.Params.Clear;
  zqry_lote.Close;
  zqry_lote.SQL.Clear;
  zqry_lote.SQL.Add('select * from eqlote where codemp=:empcod and codprod=:prodcod');
  zqry_lote.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_lote.ParamByName('prodcod').asinteger:=zqry_CADASTROCODPROD.AsInteger;
  zqry_lote.Open;
end;

procedure Tfrm_CAD_PRODUTOS.btn_ANTERIORClick(Sender: TObject);
begin
  if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.cancel;
  end;
  inherited;
  tipoproduto;
  produtoativo;
end;

procedure Tfrm_CAD_PRODUTOS.btn_APAGAClick(Sender: TObject);
begin
  if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.cancel;
  end;
  inherited;
end;

procedure Tfrm_CAD_PRODUTOS.btn_GRAVAClick(Sender: TObject);
begin
	zqry_CADASTROCODEMP.AsInteger:=dm_Dados.codemp;
	zqry_CADASTROCODFILIAL.AsInteger:=1;
	zqry_CADASTRODTINS.AsDateTime:=now;
	zqry_CADASTROHINS.AsDateTime:=now;
	zqry_CADASTROIDUSUINS.AsString:=dm_dados.usuario;
  zqry_CADASTROCODEMPAX.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALAX.AsInteger:=1;
  zqry_CADASTROCODEMPMA.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALMA.AsInteger:=1;
  zqry_CADASTROCODEMPUD.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALUD.AsInteger:=1;
  zqry_CADASTROCODEMPFC.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALFC.AsInteger:=1;
  zqry_CADASTROCODEMPMC.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALMC.AsInteger:=1;
  zqry_CADASTROCODEMPGP.AsInteger:=dm_Dados.codemp;
  zqry_CADASTROCODFILIALGP.AsInteger:=1;
  zqry_CADASTROCODMOEDA.asstring:='R$';
  zqry_CADASTROTIPOPROD.AsString:='P';
  zqry_CADASTROCLOTEPROD.AsString:='N';
  zqry_CADASTROSERIEPROD.AsString:='N';
  zqry_CADASTROCVPROD.AsString:='A';
  zqry_CADASTROCOMISPROD.Asfloat:=0;
  zqry_CADASTROPESOLIQPROD.AsFloat:=0;
  zqry_CADASTROPESOBRUTPROD.AsFloat:=0;
  zqry_CADASTROQTDMINPROD.AsFloat:=0;
  zqry_CADASTROQTDMAXPROD.AsFloat:=0;
  zqry_CADASTRODTMPMPROD.AsDateTime:=now;
  zqry_CADASTROCUSTOMPMPROD.AsFloat:=0;
  zqry_CADASTROSLDPROD.AsFloat:=0;
  zqry_CADASTROSLDLIQPROD.AsFloat:=0;
  zqry_CADASTROATIVOPROD.AsString:='S';
  zqry_CADASTROUSARECEITAPROD.AsString:='N';//cds_EQPRODUTOusareceitaprod.AsString;
  zqry_CADASTROUSATELAADICPDV.AsString:='N';//cds_EQPRODUTOusatelaadicpdv.AsString;
  zqry_CADASTROGUIATRAFPROD.AsString:='N';
  zqry_CADASTROQTDEMBALAGEM.AsFloat:=1 ;//else dm_dados.zqry_EQPRODUTOQTDEMBALAGEM.AsFloat:=strtofloat(stringreplace(cds_EQPRODUTOqtdembalagem.asstring, '.', ',', []));
  zqry_CADASTROEMMANUT.AsString:='N';//cds_EQPRODUTOemmanut.AsString;
  zqry_CADASTROPROMOCAO.AsString:='N';


      zqry_CADASTROCODALMOX.AsInteger:=1;

     //zqry_CADASTROCODUNID.AsString:='UN';
     //zqry_CADASTROCODFISC.AsString:='19059090';
     zqry_CADASTROCODMARCA.AsString:='GENE';
        zqry_CADASTROCODGRUP.AsString:='SGRU';


    zqry_CADASTROPESOLIQPROD.AsFloat:=0;
    zqry_CADASTROPESOBRUTPROD.AsFloat:=0;
    zqry_CADASTROQTDMINPROD.AsFloat:=0;
    zqry_CADASTROQTDMAXPROD.AsFloat:=0;
    zqry_CADASTRODTMPMPROD.AsDateTime:=now;
    zqry_CADASTROCUSTOMPMPROD.AsFloat:=0;
    //zqry_CADASTROcustoinfoprod.asfloat:=0;
    //zqry_CADASTROprecobaseprod.asfloat:=0;
    zqry_CADASTROSLDPROD.AsFloat:=0;
    zqry_CADASTROSLDLIQPROD.AsFloat:=0;

   { ZQRY_CADASTROCODEMP.AsInteger:=99;
    ZQRY_CADASTROCODFILIAL.AsInteger:=1;
    ZQRY_CADASTROCODPROD.AsInteger:=strtoint(dbedit1.Text);
    ZQRY_CADASTRODESCPROD.AsString:='produto inserido';
    ZQRY_CADASTROREFPROD.AsString:=dbedit1.Text;
    ZQRY_CADASTROCODEMPAX.AsInteger:=99;
    ZQRY_CADASTROCODFILIALAX.AsInteger:=1;
    ZQRY_CADASTROCODEMPMA.AsInteger:=99;
    ZQRY_CADASTROCODFILIALMA.AsInteger:=1;
    ZQRY_CADASTROCODEMPUD.AsInteger:=99;
    ZQRY_CADASTROCODFILIALUD.AsInteger:=1;
    ZQRY_CADASTROCODEMPFC.AsInteger:=99;
    ZQRY_CADASTROCODFILIALFC.AsInteger:=1;
    ZQRY_CADASTROCODEMPMC.AsInteger:=99;
    ZQRY_CADASTROCODFILIALMC.AsInteger:=1;
    ZQRY_CADASTROCODEMPGP.AsInteger:=99;
    ZQRY_CADASTROCODFILIALGP.AsInteger:=1;
    ZQRY_CADASTROCODALMOX.AsInteger:=1;
    ZQRY_CADASTROCODMOEDA.asstring:='R$';
    ZQRY_CADASTROCODUNID.AsString:='UN';
    ZQRY_CADASTROCODFISC.AsString:='19059090';
    ZQRY_CADASTROCODMARCA.AsString:='GENE';
    ZQRY_CADASTROTIPOPROD.AsString:='P';
    ZQRY_CADASTROCODGRUP.AsString:='SGRU';
    ZQRY_CADASTROCODBARPROD.AsString:='7891111111111';
    ZQRY_CADASTROCLOTEPROD.AsString:='N';
    ZQRY_CADASTROSERIEPROD.AsString:='N';
    ZQRY_CADASTROCVPROD.AsString:='A';
    ZQRY_CADASTROCOMISPROD.Asfloat:=0;
    ZQRY_CADASTROPESOLIQPROD.AsFloat:=0;
    ZQRY_CADASTROPESOBRUTPROD.AsFloat:=0;
    ZQRY_CADASTROQTDMINPROD.AsFloat:=0;
    ZQRY_CADASTROQTDMAXPROD.AsFloat:=0;
    ZQRY_CADASTRODTMPMPROD.AsDateTime:=now;
    ZQRY_CADASTROCUSTOMPMPROD.AsFloat:=1.25;
    ZQRY_CADASTROcustoinfoprod.asfloat:=1.50;
    ZQRY_CADASTROprecobaseprod.asfloat:=5.00;
    ZQRY_CADASTROSLDPROD.AsFloat:=0;
    ZQRY_CADASTROSLDLIQPROD.AsFloat:=0;
    ZQRY_CADASTROATIVOPROD.AsString:='S';
    ZQRY_CADASTROUSARECEITAPROD.AsString:='N';//cds_EQPRODUTOusareceitaprod.AsString;
    ZQRY_CADASTROUSATELAADICPDV.AsString:='N';//cds_EQPRODUTOusatelaadicpdv.AsString;
    ZQRY_CADASTROGUIATRAFPROD.AsString:='N';
    ZQRY_CADASTROQTDEMBALAGEM.AsFloat:=1 ;//else ZQRY_CADASTROQTDEMBALAGEM.AsFloat:=strtofloat(stringreplace(cds_EQPRODUTOqtdembalagem.asstring, '.', ',', []));
    ZQRY_CADASTROEMMANUT.AsString:='N';//cds_EQPRODUTOemmanut.AsString;
    ZQRY_CADASTRODTINS.AsDateTime:=now;
    ZQRY_CADASTROHINS.AsDateTime:=now;
    ZQRY_CADASTROIDUSUINS.AsString:='sysdba';//cds_EQPRODUTOidusuins.AsString;
    ZQRY_CADASTRODTALT.AsDateTime:=now;//strtodate(cds_EQPRODUTOdtalt.asString);
    ZQRY_CADASTROIDUSUALT.AsString:='sysdba';//cds_EQPRODUTOidusualt.AsString;
    ZQRY_CADASTROPROMOCAO.AsString:='N';
    ZQRY_CADASTROCODBALANCA.AsInteger:=999;
    ZQRY_CADASTRO.Post;
  showmessage('TODOS OS PRODUTOS FORAM IMPORTADOS');  }
  inherited;
end;

procedure Tfrm_CAD_PRODUTOS.btn_NOVOClick(Sender: TObject);
begin
if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.Insert;
    StatusBar1.Panels[0].Text:='Inserindo Novo Registro';
  end;
  ultimo:=0;
  dbedit2.SetFocus;
  zqry_max.Params.Clear;
  zqry_max.Close;
  zqry_max.SQL.Clear;
  zqry_max.SQL.Add('select max(codprod) as ultcod from eqproduto');
  zqry_max.Open;
  ultimo:=zqry_MAX.FieldByName('ultcod').AsInteger+1;
  dbedit1.Text:=inttostr(ultimo);
  dbedit2.Text:=inttostr(ultimo);
  dbedit4.Text:=inttostr(ultimo);
  dbedit2.SetFocus;
end;

procedure Tfrm_CAD_PRODUTOS.btn_PRIMEIROClick(Sender: TObject);
begin
  if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.cancel;
  end;
  inherited;
  tipoproduto;
  produtoativo;
end;

procedure Tfrm_CAD_PRODUTOS.btn_PROXIMOClick(Sender: TObject);
begin
  if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.cancel;
  end;
  inherited;
  tipoproduto;
  produtoativo;
end;

procedure Tfrm_CAD_PRODUTOS.btn_ULTIMOClick(Sender: TObject);
begin
  if not (zqry_cadastro.state in [dsedit, dsinsert]) then
  begin
    zqry_cadastro.cancel;
  end;
  inherited;
  tipoproduto;
  produtoativo;
end;

procedure Tfrm_CAD_PRODUTOS.ch_RECAGROClick(Sender: TObject);
begin
  inherited;
  {TODO -oIsrael -cProdutos : Se estiver desmarcado o TabSheet nao pode aparecer}
end;

procedure Tfrm_CAD_PRODUTOS.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  DBEDIT14.Text:='0';
end;

procedure Tfrm_CAD_PRODUTOS.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DBEDIT2.Text='' then DBEDIT2.Text:=INTTOSTR(ultimo);

end;

procedure Tfrm_CAD_PRODUTOS.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if DBEDIT4.Text='' then DBEDIT4.Text:=INTTOSTR(ultimo);

end;

procedure Tfrm_CAD_PRODUTOS.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  dbedit9.Text:='0';
end;

procedure Tfrm_CAD_PRODUTOS.DBLookupComboBox5Click(Sender: TObject);
begin
  inherited;
  zqry_NCM.Close;
  zqry_NCM.SQL.Clear;
  zqry_NCM.sql.Add('select codemp, codfisc, descfisc from lfclfiscal where codemp=:empcod');
  zqry_NCM.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_NCM.Open;
end;

procedure Tfrm_CAD_PRODUTOS.FormDestroy(Sender: TObject);
begin
  inherited;
  frm_cad_produtos:=nil;
end;

procedure Tfrm_CAD_PRODUTOS.FormShow(Sender: TObject);
begin
  inherited;

  mostratelaaguarde('Carregando Produtos');
  zqry_cadastro.SQL.Add('select * from eqproduto where codemp=:empcod order by codprod');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
	zqry_cadastro.Open;
  zqry_cadastro.First;

  zqry_eqalmox.Close;
  zqry_eqalmox.SQL.Clear;
  zqry_eqalmox.sql.Add('select codemp, codalmox, descalmox from eqalmox where codemp=:empcod');
  zqry_eqalmox.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqalmox.Open;
  //
  zqry_eqMARCA.Close;
  zqry_eqMARCA.SQL.Clear;
  zqry_eqMARCA.sql.Add('select codemp, codmarca, descmarca from eqmarca where codemp=:empcod');
  zqry_eqMARCA.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqMARCA.Open;
  //
  zqry_eqGRUPO.Close;
  zqry_eqGRUPO.SQL.Clear;
  zqry_eqGRUPO.sql.Add('select codemp, codgrup, descgrup from eqgrupo where codemp=:empcod');
  zqry_eqGRUPO.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqGRUPO.Open;
  //
  zqry_eqUNIDADE.Close;
  zqry_eqUNIDADE.SQL.Clear;
  zqry_eqUNIDADE.sql.Add('select codemp, codunid, descunid from equnidade where codemp=:empcod');
  zqry_eqUNIDADE.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqUNIDADE.Open;
  //
  zqry_NCM.Close;
  zqry_NCM.SQL.Clear;
  zqry_NCM.sql.Add('select codemp, codfisc, descfisc from lfclfiscal where codemp=:empcod');
  zqry_NCM.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_NCM.Open;
  //
	lbl_TITULO_FORM.Caption:='PRODUTOS';
  PageControl1.ActivePage:=ts_BASICO;
  if ch_RECAGRO.Checked=true then ts_RECAGRO.Visible:=true;
  if ch_RECAGRO.Checked=false then ts_RECAGRO.Visible:=false;

  tipoproduto;
  produtoativo;
  fechatelaaguarde;
end;


end.
