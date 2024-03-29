unit u_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Menus, Data.DB, ComCtrls, OleCtrls, SHDocVw,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, IdExplicitTLSClientServerBase,
  IdFTP, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ShellApi,
  WinSock, WinInet, Vcl.Imaging.jpeg, ACBrDANFCeFortesFrA4, ACBrNFeDANFeESCPOS,
  ACBrNFeDANFEClass, ACBrDANFCeFortesFr, ACBrDFeReport, ACBrDFeDANFeReport,
  ACBrNFeDANFeRLClass, ACBrPosPrinter, ACBrIntegrador, ACBrMail, ACBrBase,
  ACBrDFe, ACBrNFe, ACBrUtil, XMLIntf, XMLDoc, zlib, Vcl.Grids, Vcl.DBGrids,
  IdGlobal;


type
  Tfrm_PRINCIPAL = class(TForm)
    Image1: TImage;
    btn_FECHAR: TBitBtn;
    btn_ABLE: TBitBtn;
    btn_CONFIGURA: TBitBtn;
    btn_FERRAMENTA: TBitBtn;
    btn_SYNC: TBitBtn;
    lbl_STATUS: TLabel;
    pop_FERRAMENTA: TPopupMenu;
    RevogaLicenca1: TMenuItem;
    DataCom1: TMenuItem;
    Atualizacoes1: TMenuItem;
    Inspetor1: TMenuItem;
    ZQuery1: TZQuery;
    IdHTTP1: TIdHTTP;
    IdFTP1: TIdFTP;
    Panel1: TPanel;
    lbl_NOMEREVENDA: TLabel;
    lbl_MAILREVENDA: TLabel;
    lbl_TELREVENDA: TLabel;
    lbl_WHATSREVENDA: TLabel;
    N1: TMenuItem;
    zqry_SGATUALIZA: TZQuery;
    zqry_SGATUALIZACODATUALIZACAO: TIntegerField;
    zqry_SGATUALIZACODENVIO: TIntegerField;
    zqry_SGATUALIZADATALANCAMENTO: TDateTimeField;
    zqry_SGATUALIZAMODULO: TWideStringField;
    zqry_SGATUALIZALINK: TWideStringField;
    zqry_SGATUALIZAVERSAO: TWideStringField;
    zqry_SGATUALIZACODEST: TIntegerField;
    zqry_SGATUALIZASCRIPT: TWideStringField;
    zqry_SGATUALIZAATUALIZADO: TWideStringField;
    zqry_LOGAESTACAO: TZQuery;
    Image2: TImage;
    btn_MENU: TBitBtn;
    pop_MENU: TPopupMenu;
    Dashboard1: TMenuItem;
    N2: TMenuItem;
    Movimento1: TMenuItem;
    ViaXML1: TMenuItem;
    viaXML2: TMenuItem;
    Sadas1: TMenuItem;
    Balco1: TMenuItem;
    Checkout1: TMenuItem;
    N3: TMenuItem;
    Finalizar1: TMenuItem;
    Configuraes1: TMenuItem;
    Parmetros1: TMenuItem;
    N4: TMenuItem;
    Empresa1: TMenuItem;
    N5: TMenuItem;
    zdts_SGATUALIZACAO: TDataSource;
    zdts_LOGAESTACAO: TDataSource;
    zqry_VDVENDA_NFCE: TZQuery;
    zdts_VDVENDA_NFCE: TDataSource;
    zqry_VDVENDA_NFCECODEMP: TIntegerField;
    zqry_VDVENDA_NFCECODFILIAL: TSmallintField;
    zqry_VDVENDA_NFCETIPOVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODVENDA: TIntegerField;
    zqry_VDVENDA_NFCESUBTIPOVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODVEND: TIntegerField;
    zqry_VDVENDA_NFCECODCLI: TIntegerField;
    zqry_VDVENDA_NFCECODPLANOPAG: TIntegerField;
    zqry_VDVENDA_NFCESERIE: TWideStringField;
    zqry_VDVENDA_NFCECODTIPOMOV: TIntegerField;
    zqry_VDVENDA_NFCECODCAIXA: TIntegerField;
    zqry_VDVENDA_NFCEDOCVENDA: TIntegerField;
    zqry_VDVENDA_NFCEDTSAIDAVENDA: TDateField;
    zqry_VDVENDA_NFCEDTEMITVENDA: TDateField;
    zqry_VDVENDA_NFCEDTCOMPVENDA: TDateField;
    zqry_VDVENDA_NFCETICKET: TIntegerField;
    zqry_VDVENDA_NFCEVLRPRODVENDA: TFloatField;
    zqry_VDVENDA_NFCEPERCDESCVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRDESCVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRDESCITVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRBASEICMSVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRICMSVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCICMSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPICMSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRISENTASVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLROUTRASVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRBASEIPIVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRLIQVENDA: TFloatField;
    zqry_VDVENDA_NFCEPERCCOMISVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRCOMISVENDA: TFloatField;
    zqry_VDVENDA_NFCESTATUSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRFRETEVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRADICVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRIPIVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCIPIVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPIPIVENDA: TWideStringField;
    zqry_VDVENDA_NFCEOBSVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODBANCO: TWideStringField;
    zqry_VDVENDA_NFCECODTIPOCOB: TIntegerField;
    zqry_VDVENDA_NFCEVLRBASEISSVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRISSVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCISSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPIISSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPNOTAVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODCLASCOMIS: TWideStringField;
    zqry_VDVENDA_NFCEVLRPISVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCPISVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPPISVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRCOFINSVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCCOFINSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPCOFINSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRIRVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCIRVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPIRVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRCSOCIALVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCCSOCIALVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPCSOCIALVENDA: TWideStringField;
    zqry_VDVENDA_NFCEPERCMCOMISVENDA: TFloatField;
    zqry_VDVENDA_NFCECODCLCOMIS: TIntegerField;
    zqry_VDVENDA_NFCECODCARTCOB: TWideStringField;
    zqry_VDVENDA_NFCEPEDCLIVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRICMSSTVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRBASEICMSSTVENDA: TFloatField;
    zqry_VDVENDA_NFCEEMMANUT: TWideStringField;
    zqry_VDVENDA_NFCEBLOQVENDA: TWideStringField;
    zqry_VDVENDA_NFCEVLRICMSSIMPLES: TFloatField;
    zqry_VDVENDA_NFCEPERCICMSSIMPLES: TFloatField;
    zqry_VDVENDA_NFCEVLRBASEPISVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRBASECOFINSVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRBASECOMIS: TFloatField;
    zqry_VDVENDA_NFCECHAVENFEVENDA: TWideStringField;
    zqry_VDVENDA_NFCENUMCONTA: TWideStringField;
    zqry_VDVENDA_NFCEOBSREC: TWideStringField;
    zqry_VDVENDA_NFCEINFCOMPL: TWideStringField;
    zqry_VDVENDA_NFCESITDOC: TWideStringField;
    zqry_VDVENDA_NFCEOBSNFE: TWideStringField;
    zqry_VDVENDA_NFCEDESCIPIVENDA: TWideStringField;
    zqry_VDVENDA_NFCESEQOP: TSmallintField;
    zqry_VDVENDA_NFCECODOP: TIntegerField;
    zqry_VDVENDA_NFCELOCALSERV: TWideStringField;
    zqry_VDVENDA_NFCENROATUALIZADO: TWideStringField;
    zqry_VDVENDA_NFCECNF: TLargeintField;
    zqry_VDVENDA_NFCESITCOMPLVENDA: TWideStringField;
    zqry_VDVENDA_NFCEMOTIVOCANCVENDA: TWideStringField;
    zqry_VDVENDA_NFCEDTINS: TDateField;
    zqry_VDVENDA_NFCEHINS: TTimeField;
    zqry_VDVENDA_NFCEIDUSUINS: TWideStringField;
    zqry_VDVENDA_NFCEDTALT: TDateField;
    zqry_VDVENDA_NFCEHALT: TTimeField;
    zqry_VDVENDA_NFCEIDUSUALT: TWideStringField;
    zqry_VDVENDA_NFCEVLRSIMPLES: TFloatField;
    zqry_VDVENDA_NFCETIPOENVIO: TWideStringField;
    zqry_VDVENDA_NFCECODMOT: TIntegerField;
    zqry_VDVENDA_NFCECODVEIC: TIntegerField;
    zqry_VDVENDA_NFCEOBSENTREGA: TWideStringField;
    zqry_VDVENDA_NFCENOMEMOT: TWideStringField;
    zqry_VDVENDA_NFCEPLACA: TWideStringField;
    zqry_VDVENDA_NFCEREQUERMONTAGEM: TWideStringField;
    zqry_VDVENDA_NFCEPONTOREFERENCIA: TWideStringField;
    zqry_VDVENDA_NFCECODATEND: TIntegerField;
    zqry_VDVENDA_NFCEVDCOMERCIAL: TWideStringField;
    zqry_VDVENDA_NFCEVDVENDEXTERNO: TWideStringField;
    zqry_VDVENDA_NFCEVDCOMMERCE: TWideStringField;
    zqry_VDVENDA_NFCEENTREGUE: TWideStringField;
    zqry_VDVENDA_NFCEIDFASTSALE: TIntegerField;
    zqry_VDVENDA_NFCENOMECLI: TWideStringField;
    zqry_VDVENDA_NFCE_FONECLI: TStringField;
    zqry_VDVENDA_NFCE_DDDCLI: TStringField;
    zqry_VDVENDA_NFCE_CEPCLI: TStringField;
    zqry_VDVENDA_NFCE_ENDCLI: TStringField;
    zqry_VDVENDA_NFCE_NUMCLI: TStringField;
    zqry_VDVENDA_NFCE_COMPLCLI: TStringField;
    zqry_VDVENDA_NFCE_BAIRCLI: TStringField;
    zqry_VDVENDA_NFCE_CODMUNIC: TStringField;
    zqry_VDVENDA_NFCE_CIDCLI: TStringField;
    zqry_VDVENDA_NFCE_UFCLI: TStringField;
    zqry_VDVENDA_NFCE_RAZCLI: TStringField;
    zqry_VDITVENDA_NFCE: TZQuery;
    zdts_VDITVENDA_NFCE: TDataSource;
    zqry_VDITVENDA_NFCECODEMP: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIAL: TSmallintField;
    zqry_VDITVENDA_NFCETIPOVENDA: TWideStringField;
    zqry_VDITVENDA_NFCECODVENDA: TIntegerField;
    zqry_VDITVENDA_NFCECODITVENDA: TIntegerField;
    zqry_VDITVENDA_NFCECODNAT: TWideStringField;
    zqry_VDITVENDA_NFCECODPROD: TIntegerField;
    zqry_VDITVENDA_NFCECODLOTE: TWideStringField;
    zqry_VDITVENDA_NFCECODALMOX: TIntegerField;
    zqry_VDITVENDA_NFCEQTDITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEQTDITVENDACANC: TExtendedField;
    zqry_VDITVENDA_NFCEPRECOITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEPERCDESCITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRDESCITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEPERCICMSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRBASEICMSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRICMSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEPERCIPIITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRBASEIPIITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRIPIITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRLIQITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEPERCCOMISITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRCOMISITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRADICITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEPERCISSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRISSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRFRETEITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRPRODITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRISENTASITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLROUTRASITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEREFPROD: TWideStringField;
    zqry_VDITVENDA_NFCEVLRBASEISSITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRBASEICMSBRUTITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRBASEICMSSTITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRICMSSTITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRBASECOMISITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEMARGEMVLAGRITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEOBSITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCEORIGFISC: TWideStringField;
    zqry_VDITVENDA_NFCECODTRATTRIB: TWideStringField;
    zqry_VDITVENDA_NFCETIPOFISC: TWideStringField;
    zqry_VDITVENDA_NFCETIPOST: TWideStringField;
    zqry_VDITVENDA_NFCECODMENS: TIntegerField;
    zqry_VDITVENDA_NFCESTRDESCITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCEQTDDEVITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCECODLOG: TIntegerField;
    zqry_VDITVENDA_NFCECANCITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCECODPE: TIntegerField;
    zqry_VDITVENDA_NFCEDIASPE: TSmallintField;
    zqry_VDITVENDA_NFCECODCONV: TIntegerField;
    zqry_VDITVENDA_NFCECODFISC: TWideStringField;
    zqry_VDITVENDA_NFCECODITFISC: TIntegerField;
    zqry_VDITVENDA_NFCECODCOMPRA: TIntegerField;
    zqry_VDITVENDA_NFCECODITCOMPRA: TIntegerField;
    zqry_VDITVENDA_NFCETIPOVENDAVR: TWideStringField;
    zqry_VDITVENDA_NFCECODVENDAVR: TIntegerField;
    zqry_VDITVENDA_NFCECODITVENDAVR: TIntegerField;
    zqry_VDITVENDA_NFCENUMSERIETMP: TWideStringField;
    zqry_VDITVENDA_NFCEVLRBASEICMSSTRETITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCEVLRICMSSTRETITVENDA: TExtendedField;
    zqry_VDITVENDA_NFCECALCSTCM: TWideStringField;
    zqry_VDITVENDA_NFCEEMMANUT: TWideStringField;
    zqry_VDITVENDA_NFCEDTINS: TDateField;
    zqry_VDITVENDA_NFCEHINS: TTimeField;
    zqry_VDITVENDA_NFCEIDUSUINS: TWideStringField;
    zqry_VDITVENDA_NFCEDTALT: TDateField;
    zqry_VDITVENDA_NFCEHALT: TTimeField;
    zqry_VDITVENDA_NFCEIDUSUALT: TWideStringField;
    zqry_VDITVENDA_NFCETXTDESCITEM: TWideStringField;
    zqry_VDITVENDA_NFCEDESCITEM: TWideStringField;
    zqry_VDITVENDA_NFCESOLICITANTE: TWideStringField;
    zqry_EQPRODUTO: TZQuery;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCODUNID: TWideStringField;
    zqry_EQPRODUTOPRECOBASEPROD: TExtendedField;
    zdts_EQPRODUTO: TDataSource;
    zqry_VDITVENDA_NFCE_DESCPROD: TStringField;
    zqry_VDITVENDA_NFCE_CODBARPROD: TStringField;
    zqry_VDITVENDA_NFCE_CODUNID: TStringField;
    N6: TMenuItem;
    Fiscal1: TMenuItem;
    GerenciamentodeNotas1: TMenuItem;
    N7: TMenuItem;
    MDFe1: TMenuItem;
    N8: TMenuItem;
    SPED1: TMenuItem;
    FISCAL2: TMenuItem;
    PISCOFINS1: TMenuItem;
    odososPedidos1: TMenuItem;
    ParmetrosTransmisso1: TMenuItem;
    Financeiro1: TMenuItem;
    EmissodeBoletos1: TMenuItem;
    BaixadeBoletos1: TMenuItem;
    N9: TMenuItem;
    ConciliaoBancria1: TMenuItem;
    zqry_UPT: TZQuery;
    zdts_UPT: TDataSource;
    lbl_LICENCA: TLabel;
    lbl_LICENCIADO: TLabel;
    btn_RECADOS: TBitBtn;
    Timer1: TTimer;
    zqry_WEB_UPT: TZQuery;
    zdts_WEB_UPT: TDataSource;
    Lanamentos1: TMenuItem;
    N23: TMenuItem;
    Cheques1: TMenuItem;
    CONTABIL1: TMenuItem;
    ClassificaoFiscal2: TMenuItem;
    Sintegra1: TMenuItem;
    ConsultaReceita1: TMenuItem;
    Entregas1: TMenuItem;
    DashBoard2: TMenuItem;
    N25: TMenuItem;
    EtiquetadeEntrega1: TMenuItem;
    EtiquetaCorreios1: TMenuItem;
    Estoque1: TMenuItem;
    Balana1: TMenuItem;
    EtiquetaProdutos1: TMenuItem;
    SaldoLotes1: TMenuItem;
    ransferncias1: TMenuItem;
    Depsitos1: TMenuItem;
    CPF1: TMenuItem;
    CNPJ1: TMenuItem;
    N10: TMenuItem;
    NOTAS1: TMenuItem;
    ransfernciasDepsitos1: TMenuItem;
    ImportaNota1: TMenuItem;
    procedure btn_FECHARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_FERRAMENTAClick(Sender: TObject);
    procedure DataCom1Click(Sender: TObject);
    procedure Atualizacoes1Click(Sender: TObject);
    procedure RevogaLicenca1Click(Sender: TObject);
    procedure Inspetor1Click(Sender: TObject);
    procedure btn_ABLEClick(Sender: TObject);
    procedure btn_CONFIGURAClick(Sender: TObject);
    procedure btn_SYNCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Finalizar1Click(Sender: TObject);
    procedure btn_MENUClick(Sender: TObject);
    procedure Checkout1Click(Sender: TObject);
    procedure Balco1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure FISCAL2Click(Sender: TObject);
    procedure PISCOFINS1Click(Sender: TObject);
    procedure MDFe1Click(Sender: TObject);
    procedure Dashboard1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure odososPedidos1Click(Sender: TObject);
    procedure ParmetrosTransmisso1Click(Sender: TObject);
    procedure viaXML2Click(Sender: TObject);
    procedure GerenciamentodeNotas1Click(Sender: TObject);
    procedure inserefilial;
    procedure registrasistema;
    procedure Unidades1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Almoxarifados1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_RECADOSClick(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure iposdeCliente1Click(Sender: TObject);
    procedure iposdeFornecedor1Click(Sender: TObject);
    procedure ipodeAtendente1Click(Sender: TObject);
    procedure Atendente1Click(Sender: TObject);
    procedure Funo1Click(Sender: TObject);
    procedure Setor1Click(Sender: TObject);
    procedure ClassificaodeComisso1Click(Sender: TObject);
    procedure ipodeVendedor1Click(Sender: TObject);
    procedure RegrasdeComissionamento1Click(Sender: TObject);
    procedure RegrasdeDescontoComisso1Click(Sender: TObject);
    procedure Comissionado1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure CONTABIL1Click(Sender: TObject);
    procedure DashBoard2Click(Sender: TObject);
    procedure EtiquetadeEntrega1Click(Sender: TObject);
    procedure ClassificaoFiscal2Click(Sender: TObject);
    procedure CPF1Click(Sender: TObject);
    procedure CNPJ1Click(Sender: TObject);
    procedure NOTAS1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure SaldoLotes1Click(Sender: TObject);
    procedure Depsitos1Click(Sender: TObject);
    procedure ransferncias1Click(Sender: TObject);
    procedure ransfernciasDepsitos1Click(Sender: TObject);
    procedure EtiquetaProdutos1Click(Sender: TObject);
    procedure ImportaNota1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      caos,conectado, contaupdate, teminternet, cbformaemissao, cbssllib, cbcryptlib,
      cbxmlsignlib, contingencia, cbhttplib,cbModeloDF,cbVersaoDF, cbSSLType, seTimeOut,numdfe, empresaalles:integer;

      licenca,nomearquivo, nomescript,caminho,rarwin, edtcaminho, edtnumserie, edtsenha,
      edt_estacao, edtIdToken, edtToken, edtAguardar, edtTentativas, edtIntervalo,edtPathLogs,
      edt_PathSchemas,edtPathNFe,edtPathInu,edtPathEvento,cbxRetirarAcentos,ckSalvar,cbxExibirErroSchema,
      edtFormatoAlerta,edtPathCan,edtPathDPEC, edtPathCCe,cbxSalvarArqs,cbxPastaMensal,cbxAdicionaLiteral,
      cbxEmissaoPathNFe,cbxSalvaPathEvento,cbxSepararPorCNPJ,cbxSepararPorModelo,cbxVisualizar,cpfcliente,cnpjcliente,chaveb : string;
  end;

var
  frm_PRINCIPAL: Tfrm_PRINCIPAL;

implementation

{$R *.dfm}

uses  u_dados,u_dlg_datacom, u_dlg_atualizacao, u_dlg_inspetor, u_funcoes, u_dlg_abrecaixa, u_checkout, u_vendas, strutils, math, TypInfo, DateUtils,
      synacode, blcksock, FileCtrl, IniFiles, Printers, pcnAuxiliar, pcnNFe,
      pcnConversao, pcnConversaoNFe, pcnNFeRTXT, pcnRetConsReciDFe, ACBrDFeConfiguracoes,
      ACBrDFeSSL, ACBrDFeOpenSSL, ACBrDFeUtil, ACBrNFeNotasFiscais, ACBrNFeConfiguracoes, u_verificainternet,
      u_fechacupom, u_preferencias, u_con_pedidos, Frm_ACBrNFe, u_login, con_pedido,
      uImportaUmaNFe, u_gestaonotas, u_unidades, u_marcas, u_almoxarifados,
      u_registro, u_recado, u_grupos, u_tp_atendente, u_tp_cliente,
      u_tp_fornecedor, u_atendente, u_comis_funcao, u_tp_comissionado,
      u_comis_setor, u_comis_classificacao, u_comis_regra, u_comis_desc,
      u_comissionado, u_empresa, u_produtos, u_entregue, dlg_etiquetas,
      frm_cargabalanca, dlg_acertalote, concad_depositos, concad_saldodepos,
      trans_almox, dlg_etiqproduto;

procedure Tfrm_PRINCIPAL.ransferncias1Click(Sender: TObject);
begin
  if FRM_TRANS_ALMOX=nil then FRM_TRANS_ALMOX:=TFRM_TRANS_ALMOX.Create(application);
  FRM_TRANS_ALMOX.show;
end;

procedure Tfrm_PRINCIPAL.ransfernciasDepsitos1Click(Sender: TObject);
begin
  if FRM_CONCAD_SALDODEPOS=nil then FRM_CONCAD_SALDODEPOS:=TFRM_CONCAD_SALDODEPOS.Create(application);
  FRM_CONCAD_SALDODEPOS.show;
end;

procedure Tfrm_PRINCIPAL.registrasistema;
begin
  frm_registro.showmodal;
end;

procedure Tfrm_PRINCIPAL.inserefilial;
begin
    dm_dados.ConectaWeb.Connected:=false;
    dm_dados.ConectaWeb.Connected:=true;
    dm_dados.zqry_WEB_SGFILIAL.close;
    dm_Dados.zqry_WEB_SGFILIAL.sql.Clear;
    dm_dados.zqry_WEB_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_WEB_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_dados.zqry_WEB_SGFILIAL.Open;
    dm_dados.zqry_SGFILIAL.Insert;
    dm_dados.zqry_SGFILIALCODEMP.asinteger:=dm_dados.codemp;
    dm_dados.zqry_SGFILIALCODFILIAL.asinteger:=1;
    dm_dados.zqry_SGFILIALMZFILIAL.AsString:='S';
    dm_dados.zqry_SGFILIALCODREV.AsInteger:=dm_dados.zqry_WEB_SGFILIALcodrev.asinteger;
    dm_dados.zqry_SGFILIALRAZFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALrazfilial.AsString;
    dm_dados.zqry_SGFILIALNOMEFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALnomefilial.AsString;
    dm_dados.zqry_SGFILIALCNPJFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALcnpjfilial.AsString;
    dm_dados.zqry_SGFILIALINSCFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALinscfilial.AsString;
    dm_dados.zqry_SGFILIALENDFILIAL.asstring:=dm_dados.zqry_WEB_SGFILIALendfilial.AsString;
    dm_dados.zqry_SGFILIALNUMFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALnumfilial.AsString;
    dm_dados.zqry_SGFILIALCOMPLFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALcomplfilial.AsString;
    dm_dados.zqry_SGFILIALBAIRFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALbairfilial.AsString;
    dm_dados.zqry_SGFILIALCEPFILIAL.AsString:=dm_Dados.zqry_WEB_SGFILIALcepfilial.AsString;
    dm_dados.zqry_SGFILIALCIDFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALcidfilial.AsString;
    dm_Dados.zqry_SGFILIALUFFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALuffilial.AsString;
    dm_dados.zqry_SGFILIALCODMUNIC.AsString:='39409';//dm_dados.zqry_WEB_SGFILIALcodmunic.AsString;
    dm_dados.zqry_SGFILIALSIGLAUF.AsString:='MG';//dm_dados.zqry_WEB_SGFILIALsiglauf.AsString;
    dm_dados.zqry_SGFILIALCODPAIS.asinteger:=72;
    { TODO 1 -oISRAEL PINHEIRO -cBUG:Criar tratamento para codmunic e siglauf bd Alles MySQL }
    dm_dados.zqry_SGFILIALDDDFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALDDDFILIAL.AsString;
    dm_dados.zqry_SGFILIALFONEFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALFONEFILIAL.AsString;
    dm_dados.zqry_SGFILIALEMAILFILIAL.AsString:=dm_dados.zqry_WEB_SGFILIALEMAILFILIAL.AsString;
    dm_dados.zqry_sgfilialdtins.asdatetime:=now;
    dm_dados.zqry_SGFILIALHINS.AsDateTime:=now;
    dm_dados.zqry_SGFILIALIDUSUINS.AsString:='sysdba';
    dm_dados.zqry_SGFILIAL.Post;
    dm_dados.zqry_sgfilial.ApplyUpdates;
end;

procedure Tfrm_PRINCIPAL.Marcas1Click(Sender: TObject);
begin
  if frm_cad_marcas=nil then
  frm_cad_marcas:=Tfrm_cad_marcas.Create(application);
  frm_cad_marcas.Show;
end;

procedure Tfrm_PRINCIPAL.MDFe1Click(Sender: TObject);
begin
  if FileExists ('mdfe.exe') then Winexec('mdfe.exe',sw_shownormal) else Showmessage('M�dulo n�o Localizado'#13'MDFe');
end;

procedure Tfrm_PRINCIPAL.NOTAS1Click(Sender: TObject);
begin
{APPLICATION.CreateForm(Tfrm_con_nfe_sefaz, frm_con_nfe_sefaz);
frm_con_nfe_sefaz.showmodal;
FreeAndNil(frm_con_nfe_sefaz);}
end;

procedure Tfrm_PRINCIPAL.odososPedidos1Click(Sender: TObject);
begin
  if not Assigned(frm_con_pedidos) then
  Application.CreateForm(Tfrm_con_pedidos, frm_con_pedidos);
  frm_con_pedidos.show;
end;

procedure Tfrm_PRINCIPAL.Parmetros1Click(Sender: TObject);
begin
 if frm_preferencias=nil then
  frm_preferencias:=Tfrm_preferencias.Create(application);
  frm_preferencias.Show;
end;

procedure Tfrm_PRINCIPAL.ParmetrosTransmisso1Click(Sender: TObject);
begin
frmacbrnfe.show;
end;

procedure Tfrm_PRINCIPAL.PISCOFINS1Click(Sender: TObject);
begin
    if FileExists ('SPEDPisCofins.exe') then Winexec('SPEDPisCofins.exe',sw_shownormal) else Showmessage('M�dulo n�o Localizado'#13'SPED PIS/Cofins');
end;

procedure Tfrm_PRINCIPAL.Produtos2Click(Sender: TObject);
begin
  if frm_cad_produtos=nil then
  frm_cad_produtos:=Tfrm_cad_produtos.Create(application);
  frm_cad_produtos.Show;
end;

Procedure SavedbxfbDLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\dbxfb.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'dbxfbDLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure Savelibeay32DLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\libeay32.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'libeay32DLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure Savessleay32DLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\ssleay32.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'ssleay32DLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure Savelibxml2DLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\libxml2.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'libxml2DLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure SavelibxmlsecDLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\libxmlsec.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'libxmlsecDLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure Savezlib1DLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\zlib1.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'zlib1DLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

Procedure SavelibxsltDLL;
Var PathToSave:String;
    Res : TResourceStream;
Begin
  PathToSave := ExtractFilePath(Application.ExeName)+'\libxslt.DLL';
  If not FileExists(PathToSave) Then Begin
     Res := TResourceStream.Create(Hinstance, 'libxsltDLL', 'DLLFILE');
     Try
       Res.SavetoFile(PathToSave);
     Finally
       Res.Free;
     End;
  End;
end;

procedure Tfrm_PRINCIPAL.Almoxarifados1Click(Sender: TObject);
begin
  if FRM_CAD_ALMOXARIFADOS=nil then
  FRM_CAD_ALMOXARIFADOS:=TFRM_CAD_ALMOXARIFADOS.Create(application);
  FRM_CAD_ALMOXARIFADOS.show;
end;

procedure Tfrm_PRINCIPAL.GerenciamentodeNotas1Click(Sender: TObject);
begin
frm_gestaonotas.show;
end;

procedure Tfrm_PRINCIPAL.Grupos1Click(Sender: TObject);
begin
  if FRM_CAD_GRUPOS=nil then
  FRM_CAD_GRUPOS:=TFRM_CAD_GRUPOS.Create(application);
  FRM_CAD_GRUPOS.show;
end;

procedure Tfrm_PRINCIPAL.ImportaNota1Click(Sender: TObject);
begin
 {if FRM_IMPORTANOTA=nil then
  FRM_IMPORTANOTA:=TFRM_IMPORTANOTA.Create(application);   }
  FRM_IMPORTANOTA.SHOW;
end;

procedure Tfrm_PRINCIPAL.Balana1Click(Sender: TObject);
begin
  if FRM_DLG_CARGABALANCA=nil then
  FRM_DLG_CARGABALANCA:=TFRM_DLG_CARGABALANCA.Create(application);
  FRM_DLG_CARGABALANCA.SHOW;
end;

procedure Tfrm_PRINCIPAL.Balco1Click(Sender: TObject);
begin
frm_cad_vendas.show;
end;

procedure Tfrm_PRINCIPAL.BitBtn1Click(Sender: TObject);
begin
zqry_EQPRODUTO.Close;
zqry_eqproduto.SQL.Add('select * from eqproduto');
zqry_eqproduto.Open;
end;

procedure Tfrm_PRINCIPAL.Inspetor1Click(Sender: TObject);
begin
  if FRM_DLG_INSPETOR=nil then
  FRM_DLG_INSPETOR:=TFRM_DLG_INSPETOR.Create(application);
  FRM_DLG_INSPETOR.SHOW;
end;


procedure Tfrm_PRINCIPAL.ipodeAtendente1Click(Sender: TObject);
begin
  if frm_cad_tpatendente=nil then
  frm_cad_tpatendente:=Tfrm_cad_tpatendente.Create(application);
  frm_cad_tpatendente.show;
end;

procedure Tfrm_PRINCIPAL.ipodeVendedor1Click(Sender: TObject);
begin
 if FRM_CAD_TPCOMISSIONADO=nil then
  FRM_CAD_TPCOMISSIONADO:=TFRM_CAD_TPCOMISSIONADO.Create(application);
  FRM_CAD_TPCOMISSIONADO.show;
end;

procedure Tfrm_PRINCIPAL.iposdeCliente1Click(Sender: TObject);
begin
  if frm_cad_tpcliente=nil then
  frm_cad_tpcliente:=Tfrm_cad_tpcliente.Create(application);
  frm_cad_tpcliente.show;
end;

procedure Tfrm_PRINCIPAL.iposdeFornecedor1Click(Sender: TObject);
begin
  if frm_cad_tpfornecedor=nil then
  frm_cad_tpFORNECEDOR:=Tfrm_cad_tpFORNECEDOR.Create(application);
  FRM_CAD_TPFORNECEDOR.show;
end;

procedure Tfrm_PRINCIPAL.RegrasdeComissionamento1Click(Sender: TObject);
begin
  if frm_cad_comisregra=nil then
  frm_cad_comisregra:=Tfrm_cad_comisregra.Create(application);
  FRM_CAD_comisregra.show;
end;

procedure Tfrm_PRINCIPAL.RegrasdeDescontoComisso1Click(Sender: TObject);
begin
if frm_cad_comisdesc=nil then
  frm_cad_comisdesc:=Tfrm_cad_comisdesc.Create(application);
  FRM_CAD_comisdesc.show;
end;

procedure Tfrm_PRINCIPAL.RevogaLicenca1Click(Sender: TObject);
begin
case MessageBox(Handle, 'Deseja realmente Revogar sua licen�a de Uso?',
    'Revoga Licen�a', MB_YESNO + MB_ICONQUESTION) of
  IDYES:  //se clicar em sim fa�a isso
  begin
    dm_Dados.zqry_SGLICENCA.Close;
    dm_dados.zqry_SGLICENCA.sql.clear;
    dm_dados.zqry_sglicenca.SQL.Add('update sglicenca set codlicenca=:semlicenca');
    dm_dados.zqry_SGLICENCA.parambyname('semlicenca').AsString:=lbl_licenca.caption;
    dm_Dados.zqry_SGLICENCA.ExecSQL;
    showmessage('Aten��o'#13'Sistema precisa ser finalizado para que as altera��es entrem em vigor');
    close;
    close;
  end;
  IDNO:  //se clicar em n�o fa�a isso
  begin
  end;
  end;
end;

procedure Tfrm_PRINCIPAL.SaldoLotes1Click(Sender: TObject);
begin
  if FRM_DLG_ACERTALOTE=nil then FRM_DLG_ACERTALOTE:=TFRM_DLG_ACERTALOTE.Create(application);
  FRM_DLG_ACERTALOTE.show;
end;

procedure Tfrm_PRINCIPAL.Setor1Click(Sender: TObject);
begin
  if FRM_CAD_SETOR=nil then FRM_CAD_SETOR:=TFRM_CAD_SETOR.Create(application);
  FRM_CAD_SETOR.show;
end;

procedure Tfrm_PRINCIPAL.Timer1Timer(Sender: TObject);
var
  estadm:string;
begin
  dm_dados.temnet:=u_verificainternet.Ping(10000,'www.google.com.br',80);
  if dm_dados.temnet=0 then
  begin
    dm_dados.zqry_SGLICENCA.Params.clear;
    dm_dados.zqry_SGLICENCA.Close;
    dm_dados.zqry_SGLICENCA.SQL.clear;
    dm_dados.zqry_SGLICENCA.SQL.Add('select * from sglicenca');
    dm_dados.zqry_SGLICENCA.Open;
    empresaalles:=dm_dados.zqry_SGLICENCACODEMPALLES.AsInteger;
    dm_dados.ConectaWeb.Connected:=false;
    dm_dados.ConectaWeb.Connected:=true;
    dm_dados.zqry_sgrecadoweb.params.clear;
    dm_Dados.zqry_sgrecadoweb.close;
    dm_dados.zqry_sgrecadoweb.sql.clear;
    dm_dados.zqry_sgrecadoweb.sql.add('select * from sgrecado where baixado=:p1 and codemp=:p2');
    dm_dados.zqry_sgrecadoweb.parambyname('p1').asstring:='N';
    dm_dados.zqry_sgrecadoweb.parambyname('p2').asinteger:=empresaalles;
    //showmessage(inttostr(empresaalles));
    dm_dados.zqry_sgrecadoweb.open;
    if dm_dados.zqry_sgrecadoweb.isempty then
    begin
      // NAO ACHOU NADA
      //showmessage('nao achou nada');
      DM_DADOS.zqry_SGRECADO.params.clear;
      dm_dados.zqry_SGRECADO.Close;
      dm_dados.zqry_SGRECADo.sql.clear;
      estadm:=emptystr;
      if dm_dados.terminal=dm_dados.maqadm then estadm:='S' else estadm:='N';
      //showmessage(estadm);
      if estadm='N' then dm_dados.zqry_SGRECADO.SQL.add('select * from sgrecado where lido=:p1 and administrativo=:p2' );
      if estadm='S' then dm_dados.zqry_SGRECADO.SQL.add('select * from sgrecado where lido=:p1' );
      dm_dados.zqry_SGRECADO.ParamByName('p1').AsString:='N';
      if estadm='N' then dm_dados.zqry_sgrecado.parambyname('p2').asstring:=estadm;
      dm_Dados.zqry_SGRECADo.open;
      btn_recados.Caption:='('+inttostr(dm_dados.zqry_SGRECADO.RecordCount)+')';
    end
    else
    begin
      //showmessage('achou');
      dm_dados.zqry_SGRECADOWEB.First;
      while not dm_dados.zqry_SGRECADOWEB.eof do
      begin
        dm_dados.zqry_SGRECADO.close;
        dm_dados.zqry_SGRECADO.Open;
        dm_dados.zqry_SGRECADO.insert;
        dm_Dados.zqry_SGRECADOCODRECADO.AsInteger:=dm_dados.zqry_SGRECADOWEBcodrecado.AsInteger;
        dm_Dados.zqry_SGRECADOCODEMP.AsInteger:=dm_dados.zqry_SGRECADOWEBcodemp.AsInteger;
        dm_dados.zqry_SGRECADOADMINISTRATIVO.AsString:=dm_dados.zqry_SGRECADOWEBadministrativo.AsString;
        dm_dados.zqry_SGRECADOASSUNTO.AsString:=dm_dados.zqry_SGRECADOWEBassunto.AsString;
        dm_dados.zqry_SGRECADOMENSAGEM.AsString:=dm_dados.zqry_SGRECADOWEBmensagem.AsString;
        dm_dados.zqry_SGRECADOLINK.AsString:=dm_dados.zqry_SGRECADOWEBlink.AsString;
        dm_dados.zqry_SGRECADODATA.AsDateTime:=now;
        dm_dados.zqry_SGRECADOHORA.AsDateTime:=now;
        dm_dados.zqry_SGRECADOCADASTRO.value:=now;
        dm_dados.zqry_SGRECADOLIDO.AsString:='N';
        dm_dados.zqry_SGRECADO.Post;
        dm_dados.zqry_SGRECADOWEB.Next;
      end;
      dm_Dados.zqry_SGRECADO.ApplyUpdates;
      zqry_WEB_UPT.Close;
      zqry_WEB_UPT.SQL.Clear;
      zqry_WEB_UPT.SQL.Add('update sgrecado set baixado=:p1 where codemp=:p2');
      zqry_WEB_UPT.ParamByName('p1').AsString:='S';
      zqry_WEB_UPT.ParamByName('p2').AsInteger:=empresaalles;
      zqry_WEB_UPT.ExecSQL;
      estadm:=emptystr;
      dm_dados.zqry_SGRECADO.Params.Clear;
      dm_dados.zqry_SGRECADO.Close;
      dm_dados.zqry_SGRECADO.sql.Clear;
      if dm_dados.terminal=dm_dados.maqadm then estadm:='S' else estadm:='N';
      //showmessage(estadm);
      if estadm='N' then dm_dados.zqry_SGRECADO.SQL.add('select * from sgrecado where lido=:p1 and administrativo=:p2' );
      if estadm='S' then dm_dados.zqry_SGRECADO.SQL.add('select * from sgrecado where lido=:p1' );
      dm_dados.zqry_SGRECADO.ParamByName('p1').AsString:='N';
      if estadm='N' then dm_dados.zqry_sgrecado.parambyname('p2').asstring:=estadm;
      dm_Dados.zqry_SGRECADo.open;
      btn_recados.Caption:='('+inttostr(dm_dados.zqry_SGRECADO.RecordCount)+')';
    end;
  end
  else
  begin
    btn_recados.Caption:='(0)';
    btn_recados.Enabled:=false;
    // n�o tem net
  end;

end;

procedure Tfrm_PRINCIPAL.Unidades1Click(Sender: TObject);
begin
  if FRM_CAD_UNIDADES=nil then
  FRM_CAD_UNIDADES:=TFRM_CAD_UNIDADES.Create(application);
  FRM_CAD_UNIDADES.show;
end;

procedure Tfrm_PRINCIPAL.viaXML2Click(Sender: TObject);
begin
  if FRM_IMPORTANOTA=nil then
  FRM_IMPORTANOTA:=TFRM_IMPORTANOTA.Create(application);
  FRM_IMPORTANOTA.show;
end;

procedure Tfrm_PRINCIPAL.Atendente1Click(Sender: TObject);
begin
  if FRM_CAD_ATENDENTE=nil then
  FRM_CAD_ATENDENTE:=TFRM_CAD_ATENDENTE.Create(application);
  FRM_CAD_ATENDENTE.show;
end;

procedure Tfrm_PRINCIPAL.Atualizacoes1Click(Sender: TObject);
begin
  if FRM_DLG_ATUALIZACAO=nil then
  FRM_DLG_ATUALIZACAO:=TFRM_DLG_ATUALIZACAO.Create(application);
  FRM_DLG_ATUALIZACAO.show;
end;

procedure Tfrm_PRINCIPAL.btn_ABLEClick(Sender: TObject);
begin
 try
    if FileExists ('able.exe') then
    begin
      Winexec('able.exe',sw_shownormal)
    end;
  except
  on E:Exception do
    MessageDlg('Erro ao executar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure Tfrm_PRINCIPAL.btn_CONFIGURAClick(Sender: TObject);
begin
 try
    if FileExists ('configura.exe') then
    begin
      Winexec('configura.exe',sw_shownormal)
    end;
  except
  on E:Exception do
    MessageDlg('Erro ao executar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure Tfrm_PRINCIPAL.btn_FECHARClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_PRINCIPAL.btn_FERRAMENTAClick(Sender: TObject);
var vPontoFER: TPoint;
begin
   vPontoFER := btn_FERRAMENTA.ClientToScreen(Point(0, btn_FERRAMENTA.Height));
   pop_FERRAMENTA.Popup(vPontoFER.X+20, vPontoFER.Y-5);
end;

procedure Tfrm_PRINCIPAL.btn_MENUClick(Sender: TObject);
var vPontoCAD : TPoint;
begin
   vPontoCAD := btn_MENU.ClientToScreen(Point(0, btn_MENU.Height));
   pop_MENU.Popup(vPontoCAD.X+60, vPontoCAD.Y-50);
end;

procedure Tfrm_PRINCIPAL.btn_RECADOSClick(Sender: TObject);
begin
  if btn_recados.Caption='' then
  begin
    //
  end
  else
  begin
    frm_recado.show;
  end;
end;

procedure Tfrm_PRINCIPAL.btn_SYNCClick(Sender: TObject);
begin
 try
    if FileExists ('sync.exe') then
    begin
      Winexec('sync.exe',sw_shownormal)
    end;
  except
  on E:Exception do
    MessageDlg('Erro ao executar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure Tfrm_PRINCIPAL.Checkout1Click(Sender: TObject);
begin
dm_Dados.zqry_PVMOVCAIXA.Params.clear;
dm_dados.zqry_PVMOVCAIXA.Close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.terminal;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=now;
dm_dados.zqry_PVMOVCAIXA.ParamByName('movtipo').AsString:='A';
dm_dados.zqry_PVMOVCAIXA.Open;
if dm_DADOS.zqry_PVMOVCAIXA.IsEmpty then
begin
  MOSTRATELANOTIFICA('CAIXA N�O EST� ABERTO','Sem movimento para '+datetostr(now));
  frm_dlg_ABRECAIXA.showmodal;
end
else
begin
  frm_checkout.Show;
end;
end;

procedure Tfrm_PRINCIPAL.ClassificaodeComisso1Click(Sender: TObject);
begin
  if FRM_CAD_CLASCOMIS=nil then
  FRM_CAD_CLASCOMIS:=TFRM_CAD_CLASCOMIS.Create(application);
  FRM_CAD_CLASCOMIS.show;
end;

procedure Tfrm_PRINCIPAL.ClassificaoFiscal2Click(Sender: TObject);
begin
{APPLICATION.CreateForm(Tfrm_ins_clfiscal, frm_ins_clfiscal);
frm_ins_clfiscal.showmodal;
FreeAndNil(frm_ins_clfiscal);}
end;

procedure Tfrm_PRINCIPAL.CNPJ1Click(Sender: TObject);
begin
{APPLICATION.CreateForm(Tfrm_con_cnpj, frm_con_cnpj);
frm_con_cnpj.showmodal;
FreeAndNil(frm_con_cnpj);}
end;

procedure Tfrm_PRINCIPAL.Comissionado1Click(Sender: TObject);
begin
if frm_cad_comissionado=nil then
  frm_cad_comissionado:=Tfrm_cad_comissionado.Create(application);
  FRM_CAD_comissionado.show;
end;

procedure Tfrm_PRINCIPAL.CONTABIL1Click(Sender: TObject);
begin
  if FileExists ('SPEDContabil.exe') then Winexec('SPEDContabil.exe',sw_shownormal) else Showmessage('M�dulo n�o Localizado'#13'SPED Cont�bil');

end;

procedure Tfrm_PRINCIPAL.CPF1Click(Sender: TObject);
begin
{APPLICATION.CreateForm(Tfrm_con_cpf, frm_con_cpf);
frm_con_cpf.showmodal;
FreeAndNil(frm_con_cpf);  }
end;

procedure Tfrm_PRINCIPAL.Dashboard1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'http://alles.nonoelemento.com.br', '', '', 1);
end;

procedure Tfrm_PRINCIPAL.DashBoard2Click(Sender: TObject);
begin
APPLICATION.CreateForm(Tfrm_entregue, frm_entregue);
frm_entregue.showmodal;
FreeAndNil(frm_entregue);
end;

procedure Tfrm_PRINCIPAL.DataCom1Click(Sender: TObject);
begin
  if FRM_DLG_DATACOM=nil then
  FRM_DLG_DATACOM:=TFRM_DLG_DATACOM.Create(application);
  FRM_DLG_DATACOM.show;
end;

procedure Tfrm_PRINCIPAL.Depsitos1Click(Sender: TObject);
begin
  if FRM_CONCAD_DEPOSITOS=nil then FRM_CONCAD_DEPOSITOS:=TFRM_CONCAD_DEPOSITOS.Create(application);
  FRM_CONCAD_DEPOSITOS.show;
end;

procedure Tfrm_PRINCIPAL.Empresa1Click(Sender: TObject);
begin
  if frm_empresa=nil then
  frm_empresa:=Tfrm_empresa.Create(application);
  frm_empresa.Show;
end;

procedure Tfrm_PRINCIPAL.EtiquetadeEntrega1Click(Sender: TObject);
begin
{APPLICATION.CreateForm(Tfrm_dlg_etiquetas, frm_dlg_etiquetas);
frm_dlg_etiquetas.showmodal;
FreeAndNil(frm_dlg_etiquetas);}
  if FRM_DLG_ETIQUETAS=nil then FRM_DLG_ETIQUETAS:=TFRM_DLG_ETIQUETAS.Create(application);
  FRM_DLG_ETIQUETAS.show;
end;

procedure Tfrm_PRINCIPAL.EtiquetaProdutos1Click(Sender: TObject);
begin
  if FRM_DLG_ETIQPRODUTO=nil then FRM_DLG_ETIQPRODUTO:=TFRM_DLG_ETIQPRODUTO.Create(application);
  FRM_DLG_ETIQPRODUTO.show;
end;

procedure Tfrm_PRINCIPAL.Finalizar1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_PRINCIPAL.FISCAL2Click(Sender: TObject);
begin
  if FileExists ('SPEDFiscal.exe') then Winexec('SPEDFiscal.exe',sw_shownormal) else Showmessage('M�dulo n�o Localizado'#13'SPED Fiscal');
end;

procedure Tfrm_PRINCIPAL.FormActivate(Sender: TObject);
var
ServerIP, ServerName: String;
VerificaExe : Cardinal;
begin
VerificaExe := CreateSemaphore(nil, 0, 1, 'Programa');
{if (VerificaExe > 0) and (GetLastError = ERROR_ALREADY_EXISTS) then
begin
MessageDlg('Uma inst�ncia do Alles est� em execu��o.' + #13 +
'N�o � poss�vel abrir outra inst�ncia.', mtInformation, [mbOk],0);
Halt;
end;}
frm_principal.Left:=0;//(screen.Width-870);
frm_principal.Top:=0;//round(screen.Height/2);
frm_principal.width:=(screen.width);
frm_principal.height:=(screen.height);
lbl_TELREVENDA.Top:=(screen.Height)-100;
lbl_WHATSREVENDA.Top:=(screen.Height)-100;
lbl_MAILREVENDA.Top:=(screen.Height)-120;
lbl_NOMEREVENDA.Top:=(screen.height)-140;
lbl_LICENCA.Top:=(screen.Height)-250;
lbl_LICENCIADO.Top:=(screen.Height)-220;
lbl_status.Top:=(screen.Height)-100;
lbl_status.Left:=((round(screen.Width/2)-round(lbl_status.Width/2)));
//

end;

procedure Tfrm_PRINCIPAL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//deletefile('able.exe');
//deletefile('configura.exe');
deletefile('validaable.9el');
zqry_LOGAESTACAO.Close;
zqry_LOGAESTACAO.SQL.Clear;
zqry_logaestacao.SQL.Add('update sgestacao set logado=:conectado where codest=:codmaq and codemp=:empcod');
zqry_logaestacao.parambyname('codmaq').asinteger:=dm_Dados.terminal;
zqry_logaestacao.parambyname('empcod').asinteger:=dm_Dados.codemp;
zqry_logaestacao.parambyname('conectado').asstring:='N';
zqry_logaestacao.ExecSQL;
end;

procedure Tfrm_PRINCIPAL.FormShow(Sender: TObject);
var
  hConnection, hOpen, hFind: PInteger;
  hData: TWIN32FINDDATA;
  versao, buscaversao,versaonova: PWideChar;
begin
  conectado:=0;
  frm_principal.Caption:='Alles '+versaoexe+' SC '+chaveb;
  // posi��o botoes
  btn_FECHAR.Left:=screen.Width-100;
  btn_FERRAMENTA.Left:=screen.Width-145;
  btn_sync.Left:=screen.Width-190;
  btn_configura.Left:=screen.Width-235;
  btn_recados.left:=screen.Width-280;
  dm_dados.zqry_SGFILIAL.Params.Clear;
  dm_dados.zqry_SGFILIAL.close;
  dm_dados.zqry_SGFILIAL.SQL.Clear;
  dm_dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_SGFILIAL.Open;
  if dm_dados.zqry_SGFILIAL.IsEmpty then
  begin
    // NAO ACHOU FILIAL
    // INSERE FILIAL
    inserefilial;
  end
  else
  begin
    // ACHOU FILIAL
    // BUSCA LICENCA
    dm_dados.zqry_SGLICENCA.Params.Clear;
    dm_Dados.zqry_SGLICENCA.Close;
    dm_Dados.zqry_SGLICENCA.SQL.Clear;
    dm_Dados.zqry_SGLICENCA.SQL.Add('select * from sglicenca');
    dm_Dados.zqry_SGLICENCA.Open;
    if dm_Dados.zqry_SGLICENCA.IsEmpty then
    begin
      mostratelaaviso('N�O LOCALIZADO A LICEN�A','N�o foi poss�vel localizar a sua licen�a de uso no seu computador');
    end;
    if dm_dados.nativo='S' then licenca:=trim(dm_dados.zqry_SGLICENCALICENCAALLES.AsString);
    if dm_dados.nativo='N' then licenca:=trim(DM_DADOS.zqry_SGLICENCALICENCAA.AsString);
    chaveb:=DM_DADOS.zqry_SGLICENCACHAVEB.asstring;
    frm_principal.Caption:='Alles '+versaoexe+' SC '+chaveb;
    /// Abriu SGESTACAO
    DM_dados.zqry_SGREVENDA.Close;
    dm_dados.zqry_SGREVENDA.SQL.Clear;
    dm_dados.zqry_SGREVENDA.SQL.Add('select * from sgrevenda where codrev=:revcod');
    dm_dados.zqry_SGREVENDA.ParamByName('revcod').AsInteger:=dm_dados.zqry_SGLICENCACODREV.AsInteger;
    dm_dados.zqry_SGREVENDA.Open;
    lbl_NOMEREVENDA.Caption:=dm_dados.zqry_SGREVENDANOMEREV.AsString;
    LBL_LICENCA.Caption:=licenca;//DM_DADOS.zqry_SGLICENCALICENCAA.AsString+'/'+DM_DADOS.zqry_SGLICENCACODLICENCA.AsString;
    LBL_LICENCIADO.Caption:=dm_dados.zqry_SGFILIALNOMEFILIAL.AsString;
    lbl_MAILREVENDA.Caption:=dm_dados.zqry_SGREVENDAEMAILREV.AsString;
    if dm_dados.zqry_SGREVENDAFONEREV.AsString='33984602577' then
      lbl_TELREVENDA.Caption:='(27)997996139'
    else
      lbl_TELREVENDA.Caption:=dm_dados.zqry_SGREVENDAFONEREV.AsString;
    if dm_dados.zqry_SGREVENDAFONEREV.AsString='33984602577' then
      lbl_WHATSREVENDA.Caption:='Whatsapp (27) 99799-6139'
    else
      lbl_WHATSREVENDA.Caption:=dm_dados.zqry_SGREVENDAFONEREV.AsString;
    if lbl_nomerevenda.caption='' then lbl_nomerevenda.Caption:='NonoElemento';
    if lbl_mailrevenda.Caption='' then lbl_mailrevenda.Caption:='contato@nonoelemento.com.br';
    if lbl_telrevenda.Caption=''  then lbl_telrevenda.Caption:='(27)3191-0989';
  end;
  // SEM LICEN�A
  if licenca='' then
  begin
    dm_dados.temnet:=u_verificainternet.Ping(10000,'www.google.com.br',80);
    // SEM INTERNET
    if dm_dados.temnet<>0 then
    begin
      mostratelaaviso('SEM ACCESSO A INTERNET','N�o conseguimos acessar nossos servidores para verificar sua licen�a');
      frm_login.Close;
      frm_principal.Close;
    end
    // COM INTERNET
    else
    begin
      registrasistema;
    end;
  end;
  //////////////////////////////////////////////////////////
  // COM LICEN�A
  ////////////////////////////////////////////////////////////////////////
  if licenca<>'' then
  begin
    dm_dados.temnet:=u_verificainternet.Ping(10000,'www.google.com.br',80);
    // SEM INTERNET
    if dm_dados.temnet<>0 then
    begin
      dm_dados.zqry_SGMODULADO.Params.Clear;
      dm_dados.zqry_SGMODULADO.Close;
      dm_dados.zqry_SGMODULADO.SQL.Clear;
      dm_dados.zqry_SGMODULADO.SQL.Add('select * from sgmodulado');
      dm_dados.zqry_SGMODULADO.Open;
      caos:=dm_dados.zqry_SGMODULADOCAOS.AsInteger;
      if (caos>=29) then
      begin
        mostratelaaviso('LIMITE DE ACESSO','Seu sistema atingiu o n�mero limite de conex�o com o nosso Servidor. Verifique sua conex�o a internet ');
        frm_login.Close;
        frm_principal.Close;
        close;
      end
      else
      begin
        caos:=caos+1;
        zqry_UPT.Close;
        zqry_UPT.SQL.Clear;
        zqry_UPT.SQL.Add('update sgmodulado set caos=:acessos');
        zqry_UPT.ParamByName('acessos').AsInteger:=caos;
        zqry_UPT.ExecSQL;
        frm_login.showmodal;
      end;
    end;
    // COM INTERNET
    if dm_dados.temnet=0 then
    begin
      dm_dados.ConectaWeb.connected:=false;
      dm_dados.ConectaWeb.Connected:=true;
      dm_dados.zqry_sglicencaweb.Params.Clear;
      dm_dados.zqry_SGLICENCAWEB.Close;
      dm_Dados.zqry_SGLICENCAWEB.SQL.Clear;
      if dm_dados.nativo='S' then dm_dados.zqry_SGLICENCAWEB.SQL.Add('select * from sglicenca where codlicenca=:licencacod');
      if dm_Dados.nativo='N' then dm_dados.zqry_SGLICENCAWEB.SQL.Add('select * from sglicenca where numeroserie=:licencacod');
      dm_dados.zqry_SGLICENCAWEB.ParamByName('licencacod').AsString:=trim(licenca);
      dm_dados.zqry_SGLICENCAWEB.Open;
      if dm_dados.zqry_SGLICENCAWEB.IsEmpty then
      begin
        mostratelaaviso('LICENCA NAO LOCALIZADA','Nao foi localizado esse n�mero de licen�a em nosso servidor.'+#13+'Solicite Suporte T�cnico para a licenca n�mero '+licenca);
        frm_login.Close;
        frm_principal.Close;
        close;
      end
      else
      begin
        if dm_dados.zqry_SGLICENCAWEBativo.AsString='N' then
        begin
          mostratelaaviso('LICENCA EST� INATIVA','Solicitamos que entre em contato com a Revenda ou com a NonoElemento.'+#13+'Solicite Suporte T�cnico para a licenca n�mero '+licenca);
          frm_login.Close;
          frm_principal.Close;
          close;
        end;
        if dm_dados.zqry_SGLICENCAWEBrevogado.AsString='S' then
        begin
          mostratelaaviso('LICENCA FOI REVOGADA','Solicitamos que entre em contato com a Revenda ou com a NonoElemento.'+#13+'Solicite Suporte T�cnico para a licenca n�mero '+licenca);
          deletefile('configura.exe');
          deletefile('sync.exe');
          frm_login.Close;
          frm_principal.Close;
          close;
        end;
      end;
    end;
    dm_Dados.zqry_SGESTACAO.Close;
    dm_Dados.zqry_sgestacao.sql.clear;
    DM_dADOS.zqry_sgestacao.sql.Add('select * from sgestacao where codest=:codmaq and codemp=:empcod and logado=:conectado');
    DM_DADOS.zqry_sgestacao.parambyname('codmaq').asinteger:=dm_Dados.terminal;
    DM_DADOS.zqry_sgestacao.parambyname('empcod').asinteger:=dm_Dados.codemp;
    DM_DADOS.zqry_sgestacao.parambyname('conectado').asstring:='S';
    dm_dados.zqry_sgestacao.open;
    if dm_Dados.zqry_SGESTACAO.IsEmpty then
    begin
      zqry_LOGAESTACAO.Close;
      zqry_LOGAESTACAO.SQL.Clear;
      zqry_logaestacao.SQL.Add('update sgestacao set logado=:conectado where codest=:codmaq and codemp=:empcod');
      zqry_logaestacao.parambyname('codmaq').asinteger:=dm_Dados.terminal;
      zqry_logaestacao.parambyname('empcod').asinteger:=dm_Dados.codemp;
      zqry_logaestacao.parambyname('conectado').asstring:='S';
      zqry_logaestacao.ExecSQL;
    end
    else
    begin
      showmessage('Aten��o!!!'#13'J� existe um acesso ativo para o terminal '+inttostr(dm_dados.terminal));
      close;
      close;
    end;
    frm_login.showmodal;
  end;
end;

procedure Tfrm_PRINCIPAL.Funo1Click(Sender: TObject);
begin
  if FRM_CAD_FUNCAO=nil then
  FRM_CAD_FUNCAO:=TFRM_CAD_FUNCAO.Create(application);
  FRM_CAD_FUNCAO.show;
end;

end.
