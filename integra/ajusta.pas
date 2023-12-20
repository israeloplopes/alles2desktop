unit ajusta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_AJUSTA = class(TForm)
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    zqry_AJUSTA: TZQuery;
    zqry_AJUSTACODEMP: TIntegerField;
    zqry_AJUSTACODFILIAL: TSmallintField;
    zqry_AJUSTACODPROD: TIntegerField;
    zqry_AJUSTADESCPROD: TWideStringField;
    zqry_AJUSTAREFPROD: TWideStringField;
    zqry_AJUSTACODEMPAX: TIntegerField;
    zqry_AJUSTACODFILIALAX: TSmallintField;
    zqry_AJUSTACODALMOX: TIntegerField;
    zqry_AJUSTACODEMPMA: TIntegerField;
    zqry_AJUSTACODFILIALMA: TSmallintField;
    zqry_AJUSTACODMOEDA: TWideStringField;
    zqry_AJUSTACODEMPUD: TIntegerField;
    zqry_AJUSTACODFILIALUD: TSmallintField;
    zqry_AJUSTACODUNID: TWideStringField;
    zqry_AJUSTACODEMPFC: TIntegerField;
    zqry_AJUSTACODFILIALFC: TSmallintField;
    zqry_AJUSTACODFISC: TWideStringField;
    zqry_AJUSTACODEMPMC: TIntegerField;
    zqry_AJUSTACODFILIALMC: TSmallintField;
    zqry_AJUSTACODMARCA: TWideStringField;
    zqry_AJUSTADESCAUXPROD: TWideStringField;
    zqry_AJUSTATIPOPROD: TWideStringField;
    zqry_AJUSTACVPROD: TWideStringField;
    zqry_AJUSTACODEMPGP: TIntegerField;
    zqry_AJUSTACODFILIALGP: TSmallintField;
    zqry_AJUSTACODGRUP: TWideStringField;
    zqry_AJUSTACODBARPROD: TWideStringField;
    zqry_AJUSTACLOTEPROD: TWideStringField;
    zqry_AJUSTASERIEPROD: TWideStringField;
    zqry_AJUSTACODFABPROD: TWideStringField;
    zqry_AJUSTACOMISPROD: TFloatField;
    zqry_AJUSTAPESOLIQPROD: TFloatField;
    zqry_AJUSTAPESOBRUTPROD: TFloatField;
    zqry_AJUSTAQTDMINPROD: TFloatField;
    zqry_AJUSTAQTDMAXPROD: TFloatField;
    zqry_AJUSTADTMPMPROD: TDateField;
    zqry_AJUSTACUSTOMPMPROD: TFloatField;
    zqry_AJUSTACUSTOPEPSPROD: TFloatField;
    zqry_AJUSTACUSTOINFOPROD: TFloatField;
    zqry_AJUSTAPRECOBASEPROD: TFloatField;
    zqry_AJUSTAPRECOCOMISPROD: TFloatField;
    zqry_AJUSTASLDPROD: TFloatField;
    zqry_AJUSTASLDRESPROD: TFloatField;
    zqry_AJUSTASLDCONSIGPROD: TFloatField;
    zqry_AJUSTASLDLIQPROD: TFloatField;
    zqry_AJUSTAATIVOPROD: TWideStringField;
    zqry_AJUSTADTULTCPPROD: TDateField;
    zqry_AJUSTAQTDULTCPPROD: TFloatField;
    zqry_AJUSTADESCCOMPPROD: TWideStringField;
    zqry_AJUSTAOBSPROD: TWideStringField;
    zqry_AJUSTAVERIFPROD: TWideStringField;
    zqry_AJUSTALOCALPROD: TWideStringField;
    zqry_AJUSTARMAPROD: TWideStringField;
    zqry_AJUSTACODEMPPE: TIntegerField;
    zqry_AJUSTACODFILIALPE: TSmallintField;
    zqry_AJUSTACODPE: TIntegerField;
    zqry_AJUSTACODEMPCC: TIntegerField;
    zqry_AJUSTACODFILIALCC: TSmallintField;
    zqry_AJUSTAANOCC: TSmallintField;
    zqry_AJUSTACODCC: TWideStringField;
    zqry_AJUSTAUSARECEITAPROD: TWideStringField;
    zqry_AJUSTAUSATELAADICPDV: TWideStringField;
    zqry_AJUSTAVLRDENSIDADE: TFloatField;
    zqry_AJUSTAVLRCONCENT: TFloatField;
    zqry_AJUSTACOMPRIMENTO: TFloatField;
    zqry_AJUSTALARGURA: TFloatField;
    zqry_AJUSTAESPESSURA: TFloatField;
    zqry_AJUSTAGUIATRAFPROD: TWideStringField;
    zqry_AJUSTAQTDEMBALAGEM: TFloatField;
    zqry_AJUSTACODEANPROD: TWideStringField;
    zqry_AJUSTACUBAGEM: TFloatField;
    zqry_AJUSTACODEMPSC: TIntegerField;
    zqry_AJUSTACODFILIALSC: TSmallintField;
    zqry_AJUSTACODSECAO: TWideStringField;
    zqry_AJUSTACODEMPTC: TSmallintField;
    zqry_AJUSTACODFILIALTC: TSmallintField;
    zqry_AJUSTACODTPCHAMADO: TIntegerField;
    zqry_AJUSTAQTDHORASSERV: TFloatField;
    zqry_AJUSTANRODIASVALID: TSmallintField;
    zqry_AJUSTADESCCLI: TWideStringField;
    zqry_AJUSTAQTDPORPLANO: TSmallintField;
    zqry_AJUSTANROPLANOS: TSmallintField;
    zqry_AJUSTACERTFSC: TWideStringField;
    zqry_AJUSTAFATORFSC: TFloatField;
    zqry_AJUSTACODEMPOG: TIntegerField;
    zqry_AJUSTACODFILIALOG: TSmallintField;
    zqry_AJUSTACODPRODOG: TIntegerField;
    zqry_AJUSTACODEMPMG: TIntegerField;
    zqry_AJUSTACODFILIALMG: TSmallintField;
    zqry_AJUSTACODMODG: TIntegerField;
    zqry_AJUSTAPRAZOREPO: TIntegerField;
    zqry_AJUSTAMEDIAVENDA: TFloatField;
    zqry_AJUSTAEMMANUT: TWideStringField;
    zqry_AJUSTADTINS: TDateField;
    zqry_AJUSTAHINS: TTimeField;
    zqry_AJUSTAIDUSUINS: TWideStringField;
    zqry_AJUSTADTALT: TDateField;
    zqry_AJUSTAHALT: TTimeField;
    zqry_AJUSTAIDUSUALT: TWideStringField;
    zqry_AJUSTAFINAME: TWideStringField;
    zqry_AJUSTAMDA: TWideStringField;
    zqry_AJUSTAPTSFIDELIDADE: TIntegerField;
    zqry_AJUSTACURVA: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA: TWideStringField;
    zqry_AJUSTAPROD_ORIGEM: TWideStringField;
    zqry_AJUSTAPROD_IAT: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_AJUSTAPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_AJUSTAPROD_ICMS: TWideStringField;
    zqry_AJUSTAPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_AJUSTAPROD_BLOQUEIO: TWideStringField;
    zqry_AJUSTAPROD_USA_PROMO: TWideStringField;
    zqry_AJUSTAPROD_PBALANCA: TWideStringField;
    zqry_AJUSTAPROD_ATIVO: TWideStringField;
    zqry_AJUSTACODNCM: TWideStringField;
    zqry_AJUSTAMARKUP: TFloatField;
    zqry_AJUSTAICRE: TWideStringField;
    zqry_AJUSTACEST: TWideStringField;
    zqry_AJUSTACODMIX: TIntegerField;
    zqry_AJUSTAPROMOCAO: TWideStringField;
    zqry_AJUSTAINTERVSEGUR: TIntegerField;
    zqry_AJUSTACLASSETOXICO: TWideStringField;
    zqry_AJUSTAGRUPOQUIMICO: TWideStringField;
    zqry_AJUSTANOMETECNICO: TWideStringField;
    zqry_AJUSTAPRINCIPIOATIVO: TWideStringField;
    zqry_AJUSTACODCLASSE: TWideStringField;
    zqry_AJUSTACLASSE: TWideStringField;
    zqry_AJUSTACONCENTRACAO: TWideStringField;
    zqry_AJUSTAFORMULACAO: TWideStringField;
    zqry_AJUSTAANTIDOTO: TWideStringField;
    zqry_AJUSTAMULTIPLICADOR: TSingleField;
    zqry_AJUSTACODBALANCA: TIntegerField;
    zqry_AJUSTACODRFIDPROD: TIntegerField;
    zdts_AJUSTA: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_AJUSTA: Tfrm_AJUSTA;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_AJUSTA.BitBtn1Click(Sender: TObject);
var
  tamanho, codvai:integer;
  novocod:string;
begin
zqry_AJUSTA.Params.Clear;
zqry_AJUSTA.close;
zqry_AJUSTA.sql.Clear;
zqry_AJUSTA.SQL.Add('select * from eqproduto where codemp=:empcod');
zqry_AJUSTA.ParamByName('empcod').Asinteger:=99;
zqry_ajusta.Open;
{while not zqry_ajusta.eof do
begin
  tamanho:=0;
  codvai:=0;
  tamanho:=Length(zqry_AJUSTACODBARPROD.asstring);
  if tamanho=3 then
  begin
    novocod:=zqry_ajustacodbarprod.asstring+'00';
    codvai:=strtoint(novocod);
    showmessage('Produto '+zqry_ajustadescprod.asstring+' Codigo Montado '+novocod+' Codigo Balanca '+inttostr(codvai));
    dm_dados.EXECUTASGINICONSP;
    dm_Dados.zqry_eqproduto.Params.Clear;
    dm_dados.zqry_eqproduto.Close;
    dm_dados.Zqry_eqproduto.SQL.Clear;
    dm_dados.zqry_eqproduto.SQL.Add('update eqproduto set codbalanca=:balanca where codprod=:prodcod and codemp=:empcod');
    dm_dados.zqry_eqproduto.ParamByName('balanca').Asinteger:=codvai;
    dm_dados.zqry_eqproduto.ParamByName('prodcod').AsFloat:=zqry_AJUSTACODPROD.asinteger;
    dm_dados.zqry_eqproduto.ParamByName('empcod').Asinteger:=99;
    dm_dados.zqry_eqproduto.ExecSQL;
  end;
  zqry_ajusta.Next;
end;          }

while not zqry_ajusta.eof do
begin
  tamanho:=0;
  codvai:=0;
  tamanho:=Length(zqry_AJUSTACODBARPROD.asstring);
  if tamanho<=7 then
  begin
    dm_dados.EXECUTASGINICONSP;
    dm_Dados.zqry_eqproduto.Params.Clear;
    dm_dados.zqry_eqproduto.Close;
    dm_dados.Zqry_eqproduto.SQL.Clear;
    dm_dados.zqry_eqproduto.SQL.Add('update eqproduto set codbarprod=:balanca where codprod=:prodcod and codemp=:empcod');
    dm_dados.zqry_eqproduto.ParamByName('balanca').Asstring:='7891111111111';
    dm_dados.zqry_eqproduto.ParamByName('prodcod').AsFloat:=zqry_AJUSTACODPROD.asinteger;
    dm_dados.zqry_eqproduto.ParamByName('empcod').Asinteger:=99;
    dm_dados.zqry_eqproduto.ExecSQL;
  end;
  zqry_ajusta.Next;
end;
  showmessage('Produtos Ajustados');
end;


end.
