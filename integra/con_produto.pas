unit con_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.Provider,
  Datasnap.DBClient, Vcl.DBCtrls, Vcl.Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Mask;

type
  Tfrm_CON_PRODUTO = class(TForm)
    rg_CONSULTA: TRadioGroup;
    edt_desc: TEdit;
    btn_busca_cod: TBitBtn;
    btn_busca_desc: TBitBtn;
    lbl_DESCRITIVO: TLabel;
    DBGrid1: TDBGrid;
    dts_CON_EQPRODUTO: TDataSource;
    edt_ean: TEdit;
    btn_busca_ean: TBitBtn;
    edt_cod: TEdit;
    btn_OK: TBitBtn;
    btn_FECHAR: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    PopupMenu1: TPopupMenu;
    OK1: TMenuItem;
    zqry_CON_EQPRODUTO: TZQuery;
    zqry_CON_EQPRODUTOCODEMP: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIAL: TSmallintField;
    zqry_CON_EQPRODUTOCODPROD: TIntegerField;
    zqry_CON_EQPRODUTODESCPROD: TWideStringField;
    zqry_CON_EQPRODUTOREFPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPAX: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALAX: TSmallintField;
    zqry_CON_EQPRODUTOCODALMOX: TIntegerField;
    zqry_CON_EQPRODUTOCODEMPMA: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALMA: TSmallintField;
    zqry_CON_EQPRODUTOCODMOEDA: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPUD: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALUD: TSmallintField;
    zqry_CON_EQPRODUTOCODUNID: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPFC: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALFC: TSmallintField;
    zqry_CON_EQPRODUTOCODFISC: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPMC: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALMC: TSmallintField;
    zqry_CON_EQPRODUTOCODMARCA: TWideStringField;
    zqry_CON_EQPRODUTODESCAUXPROD: TWideStringField;
    zqry_CON_EQPRODUTOTIPOPROD: TWideStringField;
    zqry_CON_EQPRODUTOCVPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPGP: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALGP: TSmallintField;
    zqry_CON_EQPRODUTOCODGRUP: TWideStringField;
    zqry_CON_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_CON_EQPRODUTOCLOTEPROD: TWideStringField;
    zqry_CON_EQPRODUTOSERIEPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODFABPROD: TWideStringField;
    zqry_CON_EQPRODUTOCOMISPROD: TFloatField;
    zqry_CON_EQPRODUTOPESOLIQPROD: TFloatField;
    zqry_CON_EQPRODUTOPESOBRUTPROD: TFloatField;
    zqry_CON_EQPRODUTOQTDMINPROD: TFloatField;
    zqry_CON_EQPRODUTOQTDMAXPROD: TFloatField;
    zqry_CON_EQPRODUTODTMPMPROD: TDateField;
    zqry_CON_EQPRODUTOCUSTOMPMPROD: TFloatField;
    zqry_CON_EQPRODUTOCUSTOPEPSPROD: TFloatField;
    zqry_CON_EQPRODUTOCUSTOINFOPROD: TFloatField;
    zqry_CON_EQPRODUTOPRECOBASEPROD: TFloatField;
    zqry_CON_EQPRODUTOPRECOCOMISPROD: TFloatField;
    zqry_CON_EQPRODUTOSLDPROD: TFloatField;
    zqry_CON_EQPRODUTOSLDRESPROD: TFloatField;
    zqry_CON_EQPRODUTOSLDCONSIGPROD: TFloatField;
    zqry_CON_EQPRODUTOSLDLIQPROD: TFloatField;
    zqry_CON_EQPRODUTOATIVOPROD: TWideStringField;
    zqry_CON_EQPRODUTODTULTCPPROD: TDateField;
    zqry_CON_EQPRODUTOQTDULTCPPROD: TFloatField;
    zqry_CON_EQPRODUTODESCCOMPPROD: TWideStringField;
    zqry_CON_EQPRODUTOOBSPROD: TWideStringField;
    zqry_CON_EQPRODUTOVERIFPROD: TWideStringField;
    zqry_CON_EQPRODUTOLOCALPROD: TWideStringField;
    zqry_CON_EQPRODUTORMAPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPPE: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALPE: TSmallintField;
    zqry_CON_EQPRODUTOCODPE: TIntegerField;
    zqry_CON_EQPRODUTOCODEMPCC: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALCC: TSmallintField;
    zqry_CON_EQPRODUTOANOCC: TSmallintField;
    zqry_CON_EQPRODUTOCODCC: TWideStringField;
    zqry_CON_EQPRODUTOUSARECEITAPROD: TWideStringField;
    zqry_CON_EQPRODUTOUSATELAADICPDV: TWideStringField;
    zqry_CON_EQPRODUTOVLRDENSIDADE: TFloatField;
    zqry_CON_EQPRODUTOVLRCONCENT: TFloatField;
    zqry_CON_EQPRODUTOCOMPRIMENTO: TFloatField;
    zqry_CON_EQPRODUTOLARGURA: TFloatField;
    zqry_CON_EQPRODUTOESPESSURA: TFloatField;
    zqry_CON_EQPRODUTOGUIATRAFPROD: TWideStringField;
    zqry_CON_EQPRODUTOQTDEMBALAGEM: TFloatField;
    zqry_CON_EQPRODUTOCODEANPROD: TWideStringField;
    zqry_CON_EQPRODUTOCUBAGEM: TFloatField;
    zqry_CON_EQPRODUTOCODEMPSC: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALSC: TSmallintField;
    zqry_CON_EQPRODUTOCODSECAO: TWideStringField;
    zqry_CON_EQPRODUTOCODEMPTC: TSmallintField;
    zqry_CON_EQPRODUTOCODFILIALTC: TSmallintField;
    zqry_CON_EQPRODUTOCODTPCHAMADO: TIntegerField;
    zqry_CON_EQPRODUTOQTDHORASSERV: TFloatField;
    zqry_CON_EQPRODUTONRODIASVALID: TSmallintField;
    zqry_CON_EQPRODUTODESCCLI: TWideStringField;
    zqry_CON_EQPRODUTOQTDPORPLANO: TSmallintField;
    zqry_CON_EQPRODUTONROPLANOS: TSmallintField;
    zqry_CON_EQPRODUTOCERTFSC: TWideStringField;
    zqry_CON_EQPRODUTOFATORFSC: TFloatField;
    zqry_CON_EQPRODUTOCODEMPOG: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALOG: TSmallintField;
    zqry_CON_EQPRODUTOCODPRODOG: TIntegerField;
    zqry_CON_EQPRODUTOCODEMPMG: TIntegerField;
    zqry_CON_EQPRODUTOCODFILIALMG: TSmallintField;
    zqry_CON_EQPRODUTOCODMODG: TIntegerField;
    zqry_CON_EQPRODUTOPRAZOREPO: TIntegerField;
    zqry_CON_EQPRODUTOMEDIAVENDA: TFloatField;
    zqry_CON_EQPRODUTOEMMANUT: TWideStringField;
    zqry_CON_EQPRODUTODTINS: TDateField;
    zqry_CON_EQPRODUTOHINS: TTimeField;
    zqry_CON_EQPRODUTOIDUSUINS: TWideStringField;
    zqry_CON_EQPRODUTODTALT: TDateField;
    zqry_CON_EQPRODUTOHALT: TTimeField;
    zqry_CON_EQPRODUTOIDUSUALT: TWideStringField;
    zqry_CON_EQPRODUTOFINAME: TWideStringField;
    zqry_CON_EQPRODUTOMDA: TWideStringField;
    zqry_CON_EQPRODUTOPTSFIDELIDADE: TIntegerField;
    zqry_CON_EQPRODUTOCURVA: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA: TWideStringField;
    zqry_CON_EQPRODUTOPROD_ORIGEM: TWideStringField;
    zqry_CON_EQPRODUTOPROD_IAT: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_CON_EQPRODUTOPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_CON_EQPRODUTOPROD_ICMS: TWideStringField;
    zqry_CON_EQPRODUTOPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_CON_EQPRODUTOPROD_BLOQUEIO: TWideStringField;
    zqry_CON_EQPRODUTOPROD_USA_PROMO: TWideStringField;
    zqry_CON_EQPRODUTOPROD_PBALANCA: TWideStringField;
    zqry_CON_EQPRODUTOPROD_ATIVO: TWideStringField;
    zqry_CON_EQPRODUTOCODNCM: TWideStringField;
    zqry_CON_EQPRODUTOMARKUP: TFloatField;
    zqry_CON_EQPRODUTOICRE: TWideStringField;
    zqry_CON_EQPRODUTOCEST: TWideStringField;
    zqry_CON_EQPRODUTOPROMOCAO: TWideStringField;
    zqry_CON_EQPRODUTOCODMIX: TIntegerField;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    PorCdigo1: TMenuItem;
    PorDescrio1: TMenuItem;
    PorEAN1: TMenuItem;
    odos1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btn_GRAVAR: TBitBtn;
    procedure rg_CONSULTAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_busca_descClick(Sender: TObject);
    procedure btn_busca_codClick(Sender: TObject);
    procedure btn_busca_eanClick(Sender: TObject);
    procedure edt_eanKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codKeyPress(Sender: TObject; var Key: Char);
    procedure edt_descKeyPress(Sender: TObject; var Key: Char);
    procedure btn_FECHARClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_OKClick(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure PorCdigo1Click(Sender: TObject);
    procedure PorDescrio1Click(Sender: TObject);
    procedure PorEAN1Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_GRAVARClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    alteraproduto : integer;
  end;

var
  frm_CON_PRODUTO: Tfrm_CON_PRODUTO;

implementation

{$R *.dfm}

uses dados, principal, cupom;

procedure Tfrm_CON_PRODUTO.btn_busca_codClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where codprod=:codigo and codemp=99 order by descprod');
zqry_con_eqproduto.parambyname('codigo').value:=strtoint(edt_cod.text);
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com tal descrição');
edt_cod.Clear;
edt_cod.SetFocus;
end;

procedure Tfrm_CON_PRODUTO.btn_busca_descClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where descprod like :nome and codemp=99 order by descprod');
zqry_con_eqproduto.parambyname('nome').value:='%'+edt_desc.text+'%';
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com tal descrição');
edt_desc.Clear;
edt_desc.setfocus;
end;

procedure Tfrm_CON_PRODUTO.btn_busca_eanClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where codbarprod=:ean and codemp=99 order by descprod');
zqry_con_eqproduto.parambyname('ean').value:=edt_ean.text;
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com esse código de barras');
edt_ean.Clear;
edt_ean.SetFocus;
end;

procedure Tfrm_CON_PRODUTO.btn_FECHARClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_CON_PRODUTO.btn_GRAVARClick(Sender: TObject);
begin
if alteraproduto=1 then
begin
  DM_DADOS.Executasginiconsp;
  zqry_CON_EQPRODUTO.Post;
  ZQRY_CON_EQPRODUTO.ApplyUpdates;
  dbedit1.readonly:=true;
  dbedit1.Enabled:=false;
  rg_consulta.enabled:=true;
  //zqry_con_eqproduto.Close;
  alteraproduto:=0;
  rg_CONSULTA.ItemIndex:=2;
end;
end;

procedure Tfrm_CON_PRODUTO.btn_OKClick(Sender: TObject);
begin
if frm_CUPOM.lbl_status.caption='CAIXA DISPONÍVEL !' then
begin
  showmessage('Não há cupom aberto para inserção de produto');
end
else
begin
 if dm_dados.zqry_SGPREFERE1PDV_BUSCAEAN.Value='S' then
 begin
  frm_cupom.edt_ean.text:=zqry_CON_EQPRODUTOCODBARPROD.ASSTRING;
  frm_cupom.edt_ean.SetFocus;
  edt_desc.Clear;
//  frm_cupom.buscacod:=1;
  close;
 end
 else
 begin
  frm_cupom.edt_ean.text:=zqry_CON_EQPRODUTOCODPROD.ASSTRING;
  frm_cupom.edt_ean.SetFocus;
  edt_desc.Clear;
  close;
 end;
end;
end;

procedure Tfrm_CON_PRODUTO.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then btn_GRAVARClick(Sender);

end;

procedure Tfrm_CON_PRODUTO.DBGrid1CellClick(Column: TColumn);
begin
if frm_cupom.lbl_status.caption='CAIXA DISPONÍVEL !' then
begin
  showmessage('Não há cupom aberto para inserção de produto');
end
else
begin
dm_dados.zqry_EQPRODUTO.Close;
dm_Dados.zqry_eqproduto.sql.Clear;
dm_Dados.zqry_eqproduto.sql.Add('select * from eqproduto where codprod=:codigo and codemp=99 order by descprod');
dm_Dados.zqry_eqproduto.parambyname('codigo').asinteger:=zqry_CON_EQPRODUTOCODPROD.AsInteger;
dm_Dados.zqry_eqproduto.open;
end;
end;

procedure Tfrm_CON_PRODUTO.DBGrid1DblClick(Sender: TObject);
begin
alteraproduto:=1;
zqry_CON_EQPRODUTO.Edit;
DBEDIT1.ReadOnly:=FALSE;
dbedit1.Enabled:=true;
DBEDIT1.SetFocus;
rg_CONSULTA.Enabled:=false;
end;

procedure Tfrm_CON_PRODUTO.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key=#13) then btn_OKClick(Sender);
end;

procedure Tfrm_CON_PRODUTO.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if frm_cupom.lbl_status.caption='CAIXA DISPONÍVEL !' then
begin
  showmessage('Não há cupom aberto para inserção de produto');
end
else
begin
dm_dados.zqry_eqproduto.Close;
dm_Dados.zqry_eqproduto.sql.clear;
dm_Dados.zqry_eqproduto.sql.Add( 'select * from eqproduto where codprod=:codigo and codemp=99 order by descprod');
dm_Dados.zqry_eqproduto.parambyname('codigo').asinteger:=zqry_CON_EQPRODUTOCODPROD.AsInteger;
dm_Dados.zqry_eqproduto.open;
end;

end;

procedure Tfrm_CON_PRODUTO.edt_codKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_cod.Click; // ou b.OnClick(b);
end;

procedure Tfrm_CON_PRODUTO.edt_descKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_desc.Click; // ou b.OnClick(b);
end;

procedure Tfrm_CON_PRODUTO.edt_eanKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_ean.Click; // ou b.OnClick(b);

end;

procedure Tfrm_CON_PRODUTO.Fechar1Click(Sender: TObject);
begin
btn_FECHARClick(Self);
end;

procedure Tfrm_CON_PRODUTO.FormActivate(Sender: TObject);
begin
//frm_principal.btn_MEMORIAClick(Sender);
//todos
{rg_CONSULTA.ItemIndex:=1;
edt_desc.Visible:=true;
edt_desc.SetFocus; }
//marcio
rg_CONSULTA.ItemIndex:=2;
edt_ean.Visible:=true;
edt_ean.SetFocus;

if (frm_cupom.lbl_status.Caption='CAIXA DISPONÍVEL !') and (frm_cupom.descanso=1) then frm_cupom.timer_descanso.enabled:=false;
alteraproduto:=0;
end;

procedure Tfrm_CON_PRODUTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//Action := caFree;
//Release;
//FRM_CON_PRODUTO := nil;
zqry_con_eqproduto.Close;
if frm_cupom.lbl_status.Caption='CAIXA DISPONÍVEL !' then frm_cupom.timer_descanso.enabled:=true;
end;

procedure Tfrm_CON_PRODUTO.FormShow(Sender: TObject);
begin
// USE 2 PARA MARCIO E 1 PARA O RESTANTE
rg_CONSULTA.ItemIndex:=2;
//edt_desc.SetFocus;
edt_ean.SetFocus;
end;

procedure Tfrm_CON_PRODUTO.odos1Click(Sender: TObject);
begin
rg_CONSULTA.ItemIndex:=3;

end;

procedure Tfrm_CON_PRODUTO.OK1Click(Sender: TObject);
begin
btn_OK.Click;
end;

procedure Tfrm_CON_PRODUTO.PorCdigo1Click(Sender: TObject);
begin
rg_CONSULTA.ItemIndex:=0;
end;

procedure Tfrm_CON_PRODUTO.PorDescrio1Click(Sender: TObject);
begin
rg_CONSULTA.ItemIndex:=1;
end;

procedure Tfrm_CON_PRODUTO.PorEAN1Click(Sender: TObject);
begin
rg_CONSULTA.ItemIndex:=2;

end;

procedure Tfrm_CON_PRODUTO.rg_CONSULTAClick(Sender: TObject);
begin
  case rg_CONSULTA.ItemIndex of
    0:begin
      LBL_DESCRITIVO.Caption:='CONSULTA POR CÓDIGO';
      EDT_COD.Visible:=TRUE;
      EDT_COD.Clear;
      EDT_COD.SetFocus;
      EDT_COD.Width:=60;
      EDT_COD.Left:=180;
      EDT_COD.Top:=41;
      EDT_DESC.Visible:=FALSE;
      EDT_EAN.Visible:=FALSE;
{      btn_busca_cod.Visible:=true;
      btn_busca_cod.Left:=470;
      btn_busca_cod.Top:=39;
      btn_busca_desc.Visible:=false;}
    end;
    1:begin
      LBL_DESCRITIVO.Caption:='CONSULTA POR DESCRIÇÃO';
      EDT_COD.Visible:=FALSE;
      edt_ean.Visible:=false;
      EDT_DESC.Visible:=TRUE;
      EDT_DESC.Clear;
      EDT_DESC.SetFocus;
      EDT_COD.Width:=300;
      EDT_COD.Left:=8;
      EDT_COD.Top:=41;
{      btn_busca_desc.Visible:=true;
      btn_busca_desc.Left:=470;
      btn_busca_desc.Top:=39;
      btn_busca_cod.Visible:=false;}
    end;
    2:begin
      LBL_DESCRITIVO.Caption:='CONSULTA POR CÓDIGO DE BARRAS';
      EDT_COD.Visible:=FALSE;
      EDT_DESC.Visible:=FALSE;
      EDT_EAN.Visible:=TRUE;
      edt_ean.Clear;
      edt_ean.SetFocus;
      EDT_EAN.Left:=200;
      EDT_EAN.Top:=41;
{      btn_busca_desc.Visible:=false;
      btn_busca_cod.Visible:=false;}
      edt_ean.SetFocus;
    end;
    3:begin
      LBL_DESCRITIVO.Caption:='CONSULTANDO TODOS OS PRODUTOS';
      EDT_COD.Visible:=FALSE;
      EDT_DESC.Visible:=FALSE;
      EDT_EAN.Visible:=FALSE;
    //  cds_con_eqproduto.Active:=false;
    //  cds_con_eqproduto.Active:=true;
      Zqry_con_eqproduto.Close;
      Zqry_con_eqproduto.sql.clear;
      Zqry_con_eqproduto.sql.add('select * from eqproduto where codemp=99 order by descprod');
//      cds_con_eqproduto.params.parambyname('codigo').value:=strtoint(edt_busca.text);
      ZQRY_con_eqproduto.open;
    end;
  end;
end;

end.
