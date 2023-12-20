unit dlg_acertalote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_DLG_ACERTALOTE = class(TForm)
    pn_TOP: TPanel;
    edt_CODPROD: TEdit;
    Label1: TLabel;
    btn_BUSCAPROD: TBitBtn;
    lbl_PRODUTO: TLabel;
    pn_CENTRAL: TPanel;
    pn_BOTTON: TPanel;
    pn_LEFT: TPanel;
    Label2: TLabel;
    zqry_SLDEQPROD: TZQuery;
    zqry_SLDEQPRODCODEMP: TIntegerField;
    zqry_SLDEQPRODCODFILIAL: TSmallintField;
    zqry_SLDEQPRODCODPROD: TIntegerField;
    zqry_SLDEQPRODDESCPROD: TWideStringField;
    zqry_SLDEQPRODREFPROD: TWideStringField;
    sld: TIntegerField;
    zqry_SLDEQPRODCODFILIALAX: TSmallintField;
    zqry_SLDEQPRODCODALMOX: TIntegerField;
    zqry_SLDEQPRODCODEMPMA: TIntegerField;
    zqry_SLDEQPRODCODFILIALMA: TSmallintField;
    zqry_SLDEQPRODCODMOEDA: TWideStringField;
    zqry_SLDEQPRODCODEMPUD: TIntegerField;
    zqry_SLDEQPRODCODFILIALUD: TSmallintField;
    zqry_SLDEQPRODCODUNID: TWideStringField;
    zqry_SLDEQPRODCODEMPFC: TIntegerField;
    zqry_SLDEQPRODCODFILIALFC: TSmallintField;
    zqry_SLDEQPRODCODFISC: TWideStringField;
    zqry_SLDEQPRODCODEMPMC: TIntegerField;
    zqry_SLDEQPRODCODFILIALMC: TSmallintField;
    zqry_SLDEQPRODCODMARCA: TWideStringField;
    zqry_SLDEQPRODDESCAUXPROD: TWideStringField;
    zqry_SLDEQPRODTIPOPROD: TWideStringField;
    zqry_SLDEQPRODCVPROD: TWideStringField;
    zqry_SLDEQPRODCODEMPGP: TIntegerField;
    zqry_SLDEQPRODCODFILIALGP: TSmallintField;
    zqry_SLDEQPRODCODGRUP: TWideStringField;
    zqry_SLDEQPRODCODBARPROD: TWideStringField;
    zqry_SLDEQPRODCLOTEPROD: TWideStringField;
    zqry_SLDEQPRODSERIEPROD: TWideStringField;
    zqry_SLDEQPRODCODFABPROD: TWideStringField;
    zqry_SLDEQPRODCOMISPROD: TFloatField;
    zqry_SLDEQPRODPESOLIQPROD: TFloatField;
    zqry_SLDEQPRODPESOBRUTPROD: TFloatField;
    zqry_SLDEQPRODQTDMINPROD: TFloatField;
    zqry_SLDEQPRODQTDMAXPROD: TFloatField;
    zqry_SLDEQPRODDTMPMPROD: TDateField;
    zqry_SLDEQPRODCUSTOMPMPROD: TFloatField;
    zqry_SLDEQPRODCUSTOPEPSPROD: TFloatField;
    zqry_SLDEQPRODCUSTOINFOPROD: TFloatField;
    zqry_SLDEQPRODPRECOBASEPROD: TFloatField;
    zqry_SLDEQPRODPRECOCOMISPROD: TFloatField;
    zqry_SLDEQPRODSLDPROD: TFloatField;
    zqry_SLDEQPRODSLDRESPROD: TFloatField;
    zqry_SLDEQPRODSLDCONSIGPROD: TFloatField;
    zqry_SLDEQPRODSLDLIQPROD: TFloatField;
    zqry_SLDEQPRODATIVOPROD: TWideStringField;
    zqry_SLDEQPRODDTULTCPPROD: TDateField;
    zqry_SLDEQPRODQTDULTCPPROD: TFloatField;
    zqry_SLDEQPRODDESCCOMPPROD: TWideStringField;
    zqry_SLDEQPRODOBSPROD: TWideStringField;
    zqry_SLDEQPRODVERIFPROD: TWideStringField;
    zqry_SLDEQPRODLOCALPROD: TWideStringField;
    zqry_SLDEQPRODRMAPROD: TWideStringField;
    zqry_SLDEQPRODCODEMPPE: TIntegerField;
    zqry_SLDEQPRODCODFILIALPE: TSmallintField;
    zqry_SLDEQPRODCODPE: TIntegerField;
    zqry_SLDEQPRODCODEMPCC: TIntegerField;
    zqry_SLDEQPRODCODFILIALCC: TSmallintField;
    zqry_SLDEQPRODANOCC: TSmallintField;
    zqry_SLDEQPRODCODCC: TWideStringField;
    zqry_SLDEQPRODUSARECEITAPROD: TWideStringField;
    zqry_SLDEQPRODUSATELAADICPDV: TWideStringField;
    zqry_SLDEQPRODVLRDENSIDADE: TFloatField;
    zqry_SLDEQPRODVLRCONCENT: TFloatField;
    zqry_SLDEQPRODCOMPRIMENTO: TFloatField;
    zqry_SLDEQPRODLARGURA: TFloatField;
    zqry_SLDEQPRODESPESSURA: TFloatField;
    zqry_SLDEQPRODGUIATRAFPROD: TWideStringField;
    zqry_SLDEQPRODQTDEMBALAGEM: TFloatField;
    zqry_SLDEQPRODCODEANPROD: TWideStringField;
    zqry_SLDEQPRODCUBAGEM: TFloatField;
    zqry_SLDEQPRODCODEMPSC: TIntegerField;
    zqry_SLDEQPRODCODFILIALSC: TSmallintField;
    zqry_SLDEQPRODCODSECAO: TWideStringField;
    zqry_SLDEQPRODCODEMPTC: TSmallintField;
    zqry_SLDEQPRODCODFILIALTC: TSmallintField;
    zqry_SLDEQPRODCODTPCHAMADO: TIntegerField;
    zqry_SLDEQPRODQTDHORASSERV: TFloatField;
    zqry_SLDEQPRODNRODIASVALID: TSmallintField;
    zqry_SLDEQPRODDESCCLI: TWideStringField;
    zqry_SLDEQPRODQTDPORPLANO: TSmallintField;
    zqry_SLDEQPRODNROPLANOS: TSmallintField;
    zqry_SLDEQPRODCERTFSC: TWideStringField;
    zqry_SLDEQPRODFATORFSC: TFloatField;
    zqry_SLDEQPRODCODEMPOG: TIntegerField;
    zqry_SLDEQPRODCODFILIALOG: TSmallintField;
    zqry_SLDEQPRODCODPRODOG: TIntegerField;
    zqry_SLDEQPRODCODEMPMG: TIntegerField;
    zqry_SLDEQPRODCODFILIALMG: TSmallintField;
    zqry_SLDEQPRODCODMODG: TIntegerField;
    zqry_SLDEQPRODPRAZOREPO: TIntegerField;
    zqry_SLDEQPRODMEDIAVENDA: TFloatField;
    zqry_SLDEQPRODEMMANUT: TWideStringField;
    zqry_SLDEQPRODDTINS: TDateField;
    zqry_SLDEQPRODHINS: TTimeField;
    zqry_SLDEQPRODIDUSUINS: TWideStringField;
    zqry_SLDEQPRODDTALT: TDateField;
    zqry_SLDEQPRODHALT: TTimeField;
    zqry_SLDEQPRODIDUSUALT: TWideStringField;
    zqry_SLDEQPRODFINAME: TWideStringField;
    zqry_SLDEQPRODMDA: TWideStringField;
    zqry_SLDEQPRODPTSFIDELIDADE: TIntegerField;
    zqry_SLDEQPRODCURVA: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA: TWideStringField;
    zqry_SLDEQPRODPROD_ORIGEM: TWideStringField;
    zqry_SLDEQPRODPROD_IAT: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_SLDEQPRODPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_SLDEQPRODPROD_ICMS: TWideStringField;
    zqry_SLDEQPRODPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_SLDEQPRODPROD_BLOQUEIO: TWideStringField;
    zqry_SLDEQPRODPROD_USA_PROMO: TWideStringField;
    zqry_SLDEQPRODPROD_PBALANCA: TWideStringField;
    zqry_SLDEQPRODPROD_ATIVO: TWideStringField;
    zqry_SLDEQPRODCODNCM: TWideStringField;
    zqry_SLDEQPRODMARKUP: TFloatField;
    zqry_SLDEQPRODICRE: TWideStringField;
    zqry_SLDEQPRODCEST: TWideStringField;
    zqry_SLDEQPRODPROMOCAO: TWideStringField;
    zqry_SLDEQPRODCODMIX: TIntegerField;
    zqry_SLDEQPRODINTERVSEGUR: TIntegerField;
    zqry_SLDEQPRODCLASSETOXICO: TWideStringField;
    zqry_SLDEQPRODGRUPOQUIMICO: TWideStringField;
    zqry_SLDEQPRODNOMETECNICO: TWideStringField;
    zqry_SLDEQPRODPRINCIPIOATIVO: TWideStringField;
    zqry_SLDEQPRODCODCLASSE: TWideStringField;
    zqry_SLDEQPRODCLASSE: TWideStringField;
    zqry_SLDEQPRODCONCENTRACAO: TWideStringField;
    zqry_SLDEQPRODFORMULACAO: TWideStringField;
    zqry_SLDEQPRODANTIDOTO: TWideStringField;
    zdts_SLDEQPROD: TDataSource;
    DBEdit1: TDBEdit;
    btn_GRAVARSALDO: TBitBtn;
    zqry_SLDEQSLD: TZQuery;
    zdts_SLDEQSLD: TDataSource;
    zqry_SLDEQSLDCODEMP: TIntegerField;
    zqry_SLDEQSLDCODFILIAL: TSmallintField;
    zqry_SLDEQSLDCODPROD: TIntegerField;
    zqry_SLDEQSLDCODEMPAX: TIntegerField;
    zqry_SLDEQSLDCODFILIALAX: TSmallintField;
    zqry_SLDEQSLDCODALMOX: TIntegerField;
    zqry_SLDEQSLDSLDPROD: TFloatField;
    zqry_SLDEQSLDSLDRESPROD: TFloatField;
    zqry_SLDEQSLDSLDCONSIGPROD: TFloatField;
    zqry_SLDEQSLDSLDLIQPROD: TFloatField;
    zqry_SLDEQSLDDTINS: TDateField;
    zqry_SLDEQSLDHINS: TTimeField;
    zqry_SLDEQSLDIDUSUINS: TWideStringField;
    zqry_SLDEQSLDDTALT: TDateField;
    zqry_SLDEQSLDHALT: TTimeField;
    zqry_SLDEQSLDIDUSUALT: TWideStringField;
    pn_RIGHT: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    zqry_SLDEQLOTE: TZQuery;
    zdts_SLDEQLOTE: TDataSource;
    zqry_SLDEQLOTECODEMP: TIntegerField;
    zqry_SLDEQLOTECODFILIAL: TSmallintField;
    zqry_SLDEQLOTECODPROD: TIntegerField;
    zqry_SLDEQLOTECODLOTE: TWideStringField;
    zqry_SLDEQLOTEVENCTOLOTE: TDateField;
    zqry_SLDEQLOTESLDLOTE: TFloatField;
    zqry_SLDEQLOTESLDRESLOTE: TFloatField;
    zqry_SLDEQLOTESLDCONSIGLOTE: TFloatField;
    zqry_SLDEQLOTESLDLIQLOTE: TFloatField;
    zqry_SLDEQLOTEQTDPRODLOTE: TFloatField;
    zqry_SLDEQLOTEDINILOTE: TDateField;
    zqry_SLDEQLOTEDIASAVISOLOTE: TSmallintField;
    zqry_SLDEQLOTEDTINS: TDateField;
    zqry_SLDEQLOTEHINS: TTimeField;
    zqry_SLDEQLOTEIDUSUINS: TWideStringField;
    zqry_SLDEQLOTEDTALT: TDateField;
    zqry_SLDEQLOTEHALT: TTimeField;
    zqry_SLDEQLOTEIDUSUALT: TWideStringField;
    Label5: TLabel;
    Label6: TLabel;
    zqry_SOMAALMOX: TZQuery;
    zdts_SOMAALMOX: TDataSource;
    zqry_SOMAALMOXSLDTOTAL: TExtendedField;
    DBEdit2: TDBEdit;
    zqry_SOMALOTE: TZQuery;
    zqry_SOMALOTESLDTOTAL: TExtendedField;
    zdts_SOMALOTE: TDataSource;
    DBEdit3: TDBEdit;
    procedure btn_BUSCAPRODClick(Sender: TObject);
    procedure btn_GRAVARSALDOClick(Sender: TObject);
    procedure edt_CODPRODKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ACERTALOTE: Tfrm_DLG_ACERTALOTE;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_DLG_ACERTALOTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_dados.zqry_EQPRODUTO.Close;
zqry_SLDEQPROD.Close;
zqry_SLDEQSLD.Close;
zqry_SLDEQLOTE.Close;
zqry_SOMAALMOX.Close;
zqry_SOMALOTE.Close;
end;

procedure Tfrm_DLG_ACERTALOTE.btn_GRAVARSALDOClick(Sender: TObject);
begin
  dm_dados.ExecutaSGINICONSP;
  zqry_SLDEQPRODSLDPROD.asfloat:=strtofloat(dbedit1.text);
  if zqry_sldeqprod.State in [dsedit, dsinsert] then zqry_SLDEQPROD.Post;
  zqry_SLDEQPROD.ApplyUpdates;
end;

procedure Tfrm_DLG_ACERTALOTE.DBGrid2CellClick(Column: TColumn);
begin
dm_Dados.EXECUTASGINICONSP;
end;

procedure Tfrm_DLG_ACERTALOTE.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
dm_dados.ExecutaSGINICONSP;
end;

procedure Tfrm_DLG_ACERTALOTE.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
dm_Dados.ExecutaSGINICONSP;
end;

procedure Tfrm_DLG_ACERTALOTE.edt_CODPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then btn_BUSCAPRODClick(Sender);
end;

procedure Tfrm_DLG_ACERTALOTE.btn_BUSCAPRODClick(Sender: TObject);
begin
if edt_CODPROD.Text<>'' then
begin
  DM_DADOS.ZQRY_EQPRODUTO.PARAMS.CLEAR;
  DM_DADOS.ZQRY_EQPRODUTO.Close;
  dm_dados.zqry_eqproduto.sql.clear;
  dm_dados.zqry_eqproduto.sql.add('select * from eqproduto where codprod=:prodcod and codemp=:empcod');
  dm_Dados.zqry_eqproduto.parambyname('prodcod').asinteger:=strtoint(edt_CODPROD.Text);
  dm_dados.zqry_eqproduto.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_eqproduto.open;
  if dm_Dados.zqry_eqproduto.IsEmpty Then
  begin
    SHOWMESSAGE('Dados n�o localizados');
  end
  else
  begin
    lbl_PRODUTO.Caption:=dm_Dados.zqry_eqprodutodescprod.asstring;
    zqry_sldeqprod.params.clear;
    zqry_SLDEQPROD.Close;
    zqry_sldeqprod.SQL.Clear;
    zqry_sldeqprod.SQL.Add('select * from eqproduto where codprod=:sldeqprod and codemp=:empcod');
    zqry_SLDEQPROD.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
    zqry_sldeqprod.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_sldeqprod.Open;
    //
    zqry_sldeqsld.params.clear;
    zqry_SLDEQsld.Close;
    zqry_sldeqsld.SQL.Clear;
    zqry_sldeqsld.SQL.Add('select * from eqsaldoprod where codprod=:sldeqprod and codemp=:empcod order by codalmox');
    zqry_SLDEQsld.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
    zqry_sldeqsld.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_sldeqsld.Open;
    //
    zqry_sldeqlote.params.clear;
    zqry_SLDEQlote.Close;
    zqry_sldeqlote.SQL.Clear;
    zqry_sldeqlote.SQL.Add('select * from eqlote where codprod=:sldeqprod and codemp=:empcod order by venctolote desc');
    zqry_SLDEQlote.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
    zqry_sldeqlote.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_sldeqlote.Open;
    //
    zqry_SOMAALMOX.Params.Clear;
    zqry_SOMAALMOX.Close;
    zqry_SOMAALMOX.SQL.Clear;
    zqry_SOMAALMOX.SQL.Add('select sum(sldprod) as sldtotal from eqsaldoprod where codprod=:sldeqprod and codemp=:empcod');
    zqry_somaalmox.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
    zqry_somaalmox.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_somaalmox.Open;
    //
    zqry_SOMALOTE.Params.Clear;
    zqry_SOMALOTE.Close;
    zqry_SOMALOTE.SQL.Clear;
    zqry_SOMALOTE.SQL.Add('select sum(sldlote) as sldtotal from eqlote where codprod=:sldeqprod and codemp=:empcod');
    zqry_somaLOTE.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
    zqry_somaLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_somaLOTE.Open;


  end;
end
else
begin
  showmessage('N�o existem valores para a busca');
  edt_CODPROD.SetFocus;
  edt_CODPROD.Clear;
end;

end;

end.