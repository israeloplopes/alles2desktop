unit dlg_associaprodutoreverso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Buttons, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_DLG_ASSOCIAPRODUTOREVERSO = class(TForm)
    Image1: TImage;
    lbl_BUSCA1: TLabel;
    lbl_BUSCA2: TLabel;
    lbl_BUSCA3: TLabel;
    Image2: TImage;
    Image3: TImage;
    GroupBox1: TGroupBox;
    lbl_PRODUTO: TLabel;
    gb_BUSCA_PROD: TGroupBox;
    rg_PRODUTOS: TRadioGroup;
    gb_PRODUTOS: TGroupBox;
    lbl_PESQUISA: TLabel;
    lbl_ATE: TLabel;
    sp_BUSCA: TSpeedButton;
    msk_PESQUISA1: TMaskEdit;
    msk_PESQUISA2: TMaskEdit;
    DBGrid1: TDBGrid;
    zqry_EQPRODUTO: TZQuery;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODFILIAL: TSmallintField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOREFPROD: TWideStringField;
    zqry_EQPRODUTOCODEMPAX: TIntegerField;
    zqry_EQPRODUTOCODFILIALAX: TSmallintField;
    zqry_EQPRODUTOCODALMOX: TIntegerField;
    zqry_EQPRODUTOCODEMPMA: TIntegerField;
    zqry_EQPRODUTOCODFILIALMA: TSmallintField;
    zqry_EQPRODUTOCODMOEDA: TWideStringField;
    zqry_EQPRODUTOCODEMPUD: TIntegerField;
    zqry_EQPRODUTOCODFILIALUD: TSmallintField;
    zqry_EQPRODUTOCODUNID: TWideStringField;
    zqry_EQPRODUTOCODEMPFC: TIntegerField;
    zqry_EQPRODUTOCODFILIALFC: TSmallintField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOCODEMPMC: TIntegerField;
    zqry_EQPRODUTOCODFILIALMC: TSmallintField;
    zqry_EQPRODUTOCODMARCA: TWideStringField;
    zqry_EQPRODUTODESCAUXPROD: TWideStringField;
    zqry_EQPRODUTOTIPOPROD: TWideStringField;
    zqry_EQPRODUTOCVPROD: TWideStringField;
    zqry_EQPRODUTOCODEMPGP: TIntegerField;
    zqry_EQPRODUTOCODFILIALGP: TSmallintField;
    zqry_EQPRODUTOCODGRUP: TWideStringField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCLOTEPROD: TWideStringField;
    zqry_EQPRODUTOSERIEPROD: TWideStringField;
    zqry_EQPRODUTOCODFABPROD: TWideStringField;
    zqry_EQPRODUTOCOMISPROD: TFloatField;
    zqry_EQPRODUTOPESOLIQPROD: TFloatField;
    zqry_EQPRODUTOPESOBRUTPROD: TFloatField;
    zqry_EQPRODUTOQTDMINPROD: TFloatField;
    zqry_EQPRODUTOQTDMAXPROD: TFloatField;
    zqry_EQPRODUTODTMPMPROD: TDateField;
    zqry_EQPRODUTOCUSTOMPMPROD: TFloatField;
    zqry_EQPRODUTOCUSTOPEPSPROD: TFloatField;
    zqry_EQPRODUTOCUSTOINFOPROD: TFloatField;
    zqry_EQPRODUTOPRECOBASEPROD: TFloatField;
    zqry_EQPRODUTOPRECOCOMISPROD: TFloatField;
    zqry_EQPRODUTOSLDPROD: TFloatField;
    zqry_EQPRODUTOSLDRESPROD: TFloatField;
    zqry_EQPRODUTOSLDCONSIGPROD: TFloatField;
    zqry_EQPRODUTOSLDLIQPROD: TFloatField;
    zqry_EQPRODUTOATIVOPROD: TWideStringField;
    zqry_EQPRODUTODTULTCPPROD: TDateField;
    zqry_EQPRODUTOQTDULTCPPROD: TFloatField;
    zqry_EQPRODUTODESCCOMPPROD: TWideStringField;
    zqry_EQPRODUTOOBSPROD: TWideStringField;
    zqry_EQPRODUTOVERIFPROD: TWideStringField;
    zqry_EQPRODUTOLOCALPROD: TWideStringField;
    zqry_EQPRODUTORMAPROD: TWideStringField;
    zqry_EQPRODUTOCODEMPPE: TIntegerField;
    zqry_EQPRODUTOCODFILIALPE: TSmallintField;
    zqry_EQPRODUTOCODPE: TIntegerField;
    zqry_EQPRODUTOCODEMPCC: TIntegerField;
    zqry_EQPRODUTOCODFILIALCC: TSmallintField;
    zqry_EQPRODUTOANOCC: TSmallintField;
    zqry_EQPRODUTOCODCC: TWideStringField;
    zqry_EQPRODUTOUSARECEITAPROD: TWideStringField;
    zqry_EQPRODUTOUSATELAADICPDV: TWideStringField;
    zqry_EQPRODUTOVLRDENSIDADE: TFloatField;
    zqry_EQPRODUTOVLRCONCENT: TFloatField;
    zqry_EQPRODUTOCOMPRIMENTO: TFloatField;
    zqry_EQPRODUTOLARGURA: TFloatField;
    zqry_EQPRODUTOESPESSURA: TFloatField;
    zqry_EQPRODUTOGUIATRAFPROD: TWideStringField;
    zqry_EQPRODUTOQTDEMBALAGEM: TFloatField;
    zqry_EQPRODUTOCODEANPROD: TWideStringField;
    zqry_EQPRODUTOCUBAGEM: TFloatField;
    zqry_EQPRODUTOCODEMPSC: TIntegerField;
    zqry_EQPRODUTOCODFILIALSC: TSmallintField;
    zqry_EQPRODUTOCODSECAO: TWideStringField;
    zqry_EQPRODUTOCODEMPTC: TSmallintField;
    zqry_EQPRODUTOCODFILIALTC: TSmallintField;
    zqry_EQPRODUTOCODTPCHAMADO: TIntegerField;
    zqry_EQPRODUTOQTDHORASSERV: TFloatField;
    zqry_EQPRODUTONRODIASVALID: TSmallintField;
    zqry_EQPRODUTODESCCLI: TWideStringField;
    zqry_EQPRODUTOQTDPORPLANO: TSmallintField;
    zqry_EQPRODUTONROPLANOS: TSmallintField;
    zqry_EQPRODUTOCERTFSC: TWideStringField;
    zqry_EQPRODUTOFATORFSC: TFloatField;
    zqry_EQPRODUTOCODEMPOG: TIntegerField;
    zqry_EQPRODUTOCODFILIALOG: TSmallintField;
    zqry_EQPRODUTOCODPRODOG: TIntegerField;
    zqry_EQPRODUTOCODEMPMG: TIntegerField;
    zqry_EQPRODUTOCODFILIALMG: TSmallintField;
    zqry_EQPRODUTOCODMODG: TIntegerField;
    zqry_EQPRODUTOPRAZOREPO: TIntegerField;
    zqry_EQPRODUTOMEDIAVENDA: TFloatField;
    zqry_EQPRODUTOEMMANUT: TWideStringField;
    zqry_EQPRODUTODTINS: TDateField;
    zqry_EQPRODUTOHINS: TTimeField;
    zqry_EQPRODUTOIDUSUINS: TWideStringField;
    zqry_EQPRODUTODTALT: TDateField;
    zqry_EQPRODUTOHALT: TTimeField;
    zqry_EQPRODUTOIDUSUALT: TWideStringField;
    zqry_EQPRODUTOFINAME: TWideStringField;
    zqry_EQPRODUTOMDA: TWideStringField;
    zqry_EQPRODUTOPTSFIDELIDADE: TIntegerField;
    zqry_EQPRODUTOCURVA: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA: TWideStringField;
    zqry_EQPRODUTOPROD_ORIGEM: TWideStringField;
    zqry_EQPRODUTOPROD_IAT: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_EQPRODUTOPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_EQPRODUTOPROD_ICMS: TWideStringField;
    zqry_EQPRODUTOPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_EQPRODUTOPROD_BLOQUEIO: TWideStringField;
    zqry_EQPRODUTOPROD_USA_PROMO: TWideStringField;
    zqry_EQPRODUTOPROD_PBALANCA: TWideStringField;
    zqry_EQPRODUTOPROD_ATIVO: TWideStringField;
    zqry_EQPRODUTOCODNCM: TWideStringField;
    zqry_EQPRODUTOMARKUP: TFloatField;
    zqry_EQPRODUTOICRE: TWideStringField;
    zqry_EQPRODUTOCEST: TWideStringField;
    zqry_EQPRODUTOPROMOCAO: TWideStringField;
    zqry_EQPRODUTOCODMIX: TIntegerField;
    zqry_EQPRODUTOINTERVSEGUR: TIntegerField;
    zqry_EQPRODUTOCLASSETOXICO: TWideStringField;
    zqry_EQPRODUTOGRUPOQUIMICO: TWideStringField;
    zqry_EQPRODUTONOMETECNICO: TWideStringField;
    zqry_EQPRODUTOPRINCIPIOATIVO: TWideStringField;
    zqry_EQPRODUTOCODCLASSE: TWideStringField;
    zqry_EQPRODUTOCLASSE: TWideStringField;
    zqry_EQPRODUTOCONCENTRACAO: TWideStringField;
    zqry_EQPRODUTOFORMULACAO: TWideStringField;
    zqry_EQPRODUTOANTIDOTO: TWideStringField;
    zdts_EQPRODUTO: TDataSource;
    btn_BUSCAPRODUTO: TBitBtn;
    btn_FECHA: TBitBtn;
    lbl_LINHA: TLabel;
    lbl_TOTALLINHA: TLabel;
    DBText1: TDBText;
    btn_ASSOCIARPRODUTO: TBitBtn;
    Label1: TLabel;
    zqry_SGINICONSP: TZQuery;
    BitBtn1: TBitBtn;
    procedure VarreProdutos;
    procedure FechaConexao;
    procedure rg_PRODUTOSClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure btn_BUSCAPRODUTOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_FECHAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_ASSOCIARPRODUTOClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    achounabusca,cod_prod_escolhido:integer;
    entre, instrucao, script, parametro1, parametro2:string;
  end;

var
  frm_DLG_ASSOCIAPRODUTOREVERSO: Tfrm_DLG_ASSOCIAPRODUTOREVERSO;

implementation

{$R *.dfm}

uses uImportaUmaNFe, uFuncoes, dados, dlg_cancelacompra;

procedure TFrm_DLG_ASSOCIAPRODUTOREVERSO.FechaConexao;
begin
  zqry_eqproduto.Close;
  btn_ASSOCIARPRODUTO.Visible:=false;
  close;
end;

procedure TFrm_DLG_ASSOCIAPRODUTOREVERSO.VarreProdutos;
begin
lbl_busca1.Caption:='';
lbl_busca2.Caption:='';
lbl_busca3.Caption:='';
lbl_PRODUTO.Caption:='';
//
lbl_busca1.Visible:=false;
lbl_busca2.Visible:=false;
lbl_busca3.Visible:=false;
gb_BUSCA_PROD.Visible:=false;
//
lbl_PRODUTO.Caption:=frm_IMPORTANOTA.descricao;
lbl_LINHA.Caption:=INTTOSTR(frm_IMPORTANOTA.X1);
lbl_TOTALLINHA.Caption:=inttostr(frm_importanota.NL1);
if lbl_linha.Caption<>lbl_TOTALLINHA.Caption then
begin
  btn_FECHA.Caption:='&Próximo Produto : '+INTTOSTR(frm_IMPORTANOTA.X1)+'/'+inttostr(frm_importanota.NL1);
end
else
begin
  btn_FECHA.Caption:='&Fecha Tela';
end;
achounabusca:=0;
// CODIGO DO FABRICANTE
if achounabusca=0 then
begin
  lbl_busca1.visible:=true;
  lbl_busca1.Caption:='Buscando por Código Fabricante ';
  application.ProcessMessages;
  frm_importanota.zqry_prodimporta.Params.Clear;
  frm_importanota.zqry_prodimporta.Close;
  frm_importanota.zqry_prodimporta.sql.Clear;
  frm_importanota.zqry_prodimporta.sql.Add('select * from eqproduto where codemp=:empcod and codfabprod=:prodfab');
  frm_importanota.zqry_prodimporta.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  frm_importanota.zqry_prodimporta.ParamByName('prodfab').Asstring:=frm_importanota.fabricante;
  frm_importanota.zqry_prodimporta.Open;
  if frm_importanota.zqry_prodimporta.IsEmpty then
  begin
    achounabusca:=0;
    lbl_busca1.Caption:='Buscando por Código Fabricante - Não Encontrado';
    application.ProcessMessages;
  end
  else
  begin
    achounabusca:=1;
    lbl_BUSCA1.Caption:='Buscando por Código Fabricante - ENCONTRADO';
    frm_importanota.achouproduto:=frm_importanota.zqry_PRODIMPORTACODPROD.AsInteger;
    frm_IMPORTANOTA.multiplicador:=frm_IMPORTANOTA.zqry_prodimportamultiplicador.asfloat;
    frm_importanota.lancaitemreverso;
    FechaConexao;
  end;
end;
// CODIGO DE BARRAS
if achounabusca=0 then
begin
  lbl_busca2.visible:=true;
  lbl_busca2.Caption:='Buscando por Código de Barras ';
  Application.ProcessMessages;
  frm_importanota.zqry_prodimporta.Params.Clear;
  frm_importanota.zqry_prodimporta.Close;
  frm_importanota.zqry_prodimporta.sql.Clear;
  frm_importanota.zqry_prodimporta.sql.Add('select * from eqproduto where codemp=:empcod and codbarprod=:ean');
  frm_importanota.zqry_prodimporta.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  frm_importanota.zqry_prodimporta.ParamByName('ean').asstring:=frm_importanota.codbarras;
  frm_importanota.zqry_prodimporta.Open;
  if frm_importanota.zqry_prodimporta.IsEmpty then
  begin
    achounabusca:=0;
    lbl_busca2.Caption:='Buscando por Código de Barras - Não Encontrado';
    application.ProcessMessages;
  end
  else
  begin
    achounabusca:=1;
    lbl_BUSCA2.Caption:='Buscando por Código de Barras - ENCONTRADO';
    frm_importanota.achouproduto:=frm_importanota.zqry_PRODIMPORTACODPROD.AsInteger;
    frm_IMPORTANOTA.multiplicador:=frm_IMPORTANOTA.zqry_prodimportamultiplicador.asfloat;
    frm_importanota.lancaitemreverso;
    FechaConexao
  end;
end;
// POR REFERENCIA
if achounabusca=0 then
begin
  lbl_busca3.visible:=true;
  lbl_busca3.Caption:='Buscando por Referência ';
  application.ProcessMessages;
  frm_importanota.zqry_prodimporta.Params.Clear;
  frm_importanota.zqry_PRODIMPORTA.Close;
  frm_importanota.zqry_PRODIMPORTA.sql.Clear;
  frm_importanota.zqry_prodimporta.sql.Add('select * from eqproduto where codemp=:empcod and refprod=:prodref');
  frm_importanota.zqry_PRODIMPORTA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  frm_importanota.zqry_prodimporta.ParamByName('prodref').Asstring:=frm_importanota.referencia;
  frm_importanota.zqry_prodimporta.Open;
  if frm_importanota.zqry_prodimporta.IsEmpty then
  begin
    achounabusca:=0;
    lbl_busca3.Caption:='Buscando por Referência - Não Encontrado';
    application.ProcessMessages;
  end
  else
  begin
    achounabusca:=1;
    lbl_BUSCA3.Caption:='Buscando por Referência - ENCONTRADO';
    frm_importanota.achouproduto:=frm_importanota.zqry_PRODIMPORTACODPROD.AsInteger;
    frm_IMPORTANOTA.multiplicador:=frm_IMPORTANOTA.zqry_prodimportamultiplicador.asfloat;
    frm_importanota.lancaitemreverso;
    FechaConexao;
  end;
end;
if achounabusca=0 then
begin
  gb_BUSCA_PROD.Visible:=true;
  rg_PRODUTOS.ItemIndex:=0;
  mostratelaaviso('Caso desejar escolha o produto na lista e faça a associação','Essa associação é feita uma única vez');
end;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.btn_FECHAClick(Sender: TObject);
begin
FechaConexao;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.BitBtn1Click(Sender: TObject);
begin
  zqry_eqproduto.Close;
  btn_ASSOCIARPRODUTO.Visible:=false;
  close;
  frm_IMPORTANOTA.Close;
  frm_dlg_cancelacompra.show;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.btn_ASSOCIARPRODUTOClick(Sender: TObject);
begin
  dm_dados.EXECUTASGINICONSP;
  zqry_eqproduto.close;
  zqry_eqproduto.SQL.Clear;
  zqry_eqproduto.SQL.Add('update eqproduto set codfabprod=:codfab where codprod=:prodcod and codemp=:empcod');
  zqry_eqproduto.ParamByName('codfab').Asstring:=frm_importanota.fabricante;
  zqry_eqproduto.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_eqproduto.ParamByName('prodcod').AsInteger:=cod_prod_escolhido;
  zqry_eqproduto.execsql;
  mostratelaaviso('DADOS GRAVADOS COM SUCESSO','');
  rg_PRODUTOS.ItemIndex:=-1;
  VarreProdutos;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.btn_BUSCAPRODUTOClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informações');
zqry_EQPRODUTO.Close;
zqry_EQPRODUTO.SQL.Clear;
zqry_EQPRODUTO.sql.Add('SELECT * FROM EQPRODUTO WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
zqry_EQPRODUTO.ParamByName(parametro1).value:=instrucao+msk_pesquisa1.Text+instrucao;
if ENTRE='S' then zqry_EQPRODUTO.ParamByName(parametro2).value:=instrucao+msk_pesquisa2.Text+instrucao;
zqry_EQPRODUTO.ParamByName('empcod').asinteger:=dm_Dados.codemp;
zqry_EQPRODUTO.Open;
if zqry_EQPRODUTO.IsEmpty then
begin
  showmessage('Atenção!!!'#13'Não foram encontrados valores, com base na sua busca'#13'Tab: eqproduto');
end;
FECHATELAAGUARDE;
end;


procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.DBGrid1CellClick(Column: TColumn);
begin
cod_prod_escolhido:=zqry_EQPRODUTOCODPROD.AsInteger;
btn_ASSOCIARPRODUTO.Visible:=true;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.FormShow(Sender: TObject);
begin
VarreProdutos;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.rg_PRODUTOSClick(Sender: TObject);
begin
case rg_PRODUTOS.ItemIndex of
    0:begin
      LBL_PESQUISA.Caption:='ORDENANDO POR CÓDIGO';
      msk_PESQUISA1.Visible:=False;
      msk_PESQUISA2.VISIBLE:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=False;
      MostraTelaAguarde('Consultando Informações');
      zqry_EQPRODUTO.Close;
      zqry_EQPRODUTO.sql.Clear;
      zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codemp=:empcod order by codprod');
      zqry_EQPRODUTO.ParamByName('empcod').asinteger:=dm_Dados.codemp;
      zqry_EQPRODUTO.open;
      FechaTelaAguarde;
    end;
    1:begin
      LBL_PESQUISA.Caption:='CONSULTA POR CODIGO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CODPROD=:PRODCOD';
      parametro1:='PRODCOD';
      instrucao:='';
    end;
    2:begin
      LBL_PESQUISA.Caption:='CONSULTA POR DESCRICAO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=200;
      script:='DESCPROD LIKE :PRODDESC';
      parametro1:='PRODDESC';
      instrucao:='%';
    end;
    3:begin
      LBL_PESQUISA.Caption:='CONSULTA POR EAN';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=false;
      LBL_ATE.VISIBLE:=FALSE;
      LBL_ATE.Caption:='';
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CODBARPROD=:CODBAR';
      parametro1:='CODBAR';
      parametro2:='';
      instrucao:='';
    end;
end;
end;

procedure Tfrm_DLG_ASSOCIAPRODUTOREVERSO.sp_BUSCAClick(Sender: TObject);
begin
 if msk_PESQUISA1.Text='' then
  begin
    showmessage('Atenção Usuário'#13'Não foram localizados informações para realizar sua busca');
    msk_PESQUISA1.Clear;
    msk_PESQUISA1.SetFocus;
  end
  else
  begin
    btn_BUSCAPRODUTOClick(Sender); // ou b.OnClick(b);
    rg_PRODUTOS.ItemIndex:= -1;
  end;
end;

end.
