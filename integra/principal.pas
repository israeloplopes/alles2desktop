unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, TlHelp32,
  Vcl.Imaging.pngimage, Vcl.Menus, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, WinInet, HTTPApp,
  Vcl.DBCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,IdTCPConnection, IdTCPClient,
  Vcl.Grids, Vcl.DBGrids, Math, IdBaseComponent, IdComponent,
  IdExplicitTLSClientServerBase, IdFTP,

  ShellApi,ACBrBase,ACBrTroco, Vcl.Mask, Printers, WinSpool, ACBrDFe,ACBrNFe, IniFiles,OleCtrls,
  pcnConversao,ACBrUtil,ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,  XMLIntf, XMLDoc, ACBrMail,
  ACBrNFeDANFeRLClass,  ACBrPosPrinter, Spin, pcnconversaonfe, rlprinters, System.DateUtils,Datasnap.Provider, Datasnap.DBClient, ACBrTEFD, Vcl.Imaging.jpeg,
  SHDocVw;

type
  Tfrm_PRINCIPAL = class(TForm)
    sp_ATIVAPAINEL: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Fiscal1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Vendas1: TMenuItem;
    Receiturio1: TMenuItem;
    N1: TMenuItem;
    Sync1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    img_WALLPAPER: TImage;
    sp_RECEBER: TSpeedButton;
    sp_FISCAL: TSpeedButton;
    sp_RECEITUARIO: TSpeedButton;
    sp_VENDAS: TSpeedButton;
    Produtos1: TMenuItem;
    sp_PRODUTOS: TSpeedButton;
    sp_ENTREGAS: TSpeedButton;
    Entregas1: TMenuItem;
    gb_BUSCA: TGroupBox;
    edt_NUMPED: TEdit;
    Label1: TLabel;
    cb_PEDIDO: TComboBox;
    gb_MAIN: TGroupBox;
    gb_VENDAS: TGroupBox;
    Boletos1: TMenuItem;
    Cheques1: TMenuItem;
    Relatrios1: TMenuItem;
    Comisso1: TMenuItem;
    Pedidos1: TMenuItem;
    Crditos1: TMenuItem;
    N4: TMenuItem;
    Relatrios2: TMenuItem;
    Mapa1: TMenuItem;
    Etiquetas1: TMenuItem;
    Mapa2: TMenuItem;
    ImportaCompra1: TMenuItem;
    NFe1: TMenuItem;
    MDFe1: TMenuItem;
    N5: TMenuItem;
    Sintegra1: TMenuItem;
    N6: TMenuItem;
    Relatrios3: TMenuItem;
    ransferncia1: TMenuItem;
    SaldoxLotes1: TMenuItem;
    N7: TMenuItem;
    Relatrios4: TMenuItem;
    CargaBalana1: TMenuItem;
    N8: TMenuItem;
    Relatrios5: TMenuItem;
    XMLReceita1: TMenuItem;
    CheckOutPDV1: TMenuItem;
    Espelho1: TMenuItem;
    PMZ1: TMenuItem;
    ipodeCobrana1: TMenuItem;
    Almoxarifados1: TMenuItem;
    VendasxTransportadora1: TMenuItem;
    ClassificaoFiscal1: TMenuItem;
    N9: TMenuItem;
    Gerar1: TMenuItem;
    ratamento1: TMenuItem;
    N3: TMenuItem;
    Cheques2: TMenuItem;
    N10: TMenuItem;
    iposdeDevoluo1: TMenuItem;
    ProdutoscomSaldo1: TMenuItem;
    Consultas1: TMenuItem;
    CPF1: TMenuItem;
    CNPJ1: TMenuItem;
    N11: TMenuItem;
    sp_PREFERENCIAS: TSpeedButton;
    ImageList1: TImageList;
    db_NFE: TDBText;
    db_NFCE: TDBText;
    sp_VD_CHECKOUT: TSpeedButton;
    sp_VD_COMISSAO: TSpeedButton;
    sp_VD_CREDITOS: TSpeedButton;
    sp_VD_PEDIDOS: TSpeedButton;
    sp_VD_REL_PMZ: TSpeedButton;
    lbl_ROTULO: TLabel;
    sp_VD_VOLTAR: TSpeedButton;
    gb_ENTREGAS: TGroupBox;
    sp_EN_DASHBOARD: TSpeedButton;
    sp_EN_ETIQUETAS: TSpeedButton;
    sp_EN_MAPA: TSpeedButton;
    sp_EN_REL_VENDAS: TSpeedButton;
    sp_EN_VOLTAR: TSpeedButton;
    gb_FISCAL: TGroupBox;
    sp_FS_VIAXML: TSpeedButton;
    sp_FS_MDFE: TSpeedButton;
    sp_FS_NFE: TSpeedButton;
    sp_FS_VOLTAR: TSpeedButton;
    sp_FS_SINTSPED: TSpeedButton;
    sp_FS_CONSULTA: TSpeedButton;
    sp_FS_CLASSIFICA: TSpeedButton;
    gb_PRODUTOS: TGroupBox;
    sp_PRO_CARGABALANCA: TSpeedButton;
    sp_PRO_ACERTALOTE: TSpeedButton;
    sp_PRO_TRANSALMOX: TSpeedButton;
    sp_PRO_REL_ALMOXARIFADO: TSpeedButton;
    sp_PRO_VOLTAR: TSpeedButton;
    gb_RECEBER: TGroupBox;
    sp_REC_BOLETO: TSpeedButton;
    sp_REC_TRATAMENTO: TSpeedButton;
    sp_REC_CHEQUES: TSpeedButton;
    sp_REC_REL_TIPOCOBRANCA: TSpeedButton;
    sp_REC_VOLTAR: TSpeedButton;
    sp_REC_MOTIVOS: TSpeedButton;
    gb_RECEITUARIO: TGroupBox;
    sp_AG_RECEITUARIO: TSpeedButton;
    sp_AG_VOLTAR: TSpeedButton;
    sp_PRO_REL_ESPELHO: TSpeedButton;
    sp_PRO_REL_COMSALDO: TSpeedButton;
    gb_CONTADORES: TGroupBox;
    lbl_NFE: TLabel;
    lbl_NFCE: TLabel;
    sp_PRODUCAO: TSpeedButton;
    zqry_VENDA: TZQuery;
    zdts_VENDA: TDataSource;
    zqry_VENDACODEMP: TIntegerField;
    zqry_VENDACODFILIAL: TSmallintField;
    zqry_VENDATIPOVENDA: TWideStringField;
    zqry_VENDACODVENDA: TIntegerField;
    zqry_VENDASUBTIPOVENDA: TWideStringField;
    zqry_VENDACODEMPVD: TIntegerField;
    zqry_VENDACODFILIALVD: TSmallintField;
    zqry_VENDACODVEND: TIntegerField;
    zqry_VENDACODEMPCL: TIntegerField;
    zqry_VENDACODFILIALCL: TSmallintField;
    zqry_VENDACODCLI: TIntegerField;
    zqry_VENDACODEMPPG: TIntegerField;
    zqry_VENDACODFILIALPG: TSmallintField;
    zqry_VENDACODPLANOPAG: TIntegerField;
    zqry_VENDACODEMPSE: TIntegerField;
    zqry_VENDACODFILIALSE: TSmallintField;
    zqry_VENDASERIE: TWideStringField;
    zqry_VENDACODEMPTM: TIntegerField;
    zqry_VENDACODFILIALTM: TSmallintField;
    zqry_VENDACODTIPOMOV: TIntegerField;
    zqry_VENDACODEMPCX: TIntegerField;
    zqry_VENDACODFILIALCX: TSmallintField;
    zqry_VENDACODCAIXA: TIntegerField;
    zqry_VENDADOCVENDA: TIntegerField;
    zqry_VENDADTSAIDAVENDA: TDateField;
    zqry_VENDADTEMITVENDA: TDateField;
    zqry_VENDADTCOMPVENDA: TDateField;
    zqry_VENDACODEMPRM: TIntegerField;
    zqry_VENDACODFILIALRM: TSmallintField;
    zqry_VENDATICKET: TIntegerField;
    zqry_VENDAVLRPRODVENDA: TFloatField;
    zqry_VENDAPERCDESCVENDA: TFloatField;
    zqry_VENDAVLRDESCVENDA: TFloatField;
    zqry_VENDAVLRDESCITVENDA: TFloatField;
    zqry_VENDAVLRVENDA: TFloatField;
    zqry_VENDAVLRBASEICMSVENDA: TFloatField;
    zqry_VENDAVLRICMSVENDA: TFloatField;
    zqry_VENDACALCICMSVENDA: TWideStringField;
    zqry_VENDAIMPICMSVENDA: TWideStringField;
    zqry_VENDAVLRISENTASVENDA: TFloatField;
    zqry_VENDAVLROUTRASVENDA: TFloatField;
    zqry_VENDAVLRBASEIPIVENDA: TFloatField;
    zqry_VENDAVLRLIQVENDA: TFloatField;
    zqry_VENDAPERCCOMISVENDA: TFloatField;
    zqry_VENDAVLRCOMISVENDA: TFloatField;
    zqry_VENDASTATUSVENDA: TWideStringField;
    zqry_VENDAVLRFRETEVENDA: TFloatField;
    zqry_VENDAVLRADICVENDA: TFloatField;
    zqry_VENDAVLRIPIVENDA: TFloatField;
    zqry_VENDACALCIPIVENDA: TWideStringField;
    zqry_VENDAIMPIPIVENDA: TWideStringField;
    zqry_VENDAOBSVENDA: TWideStringField;
    zqry_VENDACODEMPBO: TIntegerField;
    zqry_VENDACODFILIALBO: TSmallintField;
    zqry_VENDACODBANCO: TWideStringField;
    zqry_VENDACODEMPTC: TIntegerField;
    zqry_VENDACODFILIALTC: TSmallintField;
    zqry_VENDACODTIPOCOB: TIntegerField;
    zqry_VENDAVLRBASEISSVENDA: TFloatField;
    zqry_VENDAVLRISSVENDA: TFloatField;
    zqry_VENDACALCISSVENDA: TWideStringField;
    zqry_VENDAIMPIISSVENDA: TWideStringField;
    zqry_VENDAIMPNOTAVENDA: TWideStringField;
    zqry_VENDAFLAG: TWideStringField;
    zqry_VENDACODCLASCOMIS: TWideStringField;
    zqry_VENDAVLRPISVENDA: TFloatField;
    zqry_VENDACALCPISVENDA: TWideStringField;
    zqry_VENDAIMPPISVENDA: TWideStringField;
    zqry_VENDAVLRCOFINSVENDA: TFloatField;
    zqry_VENDACALCCOFINSVENDA: TWideStringField;
    zqry_VENDAIMPCOFINSVENDA: TWideStringField;
    zqry_VENDAVLRIRVENDA: TFloatField;
    zqry_VENDACALCIRVENDA: TWideStringField;
    zqry_VENDAIMPIRVENDA: TWideStringField;
    zqry_VENDAVLRCSOCIALVENDA: TFloatField;
    zqry_VENDACALCCSOCIALVENDA: TWideStringField;
    zqry_VENDAIMPCSOCIALVENDA: TWideStringField;
    zqry_VENDAPERCMCOMISVENDA: TFloatField;
    zqry_VENDACODEMPCM: TIntegerField;
    zqry_VENDACODFILIALCM: TIntegerField;
    zqry_VENDACODCLCOMIS: TIntegerField;
    zqry_VENDACODEMPCB: TIntegerField;
    zqry_VENDACODFILIALCB: TSmallintField;
    zqry_VENDACODCARTCOB: TWideStringField;
    zqry_VENDAPEDCLIVENDA: TWideStringField;
    zqry_VENDAVLRICMSSTVENDA: TFloatField;
    zqry_VENDAVLRBASEICMSSTVENDA: TFloatField;
    zqry_VENDAEMMANUT: TWideStringField;
    zqry_VENDABLOQVENDA: TWideStringField;
    zqry_VENDAVLRICMSSIMPLES: TFloatField;
    zqry_VENDAPERCICMSSIMPLES: TFloatField;
    zqry_VENDAVLRBASEPISVENDA: TFloatField;
    zqry_VENDAVLRBASECOFINSVENDA: TFloatField;
    zqry_VENDAVLRBASECOMIS: TFloatField;
    zqry_VENDACHAVENFEVENDA: TWideStringField;
    zqry_VENDACODEMPCA: TIntegerField;
    zqry_VENDACODFILIALCA: TSmallintField;
    zqry_VENDANUMCONTA: TWideStringField;
    zqry_VENDAOBSREC: TWideStringField;
    zqry_VENDAINFCOMPL: TWideStringField;
    zqry_VENDASITDOC: TWideStringField;
    zqry_VENDAOBSNFE: TWideStringField;
    zqry_VENDADESCIPIVENDA: TWideStringField;
    zqry_VENDACODEMPOP: TIntegerField;
    zqry_VENDACODFILIALOP: TSmallintField;
    zqry_VENDASEQOP: TSmallintField;
    zqry_VENDACODOP: TIntegerField;
    zqry_VENDALOCALSERV: TWideStringField;
    zqry_VENDANROATUALIZADO: TWideStringField;
    zqry_VENDACNF: TLargeintField;
    zqry_VENDASITCOMPLVENDA: TWideStringField;
    zqry_VENDAMOTIVOCANCVENDA: TWideStringField;
    zqry_VENDADTINS: TDateField;
    zqry_VENDAHINS: TTimeField;
    zqry_VENDAIDUSUINS: TWideStringField;
    zqry_VENDADTALT: TDateField;
    zqry_VENDAHALT: TTimeField;
    zqry_VENDAIDUSUALT: TWideStringField;
    zqry_VENDAVLRSIMPLES: TFloatField;
    zqry_VENDATIPOENVIO: TWideStringField;
    zqry_VENDACODMOT: TIntegerField;
    zqry_VENDACODVEIC: TIntegerField;
    zqry_VENDAOBSENTREGA: TWideStringField;
    zqry_VENDANOMEMOT: TWideStringField;
    zqry_VENDAPLACA: TWideStringField;
    zqry_VENDAREQUERMONTAGEM: TWideStringField;
    zqry_VENDAPONTOREFERENCIA: TWideStringField;
    zqry_VENDACODATEND: TIntegerField;
    zqry_VENDACODEMPAT: TIntegerField;
    zqry_VENDACODFILIALAT: TSmallintField;
    zqry_VENDAVDCOMERCIAL: TWideStringField;
    zqry_VENDAVDVENDEXTERNO: TWideStringField;
    zqry_VENDAVDCOMMERCE: TWideStringField;
    zqry_VENDAENTREGUE: TWideStringField;
    zqry_VENDAIDFASTSALE: TIntegerField;
    zqry_ITEMVENDA: TZQuery;
    zdts_ITEMVENDA: TDataSource;
    zqry_ITEMVENDACODEMP: TIntegerField;
    zqry_ITEMVENDACODFILIAL: TSmallintField;
    zqry_ITEMVENDATIPOVENDA: TWideStringField;
    zqry_ITEMVENDACODVENDA: TIntegerField;
    zqry_ITEMVENDACODITVENDA: TIntegerField;
    zqry_ITEMVENDACODEMPNT: TIntegerField;
    zqry_ITEMVENDACODFILIALNT: TSmallintField;
    zqry_ITEMVENDACODNAT: TWideStringField;
    zqry_ITEMVENDACODEMPPD: TIntegerField;
    zqry_ITEMVENDACODFILIALPD: TSmallintField;
    zqry_ITEMVENDACODPROD: TIntegerField;
    zqry_ITEMVENDACODEMPLE: TIntegerField;
    zqry_ITEMVENDACODFILIALLE: TSmallintField;
    zqry_ITEMVENDACODLOTE: TWideStringField;
    zqry_ITEMVENDACODEMPAX: TIntegerField;
    zqry_ITEMVENDACODFILIALAX: TSmallintField;
    zqry_ITEMVENDACODALMOX: TIntegerField;
    zqry_ITEMVENDAQTDITVENDA: TFloatField;
    zqry_ITEMVENDAQTDITVENDACANC: TFloatField;
    zqry_ITEMVENDAPRECOITVENDA: TFloatField;
    zqry_ITEMVENDAPERCDESCITVENDA: TFloatField;
    zqry_ITEMVENDAVLRDESCITVENDA: TFloatField;
    zqry_ITEMVENDAPERCICMSITVENDA: TFloatField;
    zqry_ITEMVENDAVLRBASEICMSITVENDA: TFloatField;
    zqry_ITEMVENDAVLRICMSITVENDA: TFloatField;
    zqry_ITEMVENDAPERCIPIITVENDA: TFloatField;
    zqry_ITEMVENDAVLRBASEIPIITVENDA: TFloatField;
    zqry_ITEMVENDAVLRIPIITVENDA: TFloatField;
    zqry_ITEMVENDAVLRLIQITVENDA: TFloatField;
    zqry_ITEMVENDAPERCCOMISITVENDA: TFloatField;
    zqry_ITEMVENDAVLRCOMISITVENDA: TFloatField;
    zqry_ITEMVENDAVLRADICITVENDA: TFloatField;
    zqry_ITEMVENDAPERCISSITVENDA: TFloatField;
    zqry_ITEMVENDAVLRISSITVENDA: TFloatField;
    zqry_ITEMVENDAVLRFRETEITVENDA: TFloatField;
    zqry_ITEMVENDAVLRPRODITVENDA: TFloatField;
    zqry_ITEMVENDAVLRISENTASITVENDA: TFloatField;
    zqry_ITEMVENDAVLROUTRASITVENDA: TFloatField;
    zqry_ITEMVENDAREFPROD: TWideStringField;
    zqry_ITEMVENDAVLRBASEISSITVENDA: TFloatField;
    zqry_ITEMVENDAVLRBASEICMSBRUTITVENDA: TFloatField;
    zqry_ITEMVENDAVLRBASEICMSSTITVENDA: TFloatField;
    zqry_ITEMVENDAVLRICMSSTITVENDA: TFloatField;
    zqry_ITEMVENDAVLRBASECOMISITVENDA: TFloatField;
    zqry_ITEMVENDAMARGEMVLAGRITVENDA: TFloatField;
    zqry_ITEMVENDAOBSITVENDA: TWideStringField;
    zqry_ITEMVENDAORIGFISC: TWideStringField;
    zqry_ITEMVENDACODEMPTT: TIntegerField;
    zqry_ITEMVENDACODFILIALTT: TIntegerField;
    zqry_ITEMVENDACODTRATTRIB: TWideStringField;
    zqry_ITEMVENDATIPOFISC: TWideStringField;
    zqry_ITEMVENDATIPOST: TWideStringField;
    zqry_ITEMVENDACODEMPME: TIntegerField;
    zqry_ITEMVENDACODFILIALME: TSmallintField;
    zqry_ITEMVENDACODMENS: TIntegerField;
    zqry_ITEMVENDASTRDESCITVENDA: TWideStringField;
    zqry_ITEMVENDAQTDDEVITVENDA: TFloatField;
    zqry_ITEMVENDACODEMPLG: TIntegerField;
    zqry_ITEMVENDACODFILIALLG: TSmallintField;
    zqry_ITEMVENDACODLOG: TIntegerField;
    zqry_ITEMVENDACANCITVENDA: TWideStringField;
    zqry_ITEMVENDACODEMPPE: TIntegerField;
    zqry_ITEMVENDACODFILIALPE: TSmallintField;
    zqry_ITEMVENDACODPE: TIntegerField;
    zqry_ITEMVENDADIASPE: TSmallintField;
    zqry_ITEMVENDACODEMPCV: TIntegerField;
    zqry_ITEMVENDACODFILIALCV: TSmallintField;
    zqry_ITEMVENDACODCONV: TIntegerField;
    zqry_ITEMVENDACODEMPIF: TIntegerField;
    zqry_ITEMVENDACODFILIALIF: TIntegerField;
    zqry_ITEMVENDACODFISC: TWideStringField;
    zqry_ITEMVENDACODITFISC: TIntegerField;
    zqry_ITEMVENDACODEMPCP: TIntegerField;
    zqry_ITEMVENDACODFILIALCP: TSmallintField;
    zqry_ITEMVENDACODCOMPRA: TIntegerField;
    zqry_ITEMVENDACODITCOMPRA: TIntegerField;
    zqry_ITEMVENDACODEMPVR: TIntegerField;
    zqry_ITEMVENDACODFILIALVR: TSmallintField;
    zqry_ITEMVENDATIPOVENDAVR: TWideStringField;
    zqry_ITEMVENDACODVENDAVR: TIntegerField;
    zqry_ITEMVENDACODITVENDAVR: TIntegerField;
    zqry_ITEMVENDACODEMPNS: TIntegerField;
    zqry_ITEMVENDACODFILIALNS: TSmallintField;
    zqry_ITEMVENDANUMSERIETMP: TWideStringField;
    zqry_ITEMVENDAVLRBASEICMSSTRETITVENDA: TFloatField;
    zqry_ITEMVENDAVLRICMSSTRETITVENDA: TFloatField;
    zqry_ITEMVENDACALCSTCM: TWideStringField;
    zqry_ITEMVENDAEMMANUT: TWideStringField;
    zqry_ITEMVENDADTINS: TDateField;
    zqry_ITEMVENDAHINS: TTimeField;
    zqry_ITEMVENDAIDUSUINS: TWideStringField;
    zqry_ITEMVENDADTALT: TDateField;
    zqry_ITEMVENDAHALT: TTimeField;
    zqry_ITEMVENDAIDUSUALT: TWideStringField;
    zqry_ITEMVENDATXTDESCITEM: TWideStringField;
    zqry_ITEMVENDADESCITEM: TWideStringField;
    zqry_ITEMVENDASOLICITANTE: TWideStringField;
    zqry_NOTAS: TZQuery;
    zdts_NOTAS: TDataSource;
    zqry_ITEMVENDA_TEMRECEITA: TStringField;
    zqry_ITEMVENDA_DESCPRODUTO: TStringField;
    BuscaRpida1: TMenuItem;
    Memo1: TMemo;
    gb_DETALHES: TGroupBox;
    Label2: TLabel;
    lbl_ITENS_LINHAS: TLabel;
    Label4: TLabel;
    lbl_ICMSST: TLabel;
    btn_BUSCAPEDIDO: TBitBtn;
    Label3: TLabel;
    lbl_VLRLIQ: TLabel;
    lbl_WP_INTEGRA: TLabel;
    lbl_VERSAO: TLabel;
    IdFTP1: TIdFTP;
    Produo1: TMenuItem;
    sp_PRO_DEPOSITOS: TSpeedButton;
    sp_PRO_TRANSDEP: TSpeedButton;
    Depsitos1: TMenuItem;
    ransDepsitos1: TMenuItem;
    sp_FS_DLG_CONTADORES: TSpeedButton;
    btn_INICIALIZAR: TBitBtn;
    lbl_LOGOLOJA: TLabel;
    Label5: TLabel;
    zqry_TOTALPNE: TZQuery;
    zdts_TOTALPNE: TDataSource;
    zqry_TOTALDFE: TZQuery;
    zqry_TOTALPNEQTDPNE: TIntegerField;
    zqry_TOTALDFEQTDDFE: TIntegerField;
    zdts_TOTALDFE: TDataSource;
    zqry_TOTALNFCE: TZQuery;
    zqry_TOTALNFCEQTDNFCE: TIntegerField;
    zdts_TOTALNFCE: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    lbl_PNE: TLabel;
    lbl_DFE: TLabel;
    lbl_QTDNFCE: TLabel;
    sp_ESCOLA: TSpeedButton;
    gb_ESCOLA: TGroupBox;
    sp_ESC_VOLTAR: TSpeedButton;
    sp_ESC_PROFESSOR: TSpeedButton;
    sp_ESC_ALUNO: TSpeedButton;
    sp_ESC_CURSOS: TSpeedButton;
    sp_ESC_TURMA: TSpeedButton;
    sp_ESC_AULAS: TSpeedButton;
    BitBtn1: TBitBtn;
    sp_PRO_REL_ETIQUETA: TSpeedButton;
    MemoResp: TMemo;
    wbRESPOSTA: TWebBrowser;
    memoRespWS: TMemo;
    zqry_VENDANOMECLI: TWideStringField;
    zqry_VENDAPROTOCOLO: TWideStringField;
    zqry_VENDACAMINHO: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure sp_ATIVAPAINELClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure XMLReceita1Click(Sender: TObject);
    procedure Espelho1Click(Sender: TObject);
    procedure PMZ1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure ipodeCobrana1Click(Sender: TObject);
    procedure Almoxarifados1Click(Sender: TObject);
    procedure VendasxTransportadora1Click(Sender: TObject);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure Comisso1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure ratamento1Click(Sender: TObject);
    procedure Cheques2Click(Sender: TObject);
    procedure iposdeDevoluo1Click(Sender: TObject);
    procedure SaldoxLotes1Click(Sender: TObject);
    procedure ransferncia1Click(Sender: TObject);
    procedure ProdutoscomSaldo1Click(Sender: TObject);
    procedure CargaBalana1Click(Sender: TObject);
    procedure ImportaCompra1Click(Sender: TObject);
    procedure CPF1Click(Sender: TObject);
    procedure CNPJ1Click(Sender: TObject);
    procedure Sintegra1Click(Sender: TObject);
    procedure Receiturio1Click(Sender: TObject);
    procedure sp_PREFERENCIASClick(Sender: TObject);
    procedure sp_VENDASClick(Sender: TObject);
    procedure sp_VD_VOLTARClick(Sender: TObject);
    procedure sp_VD_COMISSAOClick(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure sp_VD_REL_PMZClick(Sender: TObject);
    procedure btn_FUNDO_CREAMClick(Sender: TObject);
    procedure btn_FUNDO_SKYBLUEClick(Sender: TObject);
    procedure btn_FUNDO_MONEYGREENClick(Sender: TObject);
    procedure sp_ENTREGASClick(Sender: TObject);
    procedure sp_FISCALClick(Sender: TObject);
    procedure sp_AG_VOLTARClick(Sender: TObject);
    procedure sp_REC_VOLTARClick(Sender: TObject);
    procedure sp_PRO_VOLTARClick(Sender: TObject);
    procedure sp_FS_VOLTARClick(Sender: TObject);
    procedure sp_EN_VOLTARClick(Sender: TObject);
    procedure sp_PRODUTOSClick(Sender: TObject);
    procedure sp_RECEBERClick(Sender: TObject);
    procedure sp_RECEITUARIOClick(Sender: TObject);
    procedure sp_REC_REL_TIPOCOBRANCAClick(Sender: TObject);
    procedure sp_REC_TRATAMENTOClick(Sender: TObject);
    procedure Gerar1Click(Sender: TObject);
    procedure sp_REC_CHEQUESClick(Sender: TObject);
    procedure sp_REC_MOTIVOSClick(Sender: TObject);
    procedure sp_PRO_CARGABALANCAClick(Sender: TObject);
    procedure sp_PRO_ACERTALOTEClick(Sender: TObject);
    procedure sp_PRO_TRANSALMOXClick(Sender: TObject);
    procedure sp_PRO_REL_ALMOXARIFADOClick(Sender: TObject);
    procedure sp_PRO_REL_ESPELHOClick(Sender: TObject);
    procedure sp_PRO_REL_COMSALDOClick(Sender: TObject);
    procedure sp_FS_SINTSPEDClick(Sender: TObject);
    procedure sp_FS_VIAXMLClick(Sender: TObject);
    procedure NFe1Click(Sender: TObject);
    procedure db_NFEClick(Sender: TObject);
    procedure db_NFCEClick(Sender: TObject);
    procedure sp_VD_PEDIDOSClick(Sender: TObject);
    procedure lbl_NFEClick(Sender: TObject);
    procedure lbl_NFCEClick(Sender: TObject);
    procedure cb_PEDIDOClick(Sender: TObject);
    procedure BuscaVenda;
    procedure ChamaTEF;
    procedure ChecaLicenca;
    procedure BuscaRpida1Click(Sender: TObject);
    procedure sp_AG_RECEITUARIOClick(Sender: TObject);
    procedure sp_REC_BOLETOClick(Sender: TObject);
    procedure sp_PRODUCAOClick(Sender: TObject);
    procedure sp_VD_CHECKOUTClick(Sender: TObject);
    procedure sp_EN_ETIQUETASClick(Sender: TObject);
    procedure sp_EN_DASHBOARDClick(Sender: TObject);
    procedure Mapa1Click(Sender: TObject);
    procedure sp_EN_REL_VENDASClick(Sender: TObject);
    procedure sp_FS_NFEClick(Sender: TObject);
    procedure sp_FS_CLASSIFICAClick(Sender: TObject);
    procedure btn_BUSCAPEDIDOClick(Sender: TObject);
    procedure edt_NUMPEDKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure sp_FS_MDFEClick(Sender: TObject);
    procedure MDFe1Click(Sender: TObject);
    procedure Produo1Click(Sender: TObject);
    procedure Depsitos1Click(Sender: TObject);
    procedure ransDepsitos1Click(Sender: TObject);
    procedure sp_PRO_TRANSDEPClick(Sender: TObject);
    procedure sp_PRO_DEPOSITOSClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckOutPDV1Click(Sender: TObject);
    procedure btn_INICIALIZARClick(Sender: TObject);
    procedure sp_FS_DLG_CONTADORESClick(Sender: TObject);
    procedure ContaNotas;
    procedure lbl_QTDNFCEClick(Sender: TObject);
    procedure lbl_DFEClick(Sender: TObject);
    procedure lbl_PNEClick(Sender: TObject);
    procedure Sync1Click(Sender: TObject);
    procedure gb_BUSCAClick(Sender: TObject);
    procedure sp_ESCOLAClick(Sender: TObject);
    procedure sp_ESC_VOLTARClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sp_PRO_REL_ETIQUETAClick(Sender: TObject);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);

  private
    { Private declarations }
  public
    { Public declarations }
    id_seq, codintegra, posicaox  :integer;
    tpnnum, simples, chave: string;
  end;

var
  frm_PRINCIPAL: Tfrm_PRINCIPAL;
  OldWindowProc: Pointer;
  MyMsg: LongInt;

implementation

{$R *.dfm}

uses dados, prefacbr, ufuncoes, dlg_est_almox, carga_balanca, dlg_comissao,
  dlg_inventario, dlg_etiquetas, dlg_tipocobranca, dlg_appremret, dlg_difpmz,
  dlg_receituario, dlg_acertalote, dlg_vendastransp, con_cnpj, con_cpf,
  rel_estoque_saldo, cheque, ins_clfiscal, uImportaUmaNFe, concad_chequealinea,
  trans_almox, sintegra, con_nfe_sefaz, con_pedido, con_receber,
  dlg_acertasequencia, cad_recagro, rel_mapapedidos, rel_etiquetas, checkout,
  entregue, concad_depositos, concad_saldodepos, contadores, abrecaixa, cupom,
  ajusta, dlg_etiqproduto, login, dlg_fiscal;

type
  TQrImage_ErrCorrLevel = (L, M, Q, H);

const
  UrlGoogleQrCode =
    'http://chart.apis.google.com/chart?chs=%dx%d&cht=qr&chld=%s&chl=%s';
  QrImgCorrStr: array [TQrImage_ErrCorrLevel] of string = ('L', 'M', 'Q', 'H');

Function VersaoExe: String;
        type
          PFFI = ^vs_FixedFileInfo;
        var
        F : PFFI;
        Handle : Dword;
        Len : Longint;
        Data : Pchar;
        Buffer : Pointer;
        Tamanho : Dword;
        Parquivo: Pchar;
        Arquivo : String;
            begin
              Arquivo := Application.ExeName;
              Parquivo := StrAlloc(Length(Arquivo) + 1);
StrPcopy(Parquivo, Arquivo);
Len := GetFileVersionInfoSize(Parquivo, Handle);
Result := '';
if Len > 0 then
begin
Data:=StrAlloc(Len+1);
if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
begin
VerQueryValue(Data, '\',Buffer,Tamanho);
F := PFFI(Buffer);
Result := Format('%d.%d.%d.%d',
[HiWord(F^.dwFileVersionMs),
LoWord(F^.dwFileVersionMs),
HiWord(F^.dwFileVersionLs),
Loword(F^.dwFileVersionLs)]
);
end;
StrDispose(Data);
end;
StrDispose(Parquivo);
end;

Function NewWindowProc(WH: hWnd; Msg,PW,PL:LongInt) : LongInt stdcall;
begin
  if msg=mymsg then
  begin
    sendmessage(application.Handle,WM_SYSCOMMAND,SC_RESTORE, 0);
    SetForegroundWindow(Application.Handle);
    result:=0;
    exit
  end;
  result:=CallWindowProc(OldWindowProc,WH,msg,PW,PL);
end;

procedure Tfrm_PRINCIPAL.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure Tfrm_PRINCIPAL.ContaNotas;
begin
  zqry_totalpne.params.clear;
zqry_totalpne.close;
zqry_totalpne.sql.clear;
zqry_totalpne.sql.add('select count(codvenda) as qtdpne from vdvenda where codtipomov=:mov and dtemitvenda=:data and codemp=:empcod');
zqry_totalpne.parambyname('mov').asinteger:=501;
zqry_totalpne.parambyname('data').asdate:=now;
zqry_totalpne.parambyname('empcod').asinteger:=99;
zqry_totalpne.open;
lbl_PNE.Caption:=inttostr(zqry_TOTALPNEQTDPNE.asinteger);
//
zqry_totaldfe.params.clear;
zqry_totaldfe.close;
zqry_totaldfe.sql.clear;
zqry_totaldfe.sql.add('select count(codvenda) as qtddfe from vdvenda where codtipomov=:mov and dtemitvenda=:data and codemp=:empcod');
zqry_totaldfe.parambyname('mov').asinteger:=601;
zqry_totaldfe.parambyname('data').asdate:=now;
zqry_totaldfe.parambyname('empcod').asinteger:=99;
zqry_totaldfe.open;
lbl_DFE.Caption:=inttostr(zqry_TOTALDFEQTDDFE.asinteger);
//
zqry_totalnfce.params.clear;
zqry_totalnfce.close;
zqry_totalnfce.sql.clear;
zqry_totalnfce.sql.add('select count(CODIGO) as qtdnfce from sgnf where nfce=:nfce and data=:dataemissao');
zqry_totalnfce.parambyname('nfce').asstring:='S';
zqry_totalnfce.parambyname('dataemissao').asdate:=now;
zqry_totalnfce.open;
lbl_QTDNFCE.Caption:=inttostr(zqry_TOTALNFCEQTDNFCE.asinteger);
end;

procedure Tfrm_PRINCIPAL.ChecaLicenca;
begin
  dm_dados.zqry_SGLICENCA.Params.Clear;
  dm_dados.zqry_SGLICENCA.Close;
  dm_dados.zqry_SGLICENCA.SQL.Clear;
  dm_Dados.zqry_SGLICENCA.SQL.Add('select * from sglicenca where codlicenca=1');
  dm_Dados.zqry_SGLICENCA.Open;
  dm_dados.MysqlConectar.Connected:=false;
  dm_dados.MysqlConectar.Connected:=true;
  dm_dados.cloud_sgLICENCAs.Active:=true;
  dm_dados.cloud_sgLICENCAs.close;
  dm_dados.cloud_sgLICENCAs.SQL.Clear;
  dm_dados.cloud_sgLICENCAs.SQL.Add('select * from sglicencas');
  dm_Dados.cloud_sgLICENCAs.SQL.Add('where numeroserie=:serie and publicado=:ativo and ativado=:usado');
  dm_dados.cloud_sgLICENCAs.ParamByName('serie').Value:=dm_dados.zqry_SGLICENCALICENCAA.asstring;
  dm_dados.cloud_sgLICENCAs.ParamByName('ativo').Value:='S';
  dm_dados.cloud_sgLICENCAs.ParamByName('usado').Value:='S';
  dm_dados.cloud_sgLICENCAs.Open;
  if dm_dados.cloud_sglICENCAs.IsEmpty then
  begin
    mostratelaaviso('Registro de Licença Cloud inexistente para esse CNPJ','Contacte o Administrador do Sistema');
    application.Terminate;
  end
  else
  begin

    idftp1.Disconnect();
    idftp1.Host:='nonoelemento.com.br';
    idftp1.Port:=21;
    idftp1.Username:='notas@nonoelemento.com.br';
    idftp1.Password:='px4b7470#ISA';
    idftp1.Passive:=true;
    idftp1.Passive:=true;
    try
    // Espera até 10 segundos pela conexão
      IdFTP1.Connect();
      IdFTP1.ChangeDir('/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/'); // connect to new folder
    except
      mostratelaaviso('Conexão Cloud Inexistente para esse CNPJ','Contacte o Administrador do Sistema');
      Application.Terminate;
    end;
  end;

end;

procedure Tfrm_PRINCIPAL.ChamaTEF;
begin
dm_dados.zqry_SGFILIAL.Params.Clear;
dm_dados.zqry_SGFILIAL.Close;
dm_dados.zqry_SGFILIAL.SQL.Clear;
dm_dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_SGFILIAL.Open;
IF (DM_DADOS.zqry_SGFILIALTEF_CAPPTA.Value='S') and (dm_Dados.tefestacao='S') then
begin
  MOSTRATELANOTIFICA('CONECTANDO TEF','Aguarde alguns segundos');
  frm_CUPOM.tef_cappta;
end;
{iF (DM_DADOS.zqry_SGFILIALTEF_TROCA.Value='S') and (dm_dados.tefestacao='S') then
begin
  MOSTRATELANOTIFICA('CONECTANDO TEF','Aguarde alguns segundos');
  try
    frm_prefacbr.show;
    sleep(2000);
    frm_prefacbr.AtivaTefDial;
  except
    showmessage('Não foi possível Conectar');
    exit;
  end;
end;}
end;

procedure WinInet_HttpGet(const Url: string; Stream: TStream);
const
  BuffSize = 1024 * 1024;
var
  hInter: HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: DWORD;
  Buffer: Pointer;
begin
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    Stream.Seek(0, 0);
    GetMem(Buffer, BuffSize);
    try
      UrlHandle := InternetOpenUrl(hInter, PChar(Url), nil, 0,
        INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      begin
        repeat
          InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
          if BytesRead > 0 then
            Stream.WriteBuffer(Buffer^, BytesRead);
        until BytesRead = 0;
        InternetCloseHandle(UrlHandle);
      end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
end;

procedure GetQrCode(Width, Height: Word;
  Correction_Level: TQrImage_ErrCorrLevel; const Data: string;
  StreamImage: TMemoryStream);
Var
  EncodedURL: string;
begin
  EncodedURL := Format(UrlGoogleQrCode,
    [Width, Height, QrImgCorrStr[Correction_Level], HTTPEncode(Data)]);
  WinInet_HttpGet(EncodedURL, StreamImage);
end;


procedure Tfrm_PRINCIPAL.BuscaRpida1Click(Sender: TObject);
begin
edt_NUMPED.Clear;
edt_NUMPED.SetFocus;
end;

procedure Tfrm_PRINCIPAL.BuscaVenda;
begin
  chave:=EmptyStr;
  zqry_VENDA.Params.Clear;
  zqry_venda.Close;
  zqry_venda.sql.clear;
  zqry_VENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_VENDA.ParamByName('vendacod').AsInteger:=strtoint(edt_NUMPED.Text);
  zqry_VENDA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_VENDA.Open;
  if zqry_VENDA.IsEmpty then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    edt_numped.SetFocus;
    edt_numped.Clear;
  end
  else
  begin
    //consulta produtos
    chave:=trim(zqry_VENDACHAVENFEVENDA.AsString);
    dm_dados.zqry_eqproduto.Close;
    dm_Dados.zqry_eqproduto.sql.clear;
    dm_Dados.zqry_eqproduto.SQL.Add('select * from eqproduto where codemp=:empcod');
    dm_Dados.zqry_eqproduto.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_eqproduto.Open;
    // consulta itens;
    zqry_itemvenda.Params.Clear;
    zqry_itemVENDA.Close;
    zqry_itemVENDA.SQL.Clear;
    zqry_itemVENDA.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod order by coditvenda');
    zqry_itemVENDA.ParamByName('vendacod').AsInteger:=zqry_vendacodvenda.AsInteger;
    zqry_itemVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_itemVENDA.Open;
    // consulta base
    dm_Dados.zqry_VDVENDA.Params.Clear;
    dm_Dados.zqry_VDVENDA.Close;
    dm_Dados.zqry_VDVENDA.sql.clear;
    dm_Dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
    dm_Dados.zqry_VDVENDA.ParamByName('vendacod').AsInteger:=strtoint(edt_NUMPED.Text);
    dm_Dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_Dados.zqry_VDVENDA.Open;
    DM_DADOS.zqry_vditvenda.Params.Clear;
    dm_dados.zqry_VDITVENDA.Close;
    dm_dados.zqry_VDITVENDA.SQL.Clear;
    dm_dados.zqry_VDITVENDA.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod order by coditvenda');
    dm_dados.zqry_VDITVENDA.ParamByName('vendacod').AsInteger:=zqry_VENDACODVENDA.AsInteger;
    dm_dados.zqry_VDITVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_VDITVENDA.Open;
    dm_dados.zqry_VDFRETEVD.close;
    dm_Dados.zqry_VDFRETEVD.sql.clear;
    dm_Dados.zqry_VDFRETEVD.sql.add('select * from vdfretevd where codvenda=:fretevendacod and codemp=99');
    dm_dados.zqry_VDFRETEVD.ParamByName('fretevendacod').AsInteger:=dm_dados.zqry_VDVENDACODVENDA.AsInteger;
    dm_dados.zqry_VDFRETEVD.Open;
    if dm_dados.zqry_VDFRETEVD.IsEmpty then
    begin
      showmessage('Pedido localizado. Mas não foi localizado fechamento de VendaxEntrega para a Venda');
    end
    else
    begin
      dm_Dados.zqry_VDTRANSP.Close;
      dm_dados.zqry_VDTRANSP.sql.clear;
      dm_dados.zqry_VDTRANSP.sql.add('select * from vdtransp where codtran=:trancod and codemp=99');
      dm_dados.zqry_VDTRANSP.ParamByName('trancod').AsInteger:=dm_dados.zqry_VDFRETEVDCODTRAN.AsInteger;
      dm_dados.zqry_VDTRANSP.Open;
    end;
  end;
end;

procedure Tfrm_PRINCIPAL.Almoxarifados1Click(Sender: TObject);
begin
frm_dlg_est_almox.show;
end;

procedure Tfrm_PRINCIPAL.btn_INICIALIZARClick(Sender: TObject);
begin
if dm_dados.zqry_SGFILIALSATCFE.AsString='S' then
begin
  frm_prefacbr.AjustaACBrSAT;

  frm_prefacbr.ACBrSAT1.Inicializado := not frm_prefacbr.ACBrSAT1.Inicializado ;

  if frm_prefacbr.ACBrSAT1.Inicializado then
    btn_INICIALIZAR.Caption := 'DesInicializar'
  else
    btn_INICIALIZAR.Caption := 'Inicializar'
end;
end;

procedure Tfrm_PRINCIPAL.BitBtn1Click(Sender: TObject);
begin
frm_ajusta.show;
end;

procedure Tfrm_PRINCIPAL.btn_BUSCAPEDIDOClick(Sender: TObject);
var
  ufigual, itens, numlinhas,numvenda : integer;
  cpfcliente, cnpjcliente, pessoacliente,iecliente, ufcliente, estado1,estado2:string;
  valoricmsitem, valordescicms,redicms,recicmpf,numitens,valortotal:double;
begin
  Application.ProcessMessages;
  lbl_ITENS_LINHAS.Caption:='';
  lbl_VLRLIQ.Caption:='';
  lbl_ICMSST.Caption:='';
  cpfcliente:=EmptyStr;
  cnpjcliente:=EmptyStr;
  pessoacliente:=EmptyStr;
  iecliente:=EmptyStr;
  ufcliente:=EmptyStr;
  //
  valoricmsitem:=0;
  valordescicms:=0;
  redicms:=0;
  recicmpf:=0;
  zqry_VENDA.Params.Clear;
  zqry_venda.Close;
  zqry_venda.sql.clear;
  zqry_VENDA.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_VENDA.ParamByName('vendacod').AsInteger:=strtoint(edt_NUMPED.Text);
  zqry_VENDA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_VENDA.Open;
  if zqry_VENDA.IsEmpty then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    edt_numped.SetFocus;
    edt_numped.Clear;
  end
  else
  begin
    gb_DETALHES.Visible:=TRUE;
    cb_PEDIDO.SetFocus;
    MostraTelaAguarde('Consultando Informações do Pedido '+zqry_VENDACODVENDA.asstring);
    //
    dm_Dados.zqry_SGFILIAL.Close;
    dm_Dados.zqry_SGFILIAL.SQL.Clear;
    dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_SGFILIAL.Open;
    //
    dm_dados.zqry_VDCLIENTE.Close;
    dm_Dados.zqry_vdcliente.sql.clear;
    dm_Dados.zqry_vdcliente.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
    dm_Dados.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=zqry_VENDACODCLI.AsInteger;
    dm_Dados.zqry_VDCLIENTE.Open;
    cpfcliente:=dm_Dados.zqry_vdclientecpfcli.asstring;
    cnpjcliente:=dm_dados.zqry_VDCLIENTECNPJCLI.AsString;
    pessoacliente:=dm_dados.zqry_VDCLIENTEPESSOACLI.AsString;
    iecliente:=dm_Dados.zqry_VDCLIENTEINSCCLI.AsString;
    ufcliente:=dm_Dados.zqry_VDCLIENTESIGLAUF.AsString;
    //
    dm_dados.zqry_eqproduto.Close;
    dm_Dados.zqry_eqproduto.sql.clear;
    dm_Dados.zqry_eqproduto.SQL.Add('select * from eqproduto where codemp=:empcod');
    dm_Dados.zqry_eqproduto.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_eqproduto.Open;
    //
    zqry_ITEMVENDA.Params.Clear;
    zqry_ITEMVENDA.Close;
    zqry_ITEMVENDA.SQL.Clear;
    zqry_ITEMVENDA.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod order by coditvenda');
    zqry_ITEMVENDA.ParamByName('vendacod').AsInteger:=zqry_VENDACODVENDA.AsInteger;
    zqry_ITEMVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_ITEMVENDA.Open;
    //
    NUMVENDA:=zqry_VENDACODVENDA.ASINTEGER;
    ITENS:=zqry_ITEMVENDA.RecordCount;
    //
    fechatelaaguarde;
   { MostraTelaAguarde('Consultando Informações do Pedido '+zqry_VENDACODVENDA.asstring+' detalhamento Financeiro');
    dm_dados.zqry_FNRECEBER.Close;
    dm_dados.zqry_FNRECEBER.sql.Clear;
    dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
    dm_dados.zqry_FNRECEBER.ParamByName('vendacod').asinteger:=zqry_VENDACODVENDA.asinteger;
    dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_FNRECEBER.Open;
    dm_dados.zqry_FNITRECEBER.Close;
    dm_dados.zqry_FNITRECEBER.sql.Clear;
    dm_dados.zqry_fnITreceber.SQL.Add('SELECT * FROM FNITRECEBER where codrec=:reccod and codemp=:empcod');
    dm_dados.zqry_FNITRECEBER.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
    dm_dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_FNITRECEBER.Open;
    fechatelaaguarde;}
    frm_con_pedido.zqry_contaqtd.Close;
    frm_con_pedido.zqry_contaqtd.SQL.Clear;
    frm_con_pedido.zqry_contaqtd.SQL.Add('select codvenda, sum(qtditvenda) as somaitens from vditvenda where codvenda=:vendacod group by codvenda');
    frm_con_pedido.zqry_contaqtd.ParamByName('vendacod').AsInteger:=zqry_VENDACODVENDA.AsInteger;
    frm_con_pedido.zqry_contaqtd.Open;
    NUMITENS:=frm_con_pedido.zqry_contaqtdsomaitens.AsFloat;
    numlinhas:=zqry_ITEMVENDA.recordcount;
    lbl_ITENS_LINHAS.Caption:=floattostr(numitens)+' | ' +inttostr(numlinhas);
    lbl_ITENS_LINHAS.Update;
    gb_DETALHES.Caption:='Detalhes '+zqry_VENDAcodvenda.asstring;
    ///
    ///  SE ST E PESSOA FISICA
    ///
    estado1:=dm_dados.zqry_SGFILIALSIGLAUF.AsString;
    estado2:=ufcliente;
    if estado1=estado2 then ufigual:=0;
    lbl_ICMSST.Caption:='';
    lbl_icmsst.Update;
    if (cpfcliente<>'') and (PESSOACLIENTE='F') then
    begin
      if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (UFIGUAL=0) then
      begin
        recicmpf:=1;
        lbl_ICMSST.Caption:='';
        lbl_ICMSST.Visible:=true;
        REDICMS:=roundto(dm_dados.zqry_SGPREFERE1MAJALIQRECOLHEICMPF.AsFloat, -4);
        VALORICMSITEM:=roundto(((zqry_VENDAVLRLIQVENDA.asfloat*(1+(dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.asfloat/100)))), -2);
        VALORDESCICMS:=roundto(((VALORICMSITEM*(REDICMS/100)-(zqry_VENDAVLRLIQVENDA.asfloat*(REDICMS/100)))),-2);
        VALORTOTAL:=roundto(zqry_VENDAVLRLIQVENDA.AsFloat+valordescicms,-2);
        lbl_ICMSST.caption:='R$ '+formatfloat('##0.00',valortotal);
        lbl_icmsst.Update;
        lbl_VLRLIQ.CAPTION:='R$ '+formatfloat('##0.00',zqry_VENDAVLRLIQVENDA.asfloat);
        lbl_vlrliq.Update;
      end
      else
      begin
        recicmpf:=0;
        lbl_ICMSST.Caption:='';
        lbl_icmsst.Visible:=false;
        REDICMS:=0;
        VALORICMSITEM:=0;
        VALORDESCICMS:=0;
        VALORTOTAL:=0;
        lbl_ICMSST.caption:='';
      end;
    end;
  end;
end;

procedure Tfrm_PRINCIPAL.btn_FUNDO_CREAMClick(Sender: TObject);
begin
frm_principal.Color:=clCream;
end;

procedure Tfrm_PRINCIPAL.btn_FUNDO_MONEYGREENClick(Sender: TObject);
begin
frm_principal.Color:=clMoneyGreen;
end;

procedure Tfrm_PRINCIPAL.btn_FUNDO_SKYBLUEClick(Sender: TObject);
begin
frm_principal.Color:=clSkyBlue;
end;

procedure Tfrm_PRINCIPAL.CargaBalana1Click(Sender: TObject);
begin
FRM_DLG_CARGABALANCA.SHOW;
end;

procedure Tfrm_PRINCIPAL.cb_PEDIDOClick(Sender: TObject);
var
 Chave, idLote, CNPJ, Protocolo, Justificativa   ,vAux : String;
begin
  frm_con_pedido.FECHACONEXOES;
  //Emite Boleto
  if cb_PEDIDO.Text='Boleto' then
  begin
    if edt_NUMPED.Text='' then
    begin
      mostratelaaviso('Informe uma valor para realizar a busca','');
      edt_numped.SetFocus;
      edt_numped.Clear;
    end
    else
    begin
      dm_Dados.zqry_FNRECEBER.Params.Clear;
      dm_Dados.zqry_FNRECEBER.Close;
      dm_Dados.zqry_FNRECEBER.SQL.Clear;
      dm_dados.zqry_FNRECEBER.SQL.Add('SELECT * FROM FNRECEBER WHERE CODEMP=:EMPCOD AND codvenda=:vendacod' );
      dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      dm_dados.zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=strtoint(edt_numped.Text);
      dm_Dados.zqry_FNRECEBER.Open;
      if dm_Dados.zqry_FNRECEBER.IsEmpty then
      begin
         mostratelaaviso('Nada localizado com base nas informações','tab.: fnreceber');
      end
      else
      begin
        mostratelaaguarde('Consulta Vendas pelo Código da Venda');
        dm_dados.zqry_vdvenda.close;
        dm_Dados.zqry_vdvenda.sql.clear;
        dm_dados.zqry_Vdvenda.sql.add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
        dm_dados.zqry_vdvenda.parambyname('vendacod').asinteger:=dm_dados.zqry_fnrecebercodvenda.asinteger;
        dm_dados.zqry_vdvenda.parambyname('empcod').asinteger:=dm_DADOS.CODEMP;
        fechatelaaguarde;
        dm_dados.zqry_VDVENDA.Open;

        mostratelaaguarde('Consulta Parcelamento da Contas a Receber');
        dm_dados.zqry_FNITRECEBER.Close;
        dm_Dados.zqry_FNITRECEBER.SQL.Clear;
        dm_dados.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where codrec=:reccod and codemp=:empcod');
        dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsInteger:=dm_Dados.zqry_FNRECEBERCODREC.AsInteger;
        dm_DAdos.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        fechatelaaguarde;
        dm_dados.zqry_FNITRECEBER.Open;

        Mostratelaaguarde('Consulta Contas Bancárias com permissão para Emitir Boletos');
        dm_dados.zqry_FNCONTA.close;
        dm_dados.zqry_fnCONTA.SQL.Clear;
        dm_dados.zqry_fnCONTA.SQL.Add('select * from fnconta');
        dm_Dados.zqry_fnCONTA.SQL.Add('where numconta=:conta1');
        dm_dados.zqry_fnCONTA.ParamByName('conta1').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
        fechatelaaguarde;
        dm_dados.zqry_fnCONTA.Open;
        if dm_dados.zqry_fnCONTA.IsEmpty then
        begin
           mostratelaaviso('Nada localizado com base nas informações','tab.: fnconta');
         end;

        //
        mostratelaaguarde('Consulta Modelos de Boleto para a Conta Bancária informada');
        dm_dados.zqry_FNITMODBOLETO.close;
        dm_dados.zqry_FNITMODBOLETO.SQL.Clear;
        dm_dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto where numconta=:conta');
        dm_dados.zqry_FNITMODBOLETO.ParamByName('conta').Value:=dm_dados.zqry_FNRECEBERNUMCONTA.Value;
        fechatelaaguarde;
        dm_dados.zqry_fnITMODBOLETO.Open;
        if dm_dados.zqry_fnITMODBOLETO.IsEmpty then
        begin
           mostratelaaviso('Nada localizado com base nas informações','tab.: fnitmodboleto | Conta '+dm_dados.zqry_FNRECEBERNUMCONTA.asstring);
         end;
        //
        mostratelaaguarde('Consulta Saldo Devedor para este Cliente');
        frm_con_receber.zqry_SALDODEVEDOR.Params.Clear;
        frm_con_receber.zqry_SALDODEVEDOR.close;
        frm_con_receber.zqry_SALDODEVEDOR.SQL.Clear;
        frm_con_receber.zqry_SALDODEVEDOR.SQL.Add('select sum(vlrapagrec) as saldodevedor from fnreceber where codcli=:clicod and codemp=:empcod');
        frm_con_receber.zqry_SALDODEVEDOR.ParamByName('clicod').asinteger:=dm_dados.zqry_FNRECEBERCODCLI.asinteger;
        frm_con_receber.zqry_saldodevedor.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        fechatelaaguarde;
        frm_con_receber.zqry_SALDODEVEDOR.Open;
        if frm_con_receber.zqry_SALDODEVEDOR.IsEmpty then
        begin
           mostratelaaviso('Não há saldo devedor para este cliente','tab.: saldodevedor | Conta '+dm_dados.zqry_FNRECEBERcodcli.asstring);
         end;
        //
        frm_CON_RECEBER.Show;
      end;
    end;
  end;

  // Reimprime NFe
  if cb_PEDIDO.Text='NFe' then
  begin
    if edt_NUMPED.Text='' then
    begin
      mostratelaaviso('Informe uma valor para realizar a busca','');
      edt_numped.SetFocus;
      edt_numped.Clear;
    end
    else
    begin
      BUSCAVENDA;
      zqry_NOTAS.Close;
      zqry_NOTAS.sql.clear;
      zqry_NOTAS.sql.Add('select * from sgnf where numero=:numnf and nfce=:tipo');
      zqry_NOTAS.paramByName('numnf').AsInteger:=zqry_VENDADOCVENDA.AsInteger;
      zqry_NOTAS.paramByName('tipo').asstring:='N';
      zqry_NOTAS.Open;
      if zqry_NOTAS.IsEmpty then
      begin
         mostratelaaviso('Nada localizado com base nas informações','tab.: sgnf');
      end
      else
      begin
        FRM_PREFACBR.ACBrNFe1.DANFE := frm_prefacbr.ACBrNFeDANFeRL1;
        //frm_con_pedido.btn_REIMPRIME_NF.Visible:=TRUE;
        frm_con_pedido.btn_REIMPRIME_NFClick(Self);
        edt_NUMPED.Clear;
        edt_NUMPED.SetFocus;
      end;
    end;
  cb_PEDIDO.ItemIndex:= -1;
  end;

  //Reimprime NFCe
  if cb_pedido.Text='NFCe' then
  begin
    if edt_NUMPED.Text='' then
    begin
      mostratelaaviso('Informe uma valor para realizar a busca','');
      edt_NUMPED.SetFocus;
      edt_numped.Clear;
    end
    else
    begin
      BuscaVenda;
      zqry_NOTAS.Close;
      zqry_NOTAS.sql.clear;
      zqry_NOTAS.sql.Add('select * from sgnf where numero=:numnf and nfce=:tipo');
      zqry_NOTAS.paramByName('numnf').AsInteger:=zqry_VENDADOCVENDA.ASINTEGER;
      zqry_NOTAS.paramByName('tipo').asstring:='S';
      zqry_NOTAS.Open;
      if zqry_NOTAS.IsEmpty then
      begin
         mostratelaaviso('Nada localizado com base nas informações','tab.: sgnf');
         edt_numped.Clear;
         edt_NUMPED.SetFocus;
      end
      else
      begin
        //frm_PREFACBR.ACBrNFe1.DANFE := frm_PREFACBR.ACBrNFeDANFCeFortes1;
        //btn_REIMPRIME_NF.Visible:=TRUE;
        frm_con_pedido.btn_REIMPRIME_NFClick(Self);
        edt_NUMPED.clear;
        edt_NUMPED.SetFocus;
      end;
    end;
  cb_PEDIDO.ItemIndex:= -1;
  end;

  // Emite Mapa
  if cb_PEDIDO.Text='Mapa' then
  begin
    if edt_numped.text='' then
    begin
      mostratelaaviso('Informe um valor para realiza a busca','');
      edt_NUMPED.SetFocus;
      edt_NUMPED.Clear;
    end
    else
    begin
      buscavenda;
      frm_con_pedido.zqry_contaqtd.Params.Clear;
      frm_con_pedido.zqry_contaqtd.Close;
      frm_con_pedido.zqry_contaqtd.SQL.Clear;
      frm_con_pedido.zqry_contaqtd.SQL.Add('select codvenda, sum(qtditvenda) as somaitens from vditvenda where codvenda=:vendacod group by codvenda');
      frm_con_pedido.zqry_contaqtd.ParamByName('vendacod').AsInteger:=zqry_vendaCODVENDA.AsInteger;
      frm_con_pedido.zqry_contaqtd.Open;
      frm_con_pedido.NUMITENS:=frm_con_pedido.zqry_contaqtdsomaitens.AsFloat;
      frm_con_pedido.numlinhas:=dm_dados.zqry_VDITVENDA.recordcount;
      frm_con_pedido.lbl_ITENS_LINHAS.Caption:=floattostr(frm_con_pedido.numitens)+' | ' +inttostr(frm_con_pedido.numlinhas);
     // CONSULTA SE TEM RECEITUARIO
      IF DM_DADOS.zqry_SGFILIALRECAGRO.AsString='S' then
      begin
        dm_dados.zqry_VDITVENDA.First;
        while not dm_dados.zqry_VDITVENDA.eof do
        if DM_DADOS.zqry_VDITVENDA_TEMRECEITA.AsString='S' then
        begin
          frm_cad_recagro.showmodal;
          dm_dados.zqry_VDITVENDA.Next;
        end
        else
        begin
          dm_dados.zqry_VDITVENDA.Next;
        end;
      end;
      if frm_principal.codintegra>=1 then
      begin
      try
        dm_dados.zqry_VDITVENDA.First;
        sleep(500);
        MostraTelaAguarde('Sincronizando Pedido x Cloud '+inttostr(dm_dados.zqry_VDITVENDA.RecordCount)+' item(ns)');
        while not dm_dados.zqry_VDITVENDA.eof do
        begin
          dm_dados.MysqlConectar.Connected:=false;
          dm_dados.MysqlConectar.Connected:=true;
          dm_dados.cloud_VDMAPA.Close;
          dm_Dados.cloud_VDMAPA.SQL.Clear;
          DM_DADOS.cloud_VDMAPA.SQL.Add('select * from vdmapa where codemp=:integra and codvenda=:vendacod and docvenda=:vendadoc and codprod=:prodcod');
          dm_dados.cloud_VDMAPA.ParamByName('integra').AsInteger:=frm_principal.codintegra;
          dm_dados.cloud_VDMAPA.ParamByName('prodcod').AsInteger:=DM_dados.zqry_VDITVENDACODPROD.AsInteger;
          dm_Dados.cloud_VDMAPA.ParamByName('vendacod').AsInteger:=dm_Dados.zqry_VDITVENDACODVENDA.AsInteger;
          dm_dados.cloud_VDMAPA.ParamByName('vendadoc').AsInteger:=zqry_VENDADOCVENDA.AsInteger;
          dm_dados.cloud_VDMAPA.Open;
          if dm_dados.cloud_vdmapa.isempty then
          begin
            dm_dados.MysqlConectar.Connected:=false;
            dm_dados.MysqlConectar.Connected:=true;
            dm_dados.cloud_vdmapa.Close;
            dm_dados.cloud_vdmapa.Open;
            dm_Dados.cloud_vdmapa.Append;
            dm_Dados.cloud_VDMAPAcodemp.AsInteger:=frm_principal.codintegra;
            dm_dados.cloud_VDMAPAcodvenda.AsInteger:=DM_dados.zqry_VDITVENDACODVENDA.AsInteger;
            dm_dados.cloud_VDMAPAdocvenda.AsInteger:=zqry_VENDADOCVENDA.AsInteger;
            dm_Dados.cloud_VDMAPAcodprod.AsInteger:=DM_dados.zqry_VDITVENDACODPROD.AsInteger;
            dm_dados.cloud_VDMAPAdescprod.asstring:=DM_dados.zqry_VDITVENDA_DESCPRODUTO.AsString;
            dm_Dados.cloud_VDMAPAqtd.AsFloat:=DM_dados.zqry_VDITVENDAQTDITVENDA.AsFloat;
            dm_dados.cloud_VDMAPAcodlote.AsString:=DM_dados.zqry_VDITVENDACODLOTE.AsString;
            dm_Dados.cloud_VDMAPA.Post;
          end
          else
          begin
             //showmessage('pulou esse produto');
          end;
          DM_dados.zqry_VDITVENDA.Next;
        end;
        except
        on E: Exception do
          showmessage(E.ClassName+' erro gerado no Sync Mapa : '+E.Message);
        end;
        fechatelaaguarde;
        frm_con_pedido.Image1.Picture := nil;
        frm_con_pedido.ImageStream := TMemoryStream.Create;
        frm_con_pedido.PngImage := TPngImage.Create;
        try
          try
          frm_con_pedido.composicao:='http://www.nonoelemento.com/integra/mapaprod.php?buscamapa='+inttostr(dm_dados.zqry_VDITVENDACODVENDA.AsInteger);
          GetQrCode (100, 100, TQrImage_ErrCorrLevel(0), frm_con_pedido.composicao, frm_con_pedido.ImageStream);
          if frm_con_pedido.ImageStream.Size > 0 then
          begin
            frm_con_pedido.ImageStream.Position := 0;
            frm_con_pedido.PngImage.LoadFromStream(frm_con_pedido.ImageStream);
            frm_con_pedido.Image1.Picture.Assign(frm_con_pedido.PngImage);
          end;
          except
            on E: exception do
            ShowMessage(E.Message);
          end;
          finally
            //
          end;
         end;
      end;
      FRM_REL_MAPAPEDIDOS.RLREPORT1.PREVIEW();
      frm_con_pedido.ImageStream.Free;
      frm_con_pedido.PngImage.Free;
      edt_NUMPED.clear;
      edt_NUMPED.SetFocus;
      cb_PEDIDO.ItemIndex:= -1;
   end;

  // Emite Etiqueta
  if cb_PEDIDO.Text='Etiqueta' then
  begin
    if edt_numped.text='' then
    begin
      mostratelaaviso('Informe um valor para realiza a busca','');
      edt_NUMPED.SetFocus;
      edt_NUMPED.Clear;
    end
    else
    begin
      buscavenda;
      frm_rel_etiqueta.rlreport1.preview();
    end;
  cb_PEDIDO.ItemIndex:= -1;
  end;

  // Emite CCe
  if cb_PEDIDO.Text='CCe' then
  begin
    if edt_numped.text='' then
    begin
      mostratelaaviso('Informe um valor para realiza a busca','');
      edt_NUMPED.SetFocus;
      edt_NUMPED.Clear;
    end
    else
    begin
      buscavenda;
      frm_PREFACBR.btnCartadeCorrecaoClick(Sender);
      frm_PREFACBR.btnImprimirCCeClick(Sender);
    end;
  cb_PEDIDO.ItemIndex:= -1;
  end;

  // Cancela Nota
  if cb_PEDIDO.Text='Cancela' then
  begin
    if edt_numped.text='' then
    begin
      mostratelaaviso('Informe um valor para realiza a busca','');
      edt_NUMPED.SetFocus;
      edt_NUMPED.Clear;
    end
    else
    begin
      {buscavenda;
      chave:=zqry_VENDACHAVENFEVENDA.AsString;
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Chave da NF-e', Chave)) then
      exit;
      Chave := Trim(OnlyNumber(Chave));
      idLote := '1';
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
      exit;
      CNPJ := copy(Chave,7,14);
      if not(InputQuery('WebServices Eventos: Cancelamento', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
      exit;
      Protocolo:='';
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Protocolo de Autorização', Protocolo)) then
      exit;
      Justificativa := 'Justificativa do Cancelamento';
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa do Cancelamento', Justificativa)) then
      exit;

      frm_prefacbr.ACBrNFe1.EventoNFe.Evento.Clear;
      with frm_prefacbr.ACBrNFe1.EventoNFe.Evento.New do
      begin
        infEvento.chNFe := Chave;
        infEvento.CNPJ   := CNPJ;
        infEvento.dhEvento := now;
        infEvento.tpEvento := teCancelamento;
        infEvento.detEvento.xJust := Justificativa;
        infEvento.detEvento.nProt := Protocolo;
      end;

      frm_prefacbr.ACBrNFe1.EnviarEvento(StrToInt(idLote));

      MemoResp.Lines.Text := frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetWS;
      memoRespWS.Lines.Text := frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      LoadXML(frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
  (*
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.TpAmb
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.verAplic
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.cStat
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.xMotivo
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento
  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt
  *)
      frm_prefacbr.ACBrNFe1.ImprimirEvento;
      dm_dados.Zqry_sgnf.CLOSE;
      DM_DADOS.zqry_SGNF.Open;
      dm_dados.zqry_sgnf.Append;
      dm_dados.zqry_SGNFCODIGO.Value:=strtoint(FormatDateTime('mm',Date))+strtoint(FormatDateTime('hhss',time));
      dm_Dados.zqry_SGNFCHAVE.Value:=chave;
      dm_dados.zqry_SGNFDATA.value:=date;
      dm_dados.zqry_SGNFHORA.Value:=time;
      dm_Dados.zqry_SGNFUPLOAD.Value:='NFe em'+DateTimeToStr(now);
      dm_Dados.zqry_SGNFSITUACAO.Value:='NFe Cancelada pela chave';
      dm_dados.zqry_SGNF.Post;
      dm_dados.zqry_SGNF.Close;
      dm_Dados.zqry_SGNF.Open; }

      frm_prefacbr.ACBrNFe1.NotasFiscais.Clear;
      frm_prefacbr.ACBrNFe1.NotasFiscais.LoadFromFile(zqry_VENDACAMINHO.asstring);

      idLote := '1';
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
      exit;
      if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
      exit;
      frm_prefacbr.ACBrNFe1.EventoNFe.Evento.Clear;
      frm_prefacbr.ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
      with frm_prefacbr.ACBrNFe1.EventoNFe.Evento.Add do
      begin
       infEvento.dhEvento := now;
       infEvento.tpEvento := teCancelamento;
       infEvento.detEvento.xJust := vAux;
      end;
      frm_prefacbr.ACBrNFe1.EnviarEvento(StrToInt(idLote));

      MemoResp.Lines.Text := frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetWS;
      memoRespWS.Lines.Text := frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetornoWS;
      LoadXML(frm_prefacbr.ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
    //ACBrNFe1.EventoNFe.Evento.Clear;
    //ACBrNFe1.EventoNFe.LerXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
      frm_prefacbr.ACBRNFe1.DANFE:=frm_prefacbr.ACBrNFeDANFCeFortes1;
      frm_prefacbr.ACBrNFe1.ImprimirEvento;
    end;
  edt_NUMPED.Clear;
  cb_PEDIDO.ItemIndex:= -1;
  end;

  //

end;



procedure Tfrm_PRINCIPAL.CheckOutPDV1Click(Sender: TObject);
begin
sp_VD_CHECKOUTClick(Self);
end;

procedure Tfrm_PRINCIPAL.Cheques2Click(Sender: TObject);
begin
frm_dlg_cheques.show;
end;

procedure Tfrm_PRINCIPAL.ClassificaoFiscal1Click(Sender: TObject);
begin
frm_ins_clfiscal.show;
end;

procedure Tfrm_PRINCIPAL.CNPJ1Click(Sender: TObject);
begin
frm_con_cnpj.show;
end;

procedure Tfrm_PRINCIPAL.Comisso1Click(Sender: TObject);
begin
frm_DLG_COMISSAO.SHOW;
end;

procedure Tfrm_PRINCIPAL.CPF1Click(Sender: TObject);
begin
frm_con_Cpf.show;
end;

procedure Tfrm_PRINCIPAL.db_NFCEClick(Sender: TObject);
begin
id_seq:=2;
application.createform(Tfrm_DLG_ACERTASEQUENCIA, frm_dlg_acertasequencia);
frm_dlg_acertasequencia.Showmodal;
FreeAndNil(frm_dlg_acertasequencia);
end;

procedure Tfrm_PRINCIPAL.db_NFEClick(Sender: TObject);
begin
id_seq:=1;
application.createform(Tfrm_DLG_ACERTASEQUENCIA, frm_dlg_acertasequencia);
frm_dlg_acertasequencia.Showmodal;
FreeAndNil(frm_dlg_acertasequencia);
end;

procedure Tfrm_PRINCIPAL.Depsitos1Click(Sender: TObject);
begin
frm_concad_depositos.show;
end;

procedure Tfrm_PRINCIPAL.edt_NUMPEDKeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN btn_BUSCAPEDIDOClick(Sender);
end;

procedure Tfrm_PRINCIPAL.Espelho1Click(Sender: TObject);
begin
frm_dlg_inventario.Show;
end;

procedure Tfrm_PRINCIPAL.Etiquetas1Click(Sender: TObject);
begin
APPLICATION.CreateForm(Tfrm_dlg_etiquetas, frm_dlg_etiquetas);
frm_dlg_etiquetas.showmodal;
FreeAndNil(frm_dlg_etiquetas);
end;

procedure Tfrm_PRINCIPAL.FormActivate(Sender: TObject);
begin

id_seq:=0;
dm_dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_Dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_SGFILIAL.Open;
simples:=dm_dados.zqry_SGFILIALSIMPLESFILIAL.AsString;
//
dm_dados.zqry_SGPREFERE1.Close;
dm_dados.zqry_SGPREFERE1.SQL.Clear;
dm_Dados.zqry_SGPREFERE1.SQL.Add('select * from sgprefere1 where codemp=:empcod');
dm_Dados.zqry_SGPREFERE1.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_Dados.zqry_SGPREFERE1.Open;
tpnnum:=dm_Dados.zqry_SGPREFERE1TPNOSSONUMERO.AsString;
codintegra:=dm_Dados.zqry_SGPREFERE1CODEMPINTEGRA.AsInteger;
//
dm_dados.zqry_SGSEQUENCIANFCE.Close;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Add('select * from sgsequencianfce where codemp=:empcod');
dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencianfce.Open;
// CHECA SEQUENCIA NFE
DM_DADOS.zqry_SGSEQUENCIA_NF.close;
dm_Dados.zqry_SGSEQUENCIA_NF.open;
dm_dados.zqry_SGSEQUENCIA_NF.SQL.Clear;
dm_Dados.zqry_SGSEQUENCIA_NF.SQL.Add('select * from sgsequencia where sgtab=:tabsg and codemp=:empcod');
dm_dados.zqry_sgsequencia_NF.ParamByName('tabsg').asstring:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_SGSEQUENCIA_NF.Open;
if dm_dados.zqry_sgsequencia_NF.IsEmpty then
begin
  mostratelaaviso('Sequência de Notas Fiscais não cadastradas','Verifique seu último número de Nota emitido e insira o próximo na aba seqûencia');
  dm_dados.zqry_SGSEQUENCIA_NF.Append;
  dm_dados.zqry_SGSEQUENCIA_NFCODEMP.Value:=dm_dados.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_SGSEQUENCIA_NFCODFILIAL.Value:=DM_dADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_SGSEQUENCIA_NFSGTAB.Value:='NF';
  dm_Dados.zqry_SGSEQUENCIA_NFNROSEQ.Value:=1;
  DM_dados.zqry_SGSEQUENCIA_NFDTINS.Value:=date;
  dm_dados.zqry_SGSEQUENCIA_NFHINS.Value:=time;
  dm_Dados.zqry_SGSEQUENCIA_NFIDUSUINS.Value:='sysdba';
  dm_Dados.zqry_SGSEQUENCIA_NFDTALT.Value:=date;
  dm_Dados.zqry_SGSEQUENCIA_NFHALT.Value:=time;
  dm_dados.zqry_SGSEQUENCIA_NFIDUSUALT.Value:='sysdba';
  dm_dados.zqry_sgsequencia_NF.post;
  dm_dados.zqry_SGSEQUENCIA_NF.ApplyUpdates();
  Application.Terminate;
end;

end;

procedure Tfrm_PRINCIPAL.FormCreate(Sender: TObject);
begin
frm_principal.posicaox:=(dm_dados.distancia);
//Mymsg:=RegisterWindowMessage('X10APP');
//OldWindowProc:=Pointer(SetWindowLong(Handle,GWL_WNDPROC,LongInt(@NewWindowProc      )));
FRM_PRINCIPAL.Width:=40;
frm_PRINCIPAL.Left:=Screen.Width-(posicaox);
frm_principal.Top:=round(screen.height/2)-250;
//
sp_ATIVAPAINEL.Top:=0;
sp_ativapainel.Left:=frm_principal.Width-36;
LBL_VERSAO.Caption:=VERSAOEXE;
LBL_VERSAO.Left:=FRM_PRINCIPAL.Width-36;
//
img_WALLPAPER.top:=frm_principal.Height-155;
img_WALLPAPER.Left:=frm_principal.Width-22;
//
gb_BUSCA.Visible:=false;
gb_MAIN.Visible:=false;
gb_VENDAS.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
frm_principal.lbl_WP_INTEGRA.caption:=(dm_dados.wp_integra);
frm_principal.lbl_logoloja.caption:=(dm_dados.logomarca);
Application.BringToFront;
end;

procedure Tfrm_PRINCIPAL.FormDestroy(Sender: TObject);
begin
// SetWindowLong(Handle,GWL_WNDPROC,longint(OldWindowProc));
end;

procedure Tfrm_PRINCIPAL.FormShow(Sender: TObject);
begin
//checalicenca;
frm_login.showmodal;
img_WALLPAPER.Picture.LoadFromFile(lbl_WP_INTEGRA.caption);
CHAMATEF;
FRM_PRINCIPAL.contaNOTAS;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then sp_RECEITUARIO.Visible:=true else sp_RECEITUARIO.Visible:=FALSE;
if dm_dados.zqry_sgfilialescola.asstring='S' then sp_ESCOLA.Visible:=true else sp_ESCOLA.Visible:=false;
end;

procedure Tfrm_PRINCIPAL.gb_BUSCAClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=false;
gb_RECEBER.Visible:=false;
gb_ESCOLA.Visible:=true;
gb_VENDAS.Visible:=false;
//
gb_receituario.left:=2;
gb_receituario.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Receituário';
end;

procedure Tfrm_PRINCIPAL.Gerar1Click(Sender: TObject);
begin
frm_CON_RECEBER.show;
end;

procedure Tfrm_PRINCIPAL.ImportaCompra1Click(Sender: TObject);
begin
frm_importanota.Show;
end;

procedure Tfrm_PRINCIPAL.ipodeCobrana1Click(Sender: TObject);
begin
frm_dlg_tipocobranca.show;
end;

procedure Tfrm_PRINCIPAL.iposdeDevoluo1Click(Sender: TObject);
begin
frm_concad_chequealinea.show;
end;

procedure Tfrm_PRINCIPAL.lbl_DFEClick(Sender: TObject);
begin
frm_contadores.Show;
end;

procedure Tfrm_PRINCIPAL.lbl_NFCEClick(Sender: TObject);
begin
db_NFCEClick(Self);
end;

procedure Tfrm_PRINCIPAL.lbl_NFEClick(Sender: TObject);
begin
db_NFEClick(Self);
end;

procedure Tfrm_PRINCIPAL.lbl_PNEClick(Sender: TObject);
begin
frm_contadores.Show;
end;

procedure Tfrm_PRINCIPAL.lbl_QTDNFCEClick(Sender: TObject);
begin
frm_contadores.Show;
end;

procedure Tfrm_PRINCIPAL.Mapa1Click(Sender: TObject);
begin
frm_entregue.show;
end;

procedure Tfrm_PRINCIPAL.MDFe1Click(Sender: TObject);
begin
 if FileExists ('mdfe.exe') then
    begin
      Winexec('mdfe.exe',sw_shownormal);
      //statusbar1.panels[0].text:='Módulo MDFe';
    end
    else
    begin
      showmessage('Arquivo não localizado'#13'Entre em contato com o suporte');
    end;
end;

procedure Tfrm_PRINCIPAL.N3Click(Sender: TObject);
begin
application.createform(Tfrm_dlg_appremret, frm_dlg_appremret);
frm_dlg_appremret.showmodal;
FreeAndNil(frm_DLG_APPREMRET);
end;

procedure Tfrm_PRINCIPAL.NFe1Click(Sender: TObject);
begin
frm_con_nfe_sefaz.show;
end;

procedure Tfrm_PRINCIPAL.Pedidos1Click(Sender: TObject);
begin
frm_con_pedido.show;
end;

procedure Tfrm_PRINCIPAL.PMZ1Click(Sender: TObject);
begin
frm_dlg_difpmz.show;
end;

procedure Tfrm_PRINCIPAL.Produo1Click(Sender: TObject);
begin
sp_PRODUCAOClick(Sender);
end;

procedure Tfrm_PRINCIPAL.ProdutoscomSaldo1Click(Sender: TObject);
begin
dm_dados.zqry_EQPRODUTO.Params.Clear;
dm_Dados.zqry_EQPRODUTO.Close;
dm_dados.zqry_EQPRODUTO.SQL.Clear;
dm_dados.zqry_EQPRODUTO.SQL.add('select * from eqproduto where ativoprod=:ativo and codemp=:empcod and sldprod>0 order by descprod');
dm_dados.zqry_EQPRODUTO.ParamByName('ativo').AsString:='S';
dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_EQPRODUTO.Open;
frm_rel_estoquesaldo.rlreport1.preview();
end;

procedure Tfrm_PRINCIPAL.ransDepsitos1Click(Sender: TObject);
begin
frm_concad_saldodepos.show;
end;

procedure Tfrm_PRINCIPAL.ransferncia1Click(Sender: TObject);
begin
frm_trans_almox.show;
end;

procedure Tfrm_PRINCIPAL.ratamento1Click(Sender: TObject);
begin
application.createform(Tfrm_dlg_appremret, frm_dlg_appremret);
frm_dlg_appremret.showmodal;
FreeAndNil(frm_DLG_APPREMRET);
end;

procedure Tfrm_PRINCIPAL.Receiturio1Click(Sender: TObject);
begin
FRM_DLG_RECEITUARIO.SHOW;
end;

procedure Tfrm_PRINCIPAL.Sair1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_PRINCIPAL.SaldoxLotes1Click(Sender: TObject);
begin
frm_dlg_acertalote.show;
end;

procedure Tfrm_PRINCIPAL.Sintegra1Click(Sender: TObject);
begin
FRM_FISCAL.SHOWMODAL;
//frm_sintegra.show;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_TRANSDEPClick(Sender: TObject);
begin
ransDepsitos1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_REC_BOLETOClick(Sender: TObject);
begin
Gerar1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_REC_TRATAMENTOClick(Sender: TObject);
begin
application.createform(Tfrm_dlg_appremret, frm_dlg_appremret);
frm_dlg_appremret.showmodal;
FreeAndNil(frm_DLG_APPREMRET);
end;

procedure Tfrm_PRINCIPAL.sp_REC_CHEQUESClick(Sender: TObject);
begin
frm_dlg_cheques.show;
end;

procedure Tfrm_PRINCIPAL.sp_REC_MOTIVOSClick(Sender: TObject);
begin
frm_concad_chequealinea.show;
end;

procedure Tfrm_PRINCIPAL.sp_AG_RECEITUARIOClick(Sender: TObject);
begin
Receiturio1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_PRO_CARGABALANCAClick(Sender: TObject);
begin
FRM_DLG_CARGABALANCA.SHOW;

end;

procedure Tfrm_PRINCIPAL.sp_PRO_DEPOSITOSClick(Sender: TObject);
begin
Depsitos1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_PRO_ACERTALOTEClick(Sender: TObject);
begin
frm_dlg_acertalote.show;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_TRANSALMOXClick(Sender: TObject);
begin
frm_trans_almox.show;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_REL_ALMOXARIFADOClick(Sender: TObject);
begin
frm_dlg_est_almox.show;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_REL_ESPELHOClick(Sender: TObject);
begin
frm_dlg_inventario.Show;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_REL_ETIQUETAClick(Sender: TObject);
begin
FRM_DLG_ETIQPRODUTO.SHOW;
end;

procedure Tfrm_PRINCIPAL.sp_PRO_REL_COMSALDOClick(Sender: TObject);
begin
ProdutoscomSaldo1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_REC_REL_TIPOCOBRANCAClick(Sender: TObject);
begin
frm_dlg_tipocobranca.show;
end;

procedure Tfrm_PRINCIPAL.sp_VD_CHECKOUTClick(Sender: TObject);
begin
//Verifica se Caixa Aberto
dm_Dados.zqry_PVMOVCAIXA.Params.clear;
dm_dados.zqry_PVMOVCAIXA.Close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=now;
dm_dados.zqry_PVMOVCAIXA.ParamByName('movtipo').AsString:='A';
dm_dados.zqry_PVMOVCAIXA.Open;
if dm_DADOS.zqry_PVMOVCAIXA.IsEmpty then
begin
  MOSTRATELANOTIFICA('CAIXA NÃO ESTÁ ABERTO','Sem movimento para '+datetostr(now));
  frm_dlg_ABRECAIXA.showmodal;
end
else
begin
    dm_dados.zqry_vdvenda.params.clear;
    dm_dados.zqry_vdvenda.close;
    frm_CUPOM.show;
    FRM_CUPOM.WindowState:=wsmaximized;
    frm_cupom.Left:=0;
    frm_cupom.Top:=0;
    frm_cupom.AbreCupom1Click(Self);
end;
end;

procedure Tfrm_PRINCIPAL.sp_VD_COMISSAOClick(Sender: TObject);
begin
frm_DLG_COMISSAO.SHOW;
end;

procedure Tfrm_PRINCIPAL.sp_VD_PEDIDOSClick(Sender: TObject);
begin
Pedidos1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_VD_REL_PMZClick(Sender: TObject);
begin
frm_dlg_difpmz.show;
end;

procedure Tfrm_PRINCIPAL.sp_VD_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_AG_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_ATIVAPAINELClick(Sender: TObject);
begin
if(frm_PRINCIPAL.width=40) then
  while frm_principal.width < 180 do
  begin
    frm_principal.width:=frm_principal.width+3;
    frm_principal.left:=screen.width-190;
    sp_ATIVAPAINEL.Top:=0;
    sp_ativapainel.Left:=frm_principal.Width-36;
    gb_BUSCA.Visible:=True;
    gb_BUSCA.Top:=310;
    gb_BUSCA.Left:=2;
    gb_MAIN.Visible:=true;
    gb_MAIN.top:=40;
    gb_MAIN.Left:=2;
    img_WALLPAPER.top:=frm_principal.Height-155;
    img_WALLPAPER.Left:=frm_principal.Width-22;
    lbl_ROTULO.Visible:=true;
    lbl_ROTULO.Caption:='Principal';
    LBL_VERSAO.Left:=FRM_PRINCIPAL.Width-36;
    Application.ProcessMessages;
    frm_principal.Update;
  end
  else
  begin
  while frm_principal.width > 40 do
  begin
    frm_PRINCIPAL.Left:=Screen.Width-(posicaox);
    frm_principal.width:= frm_principal.width-3;
    sp_ATIVAPAINEL.Top:=0;
    sp_ativapainel.Left:=frm_principal.Width-36;
    gb_BUSCA.visible:=false;
    gb_MAIN.Visible:=false;
    gb_ENTREGAS.Visible:=FALSE;
    gb_FISCAL.Visible:=false;
    gb_PRODUTOS.Visible:=false;
    gb_RECEBER.Visible:=false;
    gb_RECEITUARIO.Visible:=false;
    gb_VENDAS.Visible:=false;
    gb_DETALHES.Visible:=false;
    //
    img_WALLPAPER.top:=frm_principal.Height-155;
    img_WALLPAPER.Left:=frm_principal.Width-22;
    LBL_VERSAO.Left:=FRM_PRINCIPAL.Width-36;
    lbl_ROTULO.Visible:=false;
    Application.ProcessMessages;
    frm_principal.Update;
  end
end;


end;

procedure Tfrm_PRINCIPAL.sp_ENTREGASClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=TRUE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_ENTREGAS.left:=2;
gb_ENTREGAS.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Entregas';
end;

procedure Tfrm_PRINCIPAL.sp_EN_DASHBOARDClick(Sender: TObject);
begin
Mapa1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_EN_ETIQUETASClick(Sender: TObject);
begin
Etiquetas1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_EN_REL_VENDASClick(Sender: TObject);
begin
VendasxTransportadora1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_EN_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_ESCOLAClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=false;
gb_RECEBER.Visible:=false;
gb_ESCOLA.Visible:=true;
gb_VENDAS.Visible:=false;
//
gb_escola.left:=2;
gb_escola.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Escola';
end;

procedure Tfrm_PRINCIPAL.sp_ESC_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;

gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_FISCALClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=TRUE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_FISCAL.left:=2;
gb_FISCAL.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Fiscal';
end;

procedure Tfrm_PRINCIPAL.sp_FS_CLASSIFICAClick(Sender: TObject);
begin
ClassificaoFiscal1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_FS_DLG_CONTADORESClick(Sender: TObject);
begin
frm_contadores.show;
end;

procedure Tfrm_PRINCIPAL.sp_FS_MDFEClick(Sender: TObject);
begin
MDFe1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_FS_NFEClick(Sender: TObject);
begin
NFe1Click(Sender);
end;

procedure Tfrm_PRINCIPAL.sp_FS_SINTSPEDClick(Sender: TObject);
begin
Sintegra1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_FS_VIAXMLClick(Sender: TObject);
begin
ImportaCompra1Click(Self);
end;

procedure Tfrm_PRINCIPAL.sp_FS_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_PREFERENCIASClick(Sender: TObject);
begin
application .createform (Tfrm_prefAcbr, frm_prefAcbr);
frm_prefacbr.Showmodal;
FreeAndNil(frm_prefacbr);
end;

procedure Tfrm_PRINCIPAL.sp_PRODUCAOClick(Sender: TObject);
begin
  if FileExists ('produce.exe') then Winexec('produce.exe',sw_shownormal) else Showmessage('Módulo não Localizado'#13'Produce');
end;

procedure Tfrm_PRINCIPAL.sp_PRODUTOSClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=true;
gb_RECEBER.Visible:=false;
gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_PRODUTOS.left:=2;
gb_PRODUTOS.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Produtos';
end;

procedure Tfrm_PRINCIPAL.sp_PRO_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_RECEBERClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=false;
gb_RECEBER.Visible:=true;
gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_receber.left:=2;
gb_receber.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Receber';

end;

procedure Tfrm_PRINCIPAL.sp_RECEITUARIOClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=false;
gb_RECEBER.Visible:=false;
gb_RECEITUARIO.Visible:=true;
gb_VENDAS.Visible:=false;
//
gb_receituario.left:=2;
gb_receituario.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Receituário';

end;

procedure Tfrm_PRINCIPAL.sp_REC_VOLTARClick(Sender: TObject);
begin
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=FALSE;
gb_PRODUTOS.Visible:=FALSE;
gb_RECEBER.Visible:=false;
if dm_dados.zqry_SGFILIALESCOLA.AsString='S' then gb_escola.Visible:=false;
if dm_dados.zqry_SGFILIALRECAGRO.AsString='S' then gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=false;
//
gb_MAIN.Visible:=true;
lbl_ROTULO.Visible:=true;
lbl_ROTULO.Caption:='Principal';
end;

procedure Tfrm_PRINCIPAL.sp_VENDASClick(Sender: TObject);
begin
gb_MAIN.Visible:=false;
gb_ENTREGAS.Visible:=FALSE;
gb_FISCAL.Visible:=false;
gb_PRODUTOS.Visible:=false;
gb_RECEBER.Visible:=false;
gb_RECEITUARIO.Visible:=false;
gb_VENDAS.Visible:=true;
//
gb_VENDAS.left:=2;
gb_VENDAS.top:=40;
lbl_ROTULO.Visible:=true;
lbl_rotulo.Caption:='Pedidos';
{if dm_dados.zqry_SGFILIALSATCFE.AsString='S' then
begin
  AjustaACBrSAT;

end;}
end;

procedure Tfrm_PRINCIPAL.Sync1Click(Sender: TObject);
begin
winexec('sync.exe',WS_ICONIC);
end;

procedure Tfrm_PRINCIPAL.VendasxTransportadora1Click(Sender: TObject);
begin
frm_dlg_vendastransp.show;
end;

procedure Tfrm_PRINCIPAL.XMLReceita1Click(Sender: TObject);
begin
frm_con_nfe_sefaz.show;
end;

end.
