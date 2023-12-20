unit fechacupom;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,ShellApi,ACBrBase,
  ACBrTroco, Vcl.ComCtrls, Vcl.Menus, Data.DB, Vcl.Mask, Vcl.DBCtrls, Printers, WinSpool,
  Vcl.Grids, Vcl.DBGrids, ACBrDFe,ACBrNFe, IniFiles,OleCtrls,
  pcnConversao,ACBrUtil,ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,  XMLIntf, XMLDoc, ACBrMail,
  ACBrNFeDANFeRLClass,  ACBrPosPrinter, Spin, pcnconversaonfe, rlprinters,
  System.DateUtils,Datasnap.Provider, Datasnap.DBClient, ACBrTEFD, Vcl.Imaging.jpeg, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Cappta_Gp_Api_Com_TLB,
  IdExplicitTLSClientServerBase, IdFTP, math, SHDocVw;
type
  Tfrm_FECHACUPOM = class(TForm)
    ACBrTroco1: TACBrTroco;
    PopupMenu1: TPopupMenu;
    d1: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    C3: TMenuItem;
    C4: TMenuItem;
    O1: TMenuItem;
    F1: TMenuItem;
    DataSource1: TDataSource;
    N1: TMenuItem;
    Kill1: TMenuItem;
    zdts_SGSEQUENCIAREC: TDataSource;
    zqry_SGSEQUENCIAREC: TZQuery;
    zqry_SGSEQUENCIARECCODEMP: TIntegerField;
    zqry_SGSEQUENCIARECCODFILIAL: TSmallintField;
    zqry_SGSEQUENCIARECSGTAB: TWideStringField;
    zqry_SGSEQUENCIARECNROSEQ: TIntegerField;
    zqry_SGSEQUENCIARECDTINS: TDateField;
    zqry_SGSEQUENCIARECHINS: TTimeField;
    zqry_SGSEQUENCIARECIDUSUINS: TWideStringField;
    zqry_SGSEQUENCIARECDTALT: TDateField;
    zqry_SGSEQUENCIARECHALT: TTimeField;
    zqry_SGSEQUENCIARECIDUSUALT: TWideStringField;
    ZQuery1: TZQuery;
    zqry_SGINICONSP: TZQuery;
    zdts_SGINICONSP: TDataSource;
    Memo_Troco: TMemo;
    btn_CREDITO: TBitBtn;
    btn_DINHEIRO: TBitBtn;
    btn_CREDLOJA: TBitBtn;
    btn_CHEQUE: TBitBtn;
    btn_DEBITO: TBitBtn;
    edt_valortroco: TEdit;
    edt_valorpago: TEdit;
    btn_GRAVAFAST: TBitBtn;
    zqry_ITFISCAL: TZQuery;
    zdts_ITFISCAL: TDataSource;
    zqry_ITFISCALCODEMP: TIntegerField;
    zqry_ITFISCALCODFISC: TWideStringField;
    zqry_ITFISCALCODTIPOMOV: TIntegerField;
    zqry_ITFISCALCSOSN: TWideStringField;
    zqry_ITFISCALCODITFISC: TIntegerField;
    zqry_ITFISCALCODTRATTRIB: TWideStringField;
    zqry_ITFISCALALIQFISC: TFloatField;
    zqry_ITFISCALMARGEMVLAGR: TFloatField;
    zqry_ITFISCALALIQLFISC: TFloatField;
    zqry_ITFISCALALIQICMSSTCM: TFloatField;
    zqry_ITFISCALNOUFITFISC: TWideStringField;
    zqry_ITFISCALCLENQ: TIntegerField;
    zqry_ITFISCALCENQ: TWideStringField;
    zqry_ITFISCALCODSITTRIBIPI: TWideStringField;
    zqry_ITFISCALCODMENS: TIntegerField;
    zqry_ITREGRAFISCAL: TZQuery;
    zdts_ITREGRAFISCAL: TDataSource;
    zqry_ITREGRAFISCALCODEMP: TIntegerField;
    zqry_ITREGRAFISCALCODFILIAL: TSmallintField;
    zqry_ITREGRAFISCALCODREGRA: TWideStringField;
    zqry_ITREGRAFISCALCODNAT: TWideStringField;
    zqry_ITREGRAFISCALNOUFITRF: TWideStringField;
    zqry_ITREGRAFISCALCVITRF: TWideStringField;
    zqry_ITREGRAFISCALCODEMPTM: TIntegerField;
    zqry_ITREGRAFISCALCODFILIALTM: TSmallintField;
    zqry_ITREGRAFISCALCODTIPOMOV: TIntegerField;
    zqry_ITREGRAFISCALDTINS: TDateField;
    zqry_ITREGRAFISCALHINS: TTimeField;
    zqry_ITREGRAFISCALIDUSUINS: TWideStringField;
    zqry_ITREGRAFISCALDTALT: TDateField;
    zqry_ITREGRAFISCALHALT: TTimeField;
    zqry_ITREGRAFISCALIDUSUALT: TWideStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBText1: TDBText;
    DBGrid1: TDBGrid;
    btn_BUSCACUPOM: TBitBtn;
    edt_CUPOMDESC: TEdit;
    Label8: TLabel;
    DBText2: TDBText;
    btn_BUSCAVENDEDOR: TBitBtn;
    edt_CODVEND: TEdit;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    Memo1: TMemo;
    memoRespWS: TMemo;
    wbresposta: TWebBrowser;
    memodados: TMemo;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    GroupBox1: TGroupBox;
    edt_CODCLIENTE: TEdit;
    btn_BUSCACLIENTE: TBitBtn;
    edt_valorvenda: TEdit;
    lbl_NUMCUPOM: TLabel;
    edt_VLRDESC: TEdit;
    lbl_TOTALAPAGAR: TLabel;
    lbl_FORMAPAGTO: TLabel;
    ConsultaCliente1: TMenuItem;
    N2: TMenuItem;
    ContinuarVendendo1: TMenuItem;
    Image1: TImage;
    TMemoResultado: TMemo;
    RadioButtonPagamentoCreditoSemParcelas: TRadioButton;
    RadioButtonPagamentoCreditoComParcelas: TRadioButton;
    Label11: TLabel;
    Label12: TLabel;
    db_NUMPARC: TDBText;
    btn_CONTINUA: TBitBtn;
    btn_EMITENFCE: TBitBtn;
    btn_FECHA: TBitBtn;
    btn_EMITESAT: TBitBtn;
    mVENDAENVIAR: TMemo;
    mLOG: TMemo;
    tsRECEBIDO: TTabSheet;
    mRECEBIDO: TWebBrowser;
    STMFe1: TMenuItem;
    ExtrairLog1: TMenuItem;
    extFimaFim1: TMenuItem;
    CarregarXML1: TMenuItem;
    OpenDialog1: TOpenDialog;
    tsGERADO: TTabSheet;
    zqry_EQPRODUTO: TZQuery;
    zdts_EQPRODUTO: TDataSource;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCODUNID: TWideStringField;
    zqry_EQPRODUTOCEST: TWideStringField;
    zqry_EQPRODUTOPRECOBASEPROD: TFloatField;
    edt_CPF: TEdit;
    edt_NOMECLI: TEdit;
    lbl_FALTA: TLabel;
    DBText3: TDBText;
    lbl_focus: TLabel;
    Foco1: TMenuItem;
    DBText4: TDBText;
    Label1: TLabel;
    edt_OBSVENDA: TEdit;
    IdFTP1: TIdFTP;
    Label2: TLabel;
    Label3: TLabel;
    lbl_msgsis: TLabel;
    zqry_SEQNFCE: TZQuery;
    zdts_SEQNFCE: TDataSource;
    zqry_SEQNFCEULTNFCE: TIntegerField;
    zqry_VDVENDA: TZQuery;
    zqry_VDVENDACODEMP: TIntegerField;
    zqry_VDVENDACODFILIAL: TSmallintField;
    zqry_VDVENDATIPOVENDA: TWideStringField;
    zqry_VDVENDACODVENDA: TIntegerField;
    zqry_VDVENDASUBTIPOVENDA: TWideStringField;
    zqry_VDVENDACODEMPVD: TIntegerField;
    zqry_VDVENDACODFILIALVD: TSmallintField;
    zqry_VDVENDACODVEND: TIntegerField;
    zqry_VDVENDACODEMPCL: TIntegerField;
    zqry_VDVENDACODFILIALCL: TSmallintField;
    zqry_VDVENDACODCLI: TIntegerField;
    zqry_VDVENDACODEMPPG: TIntegerField;
    zqry_VDVENDACODFILIALPG: TSmallintField;
    zqry_VDVENDACODPLANOPAG: TIntegerField;
    zqry_VDVENDACODEMPSE: TIntegerField;
    zqry_VDVENDACODFILIALSE: TSmallintField;
    zqry_VDVENDASERIE: TWideStringField;
    zqry_VDVENDACODEMPTM: TIntegerField;
    zqry_VDVENDACODFILIALTM: TSmallintField;
    zqry_VDVENDACODTIPOMOV: TIntegerField;
    zqry_VDVENDACODEMPCX: TIntegerField;
    zqry_VDVENDACODFILIALCX: TSmallintField;
    zqry_VDVENDACODCAIXA: TIntegerField;
    zqry_VDVENDADOCVENDA: TIntegerField;
    zqry_VDVENDADTSAIDAVENDA: TDateField;
    zqry_VDVENDADTEMITVENDA: TDateField;
    zqry_VDVENDADTCOMPVENDA: TDateField;
    zqry_VDVENDACODEMPRM: TIntegerField;
    zqry_VDVENDACODFILIALRM: TSmallintField;
    zqry_VDVENDATICKET: TIntegerField;
    zqry_VDVENDAVLRPRODVENDA: TFloatField;
    zqry_VDVENDAPERCDESCVENDA: TFloatField;
    zqry_VDVENDAVLRDESCVENDA: TFloatField;
    zqry_VDVENDAVLRDESCITVENDA: TFloatField;
    zqry_VDVENDAVLRVENDA: TFloatField;
    zqry_VDVENDAVLRBASEICMSVENDA: TFloatField;
    zqry_VDVENDAVLRICMSVENDA: TFloatField;
    zqry_VDVENDACALCICMSVENDA: TWideStringField;
    zqry_VDVENDAIMPICMSVENDA: TWideStringField;
    zqry_VDVENDAVLRISENTASVENDA: TFloatField;
    zqry_VDVENDAVLROUTRASVENDA: TFloatField;
    zqry_VDVENDAVLRBASEIPIVENDA: TFloatField;
    zqry_VDVENDAVLRLIQVENDA: TFloatField;
    zqry_VDVENDAPERCCOMISVENDA: TFloatField;
    zqry_VDVENDAVLRCOMISVENDA: TFloatField;
    zqry_VDVENDASTATUSVENDA: TWideStringField;
    zqry_VDVENDAVLRFRETEVENDA: TFloatField;
    zqry_VDVENDAVLRADICVENDA: TFloatField;
    zqry_VDVENDAVLRIPIVENDA: TFloatField;
    zqry_VDVENDACALCIPIVENDA: TWideStringField;
    zqry_VDVENDAIMPIPIVENDA: TWideStringField;
    zqry_VDVENDAOBSVENDA: TWideStringField;
    zqry_VDVENDACODEMPBO: TIntegerField;
    zqry_VDVENDACODFILIALBO: TSmallintField;
    zqry_VDVENDACODBANCO: TWideStringField;
    zqry_VDVENDACODEMPTC: TIntegerField;
    zqry_VDVENDACODFILIALTC: TSmallintField;
    zqry_VDVENDACODTIPOCOB: TIntegerField;
    zqry_VDVENDAVLRBASEISSVENDA: TFloatField;
    zqry_VDVENDAVLRISSVENDA: TFloatField;
    zqry_VDVENDACALCISSVENDA: TWideStringField;
    zqry_VDVENDAIMPIISSVENDA: TWideStringField;
    zqry_VDVENDAIMPNOTAVENDA: TWideStringField;
    zqry_VDVENDAFLAG: TWideStringField;
    zqry_VDVENDACODCLASCOMIS: TWideStringField;
    zqry_VDVENDAVLRPISVENDA: TFloatField;
    zqry_VDVENDACALCPISVENDA: TWideStringField;
    zqry_VDVENDAIMPPISVENDA: TWideStringField;
    zqry_VDVENDAVLRCOFINSVENDA: TFloatField;
    zqry_VDVENDACALCCOFINSVENDA: TWideStringField;
    zqry_VDVENDAIMPCOFINSVENDA: TWideStringField;
    zqry_VDVENDAVLRIRVENDA: TFloatField;
    zqry_VDVENDACALCIRVENDA: TWideStringField;
    zqry_VDVENDAIMPIRVENDA: TWideStringField;
    zqry_VDVENDAVLRCSOCIALVENDA: TFloatField;
    zqry_VDVENDACALCCSOCIALVENDA: TWideStringField;
    zqry_VDVENDAIMPCSOCIALVENDA: TWideStringField;
    zqry_VDVENDAPERCMCOMISVENDA: TFloatField;
    zqry_VDVENDACODEMPCM: TIntegerField;
    zqry_VDVENDACODFILIALCM: TIntegerField;
    zqry_VDVENDACODCLCOMIS: TIntegerField;
    zqry_VDVENDACODEMPCB: TIntegerField;
    zqry_VDVENDACODFILIALCB: TSmallintField;
    zqry_VDVENDACODCARTCOB: TWideStringField;
    zqry_VDVENDAPEDCLIVENDA: TWideStringField;
    zqry_VDVENDAVLRICMSSTVENDA: TFloatField;
    zqry_VDVENDAVLRBASEICMSSTVENDA: TFloatField;
    zqry_VDVENDAEMMANUT: TWideStringField;
    zqry_VDVENDABLOQVENDA: TWideStringField;
    zqry_VDVENDAVLRICMSSIMPLES: TFloatField;
    zqry_VDVENDAPERCICMSSIMPLES: TFloatField;
    zqry_VDVENDAVLRBASEPISVENDA: TFloatField;
    zqry_VDVENDAVLRBASECOFINSVENDA: TFloatField;
    zqry_VDVENDAVLRBASECOMIS: TFloatField;
    zqry_VDVENDACHAVENFEVENDA: TWideStringField;
    zqry_VDVENDACODEMPCA: TIntegerField;
    zqry_VDVENDACODFILIALCA: TSmallintField;
    zqry_VDVENDANUMCONTA: TWideStringField;
    zqry_VDVENDAOBSREC: TWideStringField;
    zqry_VDVENDAINFCOMPL: TWideStringField;
    zqry_VDVENDASITDOC: TWideStringField;
    zqry_VDVENDAOBSNFE: TWideStringField;
    zqry_VDVENDADESCIPIVENDA: TWideStringField;
    zqry_VDVENDACODEMPOP: TIntegerField;
    zqry_VDVENDACODFILIALOP: TSmallintField;
    zqry_VDVENDASEQOP: TSmallintField;
    zqry_VDVENDACODOP: TIntegerField;
    zqry_VDVENDALOCALSERV: TWideStringField;
    zqry_VDVENDANROATUALIZADO: TWideStringField;
    zqry_VDVENDACNF: TLargeintField;
    zqry_VDVENDASITCOMPLVENDA: TWideStringField;
    zqry_VDVENDAMOTIVOCANCVENDA: TWideStringField;
    zqry_VDVENDADTINS: TDateField;
    zqry_VDVENDAHINS: TTimeField;
    zqry_VDVENDAIDUSUINS: TWideStringField;
    zqry_VDVENDADTALT: TDateField;
    zqry_VDVENDAHALT: TTimeField;
    zqry_VDVENDAIDUSUALT: TWideStringField;
    zqry_VDVENDAVLRSIMPLES: TFloatField;
    zqry_VDVENDATIPOENVIO: TWideStringField;
    zqry_VDVENDACODMOT: TIntegerField;
    zqry_VDVENDACODVEIC: TIntegerField;
    zqry_VDVENDAOBSENTREGA: TWideStringField;
    zqry_VDVENDANOMEMOT: TWideStringField;
    zqry_VDVENDAPLACA: TWideStringField;
    zqry_VDVENDAREQUERMONTAGEM: TWideStringField;
    zqry_VDVENDAPONTOREFERENCIA: TWideStringField;
    zqry_VDVENDACODATEND: TIntegerField;
    zqry_VDVENDACODEMPAT: TIntegerField;
    zqry_VDVENDACODFILIALAT: TSmallintField;
    zqry_VDVENDAVDCOMERCIAL: TWideStringField;
    zqry_VDVENDAVDVENDEXTERNO: TWideStringField;
    zqry_VDVENDAVDCOMMERCE: TWideStringField;
    zqry_VDVENDAENTREGUE: TWideStringField;
    zqry_VDVENDAIDFASTSALE: TIntegerField;
    zqry_VDVENDANOMECLI: TWideStringField;
    zdts_VDVENDA: TDataSource;
    lbl_NUMVENDA: TLabel;
    DBGrid2: TDBGrid;
    procedure btn_FECHAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edt_valorpagoKeyPress(Sender: TObject; var Key: Char);
    procedure CALCULO;
    procedure btn_DINHEIROClick(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure btn_CHEQUEClick(Sender: TObject);
    procedure btn_DEBITOClick(Sender: TObject);
    procedure btn_CREDITOClick(Sender: TObject);
    procedure d1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure Kill1Click(Sender: TObject);
    procedure btn_CREDLOJAClick(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_CODCLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CODVENDKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCACLIENTEClick(Sender: TObject);
    procedure edt_CUPOMDESCKeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCACUPOMClick(Sender: TObject);
    procedure btn_BUSCAVENDEDORClick(Sender: TObject);
    procedure btn_GRAVAFASTClick(Sender: TObject);
    procedure edt_CODVENDEnter(Sender: TObject);
    procedure fechaconexoes;
    procedure encerracupom;
    procedure PrepararImpressao;
    procedure PulaNFCe;
    procedure fechoucerto;
//    procedure AtualizarResultado(mensagem: string);
    procedure FormCreate(Sender: TObject);
    procedure btn_EMITENFCEClick(Sender: TObject);
    procedure btn_OUTROSClick(Sender: TObject);
    procedure edt_VLRDESCExit(Sender: TObject);
    procedure edt_VLRDESCKeyPress(Sender: TObject; var Key: Char);
    procedure ConsultaCliente1Click(Sender: TObject);
    procedure ContinuarVendendo1Click(Sender: TObject);
    procedure btn_CONTINUAClick(Sender: TObject);
    procedure btn_EMITESATClick(Sender: TObject);
    procedure LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
    procedure CarregarXML1Click(Sender: TObject);
    procedure ExtrairLog1Click(Sender: TObject);
    procedure edt_CPFExit(Sender: TObject);
    procedure edt_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure edt_NOMECLIExit(Sender: TObject);
    procedure edt_NOMECLIKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VLRDESCEnter(Sender: TObject);
    procedure edt_CODCLIENTEEnter(Sender: TObject);
    procedure edt_CPFEnter(Sender: TObject);
    procedure edt_NOMECLIEnter(Sender: TObject);
    procedure edt_CUPOMDESCEnter(Sender: TObject);
    procedure edt_valorpagoEnter(Sender: TObject);
    procedure edt_valorpagoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Foco1Click(Sender: TObject);
    procedure edt_OBSVENDAEnter(Sender: TObject);
    procedure edt_OBSVENDAExit(Sender: TObject);
    procedure edt_OBSVENDAKeyPress(Sender: TObject; var Key: Char);
    procedure LimpaSpool;
  private

    desabilitaEnter: Boolean;
    { Private declarations }
//    procedure GravarConfiguracao ;
//    procedure LerConfiguracao ;
//    procedure GerarNFe(NumNFe : String);
//    procedure AtualizaSSLLibsCombo;
//    procedure LoadConsulta201(XML: AnsiString);
  public
    { Public declarations }
    procedure GerarNFCe(NumNFe : String);
    var
      seqvenda, sequencia, item, vendedor, totitens, contador, codigoproduto, cod_pedido, tipo_pagto, buscacliente, R,  numeronf, cliente,meucupom, minhavenda:integer;
      valorvenda,valorfechamento, valorpago, pago,valortroco, valordesconto, desconto,totalpagar, precounitario,
      pagodinheiro, pagodebito,pagocredito,apagar,falta, valorcheio,valorliquido:double;
      CPF, nome, CNPJ, DATA, NOMEMUNIC,CHAVE_NFE, RECIBO_NFE,
      descricao, ncm, ean,uni, cest, cpfcliente, cnpjcliente,pessoacliente,iecliente,ufcliente,
      ESTADO1,ESTADO2, EMAILDEST,
      INSCRICAO, ERRO, FORMAPAGTO, OBSERVA,valoradic,sArquivoEntNfe:STRING

  end;

var
  frm_FECHACUPOM: Tfrm_FECHACUPOM;
  ufigual : integer;



implementation

{$R *.dfm}

uses checkout, principal, dados, ufrmStatus, uaguarde, uFuncoes , cupom,
  descpagto, rel_pedido, prefacbr, rel_tef, con_clientes, verificainternet,
  rel_pedido50;

Function GetCurrentPrinterHandle: THandle;
      Const
        Defaults: TPrinterDefaults = (
          pDatatype : nil;
          pDevMode  : nil;
          DesiredAccess : PRINTER_ACCESS_USE or PRINTER_ACCESS_ADMINISTER
    );
      Var
        Device, Driver, Port : array[0..255] of char;
        hDeviceMode: THandle;
      Begin { GetCurrentPrinterHandle }
        Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
        If not OpenPrinter(@Device, Result, @Defaults) Then
          RaiseLastWin32Error;
      End;

function StrZero(const strvalor: string; const intComprimento: integer): string;
var
   strZeros, strRetorno   : string;
   intTamanho, intContador: integer;
begin
   intTamanho      := Length(Trim(strvalor));
   strZeros        := ' ';
   for intContador := 1 to intComprimento do
      strZeros     := strZeros + '0';
   strRetorno      := Copy(Trim(strZeros) + Trim(strvalor), intTamanho + 1, intComprimento);
   Result          := strRetorno;
end;

function ZerarTxt(FileName: String): Boolean;
var
   TXT: TextFile;
begin
   try
      Result := True;
      try
         AssignFile(TXT, FileName);
         Rewrite(TXT)
      finally
         CloseFile(TXT);
      end;
   except
      Result := False;
   end;
end;

function RemoveAcento(aText : string) : string;
const
  ComAcento = 'àâêôûãõáéíóúçüñýÀÂÊÔÛÃÕÁÉÍÓÚÇÜÑÝ';
  SemAcento = 'aaeouaoaeioucunyAAEOUAOAEIOUCUNY';
var
  x: Cardinal;
begin;
  for x := 1 to Length(aText) do
  try
    if (Pos(aText[x], ComAcento) <> 0) then
      aText[x] := SemAcento[ Pos(aText[x], ComAcento) ];
  except on E: Exception do
    raise Exception.Create('Erro no processo.');
  end;

  Result := aText;
end;

function PegaTimeZone: string;
var
   TimeZone: TTimeZoneInformation;
begin
   GetTimeZoneInformation(TimeZone);
   Result := FormatFloat('00', TimeZone.Bias div -60) + ':00';
end;

procedure Tfrm_FECHACUPOM.LimpaSpool;
begin
  winexec(PAnsiChar('cmd /c net stop spooler'), sw_hide);
  winexec(PAnsiChar('cmd /c cd %systemroot%\system32\spool\PRINTERS'), sw_hide);
  winexec(PAnsiChar('cmd /c del /f /s *.shd'),sw_hide);
  winexec(PAnsiChar('cmd /c net start spooler'), sw_hide);
  sleep(300);
  lbl_msgsis.Caption:='Zerando Spooler';
  lbl_msgsis.update;
end;

Procedure PurgeJobsOnCurrentPrinter;
      Var
        hPrinter: THandle;
      Begin
        hPrinter:= GetCurrentPrinterHandle;
        try
          If not WinSpool.SetPrinter( hPrinter, 0, nil,
    PRINTER_CONTROL_PURGE )
          Then
            RaiseLastWin32Error;
        finally
          ClosePrinter( hPrinter );
        end;
      End;

procedure Tfrm_FECHACUPOM.fechoucerto;
begin
frm_cupom.valortotal:=0;
frm_cupom.precoproduto:=0;
frm_cupom.precototal:=0;
frm_cupom.item:=0;
frm_cupom.edt_ean.Clear;
frm_cupom.LBL_CUPOM.Caption:='';
frm_cupom.lbl_PRODUTO.caption:='';
frm_cupom.lbl_PRECO.Caption:='';
frm_cupom.lbl_VALORTOTAL.Caption:='';
frm_cupom.edt_PRECOVENDA.Clear;
frm_DESCPAGTO.edt_DESCPAGTO.text:='';
frm_DESCPAGTO.edt_CODTIPOCOB.Text:='';



  edt_CPF.Clear;
  edt_NOMECLI.Clear;
  edt_OBSVENDA.Clear;
  FRM_PRINCIPAL.contaNOTAS;
  dm_dados.zqry_fnplanopag.cancel;
  dm_dados.zqry_VDFRETEVD.cancel;
  dm_Dados.zqry_VDVENDA.cancel;
  dm_Dados.zqry_VDITVENDA.cancel;
  dm_dados.zqry_FASTSALE.cancel;
  dm_Dados.zqry_itfastsale.cancel;
  dm_Dados.zqry_VDVENDEDOR.cancel;
  dm_Dados.zqry_PVMOVCAIXA.Cancel;

  dm_dados.zqry_SGSEQUENCIANFCE.Close;
  dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
  dm_dados.zqry_SGSEQUENCIANFCE.SQL.Add('select * from sgsequencianfce where codemp=:empcod');
  dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencianfce.Open;

  dm_Dados.zqry_FNPLANOPAG.Close;
  dm_Dados.zqry_VDFRETEVD.Close;
  dm_dados.zqry_VDITVENDA.Close;
  dm_dados.zqry_FASTSALE.Close;
  dm_dados.zqry_ITFASTSALE.Close;
  dm_dados.zqry_VDVENDEDOR.Close;

end;

procedure Tfrm_FECHACUPOM.PulaNFCe;
begin
  zqry_SEQNFCE.Close;
  zqry_SEQNFCE.SQL.Clear;
  zqry_SEQNFCE.SQL.ADD('select max(contador) as ultnfce from sgsequencianfce where codemp=:empcod');
  zqry_SEQNFCE.parambyname('empcod').asinteger:=dm_dados.codemp;
  zqry_SEQNFCE.open;
  //MostraTelaAguarde('Próxima Nota a ser emitida n.º '+ inttostr({numeronf+1}1));
  //vaux:=frm_principal.db_NFCE.Caption;
  numeronf:=zqry_SEQNFCEULTNFCE.asinteger;
  //numeronf:=strtoint(frm_principal.db_NFCE.caption);//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
  dm_Dados.zqry_SGSEQUENCIAnfce.Close;
  dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
  dm_Dados.zqry_SGSEQUENCIANFCE.SQL.ADD('update sgsequencianfce set contador=:sequencia');
  dm_Dados.zqry_sgsequencianfce.parambyname('sequencia').asinteger:=numeronf+1;
  dm_dados.zqry_sgsequencianfce.execsql;
  //MostraTelaAguarde('Próxima Nota a ser emitida n.º '+ inttostr({numeronf+1}1));
  dm_Dados.zqry_SGSEQUENCIAnfce.Close;
  //fechatelaaguarde;
end;

Procedure Tfrm_FECHACUPOM.PrepararImpressao;
begin
  frm_prefacbr.ACBrSATExtratoFortes1.LarguraBobina    := frm_prefacbr.seLargura.value;
  {frm_prefacbr.ACBrSATExtratoFortes1.Margens.Topo     := frm_prefacbr.seMargemTopo.value;
  frm_prefacbr.ACBrSATExtratoFortes1.Margens.Fundo    := frm_prefacbr.seMargemFundo.value;
  frm_prefacbr.ACBrSATExtratoFortes1.Margens.Esquerda := frm_prefacbr.seMargemEsquerda.value;
  frm_prefacbr.ACBrSATExtratoFortes1.Margens.Direita  := frm_prefacbr.seMargemDireita.value;}
  frm_prefacbr.ACBrSATExtratoFortes1.MostraPreview   := frm_prefacbr.cbPreview.Checked;

  try
    if frm_prefacbr.lImpressora.Caption <> '' then
      frm_prefacbr.ACBrSATExtratoFortes1.Impressora := frm_prefacbr.lImpressora.Caption;
  except
  end;
end;

procedure Tfrm_FECHACUPOM.LoadXML(AXML: String; MyWebBrowser: TWebBrowser);
begin
  WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml',
              AXML, False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+MyWebBrowser.Name+'-temp.xml');
end;

Procedure Tfrm_FECHACUPOM.encerracupom;
var
  seq:integer;
begin
valorvenda:=0;
valoradic:=emptystr;
totitens:=0;
frm_cupom.valortotal:=0;
frm_cupom.precoproduto:=0;
frm_cupom.precototal:=0;
frm_cupom.item:=0;
frm_cupom.edt_ean.Clear;
frm_cupom.LBL_CUPOM.Caption:='';
frm_cupom.lbl_PRODUTO.caption:='';
frm_cupom.lbl_PRECO.Caption:='';
frm_cupom.lbl_VALORTOTAL.Caption:='';
frm_cupom.edt_PRECOVENDA.Clear;
frm_DESCPAGTO.edt_DESCPAGTO.text:='';
frm_DESCPAGTO.edt_CODTIPOCOB.Text:='';



  edt_CPF.Clear;
  edt_NOMECLI.Clear;
  EDT_OBSVENDA.Clear;
  FRM_PRINCIPAL.contaNOTAS;


  frm_cupom.lbl_status.Caption:='CAIXA DISPONÍVEL !';
  frm_cupom.lbl_QTDITENS.Caption:='';
  frm_cupom.item:=0;
  frm_cupom.valortotal:=0;
  frm_cupom.DBGrid_Itens.visible:=true;
  frm_cupom.btn_FECHAR.enabled:=true;
  DBLookupComboBox1.DataSource:=nil;
  edt_CODCLIENTE.Text:='1';
  edt_valorvenda.Clear;
  edt_valorpago.Clear;
  edt_valortroco.Clear;
  lbl_TOTALAPAGAR.Caption:='';
  lbl_FORMAPAGTO.Caption:='';
  edt_VLRDESC.Clear;
  Memo_Troco.Clear;
  frm_cupom.numcontrole:=string.Empty;
  frm_cupom.numautorizacao:=string.empty;
  frm_cupom.bandeira:=string.Empty;
  frm_cupom.edt_EAN.SetFocus;
  frm_cupom.lbl_CLIENTE.Caption:='';
  DBLookupComboBox1.KeyField:='';
  dm_dados.zqry_fnplanopag.close;
  dm_dados.zqry_VDFRETEVD.Close;
  dm_Dados.zqry_VDVENDA.Close;
  dm_Dados.zqry_VDITVENDA.Close;
  dm_dados.zqry_FASTSALE.Close;
  dm_Dados.zqry_itfastsale.Close;
  dm_Dados.zqry_VDVENDEDOR.Close;
  dm_dados.zqry_VDCLIENTE.Close;
  zqry_EQPRODUTO.close;
  dm_dados.zqry_SGSEQUENCIANFCE.Close;
  dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
  dm_dados.zqry_SGSEQUENCIANFCE.SQL.Add('select * from sgsequencianfce where codemp=:empcod');
  dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencianfce.Open;
 { DM_DADOS.zqry_vdvenda.Close;
  dm_Dados.zqry_vdvenda.sql.clear;
  DM_dADOS.zqry_vdvenda.sql.add('select * from vdvenda where codtipomov<>601 and dtemitvenda=:data order by codvenda');
  DM_DADOS.zqry_vdvenda.params.parambyname('data').Value:=datetostr(now);
  dm_dados.zqry_vdvenda.open;    }
  dm_dados.zqry_PVMOVCAIXA.Params.Clear;
  dm_dados.zqry_PVMOVCAIXA.close;
  dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
  dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_PVMOVCAIXA.Open;
  frm_cupom.AbreCupom1Click(self);
end;


procedure Tfrm_FECHACUPOM.ExtrairLog1Click(Sender: TObject);
Var
  NomeArquivo: String ;
begin
  NomeArquivo := ExtractFilePath(Application.ExeName)+'SAT.LOG';
  if not InputQuery('ExtrairLogs',
                    'Informe o nome para criação do Arquivo de Log:', NomeArquivo ) then
    Exit;

  frm_prefacbr.ACBrSAT1.ExtrairLogs( NomeArquivo );

end;

procedure Tfrm_FECHACUPOM.GerarNFCe(NumNFe: String);
var
  OK : boolean;
begin
//frm_prefacbr.lerconfiguracao;
dm_dados.zqry_VDCLIENTE.Close;
dm_Dados.zqry_vdcliente.sql.clear;
dm_Dados.zqry_vdcliente.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
dm_Dados.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=1;//dm_dados.zqry_VDVENDACODCLI.AsInteger;
dm_Dados.zqry_VDCLIENTE.Open;
cpfcliente:=dm_Dados.zqry_vdclientecpfcli.asstring;
cnpjcliente:=dm_dados.zqry_VDCLIENTECNPJCLI.AsString;
pessoacliente:=dm_dados.zqry_VDCLIENTEPESSOACLI.AsString;
iecliente:=dm_Dados.zqry_VDCLIENTEINSCCLI.AsString;
ufcliente:=dm_Dados.zqry_VDCLIENTESIGLAUF.AsString;
inscricao := dm_dados.zqry_vdclienteinsccli.asstring;
R:=verificainternet.Ping(10000,'www.google.com.br',80);
  with frm_prefacbr.ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := random(99999999)+1;; //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     //showmessage(numnfe);
     Ide.dEmi      := now;
     Ide.dSaiEnt   := now;
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     if r=0  then Ide.tpEmis    := TpcnTipoEmissao(frm_PREFACBR.cbFormaEmissao.ItemIndex);
     if r<>0 then ide.tpemis:=teOffLine;
{     if r<>0 then
     begin
      ide.dhCont:=now;
      ide.xJust:='Nota Emitida em Contingencia. Problema Técnico';
     end;}

    // Ide.tpEmis    := TpcnTipoEmissao(frm_principal.formaemissao);
     Ide.tpAmb     := TpcnTipoAmbiente(frm_PREFACBR.rgTipoAmb.ItemIndex);  //Lembre-se de trocar esta variÃ¡vel quando for para ambiente de produÃ§Ã£o
//     Ide.tpAmb     := TpcnTipoAmbiente(frm_principal.tipoamb);  //Lembre-se de trocar esta variÃ¡vel quando for para ambiente de produÃ§Ã£o
     Ide.cUF       := UFtoCUF(dm_Dados.zqry_SGFILIALSIGLAUF.asstring);
     Ide.cMunFG    := StrToInt(frm_PREFACBR.edtEmitCodCidade.Text);
//     Ide.cMunFG    := StrToInt(frm_principal.EmitCodCidade);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

      Emit.CNPJCPF           := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;
      Emit.IE                := dm_dados.zqry_SGFILIALINSCFILIAL.asstring;
      Emit.xNome             := dm_dados.zqry_SGFILIALRAZFILIAL.asstring;
      Emit.xFant             := dm_dados.zqry_SGFILIALNOMEFILIAL.asstring;

      Emit.EnderEmit.fone    := dm_dados.zqry_SGFILIALDDDFILIAL.asstring+dm_dados.zqry_SGFILIALFONEFILIAL.asstring;
      Emit.EnderEmit.CEP     := StrToInt(dm_dados.zqry_SGFILIALCEPFILIAL.asstring);
      Emit.EnderEmit.xLgr    := dm_dados.zqry_SGFILIALENDFILIAL.asstring;
      Emit.EnderEmit.nro     := dm_dados.zqry_SGFILIALNUMFILIAL.asstring;
      Emit.EnderEmit.xCpl    := dm_dados.zqry_SGFILIALCOMPLFILIAL.asstring;
      Emit.EnderEmit.xBairro := dm_dados.zqry_SGFILIALBAIRFILIAL.asstring;
      Emit.EnderEmit.cMun    := strtoint(dm_dados.zqry_SGFILIAL_coduf.asstring+dm_dados.zqry_SGFILIALcodmunic.asstring);

      dm_dados.zqry_SGMUNICIPIO.close;
      dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
      dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
      dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=dm_dados.zqry_SGFILIALcodmunic.asstring;
      dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= dm_dados.zqry_SGFILIALSIGLAUF.asstring;
      dm_dados.zqry_sgmunicipio.open;
      nomemunic:=dm_Dados.zqry_sgmunicipionomemunic.asstring;

      Emit.EnderEmit.xMun    := removeacento(nomemunic);
      Emit.EnderEmit.UF      := dm_dados.zqry_SGFILIALSIGLAUF.ASSTRING;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';

      infRespTec.CNPJ:= '06976896000125';
      infRespTec.xContato:='Israel de Oliveira Pinheiro Lopes';
      infRespTec.email:= 'contato@nonoelemento.com.br';
      infRespTec.fone:='2731800309';
      infResptec.idcsrt:=0;
      infRespTec.hashCSRT:='';
//      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      if frm_principal.simples='S' then Emit.CRT := crtSimplesNacional else Emit.CRT:= crtRegimeNormal;

// trocado pela linha de cima      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
      If (cpfcliente='') and (cnpjcliente='') then
      begin
        {if not(InputQuery('Integra - NFCe: Informar CNPJ/CPF', 'Informe o CNPJ/CPF do Comprador', CPF)) then
        exit;}
        Dest.CNPJCPF := cpf;
      end
      else
      begin
        if cpfcliente<>'' then Dest.CNPJCPF := cpfcliente else Dest.CNPJCPF := cnpjcliente;
      end;

//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := dm_dados.zqry_VDVENDA_RAZCLIENTE.AsString;




      if dm_dados.zqry_VDVENDA_TELCLIENTE.AsString='' then Dest.EnderDest.Fone := '' else  Dest.EnderDest.Fone := Dm_dados.zqry_VDVENDA_dddcliente.value+DM_DADOS.zqry_VDVENDA_TELCLIENTE.VALUE;
      //Dest.EnderDest.Fone    := '1533243333';
      if dm_Dados.zqry_VDVENDA_CEPCLIENTE.IsNull then Dest.EnderDest.CEP     :=0 else Dest.EnderDest.CEP     :=     dm_Dados.zqry_VDVENDA_CEPCLIENTE.AsInteger;
      Dest.EnderDest.xLgr    := dm_Dados.zqry_VDVENDA_ENDCLIENTE.AsString;
      Dest.EnderDest.nro     := dm_Dados.zqry_VDVENDA_NUMCLIENTE.AsString;
      Dest.EnderDest.xCpl    := dm_Dados.zqry_VDVENDA_COMPLCLIENTE.AsString;
      Dest.EnderDest.xBairro := dm_Dados.zqry_VDVENDA_BAIRROCLIENTE.AsString;

      dm_dados.zqry_SGMUNICIPIO.close;
      dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
      dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
      dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=dm_Dados.zqry_VDVENDA_CODMUNICCLIENTE.ASSTRING;
      dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= dm_dados.zqry_VDVENDA_SIGLAUF.asstring;
      dm_dados.zqry_sgmunicipio.open;
      Dest.EnderDest.cMun    := strtoint(dm_dados.zqry_sgmunicipiocoduf.asstring+dm_dados.zqry_sgmunicipiocodmunic.asstring);

      Dest.EnderDest.xMun    := dm_Dados.zqry_VDVENDA_CIDADECLIENTE.AsString;
      Dest.EnderDest.UF      := dm_Dados.zqry_VDVENDA_SIGLAUF.AsString;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';
      Dest.IE := '';
      Dest.indIEDest := inNaoContribuinte;

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos
//showmessage(inttostr(meucupom));
dm_dados.zqry_VDITVENDA.Close;
dm_dados.zqry_vdITvenda.SQL.clear;
dm_dados.zqry_VDITVENDA.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
dm_dados.zqry_VDITVENDA.ParamByName('vendacod').AsInteger:=meucupom;//strtoint(frm_cupom.DBText1.Caption);
dm_dados.zqry_VDITVENDA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_VDITVENDA.Open;
if dm_Dados.zqry_VDITVENDA.IsEmpty then
begin
    showmessage('Fechamento do Cupom não Localizado');
end
else
begin
dm_Dados.zqry_vditvenda.First;
end;
contador:=1;
totitens:=dm_dados.zqry_vditvenda.recordcount;
desconto:=strtocurr(edt_vlrdesc.text)/totitens;

while not DM_DADOS.zqry_VDITVENDA.eof do
begin

      with Det.Add do
       begin
         codigoproduto:=dm_dados.zqry_VDITVENDACODPROD.AsInteger;
         zqry_EQPRODUTO.Params.Clear;
         zqry_EQPRODUTO.close;
         zqry_EQPRODUTO.SQL.Clear;
         zqry_EQPRODUTO.SQL.Add('select codemp,codprod,descprod,codfisc,codbarprod,codunid,cest,precobaseprod from eqproduto where codprod=:prodcod and codemp=:empcod');
         zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=dm_dados.zqry_VDITVENDACODPROD.AsInteger;
         zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
         zqry_EQPRODUTO.Open;
         if zqry_eqproduto.IsEmpty then
         begin
          showmessage('Produto não localizado '+inttostr(codigoproduto)+' erro');
         end
         else
         begin
         DESCRICAO:=zqry_EQPRODUTODESCPROD.AsString;
         NCM:=zqry_EQPRODUTOCODFISC.AsString;
         EAN:=zqry_EQPRODUTOCODBARPROD.asstring;
         UNI:=zqry_EQPRODUTOCODUNID.AsString;
         CEST:=zqry_EQPRODUTOCEST.AsString;
         PRECOUNITARIO:=zqry_EQPRODUTOPRECOBASEPROD.asfloat;
         end;
         //PRECOUNITARIO:=dm_dados.zqry_EQPRODUTOPRECOBASEPROD.asfloat;

         Prod.nItem    := contador; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := dm_dados.zqry_VDITVENDACODPROD.AsString;
         if ean.IsEmpty then  EAN     :='7891111111111';
         if EAN13Valido(ean) then Prod.cEAN:= ean;
         //showmessage(ean);

        // if EAN13Valido(CDSProdutosCOD_BARRA.AsString) then Prod.cEAN:= CDSProdutosCOD_BARRA.AsString;


         Prod.xProd    := DESCRICAO;
         Prod.NCM      := NCM; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := dm_Dados.zqry_VDITVENDACODNAT.ASSTRING;
         Prod.uCom     := UNI;
         Prod.qCom     := SimpleRoundto(dm_dados.zqry_VDITVENDAQTDITVENDA.value,-3);
       //  showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAQTDITVENDA.value,-3)));
         if precounitario=0.00  then Prod.vUnCom   := SimpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.value,-2);
         if precounitario>0.00  then Prod.vUnCom   := floattocurr(precounitario);
         //showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.value,-2)));
         Prod.vProd    := simpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value, -3);
         //showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value,-2)));

         if ean.IsEmpty then  EAN     :='7891111111111';
         if EAN13Valido(ean) then Prod.cEANTrib:= ean;
         //Prod.cEANTrib  := EAN;
         Prod.uTrib     := UNI;
         Prod.qTrib     := SimpleRoundto(dm_dados.zqry_VDITVENDAQTDITVENDA.value,-3);
         if precounitario=0.00  then Prod.vUnTrib := simpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.value, -3);
         if precounitario>0.00  then Prod.vUnTrib := floattocurr(precounitario);//simpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.value, -3);

         if strtofloat(valoradic)>0 then Prod.vOutro    := simpleroundto(strtofloat(valoradic)/totitens,-3);
         if strtofloat(valoradic)=0 then Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := SimpleRoundto(desconto,-3);//FloatToCurr(desconto);
         Prod.CEST      := CEST;

//         infAdProd      := 'Informação Adicional do Produto';

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;

            with ICMS do
             begin

               if (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5405') or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5656') or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5667')
               then CSOSN        := csosn500;

               if (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5101') or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5102') or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5103')
               or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5104') or (dm_Dados.zqry_VDITVENDACODNAT.ASSTRING='5115') then
               begin
                zqry_ITFISCAL.close;
                zqry_itfiscal.SQL.Clear;
                zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
                zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
                zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and coditfisc=:itfisc and codemp=:empcod');
                zqry_ITFISCAL.parambyname('empcod').AsInteger:=99;//dm_Dados.codemp;
                zqry_itfiscal.parambyname('fiscal').asstring:=trim(DM_DADOS.zqry_VDITVENDACODFISC.AsString);
                zqry_itfiscal.parambyname('mov').asinteger:=dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger;
                zqry_itfiscal.ParamByName('itfisc').asinteger:=dm_dados.zqry_VDITVENDACODITFISC.asinteger;
                zqry_itfiscal.open;

                if zqry_itfiscal.IsEmpty then
                begin
                  CSOSN        := csosn102;
                end
                else
                begin
                  CSOSN        := StrToCSOSNIcms(OK,zqry_ITFISCALCSOSN.asstring);
                end;
               end;

               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := 0;
               ICMS.pICMS   := 18;
               ICMS.vICMS   := 0;
               ICMS.modBCST := dbisPrecoTabelado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;

               // partilha do ICMS e fundo de probreza
               with ICMSUFDest do
                begin
                  vBCUFDest      := 0.00;
                  pFCPUFDest     := 0.00;
                  pICMSUFDest    := 0.00;
                  pICMSInter     := 0.00;
                  pICMSInterPart := 0.00;
                  vFCPUFDest     := 0.00;
                  vICMSUFDest    := 0.00;
                  vICMSUFRemet   := 0.00;
                end;
             end;

          end;
       end ;
      contador:=contador+1;
      dm_dados.zqry_VDITVENDA.Next;
    end;

//Adicionando Serviços
{      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descrição do Serviço';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Serviço';

//Grupo para serviços
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
      Total.ICMSTot.vBC     := 0;
      Total.ICMSTot.vICMS   := 0;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := FloatToCurr(valorvenda+valordesconto)-strtofloat(valoradic);
      //showmessage(floattostr(valorvenda)+' desconto '+floattostr(valordesconto)+' adic '+(valoradic));

      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := FloatToCurr(valordesconto);
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := StrtoCurr(valoradic);
      Total.ICMSTot.vNF     := FloatToCurr(valorvenda);//

      // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := 0.00;
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;
      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;
      pag.vTroco:=StrtoCurr(edt_valortroco.text);

{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }

  {    if (pagodinheiro>=totalpagar) or (pagodebito>=totalpagar) or (pagocredito>=totalpagar) then
      begin
        with pag.Add do //PAGAMENTOS apenas para NFC-e
         begin
           if tipo_pagto=1 then tPag := fpDinheiro;
           If tipo_pagto=2 then tPag := fpCheque;
           if tipo_pagto=3 then tpag := fpCartaoDebito;
           if tipo_pagto=4 then tPag := fpCartaoCredito;
           if tipo_pagto=5 then tpag := fpCreditoLoja;
           if tipo_pagto>5 then tpag := fpDinheiro;
      //   tPag := TpcnFormaPagamento
           vPag := strtoCurr(edt_valorpago.text);//FloatToCurr(valorvenda);
           if (tipo_pagto>=3) and (tipo_pagto<=4) then
           begin
            tpIntegra := tiPagIntegrado;
            CNPJ      := '00000000000100';//frm_principal.adquirente;
            cAut      := frm_checkout.numautorizacao;
            {if frm_PRINCIPAL.bandeira='MAESTRO'          then tBand     := bcMasterCard;
            if frm_PRINCIPAL.bandeira='MASTER'            then tBand     := bcMasterCard;
            if frm_PRINCIPAL.bandeira='VISA'              then tBand     := bcVisa;
            if frm_PRINCIPAL.bandeira='AMERICAN EXPRESS'  then tBand     := bcAmericanExpress;
            if frm_PRINCIPAL.bandeira='SORO'              then tBand     := bcSorocred;
            if frm_PRINCIPAL.bandeira='DINERS'            then tBand     := bcDinersClub;
            if frm_PRINCIPAL.bandeira='ELO'               then tBand     := bcElo;
            if frm_PRINCIPAL.bandeira='HIPER'             then tBand     := bcHipercard;
            if frm_PRINCIPAL.bandeira='AURA'              then tBand     := bcAura;
            if frm_PRINCIPAL.bandeira='CABAL'             then tBand     := bcCabal;
            if frm_PRINCIPAL.bandeira=''                  then tBand     := bcOutros;}
      {      tband :=bcOutros;
          end;
        end;
      end;}

      //showmessage(floattostring(pagodinheiro)+' a apgar '+ floattostr(apagar)+ ' tipo '+inttostr(tipo_pagto));
      if (pagodinheiro>0) and (apagar>0) then
      begin
        //showmessage('chegou aqui');
        with pag.Add do
        begin
            tPag :=fpDinheiro;
            vPag :=FloatToCurr(pagodinheiro);
        end;
      end;

      if (pagodinheiro=0) and (apagar>0) and(tipo_pagto=5) then
      begin
        //showmessage('chegou aqui');
        with pag.Add do
        begin
            tPag :=fpCreditoLoja;
            vPag :=FloatToCurr(pagodinheiro);
        end;
      end;

      if (pagodebito>0) and (apagar>0) then
      begin
        with pag.Add do
        begin
          tPag:=fpCartaoDebito;
          vPag:=FloatToCurr(pagodebito);
          tpIntegra:=tiPagIntegrado;
          CNPJ      := '00000000000100';
          cAut      := frm_cupom.numautorizacao;
          tband :=bcOutros;
        end;
      end;

      if (pagocredito>0) and (apagar>0) then
      begin
        with pag.Add do
        begin
          tPag:=fpCartaoCredito;
          vPag:=FloatToCurr(pagocredito);
          tpIntegra:=tiPagIntegrado;
          CNPJ      := '00000000000100';
          cAut      := frm_cupom.numautorizacao;
          tband :=bcOutros;
        end;
      end;


      if nome=''  then InfAdic.infCpl     :=  'Pedido : '+dm_dados.zqry_VDVENDACODVENDA.asstring;
      if nome<>'' then InfAdic.infCpl     :=  'Pedido : '+dm_dados.zqry_VDVENDACODVENDA.asstring+' Nome '+nome;

      InfAdic.infCpl     :=  'O Vlr. Aprox. Tributos Lei 12.741/12 de R$ 2,85' + ' Pedido: '+dm_dados.zqry_VDVENDACODVENDA.asstring;;

      InfAdic.infAdFisco :=  '';

{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;

{ if frm_PREFACBR.cbModeloDF.ItemIndex = 0 then
 begin
        FRM_PRINCIPAL.ACBrNFe1.DANFE := FRM_PRINCIPAL.ACBrNFeDANFeRL1;
      //  showmessage('NFe');
 end
 else
 begin   }
        FRM_PREFACBR.ACBrNFe1.DANFE := FRM_PREFACBR.ACBrNFeDANFCeFortes1 ;
      //   showmessage('nfce');
// end;
//frm_prefacbr.ACBrNFe1.NotasFiscais.GerarNFe;
end;


procedure Tfrm_FECHACUPOM.btn_FECHAClick(Sender: TObject);
var
  qtditens:integer;
  vlrdescitem:double;
begin
btn_FECHA.Enabled:=false;
dm_dados.zqry_ITFASTSALE.First;
frm_cupom.timer_LETREIRO.Enabled:=false;
//frm_cupom.lbl_STATUS.Visible:=true;
//frm_cupom.lbl_STATUS.Caption:='FECHANDO CUPOM';
//showmessage('chama caclulo');
Calculo;
// Grava Valor Pago e Valor de Troco
dm_dados.zqry_FASTSALE.Edit;
dm_dados.zqry_FASTSALEVALORPAGO.AsFloat:=strtofloat(FRM_FECHACUPOM.edt_valorpago.Text)+strtofloat(valoradic);
dm_Dados.zqry_FASTSALEVALORTROCO.AsFloat:=strtofloat(frm_FECHACUPOM.edt_valortroco.Text);
dm_Dados.zqry_FASTSALE.Post;
dm_dados.zqry_FASTSALE.ApplyUpdates;

// IMPRIME CUPOM
//
//  ATUALIZA CONTA A RECEBER
//
  if tipo_pagto=0 then tipo_pagto:=1;
  if frm_cupom.numautorizacao='' then frm_cupom.numautorizacao:='DINHEIRO';

  //showmessage('Sequencia '+inttostr(frm_CUPOM.seqsequencia));


  dm_dados.Executasginiconsp;
  dm_Dados.zqry_FNRECEBER.params.Clear;
  dm_Dados.zqry_FNRECEBER.Close;
  dm_dados.zqry_fnreceber.SQL.Clear;
  dm_Dados.zqry_FNRECEBER.SQL.Add('update fnreceber set vlrpagorec=:vlrpag, obsrec=:controle,');
  dm_dados.zqry_FNRECEBER.SQL.Add('codemptc=:empcodtc, codfilialtc=:filialcodtc, vlrdescrec=:desc, codtipocob=:tipocod, codterminal=:terminal');
  dm_dados.zqry_FNRECEBER.SQL.Add('where codvenda=:vendacod and codemp=:empcod ');
  dm_Dados.zqry_FNRECEBER.ParamByName('vlrpag').AsCurrency:=FloatToCurr(valorvenda);
  dm_Dados.zqry_FNRECEBER.ParamByName('desc').AsCurrency:=StrToCurr(edt_VLRDESC.text);
  dm_Dados.zqry_FNRECEBER.ParamByName('controle').asstring:='Controle '+frm_cupom.numautorizacao;
  dm_Dados.zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=frm_cupom.seqsequencia;
  dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=99;
  dm_dados.zqry_FNRECEBER.ParamByName('empcodtc').AsInteger:=99;
  dm_Dados.zqry_FNRECEBER.ParamByName('filialcodtc').AsInteger:=1;
  dm_dados.zqry_FNRECEBER.ParamByName('terminal').asinteger:=dm_dados.estacao;
  dm_Dados.zqry_FNRECEBER.ParamByName('tipocod').AsInteger:=tipo_pagto;
  dm_Dados.zqry_fnreceber.ExecSQL;

//
// ATUALIZA CAIXA PV
//
  zquery3.Close;
  zquery3.SQL.Clear;
  zquery3.sql.add('SELECT MAX(nromov) as nro FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and dtamov=:data');
  zquery3.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zquery3.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
  zquery3.ParamByName('data').AsDateTime:=dm_dados.ultdata;
  zquery3.Open;
  sequencia:=1+zquery3.FieldByname('nro').asinteger;
  //showmessage('lancando caixa');
  dm_dados.zqry_PVMOVCAIXA.Open;
  dm_Dados.zqry_PVMOVCAIXA.Append;
  dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
  dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.estacao;
  dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia;
  dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='V';
  dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=valorvenda;
  dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
  dm_Dados.zqry_PVMOVCAIXAIDUSU.AsString:=dm_dados.usuariousando;
  dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
  dm_Dados.zqry_PVMOVCAIXAHINS.AsDateTime:=time;
  dm_dados.zqry_PVMOVCAIXA.Post;
  dm_Dados.zqry_pvmovcaixa.ApplyUpdates;

//
// ATUALIZA LANÇAMENTOS
//
   mostratelaaguarde('Gravando Parametros');
   dm_Dados.zqry_SGSEQUENCIA.Close;
   dm_dados.zqry_sgsequencia.sql.Clear;
   dm_Dados.zqry_sgsequencia.sql.add('update sgsequencia set nroseq=:seq where sgtab=:venda and codemp=:empcod');
   dm_Dados.zqry_sgsequencia.ParamByName('venda').asstring:='VD';
   dm_Dados.zqry_sgsequencia.ParamByName('empcod').asinteger:=99;
   dm_dados.zqry_SGSEQUENCIA.ParamByName('seq').AsInteger:=frm_cupom.seqsequencia+1;
   dm_dados.zqry_sgsequencia.execsql;
   fechatelaaguarde;

  close;
  if dm_dados.pedidobranco='S' then
  begin
    if MessageBox(HANDLE, 'Deseja Emitir a NFCe agora?'#13'Confirme com Sim'#13'Emitir depois clique em Não', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin
      if dm_dados.zqry_sgfilialsatcfe.asstring='N' then btn_EMITENFCEClick(Self) else btn_emitesatclick(self);//      btn_EMITENFCEClick(Self);

    end
    else
    begin
      //frm_rel_pedido.rlreport1.preview;
      rlprinter.PrinterIndex:=-1;
      if dm_dados.impressao50='S' then
      begin
        frm_rel_pedido50.rlreport1.Update;
        frm_rel_pedido50.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_pedido50.rlreport1.Print;
      end
      else
      begin
        frm_rel_pedido.rlreport1.Update;
        frm_rel_pedido.rlreport1.Prepare;
        //frm_rel_tef.RLReport1.Preview();
        frm_rel_pedido.rlreport1.Print;
      end;

      //frm_rel_pedido.RLReport1.Print;
      sleep(500);
      if (tMemoresultado.GetTextLen <> 0) then frm_rel_tef.rlreport1.preview;
      showmessage('Faça a emissão da NFCe. Sonegar é crime'#13'Na tela principal do CheckOut a emissão está disponível');

	  MostraTelaAguarde('Gravandos dados no Pedido de Venda');
    dm_Dados.EXECUTASGINICONSP;
    dm_dados.zqry_VDVENDA.SQL.Clear;
    dm_dados.zqry_VDVENDA.SQL.Add('update vdvenda set codcli=:clicod, vlrprodvenda=:valorcheio, ');
    dm_dados.zqry_VDVENDA.SQL.Add('vlrdescvenda=:valordesc, vlrliqvenda=:valorliq, vlrbaseipivenda=:ipi,codtipocob=:tipocob, codplanopag=:planocod, obsvenda=:observa, nomecli=:clinome where codvenda=:venda and codemp=:empcod');
    dm_dados.zqry_vdvenda.parambyname('valorcheio').asfloat:=valorfechamento;
    dm_Dados.zqry_VDVENDA.ParamByName('venda').AsInteger:=frm_CUPOM.seqsequencia;
    dm_Dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=99;
    dm_Dados.zqry_vdvenda.parambyname('valordesc').asfloat:=strtofloat(edt_VLRDESC.Text);
    dm_dados.zqry_vdvenda.parambyname('valorliq').asfloat:=valorliquido;
    dm_dados.zqry_VDVENDA.parambyname('clicod').AsInteger:=cliente;
    dm_dados.zqry_VDVENDA.ParamByName('planocod').AsInteger:=strtoint(DBText4.Caption);
    dm_dados.zqry_VDVENDA.ParamByName('observa').Asstring:=edt_obsvenda.Text;
    dm_dados.zqry_VDVENDA.ParamByName('clinome').Asstring:=edt_nomecli.Text;
    DM_dados.zqry_vdvenda.parambyname('ipi').AsFloat:=valorliquido;
    dm_Dados.zqry_VDVENDA.ParamByName('tipocob').asinteger:=tipo_pagto;
    dm_dados.zqry_VDVENDA.EXECSQL;
    // VDFRETEVD//
    //
   {   dm_Dados.zqry_VDFRETEVD.Close;
      dm_DAdos.zqry_VDFRETEVD.Open;
      dm_dados.zqry_VDFRETEVD.append;
      dm_dados.zqry_VDFRETEVDCODEMP.asinteger:=99;//DM_DADOS.cds_SGFILIALCODEMP.Value;
      dm_dados.zqry_VDFRETEVDCODFILIAL.asinteger:=1;//DM_DADOS.cds_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_VDFRETEVDTIPOVENDA.Value:='V';
      dm_dados.zqry_VDFRETEVDCODVENDA.Value:=frm_CUPOM.seqsequencia;
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
      DM_DADOS.zqry_VDFRETEVDIDUSUINS.Value:=dm_dados.usuariousando;
      dm_Dados.zqry_vdfretevd.post;
      //DM_DADOS.zqry_VDFRETEVD.ApplyUpdates();    }
      //

    fechatelaaguarde;
    dm_Dados.zqry_SGFILIAL.Close;
    dm_Dados.zqry_SGFILIAL.SQL.Clear;
    dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
    dm_dados.zqry_SGFILIAL.Open;

    Dm_DADOS.zqry_VDVENDA.Close;
    dm_Dados.zqry_vdvenda.sql.clear;
    DM_dADOS.zqry_vdvenda.sql.add('select * from vdvenda where codtipomov<>601 and dtemitvenda=:data order by codvenda');
    DM_DADOS.zqry_vdvenda.params.parambyname('data').Value:=datetostr(now);
    dm_dados.zqry_vdvenda.open;
    encerracupom;
    end;
  end
  else
  begin
    if dm_dados.zqry_sgfilialsatcfe.asstring='N' then btn_EMITENFCEClick(Self) else btn_emitesatclick(self);
  end;
  tmemoresultado.Visible:=false;
end;

procedure Tfrm_FECHACUPOM.btn_GRAVAFASTClick(Sender: TObject);
begin
  dm_dados.zqry_FASTSALE.Edit;
  dm_dados.zqry_FASTSALECODCLI.AsInteger:=dm_Dados.zqry_VDCLIENTECODCLI.AsInteger;
  dm_Dados.zqry_FASTSALECODVEND.AsInteger:=dm_dados.zqry_VDVENDEDORCODVEND.AsInteger;
  dm_dados.zqry_FASTSALECODPLANOPAG.AsInteger:=dm_dados.zqry_FNPLANOPAGCODPLANOPAG.AsInteger;
  dm_Dados.zqry_FASTSALE.Post;
  btn_dinheiro.Enabled:=true;
  btn_CHEQUE.Enabled:=true;
  btn_CREDITO.Enabled:=true;
  btn_DEBITO.Enabled:=true;
  btn_CREDLOJA.Enabled:=true;
  edt_valorpago.Enabled:=true;
  MOSTRATELANOTIFICA('FORMA DE PAGAMENTO','Escolha o meio desejado');
  btn_dinheiro.SetFocus;
end;

procedure Tfrm_FECHACUPOM.btn_OUTROSClick(Sender: TObject);
begin
tipo_pagto:=6;
end;

procedure Tfrm_FECHACUPOM.C1Click(Sender: TObject);
begin
btn_CHEQUEClick(Sender);
end;

procedure Tfrm_FECHACUPOM.C2Click(Sender: TObject);
begin
btn_DEBITOClick(Sender);
end;

procedure Tfrm_FECHACUPOM.C3Click(Sender: TObject);
begin
btn_CREDITOClick(Sender);
end;

procedure Tfrm_FECHACUPOM.C4Click(Sender: TObject);
begin
btn_CREDLOJAClick(Sender);
end;

procedure Tfrm_FECHACUPOM.d1Click(Sender: TObject);
begin
btn_DINHEIROCLICK(Sender);
end;

procedure Tfrm_FECHACUPOM.DBLookupComboBox1Enter(Sender: TObject);
begin
DBLookupComboBox1.KeyField:='CODPLANOPAG';
DBLookupComboBox1.Color:=clyellow;
edt_CODVEND.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.DBLookupComboBox1Exit(Sender: TObject);
begin
frm_cupom.codpagto:=dm_Dados.zqry_FNPLANOPAGCODPLANOPAG.AsInteger;
if db_NUMPARC.caption='1' then
begin
  RadioButtonPagamentoCreditoSemParcelas.checked:=true;
  RadioButtonPagamentoCreditoComParcelas.checked:=false;

end
else
begin
  RadioButtonPagamentoCreditoComParcelas.checked:=true;
  RadioButtonPagamentoCreditoSemParcelas.checked:=false;
end;
end;

procedure Tfrm_FECHACUPOM.DBLookupComboBox1KeyPress(Sender: TObject;  var Key: Char);
begin
IF (KEY  = #13) THEN btn_gravafastclick(self);
end;

procedure Tfrm_FECHACUPOM.FECHACONEXOES;
begin
dm_dados.zqry_EQTIPOMOV.Cancel;
dm_dados.zqry_eqtipomov.Params.Clear;
dm_dados.zqry_EQTIPOMOV.Close;
//
dm_dados.zqry_LFMENSAGEM.Cancel;
dm_dados.zqry_LFMENSAGEM.Params.Clear;
dm_dados.zqry_LFMENSAGEM.Close;
//
dm_Dados.zqry_FNPLANOPAG.Close;
//
dm_Dados.zqry_FNTIPOCOB.Cancel;
dm_dados.zqry_FNTIPOCOB.Close;
//
dm_dados.zqry_VDVENDA.Cancel;
dm_dados.zqry_VDVENDA.Params.Clear;
dm_dados.zqry_VDVENDA.Close;
//
dm_Dados.zqry_VDITVENDA.Cancel;
dm_Dados.zqry_VDITVENDA.Close;
//
dm_dados.zqry_FNRECEBER.Cancel;
dm_dados.zqry_FNRECEBER.Params.Clear;
dm_dados.zqry_FNRECEBER.Close;
//
dm_dados.zqry_FNITRECEBER.Cancel;
dm_dados.zqry_FNITRECEBER.Params.Clear;
dm_dados.zqry_FNITRECEBER.Close;
//
dm_dados.zqry_sgsequencia_nf.Params.Clear;
dm_Dados.zqry_sgsequencia_nf.Close;
dm_dados.zqry_sgsequencia_nf.sql.Clear;
dm_Dados.zqry_sgsequencia_nf.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia_nf.sql.add('where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia_nf.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia_nf.ParamByName('empresa').value:=dm_dados.codemp;
dm_dados.zqry_sgsequencia_nf.open;
//
DM_DADOS.zqry_SGSEQUENCIANFCE.Close;
dm_Dados.zqry_SGSEQUENCIANFCE.sql.clear;
DM_dADOS.zqry_SGSEQUENCIANFCE.sql.Add('select * from SGSEQUENCIANFCE where codemp=:empcod');
dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_SGSEQUENCIANFCE.Open;
MEMORIA;
end;

procedure Tfrm_FECHACUPOM.btn_CONTINUAClick(Sender: TObject);
begin
desabilitaEnter:=false;
ContinuarVendendo1Click(Self);
end;

procedure Tfrm_FECHACUPOM.btn_BUSCACLIENTEClick(Sender: TObject);
begin
dm_dados.zqry_VDCLIENTE.Close;
dm_Dados.zqry_vdcliente.sql.clear;
DM_dADOS.zqry_vdcliente.sql.Add('select * from vdcliente where codcli=:cod and codemp=99 order by nomecli');
DM_DADOS.zqry_vdcliente.parambyname('cod').asinteger:=strtoint(edt_codcliente.text);
dm_dados.zqry_vdcliente.open;
if dm_dados.zqry_vdcliente.IsEmpty then
begin
  mostratelaaviso('Nada localizado com base nas informações','tab.: vdcliente');
  edt_CODCLIENTE.SetFocus;
  edt_CODCLIENTE.Clear;
end
else
begin
  DBText1.Update;
  cliente:=dm_Dados.zqry_VDCLIENTECODCLI.AsInteger;
  dm_dados.Zqry_FNRECEBER.Close;
  dm_Dados.Zqry_FNRECEBER.sql.clear;
  DM_dADOS.Zqry_FNRECEBER.sql.Add('select * from fnreceber where codcli=:clicod and codemp=:empcod and vlrapagrec>0 ');
  DM_DADOS.Zqry_FNRECEBER.parambyname('clicod').asinteger:=strtoint(edt_codcliente.text);
  dm_dados.Zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.ZQRY_FNRECEBER.open;
  edt_CPF.SetFocus;
  edt_cpf.Clear;
  edt_cpf.Color:=clyellow;
  edt_cpf.Text:=dm_dados.zqry_VDCLIENTECPFCLI.AsString;
  edt_NOMECLI.Text:=dbtext1.Caption;
  edt_codcliente.Color:=clwhite;
end;
end;

procedure Tfrm_FECHACUPOM.btn_BUSCACUPOMClick(Sender: TObject);
begin
edt_CODVEND.SetFocus;
edt_codvend.Color:=clyellow;
edt_cupomdesc.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.btn_BUSCAVENDEDORClick(Sender: TObject);
begin
  dm_Dados.zqry_vdvendedor.close;
  dm_Dados.zqry_vdvendedor.sql.clear;
  DM_dADOS.zqry_vdvendedor.sql.add('select * from vdvendedor where codvend=:vend and codemp=99');
  DM_DADOS.zqry_vdvendedor.parambyname('vend').asinteger:=strtoint(edt_codvend.text);
  dm_dados.zqry_vdvendedor.open;
  if dm_dados.zqry_vdvendedor.IsEmpty then
  begin
    mostratelaaviso('Nada localizado com base nas informações','tab.: vdvendedor');
    edt_CODVEND.SetFocus;
    edt_CODVEND.Clear;
  end
  else
  begin
    vendedor:=dm_Dados.zqry_VDVENDEDORCODVEND.AsInteger;
    DBText2.Update;
    DM_DADOS.zqry_FNPLANOPAG.Close;
    DM_DADOS.zqry_FNPLANOPAG.SQL.Clear;
    dm_dados.zqry_FNPLANOPAG.SQL.Add('select * from fnplanopag where codemp=:empcod');
    dm_dados.zqry_FNPLANOPAG.ParamByName('empcod').AsInteger:=99;
    dm_Dados.zqry_FNPLANOPAG.Open;
    DBLookupComboBox1.SetFocus;
    DBLookupComboBox1.Color:=clyellow;
    edt_CODVEND.Color:=clwhite;
  end;
end;

procedure Tfrm_FECHACUPOM.btn_CHEQUEClick(Sender: TObject);
begin
formapagto:='X';
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.ISNULL then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=2;
dm_Dados.zqry_FASTSALE.Edit;
dm_Dados.zqry_FASTSALEVLRDESCVENDA.ASFLOAT:=frm_FECHACUPOM.valordesconto;
dm_Dados.zqry_FASTSALECODTIPOCOB.Value:=2;
dm_Dados.zqry_FASTSALE.Post;
frm_descpagto.Caption:='DESCRITIVO DO PAGAMENTO EM CHEQUE';
frm_descpagto.lbl_mens1.caption:='Insira a linha digitável do Cheque';
frm_descpagto.lbl_bandeira.Visible:=false;
frm_descpagto.cb_BANDEIRA.Visible:=false;
frm_descpagto.edt_Descpagto.visible:=false;  // esconde edit descpagto
frm_descpagto.msk_cheque.visible:=true; // mostra maskedit para digitar o cheque
frm_descpagto.msk_cheque.Left:=8;
frm_descpagto.msk_CHEQUE.Top:=25;
frm_descpagto.edt_CODTIPOcob.Text:='3';
frm_descpagto.show;
frm_descpagto.img_CHEQUE.visible:=true;
frm_descpagto.img_CHEQUE.Align:=alclient;
btn_dinheiro.Enabled:=false;
btn_DEBITO.Enabled:=false;
btn_CREDITO.Enabled:=false;
//btn_OUTROS.Enabled:=FALSE;
btn_CREDLOJA.Enabled:=FALSE;
lbl_FORMAPAGTO.Caption:='Cheque';
end;


procedure Tfrm_FECHACUPOM.btn_CREDITOClick(Sender: TObject);
var
  valor: double;
begin
formapagto:='C';
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.isnull then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=4;//dm_Dados.zqry_fastsale.Active:=true;
dm_Dados.zqry_FASTSALE.Edit;
dm_Dados.zqry_FASTSALECODTIPOCOB.Value:=4;
dm_Dados.zqry_FASTSALEVLRDESCVENDA.ASFLOAT:=frm_FECHACUPOM.valordesconto;
dm_Dados.zqry_FASTSALE.Post;
if (dm_Dados.zqry_SGFILIALTEF_CAPPTA.AsString='S') and (dm_Dados.tefestacao='S') then
begin
// Cappta
  frm_fechacupom.edt_valorpago.SetFocus;
  tmemoresultado.Visible:=true;
  frm_cupom.quantidadeParcelas := strtoint(db_NUMPARC.caption);
  if (dm_dados.zqry_sgfilialtipo_parc_tef.asstring='L') or (dm_Dados.zqry_sgfilialtipo_parc_tef.asstring='') then frm_cupom.tipoParcelamento:=2;
  if dm_dados.zqry_sgfilialtipo_parc_tef.AsString='A' then frm_cupom.tipoParcelamento:= 1;//frm_principal.ComboBoxTipoParcelamentoPagamentoCredito.ItemIndex + 1;
  frm_cupom.transacaoParcelada := RadioButtonPagamentoCreditoComParcelas.Checked;
  if falta=0 then valor := totalpagar;
  if falta>0 then valor := falta;

  frm_cupom.detalhes := CoDetalhesCredito.Create;
  frm_cupom.detalhes.QuantidadeParcelas := strtoint(db_NUMPARC.caption);//frm_principal.quantidadeParcelas;
  frm_cupom.detalhes.TransacaoParcelada := frm_cupom.transacaoParcelada;
  frm_cupom.detalhes.TipoParcelamento := frm_cupom.tipoParcelamento;

  if frm_cupom.DeveIniciarMultiCartoes() then
  begin
     frm_cupom.IniciarMultiCartoes();
  end;
 frm_cupom.cliente.PagamentoCredito(valor,frm_cupom.detalhes);
 frm_cupom.processandoPagamento := true;
 frm_cupom.IterarOperacaoTef();
 tmemoresultado.Visible:=true;
 tmemoresultado.Update;
 btn_fecha.Enabled:=true;
 tipo_pagto:=4;
 lbl_FORMAPAGTO.Caption:='Crédito';
 sleep(500);
 setforegroundwindow(frm_fechacupom.Handle);
 if frm_fechacupom.canfocus then
 begin
  frm_fechacupom.SetFocus;
  lbl_focus.Caption:=activecontrol.Name;
  frm_fechacupom.edt_valorpago.SetFocus;
 end;
end
else
begin

frm_descpagto.Caption:='DESCRITIVO DO PAGAMENTO EM CARTÃO DE CRÉDITO';
frm_descpagto.lbl_mens1.caption:='Insira o Código de Autorização';
frm_descpagto.edt_Descpagto.visible:=true;  // esconde edit descpagto
frm_descpagto.msk_cheque.visible:=false; // mostra maskedit para digitar o cheque
frm_descpagto.edt_descpagto.Left:=8;
frm_descpagto.edt_descpagto.Top:=25;
frm_descpagto.edt_DESCPAGTO.Text:='1234567890';
frm_descpagto.lbl_bandeira.Visible:=true;
frm_descpagto.cb_BANDEIRA.Visible:=true;
frm_descpagto.edt_CODTIPOcob.Text:='4';
frm_descpagto.img_CREDITO.visible:=true;
frm_descpagto.img_CREDITO.Align:=alclient;
frm_descpagto.showmodal;
end;
{btn_cheque.Enabled:=false;
btn_dinheiro.Enabled:=false;
btn_debito.Enabled:=false;
//btn_OUTROS.Enabled:=FALSE;
btn_CREDLOJA.Enabled:=FALSE;}
lbl_FORMAPAGTO.Caption:='Crédito';
tipo_pagto:=4;
frm_fechacupom.edt_valorpago.SetFocus;
btn_fecha.Enabled:=true;
end;

procedure Tfrm_FECHACUPOM.btn_CREDLOJAClick(Sender: TObject);
var
  saldo:double;
  contador:integer;
begin
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.isnull then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=5;
saldo:=dm_dados.zqry_VDCLIENTESALDOCREDITO.Asfloat;
DM_DADOS.zqry_FNRESTRICAO.Close;
dm_Dados.zqry_FNRESTRICAO.sql.clear;
DM_dADOS.zqry_FNRESTRICAO.sql.add('select * from fnrestricao where codcli=:cliente and sitrestr=:situacao and codemp=99');
DM_DADOS.zqry_FNRESTRICAO.parambyname('cliente').asinteger:=dm_dados.zqry_VDCLIENTECODCLI.asinteger;
DM_DADOS.zqry_FNRESTRICAO.parambyname('situacao').asstring:='I';
dm_dados.zqry_FNRESTRICAO.open;
if dm_dados.zqry_FNRESTRICAO.IsEmpty then
  begin
    tipo_pagto:=5;
    zqry_sgsequenciarec.Close;
    zqry_sgsequenciarec.sql.clear;
    zqry_sgsequenciarec.sql.add('select * from sgsequencia where sgtab=:tipo and codemp=99');
    zqry_sgsequenciarec.parambyname('tipo').asstring:='RC';
    zqry_sgsequenciarec.open;
    contador:=zqry_SGSEQUENCIARECNROSEQ.AsInteger;
    case MessageBox(Handle, 'Deseja gerar Contas a Receber dessa Venda?','Gerar Contas a Receber?', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  //se clicar em sim faça isso
        begin
          edt_valorpago.Text:='0';
           if dm_dados.impressao50='S' then
           begin
              frm_rel_pedido50.rlreport1.Update;
              frm_rel_pedido50.rlreport1.Prepare;
              frm_rel_pedido50.rlreport1.Print;
            end
            else
            begin
              frm_rel_pedido.rlreport1.Update;
              frm_rel_pedido.rlreport1.Prepare;
              frm_rel_pedido.rlreport1.Print;
            end;


              end;
      IDNO:  //se clicar em não faça isso
        begin
            // nao faz nada
        end;
    end;
  end
else
  begin
    mostratelaaviso('Cliente com Restrição de Crédito','');
  end;
btn_cheque.Enabled:=false;
btn_dinheiro.Enabled:=false;
btn_CREDITO.Enabled:=false;
btn_debito.Enabled:=FALSE;
formapagto:='D';
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.isnull then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=1;
dm_Dados.zqry_FASTSALE.Edit;
dm_Dados.zqry_FASTSALECODTIPOCOB.Value:=1;
dm_Dados.zqry_FASTSALEVLRDESCVENDA.ASFLOAT:=strtofloat(edt_VLRDESC.text);
dm_Dados.zqry_FASTSALE.Post;
dm_dados.zqry_FASTSALE.applyupdates();
edt_valorpago.Enabled:=true;
if falta=0 then edt_valorpago.text:=lbl_totalapagar.caption;
if falta>0 then edt_valorpago.Text:=floattostr(falta);
DBLookupComboBox1.Color:=clwhite;
edt_valorpago.SetFocus;
edt_valorpago.Color:=clyellow;
lbl_FORMAPAGTO.Caption:='Loja';
tipo_pagto:=5;
tmemoresultado.clear;
tmemoresultado.Visible:=false;
btn_fecha.Enabled:=true;
end;

procedure Tfrm_FECHACUPOM.btn_DEBITOClick(Sender: TObject);
var
  valor: double;
  exibirInterface: boolean;
  //configs: Configuracoes;
begin
formapagto:='C';
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.IsNull  then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=3;
dm_Dados.zqry_FASTSALE.Edit;
dm_Dados.zqry_FASTSALEVLRDESCVENDA.ASFLOAT:=frm_FECHACUPOM.valordesconto;
dm_Dados.zqry_FASTSALECODTIPOCOB.Value:=3;
dm_Dados.zqry_FASTSALE.Post;
dm_dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_SGFILIAL.Open;
if falta=0 then valor := totalpagar;
if falta>0 then valor := falta;
if (dm_Dados.zqry_SGFILIALTEF_CAPPTA.AsString='S') and (dm_Dados.tefestacao='S') then
begin
  frm_fechacupom.edt_valorpago.SetFocus;
  if frm_cupom.DeveIniciarMultiCartoes() then
  begin
     frm_cupom.IniciarMultiCartoes();
  end;
 tmemoresultado.Visible:=true;
 tmemoresultado.Update;
 frm_cupom.cliente.PagamentoDebito(valor);
 frm_cupom.processandoPagamento := true;
 frm_cupom.IterarOperacaoTef();
 sleep(1500);
 setforegroundwindow(frm_fechacupom.Handle);
 if frm_fechacupom.canfocus then
 begin
  frm_fechacupom.SetFocus;
  lbl_focus.Caption:=activecontrol.Name;
  frm_fechacupom.edt_valorpago.SetFocus;
 end;
end
else
begin
frm_descpagto.Caption:='DESCRITIVO DO PAGAMENTO EM CARTÃO DÉBITO';
frm_descpagto.lbl_mens1.caption:='Insira o Código de Autorização';
frm_descpagto.edt_Descpagto.visible:=true;  // esconde edit descpagto
frm_descpagto.msk_cheque.visible:=false; // mostra maskedit para digitar o cheque
frm_descpagto.edt_descpagto.Left:=8;
frm_descpagto.edt_descpagto.Top:=25;
frm_descpagto.edt_DESCPAGTO.Text:='1234567890';
frm_descpagto.lbl_bandeira.Visible:=true;
frm_descpagto.cb_BANDEIRA.Visible:=true;
frm_descpagto.edt_CODTIPOcob.Text:='5';
frm_descpagto.img_debito.visible:=true;
frm_descpagto.img_debito.Align:=alclient;
frm_descpagto.showmodal;
end;
lbl_FORMAPAGTO.Caption:='Débito';
tipo_pagto:=3;
frm_fechacupom.edt_valorpago.SetFocus;
btn_fecha.Enabled:=true;
end;

procedure Tfrm_FECHACUPOM.btn_DINHEIROClick(Sender: TObject);
begin
//dm_Dados.zqry_fastsale.Active:=true;
formapagto:='D';
if dm_DADOS.zqry_FNTIPOCOBTIPONFE.isnull then tipo_pagto:=dm_dados.zqry_FNTIPOCOBTIPONFE.AsInteger else tipo_pagto:=1;
dm_Dados.zqry_FASTSALE.Edit;
dm_Dados.zqry_FASTSALECODTIPOCOB.Value:=1;
dm_Dados.zqry_FASTSALEVLRDESCVENDA.ASFLOAT:=strtofloat(edt_VLRDESC.text);
dm_Dados.zqry_FASTSALE.Post;
dm_dados.zqry_FASTSALE.applyupdates();
edt_valorpago.Enabled:=true;
if falta=0 then edt_valorpago.text:=lbl_totalapagar.caption;
if falta>0 then edt_valorpago.Text:=floattostr(falta);
DBLookupComboBox1.Color:=clwhite;
edt_valorpago.SetFocus;
edt_valorpago.Color:=clyellow;
{btn_cheque.Enabled:=false;
btn_DEBITO.Enabled:=false;
btn_CREDITO.Enabled:=false;
//btn_OUTROS.Enabled:=FALSE;
btn_CREDLOJA.Enabled:=FALSE;}
lbl_FORMAPAGTO.Caption:='Dinheiro';
tipo_pagto:=1;
tmemoresultado.clear;
tmemoresultado.Visible:=false;
btn_fecha.Enabled:=true;
//showmessage(inttostr(tipo_pagto));
end;

procedure Tfrm_FECHACUPOM.btn_EMITENFCEClick(Sender: TObject);
var
 vAux, vNumLote, vSincrono, ncaminho : String;
 Sincrono : boolean;
 LARQ                  :TStringList;
 ARQ          :TextFile;
begin
  ncaminho:=emptystr;
  frm_PREFACBR.ACBrNFe1.NotasFiscais.Clear;
  desabilitaEnter:=true;
  valorcheio:=0;
  valordesconto:=0;
  valorliquido:=0;
  totitens:=0;
  valorcheio:=strtofloat(edt_valorvenda.text);
  valordesconto:=strtofloat(edt_vlrdesc.Text);
  valorliquido:=strtofloat(lbl_totalapagar.caption);
  //CONSULTA SEQUENCIA ANTES DE GERAR
  zqry_SEQNFCE.Close;
  zqry_SEQNFCE.SQL.Clear;
  zqry_SEQNFCE.SQL.ADD('select max(contador) as ultnfce from sgsequencianfce where codemp=:empcod');
  zqry_SEQNFCE.parambyname('empcod').asinteger:=dm_dados.codemp;
  zqry_SEQNFCE.open;
  //MostraTelaAguarde('Próxima Nota a ser emitida n.º '+ inttostr({numeronf+1}1));
  //vaux:=frm_principal.db_NFCE.Caption;
  vaux:=inttostr(zqry_SEQNFCEULTNFCE.AsInteger);
  vNumLote:='1';
  vNumLote:= OnlyNumber(vNumLote);
  frm_prefacbr.acbrnfe1.configuracoes.arquivos.pathsalvar:='..\nfe\nfe\'+dm_dados.zqry_SGFILIALCNPJFILIAL.Value+'\nfce\logs\';

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  vSincrono := '0';
  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inválido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then Sincrono := True else Sincrono := False;

  frm_prefacbr.ACBrNFe1.NotasFiscais.Clear;
  frm_prefacbr.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  frm_prefacbr.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
  frm_prefacbr.ACBrNFe1.Configuracoes.Geral.VersaoQRCode:=veqr200;
  GerarNFCe(vAux);
  frm_prefacbr.ACBrNFe1.NotasFiscais.GravarXML();
  MostraTelaNotifica('ENVIANDO NFCE','Aguarde');
  Try
    //PurgeJobsOnCurrentPrinter;
    frm_cupom.lbl_STATUS.Visible:=true;
    frm_cupom.lbl_STATUS.Caption:='FECHANDO CUPOM';
    frm_cupom.lbl_STATUS.Update;
    frm_prefacbr.acbrnfe1.NotasFiscais.GerarNFe;
    frm_prefacbr.ACBrNFe1.NotasFiscais.Assinar;
    frm_prefacbr.ACBrNFe1.NotasFiscais.Validar;
    sleep(100);
    chave_nfe:=copy(frm_prefacbr.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
    ncaminho:=dm_Dados.s_path_nfe+'\nfe\'+dm_dados.zqry_SGFILIALCNPJFILIAL.Value+'\nfce\'+inttostr(currentyear)+formatdatetime('mm',date)+'\nfce\'+chave_nfe+'-nfe.xml';

    //SEM INTERNET
    if (dm_dados.contingencia='S') then
    begin
      try
        if dm_dados.impressao50='S' then
        begin
          frm_prefacbr.ACBrNFeDANFCeFortes1.LarguraBobina:=190;
        end
        else
        begin
          frm_prefacbr.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largurabobina;
        end;
       //showmessage('aqui');
       lbl_msgsis.Caption:='Enviando Impressora';
       lbl_msgsis.update;
       //showmessage('Atenção Operador'#13'Sem acesso a Receita/Internet');
       sArquivoEntNfe := s_NFe_Ent;
            AssignFile(arq, s_NFe_Ent);
            larq := TStringList.Create;
            larq.add('NFE.ImprimirDanfe("'+ncaminho+'", , , , ,)');
            larq.SaveToFile(sArquivoEntNfe);
       //imprimir acbrmonitor
      except
        showmessage('Não foi possível Imprimir. Tentando novamente');
        sleep(100);
        frm_prefacbr.acbrnfe1.NotasFiscais.Imprimir;
        exit;
      end;
    end;

     //bloco novo
    frm_prefacbr.ACBrNFe1.NotasFiscais.ImprimirPDF;
    if (dm_Dados.zqry_SGFILIALTEF_CAPPTA.AsString='S') and (tMemoresultado.GetTextLen <> 0) then
    begin
      rlprinter.PrinterIndex:=-1;
      frm_rel_tef.RLReport1.Update;
      frm_rel_tef.RLReport1.Prepare;
      frm_rel_tef.rlreport1.Print;
      frm_rel_tef.Close;
     end;

   // Gravar dados no Pedidos

    dm_Dados.zqry_SGFILIAL.Close;
    dm_Dados.zqry_SGFILIAL.SQL.Clear;
    dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
    dm_dados.zqry_SGFILIAL.Open;

    //nao sei pq tem essa consulta

    if (r=0) and (dm_dados.contingencia='N')  then
    begin
      MostraTelaAguarde('Transmitindo Receita');
      FRM_PREFACBR.ACBrNFe1.DANFE := FRM_PREFACBR.ACBrNFeDANFCeFortes1 ;
      frm_prefacbr.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largurabobina;
      //PROTOCOLO E IMPRESSÃO
      if dm_dados.imprimeprotocolo='N' then
      begin
        if dm_dados.imprimemonitor='N' then
        begin
          frm_prefacbr.acbrnfe1.NotasFiscais.Imprimir;
        end
        else
        begin
          sArquivoEntNfe := s_NFe_Ent;
          AssignFile(arq, s_NFe_Ent);
          larq := TStringList.Create;
          larq.add('NFE.ImprimirDanfe("'+ncaminho+'", , , , ,)');
          larq.SaveToFile(sArquivoEntNfe);
        end;
      end;

      try
        frm_prefacbr.ACBrNFe1.Enviar(vNumLote,false,Sincrono);
         //PROTOCOLO E IMPRESSÃO
        if dm_dados.imprimeprotocolo='S' then
        begin
          if dm_dados.imprimemonitor='N' then
          begin
            frm_prefacbr.acbrnfe1.NotasFiscais.Imprimir;
          end
          else
          begin
            sArquivoEntNfe := s_NFe_Ent;
            AssignFile(arq, s_NFe_Ent);
            larq := TStringList.Create;
            larq.add('NFE.ImprimirDanfe("'+ncaminho+'", , , , ,)');
            larq.SaveToFile(sArquivoEntNfe);
          end;
        end;
      except
        //showmessage('Nota não validada. Impressão simples conferência sem valor fiscal');//
         frm_prefacbr.acbrnfe1.NotasFiscais.Imprimir;
      end;
      fechatelaaguarde;
     
      if (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat = 100) or (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat = 110) or (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat = 105) then // Autorizado o uso da NF-e ou denegada
      begin
        zquery2.Close;
        zquery2.SQL.Clear;
        zquery2.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
        zquery2.Open;
        dm_Dados.EXECUTASGINICONSP;
    	  MostraTelaAguarde('Gravandos dados no Pedido de Venda');
        dm_Dados.EXECUTASGINICONSP;
        dm_dados.zqry_VDVENDA.SQL.Clear;
        dm_dados.zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=:mov, serie=:serienf, docvenda=:vendadoc, codcli=:clicod, vlrprodvenda=:valorcheio, ');
        dm_dados.zqry_VDVENDA.SQL.Add('vlrdescvenda=:valordesc, vlrliqvenda=:valorliq, vlrbaseipivenda=:ipi,codtipocob=:tipocob, codplanopag=:planocod, obsvenda=:observa,');
        dm_dados.zqry_VDVENDA.SQL.Add('nomecli=:clinome, chavenfevenda=:chave, protocolo=:prot, caminho=:path where codvenda=:venda and codemp=:empcod');
        dm_dados.zqry_vdvenda.parambyname('valorcheio').asfloat:=valorfechamento;
        dm_Dados.zqry_VDVENDA.ParamByName('venda').AsInteger:=frm_CUPOM.seqsequencia;
        dm_Dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=99;
        dm_Dados.zqry_vdvenda.parambyname('valordesc').asfloat:=strtofloat(edt_VLRDESC.Text);
        dm_dados.zqry_vdvenda.parambyname('valorliq').asfloat:=valorliquido;
        dm_dados.zqry_VDVENDA.parambyname('clicod').AsInteger:=cliente;
        dm_dados.zqry_VDVENDA.ParamByName('planocod').AsInteger:=strtoint(DBText4.Caption);
        dm_dados.zqry_VDVENDA.ParamByName('observa').Asstring:=edt_obsvenda.Text;
        dm_dados.zqry_VDVENDA.ParamByName('clinome').Asstring:=edt_nomecli.Text;
        DM_dados.zqry_vdvenda.parambyname('ipi').AsFloat:=valorliquido;
        dm_Dados.zqry_VDVENDA.ParamByName('tipocob').asinteger:=tipo_pagto;
        //
        dm_dados.zqry_vdvenda.parambyname('mov').asinteger:=601;
        dm_Dados.zqry_vdvenda.parambyname('serienf').asstring:='1';
        dm_Dados.zqry_vdvenda.parambyname('chave').asstring:=chave_nfe;
        dm_dados.zqry_VDVENDA.ParamByName('prot').AsString:=frm_prefacbr.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
        dm_dados.zqry_VDVENDA.ParamByName('path').AsString:=ncaminho;
        dm_dados.zqry_vdvenda.parambyname('vendadoc').asinteger:= frm_prefacbr.acbrnfe1.NotasFiscais.Items[0].NFe.Ide.nNF;
        dm_dados.zqry_VDVENDA.EXECSQL;
        fechatelaaguarde;
        Dm_DADOS.zqry_VDVENDA.Close;
        dm_Dados.zqry_vdvenda.sql.clear;
        DM_dADOS.zqry_vdvenda.sql.add('select * from vdvenda where codtipomov<>601 and dtemitvenda=:data order by codvenda');
        DM_DADOS.zqry_vdvenda.params.parambyname('data').Value:=datetostr(now);
        dm_dados.zqry_vdvenda.open;

        dm_dados.zqry_SGNF.Close;
        dm_dados.zqry_SGNF.Open;
        dm_dados.zqry_sgnf.Append;
        dm_dados.zqry_SGNFCODIGO.Value:=1+zquery2.FieldByname('ultcodigo').asInteger;
        dm_Dados.zqry_SGNFCHAVE.Value:=chave_nfe;
        dm_dados.zqry_SGNFDATA.value:=date;
        dm_dados.zqry_SGNFHORA.Value:=time;
        dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
        dm_dados.zqry_SGNFCODMOV.AsInteger:=601;//dm_Dados.zqry_VDVENDACODTIPOMOV.AsInteger;
        dm_Dados.zqry_SGNFSITUACAO.Value:='NFCe Venda Emitida';
        dm_dados.zqry_sgnfvalor.asfloat:=strtofloat(lbl_TOTALAPAGAR.caption);//dm_dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
        dm_dados.zqry_SGNFNFCE.AsString:='S';
        dm_dados.zqry_SGNFENVIADO.AsString:='S';
        DM_dADOS.zqry_SGNFNUMERO.asinteger:=dm_Dados.zqry_SGSEQUENCIANFCECONTADOR.value;
    	  dm_Dados.zqry_SGNF.post;
        dm_dados.zqry_SGNF.applyupdates();
      end
      else
      begin
        showmessage('Nota Emitida para Simples conferência. Favor Notificar Suporte');
        DeleteFile(ncaminho);
      end;
    end;

  Except
    //fechatelaaguarde;
  end;
  //MostraTelaAguarde('Processo de emissão finalizado');
  pulanfce;
  desabilitaEnter:=false;
  encerracupom;
  recibo_nfe:=frm_prefacbr.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt; //numero do protocolo
  frm_cupom.lbl_cstat.caption:='';
  if (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat=100)  or (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat=110) then frm_cupom.lbl_cstat.Caption:='Nota OK!';
  if (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat<>100) or (frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat=110) then frm_cupom.lbl_cstat.Caption:='ERRO + CStat '+inttostr(frm_prefacbr.ACBrNFe1.WebServices.Retorno.cStat);
  frm_cupom.lbl_cstat.Update;
  frm_prefacbr.ACBrNFe1.NotasFiscais.Clear;
  TMemoResultado.Lines.Clear;
  //fechatelaaguarde;
end;

procedure Tfrm_FECHACUPOM.btn_EMITESATClick(Sender: TObject);
var
  TotalItem, TotalGeral, Pagto1: Double;
  tini, tfim: TDateTime;
  A: Integer;
begin
//  sleep(1000);
  frm_prefacbr.AjustaACBrSAT;
  TotalGeral := 0;
//  frm_pre  ACBrSAT1.CFe.IdentarXML := cbxFormatXML.Checked;
//  ACBrSAT1.CFe.TamanhoIdentacao := 3;
// ACBrSAT1.CFe.RetirarAcentos := cbxRemoverAcentos.Checked;

  mVendaEnviar.Clear;

  // Trasnferindo Informa??es de Config para o CFe //
  //frm_prefacbr.ACBrSAT1.Inicializado;
  frm_prefacbr.ACBrSAT1.InicializaCFe ;

  // Montando uma Venda //
  with frm_prefacbr.ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;
    ide.cNF := StrToInt(frm_principal.db_NFCE.Caption);
    if cpf<>'' then Dest.CNPJCPF := cpf;
    if nome='' then Dest.xNome := 'NOME NAO INFORMADO' else Dest.xNome:=nome;

    {Entrega.xLgr := dm_dados.zqry_sgfilialendfilial.asstring;
    Entrega.nro :=  dm_dados.zqry_SGFILIALNUMFILIAL.AsString;
    Entrega.xCpl := dm_dados.zqry_SGFILIALCOMPLFILIAL.asstring;
    Entrega.xBairro := dm_dados.zqry_SGFILIALBAIRFILIAL.asstring;
    Entrega.xMun := 'SAO PAULO ';
    Entrega.UF := dm_dados.zqry_sgfilialsiglauf.asstring; }

    dm_Dados.zqry_vditvenda.First;
    contador:=1;
    while not DM_DADOS.zqry_VDITVENDA.eof do
    begin
       with Det.Add do
       begin
         codigoproduto:=dm_dados.zqry_VDITVENDACODPROD.AsInteger;
         DM_DADOS.zqry_EQPRODUTO.Params.Clear;
         dm_dados.zqry_EQPRODUTO.close;
         dm_dados.zqry_EQPRODUTO.SQL.Clear;
         dm_dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodcod and codemp=:empcod');
         dm_dados.zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=codigoproduto;
         dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
         dm_dados.zqry_EQPRODUTO.Open;
         DESCRICAO:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
         NCM:=dm_DADOS.zqry_EQPRODUTOCODFISC.AsString;
         EAN:=dm_dados.zqry_EQPRODUTOCODBARPROD.asstring;
         UNI:=dm_dados.zqry_EQPRODUTOCODUNID.AsString;
         CEST:=dm_Dados.zqry_EQPRODUTOCEST.AsString;

         nItem    := contador; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := dm_dados.zqry_VDITVENDACODPROD.AsString;
         Prod.cEAN     := EAN;
         Prod.xProd    := DESCRICAO;
         Prod.NCM      := NCM; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         //Prod.EXTIPI   := '';
         Prod.CFOP     := dm_Dados.zqry_VDITVENDACODNAT.ASSTRING;
         Prod.uCom     := UNI;
         Prod.qCom     := SimpleRoundto(dm_dados.zqry_VDITVENDAQTDITVENDA.value,-3);
       //  showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAQTDITVENDA.value,-3)));
         Prod.vUnCom   := SimpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2);
         //showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAPRECOITVENDA.value,-2)));
         Prod.vProd    := SimpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.asCurrency,-2);
         Prod.indRegra := irTruncamento;
         //showmessage(floattostr(SimpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value,-2)));
         //Prod.vDesc     := dm_dados.zqry_VDITVENDAVLRDESCITVENDA.AsCurrency;
         //Prod.CEST := CEST;
         Prod.vDesc := dm_dados.zqry_VDITVENDAVLRDESCITVENDA.AsCurrency;

         with Prod.obsFiscoDet.Add do
         begin
           xCampoDet := 'campo';
           xTextoDet := 'texto ';
          end;

        TotalItem := RoundABNT((Prod.qCom * Prod.vUnCom) + Prod.vOutro - Prod.vDesc, -2);
        TotalGeral := TotalGeral + TotalItem;
        Imposto.vItem12741 := simpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value, -3) * 0.12;

        Imposto.ICMS.orig := oeNacional;
        if Emit.cRegTrib = RTSimplesNacional then
          Imposto.ICMS.CSOSN := csosn102
        else
          Imposto.ICMS.CST := cst00;
          Imposto.ICMS.pICMS := 18;
          Imposto.PIS.CST := pis49;
          Imposto.PIS.vBC := simpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value, -3);
          Imposto.PIS.pPIS := 0.0065;
          Imposto.COFINS.CST := cof49;
          Imposto.COFINS.vBC := simpleRoundto(dm_dados.zqry_VDITVENDAVLRPRODITVENDA.value, -3);
          Imposto.COFINS.pCOFINS := 0.0065;
      //
      //Imposto.COFINSST.vBC := 87206.46;
      //Imposto.COFINSST.pCOFINS := 1.8457;

          infAdProd := 'Pedido: '+dm_dados.zqry_VDVENDACODVENDA.asstring;
       end;

    contador:=contador+1;
    dm_dados.zqry_VDITVENDA.Next;
  end;

    Total.DescAcrEntr.vDescSubtot := FloatToCurr(valordesconto);
    //Total.vCFE:=floattoCurr(valorvenda);
    Total.vCFeLei12741 := FloatToCurr(valorvenda)* 0.12;

    Pagto1 := RoundABNT(TotalGeral,-2);
    with Pagto.Add do
    begin
       if tipo_pagto=1 then cMP := mpDinheiro;
       If tipo_pagto=2 then cMP := mpCheque;
       if tipo_pagto=3 then cMP := mpCartaodeDebito;
       if tipo_pagto=4 then cMP := mpCartaodeCredito;
       if tipo_pagto=5 then cMP := mpCreditoLoja;
       if tipo_pagto>5 then cMP := mpDinheiro;
       //cMP := mpDinheiro;
       vMP := FloatToCurr(valorvenda);
    end;

    InfAdic.infCpl := ' ';
  end;
  mVendaEnviar.Lines.Text := frm_prefacbr.ACBrSAT1.CFe.GerarXML( True );    // True = Gera apenas as TAGs da aplica??o
  mLog.Lines.Add('Venda Gerada');

  if mVendaEnviar.Text = '' then showmessage('Venda não gerada no SAT');//mGerarVenda.Click;

  tini := now;
  frm_prefacbr.ACBrSAT1.EnviarDadosVenda( mVendaEnviar.Text );
  tfim := now;
  mLog.Lines.Add('------------------------------------------------') ;
  mLog.Lines.Add('Iniciado em: '+DateTimeToStr(tini)) ;
  mLog.Lines.Add('Finalizado em: '+DateTimeToStr(tFim)) ;
  mLog.Lines.Add('') ;
  mLog.Lines.Add('Tempo de Envio e Recebimento: '+ FormatFloat('##0.00',SecondSpan(tini,tfim))+' segundos' ) ;
  mLog.Lines.Add('------------------------------------------------') ;

  frm_cupom.img_PRODUTO.Picture:=nil;
frm_cupom.valortotal:=0;
frm_cupom.precoproduto:=0;
frm_cupom.precototal:=0;
frm_cupom.item:=1;
frm_cupom.edt_ean.clear;
frm_cupom.edt_EAN.setfocus;
frm_cupom.edt_QTD.Text:='1';
frm_cupom.LBL_CUPOM.Caption:='';
frm_cupom.lbl_PRODUTO.caption:='';
frm_cupom.lbl_PRECO.Caption:='';
frm_cupom.lbl_VALORTOTAL.Caption:='';
frm_cupom.edt_PRECOVENDA.Clear;
frm_cupom.lbl_status.Caption:='CAIXA DISPONÍVEL !';
frm_cupom.lbl_QTDITENS.Caption:='';
//frm_principal.dbt_DESCPROD.DataSource:=nil;
frm_cupom.item:=0;
frm_cupom.valortotal:=0;
frm_cupom.DBGrid_Itens.visible:=true;
frm_cupom.lbl_CLIENTE.Caption:='';
//
dm_Dados.zqry_FNPLANOPAG.Close;
dm_dados.zqry_VDFRETEVD.Close;
dm_dados.zqry_VDVENDA.close;
dm_dados.zqry_VDITVENDA.Close;
dm_dados.zqry_FASTSALE.Close;
dm_Dados.zqry_ITFASTSALE.Close;
dm_Dados.zdts_EQPRODUTO:=nil;
dm_Dados.zdts_FASTSALE:=nil;
dm_dados.zdts_ITFASTSALE:=nil;

  Dm_DADOS.zqry_VDVENDA.Close;
  dm_Dados.zqry_vdvenda.sql.clear;
  DM_dADOS.zqry_vdvenda.sql.add('select * from vdvenda where codtipomov<>601 and dtemitvenda=:data order by codvenda');
  DM_DADOS.zqry_vdvenda.params.parambyname('data').Value:=datetostr(now);
  dm_dados.zqry_vdvenda.open;


  if frm_prefacbr.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
  begin
    showmessage('VENDA GERADA E ENVIADA');
    //prepararimpressao;
    LoadXML( frm_prefacbr.ACBrSAT1.CFe.AsXMLString, mRecebido );
    PageControl1.ActivePage := tsRecebido;

{    ACBrSAT1.CFe.ide.dEmi;
    ACBrSAT1.CFe.infCFe.ID;
    ACBrSAT1.CFe.Total.vCFe;
    ACBrSAT1.CFe.Dest.CNPJCPF;
    ACBrSAT1.CFe.ide.assinaturaQRCODE;      }
  end;

      showmessage('Preparando Impressão');
   // PrepararImprerm_prefacbr.ACBrSAT1.ImprimirExtratoResumido;
     PrepararImpressao;
      //ACBrSAT1.CFe.LoadFromFile('C:\temp\AD35180111111111111111591234567890001128242021.xml');
      //ACBrSAT1.CFe.LoadFromFile('C:\temp\AD35180111111111111111591234567801185486520.xml');
      tini := now;
      //ACBrSATExtratoFortes1.Filtro := fiPDF;
      //ACBrSATExtratoFortes1.ImprimirExtrato;
      frm_prefacbr.ACBrSAT1.ImprimirExtrato;
      tfim := now;
      mLog.Lines.Add('Inciado em: '+DateTimeToStr(tini)) ;
      mLog.Lines.Add('Finalizado em: '+DateTimeToStr(tFim)) ;
      mLog.Lines.Add('Diferença: '+ FormatFloat('###.##',SecondSpan(tini,tfim))+' segundos' ) ;

end;

procedure Tfrm_FECHACUPOM.Kill1Click(Sender: TObject);
begin
case MessageBox(Handle, 'Deseja Encerrar aplicação?',
  'Encerrar a Aplicação?', MB_YESNO + MB_ICONQUESTION) of
  IDYES:  //se clicar em sim faça isso
  begin
    Application.Terminate;
  end;
  IDNO:  //se clicar em não faça isso
  begin
  end;
end;
end;

procedure Tfrm_FECHACUPOM.CALCULO;
var
  a:integer;
begin
valorvenda:=0;
valortroco:=0;
valordesconto:=0;
valordesconto:=strtofloat(edt_VLRDESC.Text);
//valorvenda:=strtofloat(edt_valorvenda.Text)+strtofloat(valoradic)-valordesconto;
valorvenda:=roundto(zqry_VDVENDAVLRPRODVENDA.Asfloat,-2)+strtofloat(valoradic)-valordesconto;
//showmessage('essa variavel '+floattostr(valorvenda));
if FORMAPAGTO='D' then valorpago:=strtofloat(edt_valorpago.text);
if FORMAPAGTO='C' then valorpago:=strtofloat(lbl_TOTALAPAGAR.caption);
if apagar=0 then
begin
  valortroco:=valorpago-valorvenda;
  //showmessage('igual a 0 | Troco '+floattostr(valortroco)+' Valor Pago '+floattostr(valorpago)+' Valor Venda '+floattostr(valorvenda));
end;
if apagar>0 then
begin
  valortroco:=pago-apagar;
  //showmessage('Maior que 0 | Troco '+floattostr(valortroco)+' Valor Pago '+floattostr(pago)+' A Pagar '+floattostr(apagar));
end;
//showmessage('Troco '+floattostr(valortroco));
edt_valorpago.Text:=formatfloat('##0.00',valorpago);
if valortroco>=0 then edt_valortroco.Text:=formatfloat('##0.00',valortroco);//floattostr(valortroco);
if valortroco<0  then edt_valortroco.Text:='0';

edt_valortroco.Update;
   try
      ACBrTroco1.Troco := StrToFloat(edt_valortroco.Text);
   except
      mostratelaaviso('ESSE VALOR NÃO É PERMITIDO','Verifique o valor digitado como pagamento');
   end;

   Memo_Troco.Lines.Clear;
   for A := 0 to ACBrTroco1.TrocoList.Count -1 do
      begin
         with Memo_Troco.Lines do
            begin
               Add(FloatToStr(ACBrTroco1.TrocoList[A].Quantidade)+' '+ACBrTroco1.TrocoList[A].Tipo+' de '+ACBrTroco1.TrocoList[A].Descricao);
               Add('------------------------------------------');
            end;
      end;
  edt_valortroco.update;
end;

procedure Tfrm_FECHACUPOM.CarregarXML1Click(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo XML|*.xml';
  if OpenDialog1.Execute then
  begin
     frm_prefacbr.ACBrSAT1.CFe.LoadFromFile( OpenDialog1.FileName );
     if (pos('<Signature', frm_prefacbr.ACBrSAT1.CFe.AsXMLString) > 0) then
     begin
       LoadXML( frm_prefacbr.ACBrSAT1.CFe.AsXMLString, mRecebido );
       PageControl1.ActivePage := tsRecebido;
     end
     else
     begin
       mVendaEnviar.Lines.Text := frm_prefacbr.ACBrSAT1.CFe.AsXMLString;
       PageControl1.ActivePage := tsGerado;
     end;
  end ;
end;

procedure Tfrm_FECHACUPOM.ConsultaCliente1Click(Sender: TObject);
begin
  buscacliente:=2;
  edt_CODCLIENTE.CLEAR;
  edt_codcliente.SetFocus;
  frm_con_clientes.show;
end;

procedure Tfrm_FECHACUPOM.ContinuarVendendo1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_FECHACUPOM.edt_CODCLIENTEEnter(Sender: TObject);
begin
    edt_codcliente.Color:=clyellow;
    edt_vlrdesc.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_CODCLIENTEKeyPress(Sender: TObject;  var Key: Char);
var
  testacodcli:integer;
begin
  if(key = #13) and (edt_codcliente.Text='')  then
  begin
    if MessageBox(HANDLE, 'Deseja buscar Clientes?'#13'Confirme com Sim'#13'Para não buscar clique em Não', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin
      buscacliente:=2;
      frm_con_clientes.show;
    end
    else
    begin
      edt_CODCLIENTE.Clear;
      edt_CODCLIENTE.SetFocus;
    end;
  end;
  if (key = #13) and (edt_codcliente.text<>'') then
  begin
    if trystrtoint(edt_codcliente.Text,testacodcli) then
    begin
       btn_BUSCACLIENTEClick(Self);
    end
    else
    begin
      edt_codcliente.Clear;
      edt_codcliente.Text:='1';
    end;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_CODVENDEnter(Sender: TObject);
begin
  EDT_CODVEND.Text:='1';
  edt_codvend.Color:=clyellow;
  edt_cupomdesc.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_CODVENDKeyPress(Sender: TObject; var Key: Char);
var
  testacodvend:integer;
begin
  if(key = #13) and (edt_codvend.Text='') then edt_codvend.Text:='1';
  if (key =#13) and (edt_codvend.Text<>'') then
  begin
    if trystrtoint(edt_codvend.Text,testacodvend) then
    begin
      btn_BUSCAVENDEDORClick(Self);
    end
    else
    begin
      edt_codvend.clear;
      edt_codvend.Text:='1';
    end;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_CPFEnter(Sender: TObject);
begin
    edt_cpf.Color:=clyellow;
    edt_codcliente.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_CPFExit(Sender: TObject);
begin
  CPF:=edt_CPF.TEXT;
end;

procedure Tfrm_FECHACUPOM.edt_CPFKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (edt_cpf.Text<>'')  then {and (dm_dados.zqry_sgfilialsatcfe.asstring='S')}
  begin
    edt_nomecli.setfocus;
    //edt_nomecli.Clear;
    edt_nomecli.Color:=clyellow;
    edt_CPF.Color:=clwhite;
  end;
  if (key=#13) and (edt_cpf.Text='') then
  begin
    edt_CUPOMDESC.SetFocus;
    edt_cupomdesc.Color:=clyellow;
    edt_nomecli.Color:=clwhite;
    edt_CPF.Color:=clwhite;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_CUPOMDESCEnter(Sender: TObject);
begin
edt_cupomdesc.color:=clyellow;
edt_cpf.Color:=clwhite;
edt_OBSVENDA.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_CUPOMDESCKeyPress(Sender: TObject; var Key: Char);
begin
  IF (KEY = #13) and (edt_cupomdesc.text='0')then
  begin
    btn_gravafastclick(self);
  end;
  IF (KEY = #13) and (edt_cupomdesc.text<>'0')then
  begin
    btn_BUSCACUPOMClick(Self);
    btn_gravafastclick(self);
  end;

end;

procedure Tfrm_FECHACUPOM.edt_NOMECLIEnter(Sender: TObject);
begin
edt_nomecli.Color:=clyellow;
edt_cpf.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_NOMECLIExit(Sender: TObject);
begin
  NOME:=edt_nomecli.text;
end;

procedure Tfrm_FECHACUPOM.edt_NOMECLIKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) then
  begin
    edt_OBSVENDA.SetFocus;
    edt_OBSVENDA.Color:=clyellow;
    edt_nomecli.Color:=clwhite;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_OBSVENDAEnter(Sender: TObject);
begin
edt_OBSVENDA.Color:=clyellow;
edt_NOMECLI.Color:=clwhite;
end;

procedure Tfrm_FECHACUPOM.edt_OBSVENDAExit(Sender: TObject);
begin
  OBSERVA:=edt_nomecli.text;
end;

procedure Tfrm_FECHACUPOM.edt_OBSVENDAKeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) then
  begin
    edt_CUPOMDESC.SetFocus;
    edt_cupomdesc.Color:=clyellow;
    edt_OBSVENDA.Color:=clwhite;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_valorpagoEnter(Sender: TObject);
begin
edt_valorpago.Color:=clyellow;
edt_valorpago.setfocus;
end;

procedure Tfrm_FECHACUPOM.edt_valorpagoExit(Sender: TObject);
begin
  valorfechamento:=strtofloat(edt_valorvenda.Text);
  //showmessage(floattostr(valorfechamento));
end;

procedure Tfrm_FECHACUPOM.edt_valorpagoKeyPress(Sender: TObject; var Key: Char);
begin
  if(key = #13) then
  begin
    valorpago:=valorpago+strtofloat(edt_valorpago.Text);
    pago:=pago+strtofloat(edt_valorpago.Text);
    apagar:=strtofloat(lbl_totalapagar.Caption);
    falta:=apagar-pago;
    if tipo_pagto=1 then pagodinheiro:=pagodinheiro+strtofloat(edt_valorpago.text)+strtofloat(valoradic);
    if tipo_pagto=3 then pagodebito:=pagodebito+strtofloat(edt_valorpago.text)+strtofloat(valoradic);
    if tipo_pagto=4 then pagocredito:=pagocredito+strtofloat(edt_valorpago.text)+strtofloat(valoradic);
    //showmessage('Dinheiro '+floattostr(pagodinheiro)+' Debito '+floattostr(pagodebito));
    //SE VALOR PAGO FOR MAIOR QUE O TOTAL A PAGAR
    //if (strtofloat(edt_valorpago.Text)>=strtofloat(lbl_TOTALAPAGAR.Caption)) then
    if pago>=apagar then
    begin
      //showmessage('no calculo');
      Calculo;
      btn_fecha.Enabled:=true;
      btn_fecha.SetFocus;
      edt_valorpago.Color:=clwhite;
      if CPF=''  then showmessage('>>>>> PRONTO PARA FECHAR  - VENDA SEM IDENTIFICAÇÃO DO CPF <<<<<<');
      if CPF<>'' then showmessage('>>>>> PRONTO PARA FECHAR  - IDENTIFICADO '+CPF+' <<<<<<');
      btn_fechaClick(Self);
    end;
    if (pago<apagar) and (apagar>0) then
    begin
      showmessage('Pagamento incompleto. Faltando R$ '+floattostr(falta));
      lbl_falta.Caption:=formatfloat('##0.00', falta);
      lbl_falta.Update;
      //MOSTRATELANOTIFICA('PAGAMENTO INCOMPLETO','Faltando ainda R$ '+floattostr(falta));
      edt_valorpago.Clear;
    end;
    // SE O VALOR PAGO FOR MENOR QUE O TOTAL A PAGAR
  end;
end;

procedure Tfrm_FECHACUPOM.edt_VLRDESCEnter(Sender: TObject);
begin
edt_vlrdesc.Color:=clyellow;
end;

procedure Tfrm_FECHACUPOM.edt_VLRDESCExit(Sender: TObject);
begin
  desabilitaEnter:=false;
  if edt_vlrdesc.Text='' then edt_vlrdesc.Text:='0';
  totalpagar:=frm_cupom.valortotal-(strtofloat(edt_VLRDESC.text));
  lbl_TOTALAPAGAR.caption:=formatfloat('##0.00', totalpagar);
  valoradic:='0';
  if dm_dados.adicnf='S' then
  begin
    if not(InputQuery('Deseja ADICIONAR Valor na Nota?', 'Informe o Valor Adicional', valoradic)) then
    exit;
  end;
end;

procedure Tfrm_FECHACUPOM.edt_VLRDESCKeyPress(Sender: TObject; var Key: Char);
var
  testadesc:double;
begin
  IF (KEY = #13) THEN
  begin
    if trystrtofloat(edt_vlrdesc.Text,testadesc) then
    begin
      EDT_CODCLIENTE.SETFOCUS;
      edt_codcliente.Color:=clyellow;
      edt_vlrdesc.Color:=clwhite;
    end
    else
    begin
      edt_vlrdesc.Clear;
      edt_vlrdesc.Text:='0';
    end;
  end;
end;

procedure Tfrm_FECHACUPOM.F1Click(Sender: TObject);
begin
  btn_fechaClick(SELF);
end;

procedure Tfrm_FECHACUPOM.Foco1Click(Sender: TObject);
begin
edt_valorpago.SetFocus;
end;

procedure Tfrm_FECHACUPOM.FormActivate(Sender: TObject);
var
  iFlags: Integer;
begin
edt_VLRDESC.StyleElements:=edt_vlrdesc.StyleElements - [seClient];
edt_codcliente.StyleElements:=edt_codcliente.StyleElements - [seClient];
edt_cpf.StyleElements:=edt_cpf.StyleElements - [seClient];
edt_nomecli.StyleElements:=edt_nomecli.StyleElements - [seClient];
edt_cupomdesc.StyleElements:=edt_cupomdesc.StyleElements - [seClient];
edt_codvend.StyleElements:=edt_codvend.StyleElements - [seClient];
DBLookupComboBox1.StyleElements:=DBLookupComboBox1.StyleElements - [seClient];
edt_valorpago.StyleElements:=edt_valorpago.StyleElements - [seClient];
  frm_CUPOM.btn_FECHAR.Enabled:=true;
  tmemoresultado.Visible:=false;
  buscacliente:=1;
  totitens:=0;
  desconto:=0;

  edt_valorvenda.Text:=formatfloat('##0.00', frm_cupom.valortotal);//(frm_principal.valortotal);
  if edt_valorvenda.Text='0' then
  begin
    iFlags :=  MB_OK or MB_SETFOREGROUND or MB_SYSTEMMODAL or MB_ICONINFORMATION;
  end;
end;

procedure Tfrm_FECHACUPOM.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet1;
  TMemoResultado.Text := String.Empty;
  desabilitaEnter:=false;
end;

procedure Tfrm_FECHACUPOM.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key = #13) and desabilitaEnter) then
    key:=#0;
end;

procedure Tfrm_FECHACUPOM.FormShow(Sender: TObject);
begin
//limpaspool;
edt_VLRDESC.StyleElements:=edt_vlrdesc.StyleElements - [seClient];
edt_codcliente.StyleElements:=edt_codcliente.StyleElements - [seClient];
edt_cpf.StyleElements:=edt_cpf.StyleElements - [seClient];
edt_nomecli.StyleElements:=edt_nomecli.StyleElements - [seClient];
edt_cupomdesc.StyleElements:=edt_cupomdesc.StyleElements - [seClient];
edt_codvend.StyleElements:=edt_codvend.StyleElements - [seClient];
DBLookupComboBox1.StyleElements:=DBLookupComboBox1.StyleElements - [seClient];
edt_valorpago.StyleElements:=edt_valorpago.StyleElements - [seClient];
pagodinheiro:=0;
pagodebito:=0;
pagocredito:=0;
valortroco:=0;
falta:=0;
valorpago:=0;
apagar:=0;
pago:=0;
LBL_FALTA.Caption:='';
lbl_NUMCUPOM.Caption:=frm_CUPOM.LBL_CUPOM.Caption;
minhavenda:=strtoint(frm_cupom.DBText1.Caption);
lbl_NUMVENDA.Caption:=inttostr(minhavenda);
edt_VLRDESC.Text:='0';
edt_VLRDESC.SetFocus;
edt_vlrdesc.Color:=clyellow;
btn_dinheiro.Enabled:=false;
btn_CHEQUE.Enabled:=false;
btn_CREDITO.Enabled:=false;
btn_DEBITO.Enabled:=false;
btn_CREDLOJA.Enabled:=false;
edt_valorpago.Enabled:=false;
btn_fecha.Enabled:=false;
meucupom:=strtoint(frm_cupom.DBText1.Caption);
zqry_vdvenda.Params.Clear;
zqry_vdvenda.Close;
zqry_vdvenda.SQL.Clear;
zqry_vdvenda.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
zqry_vdvenda.ParamByName('vendacod').AsInteger:=minhavenda;
zqry_vdvenda.ParamByName('empcod').asinteger:=dm_dados.codemp;
zqry_vdvenda.Open;
if zqry_vdvenda.IsEmpty then showmessage('Venda com finalizador não localizada');
end;

end.


