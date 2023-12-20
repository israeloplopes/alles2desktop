﻿unit uImportaUmaNFe;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,  StdCtrls, ExtCtrls, Grids, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StrUtils, Vcl.Buttons,
  ACBrSocket, ACBrCEP, ACBrBase, ACBrDFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass,
      ACBrNFeDANFeESCPOS, XMLIntf, XMLDoc, math, ACBrMail,
      ACBrNFeDANFeRLClass, ACBrNFe, pcnConversaoNFe;

type
  Tfrm_IMPORTANOTA = class(TForm)
    paneAbrir: TPanel;
    OpenDialog1: TOpenDialog;
    panePainel1: TPanel;
    memoDadosDaNota: TMemo;
    labeDadosDaNota: TLabel;
    StringGrid3: TStringGrid;
    panePainel2: TPanel;
    labeDadosDoEmitente: TLabel;
    labeDadosDoDestinario: TLabel;
    memoEmitente: TMemo;
    memoDestinatario: TMemo;
    edt_CNPJ_EMITE: TEdit;
    ZQuery1: TZQuery;
    edt_NUM_NF: TEdit;
    edt_DT_EMISSAO: TEdit;
    zqry_SEQCP: TZQuery;
    zqry_SEQCPCODEMP: TIntegerField;
    zqry_SEQCPCODFILIAL: TSmallintField;
    zqry_SEQCPSGTAB: TWideStringField;
    zqry_SEQCPNROSEQ: TIntegerField;
    zqry_SEQCPDTINS: TDateField;
    zqry_SEQCPHINS: TTimeField;
    zqry_SEQCPIDUSUINS: TWideStringField;
    zqry_SEQCPDTALT: TDateField;
    zqry_SEQCPHALT: TTimeField;
    zqry_SEQCPIDUSUALT: TWideStringField;
    zdts_SEQCP: TDataSource;
    edt_CHAVE_NF: TEdit;
    zqry_SGINICONSP: TZQuery;
    zdts_SGINICONSP: TDataSource;
    zqry_PRODIMPORTA: TZQuery;
    zdts_PRODIMPORTA: TDataSource;
    edt_CODNAT: TEdit;
    edt_CUSTO: TEdit;
    edt_QUANT: TEdit;
    edt_BCICMS: TEdit;
    edt_ALIQICMS: TEdit;
    edt_VLRICMS: TEdit;
    edt_BCIPI: TEdit;
    edt_ALIQIPI: TEdit;
    edt_VLRIPI: TEdit;
    edt_VLRTOTAL: TEdit;
    edt_NOME_EMITE: TEdit;
    edt_NOME_FANT: TEdit;
    edt_CNPJ_CEP: TEdit;
    edt_CNPJ_LOGRADOURO: TEdit;
    edt_CNPJ_BAIRRO: TEdit;
    edt_CNPJ_UF: TEdit;
    edt_CNPJ_CODCID: TEdit;
    edt_CNPJ_CODMUNIC: TEdit;
    btn_ABRIR: TBitBtn;
    btn_VALIDA: TBitBtn;
    btn_SAIR: TBitBtn;
    ZQuery2: TZQuery;
    btn_CANCELACOMPRA: TBitBtn;
    btn_REVERSO: TBitBtn;
    edt_DEST_RAZ: TEdit;
    edt_DEST_CNPJ: TEdit;
    edt_DEST_CEP: TEdit;
    edt_DEST_LOGRADOURO: TEdit;
    edt_DEST_BAIRRO: TEdit;
    edt_DEST_UF: TEdit;
    edt_DEST_CODCID: TEdit;
    edt_DEST_CODMUNIC: TEdit;
    zqry_SEQVD: TZQuery;
    zdts_SEQVD: TDataSource;
    zqry_SEQVDCODEMP: TIntegerField;
    zqry_SEQVDCODFILIAL: TSmallintField;
    zqry_SEQVDSGTAB: TWideStringField;
    zqry_SEQVDNROSEQ: TIntegerField;
    zqry_SEQVDDTINS: TDateField;
    zqry_SEQVDHINS: TTimeField;
    zqry_SEQVDIDUSUINS: TWideStringField;
    zqry_SEQVDDTALT: TDateField;
    zqry_SEQVDHALT: TTimeField;
    zqry_SEQVDIDUSUALT: TWideStringField;
    ACBrNFe1: TACBrNFe;
    ACBrCEP1: TACBrCEP;
    ZQuery3: TZQuery;
    DataSource1: TDataSource;
    zqry_PRODIMPORTACODEMP: TIntegerField;
    zqry_PRODIMPORTACODFILIAL: TSmallintField;
    zqry_PRODIMPORTACODPROD: TIntegerField;
    zqry_PRODIMPORTADESCPROD: TWideStringField;
    zqry_PRODIMPORTAREFPROD: TWideStringField;
    zqry_PRODIMPORTACODEMPAX: TIntegerField;
    zqry_PRODIMPORTACODFILIALAX: TSmallintField;
    zqry_PRODIMPORTACODALMOX: TIntegerField;
    zqry_PRODIMPORTACODEMPMA: TIntegerField;
    zqry_PRODIMPORTACODFILIALMA: TSmallintField;
    zqry_PRODIMPORTACODMOEDA: TWideStringField;
    zqry_PRODIMPORTACODEMPUD: TIntegerField;
    zqry_PRODIMPORTACODFILIALUD: TSmallintField;
    zqry_PRODIMPORTACODUNID: TWideStringField;
    zqry_PRODIMPORTACODEMPFC: TIntegerField;
    zqry_PRODIMPORTACODFILIALFC: TSmallintField;
    zqry_PRODIMPORTACODFISC: TWideStringField;
    zqry_PRODIMPORTACODEMPMC: TIntegerField;
    zqry_PRODIMPORTACODFILIALMC: TSmallintField;
    zqry_PRODIMPORTACODMARCA: TWideStringField;
    zqry_PRODIMPORTADESCAUXPROD: TWideStringField;
    zqry_PRODIMPORTATIPOPROD: TWideStringField;
    zqry_PRODIMPORTACVPROD: TWideStringField;
    zqry_PRODIMPORTACODEMPGP: TIntegerField;
    zqry_PRODIMPORTACODFILIALGP: TSmallintField;
    zqry_PRODIMPORTACODGRUP: TWideStringField;
    zqry_PRODIMPORTACODBARPROD: TWideStringField;
    zqry_PRODIMPORTACLOTEPROD: TWideStringField;
    zqry_PRODIMPORTASERIEPROD: TWideStringField;
    zqry_PRODIMPORTACODFABPROD: TWideStringField;
    zqry_PRODIMPORTACOMISPROD: TFloatField;
    zqry_PRODIMPORTAPESOLIQPROD: TExtendedField;
    zqry_PRODIMPORTAPESOBRUTPROD: TExtendedField;
    zqry_PRODIMPORTAQTDMINPROD: TExtendedField;
    zqry_PRODIMPORTAQTDMAXPROD: TExtendedField;
    zqry_PRODIMPORTADTMPMPROD: TDateField;
    zqry_PRODIMPORTACUSTOMPMPROD: TExtendedField;
    zqry_PRODIMPORTACUSTOPEPSPROD: TExtendedField;
    zqry_PRODIMPORTACUSTOINFOPROD: TExtendedField;
    zqry_PRODIMPORTAPRECOBASEPROD: TExtendedField;
    zqry_PRODIMPORTAPRECOCOMISPROD: TExtendedField;
    zqry_PRODIMPORTASLDPROD: TExtendedField;
    zqry_PRODIMPORTASLDRESPROD: TExtendedField;
    zqry_PRODIMPORTASLDCONSIGPROD: TExtendedField;
    zqry_PRODIMPORTASLDLIQPROD: TExtendedField;
    zqry_PRODIMPORTAATIVOPROD: TWideStringField;
    zqry_PRODIMPORTADTULTCPPROD: TDateField;
    zqry_PRODIMPORTAQTDULTCPPROD: TExtendedField;
    zqry_PRODIMPORTADESCCOMPPROD: TWideStringField;
    zqry_PRODIMPORTAOBSPROD: TWideStringField;
    zqry_PRODIMPORTAVERIFPROD: TWideStringField;
    zqry_PRODIMPORTARMAPROD: TWideStringField;
    zqry_PRODIMPORTACODEMPPE: TIntegerField;
    zqry_PRODIMPORTACODFILIALPE: TSmallintField;
    zqry_PRODIMPORTACODPE: TIntegerField;
    zqry_PRODIMPORTACODEMPCC: TIntegerField;
    zqry_PRODIMPORTACODFILIALCC: TSmallintField;
    zqry_PRODIMPORTAANOCC: TSmallintField;
    zqry_PRODIMPORTACODCC: TWideStringField;
    zqry_PRODIMPORTAUSARECEITAPROD: TWideStringField;
    zqry_PRODIMPORTAUSATELAADICPDV: TWideStringField;
    zqry_PRODIMPORTAVLRDENSIDADE: TExtendedField;
    zqry_PRODIMPORTAVLRCONCENT: TExtendedField;
    zqry_PRODIMPORTACOMPRIMENTO: TExtendedField;
    zqry_PRODIMPORTALARGURA: TExtendedField;
    zqry_PRODIMPORTAESPESSURA: TExtendedField;
    zqry_PRODIMPORTAGUIATRAFPROD: TWideStringField;
    zqry_PRODIMPORTAQTDEMBALAGEM: TExtendedField;
    zqry_PRODIMPORTACODEANPROD: TWideStringField;
    zqry_PRODIMPORTACUBAGEM: TExtendedField;
    zqry_PRODIMPORTACODEMPSC: TIntegerField;
    zqry_PRODIMPORTACODFILIALSC: TSmallintField;
    zqry_PRODIMPORTACODSECAO: TWideStringField;
    zqry_PRODIMPORTACODEMPTC: TSmallintField;
    zqry_PRODIMPORTACODFILIALTC: TSmallintField;
    zqry_PRODIMPORTACODTPCHAMADO: TIntegerField;
    zqry_PRODIMPORTAQTDHORASSERV: TExtendedField;
    zqry_PRODIMPORTANRODIASVALID: TSmallintField;
    zqry_PRODIMPORTADESCCLI: TWideStringField;
    zqry_PRODIMPORTAQTDPORPLANO: TSmallintField;
    zqry_PRODIMPORTANROPLANOS: TSmallintField;
    zqry_PRODIMPORTACERTFSC: TWideStringField;
    zqry_PRODIMPORTAFATORFSC: TExtendedField;
    zqry_PRODIMPORTACODEMPOG: TIntegerField;
    zqry_PRODIMPORTACODFILIALOG: TSmallintField;
    zqry_PRODIMPORTACODPRODOG: TIntegerField;
    zqry_PRODIMPORTACODEMPMG: TIntegerField;
    zqry_PRODIMPORTACODFILIALMG: TSmallintField;
    zqry_PRODIMPORTACODMODG: TIntegerField;
    zqry_PRODIMPORTAPRAZOREPO: TIntegerField;
    zqry_PRODIMPORTAMEDIAVENDA: TExtendedField;
    zqry_PRODIMPORTAEMMANUT: TWideStringField;
    zqry_PRODIMPORTADTINS: TDateField;
    zqry_PRODIMPORTAHINS: TTimeField;
    zqry_PRODIMPORTAIDUSUINS: TWideStringField;
    zqry_PRODIMPORTADTALT: TDateField;
    zqry_PRODIMPORTAHALT: TTimeField;
    zqry_PRODIMPORTAIDUSUALT: TWideStringField;
    zqry_PRODIMPORTAFINAME: TWideStringField;
    zqry_PRODIMPORTAMDA: TWideStringField;
    zqry_PRODIMPORTAPTSFIDELIDADE: TIntegerField;
    zqry_PRODIMPORTACURVA: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA: TWideStringField;
    zqry_PRODIMPORTAPROD_ORIGEM: TWideStringField;
    zqry_PRODIMPORTAPROD_IAT: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_PIS: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_COFINS: TWideStringField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_ISSQN: TWideStringField;
    zqry_PRODIMPORTAPROD_ICMS: TWideStringField;
    zqry_PRODIMPORTAPROD_COD_SERVICO_ISSQN: TWideStringField;
    zqry_PRODIMPORTAPROD_BLOQUEIO: TWideStringField;
    zqry_PRODIMPORTAPROD_USA_PROMO: TWideStringField;
    zqry_PRODIMPORTAPROD_PBALANCA: TWideStringField;
    zqry_PRODIMPORTAPROD_ATIVO: TWideStringField;
    zqry_PRODIMPORTACODNCM: TWideStringField;
    zqry_PRODIMPORTAMARKUP: TFloatField;
    zqry_PRODIMPORTAICRE: TWideStringField;
    zqry_PRODIMPORTACEST: TWideStringField;
    zqry_PRODIMPORTAPROMOCAO: TWideStringField;
    zqry_PRODIMPORTACODMIX: TIntegerField;
    zqry_PRODIMPORTAINTERVSEGUR: TIntegerField;
    zqry_PRODIMPORTACLASSETOXICO: TWideStringField;
    zqry_PRODIMPORTAGRUPOQUIMICO: TWideStringField;
    zqry_PRODIMPORTANOMETECNICO: TWideStringField;
    zqry_PRODIMPORTAPRINCIPIOATIVO: TWideStringField;
    zqry_PRODIMPORTALOCALPROD: TWideStringField;
    zqry_PRODIMPORTACODCLASSE: TWideStringField;
    zqry_PRODIMPORTACLASSE: TWideStringField;
    zqry_PRODIMPORTACONCENTRACAO: TWideStringField;
    zqry_PRODIMPORTAFORMULACAO: TWideStringField;
    zqry_PRODIMPORTAANTIDOTO: TWideStringField;
    zqry_PRODIMPORTAMULTIPLICADOR: TSingleField;
    zqry_PRODIMPORTACODBALANCA: TIntegerField;
    zqry_PRODIMPORTACODRFIDPROD: TIntegerField;
    zqry_PRODIMPORTAPROD_SITRIBUTARIA_CSOSN: TWideStringField;
    procedure LancaItem;
    procedure LancaItemReverso;
    function StrToDecimal(Expressao: String): Extended;
//    function TiraPonto(valor: string) : string;
    procedure btn_ABRIRClick(Sender: TObject);
    procedure btn_VALIDAClick(Sender: TObject);
    procedure btn_SAIRClick(Sender: TObject);
    procedure btn_CANCELACOMPRAClick(Sender: TObject);
    procedure btn_REVERSOClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure executasginiconsp;
//    procedure btn_ABRE_XMLClick(Sender: TObject);
//    procedure SpeedButton1Click(Sender: TObject);
  //  function EhNumero(S: string): Boolean;
  private
    { Private declarations }
    procedure carregaItens;
    procedure AddLinha(Sender : TMemo; sCampo,sDado: string);
  public
    { Public declarations }
    var
    cnpjemite,descricao,codbarras,cfop,referencia,fabricante,usacfop:string;
    codproduto, buscacodprod, achouproduto, item, X1,NL1, numnota:integer;
    quant,valor, bcicms, vlricms,aliqicms,bcipi,aliqipi,vlripi,multiplicador:double;
  end;
var
  frm_IMPORTANOTA: Tfrm_IMPORTANOTA;
  seqcompra, seqpag, seqsequencia, seqforneced, seqcliente, seqvenda, seqrec:integer;
implementation

{$R *.dfm}

uses u_dados, u_principal, u_Funcoes, dlg_associaproduto, dlg_cancelacompra,
   dlg_associaprodutoreverso;

function Tfrm_IMPORTANOTA.StrToDecimal(Expressao: String): Extended;
var nNeg: Integer;
nAcao: Integer;
begin
try
  nNeg := Pos('-',Expressao);
    if nNeg>0 then
    begin
    Expressao[nNeg] := '0';
      nAcao := -1;
    end else
    nAcao := 1;
  Result := StrToInt(Expressao)*nAcao;
except
on E: Exception do
  showmessage(E.ClassName+' erro gerado com a mensagem ao atualizar Venda : '+E.Message);
end;
end;
function TiraPonto (valor:string) : string;
var
  i: integer;
begin
    for i:=0 to length(valor) do
      begin
      if valor[i]='.' then
      begin
        delete (valor,i,1);
      end
    end;
    result:=valor;
end;
{function EhNumero(S: string): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 1 to Lenght(S) do begin
    if not (S[I] in [´0´..´9´]) then begin
      Result := False;
      Break;
    end;
  end;
end;}
procedure Tfrm_IMPORTANOTA.ExecutaSGINICONSP;
begin
  dm_dados.zqry_sgconexao.close;
  dm_Dados.zqry_sgconexao.open;
  zqry_SGINICONSP.Params.Clear;
  zqry_Sginiconsp.Close;
  zqry_SGINICONSP.SQL.Clear;
  zqry_sginiconsp.SQL.text:='execute procedure sginiconsp(:empresa, :usuario, :filial, :conexao)';
  zqry_sginiconsp.ParamByName('empresa').AsInteger:=dm_Dados.zqry_SGCONEXAOCODEMP.AsInteger;
  zqry_sginiconsp.ParamByName('filial').AsInteger:=dm_Dados.zqry_SGCONEXAOCODFILIAL.AsInteger;
  zqry_sginiconsp.ParamByName('usuario').value:=dm_Dados.zqry_SGCONEXAOUSER.value;
  zqry_sginiconsp.ParamByName('conexao').AsInteger:=dm_Dados.zqry_SGCONEXAOCURRENT_CONNECTION.AsInteger;
  zqry_SGINICONSP.Open;
end;
procedure Tfrm_IMPORTANOTA.FormShow(Sender: TObject);
begin
if dm_dados.zqry_SGFILIALCNPJFILIAL.AsString='12410720000104' then btn_reverso.Visible:=true else btn_reverso.Visible:=false;
end;

procedure Tfrm_IMPORTANOTA.LancaItem;
var
  embalagem, minhadescricao:string;
begin
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(codcompra) as sequencia FROM cpcompra');
zquery1.Open;
seqcompra:=zquery1.FieldByname('sequencia').asInteger;
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(coditcompra) as meuitem FROM cpitcompra where codcompra=:p1');
zquery1.ParamByName('p1').asinteger:=seqcompra;
zquery1.Open;
item:=zquery1.FieldByname('meuitem').asInteger+1;
embalagem:=floattostr(zqry_PRODIMPORTAQTDEMBALAGEM.AsFloat);
if (embalagem='0') or (embalagem='') then embalagem:='1';
showmessage('Produto Localizado '+zqry_PRODIMPORTADESCPROD.AsString+' - Código '+zqry_PRODIMPORTACODPROD.asstring);
  if not(InputQuery('Multiplicador - Produto Fracionado', 'Qual a Quantidade '+descricao+' por Embalagem ? ', embalagem)) then
    exit;
if Trim(embalagem) = '' then
begin
  MessageDlg('Quantidade da Embalagem Inválido.',mtError,[mbok],0);
  exit;
end;
//showmessage('Produto Localizado '+zqry_PRODIMPORTADESCPROD.AsString);
case MessageBox(Handle, 'Produto associado localizado. Deseja usar esse produto para fazer a entrada?', 'Entrar com esse produto?', MB_YESNO + MB_ICONQUESTION) of
IDYES:  //se clicar em sim faça isso
BEGIN
  executasginiconsp;
  dm_dados.zqry_CPITCOMPRA.Close;
  dm_Dados.zqry_CPITCOMPRA.Open;
  dm_Dados.zqry_CPITCOMPRA.Append;
  dm_dados.zqry_CPITCOMPRACODEMP.asinteger:=99;
  dm_dados.zqry_CPITCOMPRACODFILIAL.AsInteger:=1;
  dm_dados.zqry_CPITCOMPRACODCOMPRA.AsInteger:=seqcompra;
  //showmessage(inttostr(item));
  dm_dados.zqry_CPITCOMPRACODITCOMPRA.AsInteger:=item;
  dm_dados.zqry_CPITCOMPRACODEMPPD.asinteger:=99;
  dm_dados.zqry_CPITCOMPRACODFILIALPD.AsInteger:=1;
  dm_Dados.zqry_CPITCOMPRACODPROD.asinteger:=achouproduto;
  dm_dados.zqry_CPITCOMPRACODEMPNT.asinteger:=99;
  dm_dados.zqry_CPITCOMPRACODFILIALNT.AsInteger:=1;
  if (cfop='5101') or (cfop='5102') then usacfop:='1102';
  if (cfop='6101') or (cfop='6102') then usacfop:='2102';
  if (cfop<>'5101') or (cfop<>'5102') or (cfop<>'6101') or (cfop<>'6102') then usacfop:='1102';
  dm_dados.zqry_CPITCOMPRACODNAT.AsString:=usacfop;
  dm_dados.zqry_CPITCOMPRACODEMPAX.asinteger:=99;
  dm_dados.zqry_CPITCOMPRACODFILIALAX.AsInteger:=1;
  dm_dados.zqry_CPITCOMPRACODALMOX.AsInteger:=1;
  dm_Dados.zqry_CPITCOMPRAQTDITCOMPRA.AsFloat:=quant*strtofloat(embalagem);
  dm_dados.zqry_CPITCOMPRAPRECOITCOMPRA.AsFloat:=valor/strtofloat(embalagem);
  dm_dados.zqry_CPITCOMPRAVLRPRODITCOMPRA.asfloat:=valor/strtofloat(embalagem);
  dm_dados.zqry_CPITCOMPRAPERCICMSSTITCOMPRA.AsFloat:=0.00;
  dm_Dados.zqry_cpitcompraVLRBASEICMSSTITCOMPRA.AsFloat:=0.00;
  dm_Dados.zqry_cpitcompraVLRICMSSTITCOMPRA.AsFloat:=0.00;
  dm_Dados.zqry_cpitcompraVLRBASEFUNRURALITCOMPRA.AsFloat:=0.00;
  dm_dados.zqry_cpitcompraALIQFUNRURALITCOMPRA.AsFloat:=0.00;
  dm_Dados.zqry_cpitcompraVLRFUNRURALITCOMPRA.asfloat:=0.00;
  dm_Dados.zqry_cpitcompraCUSTOVDITCOMPRA.asfloat:=0.00;
  dm_Dados.zqry_CPITCOMPRAVLRBASEICMSITCOMPRA.AsFloat:=bcicms;
  dm_Dados.zqry_CPITCOMPRAVLRICMSITCOMPRA.asfloat:=vlricms;
  dm_Dados.zqry_CPITCOMPRAPERCICMSITCOMPRA.AsFloat:=aliqicms;
  dm_Dados.zqry_CPITCOMPRAVLRBASEIPIITCOMPRA.AsFloat:=bcipi;
  dm_Dados.zqry_CPITCOMPRAPERCIPIITCOMPRA.AsFloat:=aliqipi;
  dm_Dados.zqry_CPITCOMPRAVLRIPIITCOMPRA.AsFloat:=vlripi;
  dm_Dados.zqry_cpitcompraEMMANUT.asstring:='S';
  DM_dADOS.ZQRY_cpitcompracalccusto.asstring:='S';
  dm_Dados.zqry_cpitcompraADICICMSTOTNOTA.asstring:='N';
  DM_dADOS.ZQRY_CPITCOMPRADTINS.ASDATETIME:=DATE;
  DM_DADOS.ZQRY_CPITCOMPRAHINS.ASDATETIME:=TIME;
  DM_DADOS.zqry_CPITCOMPRAIDUSUINS.Value:='SYSDBA';
  DM_DADOS.ZQRY_CPITCOMPRA.POST;
 // DM_DADOS.ZQRY_CPITCOMPRA.APPLYUPDATES;
 // showmessage('um produto inserido');
  ITEM:=ITEM+1;
END;
idno:
begin
  //
end;
end;
end;
procedure Tfrm_IMPORTANOTA.LancaItemReverso;
var
  embalagem:string;
begin
embalagem:=floattostr(zqry_PRODIMPORTAQTDEMBALAGEM.AsFloat);
if (embalagem='0') or (embalagem='') then embalagem:='1';
showmessage('Produto Localizado '+zqry_PRODIMPORTADESCPROD.AsString+' - Código '+zqry_PRODIMPORTACODPROD.asstring);
  if not(InputQuery('Multiplicador - Produto Fracionado', 'Qual a Quantidade por Embalagem ? ', embalagem)) then
    exit;
if Trim(embalagem) = '' then
begin
  MessageDlg('Quantidade da Embalagem Inválido.',mtError,[mbok],0);
  exit;
end;
//showmessage('Produto Localizado '+zqry_PRODIMPORTADESCPROD.AsString);
case MessageBox(Handle, 'Produto associado localizado. Deseja usar esse produto para fazer a entrada?', 'Entrar com esse produto?', MB_YESNO + MB_ICONQUESTION) of
IDYES:  //se clicar em sim faça isso
BEGIN
  dm_dados.zqry_vditvenda.Close;
  dm_Dados.zqry_vditvenda.Open;
  dm_Dados.zqry_vditvenda.Append;
  dm_dados.zqry_vditvendaCODEMP.asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_vditvendaCODFILIAL.AsInteger:=1;
  dm_dados.zqry_VDITVENDACODEMPPD.asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_vditvendaCODFILIALPD.AsInteger:=1;
  dm_dados.zqry_vditvendaCODEMPNT.asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_vditvendaCODFILIALNT.AsInteger:=1;
  dm_dados.zqry_vditvendaCODEMPAX.asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_vditvendaCODFILIALAX.AsInteger:=1;
  dm_dados.zqry_vditvendaCODALMOX.AsInteger:=1;
  dm_dados.zqry_vditvendaCODvenda.AsInteger:=seqsequencia;
  dm_dados.zqry_VDITVENDACODITVENDA.AsInteger:=item;
  dm_Dados.zqry_vditvendaCODPROD.asinteger:=achouproduto;
  if (cfop='5101') or (cfop='5102') then usacfop:='5101';
  if (cfop='6101') or (cfop='6102') then usacfop:='6101';
  if (cfop<>'5101') or (cfop<>'5102') or (cfop<>'6101') or (cfop<>'6102') then usacfop:='5101';
  dm_dados.zqry_VDITVENDACODNAT.AsString:=usacfop;
  dm_Dados.zqry_VDITVENDAQTDITVENDA.AsFloat:=quant*strtofloat(embalagem);
  dm_dados.zqry_VDITVENDAPRECOITVENDA.AsFloat:=valor/strtofloat(embalagem);
  dm_dados.zqry_VDITVENDAPERCICMSITVENDA.AsFloat:=0.00;
  dm_Dados.zqry_VDITVENDAVLRBASEICMSITVENDA.AsFloat:=0.00;
  dm_Dados.zqry_VDITVENDAVLRICMSSTITVENDA.AsFloat:=0.00;
  dm_Dados.zqry_VDITVENDAVLRBASEICMSSTITVENDA.AsFloat:=bcicms;
  dm_Dados.zqry_VDITVENDAVLRICMSITVENDA.asfloat:=vlricms;
  dm_Dados.zqry_VDITVENDAPERCICMSITVENDA.AsFloat:=aliqicms;
  dm_Dados.zqry_VDITVENDAVLRBASEIPIITVENDA.AsFloat:=bcipi;
  dm_Dados.zqry_VDITVENDAPERCIPIITVENDA.AsFloat:=aliqipi;
  dm_Dados.zqry_VDITVENDAVLRIPIITVENDA.AsFloat:=vlripi;
  dm_Dados.zqry_VDITVENDAEMMANUT.asstring:='S';
  DM_dADOS.ZQRY_vditvendaDTINS.ASDATETIME:=DATE;
  DM_DADOS.ZQRY_vditvendaHINS.ASDATETIME:=TIME;
  DM_DADOS.zqry_vditvendaIDUSUINS.Value:='SYSDBA';
  DM_DADOS.ZQRY_vditvenda.POST;
  DM_DADOS.ZQRY_vditvenda.APPLYUPDATES;
  //showmessage('um produto inserido');
  ITEM:=ITEM+1;
END;
idno:
begin
  //
end;
end;
end;


procedure Tfrm_IMPORTANOTA.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
   i : integer;
begin
 for I := 0 to ACBrCEP1.Enderecos.Count -1 do
    begiN
      edt_DEST_CODMUNIC.Text := copy(ACBrCEP1.Enderecos[i].IBGE_Municipio,3,5);
    end;

end;

procedure Tfrm_IMPORTANOTA.AddLinha(Sender : TMemo; sCampo, sDado: string);
const
  sDivisor = ' : ';
begin
  if (Trim(sCampo) = '') and (Trim(sDado) = '') then
      Sender.Lines.Add('')
  else
      Sender.Lines.Add(sCampo + sDivisor + sDado);
end;

procedure Tfrm_IMPORTANOTA.btn_REVERSOClick(Sender: TObject);
var
  X,NR,C,meucli:integer;
  campo:string;
begin
dm_Dados.zqry_VDCLIENTE.Close;
dm_dados.zqry_VDCLIENTE.sql.Clear;
dm_Dados.zqry_VDCLIENTE.sql.add('select * from vdcliente');
dm_dados.zqry_VDCLIENTE.sql.add('where cnpjcli=:cnpj and codemp=:empresa');
dm_Dados.zqry_VDCLIENTE.ParamByName('cnpj').Value:=edt_dest_cnpj.text;
dm_Dados.zqry_VDCLIENTE.ParamByName('empresa').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_VDCLIENTE.open;
if dm_dados.zqry_vdcliente.IsEmpty then
  begin
    case MessageBox(Handle, 'Cliente não localizado. Deseja cadastrar de forma automática?', 'Cadastrar Cliente?', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  //se clicar em sim faça isso
        BEGIN
          zquery1.Close;
          zquery1.SQL.Clear;
          zquery1.sql.add('SELECT MAX(codcli) as seqcli FROM vdcliente');
          zquery1.Open;
          seqcliente:=zquery1.FieldByname('seqcli').asInteger;
          ExecutaSGINICONSP;
          dm_dados.zqry_VDCLIENTE.Close;
          dm_dados.zqry_VDCLIENTE.open;
          dm_Dados.zqry_VDCLIENTE.Append;
          dm_dados.zqry_VDCLIENTECODEMP.AsInteger:=dm_DADOS.CODEMP;
          dm_dados.zqry_VDCLIENTECODFILIAL.AsInteger:=1;
          dm_dados.zqry_vdclienteCODEMPTI.AsInteger:=dm_DADOS.CODEMP;
          dm_Dados.zqry_vdclienteCODFILIALTi.AsInteger:=1;
          dm_Dados.zqry_vdclientecodtipocli.AsInteger:=2;
          dm_dados.zqry_vdclienteCODEMPcc.AsInteger:=dm_DADOS.CODEMP;
          dm_Dados.zqry_vdclienteCODFILIALcc.AsInteger:=1;
          dm_dados.zqry_VDCLIENTECODCLASCLI.AsInteger:=1;
          dm_dados.zqry_vdclientecodcli.AsInteger:=seqcliente+1;
          dm_Dados.zqry_vdclienterazcli.AsString:=edt_dest_raz.Text;
          dm_dados.zqry_vdclientenomecli.asstring:=edt_dest_raz.Text;
          dm_dados.zqry_vdclientecnpjcli.AsString:=edt_DEST_CNPJ.Text;
          dm_dados.zqry_vdclientedatacli.AsDateTime:=date;
          dm_dados.zqry_vdclientePESSOAcli.AsString:='J';
          dm_dados.zqry_VDCLIENTEATIVOCLI.AsString:='S';
          dm_dados.zqry_VDCLIENTEPRODRURALCLI.AsString:='N';
          dm_dados.zqry_VDCLIENTECTOCLI.AsString:='C';
          dm_dados.zqry_VDCLIENTEIDENTCLIBCO.AsString:='D';
          dm_Dados.zqry_VDCLIENTECONSUMIDORCLI.AsString:='N';
          dm_dados.zqry_VDCLIENTESITREVCLI.AsString:='N';
          dm_dados.zqry_vdclienteDTINS.AsDateTime:=date;
          dm_dados.zqry_vdclienteHINS.AsDateTime:=time;
          dm_dados.zqry_vdclienteIDUSUINS.AsString:='sysdba';
          dm_dados.zqry_vdclientecepcli.AsString:=edt_dest_CEP.Text;
          if edt_DEST_CEP.Text<>'' then
          begin
            MostraTelaAguarde('Buscando CEP '+edt_dest_cep.Text+' nos Correios');
            ACBrCEP1.BuscarPorCEP(edt_dest_cep.Text);
            fechatelaaguarde;
          end;
          dm_dados.zqry_vdclienteendcli.AsString:=edt_dest_LOGRADOURO.Text;
          dm_Dados.zqry_VDCLIENTEBAIRCLI.AsString:=edt_dest_BAIRRO.Text;
          DM_dADOS.zqry_vdclienteSIGLAUF.AsString:=edt_dest_UF.Text;
          DM_dADOS.zqry_vdclienteCODPAIS.AsInteger:=76;
          DM_dADOS.zqry_VDCLIENTECIDCLI.AsString:=edt_dest_CODCID.Text;
          dm_dados.zqry_VDCLIENTECODMUNIC.AsString:=edt_dest_CODMUNIC.Text;
          dm_dados.zqry_VDCLIENTE.Post;
          dm_dados.zqry_VDCLIENTE.ApplyUpdates;
          showmessage('Cliente '+edt_DEST_RAZ.Text+' cadastrado com sucesso');
          btn_REVERSOClick(Self);
        END;
      IDNO:
        BEGIN
          close;
        END;
    end;
  end
else
  begin

  // TODO  FAZER PERGUNTA SE DESEJA IMPORTAR OU NÃO
    case MessageBox(Handle, 'Deseja importar esse XML como Saida', 'Importar Pedido?', MB_YESNO + MB_ICONQUESTION) of
    IDYES:  //se clicar em sim faça isso
      begin
        zquery1.Close;
        zquery1.SQL.Clear;
        zquery1.sql.add('SELECT MAX(codvenda) as Sequencia FROM vdvenda');
        zquery1.Open;
        seqvenda:=zquery1.FieldByname('sequencia').asInteger;
        // Sequencia SGSEQUENCIA
        zqry_SEQvd.Params.Clear;
        zqry_SEQvd.Close;
        zqry_SEQvd.SQL.Clear;
        ZQRY_SEQvd.SQL.Add('select * from sgsequencia where sgtab=:venda and codemp=:empresa');
        zqry_SEQvd.ParamByName('venda').AsString:='VD';
        zqry_SEQvd.ParamByName('empresa').AsInteger:=dm_DADOS.CODEMP;
        zqry_seqvd.Open;
        //frm_principal.lbl_NFCE.caption:='NFCe: '+inttostr(dm_dados.cds_SGSEQUENCIANFCECONTADOR.Value);
        seqsequencia:=zqry_SEQvdNROSEQ.asinteger;
        if seqsequencia<=seqvenda then seqsequencia:=seqvenda+1;
        dm_dados.zqry_vdvenda.params.clear;
        dm_dados.zqry_vdvenda.Close;
        dm_Dados.zqry_vdvenda.sql.clear;
        dm_dados.zqry_vdvenda.sql.add('select * from vdvenda where codcli=:clicod and codemp=:empcod and docvenda=:doc');
        dm_Dados.zqry_vdvenda.parambyname('clicod').asinteger:=dm_Dados.zqry_vdclientecodcli.AsInteger;
        dm_Dados.zqry_vdvenda.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_dados.zqry_vdvenda.ParamByName('doc').asinteger:=strtoint(edt_NUM_NF.Text);
        dm_dados.zqry_vdvenda.Open;
        if dm_Dados.zqry_vdvenda.IsEmpty then
        begin
          // GRAVA DADOS NA COMPRA
          ExecutaSGINICONSP;
          dm_dados.ZQRY_vdvenda.insert;
          dm_dados.zqry_vdvendaCODEMP.asinteger:=dm_DADOS.CODEMP;
          dm_dados.zqry_vdvendaCODFILIAL.AsInteger:=1;
          dm_dados.zqry_vdvendaCODCAIXA.Value:=1;
          DM_DADOS.zqry_vdvendaCODCLCOMIS.Value:=10;
          dm_dados.zqry_vdvendaCODEMPCM.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
          dm_dados.zqry_vdvendaCODFILIALCM.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
          dm_dados.zqry_vdvendaCODEMPCX.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
          dm_dados.zqry_vdvendaCODFILIALCX.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
          dm_dados.zqry_vdvendaCODEMPSE.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
          dm_dados.zqry_vdvendaCODFILIALSE.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
          dm_dados.zqry_vdvendaCODEMPVD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
          dm_dados.zqry_vdvendaCODFILIALVD.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
          dm_dados.zqry_vdvendaPERCCOMISVENDA.AsFloat:=0.00;
          dm_dados.zqry_VDVENDAVLRDESCVENDA.AsFloat:=0.00;
          DM_DADOS.zqry_VDVENDATIPOVENDA.AsString:='V';
          DM_dADOS.zqry_VDVENDACODVENDA.AsInteger:=seqsequencia;
          dm_dados.zqry_VDVENDASUBTIPOVENDA.AsString:='NF';
          DM_DADOS.zqry_VDVENDACODEMPCL.AsInteger:=dm_Dados.codemp;
          dm_Dados.zqry_VDVENDACODFILIALcl.AsInteger:=1;
          dm_dados.zqry_VDVENDACODCLI.AsInteger:=dm_dados.zqry_VDCLIENTECODCLI.AsInteger;
          dm_dados.zqry_vdvendaCODEMPPG.AsInteger:=dm_DADOS.CODEMP;
          dm_dados.zqry_vdvendaCODFILIALPG.AsInteger:=1;
          dm_dados.zqry_vdvendaCODPLANOPAG.AsInteger:=1;
          dm_dados.zqry_VDVENDASERIE.AsString:='1';
          dm_dados.zqry_VDVENDACODEMPTM.AsInteger:=dm_Dados.codemp;
          dm_dados.zqry_VDVENDACODFILIALTM.AsInteger:=1;
          dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger:=601;
          dm_dados.zqry_VDVENDADOCVENDA.AsInteger:=strtoint(edt_NUM_NF.Text);
          dm_dados.zqry_VDVENDADTSAIDAVENDA.AsDateTime:= strtodate(edt_DT_EMISSAO.Text);
          dm_dados.zqry_VDVENDADTEMITVENDA.AsDateTime:=strtodate(edt_DT_EMISSAO.Text);
          dm_dados.zqry_VDVENDADTCOMPVENDA.AsDateTime:=strtodate(edt_DT_EMISSAO.Text);
          dm_dados.zqry_VDVENDASTATUSVENDA.AsString:='P3';
          DM_DADOS.zqry_VDVENDABLOQVENDA.AsString:='N';
          DM_DADOS.zqry_VDVENDALOCALSERV.AsString:='P';
          dm_dados.zqry_vdvendanroatualizado.asstring:='N';
          dm_DAdos.zqry_VDVENDASITCOMPLVENDA.AsString:='N';
          dm_dados.zqry_vdvendaEMMANUT.AsString:='S';
          dm_Dados.zqry_vdvendaCHAVENFEvenda.AsString:=edt_CHAVE_NF.Text;
          dm_dados.zqry_vdvendaDTINS.AsDateTime:=date;
          dm_dados.zqry_vdvendaHINS.AsDateTime:=time;
          dm_dados.zqry_vdvendaIDUSUINS.AsString:='sysdba';
          dm_dados.zqry_vdvenda.Post;
          dm_Dados.zqry_vdvenda.ApplyUpdates;

               // GRAVA FRETE VENDA
          dm_Dados.zqry_VDFRETEVD.Close;
          dm_DAdos.zqry_VDFRETEVD.Open;
          dm_dados.zqry_VDFRETEVD.append;
          dm_dados.zqry_VDFRETEVDCODEMP.asinteger:=99;//DM_DADOS.cds_SGFILIALCODEMP.Value;
          dm_dados.zqry_VDFRETEVDCODFILIAL.asinteger:=1;//DM_DADOS.cds_SGFILIALCODFILIAL.Value;
          dm_dados.zqry_VDFRETEVDTIPOVENDA.Value:='V';
          dm_dados.zqry_VDFRETEVDCODVENDA.Value:=seqsequencia;
          dm_dados.zqry_VDFRETEVDTIPOFRETEVD.Value:='F';
          dm_dados.zqry_VDFRETEVDPLACAFRETEVD.Value:='*******';
          dm_dados.zqry_VDFRETEVDUFFRETEVD.Value:='**';
          dm_dados.zqry_VDFRETEVDVLRFRETEVD.AsCurrency:=0.00;
          dm_Dados.zqry_VDFRETEVDVLRSEGFRETEVD.AsCurrency:=0.00;
          dm_dados.zqry_VDFRETEVDQTDFRETEVD.AsFloat:=1;
          dm_dados.zqry_VDFRETEVDPESOBRUTVD.AsFloat:=0.00;
          dm_dados.zqry_VDFRETEVDPESOLIQVD.AsFloat:=0.00;
          dm_dados.zqry_VDFRETEVDESPFRETEVD.Value:='VOLUME';
          dm_dados.zqry_VDFRETEVDMARCAFRETEVD.Value:='OUTRO';
          dm_dados.zqry_VDFRETEVDADICFRETEVD.Value:='N';
          dm_dados.zqry_VDFRETEVDADICFRETEBASEICM.Value:='N';
          DM_DADOS.zqry_VDFRETEVDDTINS.AsDateTime:=DATE;
          DM_dADOS.zqry_VDFRETEVDHINS.AsDateTime:=TIME;
          DM_DADOS.zqry_VDFRETEVDIDUSUINS.Value:='SYSDBA';
          dm_Dados.zqry_vdfretevd.post;
          DM_DADOS.zqry_VDFRETEVD.ApplyUpdates();

          MOSTRATELANOTIFICA('CABEÇALHO DA NOTA LANÇADO','Número NFe '+edt_num_nf.Text);
          ITEM:=1;
          // GRAVAR ITENS DA NOTA
          nl1:= stringgrid3.RowCount -1;
          for X:= 1 to StringGrid3.RowCount -1 do
          begin
            X1:=X;
            // TENTA BUSCAR POR CODIGO
            val(StringGrid3.Cells[0,X],nr,c);
            if c=0 then
            begin
              codproduto:=trunc(StrToDecimal(StringGrid3.Cells[0,X]));
            end
            else
            begin
              codproduto:=0
            end;
            buscacodprod:=StrtoInt(StringGrid3.Cells[0,X]);
            referencia:=StringGrid3.Cells[0,X];
            fabricante:=StringGrid3.Cells[0,X];
            descricao:=StringGrid3.Cells[1,X];
            codbarras:=StringGrid3.Cells[30,X];
            cfop:=StringGrid3.Cells[3,X];
            quant:=StrToFloat(StringReplace(StringGrid3.Cells[5,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            valor:={strtofloat(StringGrid3.Cells[6,X]);}StrToFloat(StringReplace(StringGrid3.Cells[6,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            bcicms:=strtofloat(StringReplace(StringGrid3.Cells[13,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            aliqicms:=strtofloat(StringReplace(StringGrid3.Cells[14,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            vlricms:=strtofloat(StringReplace(StringGrid3.Cells[15,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            bcipi:=strtofloat(StringReplace(StringGrid3.Cells[18,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            aliqipi:=strtofloat(StringReplace(StringGrid3.Cells[19,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            vlripi:=strtofloat(StringReplace(StringGrid3.Cells[20,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            frm_dlg_associaprodutoreverso.showmodal;

            //variavel2:=StringGrid3.Cells[1,X];
            // Pula produto

          end;
          mostratelaaviso('PRODUTOS LOCALIZADOS FORAM LANÇADOS','Produtos não localizados favor lançar manualmente');

        end
        else
        begin
          mostratelaaviso('NOTA JÁ ESTÁ LANÇADA','Esta NF já se encontra lançada');
        end;
    end;

    IDNO:  //se clicar em não faça isso
      begin
      end;
  end;
  dm_dados.zqry_vdvenda.Edit;
  dm_Dados.zqry_VDVENDAVLRPRODVENDA.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  dm_dados.zqry_vdvenda.Post;
  dm_Dados.zqry_vdvenda.ApplyUpdates;
 { zquery2.Close;
  zquery2.SQL.Clear;
  zquery2.sql.add('SELECT MAX(codpag) as SequenciaPagar FROM fnpagar');
  zquery2.Open;
  seqpag:=zquery2.FieldByname('sequenciapagar').asInteger;
  ExecutaSGINICONSP;
  dm_dados.zqry_fnpagar.Close;
  dm_dados.zqry_fnpagar.open;
  dm_Dados.zqry_fnpagar.Append;
  dm_dados.zqry_fnpagarcodemp.asinteger:=dm_dados.codemp;
  dm_dados.zqry_FNPAGARCODFILIAL.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODPAG.AsInteger:=seqpag+1;
  dm_dados.zqry_FNPAGARCODEMPPG.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_FNPAGARCODFILIALPG.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODPLANOPAG.asinteger:=1;
  dm_dados.zqry_FNPAGARCODEMPFR.AsInteger:=dm_dados.codemp;
  dm_dados.zqry_FNPAGARCODFILIALFR.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODFOR.AsInteger:=9;//meufor;
  dm_dados.zqry_FNPAGARVLRDEVPAG.AsFloat:=0.00;
  //dm_dados.zqry_FNPAGARVLRPARCPAG.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  //dm_dados.zqry_FNPAGARVLRAPAGPAg.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  dm_dados.zqry_FNPAGARDTCOMPPAG.AsDateTime:=date;
  dm_dados.zqry_FNPAGARSTATUSPAG.AsString:='P1';
  dm_dados.zqry_FNPAGAREMMANUT.AsString:='N';
  dm_dados.zqry_fnpagardocpag.AsInteger:=999;//strtoint(edt_NUM_NF.Text);
  dm_dados.zqry_FNPAGAROBSPAG.AsString:='Referente Importação de Nota via XML da NF. n.º '+edt_num_nf.Text;
  dm_dados.zqry_FNPAGARDTINS.AsDateTime:=date;
  dm_dados.zqry_FNPAGARHINS.AsDateTime:=TIME;
  dm_dados.zqry_FNPAGARIDUSUINS.AsString:='SYSDBA';
  dm_dados.zqry_FNPAGAR.Post;
  SHOWMESSAGE('VEIO ATE AQUUI');
  //dm_dados.zqry_FNPAGAR.ApplyUpdates;
  dm_dados.zqry_FNITPAGAR.Close;
  dm_dados.zqry_FNITPAGAR.Open;
  dm_dados.zqry_FNITPAGAR.Append;
  dm_dados.zqry_FNITPAGARCODEMP.asinteger:=dm_dados.codemp;
  dm_dados.zqry_FNITPAGARCODFILIAL.asinteger:=1;
  dm_dados.zqry_FNITPAGARCODPAG.AsInteger:=seqpag+1;
  dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger:=1;
  dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat:=1.99;//strtofloat(edt_vlrtotal.Text);
  dm_dados.zqry_FNITPAGARVLRDEVITPAG.AsFloat:=0.00;
  dm_dados.zqry_FNITPAGARVLRPARCITPAG.AsFloat:=1.99;//strtofloat(edt_vlrtotal.Text);
  dm_dados.zqry_FNITPAGARDTITPAG.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARDTCOMPITPAG.asdatetime:=date;
  dm_Dados.zqry_FNITPAGARDTVENCITPAG.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARSTATUSITPAG.AsString:='P1';
  dm_dados.zqry_FNITPAGAREMMANUT.AsString:='N';
  dm_dados.zqry_FNITPAGARDTINS.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARHINS.AsDateTime:=time;
  dm_dados.zqry_FNITpagarIDUSUINS.AsString:='sysdba';
  dm_dados.zqry_FNITPAGAR.Post;
  dm_dados.zqry_FNITPAGAR.ApplyUpdates ;
  dm_dados.zqry_FNPAGAR.applyupdates;      }
//  showmessage('Dados Inseridos');
 end;

end;

procedure Tfrm_IMPORTANOTA.btn_ABRIRClick(Sender: TObject);
var
  sA : string;
  i : Integer;
begin
  // vamos trabalhar apenas uma nota
  if OpenDialog1.Execute then
  begin
    with ACBrNFe1.NotasFiscais do
    begin
      // remove qualquer XML anterior lido
      Clear;
      memoDadosDaNota.Lines.Clear;
      memoEmitente.Lines.Clear;
      memoDestinatario.Lines.Clear;
      LoadFromFile(OpenDialog1.FileName);
      // dados da nota "ACBrNFe1.NotasFiscais.Items[0].NFe.Ide...."
      AddLinha(memoDadosDaNota,'Data de emissão ', FormatDateTime('DD/MM/YYYY',Items[0].NFe.Ide.dEmi));
      edt_DT_EMISSAO.Text:=FormatDateTime('DD/MM/YYYY',Items[0].NFe.Ide.dEmi);
      AddLinha(memoDadosDaNota,'Hora de emissão ', FormatDateTime('HH:MM',Items[0].NFe.Ide.dEmi));
      AddLinha(memoDadosDaNota,'Número da nota ',IntToStr(Items[0].NFe.Ide.nNF));
      numnota:=Items[0].NFe.Ide.nNF;
      frm_IMPORTANOTA.caption:='Leitura e Importação de XML da Nota '+inttostr(numnota);
      AddLinha(memoDadosDaNota,'Chave da nota ',Items[0].NFe.infNFe.id);
      edt_CHAVE_NF.text:=Items[0].NFe.infNFe.ID;
      edt_NUM_NF.Text:=inttostr(Items[0].NFe.Ide.nNF);
      AddLinha(memoDadosDaNota,'Série ',IntToStr(Items[0].NFe.Ide.serie));
      AddLinha(memoDadosDaNota,'Natureza do operação',Items[0].NFe.Ide.natOp);
      // requer pcnConversaoNFe
      AddLinha(memoDadosDaNota,'Tipo de operação',tpNFToStr(Items[0].NFe.Ide.tpNF)); // 0 = entrada
      // pode implementar case ou usar direto função implementada
      sA := {pcnConversao.}DestinoOperacaoToStr(Items[0].NFe.Ide.idDest);
      AddLinha(memoDadosDaNota,'Identificador de local de destino da operação',sA);
      sA := TpEmisToStr(Items[0].NFe.Ide.tpEmis);
      AddLinha(memoDadosDaNota,'Tipo de Emissão da NF-e',sA);
      sA :=  FinNFeToStr(Items[0].NFe.Ide.finNFe);
      AddLinha(memoDadosDaNota,'Finalidade de emissão da NF-e',sA);
      sA :=  ConsumidorFinalToStr(Items[0].NFe.Ide.indFinal);
      AddLinha(memoDadosDaNota,'Indica operação com consumidor final',sA);
      // dados do emitente "ACBrNFe1.NotasFiscais.Items[0].NFe.Emit...."
      AddLinha(memoEmitente,'CNPJ',Items[0].NFe.Emit.CNPJCPF);
      AddLinha(memoEmitente,'IE',Items[0].NFe.Emit.IE);
      AddLinha(memoEmitente,'Inscrição municipal',Items[0].NFe.Emit.IM);
      AddLinha(memoEmitente,'Nome',Items[0].NFe.Emit.xNome);
      edt_NOME_EMITE.Text:= Items[0].NFe.Emit.xNome;
      edt_DEST_RAZ.text:=items[0].nfe.Dest.xNome;
      edt_NOME_FANT.Text:=Items[0].NFe.Emit.xFant;
      edt_cnpj_Emite.Text:= Items[0].NFe.Emit.CNPJCPF;
      edt_dest_cnpj.text:=items[0].nfe.Dest.CNPJCPF;
      edt_cnpj_cep.text:=IntToStr(Items[0].NFe.Emit.EnderEmit.CEP);
      edt_dest_cep.text:=inttostr(items[0].NFe.Dest.EnderDest.CEP);
      edt_cnpj_logradouro.text:=Items[0].NFe.Emit.EnderEmit.xLgr;
      edt_dest_logradouro.text:=items[0].NFe.Dest.EnderDest.xLgr;
      edt_cnpj_bairro.text:=Items[0].NFe.Emit.EnderEmit.xBairro;
      edt_dest_bairro.text:=items[0].nfe.Dest.EnderDest.xBairro;
      edt_cnpj_uf.text:=Items[0].NFe.Emit.EnderEmit.UF;
      edt_dest_uf.text:=items[0].NFe.Dest.EnderDest.UF;
      edt_cnpj_codcid.text:= Items[0].NFe.Emit.EnderEmit.xMun;
      edt_dest_codcid.text:=items[0].nfe.Dest.EnderDest.xMun;
      edt_CNPJ_CODMUNIC.Text:=IntToStr(Items[0].NFe.Emit.EnderEmit.cMun);
      edt_dest_codmunic.text:=inttostr(items[0].NFe.Dest.EnderDest.cMun);
      AddLinha(memoEmitente,'Nome fantasia',Items[0].NFe.Emit.xFant);
      AddLinha(memoEmitente,'','');
      AddLinha(memoEmitente,'Logradouro',Items[0].NFe.Emit.EnderEmit.xLgr);
      AddLinha(memoEmitente,'Bairro',Items[0].NFe.Emit.EnderEmit.xBairro);
      AddLinha(memoEmitente,'Código cidade',IntToStr(Items[0].NFe.Emit.EnderEmit.cMun));
      AddLinha(memoEmitente,'Cidade',Items[0].NFe.Emit.EnderEmit.xMun);
      AddLinha(memoEmitente,'UF',Items[0].NFe.Emit.EnderEmit.UF);
      AddLinha(memoEmitente,'CEP',IntToStr(Items[0].NFe.Emit.EnderEmit.CEP));
      AddLinha(memoEmitente,'Código país',IntToStr(Items[0].NFe.Emit.EnderEmit.cPais));
      AddLinha(memoEmitente,'País',Items[0].NFe.Emit.EnderEmit.xPais);
      AddLinha(memoEmitente,'Fone',Items[0].NFe.Emit.EnderEmit.fone);
      sA := CRTToStr(Items[0].NFe.Emit.CRT);
      AddLinha(memoEmitente,'Código do regime tributário',sA);
      // dados do destinatário  "ACBrNFe1.NotasFiscais.Items[0].NFe.Dest...."
      AddLinha(memoDestinatario,'CNPJ/CPF',Items[0].NFe.Dest.CNPJCPF);
      AddLinha(memoDestinatario,'IE',Items[0].NFe.Dest.IE);
      AddLinha(memoDestinatario,'Nome',Items[0].NFe.Dest.xNome);
      AddLinha(memoDestinatario,'email',Items[0].NFe.Dest.Email);
      AddLinha(memoDestinatario,'Indicador da IE do destinatário',indIEDestToStr(Items[0].NFe.Dest.indIEDest));
      AddLinha(memoDestinatario,'','');
      AddLinha(memoDestinatario,'Logradouro',Items[0].NFe.Dest.EnderDest.xLgr);
      AddLinha(memoDestinatario,'Número',Items[0].NFe.Dest.EnderDest.nro);
      AddLinha(memoDestinatario,'Bairro',Items[0].NFe.Dest.EnderDest.xBairro);
      AddLinha(memoDestinatario,'Código cidade',IntToStr(Items[0].NFe.Dest.EnderDest.cMun));
      AddLinha(memoDestinatario,'Cidade',Items[0].NFe.Dest.EnderDest.xMun);
      AddLinha(memoDestinatario,'UF',Items[0].NFe.Dest.EnderDest.UF);
      AddLinha(memoDestinatario,'CEP',IntToStr(Items[0].NFe.Dest.EnderDest.CEP));
      AddLinha(memoDestinatario,'Código país',IntToStr(Items[0].NFe.Dest.EnderDest.cPais));
      AddLinha(memoDestinatario,'País',Items[0].NFe.Dest.EnderDest.xPais);
      AddLinha(memoDestinatario,'Fone',Items[0].NFe.Dest.EnderDest.fone);
      carregaItens;
      // "ACBrNFe1.NotasFiscais.Items[0].NFe.ICMSTot"
      AddLinha(memoDadosDaNota,'','');
      AddLinha(memoDadosDaNota,'Base de cálculo do ICMS',FloatToStr(Items[0].NFe.Total.ICMSTot.vBC));
      AddLinha(memoDadosDaNota,'Valor total do ICMS',FloatToStr(Items[0].NFe.Total.ICMSTot.vICMS));
      AddLinha(memoDadosDaNota,'Valor total do ICMS desonerado',FloatToStr(Items[0].NFe.Total.ICMSTot.vICMSDeson));
      AddLinha(memoDadosDaNota,'BC do ICMS ST',FloatToStr(Items[0].NFe.Total.ICMSTot.vBCST));
      AddLinha(memoDadosDaNota,'Valor total do ICMS ST',FloatToStr(Items[0].NFe.Total.ICMSTot.vST));
      AddLinha(memoDadosDaNota,'Valor total dos produtos e serviços',FloatToStr(Items[0].NFe.Total.ICMSTot.vProd));
      AddLinha(memoDadosDaNota,'','');
      AddLinha(memoDadosDaNota,'Valor total do frete',FloatToStr(Items[0].NFe.Total.ICMSTot.vFrete));
      AddLinha(memoDadosDaNota,'Valor total do seguro',FloatToStr(Items[0].NFe.Total.ICMSTot.vSeg));
      AddLinha(memoDadosDaNota,'Valor total do desconto',FloatToStr(Items[0].NFe.Total.ICMSTot.vDesc));
      AddLinha(memoDadosDaNota,'','');
      AddLinha(memoDadosDaNota,'Valor total do IPI',FloatToStr(Items[0].NFe.Total.ICMSTot.vIPI));
      AddLinha(memoDadosDaNota,'Valor total do PIS',FloatToStr(Items[0].NFe.Total.ICMSTot.vPIS));
      AddLinha(memoDadosDaNota,'Valor total do COFINS',FloatToStr(Items[0].NFe.Total.ICMSTot.vCOFINS));
      AddLinha(memoDadosDaNota,'Outras despesas acessórioas',FloatToStr(Items[0].NFe.Total.ICMSTot.vOutro));
      AddLinha(memoDadosDaNota,'','');
      AddLinha(memoDadosDaNota,'Valor total da NF-e',FloatToStr(Items[0].NFe.Total.ICMSTot.vNF));
      edt_VLRTOTAL.Text:= FloatToStr(Items[0].NFe.Total.ICMSTot.vNF);
      AddLinha(memoDadosDaNota,'Valor total aproximado total de tributos federais, estaduais e municipais',FloatToStr(Items[0].NFe.Total.ICMSTot.vTotTrib));
      AddLinha(memoDadosDaNota,'','');
      // transportadora
      // "ACBrNFe1.NotasFiscais.Items[0].NFe.Transp"
      sA := modFreteToStr(Items[0].NFe.Transp.modFrete);
      AddLinha(memoDadosDaNota,'Modalidade do frete',sA);
      // "ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta"
      sA := Items[0].NFe.Transp.Transporta.CNPJCPF;
      AddLinha(memoDadosDaNota,'CNPJ/CPF do transportador',sA);
      sA := Items[0].NFe.Transp.Transporta.xNome;
      AddLinha(memoDadosDaNota,'Razão social ou nome do transportador',sA);
      sA := Items[0].NFe.Transp.Transporta.IE;
      AddLinha(memoDadosDaNota,'IE do transportador',sA);
      sA := Items[0].NFe.Transp.Transporta.xEnder;
      AddLinha(memoDadosDaNota,'Endereço do transportador',sA);
      sA := Items[0].NFe.Transp.Transporta.xMun;
      AddLinha(memoDadosDaNota,'Cidade do transportador',sA);
      sA := Items[0].NFe.Transp.Transporta.UF;
      AddLinha(memoDadosDaNota,'UF do transportador',sA);

      AddLinha(memoDadosDaNota,'','');
      // dados da cobrança
      // "ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Fat"
      AddLinha(memoDadosDaNota,'Número da fatura', Items[0].NFe.Cobr.Fat.nFat);
      AddLinha(memoDadosDaNota,'Valor original da fatura', FloatToStr(Items[0].NFe.Cobr.Fat.vOrig));
      AddLinha(memoDadosDaNota,'Valor líquido da fatura', FloatToStr(Items[0].NFe.Cobr.Fat.vLiq));
      // "ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.dup" (TCollection)
      for i := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.dup.Count - 1 do
      begin
        AddLinha(memoDadosDaNota,'','');
        AddLinha(memoDadosDaNota,'Número da duplicata', Items[0].NFe.Cobr.Dup[i].nDup);
        AddLinha(memoDadosDaNota, 'Data de vencimento', FormatDateTime('DD/MM/YYYY',Items[0].NFe.Cobr.Dup[i].dVenc));
        AddLinha(memoDadosDaNota,'Valor da duplicata', FloatToStr(Items[0].NFe.Cobr.Dup[i].vDup));
      end;
      AddLinha(memoDadosDaNota,'','');
      // informações adicionais
      AddLinha(memoDadosDaNota,'Informações adicionais de interesse do fisco',Items[0].NFe.InfAdic.infAdFisco);
      AddLinha(memoDadosDaNota,'Informações adicionais de interesse do contribuinte',Items[0].NFe.InfAdic.infCpl);
    end;
  end;
  btn_valida.Enabled:=true;
end;

procedure Tfrm_IMPORTANOTA.btn_CANCELACOMPRAClick(Sender: TObject);
begin
frm_dlg_cancelacompra.show;
end;

procedure Tfrm_IMPORTANOTA.btn_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_IMPORTANOTA.btn_VALIDAClick(Sender: TObject);
var
  X,NR,C,meufor,ultprod,codprod,item,seqitemcompra:integer;
  campo:string;
begin
item:=1;
//codprod:=6308;
dm_Dados.zqry_CPFORNECED.Close;
dm_dados.zqry_CPFORNECED.sql.Clear;
dm_Dados.zqry_CPFORNECED.sql.add('select * from cpforneced');
dm_dados.zqry_CPFORNECED.sql.add('where cnpjfor=:cnpj and codemp=:empresa');
dm_Dados.zqry_CPFORNECED.ParamByName('cnpj').Value:=edt_cnpj_emite.text;
dm_Dados.zqry_CPFORNECED.ParamByName('empresa').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_CPFORNECED.open;
if dm_dados.zqry_CPFORNECED.IsEmpty then
  begin
    case MessageBox(Handle, 'Fornecedor não localizado. Deseja cadastrar de forma automática?', 'Cadastrar Fornecedor?', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  //se clicar em sim faça isso
        BEGIN
          zquery1.Close;
          zquery1.SQL.Clear;
          zquery1.sql.add('SELECT MAX(codfor) as seqfor FROM cpforneced');
          zquery1.Open;
          seqforneced:=zquery1.FieldByname('seqfor').asInteger;
          ExecutaSGINICONSP;
          dm_dados.zqry_CPFORNECED.Close;
          dm_dados.zqry_CPFORNECED.open;
          dm_Dados.zqry_CPFORNECED.Append;
          dm_dados.zqry_CPFORNECEDCODEMP.AsInteger:=dm_DADOS.CODEMP;
          dm_dados.zqry_CPFORNECEDCODFILIAL.AsInteger:=1;
          dm_dados.zqry_CPFORNECEDCODEMPTF.AsInteger:=dm_DADOS.CODEMP;
          dm_Dados.zqry_CPFORNECEDCODFILIALTF.AsInteger:=1;
          dm_Dados.zqry_CPFORNECEDCODTIPOFOR.AsInteger:=1;
          dm_dados.zqry_CPFORNECEDCODFOR.AsInteger:=seqforneced+1;
          dm_Dados.zqry_CPFORNECEDRAZFOR.AsString:=edt_NOME_EMITE.Text;
          dm_dados.zqry_cpfornecEDnomefor.asstring:=edt_NOME_FANT.Text;
          dm_dados.zqry_CPFORNECEDCNPJFOR.AsString:=edt_CNPJ_EMITE.Text;
          dm_dados.zqry_CPFORNECEDDATAFOR.AsDateTime:=date;
          dm_dados.zqry_CPFORNECEDPESSOAFOR.AsString:='J';
          dm_dados.zqry_CPFORNECEDDTINS.AsDateTime:=date;
          dm_dados.zqry_CPFORNECEDHINS.AsDateTime:=time;
          dm_dados.zqry_CPFORNECEDIDUSUINS.AsString:='sysdba';
          dm_dados.zqry_CPFORNECEDCEPFOR.AsString:=edt_CNPJ_CEP.Text;
          dm_dados.zqry_CPFORNECEDENDFOR.AsString:=edt_CNPJ_LOGRADOURO.Text;
          dm_Dados.zqry_CPFORNECEDBAIRFOR.AsString:=edt_CNPJ_BAIRRO.Text;
          DM_dADOS.zqry_CPFORNECEDSIGLAUF.AsString:=edt_CNPJ_UF.Text;
          DM_dADOS.zqry_CPFORNECEDCODPAIS.AsInteger:=76;
          DM_dADOS.zqry_CPFORNECEDCIDFOR.AsString:=edt_CNPJ_CODCID.Text;
          dm_dados.zqry_CPFORNECEDCODMUNIC.AsString:=copy(edt_CNPJ_CODMUNIC.Text,3,5);
          dm_dados.zqry_CPFORNECED.Post;
          dm_dados.zqry_CPFORNECED.ApplyUpdates;
          showmessage('Fornecedor '+edt_NOME_EMITE.Text+' cadastrado com sucesso');
          btn_VALIDAClick(Self);
        END;
      IDNO:
        BEGIN
          close;
        END;
    end;
  end
else
  begin

  // TODO  FAZER PERGUNTA SE DESEJA IMPORTAR OU NÃO
    case MessageBox(Handle, 'Deseja importar esse XML como Entrada?', 'Importar Pedido?', MB_YESNO + MB_ICONQUESTION) of
    IDYES:  //se clicar em sim faça isso
      begin
        zquery1.Close;
        zquery1.SQL.Clear;
        zquery1.sql.add('SELECT MAX(codcompra) as Sequencia FROM cpcompra');
        zquery1.Open;
        seqcompra:=zquery1.FieldByname('sequencia').asInteger;
        zquery1.Close;
        zquery1.SQL.Clear;
        zquery1.sql.add('SELECT MAX(codcompra) as sequencia FROM cpitcompra');
        zquery1.Open;
        seqitemcompra:=zquery1.FieldByname('sequencia').asInteger+1;
        //showmessage(inttostr(seqitemcompra));
// Sequencia SGSEQUENCIA
        zqry_SEQCP.Params.Clear;
        zqry_SEQCP.Close;
        zqry_SEQCP.SQL.Clear;
        ZQRY_SEQCP.SQL.Add('select * from sgsequencia where sgtab=:compra and codemp=:empresa');
        zqry_SEQCP.ParamByName('compra').AsString:='CP';
        zqry_SEQCP.ParamByName('empresa').AsInteger:=dm_DADOS.CODEMP;
        zqry_seqcp.Open;
//frm_principal.lbl_NFCE.caption:='NFCe: '+inttostr(dm_dados.cds_SGSEQUENCIANFCECONTADOR.Value);
        seqsequencia:=zqry_SEQCPNROSEQ.asinteger;
        if seqsequencia<=seqcompra then seqsequencia:=seqcompra+1;
        dm_dados.zqry_cpcompra.params.clear;
        dm_dados.zqry_CPCOMPRA.Close;
        dm_Dados.zqry_cpcompra.sql.clear;
        dm_dados.zqry_cpcompra.sql.add('select * from cpcompra where codfor=:forcod and codemp=:empcod and doccompra=:doc');
        dm_Dados.zqry_cpcompra.parambyname('forcod').asinteger:=dm_Dados.zqry_cpfornecedcodfor.AsInteger;
        dm_Dados.zqry_cpcompra.ParamByName('empcod').AsInteger:=99;
        dm_dados.zqry_CPCOMPRA.ParamByName('doc').asinteger:=strtoint(edt_NUM_NF.Text);
        dm_dados.zqry_CPCOMPRA.Open;
        if dm_Dados.zqry_CPCOMPRA.IsEmpty then
        begin
          // GRAVA DADOS NA COMPRA
          ExecutaSGINICONSP;
          dm_dados.ZQRY_CPCOMPRA.append;
          dm_dados.zqry_CPCOMPRACODEMP.asinteger:=99;
          dm_dados.zqry_CPCOMPRACODFILIAL.AsInteger:=1;
          dm_dados.zqry_CPCOMPRACODEMPPG.AsInteger:=99;
          dm_dados.zqry_CPCOMPRACODFILIALPG.AsInteger:=1;
          dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger:=seqcompra+1;
          dm_dados.zqry_CPCOMPRACODPLANOPAG.AsInteger:=1;
          dm_dados.zqry_CPCOMPRACODEMPFR.AsInteger:=99;
          dm_dados.zqry_CPCOMPRACODFILIALFR.AsInteger:=1;
          meufor:=dm_Dados.zqry_CPFORNECedCODFOR.AsInteger;
          //showmessage(inttostr(meufor));
          dm_dados.zqry_CPCOMPRACODFOR.AsInteger:=meufor;

          dm_dados.zqry_CPCOMPRACODEMPSE.AsInteger:=99;
          dm_dados.zqry_CPCOMPRACODFILIALSE.AsInteger:=1;
          dm_dados.zqry_CPCOMPRASERIE.AsString:='1';
          dm_dados.zqry_CPCOMPRACODEMPTM.AsInteger:=99;
          dm_dados.zqry_CPCOMPRACODFILIALTM.AsInteger:=1;
          dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger:=301;
          dm_dados.zqry_CPCOMPRADOCCOMPRA.AsInteger:=strtoint(edt_NUM_NF.Text);
          dm_dados.zqry_CPCOMPRADTENTCOMPRA.AsDateTime:=now;
          dm_dados.zqry_CPCOMPRADTEMITCOMPRA.AsDateTime:=strtodate(edt_DT_EMISSAO.Text);
          dm_dados.zqry_CPCOMPRADTCOMPCOMPRA.AsDateTime:=now;
          dm_dados.zqry_CPCOMPRAIMPNOTACOMPRA.AsString:='N';
          dm_dados.zqry_CPCOMPRABLOQCOMPRA.AsString:='N';
          dm_dados.zqry_CPCOMPRAEMMANUT.AsString:='S';
          dm_dados.zqry_CPCOMPRAADICFRETECOMPRA.AsString:='C';
          dm_dados.zqry_CPCOMPRAADICADICCOMPRA.AsString:='S';
          dm_dados.zqry_CPCOMPRASTATUSCOMPRA.AsString:='P1';
          dm_dados.zqry_CPCOMPRACALCTRIB.AsString:='S';
          dm_dados.zqry_CPCOMPRACHAVENFEVALIDA.AsString:='N';
          dm_Dados.zqry_CPCOMPRACHAVENFECOMPRA.AsString:=copy(edt_CHAVE_NF.Text,4,44);
//          dm_Dados.zqry_CPCOMPRAVLRPRODCOMPRA.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
//          dm_Dados.zqry_CPCOMPRAVLRLIQCOMPRA.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
          dm_dados.zqry_CPCOMPRADTINS.AsDateTime:=date;
          dm_dados.zqry_CPCOMPRAHINS.AsDateTime:=time;
          dm_dados.zqry_CPCOMPRAIDUSUINS.AsString:='sysdba';
          dm_dados.zqry_CPCOMPRA.Post;
          dm_Dados.zqry_CPCOMPRA.ApplyUpdates;
          MOSTRATELANOTIFICA('CABEÇALHO DA NOTA LANÇADO','Número NFe '+edt_num_nf.Text);

          // GRAVAR ITENS DA NOTA
          //nl1:= stringgrid3.RowCount -1;
          nl1:= stringgrid3.RowCount -1;
          //showmessage(inttostr(nl1));
          //for X:= 1 to StringGrid3.RowCount -1 do
          for X:= 1 to nl1 do
          begin
            X1:=X;
            // TENTA BUSCAR POR CODIGO
            val(StringGrid3.Cells[0,X],nr,c);
            if c=0 then
            begin
              codproduto:=trunc(StrToDecimal(StringGrid3.Cells[0,X]));
            end
            else
            begin
              codproduto:=0 ;
              ///showmessage('produto');
            end;
            referencia:=StringGrid3.Cells[0,X];
            fabricante:=StringGrid3.Cells[0,X];
            descricao:=StringGrid3.Cells[1,X];
            codbarras:=StringGrid3.Cells[30,X];
            cfop:=StringGrid3.Cells[3,X];
            quant:=StrToFloat(StringReplace(StringGrid3.Cells[5,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            valor:=StrToFloat(StringReplace(StringGrid3.Cells[6,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            bcicms:=strtofloat(StringReplace(StringGrid3.Cells[13,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            aliqicms:=strtofloat(StringReplace(StringGrid3.Cells[14,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            vlricms:=strtofloat(StringReplace(StringGrid3.Cells[15,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            bcipi:=strtofloat(StringReplace(StringGrid3.Cells[18,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            aliqipi:=strtofloat(StringReplace(StringGrid3.Cells[19,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
            vlripi:=strtofloat(StringReplace(StringGrid3.Cells[20,X], FormatSettings.ThousandSeparator,'', [rfReplaceAll]));
             {zquery3.Close;
            zquery3.SQL.Clear;
             zquery3.sql.add('SELECT MAX(codprod) as Sequencia FROM eqproduto');
            zquery3.Open;
             ultprod:=1+zquery3.FieldByname('sequencia').asInteger;
             dm_dados.zqry_EQPRODUTO.Close;
    dm_dados.zqry_EQproduto.Open;
    dm_dados.zqry_EQproduto.Insert;
    dm_dados.zqry_EQPRODUTOCODEMP.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIAL.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODPROD.AsInteger:=ultprod;
    dm_dados.zqry_EQPRODUTODESCPROD.AsString:=descricao;
    dm_dados.zqry_EQPRODUTOREFPROD.AsString:=referencia;
    dm_dados.zqry_EQPRODUTOCODEMPAX.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALAX.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODEMPMA.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALMA.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODEMPUD.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALUD.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODEMPFC.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALFC.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODEMPMC.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALMC.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODEMPGP.AsInteger:=99;
    dm_dados.zqry_EQPRODUTOCODFILIALGP.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODALMOX.AsInteger:=1;
    dm_dados.zqry_EQPRODUTOCODMOEDA.asstring:='R$';
    dm_dados.zqry_EQPRODUTOCODUNID.AsString:='UN';
    dm_dados.zqry_EQPRODUTOCODFISC.AsString:='19059090';
    dm_dados.zqry_EQPRODUTOCODMARCA.AsString:='GENE';
    dm_dados.zqry_EQPRODUTOTIPOPROD.AsString:='P';
    dm_dados.zqry_EQPRODUTOCODGRUP.AsString:='SGRU';
    dm_dados.zqry_EQPRODUTOCODBARPROD.AsString:=codbarras;
    dm_dados.zqry_EQPRODUTOCLOTEPROD.AsString:='N';
    dm_dados.zqry_EQPRODUTOSERIEPROD.AsString:='N';
    dm_dados.zqry_EQPRODUTOCVPROD.AsString:='A';
    dm_dados.zqry_EQPRODUTOCOMISPROD.Asfloat:=0;
    dm_dados.zqry_EQPRODUTOPESOLIQPROD.AsFloat:=0;
    dm_DADOS.zqry_EQPRODUTOPESOBRUTPROD.AsFloat:=0;
    dm_DADOS.zqry_EQPRODUTOQTDMINPROD.AsFloat:=0;
    dm_dados.zqry_EQPRODUTOQTDMAXPROD.AsFloat:=0;
    dm_dados.zqry_EQPRODUTODTMPMPROD.AsDateTime:=now;
    dm_dados.zqry_EQPRODUTOCUSTOMPMPROD.AsFloat:=valor;
    dm_dados.zqry_eqprodutocustoinfoprod.asfloat:=valor;
    dm_dados.zqry_eqprodutoprecobaseprod.asfloat:=valor;
    dm_dados.zqry_EQPRODUTOSLDPROD.AsFloat:=quant;
    dm_dados.zqry_EQPRODUTOSLDLIQPROD.AsFloat:=quant;
    dm_dados.zqry_EQPRODUTOATIVOPROD.AsString:='S';
    dm_dados.zqry_EQPRODUTOUSARECEITAPROD.AsString:='N';//cds_EQPRODUTOusareceitaprod.AsString;
    dm_dados.zqry_EQPRODUTOUSATELAADICPDV.AsString:='N';//cds_EQPRODUTOusatelaadicpdv.AsString;
    dm_Dados.zqry_EQPRODUTOGUIATRAFPROD.AsString:='N';
    dm_dados.zqry_EQPRODUTOQTDEMBALAGEM.AsFloat:=1 ;//else dm_dados.zqry_EQPRODUTOQTDEMBALAGEM.AsFloat:=strtofloat(stringreplace(cds_EQPRODUTOqtdembalagem.asstring, '.', ',', []));
    dm_dados.zqry_EQPRODUTOEMMANUT.AsString:='N';//cds_EQPRODUTOemmanut.AsString;
    dm_dados.zqry_EQPRODUTODTINS.AsDateTime:=now;
    dm_Dados.zqry_EQPRODUTOHINS.AsDateTime:=now;
    dm_Dados.zqry_EQPRODUTOIDUSUINS.AsString:='sysdba';//cds_EQPRODUTOidusuins.AsString;
    dm_dados.zqry_EQPRODUTODTALT.AsDateTime:=now;//strtodate(cds_EQPRODUTOdtalt.asString);
    dm_dados.zqry_EQPRODUTOIDUSUALT.AsString:='sysdba';//cds_EQPRODUTOidusualt.AsString;
    dm_dados.zqry_EQPRODUTOPROMOCAO.AsString:='N';
     dm_dados.zqry_EQPRODUTOCODBALANCA.AsInteger:=999;
   { end;}
  //  dm_dados.zqry_EQPRODUTO.Post;

   executasginiconsp;
   frm_dlg_associaproduto.showmodal;
 {  item:=1;
   dm_Dados.zqry_cpitcompra.close;
   dm_Dados.zqry_cpitcompra.open;
   dm_dados.zqry_cpitcompra.append;

   dm_dados.zqry_cpitcompracodemp.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
   dm_dados.zqry_cpitcompraCODFILIAL.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
   dm_dados.zqry_cpitcompraCODEMPNT.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
   dm_Dados.zqry_cpitcompraCODFILIALNT.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
   dm_dados.zqry_cpitcompraCODEMPPD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
   dm_dados.zqry_cpitcompraCODFILIALPD.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
   dm_dados.zqry_cpitcompraCODEMPAX.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
   dm_Dados.zqry_cpitcompraCODFILIALAX.value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
   dm_dados.zqry_cpitcompraCODEMPNT.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
   dm_Dados.zqry_cpitcompraCODFILIALNT.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
   dm_dados.zqry_CPITCOMPRATIPONFITCOMPRA.AsString:='N';
   // CONSULTA NCM NA CLASSIFICA��O FISCAL
   dm_dados.zqry_cpitcompraCODNAT.Value:=cfop;
   dm_dados.zqry_cpitcompraCODALMOX.Value:=1;
 //  dm_dados.zqry_VDITVENDATIPOFISC.Value:='II';
 //  dm_dados.zqry_VDITVENDATIPOST.Value:='SI';
   dm_dados.zqry_cpitcompraEMMANUT.Value:='N';
 //  dm_dados.zqry_VDITVENDAORIGFISC.Value:='0';
//  dm_dados.zqry_VDITVENDACODTRATTRIB.Value:='40';
  {dm_dados.zqry_cpitcompravlrproditcompra.AsCurrency:=valor;//dm_dados.zqry_ITFASTSALEVLRVENDA.AsCurrency;
  dm_Dados.zqry_CPITCOMPRAVLRDESCITCOMPRA.AsCurrency:=0;
  DM_DADOS.zqry_cpitcompraDTINS.AsDateTime:=DATE;
  DM_dADOS.zqry_cpitcompraHINS.AsDateTime:=TIME;
  dm_Dados.zqry_cpitcompraCODcompra.Value:=seqcompra; // CHAMA A SEQUENCIA
  dm_Dados.zqry_cpitcompraCODITcompra.AsInteger:=x;
  dm_Dados.zqry_cpitcompraCODPROD.AsInteger:=achouproduto;
  dm_Dados.zqry_cpitcompraQTDITcompra.asfloat:=quant;
  dm_Dados.zqry_cpitcompraPRECOITcompra.AsCurrency:=valor;
  DM_DADOS.zqry_cpitcompraIDUSUINS.Value:=dm_dados.usuariousando;
  dm_dados.zqry_cpitcompra.post;
  //dm_dados.zqry_vditvenda.ApplyUpdates();
  item:=item+1;
  //seqitemcompra:=seqitemcompra+1; }





            //variavel2:=StringGrid3.Cells[1,X];
            // Pula produto

          end;
          mostratelaaviso('PRODUTOS LOCALIZADOS FORAM LANÇADOS','Produtos não localizados favor lançar manualmente');

        end
        else
        begin
          mostratelaaviso('NOTA JÁ ESTÁ LANÇADA','Esta NF já se encontra lançada');
        end;
    end;

    IDNO:  //se clicar em não faça isso
      begin
      end;
  end;
  dm_dados.zqry_cpcompra.Edit;
  dm_Dados.zqry_CPCOMPRAVLRPRODCOMPRA.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  dm_dados.zqry_CPCOMPRA.Post;
  dm_Dados.zqry_CPCOMPRA.ApplyUpdates;
 { zquery2.Close;
  zquery2.SQL.Clear;
  zquery2.sql.add('SELECT MAX(codpag) as SequenciaPagar FROM fnpagar');
  zquery2.Open;
  seqpag:=zquery2.FieldByname('sequenciapagar').asInteger;
  ExecutaSGINICONSP;
  dm_dados.zqry_fnpagar.Close;
  dm_dados.zqry_fnpagar.open;
  dm_Dados.zqry_fnpagar.Append;
  dm_dados.zqry_fnpagarcodemp.asinteger:=99;
  dm_dados.zqry_FNPAGARCODFILIAL.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODPAG.AsInteger:=seqpag+1;
  dm_dados.zqry_FNPAGARCODEMPPG.AsInteger:=99;
  dm_dados.zqry_FNPAGARCODFILIALPG.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODPLANOPAG.asinteger:=1;
  dm_dados.zqry_FNPAGARCODEMPFR.AsInteger:=99;
  dm_dados.zqry_FNPAGARCODFILIALFR.AsInteger:=1;
  dm_dados.zqry_FNPAGARCODFOR.AsInteger:=9;//meufor;
  dm_dados.zqry_FNPAGARVLRDEVPAG.AsFloat:=0.00;
  //dm_dados.zqry_FNPAGARVLRPARCPAG.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  //dm_dados.zqry_FNPAGARVLRAPAGPAg.AsFloat:=STRTOFLOAT(edt_VLRTOTAL.Text);
  dm_dados.zqry_FNPAGARDTCOMPPAG.AsDateTime:=date;
  dm_dados.zqry_FNPAGARSTATUSPAG.AsString:='P1';
  dm_dados.zqry_FNPAGAREMMANUT.AsString:='N';
  dm_dados.zqry_fnpagardocpag.AsInteger:=999;//strtoint(edt_NUM_NF.Text);
  dm_dados.zqry_FNPAGAROBSPAG.AsString:='Referente Importação de Nota via XML da NF. n.º '+edt_num_nf.Text;
  dm_dados.zqry_FNPAGARDTINS.AsDateTime:=date;
  dm_dados.zqry_FNPAGARHINS.AsDateTime:=TIME;
  dm_dados.zqry_FNPAGARIDUSUINS.AsString:='SYSDBA';
  dm_dados.zqry_FNPAGAR.Post;
  SHOWMESSAGE('VEIO ATE AQUUI');
  //dm_dados.zqry_FNPAGAR.ApplyUpdates;
  dm_dados.zqry_FNITPAGAR.Close;
  dm_dados.zqry_FNITPAGAR.Open;
  dm_dados.zqry_FNITPAGAR.Append;
  dm_dados.zqry_FNITPAGARCODEMP.asinteger:=99;
  dm_dados.zqry_FNITPAGARCODFILIAL.asinteger:=1;
  dm_dados.zqry_FNITPAGARCODPAG.AsInteger:=seqpag+1;
  dm_dados.zqry_FNITPAGARNPARCPAG.AsInteger:=1;
  dm_dados.zqry_FNITPAGARVLRITPAG.AsFloat:=1.99;//strtofloat(edt_vlrtotal.Text);
  dm_dados.zqry_FNITPAGARVLRDEVITPAG.AsFloat:=0.00;
  dm_dados.zqry_FNITPAGARVLRPARCITPAG.AsFloat:=1.99;//strtofloat(edt_vlrtotal.Text);
  dm_dados.zqry_FNITPAGARDTITPAG.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARDTCOMPITPAG.asdatetime:=date;
  dm_Dados.zqry_FNITPAGARDTVENCITPAG.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARSTATUSITPAG.AsString:='P1';
  dm_dados.zqry_FNITPAGAREMMANUT.AsString:='N';
  dm_dados.zqry_FNITPAGARDTINS.AsDateTime:=date;
  dm_dados.zqry_FNITPAGARHINS.AsDateTime:=time;
  dm_dados.zqry_FNITpagarIDUSUINS.AsString:='sysdba';
  dm_dados.zqry_FNITPAGAR.Post;
  dm_dados.zqry_FNITPAGAR.ApplyUpdates ;
  dm_dados.zqry_FNPAGAR.applyupdates;      }
//  showmessage('Dados Inseridos');
 end;
end;

procedure Tfrm_IMPORTANOTA.carregaItens;
var
   i: integer;
begin
   StringGrid3.Cells[0,0] := 'Código';
   StringGrid3.Cells[1,0] := 'Descricao';
   StringGrid3.Cells[2,0] := 'NCM';
   StringGrid3.Cells[3,0] := 'CFOP';
   StringGrid3.Cells[4,0] := 'Unidade';
   StringGrid3.Cells[5,0] := 'Quantidade comercial';
   StringGrid3.Cells[6,0] := 'Valor unitário de comercialização';
   StringGrid3.Cells[7,0] := 'Valor total bruto dos produtos ou serviços';
   StringGrid3.Cells[8,0] := 'Unidade tributável';
   StringGrid3.Cells[9,0] := 'Quantidade tributável';
   StringGrid3.Cells[10,0] := 'Valor unitário de tributação';
   StringGrid3.Cells[11,0] := 'ICMS : CST do ICMS';
   StringGrid3.Cells[12,0] := 'ICMS : modalidade da BC do ICMS';
   StringGrid3.Cells[13,0] := 'ICMS : valor da BC do ICMS';
   StringGrid3.Cells[14,0] := 'ICMS : alíquota do ICMS';
   StringGrid3.Cells[15,0] := 'ICMS : valor do ICMS';
   StringGrid3.Cells[16,0] := 'IPI : Classe de enquadramento do IPI';
   StringGrid3.Cells[17,0] := 'IPI : CST do IPI';
   StringGrid3.Cells[18,0] := 'IPI : valor da BC do IPI';
   StringGrid3.Cells[19,0] := 'IPI : alíquota do IPI';
   StringGrid3.Cells[20,0] := 'IPI : valor do IPI';
   StringGrid3.Cells[21,0] := 'PIS : CST do PIS';
   StringGrid3.Cells[22,0] := 'PIS : valor da BC do PIS';
   StringGrid3.Cells[23,0] := 'PIS : alíquota do PIS';
   StringGrid3.Cells[24,0] := 'PIS : valor do PIS';
   StringGrid3.Cells[25,0] := 'COFINS : CST do COFINS';
   StringGrid3.Cells[26,0] := 'COFINS : valor da BC do COFINS';
   StringGrid3.Cells[27,0] := 'COFINS : alíquota do COFINS';
   StringGrid3.Cells[28,0] := 'COFINS : valor do COFINS';
   StringGrid3.Cells[29,0] := 'Informação adicional sobre o produto';
   Stringgrid3.RowCount := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count+1;
   // coleção de itens da nota "Det" (class TCollection)
   for i := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count - 1 do
   begin
      with ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i] do
      begin
        StringGrid3.Cells[0,i+1] := Prod.cProd;
        StringGrid3.Cells[1,i+1] := Prod.xProd;
        StringGrid3.Cells[2,i+1] := Prod.NCM;
        StringGrid3.Cells[3,i+1] := Prod.CFOP;
        StringGrid3.Cells[4,i+1] := Prod.uCom;
        StringGrid3.Cells[5,i+1] := FormatFloat('###,###,###0.0000', Prod.qCom);
        StringGrid3.Cells[6,i+1] := FormatFloat('###,###,###0.0000', Prod.vUnCom);
        StringGrid3.Cells[7,i+1] := FormatFloat('###,###,###0.0000', Prod.vProd);
        StringGrid3.Cells[8,i+1] := Prod.uTrib;
        StringGrid3.Cells[9,i+1] := FormatFloat('###,###,###0.0000', Prod.qTrib);
        StringGrid3.Cells[10,i+1] := FormatFloat('###,###,###0.0000', Prod.vUnTrib);
        // ****************** ICMS ******************
        // tributação do ICMS
        StringGrid3.Cells[11,i+1] := CSTICMSToStr(Imposto.ICMS.CST);
        // Modalidade de determinação da BC(base de calculo) do ICMS
        StringGrid3.Cells[12,i+1] := modBCToStr(Imposto.ICMS.modBC);
        StringGrid3.Cells[13,i+1] := FormatFloat('###,###,###0.0000', Imposto.ICMS.vBC);
        StringGrid3.Cells[14,i+1] := FormatFloat('###,###,###0.0000', Imposto.ICMS.pICMS );
        StringGrid3.Cells[15,i+1] := FormatFloat('###,###,###0.0000', Imposto.ICMS.vICMS);
        // ****************** IPI ******************
        StringGrid3.Cells[16,i+1] := Imposto.IPI.cEnq;
        StringGrid3.Cells[17,i+1] :=  CSTIPIToStr(Imposto.IPI.CST);
        StringGrid3.Cells[18,i+1] := FormatFloat('###,###,###0.0000', Imposto.IPI.vBC);
        StringGrid3.Cells[19,i+1] := FormatFloat('###,###,###0.0000', Imposto.IPI.pIPI);
        StringGrid3.Cells[20,i+1] := FormatFloat('###,###,###0.0000', Imposto.IPI.vIPI);
        // ****************** PIS ******************
        StringGrid3.Cells[21,i+1] := CSTPISToStr(Imposto.PIS.CST);
        StringGrid3.Cells[22,i+1] := FormatFloat('###,###,###0.0000', Imposto.PIS.vBC);
        StringGrid3.Cells[23,i+1] := FormatFloat('###,###,###0.0000', Imposto.PIS.pPIS);
        StringGrid3.Cells[24,i+1] := FormatFloat('###,###,###0.0000', Imposto.PIS.vPIS);
        // ****************** COFINS ******************
        StringGrid3.Cells[25,i+1] := CSTCOFINSToStr(Imposto.COFINS.CST);
        StringGrid3.Cells[26,i+1] := FormatFloat('###,###,###0.0000', Imposto.COFINS.vBC);
        StringGrid3.Cells[27,i+1] := FormatFloat('###,###,###0.0000', Imposto.COFINS.pCOFINS);
        StringGrid3.Cells[28,i+1] := FormatFloat('###,###,###0.0000', Imposto.COFINS.vCOFINS);

        StringGrid3.Cells[29,i+1] := infAdProd;
        StringGrid3.Cells[30,i+1] := Prod.cEAN;
      end;
   end; // fim do loop dos items "</det>"
end;
end.