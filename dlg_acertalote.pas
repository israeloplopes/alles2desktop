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
    zdts_SLDEQPROD: TDataSource;
    DBEdit1: TDBEdit;
    btn_GRAVARSALDO: TBitBtn;
    zqry_SLDEQSLD: TZQuery;
    zdts_SLDEQSLD: TDataSource;
    pn_RIGHT: TPanel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    zqry_SLDEQLOTE: TZQuery;
    zdts_SLDEQLOTE: TDataSource;
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
    Label7: TLabel;
    zqry_SLDEQSLDCODEMP: TIntegerField;
    zqry_SLDEQSLDCODFILIAL: TSmallintField;
    zqry_SLDEQSLDCODPROD: TIntegerField;
    zqry_SLDEQSLDCODEMPAX: TIntegerField;
    zqry_SLDEQSLDCODFILIALAX: TSmallintField;
    zqry_SLDEQSLDCODALMOX: TIntegerField;
    zqry_SLDEQSLDSLDPROD: TExtendedField;
    zqry_SLDEQSLDSLDRESPROD: TExtendedField;
    zqry_SLDEQSLDSLDCONSIGPROD: TExtendedField;
    zqry_SLDEQSLDSLDLIQPROD: TExtendedField;
    zqry_SLDEQSLDDTINS: TDateField;
    zqry_SLDEQSLDHINS: TTimeField;
    zqry_SLDEQSLDIDUSUINS: TWideStringField;
    zqry_SLDEQSLDDTALT: TDateField;
    zqry_SLDEQSLDHALT: TTimeField;
    zqry_SLDEQSLDIDUSUALT: TWideStringField;
    zqry_SLDEQLOTECODEMP: TIntegerField;
    zqry_SLDEQLOTECODFILIAL: TSmallintField;
    zqry_SLDEQLOTECODPROD: TIntegerField;
    zqry_SLDEQLOTECODLOTE: TWideStringField;
    zqry_SLDEQLOTEVENCTOLOTE: TDateField;
    zqry_SLDEQLOTESLDLOTE: TExtendedField;
    zqry_SLDEQLOTESLDRESLOTE: TExtendedField;
    zqry_SLDEQLOTESLDCONSIGLOTE: TExtendedField;
    zqry_SLDEQLOTESLDLIQLOTE: TExtendedField;
    zqry_SLDEQLOTEQTDPRODLOTE: TExtendedField;
    zqry_SLDEQLOTEDINILOTE: TDateField;
    zqry_SLDEQLOTEDIASAVISOLOTE: TSmallintField;
    zqry_SLDEQLOTEDTINS: TDateField;
    zqry_SLDEQLOTEHINS: TTimeField;
    zqry_SLDEQLOTEIDUSUINS: TWideStringField;
    zqry_SLDEQLOTEDTALT: TDateField;
    zqry_SLDEQLOTEHALT: TTimeField;
    zqry_SLDEQLOTEIDUSUALT: TWideStringField;
    zqry_SLDEQPRODCODPROD: TIntegerField;
    zqry_SLDEQPRODCODEMP: TIntegerField;
    zqry_SLDEQPRODSLDPROD: TExtendedField;
    zqry_SLDEQPRODDESCPROD: TWideStringField;
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

uses u_dados, u_funcoes;

procedure Tfrm_DLG_ACERTALOTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_dados.zqry_EQPRODUTO.Close;
zqry_SLDEQPROD.Close;
zqry_SLDEQSLD.Close;
zqry_SLDEQLOTE.Close;
zqry_SOMAALMOX.Close;
zqry_SOMALOTE.Close;
action:=cafree;
frm_dlg_acertalote:=nil;
end;

procedure Tfrm_DLG_ACERTALOTE.btn_GRAVARSALDOClick(Sender: TObject);
begin
  ExecutaSGINICONSP;
  zqry_SLDEQPRODSLDPROD.asfloat:=strtofloat(dbedit1.text);
  if zqry_sldeqprod.State in [dsedit, dsinsert] then zqry_SLDEQPROD.Post;
  zqry_SLDEQPROD.ApplyUpdates;
end;

procedure Tfrm_DLG_ACERTALOTE.DBGrid2CellClick(Column: TColumn);
begin
EXECUTASGINICONSP;
end;

procedure Tfrm_DLG_ACERTALOTE.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ExecutaSGINICONSP;
end;

procedure Tfrm_DLG_ACERTALOTE.DBNavigator2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
ExecutaSGINICONSP;
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
    SHOWMESSAGE('Dados não localizados');
  end
  else
  begin
    lbl_PRODUTO.Caption:=dm_Dados.zqry_eqprodutodescprod.asstring;
    zqry_sldeqprod.params.clear;
    zqry_SLDEQPROD.Close;
    zqry_sldeqprod.SQL.Clear;
    zqry_sldeqprod.SQL.Add('select codprod, codemp, sldprod, descprod from eqproduto where codprod=:sldeqprod and codemp=:empcod');
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
  showmessage('Não existem valores para a busca');
  edt_CODPROD.SetFocus;
  edt_CODPROD.Clear;
end;

end;

end.
