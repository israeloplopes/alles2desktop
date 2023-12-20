unit u_con_buscas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Menus, Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfrm_CON_BUSCAS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbl_TITULO: TLabel;
    lbl_DESCRITIVO: TLabel;
    rg_CON_PRODUTO: TRadioGroup;
    edt_desc: TEdit;
    btn_busca_cod: TBitBtn;
    btn_busca_desc: TBitBtn;
    DBGrid1: TDBGrid;
    btn_busca_ean: TBitBtn;
    edt_cod: TEdit;
    btn_OK: TBitBtn;
    btn_FECHAR: TBitBtn;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btn_GRAVAR: TBitBtn;
    edt_ean: TEdit;
    dts_CON_EQPRODUTO: TDataSource;
    PopupMenu1: TPopupMenu;
    OK1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    PorCdigo1: TMenuItem;
    PorDescrio1: TMenuItem;
    PorEAN1: TMenuItem;
    odos1: TMenuItem;
    zqry_CON_EQPRODUTO: TZQuery;
    DBGrid2: TDBGrid;
    btn_NOVO: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    ProgressBar1: TProgressBar;
    rg_CLIENTES: TRadioGroup;
    gb_CLIENTES: TGroupBox;
    lbl_PESQUISA: TLabel;
    lbl_ATE: TLabel;
    sp_BUSCA: TSpeedButton;
    msk_PESQUISA1: TMaskEdit;
    msk_PESQUISA2: TMaskEdit;
    btn_FECHA: TBitBtn;
    BitBtn1: TBitBtn;
    zqry_CON_EQPRODUTOCODEMP: TIntegerField;
    zqry_CON_EQPRODUTOCODPROD: TIntegerField;
    zqry_CON_EQPRODUTODESCPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODFISC: TWideStringField;
    zqry_CON_EQPRODUTOSLDPROD: TFloatField;
    zqry_CON_EQPRODUTOPRECOBASEPROD: TFloatField;
    zqry_CON_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_CON_EQPRODUTOCODBALANCA: TIntegerField;
    procedure rg_CON_PRODUTOClick(Sender: TObject);
    procedure btn_busca_eanClick(Sender: TObject);
    procedure btn_busca_descClick(Sender: TObject);
    procedure btn_busca_codClick(Sender: TObject);
    procedure PorCdigo1Click(Sender: TObject);
    procedure PorEAN1Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
    procedure PorDescrio1Click(Sender: TObject);
    procedure edt_codKeyPress(Sender: TObject; var Key: Char);
    procedure edt_descKeyPress(Sender: TObject; var Key: Char);
    procedure edt_eanKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_GRAVARClick(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_FECHARClick(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    alteraproduto : integer;
  end;

var
  frm_CON_BUSCAS: Tfrm_CON_BUSCAS;

implementation

{$R *.dfm}

uses u_dados, u_checkout, u_funcoes;

procedure Tfrm_CON_BUSCAS.btn_busca_codClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where codprod=:codigo and codemp=:empcod order by descprod');
zqry_con_eqproduto.parambyname('codigo').value:=strtoint(edt_cod.text);
zqry_con_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
//zqry_con_eqproduto.ParamByName('ativo').Asstring:='S';
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com tal descrição');
edt_cod.Clear;
edt_cod.SetFocus;
end;

procedure Tfrm_CON_BUSCAS.btn_busca_descClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where descprod like :nome and codemp=:empcod order by descprod');
zqry_con_eqproduto.parambyname('nome').value:='%'+edt_desc.text+'%';
zqry_con_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
//zqry_con_eqproduto.ParamByName('ativo').Asstring:='S';
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com tal descrição');
edt_cod.Clear;
edt_cod.SetFocus;
end;

{procedure Tfrm_CON_BUSCAS.btn_busca_descClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where descprod like :nome and codemp=:empcod and ativoprod=:ativo order by descprod');
zqry_con_eqproduto.parambyname('nome').value:='%'+edt_desc.text+'%';
zqry_con_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
zqry_con_eqproduto.ParamByName('ativo').Asstring:='S';
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com tal descrição');
edt_desc.Clear;
edt_desc.setfocus;
end;          }

procedure Tfrm_CON_BUSCAS.btn_busca_eanClick(Sender: TObject);
begin
zqry_con_eqproduto.Close;
zqry_con_eqproduto.sql.clear;
zqry_con_eqproduto.sql.add('select * from eqproduto where codbarprod=:ean and codemp=:empcod order by descprod');
zqry_con_eqproduto.parambyname('ean').value:=edt_ean.text;
zqry_con_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
//zqry_con_eqproduto.ParamByName('ativo').Asstring:='S';
zqry_con_eqproduto.open;
if zqry_con_eqproduto.IsEmpty then showmessage('Não foi localizado produto com esse código de barras');
edt_ean.Clear;
edt_ean.SetFocus;
end;

procedure Tfrm_CON_BUSCAS.btn_FECHARClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_CON_BUSCAS.btn_GRAVARClick(Sender: TObject);
begin
if alteraproduto=1 then
begin
  Executasginiconsp;
  zqry_CON_EQPRODUTO.Post;
  ZQRY_CON_EQPRODUTO.ApplyUpdates;
  dbedit1.readonly:=true;
  dbedit1.Enabled:=false;
  rg_con_produto.enabled:=true;
  //zqry_con_eqproduto.Close;
  alteraproduto:=0;
  rg_CON_PRODUTO.ItemIndex:=2;
end;
end;

procedure Tfrm_CON_BUSCAS.btn_OKClick(Sender: TObject);
begin
 { if frm_CHECKOUT.lbl_status.caption='CAIXA DISPONIVEL' then
  begin
    showmessage('Não há cupom aberto para inserção de produto');
  end
  else
  begin  }
    frm_CHECKOUT.edt_buscaean.text:=zqry_CON_EQPRODUTOCODBARPROD.ASSTRING;
    frm_CHECKOUT.edt_buscaean.SetFocus;
    edt_desc.Clear;
    close;
   //end;
end;

procedure Tfrm_CON_BUSCAS.DBGrid1CellClick(Column: TColumn);
begin
{if frm_checkout.lbl_status.caption='CAIXA DISPONIVEL' then
begin
  showmessage('Não há cupom aberto para inserção de produto');
end
else
begin }
dm_dados.zqry_EQPRODUTO.Close;
dm_Dados.zqry_eqproduto.sql.Clear;
dm_Dados.zqry_eqproduto.sql.Add('select * from eqproduto where codprod=:codigo and codemp=99 order by descprod');
dm_Dados.zqry_eqproduto.parambyname('codigo').asinteger:=zqry_CON_EQPRODUTOCODPROD.AsInteger;
dm_Dados.zqry_eqproduto.open;
//end;
end;

procedure Tfrm_CON_BUSCAS.DBGrid1DblClick(Sender: TObject);
begin
alteraproduto:=1;
zqry_CON_EQPRODUTO.Edit;
DBEDIT1.ReadOnly:=FALSE;
dbedit1.Enabled:=true;
DBEDIT1.SetFocus;
rg_CON_PRODUTO.Enabled:=false;
end;

procedure Tfrm_CON_BUSCAS.edt_codKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_cod.Click; // ou b.OnClick(b);
end;

procedure Tfrm_CON_BUSCAS.edt_descKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_desc.Click; // ou b.OnClick(b);
end;

procedure Tfrm_CON_BUSCAS.edt_eanKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13)then btn_busca_ean.Click; // ou b.OnClick(b);
end;

procedure Tfrm_CON_BUSCAS.Fechar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_CON_BUSCAS.odos1Click(Sender: TObject);
begin
rg_CON_PRODUTO.ItemIndex:=3;
end;

procedure Tfrm_CON_BUSCAS.OK1Click(Sender: TObject);
begin
btn_OK.Click;
end;

procedure Tfrm_CON_BUSCAS.PorCdigo1Click(Sender: TObject);
begin
rg_CON_PRODUTO.ItemIndex:=0;
end;

procedure Tfrm_CON_BUSCAS.PorDescrio1Click(Sender: TObject);
begin
rg_CON_PRODUTO.ItemIndex:=1;
end;

procedure Tfrm_CON_BUSCAS.PorEAN1Click(Sender: TObject);
begin
rg_CON_PRODUTO.ItemIndex:=2;
end;

procedure Tfrm_CON_BUSCAS.rg_CON_PRODUTOClick(Sender: TObject);
begin
case rg_CON_PRODUTO.ItemIndex of
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
      EDT_DESC.Width:=300;
      EDT_DESC.Left:=180;
      EDT_DESC.Top:=41;
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
      Zqry_con_eqproduto.Close;
      Zqry_con_eqproduto.sql.clear;
      zqry_con_eqproduto.sql.add('select * from eqproduto where codemp=:empcod and ativoprod=:ativo order by descprod');
      zqry_con_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      zqry_con_eqproduto.ParamByName('ativo').AsString:='S';
      ZQRY_con_eqproduto.open;
    end;
  end;
end;

end.
