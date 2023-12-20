unit con_pedido;

interface

uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
      Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
      Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,Vcl.Mask, Vcl.DBCtrls, Data.DB, System.Actions,
      Vcl.ActnList, Vcl.ExtCtrls,ACBrNFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass,
      ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, XMLIntf, XMLDoc, math, ACBrMail,
      ACBrNFeDANFeRLClass, Datasnap.Provider, Datasnap.DBClient, Registry,
      IniFiles, IdGlobal,IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
      IdExplicitTLSClientServerBase, IdFTP, ZAbstractRODataset, ZAbstractDataset, ZDataset,
      ZStoredProcedure, ZSqlUpdate, ShellAPI,Spin,DateUtils, synacode, blcksock,
      pcnNFe, pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
      FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL, ACBrNFeConfiguracoes, pngimage, Vcl.OleCtrls, strutils,
  Vcl.Menus, SHDocVw, ACBrDFeReport, ACBrDFeDANFeReport;


  type
  THackDBGrid = class(TDBGrid);

type
   Tfrm_CON_PEDIDOS = class(TForm)
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    pg_PEDIDOS: TPageControl;
    ts_VENDAS: TTabSheet;
    ts_COMPRAS: TTabSheet;
    rg_SAIDAS: TRadioGroup;
    gb_PARAM_SAIDA: TGroupBox;
    lbl_PESQUISA: TLabel;
    msk_PESQUISA1: TMaskEdit;
    msk_PESQUISA2: TMaskEdit;
    lbl_ATE: TLabel;
    sp_BUSCA: TSpeedButton;
    ts_AGRUPASAIDAS: TTabSheet;
    lbl_AGRUPADOS: TLabel;
    edt_VLRTOTALAGRUPADO: TEdit;
    DBGrid2: TDBGrid;
    rg_ENTRADA: TRadioGroup;
    BitBtn2: TBitBtn;
    DBGrid5: TDBGrid;
    gb_PARAM_ENTRADA: TGroupBox;
    lbl_PESQUISA_ENT: TLabel;
    lbl_ATE_ENT: TLabel;
    sp_BUSCA_ENT: TSpeedButton;
    msk_PESQUISA1_ENT: TMaskEdit;
    msk_PESQUISA2_ENT: TMaskEdit;
    btn_BUSCAENTRADA: TBitBtn;
    Label1: TLabel;
    mkdata1: TMaskEdit;
    mkdata2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    btn_BUSCAR: TBitBtn;
    Edit3: TEdit;
    edt_BUSCACLI: TEdit;
    btn_BUSCACLI: TBitBtn;
    Label4: TLabel;
    lbl_NOME: TLabel;
    Label5: TLabel;
    btn_AGRUPAR: TBitBtn;
    btn_EMITEAGRUPA: TBitBtn;
    btn_MAPA: TBitBtn;
    btn_ETIQUETA: TBitBtn;
    dts_CONTAQTD: TDataSource;
    BalloonHint1: TBalloonHint;
    gb_TRANSPORTADORA: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    edt_CPFCNPJ_TRANSP: TEdit;
    edt_NOMERAZ_TRANSP: TEdit;
    edt_IE_TRANSP: TEdit;
    edt_END_TRANSP: TEdit;
    edt_CID_TRANSP: TEdit;
    edt_UF_TRANSP: TEdit;
    edt_ANTT_TRANSP: TEdit;
    edt_PLACA_TRANSP: TEdit;
    edt_PLACAUF_TRANSP: TEdit;
    gb_VOLUME: TGroupBox;
    Label52: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    edt_VOLUMES: TEdit;
    edt_PESOBRUTO: TEdit;
    edt_PESOLIQUIDO: TEdit;
    edt_especie: TEdit;
    edt_MARCA: TEdit;
    gb_OBSERVACAO: TGroupBox;
    edt_OBS: TEdit;
    Label51: TLabel;
    edt_CHAVE: TEdit;
    Label38: TLabel;
    edt_JUSTIFICATIVA: TEdit;
    IdFTP1: TIdFTP;
    OpenDialog2: TOpenDialog;
    dts_ITFISCAL: TDataSource;
    Timer1: TTimer;
    gb_PEDIDOS: TGroupBox;
    gb_ARECEBER: TGroupBox;
    gb_CANCELAMENTO: TGroupBox;
    btn_BUSCASAIDA_DATA: TBitBtn;
    zqry_ITFISCAL: TZQuery;
    zqry_CONTAQTD: TZQuery;
    zqry_SGINICONSP: TZQuery;
    dts_SGINICONSP: TDataSource;
    lbl_chavenfce: TLabel;
    lbl_SITUACAO: TLabel;
    zqry_CONTAQTDCODVENDA: TIntegerField;
    zqry_CONTAQTDSOMAITENS: TExtendedField;
    edT_LINHA: TEdit;
    gb_PED_ENT: TGroupBox;
    DBGrid3: TDBGrid;
    gb_APAGAR: TGroupBox;
    DBGrid8: TDBGrid;
    gb_TRANSP_ENT: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edt_CPFCNPJ_TRANSP_ENT: TEdit;
    edt_NOMERAZ_TRANSP_ENT: TEdit;
    edt_IE_TRANSP_ENT: TEdit;
    edt_END_TRANSP_ENT: TEdit;
    edt_CID_TRANSP_ENT: TEdit;
    edt_UF_TRANSP_ENT: TEdit;
    edt_ANTT_TRANSP_ENT: TEdit;
    edt_PLACA_TRANSP_ENT: TEdit;
    edt_PLACAUF_TRANSP_ENT: TEdit;
    gb_VOLUME_ENT: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edt_VOLUMES_ENT: TEdit;
    edt_PESOBRUTO_ENT: TEdit;
    edt_PESOLIQUIDO_ENT: TEdit;
    edt_ESPECIE_ENT: TEdit;
    edt_MARCA_ENT: TEdit;
    GroupBox1: TGroupBox;
    edt_OBS_ENT: TEdit;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    edt_CHAVE_ENT: TEdit;
    edt_JUSTIFICATIVA_ENT: TEdit;
    DBGrid4: TDBGrid;
    gp_PED_AGRUPA: TGroupBox;
    btn_BUSCAENTRADA_DATA: TBitBtn;
    btn_IMPRIMEEVENTO: TBitBtn;
    lbl_RAZAO: TLabel;
    PopupMenu1: TPopupMenu;
    ConsultaCliente1: TMenuItem;
    zqry_UPDATEVENDA: TZQuery;
    zdts_UPDATEVENDA: TDataSource;
    zqry_FORNECCOMPRA: TZQuery;
    zdts_FORNECCOMPRA: TDataSource;
    zqry_FORNECCOMPRACODEMP: TIntegerField;
    zqry_FORNECCOMPRACODFILIAL: TSmallintField;
    zqry_FORNECCOMPRACODFOR: TIntegerField;
    zqry_FORNECCOMPRARAZFOR: TWideStringField;
    zqry_FORNECCOMPRACODEMPTF: TIntegerField;
    zqry_FORNECCOMPRACODFILIALTF: TSmallintField;
    zqry_FORNECCOMPRACODTIPOFOR: TIntegerField;
    zqry_FORNECCOMPRACODEMPBO: TIntegerField;
    zqry_FORNECCOMPRACODFILIALBO: TSmallintField;
    zqry_FORNECCOMPRACODBANCO: TWideStringField;
    zqry_FORNECCOMPRACODEMPHP: TIntegerField;
    zqry_FORNECCOMPRACODFILIALHP: TSmallintField;
    zqry_FORNECCOMPRACODHIST: TIntegerField;
    zqry_FORNECCOMPRANOMEFOR: TWideStringField;
    zqry_FORNECCOMPRADATAFOR: TDateField;
    zqry_FORNECCOMPRAATIVOFOR: TWideStringField;
    zqry_FORNECCOMPRAPESSOAFOR: TWideStringField;
    zqry_FORNECCOMPRACNPJFOR: TWideStringField;
    zqry_FORNECCOMPRACPFFOR: TWideStringField;
    zqry_FORNECCOMPRAINSCFOR: TWideStringField;
    zqry_FORNECCOMPRARGFOR: TWideStringField;
    zqry_FORNECCOMPRAENDFOR: TWideStringField;
    zqry_FORNECCOMPRANUMFOR: TIntegerField;
    zqry_FORNECCOMPRACOMPLFOR: TWideStringField;
    zqry_FORNECCOMPRABAIRFOR: TWideStringField;
    zqry_FORNECCOMPRACEPFOR: TWideStringField;
    zqry_FORNECCOMPRACIDFOR: TWideStringField;
    zqry_FORNECCOMPRAUFFOR: TWideStringField;
    zqry_FORNECCOMPRACONTFOR: TWideStringField;
    zqry_FORNECCOMPRAFONEFOR: TWideStringField;
    zqry_FORNECCOMPRAFAXFOR: TWideStringField;
    zqry_FORNECCOMPRAAGENCIAFOR: TWideStringField;
    zqry_FORNECCOMPRACONTAFOR: TWideStringField;
    zqry_FORNECCOMPRAEMAILFOR: TWideStringField;
    zqry_FORNECCOMPRAOBSFOR: TWideStringField;
    zqry_FORNECCOMPRACELFOR: TWideStringField;
    zqry_FORNECCOMPRACLIFOR: TWideStringField;
    zqry_FORNECCOMPRASSPFOR: TWideStringField;
    zqry_FORNECCOMPRADDDFONEFOR: TWideStringField;
    zqry_FORNECCOMPRADDDFAXFOR: TWideStringField;
    zqry_FORNECCOMPRADDDCELFOR: TWideStringField;
    zqry_FORNECCOMPRASITEFOR: TWideStringField;
    zqry_FORNECCOMPRACODCONTDEB: TWideStringField;
    zqry_FORNECCOMPRACODCONTCRED: TWideStringField;
    zqry_FORNECCOMPRACODFORCONTAB: TWideStringField;
    zqry_FORNECCOMPRACODMUNIC: TWideStringField;
    zqry_FORNECCOMPRASIGLAUF: TWideStringField;
    zqry_FORNECCOMPRACODPAIS: TSmallintField;
    zqry_FORNECCOMPRACODEMPUC: TIntegerField;
    zqry_FORNECCOMPRACODFILIALUC: TSmallintField;
    zqry_FORNECCOMPRACODUNIFCOD: TIntegerField;
    zqry_FORNECCOMPRACODEMPFF: TIntegerField;
    zqry_FORNECCOMPRACODFILIALFF: TSmallintField;
    zqry_FORNECCOMPRACODFISCFOR: TIntegerField;
    zqry_FORNECCOMPRASUFRAMAFOR: TWideStringField;
    zqry_FORNECCOMPRANRODEPENDFOR: TSmallintField;
    zqry_FORNECCOMPRAINSCCONREG: TWideStringField;
    zqry_FORNECCOMPRACODEXPORTADOR: TWideStringField;
    zqry_FORNECCOMPRADTINS: TDateField;
    zqry_FORNECCOMPRAHINS: TTimeField;
    zqry_FORNECCOMPRAIDUSUINS: TWideStringField;
    zqry_FORNECCOMPRADTALT: TDateField;
    zqry_FORNECCOMPRAHALT: TTimeField;
    zqry_FORNECCOMPRAIDUSUALT: TWideStringField;
    btn_FECHAR_AGRUPA: TBitBtn;
    pg_VENDAFUTURA: TTabSheet;
    rg_FUTURA: TRadioGroup;
    GroupBox3: TGroupBox;
    lbl_PESQUISAFUTURA: TLabel;
    lbl_ATEFUTURA: TLabel;
    sp_FUTURA: TSpeedButton;
    msk_PESQUISAFUTURA1: TMaskEdit;
    msk_PESQUISAFUTURA2: TMaskEdit;
    btn_BUSCAVDFUTURA: TBitBtn;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    GroupBox5: TGroupBox;
    btn_VDXFUTURA: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox6: TGroupBox;
    edt_SLDDISPONIVEL: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    edt_SLDCLIENTE: TEdit;
    edt_QTDENTREGA: TEdit;
    Label34: TLabel;
    btn_PROCESSAENTREGA: TBitBtn;
    zqry_ITFISCALCODEMP: TIntegerField;
    zqry_ITFISCALCODFISC: TWideStringField;
    zqry_ITFISCALCODTIPOMOV: TIntegerField;
    zqry_ITFISCALCSOSN: TWideStringField;
    zqry_ITFISCALCODITFISC: TIntegerField;
    zqry_ITFISCALCODTRATTRIB: TWideStringField;
    zqry_ITFISCALCLENQ: TIntegerField;
    zqry_ITFISCALCENQ: TWideStringField;
    zqry_ITFISCALCODSITTRIBIPI: TWideStringField;
    zqry_ITFISCALCODMENS: TIntegerField;
    BitBtn4: TBitBtn;
    DBGrid11: TDBGrid;
    zqry_CONSIGPROD: TZQuery;
    zdts_CONSIGPROD: TDataSource;
    zqry_CONSIGPRODCODPROD: TIntegerField;
    zqry_CONSIGPRODSLDCONSIGPROD: TFloatField;
    ZQuery2: TZQuery;
    DataSource3: TDataSource;
    zqry_SEQNFCE: TZQuery;
    zqry_SEQNFCEULTNFCE: TIntegerField;
    zdts_SEQNFCE: TDataSource;
    zqry_inc_nfce: TZQuery;
    zdts_INC_NFCE: TDataSource;
    pn_TOP: TPanel;
    lbl_NFCENUM: TLabel;
    Label29: TLabel;
    lbl_ITENS_LINHA: TLabel;
    lbl_VOLUMES: TLabel;
    pn_BOTTON: TPanel;
    pn_DIREITA: TPanel;
    pn_CENTRO: TPanel;
    btn_EMITENOTA: TBitBtn;
    btn_EMITENFCE: TBitBtn;
    btn_REEMITIR: TBitBtn;
    BitBtn3: TBitBtn;
    btn_FECHAR_SAIDA: TBitBtn;
    btn_ATUALIZA: TBitBtn;
    btn_CANCELAXML: TBitBtn;
    btn_CARTACORRECAO: TBitBtn;
    btn_IMPRIMIR: TBitBtn;
    lbl_NFNUM: TLabel;
    GroupBox7: TGroupBox;
    lbl_RETCSTAT: TLabel;
    Label7: TLabel;
    edt_BASEICMS: TEdit;
    edt_VLRICMS: TEdit;
    Label8: TLabel;
    edt_BASEST: TEdit;
    Label10: TLabel;
    edt_VLRICMSST: TEdit;
    edt_VLRDESCONTO: TEdit;
    Label28: TLabel;
    Label35: TLabel;
    edt_VLRFRETE: TEdit;
    edt_VLRIPI: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    zqry_UPDATE: TZQuery;
    zdts_UPDATE: TDataSource;
    zqry_VDVENDA: TZQuery;
    zdts_VDVENDA: TDataSource;
    zqry_VDVENDACODEMP: TIntegerField;
    zqry_VDVENDACODFILIAL: TSmallintField;
    zqry_VDVENDACODVENDA: TIntegerField;
    zqry_VDVENDADOCVENDA: TIntegerField;
    zqry_VDVENDACODCLI: TIntegerField;
    zqry_VDVENDADTEMITVENDA: TDateField;
    zqry_VDCLIENTE: TZQuery;
    zdts_VDCLIENTE: TDataSource;
    zqry_VDCLIENTECODEMP: TIntegerField;
    zqry_VDCLIENTECODFILIAL: TSmallintField;
    zqry_VDCLIENTECODCLI: TIntegerField;
    zqry_VDCLIENTERAZCLI: TWideStringField;
    zqry_VDCLIENTENOMECLI: TWideStringField;
    zqry_VDCLIENTEPESSOACLI: TWideStringField;
    zqry_VDCLIENTECNPJCLI: TWideStringField;
    zqry_VDCLIENTECPFCLI: TWideStringField;
    zqry_VDCLIENTEINSCCLI: TWideStringField;
    zqry_VDCLIENTERGCLI: TWideStringField;
    zqry_VDCLIENTEEMAILCLI: TWideStringField;
    zqry_VDCLIENTEEMAILNFECLI: TWideStringField;
    zqry_VDCLIENTEENDCLI: TWideStringField;
    zqry_VDCLIENTENUMCLI: TIntegerField;
    zqry_VDCLIENTECOMPLCLI: TWideStringField;
    zqry_VDCLIENTEBAIRCLI: TWideStringField;
    zqry_VDCLIENTECIDCLI: TWideStringField;
    zqry_VDCLIENTESIGLAUF: TWideStringField;
    zqry_VDVENDA_EMAILNFECLI: TStringField;
    zqry_VDCLIENTEUFCLI: TWideStringField;
    zqry_VDVENDA_RAZCLI: TStringField;
    zqry_VDVENDA_NOMECLI: TStringField;
    zqry_VDCLIENTEDDDCLI: TWideStringField;
    zqry_VDCLIENTEFONECLI: TWideStringField;
    zqry_VDVENDA_DDDCLI: TStringField;
    zqry_VDVENDA_FONECLI: TStringField;
    zqry_VDCLIENTECEPCLI: TWideStringField;
    zqry_VDVENDA_CEPCLI: TStringField;
    zqry_VDVENDA_ENDCLI: TStringField;
    zqry_VDVENDA_NUMCLI: TStringField;
    zqry_VDVENDA_COMPLCLI: TStringField;
    zqry_VDVENDA_BAIRCLI: TStringField;
    zqry_VDVENDACODTIPOMOV: TIntegerField;
    zqry_VDVENDACODTIPOCOB: TIntegerField;
    zqry_UPDDEL: TZQuery;
    zdts_UPDDEL: TDataSource;
    zqry_MAX: TZQuery;
    zdts_MAX: TDataSource;
    zqry_VDCLIENTECODMUNIC: TWideStringField;
    zqry_VDVENDA_CODMUNIC: TStringField;
    zqry_VDVENDA_SIGLAUF: TStringField;
    zqry_VDVENDA_CIDCLI: TStringField;
    zqry_VDITVENDA: TZQuery;
    zdts_VDITVENDA: TDataSource;
    zqry_VDITVENDACODVENDA: TIntegerField;
    zqry_VDITVENDACODITVENDA: TIntegerField;
    zqry_VDITVENDACODPROD: TIntegerField;
    zqry_VDITVENDACODNAT: TWideStringField;
    zqry_VDVENDAOBSVENDA: TWideStringField;
    zqry_VDVENDACAMINHO: TWideStringField;
    zqry_VDVENDACODPLANOPAG: TIntegerField;
    zqry_EQPRODUTO: TZQuery;
    zdts_EQPRODUTO: TDataSource;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODUNID: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOCEST: TWideStringField;
    zqry_VDITVENDACODFISC: TWideStringField;
    zqry_VDITVENDACODITFISC: TIntegerField;
    zqry_VDITVENDACODLOTE: TWideStringField;
    zqry_VDITVENDA_DESCPROD: TStringField;
    zqry_VDITVENDACODALMOX: TIntegerField;
    zqry_VDVENDA_CNPJCLI: TStringField;
    zqry_VDVENDA_CPFCLI: TStringField;
    zqry_VDVENDA_INSCCLI: TStringField;
    zqry_VDVENDA_PESSOACLI: TStringField;
    lbl_PROTOCOLO: TLabel;
    lbl_CHAVE: TLabel;
    zqry_VDVENDACHAVENFEVENDA: TWideStringField;
    btn_ENVIAR_EMAIL: TBitBtn;
    zqry_INSERECCE: TZQuery;
    zdts_INSERECCE: TDataSource;
    zqry_INSERECCENUMNF: TIntegerField;
    zqry_INSERECCEMODNF: TIntegerField;
    zqry_INSERECCESEQNF: TIntegerField;
    zqry_INSERECCEPROTOCOLO: TWideStringField;
    zqry_INSERECCECORRECAO: TWideStringField;
    zqry_INSERECCEDATA: TDateField;
    zqry_INSERECCEHORA: TTimeField;
    zqry_INSERECCEENVIADO: TWideStringField;
    zqry_INSERECCEARQUIVO: TWideStringField;
    zqry_INSERELOG: TZQuery;
    zqry_INSERELOGNUMNF: TIntegerField;
    zqry_INSERELOGMODNF: TIntegerField;
    zqry_INSERELOGSEQNF: TIntegerField;
    zqry_INSERELOGPROTOCOLO: TWideStringField;
    zqry_INSERELOGTIPOLOG: TWideStringField;
    zqry_INSERELOGLOG: TWideStringField;
    zqry_INSERELOGDATA: TDateField;
    zqry_INSERELOGHORA: TTimeField;
    zqry_INSERELOGUSUARIO: TWideStringField;
    zdts_INSERELOG: TDataSource;
    GroupBox8: TGroupBox;
    DBText1: TDBText;
    Label9: TLabel;
    Label26: TLabel;
    DBText2: TDBText;
    Label30: TLabel;
    DBText3: TDBText;
    zqry_VDVENDAPROTOCOLO: TWideStringField;
    DBGrid12: TDBGrid;
    DBGrid9: TDBGrid;
    IdFTP2: TIdFTP;
    edt_CALC: TEdit;
    sh_INTERNET: TShape;
    sh_RECEITA: TShape;
    zqry_VDVENDAVLRLIQVENDA: TExtendedField;
    zqry_VDVENDAVLRADICVENDA: TExtendedField;
    zqry_VDVENDAVLRDESCITVENDA: TExtendedField;
    zqry_VDVENDAVLRFRETEVENDA: TExtendedField;
    zqry_VDVENDAVLRPRODVENDA: TExtendedField;
    zqry_EQPRODUTOCUSTOINFOPROD: TExtendedField;
    zqry_VDITVENDAQTDITVENDA: TExtendedField;
    zqry_VDITVENDAPRECOITVENDA: TExtendedField;
    zqry_VDITVENDAVLRPRODITVENDA: TExtendedField;
    zqry_VDITVENDAVLRDESCITVENDA: TExtendedField;
    zqry_ITFISCALALIQFISC: TFloatField;
    zqry_ITFISCALMARGEMVLAGR: TExtendedField;
    zqry_ITFISCALREDFISC: TExtendedField;
    zqry_ITFISCALALIQLFISC: TFloatField;
    zqry_ITFISCALALIQICMSSTCM: TFloatField;
    zqry_ITFISCALNOUFITFISC: TWideStringField;
    procedure btn_REEMITIRClick(Sender: TObject);
    procedure btn_IMPRIMIRClick(Sender: TObject);
    procedure rg_SAIDASClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure sp_BUSCA_ENTClick(Sender: TObject);
    procedure btn_BUSCAENTRADAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
//    procedure btn_CARTACORRECAOClick(Sender: TObject);
    procedure rg_ENTRADAClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_BUSCACLIClick(Sender: TObject);
    procedure ts_AGRUPASAIDASEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_AGRUPARClick(Sender: TObject);
    procedure btn_EMITEAGRUPAClick(Sender: TObject);
    procedure btn_MAPAClick(Sender: TObject);
    procedure ts_VENDASEnter(Sender: TObject);
    procedure btn_ETIQUETAClick(Sender: TObject);
    procedure btn_CARTACORRECAOClick(Sender: TObject);
    procedure btn_CANCELAXMLClick(Sender: TObject);
    procedure msk_PESQUISA2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure OPCOESINTERNET;
    procedure FECHACONEXOES;
    procedure ENVIANFE;
    procedure ENVIANFE_ENT;
    procedure BUSCASAIDA;
    procedure BUSCAVENDAFUTURA;
   // procedure EmiteSat;
    //procedure PrepararImpressao;
//    procedure ENVIANFCE;
//    procedure CHNFCE;
    procedure btn_ENVIAR_EMAILClick(Sender: TObject);
    procedure btn_BUSCASAIDA_DATAClick(Sender: TObject);
    procedure btn_EMITENFCEClick(Sender: TObject);
    procedure btn_CHNFCEClick(Sender: TObject);
//    procedure btn_NFCE_NOVAClick(Sender: TObject);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure btn_VisualizaClick(Sender: TObject);
    procedure btn_EMITENOTA_COMPRAClick(Sender: TObject);
    procedure btn_EMITENOTAClick(Sender: TObject);
    procedure btn_ATUALIZAClick(Sender: TObject);
    procedure edt_BUSCACLIKeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCAENTRADA_DATAClick(Sender: TObject);
    procedure mkdata1KeyPress(Sender: TObject; var Key: Char);
    procedure mkdata2KeyPress(Sender: TObject; var Key: Char);
    procedure msk_PESQUISA1KeyPress(Sender: TObject; var Key: Char);
    procedure ConsultaClientes1Click(Sender: TObject);
    procedure ConsultaCliente1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_FECHAR_SAIDAClick(Sender: TObject);
    procedure btn_FECHAR_AGRUPAClick(Sender: TObject);
    procedure sp_FUTURAClick(Sender: TObject);
    procedure msk_PESQUISAFUTURA1KeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCAVDFUTURAClick(Sender: TObject);
    procedure rg_FUTURAClick(Sender: TObject);
    procedure btn_VDXFUTURAClick(Sender: TObject);
    procedure DBGrid11CellClick(Column: TColumn);
    procedure edt_QTDENTREGAExit(Sender: TObject);
    procedure btn_PROCESSAENTREGAClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure pg_PEDIDOSChange(Sender: TObject);
    procedure EMITENFESAIDA;
    procedure ATUALIZAITEMVENDA;
    procedure ATUALIZAPRODUTO;
    procedure ATUALIZACLIENTE;
    procedure lbl_RETCSTATClick(Sender: TObject);
    procedure EnviarEmail;
    procedure ExibirDenegada;
    procedure ts_AGRUPASAIDASShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OpenURL(const URL: string);
   private
      { Private declarations }
      var
      cod_pedido, minhaaba:integer;
   public
      { Public declarations }

      procedure GerarNFCe(NumNFe : String);

      var
      // NOVAS
      AGRUPADOS, TIPOMOVIMENTO
                            :INTEGER;
      LARQ                  :TStringList;
      IMAGESTREAM           :TMemoryStream;
      PNGIMAGE              :TPngImage;
      LERLOG                :TIniFile;
      ARQUIVO, ARQ          :TextFile;
      nfce_vlrtotal,  nfce_vlrtroco, nfce_vlrpago:double;



      ncaminho, composicao:ansistring;
      UFDEST, UFREMET:currency;
      //String
      linha, NFECSTAT, ANO, CPF, vlrpagonfce, CNPJ, DATA, NOMEMUNIC,CHAVE_NFE, RECIBO_NFE, csosncorreto,
          //teste string
      cpfcliente, cnpjcliente,pessoacliente,iecliente,ufcliente,
      ESTADO1,ESTADO2, EMAILDEST, mensagemnfe,
      INSCRICAO, ERRO,    descricao, ncm, ean,uni,CEST,
      ENTRE, OUTROBT, SCRIPT, PARAMETRO1, PARAMETRO2, PARAMETRO3, INSTRUCAO, //SCRIPT PARA CONSULTA SQL
      MUNICIPIO, NFEGERADO, NCHAVE, NFCE, NFEDATAREC, NFEREC, NFEXMOTIVO,PARTILHA, PATHNFESYS,
      TXTCFOP, sArquivoEntNfe, sArquivoSaiNfe, nome, statusmsg:STRING;
      //Double
      NUMPEDIDO, ALIQINT, ALIQEXT, ALIQICMS, MVA, REDICMS, BCICMSST,ALIQST,VLRST,
      vlrparcelamento, vlrparcelast, desconto,
      NUMITENS,PRECOTOTAL,QUANTIDADETOTAL, QTD,PRIMEIRAPARCELA, PRIMEIRAPARCELAST,
      SOMABC,SOMABCST,SOMAICMS,SOMAST,SOMAAGRUPADO,
      TOTALDESC,TOTALNOTA, TOTALDESTAQUE, ALIQDESTAQUE,
      UFIGUAL,
      VLRAGRUPADO, VLRPARTILHA, VLRPARTILHADEST, VLRPARTILHAUF,
      VALORAGRUPADO, VALORNOTA, VALORPARCELA,VALORPARTILHA, VALORPARTILHADEST, VALORPARTILHAUF, VALORICMSITEM,
      VALORPARCELANFCE, VALORDESCICMS, VALORICMS, VALORTOTAL,DIFERENCAPAG, DIFERENCAFAT,SOMAPARCELA :DOUBLE;
      // AGRUPAMENTO
      TOTAGRUPA, TOTDESCAGRUPA:DOUBLE;

      //Integer
      I_TAM_ARQ, parcelamento, teminternet,  itens,
      CODIGOPRODUTO, CODIGOMIX,CONTADOR, DEVOLUCAO, PESSOAFISICA, SITICMS, RECICMPF,
      NUMVENDA, NUMLINHAS, NUMERONOTA, NUMNF, NUMREC, NUMPARCELA, PAGAMENTO, TIPOPAGTO, TIPOENVIO:INTEGER;
      //

   end;

var
   frm_CON_PEDIDOS: Tfrm_CON_PEDIDOS;

implementation

{$R *.dfm}

uses u_dados,u_funcoes,rel_etiquetas, HTTPApp, WinInet,
  con_clientes, uNFe, u_verificainternet, u_principal, Frm_ACBrNFe, dlg_cstat;

type
  TQrImage_ErrCorrLevel = (L, M, Q, H);

const
  UrlGoogleQrCode =
    'http://chart.apis.google.com/chart?chs=%dx%d&cht=qr&chld=%s&chl=%s';
  QrImgCorrStr: array [TQrImage_ErrCorrLevel] of string = ('L', 'M', 'Q', 'H');

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

procedure Tfrm_CON_PEDIDOS.OpenURL(const URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrm_CON_PEDIDOS.ExibirDenegada;
begin
  if (MessageDlg('Nota DENEGADA ou em PROCESSAMENTO. Anote a Chave para consulta futura. Para mais informa��es clique em OK',
    mtInformation, [mbOK, mbCancel], 0) = mrOK) then
  begin
    OpenURL('https://nonoelemento.com.br/site/2021/07/26/205-rejeicao-nf-e-esta-denegada-na-base-de-dados-da-sefaz/');
  end;
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

procedure Tfrm_CON_PEDIDOS.EnviarEmail;
var
 Para, Assunto, Corpo : String;
 CC: Tstrings;
begin
  para:=emptystr;
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;
  frmacbrnfe.LerConfiguracao;
  frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(ncaminho);
  assunto:='Nota Fiscal emitida por '+ trim(dm_dados.zqry_SGFILIALNOMEFILIAL.asstring);
  corpo:='Segue em anexo Danfe em formato PDF e XML de Nota Fiscal emitida';
  CC:=TstringList.Create;
  try
    frmacbrnfe.lerconfiguracao;
    cc.Add('fiscal.nonoelemento@gmail.com'); //especifique um email válido
    cc.Add('contato@nonoelemento.com.br');
//      CC.Add(dm_dados.zqry_SGFILIALEMAILFILIAL.asstring);    //especifique um email válido
//      if dm_dados.zqry_SGFILIALEMAILRESP.AsString<>'' then cc.Add(dm_Dados.zqry_SGFILIALEMAILRESP.asstring);
    frmacbrnfe.ACBrMail1.Clear;
    frmacbrnfe.ACBrMail1.Host     := frmacbrnfe.edtSmtpHost.Text;
    frmacbrnfe.ACBrMail1.Port     := frmacbrnfe.edtSmtpPort.Text;
    frmacbrnfe.ACBrMail1.Username := frmacbrnfe.edtSmtpUser.Text;
    frmacbrnfe.ACBrMail1.Password := frmacbrnfe.edtSmtpPass.Text;
    frmacbrnfe.ACBrMail1.From := frmacbrnfe.edtSmtpUser.Text;
    frmacbrnfe.ACBrMail1.SetSSL := frmacbrnfe.cbEmailSSL.Checked; // SSL - Conexão Segura
    frmacbrnfe.ACBrMail1.SetTLS := frmacbrnfe.cbEmailTLS.Checked; // Auto TLS
    frmacbrnfe.ACBrMail1.ReadingConfirmation := False; //Pede confirmação de leitura do email
    frmacbrnfe.ACBrMail1.UseThread := False;           //Aguarda Envio do Email(não usa thread)
    frmacbrnfe.ACBrMail1.FromName := 'Alles ';
    frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, frmacbrnfe.edtEmailAssunto.Text,
                                               frmacbrnfe.mmEmailMsg.Lines
                                               , True  // Enviar PDF junto
                                               , CC    // Lista com emails que serão enviado cópias - TStrings
                                               , nil); // Lista de anexos - TStrings
  finally
    CC.Free;
  end;
  fechatelaaguarde;
end;

procedure Tfrm_CON_PEDIDOS.AtualizaItemVenda;
begin
  zqry_VDITVENDA.Params.Clear;
  zqry_VDITVENDA.Close;
  zqry_VDITVENDA.sql.clear;
  zqry_VDITVENDA.sql.add('select codvenda, coditvenda,codprod,codnat, qtditvenda, precoitvenda, vlrproditvenda,codfisc,coditfisc, codlote, codalmox, vlrdescitvenda from vditvenda where codvenda=:itvendacod and codemp=:empcod');
  zqry_VDITVENDA.ParamByName('empcod').asinteger:=dm_dados.codemp;
  zqry_VDITVENDA.ParamByName('itvendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
  zqry_VDITVENDA.Open;
end;

procedure Tfrm_CON_PEDIDOS.ATUALIZAPRODUTO;
begin
  zqry_eqproduto.Params.Clear;
  zqry_EQPRODUTO.Close;
  zqry_EQPRODUTO.sql.clear;
  zqry_EQPRODUTO.SQL.Add('select codprod, codbarprod, descprod, custoinfoprod, codunid, codfisc, cest from eqproduto where codemp=:empcod');
  zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_EQPRODUTO.Open;
end;

procedure Tfrm_CON_PEDIDOS.ATUALIZACLIENTE;
begin
  zqry_VDCLIENTE.Params.Clear;
  zqry_VDCLIENTE.Close;
  zqry_VDCLIENTE.SQL.Clear;
  zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
  zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codcli=:clicod and codemp=:empcod');
  zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=zqry_vdvendacodcli.asinteger;
  zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_VDCLIENTE.Open;
end;

procedure Tfrm_CON_PEDIDOS.EMITENFESAIDA;
var
  texto,  vAux, vNumLote, vSincrono: String;
  idmsgbox:integer;
begin
  ATUALIZACLIENTE;
  if (zqry_VDVENDACODTIPOMOV.asinteger>=500) and (zqry_vdvendacodtipomov.asinteger<=599) then
  begin
    if zqry_VDcliente.IsEmpty then
    begin
      mostratelaaviso('CLIENTE N�O LOCALIZADO','C�digo Cliente '+zqry_vdvendacodcli.asstring);
    end;
    if not zqry_vdcliente.isempty then
    begin
      if (zqry_vdCLIENTECPFCLI.AsString='') and (zqry_vdCLIENTECNPJCLI.AsString='') or (zqry_vdCLIENTEENDCLI.AsString='') then
      begin
        mostratelaaviso('PEDIDO N�O PODE SER EMITIDO COMO NFE','');
        FECHACONEXOES;
      end
      else
      begin
        FRMACBRNFE.LERCONFIGURACAO;
        tipomovimento:=0;
        frmacbrnfe.ACBrNFe1.WebServices.StatusServico.Executar;
        LBL_RETCSTAT.Caption:=IntToStr(frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat);
        teminternet:=u_verificainternet.Ping(1000,'www.google.com.br',80);
        if teminternet<>0 then
          begin
          sh_INTERNET.brush.color:=clgreen;
          frmacbrnfe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
          frmacbrnfe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
          vaux:=dm_dados.zqry_MAX_NFEULTNFE.AsString;
          AlimentarComponente(vAux);
        end;
        if teminternet=0 then
        begin
          // verifica status antes de carregar
          sh_INTERNET.brush.color:=clred;
          frmacbrnfe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
          frmacbrnfe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
          vaux:=dm_dados.zqry_MAX_NFEULTNFE.AsString;
          AlimentarComponente(vAux);
        end;
      end;
    end;
  end
  else
  begin
    mostratelaaviso('PEDIDO J� FATURADO','Chave '+zqry_VDVENDACHAVENFEVENDA.asstring);
  end;
end;

procedure Tfrm_CON_PEDIDOS.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if State = [gdSelected, gdFocused] then
  begin
    DBGrid1.Canvas.Brush.Color := clBlue;
    DBGrid1.Canvas.Font.Color  := clWindow;
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure Tfrm_CON_PEDIDOS.GerarNFCe(NumNFe: String);
var
  OK : boolean;
  achavenda,achaum : double;
begin
//frm_prefacbr.lerconfiguracao;
ATUALIZACLIENTE;
if zqry_VDCLIENTE.IsEmpty then showmessage('Dados n�o localizados');
cpfcliente:=zqry_vdclientecpfcli.asstring;
cnpjcliente:=zqry_VDCLIENTECNPJCLI.AsString;
pessoacliente:=zqry_VDCLIENTEPESSOACLI.AsString;
iecliente:=zqry_VDCLIENTEINSCCLI.AsString;
ufcliente:=zqry_VDCLIENTESIGLAUF.AsString;
inscricao := zqry_VDCLIENTEinsccli.asstring;
emaildest:=zqry_VDVENDA_EMAILNFECLI.AsString;
frmacbrnfe.LerConfiguracao;
with frmacbrnfe.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.cNF       := random(99999999)+1;//StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
    Ide.natOp     := 'VENDA';
    Ide.indPag    := ipVista;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    //showmessage(numnfe);
    Ide.nNF       := StrToInt(NumNFe);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    Ide.tpEmis    := TpcnTipoEmissao(frmacbrnfe.cbFormaEmissao.ItemIndex);
    Ide.tpAmb     := TpcnTipoAmbiente(frmacbrnfe.rgTipoAmb.ItemIndex);  //Lembre-se de trocar esta variável quando for para ambiente de produção
    Ide.cUF       := UFtoCUF(dm_Dados.zqry_SGFILIALSIGLAUF.asstring);
    Ide.cMunFG    := StrToInt(frmacbrnfe.edtEmitCodCidade.Text);
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
    Emit.EnderEmit.cMun    := 3139409;//;strtoint(dm_dados.zqry_SGFILIAL_coduf.asstring+dm_dados.zqry_SGFILIALcodmunic.asstring);
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
//      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
    if dm_dados.zqry_SGFILIALSIMPLESFILIAL.asstring='S' then Emit.CRT := crtSimplesNacional else Emit.CRT:= crtRegimeNormal;

    If (cpfcliente='') and (cnpjcliente='') then
    begin
      if not(InputQuery('Integra - NFCe: Informar CNPJ/CPF', 'Informe o CNPJ/CPF do Comprador', CPF)) then
        exit;
      Dest.CNPJCPF := cpf;
    end
    else
    begin
      if cpfcliente<>'' then Dest.CNPJCPF := cpfcliente else Dest.CNPJCPF := cnpjcliente;
    end;

    dest.CNPJCPF:=cpf;

//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
    Dest.ISUF              := '';
    Dest.xNome             := zqry_VDVENDA_RAZCLI.AsString;
    if zqry_VDVENDA_FONECLI.AsString='' then Dest.EnderDest.Fone := '' else  Dest.EnderDest.Fone := zqry_VDVENDA_dddcli.value+zqry_VDVENDA_FONECLI.VALUE;
    //Dest.EnderDest.Fone    := '1533243333';
    if zqry_VDVENDA_CEPCLI.IsNull then Dest.EnderDest.CEP     :=0 else Dest.EnderDest.CEP     :=     zqry_VDVENDA_CEPCLI.AsInteger;
    Dest.EnderDest.xLgr    := zqry_VDVENDA_ENDCLI.AsString;
    Dest.EnderDest.nro     := zqry_VDVENDA_NUMCLI.AsString;
    Dest.EnderDest.xCpl    := zqry_VDVENDA_COMPLCLI.AsString;
    Dest.EnderDest.xBairro := zqry_VDVENDA_BAIRCLI.AsString;
    dm_dados.zqry_SGMUNICIPIO.close;
    dm_dados.zqry_SGMUNICIPIO.SQL.Clear;
    dm_dados.zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
    dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=zqry_VDVENDA_CODMUNIC.ASSTRING;
    dm_Dados.zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:= zqry_VDVENDA_SIGLAUF.asstring;
    dm_dados.zqry_sgmunicipio.open;
    Dest.EnderDest.cMun    := strtoint(dm_dados.zqry_sgmunicipiocoduf.asstring+dm_dados.zqry_sgmunicipiocodmunic.asstring);
    Dest.EnderDest.xMun    := zqry_VDVENDA_CIDCLI.AsString;
    Dest.EnderDest.UF      := zqry_VDVENDA_SIGLAUF.AsString;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';
    Dest.IE := '';
    Dest.indIEDest := inNaoContribuinte;
//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}
//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos

    zqry_VDITVENDA.First;
    contador:=1;
    while not zqry_VDITVENDA.eof do
    begin
      with Det.Add do
      begin
         achavenda:=0;
         codigoproduto:=zqry_VDITVENDACODPROD.AsInteger;
         zqry_EQPRODUTO.Params.Clear;
         zqry_EQPRODUTO.close;
         zqry_EQPRODUTO.SQL.Clear;
         zqry_EQPRODUTO.SQL.Add('select codprod, codbarprod, descprod, custoinfoprod, codunid, codfisc, cest from eqproduto where codprod=:prodcod and codemp=:empcod');
         zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=codigoproduto;
         zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
         zqry_EQPRODUTO.Open;
         DESCRICAO:=zqry_EQPRODUTODESCPROD.AsString;
         NCM:=zqry_EQPRODUTOCODFISC.AsString;
         EAN:=zqry_EQPRODUTOCODBARPROD.asstring;
         UNI:=zqry_EQPRODUTOCODUNID.AsString;
         CEST:=zqry_EQPRODUTOCEST.AsString;

         Prod.nItem    := contador;
         //showmessage(inttostr(contador));// N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := zqry_VDITVENDACODPROD.AsString;
         if ean.IsEmpty then  EAN     :='7891111111111';
         if EAN13Valido(ean) then Prod.cEAN:= ean;
         Prod.xProd    := DESCRICAO;
         Prod.NCM      := NCM; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := zqry_VDITVENDACODNAT.ASSTRING;
         Prod.uCom     := UNI;
         Prod.qCom     := SimpleRoundto(zqry_VDITVENDAQTDITVENDA.value,-3);
         //showmessage(floattostr(zqry_VDITVENDAQTDITVENDA.value));

         {if (Frac(zqry_VDITVENDAQTDITVENDA.asfloat ) = 0.00) or (Frac(zqry_VDITVENDAQTDITVENDA.asfloat ) = 0.000) then achaum:=1 else achaum:=0;
         //showmessage('Achaum '+floattostr(achaum));
         if achaum<>1 then
         begin
           if zqry_VDITVENDAQTDITVENDA.asfloat<1 then
           begin
              //showmessage('menor que 1');
              if zqry_VDITVENDAVLRPRODITVENDA.asfloat = zqry_VDITVENDAPRECOITVENDA.asfloat then
              begin
                //showmessage('calculo');
                achavenda:=simpleroundto((1*SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2)/SimpleRoundto(zqry_VDITVENDAQTDITVENDA.value,-3)));
              end
              else
              begin
                //showmessage('sem calculo');
                achavenda:=SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2);
              end;
           end
           else
           begin
              //showmessage('n�o � menor que 1');
              achavenda:=(1*SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2)/SimpleRoundto(zqry_VDITVENDAQTDITVENDA.value,-3));
              //achavenda:=SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2)
           end;
         end
         else
         begin
           achavenda:=SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2) ;
         end;
         //showmessage('Acha Venda '+floattostr(achavenda));
         //showmessage(floattostr(SimpleRoundto(zqry_VDITVENDAQTDITVENDA.value,-3)));
         Prod.vUnCom   := achavenda;//SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2);
         //showmessage('vUNCom '+floattostr(SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.value,-2)));
         Prod.vProd    := SimpleRoundto(zqry_VDITVENDAVLRPRODITVENDA.asCurrency,-2);
         //showmessage('vProd '+floattostr(SimpleRoundto(zqry_VDITVENDAVLRPRODITVENDA.value,-2)));}


         Prod.vUnCom   := SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.value,-2);
         Prod.vProd    := simpleRoundto(zqry_VDITVENDAVLRPRODITVENDA.value, -3);

         if ean.IsEmpty then  EAN     :='7891111111111';
         if EAN13Valido(ean) then Prod.cEANTrib:= ean;
         Prod.uTrib     := UNI;
         Prod.qTrib     := SimpleRoundto(zqry_VDITVENDAQTDITVENDA.value,-3);
         Prod.vUnTrib := simpleRoundto(zqry_VDITVENDAPRECOITVENDA.value, -3);
         { AJUSTE CASA DA BORRACHA
         Prod.vUnTrib   := achavenda;//SimpleRoundto(zqry_VDITVENDAPRECOITVENDA.AsCurrency,-2);
         }
         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := SimpleRoundto(desconto,-3);//zqry_VDITVENDAVLRDESCITVENDA.AsCurrency;

         Prod.CEST := CEST;



       { codigoproduto:=zqry_VDITVENDACODPROD.AsInteger;
        zqry_EQPRODUTO.Params.Clear;
        zqry_EQPRODUTO.close;
        zqry_EQPRODUTO.SQL.Clear;
        zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:prodcod and codemp=:empcod');
        zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=codigoproduto;
        zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        zqry_EQPRODUTO.Open;
        DESCRICAO:=trim(zqry_EQPRODUTODESCPROD.AsString);
        NCM:=zqry_EQPRODUTOCODFISC.AsString;
        EAN:=zqry_EQPRODUTOCODBARPROD.asstring;
        UNI:=zqry_EQPRODUTOCODUNID.AsString;
        CEST:=zqry_EQPRODUTOCEST.AsString;

        Prod.nItem    := contador; // N�mero sequencial, para cada item deve ser incrementado
        Prod.cProd    := DESCRICAO;//zqry_VDITVENDACODPROD.AsString;
        Prod.cEAN     := EAN;//zqry_VDITVENDA_EANPRODUTO.asstring;
        Prod.xProd    := zqry_VDITVENDA_DESCPRODUTO.AsString;
        Prod.NCM      := NCM;//zqry_VDITVENDA_NCMPRODUTO.asstring; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
        Prod.EXTIPI   := '';
        Prod.CFOP     := zqry_VDITVENDACODNAT.ASSTRING;
        Prod.uCom     := zqry_VDITVENDA_UNPRODUTO.asstring;
        Prod.qCom     := zqry_VDITVENDAQTDITVENDA.asfloat;
        Prod.vUnCom   := zqry_VDITVENDAPRECOITVENDA.AsCurrency;
        Prod.vProd    := zqry_VDITVENDAVLRPRODITVENDA.asCurrency;
        Prod.cEANTrib := EAN;//zqry_VDITVENDA_EANPRODUTO.asstring;
        Prod.uTrib    := UNI;//zqry_VDITVENDA_UNPRODUTO.asstring;
        Prod.qTrib    := zqry_VDITVENDAQTDITVENDA.asfloat;
        Prod.vUnTrib  := zqry_VDITVENDAPRECOITVENDA.AsCurrency;
        Prod.vOutro   := 0;
        Prod.vFrete   := 0;
        Prod.vSeg     := 0;
        Prod.vDesc    := zqry_VDITVENDAVLRDESCITVENDA.AsCurrency;
        Prod.CEST     := zqry_VDITVENDA_CESTPRODUTO.asstring;
        //         infAdProd      := 'Informa��o Adicional do Produto'; }

        with Imposto do
        begin
          // lei da transparencia nos impostos
          vTotTrib := 0;
          with ICMS do
          begin
            if (zqry_VDITVENDACODNAT.ASSTRING='5405') or (zqry_VDITVENDACODNAT.ASSTRING='5656') or (zqry_VDITVENDACODNAT.ASSTRING='5667')  then CSOSN  := csosn500;
            if (zqry_VDITVENDACODNAT.ASSTRING='5101') or (zqry_VDITVENDACODNAT.ASSTRING='5102') or (zqry_VDITVENDACODNAT.ASSTRING='5103')
            or (zqry_VDITVENDACODNAT.ASSTRING='5104') or (zqry_VDITVENDACODNAT.ASSTRING='5115') then
            begin
              zqry_ITFISCAL.close;
              zqry_itfiscal.SQL.Clear;
              zqry_itfiscal.SQL.Add('select CODEMP, CODFISC, CODTIPOMOV, CSOSN, CODITFISC,CODTRATTRIB,');
              zqry_itfiscal.SQL.Add('ALIQFISC, MARGEMVLAGR, REDFISC, ALIQLFISC, ALIQICMSSTCM, NOUFITFISC,CLENQ,CENQ,CODSITTRIBIPI,CODMENS');
              zqry_itfiscal.SQL.Add('from lfitclfiscal where codfisc=:fiscal and codtipomov=:mov and coditfisc=:itfisc and codemp=:empcod');
              zqry_ITFISCAL.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
              zqry_itfiscal.parambyname('fiscal').asstring:=trim(zqry_VDITVENDACODFISC.AsString);
              zqry_itfiscal.parambyname('mov').asinteger:=zqry_VDVENDACODTIPOMOV.AsInteger;
              zqry_itfiscal.ParamByName('itfisc').asinteger:=zqry_VDITVENDACODITFISC.asinteger;
              zqry_itfiscal.open;
              if zqry_itfiscal.IsEmpty then CSOSN        := csosn102 else  CSOSN        := StrToCSOSNIcms(OK,zqry_ITFISCALCSOSN.asstring);
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
      zqry_VDITVENDA.Next;
    end;

//Adicionando Servi�os
{      with Det.Add do
       begin
         Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descri��o do Servi�o';
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

         infAdProd      := 'Informa��o Adicional do Servi�o';

//Grupo para servi�os
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
    Total.ICMSTot.vBC     := 0;
    Total.ICMSTot.vICMS   := 0;
    Total.ICMSTot.vBCST   := 0;
    Total.ICMSTot.vST     := 0;
    Total.ICMSTot.vProd   := zqry_VDVENDAVLRPRODVENDA.AsCurrency;
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vSeg    := 0;
    Total.ICMSTot.vDesc   := zqry_VDVENDAVLRDESCitvenda.AsCurrency;
    Total.ICMSTot.vII     := 0;
    Total.ICMSTot.vIPI    := 0;
    Total.ICMSTot.vPIS    := 0;
    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro  := 0;
    Total.ICMSTot.vNF     := zqry_VDVENDAVLRLIQVENDA.ascurrency;
    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest   := 0.00;
    Total.ICMSTot.vICMSUFDest  := 0.00;
    Total.ICMSTot.vICMSUFRemet := 0.00;
    Total.ISSQNtot.vServ   := 0;
    Total.ISSQNTot.vBC     := 0;
    Total.ISSQNTot.vISS    := 0;
    Total.ISSQNTot.vPIS    := 0;
    Total.ISSQNTot.vCOFINS := 0;
    {      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

    vlrpagonfce:='';
    nfce_vlrtotal:=0;
    nfce_vlrtroco:=0;
    nfce_vlrpago:=0;

    Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE
    vlrpagonfce:='0';
    //if not(InputQuery('Integra - NFCe: Valor Pago', 'Informe o Valor Pago pelo cliente', vlrpagonfce)) then
    //exit;
    nfce_vlrtotal:=zqry_VDVENDAVLRLIQVENDA.asfloat;
    if vlrpagonfce=''  then vlrpagonfce:='0';
    nfce_vlrpago:=strtofloat(vlrpagonfce);
    if (nfce_vlrpago>0) then nfce_vlrtroco:=nfce_vlrpago-nfce_vlrtotal;

    pag.vTroco:= FloatToCurr(nfce_vlrtroco);
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

    if zqry_VDVENDAcodtipocob.asinteger=1 then
      begin
        //showmessage('chegou aqui');
        with pag.Add do
        begin
            tPag :=fpDinheiro;
            if nfce_vlrpago>0 then vPag := floattocurr(nfce_vlrpago);
            if nfce_vlrpago=0 then vPag := zqry_VDVENDAVLRLIQVENDA.ascurrency;
        end;
      end;

      { with pag.Add do
        begin
          tpag:=fpDinheiro;
          vPag:=dm_Dados.zqry_VDVENDAVLRLIQVENDA.ascurrency;
        end;}

      if zqry_VDVENDAcodtipocob.asinteger=3 then
      begin
        with pag.Add do
        begin
          tPag:=fpCartaoDebito;
          if nfce_vlrpago>0 then vPag := floattocurr(nfce_vlrpago);
          if nfce_vlrpago=0 then vPag := zqry_VDVENDAVLRLIQVENDA.ascurrency;
          tpIntegra:=tiPagIntegrado;
          CNPJ      := '00000000000100';
          cAut      := '1234567890';
          tband :=bcOutros;
        end;
      end;

      if zqry_VDVENDAcodtipocob.asinteger=4 then
      begin
        with pag.Add do
        begin
          tPag:=fpCartaoCredito;
          if nfce_vlrpago>0 then vPag := floattocurr(nfce_vlrpago);
          if nfce_vlrpago=0 then vPag := zqry_VDVENDAVLRLIQVENDA.ascurrency;
          tpIntegra:=tiPagIntegrado;
          CNPJ      := '00000000000100';
          cAut      := '123456789';
          tband :=bcOutros;
        end;
      end;

    InfAdic.infCpl     :=  'O Vlr. Aprox. Tributos Lei 12.741/12 de R$ 2,85';
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

if frmacbrnfe.cbModeloDF.ItemIndex = 0 then
begin
  FRMacbrnfe.ACBrNFe1.DANFE := FRMacbrnfe.ACBrNFeDANFeRL1;
end
else
begin
  FRMacbrnfe.ACBrNFe1.DANFE := FRMacbrnfe.ACBrNFeDANFCeFortes1 ;
end;
frmacbrnfe.LerConfiguracao;
end;
end;

procedure Tfrm_CON_PEDIDOS.lbl_RETCSTATClick(Sender: TObject);
begin
 if not Assigned(frm_dlg_cstat) then
    Application.CreateForm(Tfrm_dlg_cstat, frm_dlg_cstat);
  frm_dlg_cstat.show;
end;

procedure Tfrm_CON_PEDIDOS.btn_IMPRIMIRClick(Sender: TObject);
var
caminho,tipodoc:string;
begin
  frmacbrnfe.LerConfiguracao;
  if dm_dados.logomarca<>'' then frmacbrnfe.ACBrNFe1.DANFE.Logo:=dm_dados.logomarca;
  tipodoc:=copy(zqry_VDVENDACHAVENFEVENDA.asstring,21,2);
  if tipodoc='55' then
  begin
    frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
    caminho:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfe\20'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,3,2)+'\'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,5,2)+'\nfe\'+zqry_VDVENDACHAVENFEVENDA.asstring+'-nfe.xml';
  end;
  if tipodoc='65' then
  begin
    frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFCeFortes1;
    caminho:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfce\20'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,3,2)+'\'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,5,2)+'\nfce\'+zqry_VDVENDACHAVENFEVENDA.asstring+'-nfe.xml';
  end;
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
  frmacbrnfe.ACBrNFeDANFeRL1.NumCopias:=dm_dados.numvias;
  frmacbrnfe.ACBrNFeDANFeRL1.PathPDF:='..\pdf\';
  frmacbrnfe.ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure Tfrm_CON_PEDIDOS.btn_MAPAClick(Sender: TObject);
begin
if DBGrid1.DataSource.DataSet.IsEmpty then
begin
   MOSTRATELANOTIFICA('PEDIDO N�O LOCALIZADO','Escolha um pedido');
end
else
begin
  zqry_contaqtd.Close;
  zqry_contaqtd.SQL.Clear;
  zqry_contaqtd.SQL.Add('select codvenda, sum(qtditvenda) as somaitens from vditvenda where codvenda=:vendacod group by codvenda');
  zqry_contaqtd.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
  zqry_contaqtd.Open;
  NUMITENS:=zqry_contaqtdsomaitens.AsFloat;
  numlinhas:=zqry_VDITVENDA.recordcount;
  lbl_ITENS_LINHA.Caption:=floattostr(numitens)+' | ' +inttostr(numlinhas);

   // CONSULTA SE TEM RECEITUARIO
  IF DM_DADOS.zqry_SGFILIALRECAGRO.AsString='S' then
  begin
    zqry_VDITVENDA.First;
    while not zqry_VDITVENDA.eof do
    //if zqry_VDITVENDA_TEMRECEITA.AsString='S' then
    //begin
      //frm_cad_recagro.showmodal;
      //zqry_VDITVENDA.Next;
    //end
    //else
    //begin
      zqry_VDITVENDA.Next;
    end;
  end;
  //end;
  //FRM_REL_MAPAPEDIDOS.RLREPORT1.PREVIEW();
  ImageStream.Free;
  PngImage.Free;
end;

procedure Tfrm_CON_PEDIDOS.btn_PROCESSAENTREGAClick(Sender: TObject);
var
  venda, produto:integer;
  qtdentrega,prod_consig,prod_resid,sld_consig,sld_consig_novo,sld_resid_novo:double;
begin
  qtdentrega:=strtofloat(edt_QTDENTREGA.text);
  venda:=dm_DADOS.zqry_VDFUTURACODVDFUTURA.AsInteger;
  produto:=dm_Dados.zqry_VDFUTURACODPROD.AsInteger;
  prod_consig:=dm_dados.zqry_vdfutura_SLDCONSIGPROD.asfloat;
  prod_resid:=dm_Dados.zqry_VDFUTURA_SLDRESPROD.AsFloat;
  sld_consig_novo:=prod_consig-qtdentrega;
  sld_resid_novo:=dm_Dados.zqry_VDFUTURASLDRESID.asfloat+qtdentrega;
  EXECUTASGINICONSP;
  //showmessage(floattostr(sld_resid_novo));
  //consulta produto
  zqry_CONSIGPROD.Params.Clear;
  zqry_CONSIGPROD.Close;
  zqry_CONSIGPROD.SQL.Clear;
  zqry_CONSIGPROD.SQL.Add('select codprod,sldconsigprod from eqproduto where codprod=:prodcod');
  zqry_CONSIGPROD.ParamByName('prodcod').AsInteger:=produto;
  zqry_CONSIGPROD.Open;
  sld_consig:=zqry_CONSIGPRODSLDCONSIGPROD.AsFloat;
  //saldo consignado
  zqry_UPDDEL.Close;
  zqry_UPDDEL.SQL.Clear;
  zqry_UPDDEL.SQL.Add('update eqproduto set sldconsigprod=:consig where codprod=:prodcod');
  zqry_UPDDEL.ParamByName('consig').AsFloat:=sld_consig-qtdentrega;
  zqry_UPDDEL.ParamByName('prodcod').AsInteger:=produto;
  zqry_UPDDEL.ExecSQL;
  //
  zqry_UPDDEL.Close;
  zqry_UPDDEL.SQL.Clear;
  zqry_UPDDEL.SQL.Add('update vdfutura set sldresid=:residual, qtdultretirada=:qtd, dtultretirada=:data where codvdfutura=:futura and codprod=:prodcod');
  zqry_UPDDEL.ParamByName('residual').AsFloat:=sld_resid_novo;
  zqry_UPDDEL.ParamByName('prodcod').AsInteger:=produto;
  zqry_UPDDEL.ParamByName('qtd').AsFloat:=qtdentrega;
  zqry_UPDDEL.ParamByName('data').AsDateTime:=date;
  zqry_UPDDEL.ParamByName('futura').AsInteger:=venda;
  zqry_UPDDEL.ExecSQL;
  showmessage('Entrega Processada');
  edt_QTDENTREGA.text:='0';
  dm_dados.zqry_VDFUTURA.Params.Clear;
  dm_dados.zqry_VDFUTURA.Close;
  dm_dados.zqry_VDFUTURA.SQL.Clear;
  dm_dados.zqry_VDFUTURA.SQL.Add('select * from vdfutura where docvenda=:vendadoc');
  dm_dados.zqry_VDFUTURA.ParamByName('vendadoc').AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
  dm_dados.zqry_VDFUTURA.Open;
end;

procedure Tfrm_CON_PEDIDOS.OPCOESINTERNET;
var
  Registro: TRegistry;
begin
  //acertando op��es da internet (revogados / SSL / TSL)
  //verificar revoga��o de certificados do servidor
  Registro := TRegistry.Create(KEY_WRITE);
  Registro.RootKey := HKEY_CURRENT_USER;
  if registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet Settings', true) then begin
    Registro.WriteInteger('CertificateRevocation', 0);
  end;
  registro.CloseKey;
  //verificar se h� certificados revogados do fornecedor
  if registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\WinTrust\Trust Providers\Software Publishing', true) then begin
    Registro.WriteInteger('State', 146944);
  end;
  registro.CloseKey;
  //for�a para IE n�o ficar trabalhando off line
  if registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet Settings', true) then begin
    Registro.WriteInteger('GlobalUserOffline', 0);
  end;
  registro.CloseKey;
  //Usar SSL 3.0 / Usar TSL 1.0
  if registro.OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet Settings', true) then begin
    Registro.WriteInteger('SecureProtocols', 160);
  end;
  registro.CloseKey;
  registro.Free;
end;

procedure Tfrm_CON_PEDIDOS.pg_PEDIDOSChange(Sender: TObject);
begin
  minhaaba:=pg_PEDIDOS.ActivePageIndex;
end;

procedure Tfrm_CON_PEDIDOS.btn_EMITEAGRUPAClick(Sender: TObject);
begin
  TIPOMOVIMENTO:=0;
  zqry_VDVENDA.edit;
  ENVIANFE;
end;

procedure Tfrm_CON_PEDIDOS.btn_EMITENFCEClick(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
begin
if dm_dados.zqry_SGFILIALSATCFE.asstring='S' then
begin
  //EmiteSAT;
end
ELSE
BEGIN

if zqry_VDVENDAVLRPRODVENDA.asfloat=0.00 then
BEGIN
 mostratelaaviso('ESTE PEDIDO APARENTEMENTE FOI CANCELADO','prodcompra=0');
END;
if zqry_VDVENDACODTIPOMOV.AsInteger>=601 then
BEGIN
 mostratelaaviso('ESTE PEDIDO J� FOI FATURADO','');
END;
if (zqry_VDVENDAVLRPRODVENDA.asfloat>=0.00) AND (zqry_vdvendaCODTIPOMOV.AsInteger<=599) and (zqry_VDVENDACODTIPOMOV.AsInteger>=202) then
BEGIN
  zqry_VDVENDA.edit;
  vaux:=dm_dados.zqry_MAX_NFCEULTNFCE.asstring;
  vNumLote:='1';
  vSincrono:='0';
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;


 { if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;    }

  vSincrono := '0';
 { if not(InputQuery('WebServices Enviar', 'Envio S�ncrono(1=Sim, 0=N�o)', vSincrono)) then
    exit;               }

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;
  frmacbrnfe.LerConfiguracao;
  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  frmacbrnfe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  frmacbrnfe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
  frmacbrnfe.ACbrnfe1.Configuracoes.Geral.VersaoQRCode := veqr200;
  GerarNFCe(vAux);
  frmacbrnfe.acbrnfe1.Configuracoes.WebServices.TimeOut:=frmacbrnfe.seTIMEOUT.Value;
  frmacbrnfe.AcbrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := strtoint(frmacbrnfe.edtAguardar.Text);
  frmacbrnfe.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas      := strtoint(frmacbrnfe.edtIntervalo.Text);
  frmacbrnfe.ACBrNFe1.Configuracoes.WebServices.Tentativas               := strtoint(frmacbrnfe.edtTentativas.Text);
  //MOSTRATELANOTIFICA('NFCE '+vaux+' ser� impressa na Impressora Padr�o','Aten��o para impress�o...');
  frmacbrnfe.acbrnfe1.NotasFiscais.GerarNFe;
  frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFCeFortes1 ;
  frmacbrnfe.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largura;
  frmacbrnfe.ACBrNFe1.Enviar(vNumLote,True,Sincrono);

  chave_nfe:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
  recibo_nfe:=frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt; //numero do protocolo

  if not Sincrono then
  begin
    //
  end
  else
  begin
    //
  end;

  if (frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat = 100) or (frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat = 110) then // Autorizado o uso da NF-e ou denegada
  begin
    MOSTRATELANOTIFICA('Nota Emitida '+vaux+' |Recibo '+recibo_nfe,'Chave '+chave_nfe);
    sleep(500);
    //showmessage('Chave NFe '+chave_nfe+' Recibo '+ recibo_nfe);
    ncaminho:='..\nfe\nfe\'+dm_dados.zqry_SGFILIALCNPJFILIAL.Value+'\nfce\'+inttostr(currentyear)+formatdatetime('mm',date)+'\nfce\'+chave_nfe+'-nfe.xml';
    lbl_CHAVENFCE.caption:=chave_nfe;
    lbl_SITUACAO.caption:='Situa��o '+inttostr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat);
    zqry_MAX.Close;
    zqry_MAX.SQL.Clear;
    zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
    zqry_MAX.Open;
    dm_dados.zqry_SGNF.Close;
    dm_dados.zqry_SGNF.Open;
    dm_dados.zqry_sgnf.Append;
    dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
    dm_Dados.zqry_SGNFCHAVE.Value:=chave_nfe;
    dm_dados.zqry_SGNFDATA.value:=date;
    dm_dados.zqry_SGNFHORA.Value:=time;
    dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
    dm_dados.zqry_SGNFCODMOV.AsInteger:=zqry_VDVENDACODTIPOMOV.AsInteger;
    dm_Dados.zqry_SGNFSITUACAO.Value:='NFCe Venda Emitida';
    dm_dados.zqry_sgnfvalor.asfloat:=zqry_VDVENDAVLRLIQVENDA.AsFloat;
    dm_dados.zqry_SGNFNFCE.AsString:='S';
    dm_dados.zqry_SGNFENVIADO.AsString:='S';
    DM_dADOS.zqry_SGNFNUMERO.asinteger:=dm_Dados.zqry_MAX_NFCEULTNFCE.asinteger;
	  dm_Dados.zqry_SGNF.post;
    dm_dados.zqry_SGNF.applyupdates();
    // Conecta Nuvem
	  EXECUTASGINICONSP;
    // Gravar na Sequencia NFCe
    numnf:=dm_dados.zqry_MAX_NFCEULTNFCE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
    cod_pedido:=zqry_VDVENDACODVENDA.AsInteger;
    dm_Dados.zqry_SGSEQUENCIA.Close;
    dm_dados.zqry_SGSEQUENCIA.SQL.Clear;
    dm_Dados.zqry_SGSEQUENCIA.SQL.ADD('update sgsequencia set nroseq=:sequencia where sgtab=:tabsg');
    dm_Dados.zqry_sgsequencia.parambyname('sequencia').asinteger:=numnf+1;
    dm_dados.zqry_sgsequencia.parambyname('tabsg').asstring:='NC';
    dm_dados.zqry_sgsequencia.execsql;
    MostraTelaAguarde('Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
    dm_Dados.zqry_SGSEQUENCIA.Close;
    fechatelaaguarde;
    // Gravar dados no Pedidos
  	EXECUTASGINICONSP;
    try
  	  MostraTelaAguarde('Gravandos dados no Pedido de Venda');
      zqry_UPDATE.SQL.Clear;
      zqry_UPDATE.SQL.Add('update vdvenda set codtipomov=:mov, serie=:serienf,docvenda=:vendadoc, chavenfevenda=:chave, protocolo=:prot, caminho=:path where codvenda=:venda and codemp=:empcod');
      zqry_UPDATE.parambyname('mov').asinteger:=601;
      zqry_UPDATE.paramByName('venda').AsInteger:=cod_pedido;//dm_Dados.zqry_VDVENDACODVENDA.asinteger;
      zqry_UPDATE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      zqry_UPDATE.parambyname('serienf').asstring:='1';
      zqry_UPDATE.parambyname('vendadoc').asinteger:= frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.Ide.nNF;
      zqry_UPDATE.parambyname('chave').asstring:=chave_nfe;
      zqry_UPDATE.ParamByName('prot').AsString:=frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
      zqry_UPDATE.ParamByName('path').AsString:=ncaminho;
      zqry_UPDATE.EXECSQL;
      fechatelaaguarde;
    except
      on E: Exception do
      showmessage(E.ClassName+' erro gerado com a mensagem ao atualizar Venda : '+E.Message);
    end;
  end
  else
  begin
    SHOWMESSAGE('NFCE n�o emitida'#13'Verifique sua conex�o a internet ou a conex�o com a Sefaz'#13'CLIQUE NOVAMENTE NO BOT�O DE EMISS�O');
    ZerarTxt('..\nfe\log\log_nfe.txt');
    ZerarTxt('..\nfe\log\log_comp.txt');
    Zerartxt('..\nfe\log_nfe.txt');
    fechaconexoes;
  end;
frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
END
else
begin
  MOSTRATELAAVISO('ESTE PEDIDO N�O � EDIT�VEL','');
end;
END;
end;

procedure Tfrm_CON_PEDIDOS.btn_EMITENOTA_COMPRAClick(Sender: TObject);
begin
TIPOMOVIMENTO:=1;
AGRUPADOS:=0;
if dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat=0.00 then mostratelaaviso('ESTE PEDIDO APARENTEMENTE FOI CANCELADO','prodcompra=0');
if dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger>=601 then mostratelaaviso('ESTE PEDIDO J� FOI FATURADO','');
if (dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.asfloat>=0.00) AND (dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger<=399) and (dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger>=202) then
BEGIN
  dm_dados.zqry_CPCOMPRA.edit;
  zqry_FORNECCOMPRA.Params.Clear;
  zqry_FORNECCOMPRA.Close;
  zqry_FORNECCOMPRA.SQL.Clear;
  zqry_FORNECCOMPRA.SQL.Add('SELECT * FROM CPFORNECED WHERE CODFOR=:FORCOD AND CODEMP=:EMPCOD');
  zqry_FORNECCOMPRA.ParamByName('FORCOD').AsInteger:=DM_dADOS.zqry_CPCOMPRACODFOR.AsInteger;
  zqry_FORNECCOMPRA.ParamByName('EMPCOD').AsInteger:=dm_DADOS.codemp;
  zqry_FORNECCOMPRA.Open;
  ENVIANFE_ENT;
END
else
begin
  MOSTRATELAAVISO('ESTE PEDIDO N�O � EDIT�VEL','');
end;
end;

procedure Tfrm_CON_PEDIDOS.btn_EMITENOTAClick(Sender: TObject);
begin
if (minhaaba=0) or (minhaaba=2) then
begin
  unfe.observacao:=edt_obs.text;
  EMITENFESAIDA;
end;

{
  pg_retornos.ActivePage:=tabsheet1;
  TIPOMOVIMENTO:=0;
  AGRUPADOS:=0;
  if dm_dados.zqry_VDVENDAVLRPRODVENDA.asfloat=0.00 then mostratelaaviso('ESTE PEDIDO APARENTEMENTE FOI CANCELADO','prodcompra=0');
  if dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger>=601 then mostratelaaviso('ESTE PEDIDO J� FOI FATURADO','');
  if (dm_dados.zqry_VDVENDAVLRPRODVENDA.asfloat>=0.00) AND (dm_dados.zqry_vdvendaCODTIPOMOV.AsInteger<=599) and (dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger>=202) then
  BEGIN
    dm_dados.zqry_VDVENDA.edit;
    ENVIANFE;
  END
  else
  begin
    MOSTRATELAAVISO('ESTE PEDIDO N�O � EDIT�VEL','');
  end;  }

end;

procedure Tfrm_CON_PEDIDOS.ENVIANFE_ENT;
var
  erro,path:string;
begin
// AJUSTA PROPRIEDADES DE ENVIO DA NFE NAS OP��ES DA INTERNET
// OPCOESINTERNET; //PASSAR PARA AS PREFERENCIAS
//
FormatSettings.DecimalSeparator := '.';
//deletefile(s_NFe_Ent);
ZerarTxt('..\nfe\log\log_nfe.txt');
ZerarTxt('..\nfe\log\log_comp.txt');
//ZerarTxt(s_NFe_Resp);
//pathnfesys:=s_Path_NFe;
//sArquivoEntNfe := s_NFe_Ent;  // ExtractFilePath(Application.ExeName) + 'ENTNFE.TXT';
//sArquivoSaiNfe := s_NFe_Resp; // ExtractFilePath(Application.ExeName) + 'SAINFE.TXT';
AssignFile(arq, 'teste.txt');
// Rewrite(arq);
larq := TStringList.Create;
NUMVENDA:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
//SHOWMESSAGE(INTTOSTR(NUMVENDA));
larq.add('NFe.CriarEnviarNFe("');
CRIARNFE;
larq.add('InfCpl= ' + edt_obs_ent.text + '",1,0)');
  larq.SaveToFile(sArquivoEntNfe);
  i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
  while i_Tam_Arq = 0 do
    i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
    FechaTelaAguarde;
    lerlog  :=TIniFile.Create('..\nfe\sai\entnfe-resp.txt');
    sleep(2000);
//    lerlog  :=TIniFile.Create('C:\Sistema\Integra48\Win32\nfe\sai\entnfe-resp.txt');


    nfegerado:='NFE'+dm_dados.zqry_MAX_NFCEULTNFCE.asstring+'';
    nchave:=lerlog.ReadString(nfegerado,'ChNFe','');
    ncaminho:=lerlog.ReadString(nfegerado,'Arquivo','');
    nfedatarec:=lerlog.ReadString(nfegerado,'DhRecbto','');
    nferec:=lerlog.ReadString('retorno','NRec','');
    nfexmotivo:=lerlog.ReadString('retorno','XMotivo','');
    nfecstat:=lerlog.ReadString('retorno','CStat','');
    lerlog.Free;

	//SE NOTA DENEGADA
    if (nfecstat='110') or (nfecstat='105') or (nfecstat='205') or (nfecstat='233') or (nfecstat='234') or (nfecstat='301') or (nfecstat='302')  then
    begin
      zqry_MAX.Close;
      zqry_MAX.SQL.Clear;
      zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
      zqry_MAX.Open;
  //  showmessage('parte 1 - Gravar na SGNF');
      dm_dados.zqry_SGNF.Close;
      dm_dados.zqry_SGNF.Open;
      dm_dados.zqry_SGNF.Append;
      dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
      dm_Dados.zqry_SGNFCHAVE.Value:=nchave;
      dm_dados.zqry_SGNFDATA.value:=date;
      dm_dados.zqry_SGNFHORA.Value:=time;
      dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
      dm_dados.zqry_SGNFCODMOV.AsInteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
      dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE DENEGADA ou EM PROCESSAMENTO';
      DM_DADOS.zqry_SGNFREFDEVOLUCAO.AsString:=edt_CHAVE.Text;
      dm_dados.zqry_SGNFNFCE.AsString:='N';
      DM_DADOS.zqry_SGNFVALOR.Value:=TOTALNOTA;
      dm_dados.zqry_SGNFvalor.asfloat:=zqry_VDVENDAVLRLIQVENDA.AsFloat;
      numeronota:=dm_Dados.zqry_SGSEQUENCIANROSEQ.value;
      DM_dADOS.zqry_SGNFNUMERO.asInteger:=dm_Dados.zqry_SGSEQUENCIANROSEQ.asinteger;
      dm_dados.zqry_SGNF.post;
      ExibirDenegada;
      //showmessage('Aten��o Usuario'#13'Nota DENEGADA ou em PROCESSAMENTO'#13'Anote a Chave para consulta futura');//
      showmessage(edt_chave.Text);
      EXECUTASGINICONSP;
      numnf:=dm_dados.zqry_MAX_NFCEULTNFCE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
      dm_Dados.zqry_sgsequencia.Close;
      dm_dados.zqry_SGSEQUENCIA.sql.clear;
      dm_Dados.zqry_sgsequencia.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
      dm_dados.zqry_sgsequencia.ParamByName('seq').asinteger:=numnf+1;
      dm_Dados.zqry_sgsequencia.ParamByName('tabsg').asstring:='NF';
      dm_Dados.zqry_sgsequencia.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_sgsequencia.execsql;
      MostraTelaAguarde('Nota n�o emitida. *|DENEGADA|*. Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
      dm_Dados.zqry_SGSEQUENCIA.Close;
      dm_Dados.zqry_SGSEQUENCIA.Open;
      fechatelaaguarde;
    end;
	//SE NOTA AUTORIZADA
    frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
    if (nfecstat='100') or (nfecstat='104') then
    begin
      if (nfecstat='104') then showmessage('Lote Processado');
      zqry_MAX.Close;
      zqry_MAX.SQL.Clear;
      zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
      zqry_MAX.Open;
  //  showmessage('parte 1 - Gravar na SGNF');
      mostratelaaguarde('Gravando Dados no Banco');
      dm_dados.zqry_SGNF.Close;
      dm_dados.zqry_SGNF.Open;
      dm_dados.zqry_SGNF.Append;
      dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
      dm_Dados.zqry_SGNFCHAVE.Value:=nchave;
      dm_dados.zqry_SGNFDATA.value:=date;
      dm_dados.zqry_SGNFHORA.Value:=time;
      DM_DADOS.zqry_SGNFVALOR.Value:=TOTALNOTA;
      dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
      dm_dados.zqry_SGNFCODMOV.AsInteger:=dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger;
      if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then
      begin
        dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE DEVOLUCAO EMITIDA';
        DM_DADOS.zqry_SGNFREFDEVOLUCAO.AsString:=edt_CHAVE.Text;
      end
      else
      begin
        dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE COMPRA EMITIDA';
      end;
      dm_dados.zqry_SGNFNFCE.AsString:='N';
      DM_DADOS.zqry_SGNFENVIADO.AsString:='S';
      numeronota:=dm_Dados.zqry_MAX_NFCEULTNFCE.asinteger;
      DM_dADOS.zqry_SGNFNUMERO.asInteger:=dm_dados.zqry_MAX_NFCEULTNFCE.asinteger;
      dm_Dados.zqry_SGNF.Post;
      dm_dados.zqry_SGNF.ApplyUpdates;
      FechaTelaAguarde;
      // Conecta Nuvem
      {MostraTelaAguarde('Gravando Dados na Nuvem');
      try
        dm_dados.MysqlConectar.Connected:=false;
        dm_dados.MysqlConectar.Connected:=true;
        dm_dados.cloud_sgnf.Close;
        dm_dados.cloud_sgnf.Open;
        dm_Dados.cloud_sgnf.Append;
        dm_dados.cloud_sgnfcnpj.AsString:=dm_dados.zqry_SGFILIALCNPJFILIAL.AsString;
        dm_Dados.cloud_sgnfchave.AsString:=nchave;
        if frm_principal.codintegra>1 then dm_dados.cloud_sgnfcodemp.asinteger:=frm_principal.codintegra;
        if frm_principal.codintegra<1 then dm_dados.cloud_sgnfcodemp.AsInteger:=0;
        if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then
        begin
          dm_DADOS.cloud_sgnfsituacao.asstring:='NFE DEVOLUCAO EMITIDA';
        end
        else
        begin
          dm_DADOS.cloud_sgnfsituacao.asstring:='NFE COMPRA EMITIDA';
        end;
        dm_Dados.cloud_sgnfvalor.AsFloat:=totalnota;
        dm_dados.cloud_sgnfnfce.AsString:='N';
        dm_dados.cloud_sgnf.Post;
      except
      on E: Exception do
        showmessage(E.ClassName+' erro gerado com a mensagem : '+E.Message);
      end;}
      FechaTelaAguarde;
        // Guardou dados na Nuvem
      EXECUTASGINICONSP;
      numnf:=dm_dados.zqry_MAX_NFCEULTNFCE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
      dm_Dados.zqry_sgsequencia.Close;
      dm_dados.zqry_SGSEQUENCIA.sql.clear;
      dm_Dados.zqry_sgsequencia.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
      dm_dados.zqry_sgsequencia.ParamByName('seq').asinteger:=numnf+1;
      dm_Dados.zqry_sgsequencia.ParamByName('tabsg').asstring:='NF';
      dm_Dados.zqry_sgsequencia.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_sgsequencia.execsql;
      MostraTelaAguarde('Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
      dm_Dados.zqry_SGSEQUENCIA.Close;
      fechatelaaguarde;
      MostraTelaAguarde('Gravandos dados de Movimento no Pedido de Compra');
      NUMVENDA:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
      if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger=212 then
      begin
	  	dm_dados.zqry_cpcompra.Close;
        dm_dados.zqry_cpcompra.SQL.Clear;
        dm_dados.zqry_CPCOMPRA.SQL.Add('update cpcompra set codtipomov=702 where codcompra='+inttostr(numvenda)+' and codemp='+inttostr(dm_Dados.codemp));
        dm_dados.zqry_CPCOMPRA.EXECSQL;
      end
      else
      begin
        EXECUTASGINICONSP;
        dm_Dados.zqry_CPCOMPRA.Params.Clear;
        dm_dados.zqry_CPCOMPRA.Close;
        dm_dados.zqry_CPCOMPRA.SQL.Clear;
        dm_dados.zqry_CPCOMPRA.SQL.Add('update cpcompra set codtipomov=:tipomov, serie=:serienf,dtemitcompra=:dtsaida,chavenfecompra=:chave,doccompra=:vendadoc');
        dm_dados.zqry_CPCOMPRA.SQL.Add('where codcompra='+inttostr(numvenda)+' and codemp='+inttostr(dm_dados.codemp));
        dm_dados.zqry_CPCOMPRA.ParamByName('tipomov').AsInteger:=601;
        dm_dados.zqry_CPCOMPRA.ParamByName('serienf').AsInteger:=1;
        dm_dados.zqry_CPCOMPRA.ParamByName('dtsaida').AsDateTime:=now;
        dm_dados.zqry_CPCOMPRA.ParamByName('chave').asstring:=nchave;
        dm_dados.zqry_CPCOMPRA.ParamByName('vendadoc').asinteger:=numeronota;
        dm_Dados.zqry_CPCOMPRA.ExecSQL;
      end;
      fechatelaaguarde;

      if dm_dados.zqry_CPCOMPRACODTIPOMOV.asinteger<>212 then
      begin
      MostraTelaAguarde('Gravandos dados Valores das Parcelas no Contas a Pagar');
      EXECUTASGINICONSP;
      dm_Dados.zqry_FNITPAGAR.Params.Clear;
      dm_dados.zqry_FNITPAGAR.Close;
      dm_dados.zqry_FNITPAGAR.SQL.Clear;
      dm_dados.zqry_FNITPAGAR.SQL.Add('update fnitpagar set vlrparcitpag=:valor where codpag=:reccod and nparcpag=:parcela');
      dm_dados.zqry_FNITPAGAR.ParamByName('valor').AsFloat:=valorparcela+somast;
      dm_dados.zqry_FNITPAGAR.ParamByName('reccod').AsFloat:=dm_dados.zqry_FNPAGARCODPAG.AsInteger;
      dm_dados.zqry_FNITPAGAR.ParamByName('parcela').Asinteger:=1;
      dm_dados.zqry_FNITPAGAR.ExecSQL;
      fechatelaaguarde;
      end;
      larq := TStringList.Create;
      if dm_dados.logomarca<>'' then
      begin
        frmacbrnfe.ACBrNFe1.DANFE.Logo:=dm_dados.logomarca;
      end;
      frmacbrnfe.ACBrNFeDANFeRL1.NumCopias:=dm_dados.numvias;
      frmacbrnfe.ACBrNFeDANFeRL1.PathPDF:='..\pdf\';
      frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
      frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(dm_dados.zqry_SGPREFERE1PATHSERVER.value+ncaminho,False);
      frmacbrnfe.ACBrNFe1.NotasFiscais.Imprimir;
      larq.SaveToFile(sArquivoEntNfe);
      larq.LoadFromFile(sArquivoSaiNfe);

      if dm_Dados.ambiente='1' then
      begin
        mostratelaaguarde('Guardando XML conforme legisla��o');
        idftp1.Disconnect();
        idftp1.Host:='nonoelemento.com.br';
        idftp1.Port:=21;
        idftp1.Username:='notas@nonoelemento.com.br';
        idftp1.Password:='px4b7470#ISA';
        idftp1.Passive:=true;
        try
        { Espera at� 10 segundos pela conex�o }
          IdFTP1.Connect();
          idFTP1.ChangeDir('/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/');
          idftp1.Put(ncaminho,'',true);
        except
        on E: Exception do
         Erro:= E.Message;
        end;

        fechatelaaguarde;
        idftp1.Disconnect();
      end;

      if dm_Dados.zqry_SGFILIALPATH_COPIA_NFE.Value<>'' then
      begin
        path:=dm_Dados.zqry_SGFILIALPATH_COPIA_NFE.AsString;
        CopyFile(pchar(ncaminho), pchar(path+nchave+'-nfe.xml'), False);
      end;
      FECHACONEXOES;
    end
    else
    begin
      showmessage('Nota Fiscal n�o emitida');
      FECHACONEXOES;
    end;
end;

procedure Tfrm_CON_PEDIDOS.ENVIANFE;
var
  erro,path:string;
begin
  // AJUSTA PROPRIEDADES DE ENVIO DA NFE NAS OP��ES DA INTERNET
  // OPCOESINTERNET; //PASSAR PARA AS PREFERENCIAS
  FormatSettings.DecimalSeparator := '.';
  //deletefile(s_NFe_Ent);
  ZerarTxt('..\nfe\log\log_nfe.txt');
  ZerarTxt('..\nfe\log\log_comp.txt');
  Zerartxt('..\nfe\sai\Entnfe-resp.txt');
  sleep(1000);
  //ZerarTxt(s_NFe_Resp);
  //pathnfesys:=s_Path_NFe;
  //sArquivoEntNfe := s_NFe_Ent;  // ExtractFilePath(Application.ExeName) + 'ENTNFE.TXT';
  //sArquivoSaiNfe := s_NFe_Resp; // ExtractFilePath(Application.ExeName) + 'SAINFE.TXT';
  AssignFile(arq, 'teste.txt');
  // Rewrite(arq);
  larq := TStringList.Create;
  NUMVENDA:=zqry_VDVENDACODVENDA.AsInteger;
  larq.add('NFe.CriarEnviarNFe("');
  // CHAMA FUNCAO PARA CRIAR NOTA
  CRIARNFE;
  // RETORNA DA FUNCAO CRIAR NOTA
  larq.add('InfCpl= ' + '",1,0)');
  larq.SaveToFile(sArquivoEntNfe);
  i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
  //showmessage(inttostr(i_tam_arq));
  while i_Tam_Arq = 0 do
    i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
    FechaTelaAguarde;
    //lerlog  :=TIniFile.Create('C:\Sistema\Integra48\Win32\nfe\sai\entnfe-resp.txt');
    lerlog  :=TIniFile.Create('..\nfe\sai\Entnfe-resp.txt');
    nfegerado:='NFE'+dm_dados.zqry_MAX_NFCEULTNFCE.asstring+'';
    //showmessage(nfegerado);
    nchave:=lerlog.ReadString(nfegerado,'ChNFe','');
    //showmessage(nchave);
    ncaminho:=lerlog.ReadString('NFE_Arq'+dm_dados.zqry_MAX_NFCEULTNFCE.asstring+'','Arquivo','');
    //showmessage(ncaminho);
    nfedatarec:=lerlog.ReadString(nfegerado,'DhRecbto','');
    nferec:=lerlog.ReadString('retorno','NRec','');
    nfexmotivo:=lerlog.ReadString('retorno','XMotivo','');
    nfecstat:=lerlog.ReadString(nfegerado,'CStat','');
   // showmessage(lbl_cstat.Caption);
   // showmessage(nfecstat);
   // showmessage(lbl_cstat.caption+' variavel '+nfecstat);
    lerlog.Free;
	  //SE NOTA DENEGADA
    if (nfecstat='110') or (nfecstat='105') or (nfecstat='205') or (nfecstat='233') or (nfecstat='234') or (nfecstat='301') or (nfecstat='302')  then
    begin
      zqry_MAX.Close;
      zqry_MAX.SQL.Clear;
      zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
      zqry_MAX.Open;
      dm_dados.zqry_SGNF.Close;
      dm_dados.zqry_SGNF.Open;
      dm_dados.zqry_SGNF.Append;
      dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
      dm_Dados.zqry_SGNFCHAVE.Value:=nchave;
      dm_dados.zqry_SGNFDATA.value:=date;
      dm_dados.zqry_SGNFHORA.Value:=time;
      dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
      dm_dados.zqry_SGNFCODMOV.AsInteger:=zqry_VDVENDACODTIPOMOV.AsInteger;
      dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE DENEGADA ou EM PROCESSAMENTO';
      DM_DADOS.zqry_SGNFREFDEVOLUCAO.AsString:=edt_CHAVE.Text;
      dm_dados.zqry_SGNFNFCE.AsString:='N';
      dm_dados.zqry_SGNFvalor.value:=TOTALNOTA;//dm_Dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
      numeronota:=dm_Dados.zqry_SGSEQUENCIANROSEQ.value;
      DM_dADOS.zqry_SGNFNUMERO.asInteger:=dm_Dados.zqry_SGSEQUENCIANROSEQ.value;
      dm_dados.zqry_SGNF.post;
      showmessage('Aten��o Usuario'#13'Nota DENEGADA ou em PROCESSAMENTO'#13'Anote a Chave para consulta futura');
      showmessage(edt_chave.Text);
      EXECUTASGINICONSP;
      numnf:=dm_dados.zqry_MAX_NFCEULTNFCE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
      dm_Dados.zqry_sgsequencia.Close;
      dm_dados.zqry_SGSEQUENCIA.sql.clear;
      dm_Dados.zqry_sgsequencia.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
      dm_dados.zqry_sgsequencia.ParamByName('seq').asinteger:=numnf+1;
      dm_Dados.zqry_sgsequencia.ParamByName('tabsg').asstring:='NF';
      dm_Dados.zqry_sgsequencia.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_sgsequencia.execsql;
      showmessage('Nota n�o emitida. *|DENEGADA|*. Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
      dm_Dados.zqry_SGSEQUENCIA.Close;
      dm_Dados.zqry_SGSEQUENCIA.Open;
    //  fechatelaaguarde;
    end;
	//SE NOTA AUTORIZADA
    if (nfecstat='100') or (nfecstat='104') then
    begin
      if (nfecstat='104') then showmessage('Lote Processado');
      zqry_MAX.Close;
      zqry_MAX.SQL.Clear;
      zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
      zqry_MAX.Open;
      // GRAVAR NA SGNF
      try
        dm_dados.zqry_SGNF.Close;
        dm_dados.zqry_SGNF.Open;
        dm_dados.zqry_SGNF.Append;
        dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
        dm_Dados.zqry_SGNFCHAVE.Value:=nchave;
        dm_dados.zqry_SGNFDATA.value:=date;
        dm_dados.zqry_SGNFHORA.Value:=time;
        dm_DADOS.zqry_SGNFVALOR.value:=TOTALNOTA;//dm_dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
        dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
        dm_dados.zqry_SGNFCODMOV.AsInteger:=dm_dados.zqry_VDVENDACODTIPOMOV.AsInteger;
        if zqry_VDVENDACODTIPOMOV.asinteger=202 then
        begin
          dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE DEVOLUCAO EMITIDA';
          DM_DADOS.zqry_SGNFREFDEVOLUCAO.AsString:=edt_CHAVE.Text;
        end
        else
        begin
          dm_DADOS.zqry_SGNFSITUACAO.Value:='NFE VENDA EMITIDA';
        end;
        dm_dados.zqry_SGNFNFCE.AsString:='N';
        DM_DADOS.zqry_SGNFENVIADO.AsString:='S';
        numeronota:=dm_dados.zqry_MAX_NFeULTNFe.asinteger;
        DM_dADOS.zqry_SGNFNUMERO.asInteger:=dm_Dados.zqry_max_nfeultnfe.asinteger;
        dm_Dados.zqry_SGNF.Post;
        dm_dados.zqry_SGNF.ApplyUpdates;
        except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado ao gravar na SGNF : '+E.Message);
      end;
      // CONECTA NUVEM E GUARDA DADOS DA NF
      {try
        dm_dados.MysqlConectar.Connected:=false;
        dm_dados.MysqlConectar.Connected:=true;
        dm_dados.cloud_sgnf.Close;
        dm_dados.cloud_sgnf.Open;
        dm_Dados.cloud_sgnf.Append;
        dm_dados.cloud_sgnfcnpj.AsString:=dm_dados.zqry_SGFILIALCNPJFILIAL.AsString;
        dm_Dados.cloud_sgnfchave.AsString:=nchave;
        if frm_principal.codintegra>1 then dm_dados.cloud_sgnfcodemp.asinteger:=frm_principal.codintegra;
        if frm_principal.codintegra<1 then dm_dados.cloud_sgnfcodemp.AsInteger:=0;
        if dm_dados.zqry_VDVENDACODTIPOMOV.asinteger=202 then
        begin
          dm_DADOS.cloud_sgnfsituacao.asstring:='NFE DEVOLUCAO EMITIDA';
        end
        else
        begin
          dm_DADOS.cloud_sgnfsituacao.asstring:='NFE VENDA EMITIDA';
        end;
        dm_Dados.cloud_sgnfvalor.AsFloat:=totalnota;
        dm_dados.cloud_sgnfnfce.AsString:='N';
        dm_dados.cloud_sgnf.Post;
        except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado ao guardar na Nuvem : '+E.Message);
      end;}
      // CONECTA E GUARDA RASTREIO DE PRODUTOS
      MostraTelaAguarde('Gravandos dados de Rastreio');
      try
        zqry_VDITVENDA.first;
        while not zqry_VDITVENDA.eof do
        begin
          dm_dados.zqry_EQLOTE.params.Clear;
          dm_Dados.zqry_EQLOTE.Close;
          dm_Dados.zqry_EQLOTE.SQL.Clear;
          dm_dados.zqry_EQLOTE.SQL.Add('select * from eqlote where codprod=:prodcod and codemp=:empcod and codlote=:lotecod');
          dm_dados.zqry_EQLOTE.ParamByName('prodcod').AsInteger:=zqry_VDITVENDACODPROD.AsInteger;
          dm_dados.zqry_EQLOTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
          dm_Dados.zqry_EQLOTE.ParamByName('lotecod').AsString:=zqry_VDITVENDACODLOTE.AsString;
          dm_dados.zqry_EQLOTE.Open;
          if dm_dados.zqry_EQLOTE.IsEmpty then
          begin
            //
          end
          else
          begin
              {dm_dados.MysqlConectar.Connected:=false;
              dm_dados.MysqlConectar.Connected:=true;
              dm_dados.cloud_sgrastreio.Close;
              dm_dados.cloud_sgrastreio.Open;
              dm_Dados.cloud_sgrastreio.Append;
              dm_dados.cloud_SGRASTREIOcnpjemite.asstring:=dm_dados.zqry_SGFILIALCNPJFILIAL.AsString;
              dm_Dados.cloud_SGRASTREIOcnpjdest.AsString:=dm_dados.zqry_VDVENDA_CNPJCLIENTE.AsString;
              dm_dados.cloud_SGRASTREIOcodprod.AsInteger:=zqry_VDITVENDACODPROD.AsInteger;
              dm_Dados.cloud_SGRASTREIOlote.AsString:=DM_DADOS.zqry_EQLOTECODLOTE.AsString;
              DM_DADOS.cloud_SGRASTREIOqtd.AsFloat:=zqry_VDITVENDAQTDITVENDA.AsFloat;
              DM_DADOS.cloud_SGRASTREIOnumnf.AsInteger:= strtoint(frm_principal.db_NFE.caption);
              dm_dados.cloud_sgRASTREIO.post; }
          end;
          zqry_VDITVENDA.Next;
        end;
      except
      on E: Exception do
        showmessage(E.ClassName+' erro gerado ao guardar Rastreio : '+E.Message);
      end;
      fechatelaaguarde;

      // ATUALIZA SEQUENCIA
      try
        EXECUTASGINICONSP;
        numnf:=dm_dados.zqry_MAX_NFEULTNFE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
        dm_Dados.zqry_sgsequencia.Close;
        dm_dados.zqry_SGSEQUENCIA.sql.clear;
        dm_Dados.zqry_sgsequencia.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
        dm_dados.zqry_sgsequencia.ParamByName('seq').asinteger:=numnf+1;
        dm_Dados.zqry_sgsequencia.ParamByName('tabsg').asstring:='NF';
        dm_Dados.zqry_sgsequencia.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_dados.zqry_sgsequencia.execsql;
        MostraTelaAguarde('Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
        dm_Dados.zqry_SGSEQUENCIA.Close;
        fechatelaaguarde;
        except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado ao gravar sequencia : '+E.Message);
      end;

      //
      MostraTelaAguarde('Gravandos dados de Movimento no Pedido de Venda');
      NUMVENDA:=zqry_VDVENDACODVENDA.AsInteger;
      if frm_CON_PEDIDOS.agrupados=1 then
      begin
        EXECUTASGINICONSP;
        zqry_VDVENDA.Close;
        zqry_VDVENDA.SQL.Clear;
        zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=:tipomov,serie=:serienf, dtsaidavenda=:dtsaida, chavenfevenda=:chave,docvenda=:vendadoc');
        zqry_VDVENDA.SQL.Add('where codvenda in('+frm_CON_PEDIDOS.edit3.text+') and codemp='+inttostr(dm_Dados.codemp));
        zqry_VDVENDA.ParamByName('tipomov').AsInteger:=601;
        zqry_VDVENDA.ParamByName('serienf').AsInteger:=1;
        zqry_VDVENDA.ParamByName('dtsaida').AsDateTime:=now;
        zqry_VDVENDA.ParamByName('chave').asstring:=nchave;
        zqry_VDVENDA.ParamByName('vendadoc').asinteger:=numeronota;
        zqry_VDVENDA.execsql;
      end
      else
      begin
        if zqry_VDVENDACODTIPOMOV.asinteger=202 then
        begin
          zqry_vdvenda.Close;
          zqry_VDVENDA.SQL.Clear;
          zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=702 where codvenda='+inttostr(numvenda)+' and codemp='+inttostr(dm_dados.codemp));
          zqry_VDVENDA.EXECSQL;
        end
        else
        begin
          EXECUTASGINICONSP;
          zqry_VDVENDA.Params.Clear;
          zqry_VDVENDA.Close;
          zqry_VDVENDA.SQL.Clear;
          zqry_VDVENDA.SQL.Add('update vdvenda set codtipomov=:tipomov, serie=:serienf,dtsaidavenda=:dtsaida,chavenfevenda=:chave,docvenda=:vendadoc');
          zqry_VDVENDA.SQL.Add('where codvenda='+inttostr(numvenda)+' and codemp='+inttostr(dm_dados.codemp));
          zqry_VDVENDA.ParamByName('tipomov').AsInteger:=601;
          zqry_VDVENDA.ParamByName('serienf').AsInteger:=1;
          zqry_VDVENDA.ParamByName('dtsaida').AsDateTime:=now;
          zqry_VDVENDA.ParamByName('chave').asstring:=nchave;
          zqry_VDVENDA.ParamByName('vendadoc').asinteger:=numeronota;
          zqry_VDVENDA.ExecSQL;
          //dm_dados.Zqry_VDVENDA.Open;
          end;
      end;
      fechatelaaguarde;
      // GRAVA VALOR NAS PARCELA RECICMPF=1 E N�O � DEVOLU��O
      try
        if (recicmpf=1) and (zqry_VDVENDACODTIPOMOV.ASINTEGER<>202) then
        begin
          MostraTelaAguarde('Gravandos dados Valores das Parcelas no Contas a Receber');
          EXECUTASGINICONSP;
          dm_Dados.zqry_FNITRECEBER.Params.Clear;
          dm_dados.zqry_fnitreceber.Close;
          dm_dados.Zqry_fnitreceber.SQL.Clear;
          dm_dados.zqry_FNITRECEBER.SQL.Add('update fnitreceber set vlrparcitrec=:valor where codrec=:reccod and nparcitrec=:parcela');
          dm_dados.zqry_FNITRECEBER.ParamByName('valor').AsFloat:=valorparcela+somaicms;
          dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsFloat:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
          dm_dados.zqry_FNITRECEBER.ParamByName('parcela').Asinteger:=1;
          dm_dados.zqry_FNITRECEBER.ExecSQL;
          fechatelaaguarde;
        end;
        except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado ao gravar valor nas parcelas recicmpf 1 : '+E.Message);
      end;
      // GRAVA VALOR NAS PARCELAS RECICMPF<> 1 E N�O � DEVOLUCAO
      try
        if (recicmpf<>1) and (zqry_VDVENDACODTIPOMOV.asinteger<>202) then
        begin
          MostraTelaAguarde('Gravandos dados Valores das Parcelas no Contas a Receber');
          EXECUTASGINICONSP;
          dm_Dados.zqry_FNITRECEBER.Params.Clear;
          dm_dados.zqry_fnitreceber.Close;
          dm_dados.zqry_fnitreceber.SQL.Clear;
          dm_dados.zqry_FNITRECEBER.SQL.Add('update fnitreceber set vlrparcitrec=:valor where codrec=:reccod and nparcitrec=:parcela');
          dm_dados.zqry_FNITRECEBER.ParamByName('valor').AsFloat:=valorparcela+somast;
          dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsFloat:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
          dm_dados.zqry_FNITRECEBER.ParamByName('parcela').Asinteger:=1;
          dm_dados.zqry_FNITRECEBER.ExecSQL;
          fechatelaaguarde;
        end;
        larq := TStringList.Create;
        if dm_dados.logomarca<>'' then
        begin
          frmacbrnfe.ACBrNFe1.DANFE.Logo:=dm_dados.logomarca;
        end;
        except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado ao gravar valor nas parcelas : '+E.Message);
      end;
      // VISUALIZA NOTA FISCAL PARA IMPRIMIR
      try
        frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
        frmacbrnfe.ACBrNFeDANFeRL1.NumCopias:=dm_dados.numvias;
        frmacbrnfe.ACBrNFeDANFeRL1.PathPDF:='..\pdf\';
        frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
        frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(dm_dados.zqry_SGPREFERE1PATHSERVER.value+ncaminho,False);
        frmacbrnfe.ACBrNFe1.NotasFiscais.Imprimir;
        larq.SaveToFile(sArquivoEntNfe);
        larq.LoadFromFile(sArquivoSaiNfe);
      except
        on E: Exception do
        showmessage(E.ClassName+' erro gerado com a mensagem : '+E.Message);
      end;
      // GUARDA XML NO SERVIDOR
      if dm_Dados.ambiente='1' then
      begin
        mostratelaaguarde('Guardando XML conforme legisla��o');
        idftp1.Disconnect();
        idftp1.Host:='nonoelemento.com.br';
        idftp1.Port:=21;
        idftp1.Username:='notas@nonoelemento.com.br';
        idftp1.Password:='px4b7470#ISA';
        idftp1.Passive:=true;
        try
        { Espera at� 10 segundos pela conex�o }
          IdFTP1.Connect();
          idFTP1.ChangeDir('/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/');
          idftp1.Put(ncaminho,'',true);
        except
        on E: Exception do
          showmessage(E.ClassName+' erro gerado com a mensagem : '+E.Message);
        end;
        fechatelaaguarde;
        idftp1.Disconnect();
      end;
      // ENVIA NOTA NO EMAIL
      if frm_CON_PEDIDOS.agrupados=1 then
      begin
         // NAO ENVIA NO EMAIL AGRUPAMENTO
      end
      else
      begin
        try
          //ENVIAR_EMAIL;
        except
        exit;
       { on E: Exception do
          showmessage(E.ClassName+' erro gerado com a mensagem : '+E.Message);}
        end;
      end;
      // COPIA PATH
      if dm_Dados.zqry_SGFILIALPATH_COPIA_NFE.Value<>'' then
      begin
      try
        path:=dm_Dados.zqry_SGFILIALPATH_COPIA_NFE.AsString;
        CopyFile(pchar(ncaminho), pchar(path+nchave+'-nfe.xml'), False);
      except
      on E: Exception do
        showmessage(E.ClassName+' erro gerado na copia DFe para Path : '+E.Message);
      end;
      end;
      FECHACONEXOES;
      gb_ARECEBER.Caption:='CONTAS A RECEBER';
      Application.ProcessMessages;
    end
    else
    begin
      showmessage('Nota Fiscal n�o emitida');
      FECHACONEXOES;
      gb_ARECEBER.Caption:='CONTAS A RECEBER';
      Application.ProcessMessages;

    end;
end;


procedure Tfrm_CON_PEDIDOS.btn_ENVIAR_EMAILClick(Sender: TObject);
begin
  enviaremail;
end;

procedure Tfrm_CON_PEDIDOS.btn_ETIQUETAClick(Sender: TObject);
begin
if DBGrid1.DataSource.DataSet.IsEmpty then
begin
   MOSTRATELANOTIFICA('PEDIDO N�O LOCALIZADO','Escolha um pedido');
end
else
begin
  ATUALIZAITEMVENDA;
  //
  frm_rel_etiqueta.rlreport1.preview();
end;
end;

procedure Tfrm_CON_PEDIDOS.FECHACONEXOES;
begin
dm_dados.zqry_EQTIPOMOV.Cancel;
dm_dados.zqry_eqtipomov.Params.Clear;
dm_dados.zqry_EQTIPOMOV.Close;
//
dm_dados.zqry_LFMENSAGEM.Cancel;
dm_dados.zqry_LFMENSAGEM.Params.Clear;
dm_dados.zqry_LFMENSAGEM.Close;
//
dm_dados.zqry_FNPLANOPAG.Cancel;
dm_Dados.zqry_FNPLANOPAG.Params.Clear;
dm_Dados.zqry_FNPLANOPAG.Close;
//
dm_Dados.zqry_FNTIPOCOB.Cancel;
dm_dados.zqry_FNTIPOCOB.Params.Clear;
dm_dados.zqry_FNTIPOCOB.Close;
//
zqry_VDVENDA.Cancel;
zqry_VDVENDA.Params.Clear;
zqry_VDVENDA.Close;
//
zqry_VDITVENDA.Cancel;
zqry_VDITVENDA.Params.clear;
zqry_VDITVENDA.Close;
//
dm_dados.zqry_FNRECEBER.Cancel;
dm_dados.zqry_FNRECEBER.Params.Clear;
dm_dados.zqry_FNRECEBER.Close;
//
dm_dados.zqry_FNITRECEBER.Cancel;
dm_dados.zqry_FNITRECEBER.Params.Clear;
dm_dados.zqry_FNITRECEBER.Close;
//
zqry_CONTAQTD.Cancel;
zqry_contaqtd.Params.Clear;
zqry_contaqtd.Close;
//
zqry_ITFISCAL.Cancel;
zqry_ITFISCAL.Params.Clear;
zqry_ITFISCAL.Close;
//
edt_CPFCNPJ_TRANSP.Clear;
edt_NOMERAZ_TRANSP.Clear;
edt_IE_TRANSP.Clear;
edt_ANTT_TRANSP.Clear;
edt_END_TRANSP.Clear;
edt_CID_TRANSP.Clear;
edt_UF_TRANSP.Clear;
edt_PLACA_TRANSP.Clear;
edt_PLACAUF_TRANSP.Clear;
edt_volumes.Clear;
edt_especie.Clear;
edt_PESOBRUTO.Clear;
edt_PESOLIQUIDO.Clear;
edt_MARCA.Clear;
edt_OBS.Clear;
edt_CHAVE.Clear;
edt_JUSTIFICATIVA.Clear;
lbl_ITENS_LINHA.Caption:='';
//
DM_DADOS.zqry_MAX_NFE.Close;
dm_Dados.zqry_MAX_NFE.sql.clear;
DM_dADOS.zqry_MAX_NFE.sql.Add('select max(nroseq) as ultnfe from sgsequencia where sgtab=:tabsg and codemp=:empcod');
dm_dados.zqry_MAX_NFE.ParamByName('tabsg').AsString:='NF';
dm_dados.zqry_MAX_NFE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_MAX_NFE.Open;
//
DM_DADOS.zqry_MAX_NFCE.Close;
dm_Dados.zqry_MAX_NFCE.sql.clear;
DM_dADOS.zqry_MAX_NFCE.sql.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:tabsg and codemp=:empcod');
dm_dados.zqry_MAX_NFCE.ParamByName('tabsg').AsString:='NC';
dm_dados.zqry_MAX_NFCE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_MAX_NFCE.Open;
MEMORIA;
rg_SAIDAS.ItemIndex:= -1;
rg_ENTRADA.ItemIndex:= -1;
AGRUPADOS:=0;
end;

procedure Tfrm_CON_PEDIDOS.btn_REEMITIRClick(Sender: TObject);
var
  log,tipodoc: string;
  retseq:integer;
begin
  case MessageDlg('Deseja REEMITIR esta nota?',  mtConfirmation,  [mbYes, mbNo], 0) of
  mrYES:  //se clicar em sim fa?a isso
  begin
    log := emptystr;
    if not(InputQuery('Alles: Motivo de Reemiss�o', 'Motivo da Reemiss�o', log)) then
     exit;
    tipodoc:=copy(zqry_VDVENDACHAVENFEVENDA.asstring,21,2);
    if tipodoc='' then tipodoc:='55';
    zqry_MAX.Close;
    zqry_MAX.SQL.Clear;
    zqry_MAX.sql.add('SELECT MAX(seqnf) as ultsequencia FROM sgnflog where numnf=:p1 and modnf=:p2');
    zqry_MAX.ParamByName('p1').AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
    zqry_MAX.parambyName('p2').asinteger:=strtoint(tipodoc);
    //zqry_MAX.parambyName('p3').asstring:='S';
    zqry_MAX.Open;
    retseq:=zqry_MAX.FieldByname('ultsequencia').asInteger;
    zqry_inserelog.close;
    zqry_inserelog.open;
    zqry_inserelog.append;
    zqry_INSERELOGNUMNF.AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
    zqry_INSERELOGMODNF.AsInteger:=StrToInt(tipodoc);
    if retseq=0 then zqry_INSERELOGSEQNF.AsInteger:=1 else zqry_INSERELOGSEQNF.AsInteger:=retseq+1;
    zqry_INSERELOGPROTOCOLO.AsString:='';
    zqry_INSERELOGLOG.AsString:='';
    ZQRY_INSERELOGTIPOLOG.AsString:='R';
    zqry_INSERELOGDATA.AsDateTime:=now;
    zqry_INSERELOGHORA.asdatetime:=now;
    zqry_INSERELOGUSUARIO.AsString:=dm_dados.usuario;
    zqry_INSERELOG.Post;
    ZQRY_INSERELOG.ApplyUpdates;
    EXECUTASGINICONSP;
    MostraTelaAguarde('Gravando Movimento 501 no pedido '+zqry_VDVENDACODVENDA.ASSTRING);
    zqry_UPDATEVENDA.Close;
    zqry_UPDATEVENDA.SQL.Clear;
    zqry_UPDATEVENDA.SQL.Add('update vdvenda set codtipomov=501 where codvenda='+zqry_VDVENDACODVENDA.ASSTRING+' and codemp='+inttostr(dm_dados.codemp));
    zqry_UPDATEVENDA.ExecSQL;
    FECHACONEXOES;
    fechatelaaguarde;
  end;
  mrNO:  //se clicar em n?o fa?a isso
  begin
    //
  end;
  end;
end;

procedure Tfrm_CON_PEDIDOS.btn_VDXFUTURAClick(Sender: TObject);
var
  clifutura,prodfutura,vdfutura:integer;
  sldfutura,sldatual,sldnovo,sldconsignovo:double;
begin
  while not zqry_VDITVENDA.eof do
  begin
    sldfutura:=0;
    prodfutura:=zqry_VDITVENDACODPROD.AsInteger;
    sldfutura:=zqry_VDITVENDAQTDITVENDA.AsFloat;
    //sldatual:=zqry_VDITVENDA_SALDO.AsFloat;
    //sldconsignovo:=zqry_VDITVENDA_SLDCONSIG.AsFloat+sldfutura;
    sldnovo:=sldatual+sldfutura;
 	  EXECUTASGINICONSP;
    //saldo consignado
    zqry_UPDDEL.Close;
    zqry_UPDDEL.SQL.Clear;
    zqry_UPDDEL.SQL.Add('update eqproduto set sldconsigprod=:consig where codprod=:prodcod');
    zqry_UPDDEL.ParamByName('consig').AsFloat:=sldconsignovo;
    zqry_UPDDEL.ParamByName('prodcod').AsInteger:=prodfutura;
    zqry_UPDDEL.ExecSQL;
    // saldo do produto
   { dm_dados.Executasginiconsp;
    ibquery2.Close;
    ibquery2.SQL.Clear;
    ibquery2.SQL.Add('update eqproduto set sldprod=:saldo where codprod=:prodcod');
    ibquery2.ParamByName('saldo').AsFloat:=sldnovo;
    ibquery2.ParamByName('prodcod').AsInteger:=prodfutura;
    ibquery2.ExecSQL ;}
    // gera para o cliente
    zqry_MAX.Close;
    zqry_MAX.SQL.Clear;
    zqry_MAX.sql.add('SELECT MAX(codvdfutura) as ultvd FROM vdfutura');
    zqry_MAX.Open;
    vdfutura:=1+zqry_MAX.FieldByname('ultvd').asInteger;
    dm_dados.zqry_VDFUTURA.Close;
    dm_dados.zqry_VDFUTURA.Open;
    dm_Dados.zqry_VDFUTURA.Append;
    dm_dados.zqry_VDFUTURACODVDFUTURA.AsInteger:=vdfutura;
    dm_Dados.zqry_VDFUTURACODCLI.AsInteger:=zqry_VDVENDACODCLI.AsInteger;
    dm_Dados.zqry_VDFUTURACODPROD.AsInteger:=prodfutura;
    dm_dados.zqry_VDFUTURADOCVENDA.AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
    dm_Dados.zqry_VDFUTURASLDCONSIG.AsFloat:=dm_dados.zqry_VDFUTURASLDCONSIG.AsFloat+sldfutura;
    dm_Dados.zqry_VDFUTURASLDRESID.asfloat:=0;
    dm_dados.zqry_VDFUTURA.Post;
    dm_Dados.zqry_VDFUTURA.ApplyUpdates;
    zqry_VDITVENDA.next;
  end;
  showmessage('Saldo Consignado Gerado com sucesso');
end;

procedure Tfrm_CON_PEDIDOS.btn_VisualizaClick(Sender: TObject);
begin
{Limpa_Memo;
FormatSettings.DecimalSeparator := '.';
//deletefile(s_NFe_Ent);
ZerarTxt('..\nfe\log\log_nfe.txt');
ZerarTxt('..\nfe\log\log_comp.txt');
//ZerarTxt(s_NFe_Resp);
//pathnfesys:=s_Path_NFe;
//sArquivoEntNfe := s_NFe_Ent;  // ExtractFilePath(Application.ExeName) + 'ENTNFE.TXT';
//sArquivoSaiNfe := s_NFe_Resp; // ExtractFilePath(Application.ExeName) + 'SAINFE.TXT';
AssignFile(arq, 'teste.txt');
// Rewrite(arq);
larq := TStringList.Create;
larq.add('NFe.CriarNFe("');
CRIARNFE;
larq.add('InfCpl= ' + edt_obs.text + '",1)');
larq.SaveToFile(sArquivoEntNfe);
i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
while i_Tam_Arq = 0 do
i_Tam_Arq := TamanhoArquivoBytes(sArquivoSaiNfe);
FechaTelaAguarde;
Memo1.Lines.LoadFromFile(sArquivoSaiNfe);
Application.ProcessMessages;
//lerlog  :=TIniFile.Create('..\nfe\sai\entnfe-resp.txt');
//lerlog  :=TIniFile.Create(dm_dados.s_Path_NFe+'\sai\entnfe-resp.txt');
lerlog  :=TIniFile.Create('..\nfe\sai\entnfe-resp.txt');

//AssignFile(Arquivo,dm_dados.s_Path_NFe+'\sai\entnfe-resp.txt');
AssignFile(Arquivo,'..\nfe\sai\entnfe-resp.txt');

Reset(Arquivo);
while not Eof(Arquivo) do
begin
    ReadLn(Arquivo, linha);
    if Pos('OK: ', linha) > 0 then edT_LINHA.text:=linha;
end;
CloseFile(Arquivo);
lerlog.Free;
larq := TStringList.Create;
larq.Add('NFe.IMPRIMIRDANFE("' + RightStr( edT_linha.text, 76 )+'")');
larq.Add('NFE.VALIDARNFE("'+ RightStr( edT_linha.text, 76 )+'")');
larq.SaveToFile(sArquivoEntNfe);   }
end;

procedure Tfrm_CON_PEDIDOS.DBGrid11CellClick(Column: TColumn);
begin
edt_SLDDISPONIVEL.TEXT:=floattostr(dm_Dados.zqry_VDFUTURASLDCONSIG.AsFloat);
edt_SLDCLIENTE.Text:=floattostr(dm_Dados.zqry_VDFUTURASLDRESID.AsFloat);
edt_QTDENTREGA.Text:='0';
end;

procedure Tfrm_CON_PEDIDOS.DBGrid1CellClick(Column: TColumn);
var
ufigual : integer;
begin
//variaveis novas
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
MostraTelaAguarde('Consultando Informa��es do Pedido '+zqry_VDVENDACODVENDA.asstring);
//
dm_Dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_SGFILIAL.Open;
zqry_MAX.Close;
zqry_MAX.SQL.Clear;
zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
zqry_MAX.Open;
//
ATUALIZACLIENTE;
cpfcliente:=zqry_VDCLIENTEcpfcli.asstring;
cnpjcliente:=zqry_VDCLIENTECNPJCLI.AsString;
pessoacliente:=zqry_VDCLIENTEPESSOACLI.AsString;
iecliente:=zqry_VDCLIENTEINSCCLI.AsString;
ufcliente:=zqry_VDCLIENTESIGLAUF.AsString;
//
ATUALIZAPRODUTO;
//
ATUALIZAITEMVENDA;
//
NUMVENDA:=zqry_VDVENDACODVENDA.ASINTEGER;
lbl_ITENS_LINHA.CAPTION:=INTTOSTR(zqry_VDITVENDA.RecordCount);
LBL_ITENS_LINHA.Update;
//
dm_dados.zqry_VDFUTURA.Params.Clear;
dm_dados.zqry_VDFUTURA.Close;
dm_dados.zqry_VDFUTURA.SQL.Clear;
dm_dados.zqry_VDFUTURA.SQL.Add('select * from vdfutura where docvenda=:vendadoc');
dm_dados.zqry_VDFUTURA.ParamByName('vendadoc').AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
dm_dados.zqry_VDFUTURA.Open;
//
fechatelaaguarde;
MostraTelaAguarde('Consultando Informa��es do Pedido '+zqry_VDVENDACODVENDA.asstring+' detalhamento Financeiro');
dm_dados.zqry_FNRECEBER.Close;
dm_dados.zqry_FNRECEBER.sql.Clear;
dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
dm_dados.zqry_FNRECEBER.ParamByName('vendacod').asinteger:=zqry_VDVENDACODVENDA.asinteger;
dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_FNRECEBER.Open;

dm_dados.zqry_FNITRECEBER.Close;
dm_dados.zqry_FNITRECEBER.sql.Clear;
dm_dados.zqry_fnITreceber.SQL.Add('SELECT * FROM FNITRECEBER where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_FNITRECEBER.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
dm_dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_FNITRECEBER.Open;
lbl_NFNUM.Caption:=dm_dados.zqry_MAX_NFEULTNFE.AsString;
lbl_NFCENUM.Caption:=DM_DADOS.zqry_MAX_NFCEULTNFCE.AsString;
fechatelaaguarde;

  //FRETE VENDA
  dm_DAdos.zqry_VDFRETEVD.Close;
  dm_Dados.zqry_VDFRETEVD.sql.clear;
  dm_Dados.zqry_VDFRETEVD.sql.add('select * from vdfretevd where codvenda=:fretevendacod and codemp=:empcod');
  dm_Dados.zqry_VDFRETEVD.ParamByName('fretevendacod').asinteger:=zqry_VDVENDACODVENDA.asinteger;
  dm_Dados.zqry_VDFRETEVD.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
  dm_dados.zqry_VDFRETEVD.open;
  if dm_dados.zqry_VDFRETEVD.IsEmpty then
  begin
    mostratelaaviso('PEDIDO LOCALIZADO MAS SEM FECHAMENTO','N�o localizado Venda x Entrega');
  end
  else
  begin
    gb_ARECEBER.Caption:='CONTAS A RECEBER - email para '+zqry_VDVENDA_EMAILNFECLI.AsString+' ';
    Application.ProcessMessages;
    edt_ANTT_TRANSP.Text:=dm_dados.zqry_VDFRETEVDRNTCVD.Value;
    edt_VOLUMES.Text:=floattostr(round(dm_dados.zqry_VDFRETEVDQTDFRETEVD.asfloat));
    edt_pesobruto.Text:=dm_dados.zqry_VDFRETEVDPESOBRUTVD.Asstring;
    edt_pesoliquido.Text:=dm_dados.zqry_VDFRETEVDPESOLIQVD.Asstring;
    edt_especie.text:=dm_dados.zqry_VDFRETEVDESPFRETEVD.AsString;
    edt_marca.Text:=dm_dados.zqry_VDFRETEVDMARCAFRETEVD.AsString;
    //TRANSPORTADORA
    dm_Dados.zqry_VDTRANSP.Close;
    dm_dados.zqry_VDTRANSP.sql.clear;
    dm_dados.zqry_VDTRANSP.SQL.Add('select * from vdtransp where codtran=:trancod and codemp=:empcod');
    dm_Dados.zqry_VDTRANSP.ParamByName('trancod').value:=dm_dados.zqry_VDFRETEVDCODTRAN.value;
    dm_Dados.zqry_VDTRANSP.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
    dm_dados.zqry_VDTRANSP.open;
    edt_CPFCNPJ_TRANSP.text:=dm_dados.zqry_VDTRANSPCNPJTRAN.value;
    edt_NOMERAZ_TRANSP.Text:=REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value);
    edt_IE_TRANSP.Text:=dm_dados.zqry_VDTRANSPINSCTRAN.value;
    edt_END_TRANSP.Text:=REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value);
    edt_CID_TRANSP.Text:=REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value);
    edt_OBS.text:=zqry_VDVENDAOBSVENDA.Value;
    if dm_Dados.zqry_VDTRANSPUFTRAN.AsString='' then edt_uf_transp.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString;
    if dm_dados.zqry_vdtranspuftran.AsString<>'' then edt_UF_TRANSP.Text:=dm_Dados.zqry_VDTRANSPUFTRAN.value;
    edt_PLACA_TRANSP.text:='XXX0000';//+dm_dados.qry_VDFRETEVDPL/ACAFRETEVD.value);
    if dm_Dados.zqry_VDFRETEVDuffretevd.value='**' then edt_PLACAUF_TRANSP.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString else edt_PLACAUF_TRANSP.TEXT:=dm_dados.zqry_VDFRETEVDUFFRETEVD.value;
    if agrupados=1 then   edt_PLACAUF_TRANSP.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString;
    //ITENS E LINHAS
    zqry_contaqtd.Close;
    zqry_contaqtd.SQL.Clear;
    zqry_contaqtd.SQL.Add('select codvenda, sum(qtditvenda) as somaitens from vditvenda where codvenda=:vendacod group by codvenda');
    zqry_contaqtd.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
    zqry_contaqtd.Open;
    //edt_calc.Text:=floattostr(zqry_contaqtdsomaitens.AsFloat);
    edt_calc.Text:=formatfloat('0.##',zqry_contaqtd.FieldByName('somaitens').value);
    NUMITENS:=strtofloat(edt_calc.Text);
    numlinhas:=zqry_VDITVENDA.recordcount;
    lbl_ITENS_LINHA.Caption:=floattostr(numitens)+' | ' +inttostr(numlinhas);
    if zqry_VDVENDACODTIPOMOV.AsInteger=202 then
    begin
      edt_CHAVE.Enabled:=true;
      edt_chave.SetFocus;
      edt_JUSTIFICATIVA.Enabled:=true;
      MostraTelaAviso('Necess�rio Informar Chave de Refer�ncia para Devolu��o','');
    end;
  end;
///
///  SE ST E PESSOA FISICA
///
estado1:=dm_dados.zqry_SGFILIALSIGLAUF.AsString;
estado2:=ufcliente;
if estado1=estado2 then ufigual:=0;
if (cpfcliente<>'') and (PESSOACLIENTE='F') then
begin
  if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (UFIGUAL=0) then
  begin
    recicmpf:=1;
    REDICMS:=roundto(dm_dados.zqry_SGPREFERE1MAJALIQRECOLHEICMPF.AsFloat, -4);
    VALORICMSITEM:=roundto(((zqry_VDVENDAVLRLIQVENDA.asfloat*(1+(dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.asfloat/100)))), -2);
    VALORDESCICMS:=roundto(((VALORICMSITEM*(REDICMS/100)-(zqry_VDVENDAVLRLIQVENDA.asfloat*(REDICMS/100)))),-2);
    VALORTOTAL:=roundto(zqry_VDVENDAVLRLIQVENDA.AsFloat+valordescicms,-2);
  end
  else
  begin
    recicmpf:=0;
    REDICMS:=0;
    VALORICMSITEM:=0;
    VALORDESCICMS:=0;
    VALORTOTAL:=0;
  end;
end;

end;

procedure Tfrm_CON_PEDIDOS.DBGrid2CellClick(Column: TColumn);
var
ufigual : integer;
begin
//variaveis novas
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
//
MostraTelaAguarde('Consultando Informa��es do Pedido '+dm_dados.zqry_CPCOMPRACODCOMPRA.asstring);
dm_Dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_SGFILIAL.Open;
//
dm_dados.zqry_CPFORNECED.Close;
dm_Dados.zqry_CPFORNECED.sql.clear;
dm_Dados.zqry_CPFORNECED.SQL.Add('select * from cpforneced where codfor=:forcod and codemp=:empcod');
dm_Dados.zqry_CPFORNECED.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_CPFORNECED.ParamByName('forcod').AsInteger:=dm_dados.zqry_CPCOMPRACODFOR.AsInteger;
dm_Dados.zqry_CPFORNECED.Open;
cpfcliente:=dm_Dados.zqry_CPFORNECEDCPFFOR.asstring;
cnpjcliente:=dm_dados.zqry_CPFORNECEDCNPJFOR.AsString;
pessoacliente:=dm_dados.zqry_CPFORNECEDPESSOAFOR.AsString;
iecliente:=dm_Dados.zqry_CPFORNECEDINSCFOR.AsString;
ufcliente:=dm_Dados.zqry_CPFORNECEDSIGLAUF.AsString;
//
ATUALIZAPRODUTO;
//
DM_DADOS.zqry_CPITCOMPRA.Close;
dm_dados.zqry_CPITCOMPRA.SQL.Clear;
dm_dados.zqry_CPITCOMPRA.SQL.Add('select * from cpitcompra where codcompra=:compracod and codemp=:empcod');
dm_dados.zqry_CPITCOMPRA.ParamByName('compracod').AsInteger:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
dm_dados.zqry_CPITCOMPRA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_CPITCOMPRA.Open;
fechatelaaguarde;
MostraTelaAguarde('Consultando Informa��es do Pedido '+dm_dados.zqry_CPCOMPRACODCOMPRA.asstring+' detalhamento Financeiro');
DM_DADOS.zqry_FNPAGAR.Close;
DM_DADOS.zqry_FNPAGAR.sql.Clear;
dm_dados.zqry_FNPAGAR.SQL.Add('select * from fnpagar where codcompra=:compracod and codemp=:empcod');
dm_dados.zqry_FNPAGAR.ParamByName('compracod').AsInteger:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
dm_dados.zqry_FNPAGAR.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_FNPAGAR.Open;
DM_DADOS.zqry_FNITPAGAR.Close;
DM_DADOS.zqry_FNITPAGAR.sql.Clear;
dm_dados.zqry_FNITPAGAR.SQL.Add('select * from fnitpagar where codpag=:pagcod and codemp=:empcod');
dm_dados.zqry_FNITPAGAR.ParamByName('pagcod').AsInteger:=dm_dados.zqry_FNPAGARCODPAG.AsInteger;
dm_dados.zqry_FNITPAGAR.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_FNITPAGAR.Open;
fechatelaaguarde;
NUMVENDA:=dm_dados.zqry_CPCOMPRACODCOMPRA.ASINTEGER;
ITENS:=dm_dados.zqry_CPITCOMPRA.RecordCount;
  //FRETE VENDA
  dm_DAdos.zqry_cpfretecp.Close;
  dm_Dados.zqry_cpfretecp.sql.clear;
  dm_Dados.zqry_cpfretecp.sql.add('select * from cpfretecp where codcompra=:fretecompracod and codemp=:empcod');
  dm_Dados.zqry_cpfretecp.ParamByName('fretecompracod').asinteger:=dm_dados.zqry_CPCOMPRACODCOMPRA.asinteger;
  dm_Dados.zqry_cpfretecp.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
  dm_dados.zqry_cpfretecp.open;
    edt_pesobruto_ent.Text:=dm_dados.zqry_CPFRETECPPESOBRUTCP.Asstring;
    edt_pesoliquido_ent.Text:=dm_dados.zqry_CPFRETECPPESOLIQCP.Asstring;
    edt_VOLUMES_ent.Text:=floattostr(round(dm_dados.zqry_CPFRETECPQTDFRETECP.asfloat));
    edt_OBS_ent.text:=dm_dados.zqry_CPCOMPRAOBSERVACAO.Value;
    edt_PLACA_TRANSP_ENT.text:='XXX0000';//+dm_dados.zqry_VDFRETEVDPL/ACAFRETEVD.value);
    //ITENS E LINHAS
    if dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger=212 then
    begin
      edt_CHAVE_ENT.Enabled:=true;
      edt_chave_ENT.SetFocus;
      edt_JUSTIFICATIVA_ENT.Enabled:=true;
      MostraTelaAviso('Necess�rio Informar Chave de Refer�ncia para Devolu��o','');
    end;
end;

procedure Tfrm_CON_PEDIDOS.edt_BUSCACLIKeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN btn_BUSCACLIClick(Self);
if (key = #113) then
begin
  frm_con_clientes.show;
  edt_BUSCACLI.Text:=IntToStr(frm_con_clientes.codcliente);
end;
end;

procedure Tfrm_CON_PEDIDOS.edt_QTDENTREGAExit(Sender: TObject);
var
 entregapermitida,qtdentrega:double;
begin
entregapermitida:=strtofloat(edt_SLDDISPONIVEL.Text)-strtofloat(edt_SLDCLIENTE.Text);
qtdentrega:=strtofloat(edt_QTDENTREGA.Text);
if (qtdentrega>entregapermitida) or (qtdentrega=0) then
begin
  showmessage('Quantidade de Entrega n�o permitida para esta venda');
  edt_QTDENTREGA.Text:='0';
  btn_PROCESSAENTREGA.Enabled:=FALSE;
end
else
begin
  btn_PROCESSAENTREGA.Enabled:=TRUE;
end;

end;

procedure Tfrm_CON_PEDIDOS.BUSCASAIDA;
var
  Row, AColMaior, AColMenor: integer;
begin
  Row       := THackDBGrid(DBGrid1).Row;
  AColMaior := THackDBGrid(DBGrid1).Col;
  AColMenor := THackDBGrid(DBGrid1).Col;
MostraTelaAguarde('Consultando Informa��es');
dm_Dados.zdts_VDVENDA.DataSet:=nil;
zqry_VDVENDA.Params.Clear;
zqry_VDVENDA.Close;
zqry_VDVENDA.SQL.Clear;
zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, protocolo, caminho from vdvenda');
zqry_vdvenda.SQL.Add('WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
zqry_VDVENDA.ParamByName(parametro1).value:=instrucao+msk_pesquisa1.Text+instrucao;
if ENTRE='S' then zqry_VDVENDA.ParamByName(parametro2).value:=instrucao+msk_pesquisa2.Text+instrucao;
zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
zqry_VDVENDA.Open;
if zqry_VDVENDA.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdvenda');
zqry_VDCLIENTE.Close;
zqry_VDCLIENTE.sql.clear;
zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codemp=:empcod');
zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
zqry_VDCLIENTE.Open;
FechaTelaAguarde;
LBL_PESQUISA.Caption:='';
msk_PESQUISA1.Visible:=False;
msk_PESQUISA2.VISIBLE:=FALSE;
LBL_ATE.VISIBLE:=FALSE;
ENTRE:='N';
sp_BUSCA.Visible:=False;
dm_Dados.zdts_VDVENDA.DataSet:=zqry_VDVENDA;
if zqry_VDVENDACODTIPOMOV.AsInteger=501 Then
Begin
DBGrid1.Canvas.Font.Color := clWhite;
DBGrid1.Canvas.Brush.Color := clBlue;
End
Else
Begin
DBGrid1.Canvas.Font.Color := clBlack;
DBGrid1.Canvas.Brush.Color := clWhite;
End;
DBGrid1DrawColumnCell(DBGrid1, THackDBGrid(DBGrid1).CellRect(AColMenor, Row), (AColMenor - 1), DBGrid1.Columns.Items[(AColMenor - 1)], [gdSelected, gdFocused]);
end;

procedure Tfrm_CON_PEDIDOS.BUSCAVENDAFUTURA;
var
  Row, AColMaior, AColMenor: integer;
begin
  Row       := THackDBGrid(DBGrid1).Row;
  AColMaior := THackDBGrid(DBGrid1).Col;
  AColMenor := THackDBGrid(DBGrid1).Col;
MostraTelaAguarde('Consultando Informa��es');
dm_Dados.zdts_VDVENDA.DataSet:=nil;
zqry_VDVENDA.Params.Clear;
zqry_VDVENDA.Close;
zqry_VDVENDA.SQL.Clear;
zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
zqry_VDVENDA.SQL.Add('WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
zqry_VDVENDA.ParamByName(parametro1).value:=instrucao+msk_pesquisafutura1.Text+instrucao;
if ENTRE='S' then zqry_VDVENDA.ParamByName(parametro2).value:=instrucao+msk_pesquisafutura2.Text+instrucao;
zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
zqry_VDVENDA.Open;
if zqry_VDVENDA.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdvenda');
zqry_VDCLIENTE.Close;
zqry_VDCLIENTE.sql.clear;
zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod');
zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
zqry_VDCLIENTE.Open;
FechaTelaAguarde;
LBL_PESQUISA.Caption:='';
msk_PESQUISA1.Visible:=False;
msk_PESQUISA2.VISIBLE:=FALSE;
LBL_ATE.VISIBLE:=FALSE;
ENTRE:='N';
sp_BUSCA.Visible:=False;
dm_Dados.zdts_VDVENDA.DataSet:=zqry_VDVENDA;
if zqry_VDVENDACODTIPOMOV.AsInteger=501 Then
Begin
DBGrid1.Canvas.Font.Color := clWhite;
DBGrid1.Canvas.Brush.Color := clBlue;
End
Else
Begin
DBGrid1.Canvas.Font.Color := clBlack;
DBGrid1.Canvas.Brush.Color := clWhite;
End;
DBGrid1DrawColumnCell(DBGrid1, THackDBGrid(DBGrid1).CellRect(AColMenor, Row), (AColMenor - 1), DBGrid1.Columns.Items[(AColMenor - 1)], [gdSelected, gdFocused]);
end;


procedure Tfrm_CON_PEDIDOS.ConsultaCliente1Click(Sender: TObject);
begin
frm_CON_clientes.Show;
end;

procedure Tfrm_CON_PEDIDOS.ConsultaClientes1Click(Sender: TObject);
begin
frm_CON_PEDIDOS.Show;
end;

procedure Tfrm_CON_PEDIDOS.btn_CANCELAXMLClick(Sender: TObject);
var
 Chave, caminho,tipodoc, idLote, CNPJ, eventostring, retprot, retmotivo, Protocolo, Justificativa,vAux, xmlcan, minhacan,meuevento   : String;
  retcstat, retseq:integer;
  converteretseq:string;
begin
  frmacbrnfe.ACBrNFe1.Configuracoes.Arquivos.PathEvento:=dm_dados.pathevento;
  Chave := Trim(OnlyNumber(zqry_VDVENDACHAVENFEVENDA.AsString));
  tipodoc:=copy(zqry_VDVENDACHAVENFEVENDA.asstring,21,2);
  if tipodoc='55' then
  begin
    frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFeRL1;
    caminho:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfe\20'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,3,2)+'\'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,5,2)+'\nfe\'+zqry_VDVENDACHAVENFEVENDA.asstring+'-nfe.xml';
  end;
  if tipodoc='65' then
  begin
    frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFCeFortes1;
    caminho:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfce\20'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,3,2)+'\'+copy(zqry_VDVENDACHAVENFEVENDA.asstring,5,2)+'\nfce\'+zqry_VDVENDACHAVENFEVENDA.asstring+'-nfe.xml';
  end;

  frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
  frmacbrnfe.ACBrNFe1.NotasFiscais.LoadFromFile(caminho);
  idLote  := '1';
  vAux    := '';
  if not(InputQuery('Alles Eventos: Cancelamento', 'Justificativa', vAux)) then
    exit;
  frmacbrnfe.ACBrNFe1.EventoNFe.Evento.Clear;
  frmacbrnfe.ACBrNFe1.EventoNFe.idLote := StrToInt(idLote);
  with frmacbrnfe.ACBrNFe1.EventoNFe.Evento.New do
  begin
    infEvento.dhEvento := now;
    infEvento.tpEvento := teCancelamento;
    infEvento.detEvento.xJust := vAux;
  end;
  retcstat  :=frmacbrnfe.acbrnfe1.WebServices.EnvEvento.cStat;
  lbl_RETCSTAT.Caption:=inttostr(retcstat);
  lbl_retcstat.Update;
  frmacbrnfe.ACBrNFe1.EnviarEvento(StrToInt(idLote));
  frmacbrnfe.ACBrNFe1.ImprimirEvento;
end;

procedure Tfrm_CON_PEDIDOS.btn_CARTACORRECAOClick(Sender: TObject);
var
  Chave,tipodoc, idLote, CNPJ, nSeqEvento, eventostring, Correcao, xmlcce, retprot, retmotivo, minhacce,meuevento : string;
  retcstat, retseq:integer;
begin
  frmacbrnfe.ACBrNFe1.Configuracoes.Arquivos.PathEvento:=dm_dados.pathevento;
  Chave := Trim(OnlyNumber(zqry_VDVENDACHAVENFEVENDA.AsString));
  tipodoc:=copy(zqry_VDVENDACHAVENFEVENDA.asstring,21,2);
  zqry_MAX.Close;
  zqry_MAX.SQL.Clear;
  zqry_MAX.sql.add('SELECT MAX(seqnf) as ultsequencia FROM sgnfcce where numnf=:p1 and modnf=:p2');
  zqry_MAX.ParamByName('p1').AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
  zqry_MAX.parambyName('p2').asinteger:=strtoint(tipodoc);
  //zqry_MAX.parambyName('p3').asstring:='S';
  zqry_MAX.Open;
  retseq:=zqry_MAX.FieldByname('ultsequencia').asInteger;
  zqry_inserecce.close;
  zqry_inserecce.open;
  zqry_inserecce.append;
  zqry_INSERECCENUMNF.AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
  zqry_INSERECCEMODNF.AsInteger:=StrToInt(tipodoc);
  if retseq=0 then zqry_INSERECCESEQNF.AsInteger:=1 else zqry_INSERECCESEQNF.AsInteger:=retseq+1;
  zqry_INSERECCEPROTOCOLO.AsString:='';
  zqry_INSERECCECORRECAO.AsString:='';
  zqry_INSERECCEDATA.AsDateTime:=now;
  zqry_INSERECCEHORA.asdatetime:=now;
  zqry_INSERECCEENVIADO.asstring:='N';
  zqry_INSERECCE.Post;
  ZQRY_INSERECCE.ApplyUpdates;
  Chave := Trim(OnlyNumber(zqry_VDVENDACHAVENFEVENDA.AsString));
  idLote := '1';
  if dm_dados.zqry_SGNFCCESEQNF.asstring='' then nseqevento := '1';
  if dm_dados.zqry_SGNFCCESEQNF.asstring='' then nseqevento := inttostr(1+retseq);
  CNPJ := dm_dados.zqry_SGFILIALCNPJFILIAL.value;
  Correcao := 'Corre��o a ser considerada, texto livre. A corre��o mais recente substitui as anteriores.';
  if not(InputQuery('Alles: Carta de Corre��o', 'Corre��o a ser considerada', Correcao)) then
   exit;

// Verificar se o texto tem pelo menos 15 caracteres
  if Length(Correcao) < 15 then
   begin
    ShowMessage('O texto deve ter pelo menos 15 caracteres. Por favor, forne�a uma corre��o v�lida.');
   exit;
  end;
  frmacbrnfe.ACBrNFe1.EventoNFe.Evento.Clear;

  with frmacbrnfe.ACBrNFe1.EventoNFe.Evento.New do
  begin
    infEvento.chNFe := Chave;
    infEvento.CNPJ   := CNPJ;
    infEvento.dhEvento := now;
    infEvento.tpEvento := teCCe;
    infEvento.nSeqEvento := StrToInt(nSeqEvento);
    infEvento.detEvento.xCorrecao := Correcao;
  end;

  frmacbrnfe.ACBrNFe1.EnviarEvento(StrToInt(idLote));
  //retcstat:=frmacbrnfe.acbrnfe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
  retcstat:=frmacbrnfe.acbrnfe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
  lbl_RETCSTAT.Caption:=inttostr(retcstat);
  lbl_retcstat.Update;
  //retcstat:=frmacbrnfe.ACBrNFe1.WebServices.Consulta.cStat;
  //retcstat:=frmacbrnfe.ACBrNFe1.WebServices.EnvEvento.cStat;
  retmotivo := frmacbrnfe.acbrnfe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
  retprot   := frmacbrnfe.acbrnfe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;

  if (retcstat=128) or (retcstat=100) or (retcstat=135) then
  begin

    eventostring:=tbStrZero(1+retseq,2);
    xmlcce:='110110'+chave+eventostring;
    zqry_UPDDEL.Close;
    zqry_UPDDEL.SQL.Clear;
    zqry_UPDDEL.SQL.Add('update sgnfcce set protocolo=:p1, correcao=:p2, enviado=:p3, arquivo=:p4 where seqnf=:p5');
    zqry_UPDDEL.ParamByName('p1').AsString:=retprot;
    zqry_UPDDEL.ParamByName('p2').AsString:=Correcao;
    zqry_upddel.ParamByName('p3').AsString:='S';
    zqry_upddel.ParamByName('p4').AsString:=xmlcce;
    zqry_upddel.ParamByName('p5').AsInteger:=1+retseq;
    zqry_UPDDEL.ExecSQL;
    mostratelaaviso('Carta de Corre��o Gerada com sucesso ',retmotivo);
    meuevento:=dm_dados.caminhonfe+'\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfe\'+inttostr(currentyear)+'\'+formatdatetime('mm',date)+'\nfe\1-eve.xml';
    minhacce:=dm_dados.caminhonfe+'\evento\'+dm_dados.zqry_SGFILIALCNPJFILIAL.asstring+'\nfe\'+inttostr(currentyear)+'\'+formatdatetime('mm',date)+'\evento\cce\'+xmlcce+'-procEventoNFe.xml';
    frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
    frmacbrnfe.acbrNFe1.NotasFiscais.LoadFromFile(meuevento);
    frmacbrnfe.ACBrNFe1.EventoNFe.Evento.Clear;
    frmacbrnfe.ACBrNFe1.EventoNFe.LerXML(minhacce);
    frmacbrnfe.ACBrNFe1.ImprimirEvento;
  end
  else
  begin
    mostratelaaviso('Carta de Corre��o N�o Gerada ',retmotivo);
  end;
end;

procedure Tfrm_CON_PEDIDOS.btn_CHNFCEClick(Sender: TObject);
var
Arquivo: TStringList;
tamanho, i:integer;
chave:string;
begin
Arquivo := TStringList.Create;
try
  Arquivo.LoadFromFile('..\nfe\log\LOG_nfe.txt');
  tamanho:=length(Copy (Arquivo.Strings[7],8,( Length(Arquivo.Strings[7]))));
  chave:=(Copy (Arquivo.Strings[7],8,( Length(Arquivo.Strings[7]))));
  nfce:=copy(chave,0,44);
  showmessage(nfce);
finally
Arquivo.Free;
end;
end;

procedure Tfrm_CON_PEDIDOS.btn_FECHAR_AGRUPAClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_CON_PEDIDOS.btn_FECHAR_SAIDAClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_CON_PEDIDOS.BitBtn1Click(Sender: TObject);
begin
DM_DADOS.zqry_CPCOMPRA.Close;
DM_DADOS.zqry_CPCOMPRA.SQL.Clear;
DM_DADOS.zqry_CPCOMPRA.sql.Add('SELECT * FROM CPCOMPRA WHERE CODEMP=99');
DM_DADOS.zqry_CPCOMPRA.Open;
end;

procedure Tfrm_CON_PEDIDOS.BitBtn2Click(Sender: TObject);
begin
if dm_dados.zqry_CPCOMPRAVLRPRODCOMPRA.AsFloat=0.00 then
BEGIN
   mostratelaaviso('ESTE PEDIDO APARENTEMENTE FOI CANCELADO','prodvenda=0');
END;
if dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger>=601 then
BEGIN
  MOSTRATELAAVISO('ESTE PEDIDO J� FOI FATURADO','');
  btn_REEMITIR.Enabled:=TRUE;
END;
if (dm_dados.zqry_CPCOMPRAvlrprodcompra.asfloat>=0.00) AND (dm_dados.zqry_CPCOMPRACODTIPOMOV.AsInteger<=399) THEN
BEGIN
  dm_Dados.zqry_CPCOMPRA.edit;
  //frm_cad_pedcompra.show;
END
else
begin
  MOSTRATELAAVISO ('ESTE PEDIDO N�O � EDIT�VEL','');
end;
end;

procedure Tfrm_CON_PEDIDOS.BitBtn3Click(Sender: TObject);
begin
mostratelaaviso('teste1','teste2');
end;

procedure Tfrm_CON_PEDIDOS.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_CON_PEDIDOS.BitBtn5Click(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
 ufigual : integer;

begin
  //variaveis novas
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
  vsincrono:='0';
  //zqry_VDVENDA.First;
  //while not zqry_VDVENDA.eof do
  //begin
    if zqry_VDVENDACODTIPOMOV.AsInteger=501 then
    begin
      zqry_VDVENDA.edit;
      zqry_SEQNFCE.Close;
      zqry_SEQNFCE.SQL.Clear;
      zqry_SEQNFCE.SQL.ADD('select max(contador) as ultnfce from sgsequencianfce where codemp=:empcod');
      zqry_SEQNFCE.parambyname('empcod').asinteger:=dm_dados.codemp;
      zqry_SEQNFCE.open;
      vaux:=inttostr(zqry_SEQNFCEULTNFCE.AsInteger);
      vNumLote:='1';
      vSincrono:='0';

      dm_Dados.zqry_SGFILIAL.Close;
      dm_Dados.zqry_SGFILIAL.SQL.Clear;
      dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
      dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;//dm_DADOS.CODEMP;
      dm_dados.zqry_SGFILIAL.Open;
      //
      ATUALIZACLIENTE;
      cpfcliente:=zqry_VDCLIENTEcpfcli.asstring;
      cnpjcliente:=zqry_VDCLIENTECNPJCLI.AsString;
      pessoacliente:=zqry_VDCLIENTEPESSOACLI.AsString;
      iecliente:=zqry_VDCLIENTEINSCCLI.AsString;
      ufcliente:=zqry_VDCLIENTESIGLAUF.AsString;
      //
      ATUALIZAPRODUTO;
      //
      ATUALIZAITEMVENDA;
            //
      NUMVENDA:=zqry_VDVENDACODVENDA.ASINTEGER;
      ITENS:=zqry_VDITVENDA.RecordCount;
      DESCONTO:=zqry_VDVENDAVLRDESCitvenda.asfloat/itens;//zqry_VDVENDAVLRDESCVENDA.AsFloat
      //
      dm_dados.zqry_VDFUTURA.Params.Clear;
      dm_dados.zqry_VDFUTURA.Close;
      dm_dados.zqry_VDFUTURA.SQL.Clear;
      dm_dados.zqry_VDFUTURA.SQL.Add('select * from vdfutura where docvenda=:vendadoc');
      dm_dados.zqry_VDFUTURA.ParamByName('vendadoc').AsInteger:=zqry_VDVENDADOCVENDA.AsInteger;
      dm_dados.zqry_VDFUTURA.Open;
      //
      dm_dados.zqry_FNRECEBER.Close;
      dm_dados.zqry_FNRECEBER.sql.Clear;
      dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
      dm_dados.zqry_FNRECEBER.ParamByName('vendacod').asinteger:=zqry_VDVENDACODVENDA.asinteger;
      dm_dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_FNRECEBER.Open;
      dm_dados.zqry_FNITRECEBER.Close;
      dm_dados.zqry_FNITRECEBER.sql.Clear;
      dm_dados.zqry_fnITreceber.SQL.Add('SELECT * FROM FNITRECEBER where codrec=:reccod and codemp=:empcod');
      dm_dados.zqry_FNITRECEBER.ParamByName('RECCOD').AsInteger:=dm_dados.zqry_FNRECEBERCODREC.AsInteger;
      dm_dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_FNITRECEBER.Open;

      //FRETE VENDA
      //dm_DAdos.zqry_VDFRETEVD.Close;
      //dm_Dados.zqry_VDFRETEVD.sql.clear;
      //dm_Dados.zqry_VDFRETEVD.sql.add('select * from vdfretevd where codvenda=:fretevendacod and codemp=:empcod');
      //dm_Dados.zqry_VDFRETEVD.ParamByName('fretevendacod').asinteger:=zqry_VDVENDACODVENDA.asinteger;
      //dm_Dados.zqry_VDFRETEVD.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
      //dm_dados.zqry_VDFRETEVD.open;
     // if dm_dados.zqry_VDFRETEVD.IsEmpty then
     // begin
     //   mostratelaaviso('PEDIDO LOCALIZADO MAS SEM FECHAMENTO','N�o localizado Venda x Entrega');
     // end
     // else
     // begin
        gb_ARECEBER.Caption:='CONTAS A RECEBER - email para '+zqry_VDVENDA_EMAILNFECLI.AsString+' ';
        Application.ProcessMessages;
        edt_ANTT_TRANSP.Text:='';//dm_dados.zqry_VDFRETEVDRNTCVD.Value;
        edt_VOLUMES.Text:='1';//floattostr(round(dm_dados.zqry_VDFRETEVDQTDFRETEVD.asfloat));
        edt_pesobruto.Text:='0';//dm_dados.zqry_VDFRETEVDPESOBRUTVD.Asstring;
        edt_pesoliquido.Text:='0';//dm_dados.zqry_VDFRETEVDPESOLIQVD.Asstring;
        edt_especie.text:='VOLUME';//dm_dados.zqry_VDFRETEVDESPFRETEVD.AsString;
        edt_marca.Text:='DIVERSOS';//dm_dados.zqry_VDFRETEVDMARCAFRETEVD.AsString;
        //TRANSPORTADORA
        dm_Dados.zqry_VDTRANSP.Close;
        dm_dados.zqry_VDTRANSP.sql.clear;
        dm_dados.zqry_VDTRANSP.SQL.Add('select * from vdtransp where codtran=:trancod and codemp=:empcod');
        dm_Dados.zqry_VDTRANSP.ParamByName('trancod').value:=1;//dm_dados.zqry_VDFRETEVDCODTRAN.value;
        dm_Dados.zqry_VDTRANSP.ParamByName('empcod').asinteger:= dm_DADOS.CODEMP;
        dm_dados.zqry_VDTRANSP.open;
        edt_CPFCNPJ_TRANSP.text:=dm_dados.zqry_VDTRANSPCNPJTRAN.value;
        edt_NOMERAZ_TRANSP.Text:=REMOVEACENTO(dm_dados.zqry_VDTRANSPNOMETRAN.value);
        edt_IE_TRANSP.Text:=dm_dados.zqry_VDTRANSPINSCTRAN.value;
        edt_END_TRANSP.Text:=REMOVEACENTO(dm_Dados.zqry_VDTRANSPENDTRAN.value);
        edt_CID_TRANSP.Text:=REMOVEACENTO(dm_dados.zqry_VDTRANSPCIDTRAN.value);
        edt_OBS.text:=zqry_VDVENDAOBSVENDA.Value;
        if dm_Dados.zqry_VDTRANSPUFTRAN.AsString='' then edt_uf_transp.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString;
        if dm_dados.zqry_vdtranspuftran.AsString<>'' then edt_UF_TRANSP.Text:=dm_Dados.zqry_VDTRANSPUFTRAN.value;
        edt_PLACA_TRANSP.text:='XXX0000';//+dm_dados.qry_VDFRETEVDPL/ACAFRETEVD.value);
        if dm_Dados.zqry_VDFRETEVDuffretevd.value='**' then edt_PLACAUF_TRANSP.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString else edt_PLACAUF_TRANSP.TEXT:=dm_dados.zqry_VDFRETEVDUFFRETEVD.value;
        if agrupados=1 then   edt_PLACAUF_TRANSP.Text:=dm_dados.zqry_SGFILIALsiglauf.AsString;
        //ITENS E LINHAS
        zqry_contaqtd.Close;
        zqry_contaqtd.SQL.Clear;
        zqry_contaqtd.SQL.Add('select codvenda, sum(qtditvenda) as somaitens from vditvenda where codvenda=:vendacod group by codvenda');
        zqry_contaqtd.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
        zqry_contaqtd.Open;
        NUMITENS:=zqry_contaqtdsomaitens.AsFloat;
        numlinhas:=zqry_VDITVENDA.recordcount;
        lbl_ITENS_LINHA.Caption:=floattostr(numitens)+' | ' +inttostr(numlinhas);
        if zqry_VDVENDACODTIPOMOV.AsInteger=202 then
        begin
          edt_CHAVE.Enabled:=true;
          edt_chave.SetFocus;
          edt_JUSTIFICATIVA.Enabled:=true;
         end;

        ///
        ///  SE ST E PESSOA FISICA
        ///
        estado1:=dm_dados.zqry_SGFILIALSIGLAUF.AsString;
        estado2:=ufcliente;
        if estado1=estado2 then ufigual:=0;
        if (cpfcliente<>'') and (PESSOACLIENTE='F') then
        begin
          if (dm_Dados.zqry_SGPREFERE1RECOLHEICMSPF.AsString='S') AND (UFIGUAL=0) then
          begin
            recicmpf:=1;
            REDICMS:=roundto(dm_dados.zqry_SGPREFERE1MAJALIQRECOLHEICMPF.AsFloat, -4);
            VALORICMSITEM:=roundto(((zqry_VDVENDAVLRLIQVENDA.asfloat*(1+(dm_dados.zqry_SGPREFERE1ALIQRECOLHEICMPF.asfloat/100)))), -2);
            VALORDESCICMS:=roundto(((VALORICMSITEM*(REDICMS/100)-(zqry_VDVENDAVLRLIQVENDA.asfloat*(REDICMS/100)))),-2);
            VALORTOTAL:=roundto(zqry_VDVENDAVLRLIQVENDA.AsFloat+valordescicms,-2);
          end
        else
        begin
          recicmpf:=0;
          REDICMS:=0;
          VALORICMSITEM:=0;
          VALORDESCICMS:=0;
          VALORTOTAL:=0;
        end;
      end;
    //showmessage('chegou aqui');
    {if vaux='' then if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
      exit;
    vNumLote := 0;//OnlyNumber(vNumLote);
{    if Trim(vNumLote) = '' then
    begin
      MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
      exit;
     end;}

      if (Trim(vSincrono) <> '1') and
         (Trim(vSincrono) <> '0') then
      begin
        MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
        exit;
       end;

      if (Trim(vSincrono) = '1') then
        Sincrono := True
      else
        Sincrono := False;

    if Trim(vNumLote) = '' then
    begin
      MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
      exit;
    end;

    if (Trim(vSincrono) <> '1') and
       (Trim(vSincrono) <> '0') then
    begin
      MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
      exit;
    end;

    if (Trim(vSincrono) = '1') then
      Sincrono := True
    else
      Sincrono := False;
      frmacbrnfe.LerConfiguracao;
      frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
      frmacbrnfe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
      frmacbrnfe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
      frmacbrnfe.ACbrnfe1.Configuracoes.Geral.VersaoQRCode := veqr200;
      GerarNFCe(vAux);
      //showmessage('Gerou vai transmitir e imprimir');
      frmacbrnfe.acbrnfe1.Configuracoes.WebServices.TimeOut:=frmacbrnfe.seTIMEOUT.Value;
      frmacbrnfe.AcbrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := strtoint(frmacbrnfe.edtAguardar.Text);
      frmacbrnfe.ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas      := strtoint(frmacbrnfe.edtIntervalo.Text);
      frmacbrnfe.ACBrNFe1.Configuracoes.WebServices.Tentativas               := strtoint(frmacbrnfe.edtTentativas.Text);
      frmacbrnfe.acbrnfe1.NotasFiscais.GerarNFe;
      frmacbrnfe.ACBrNFe1.DANFE := frmacbrnfe.ACBrNFeDANFCeFortes1 ;
      frmacbrnfe.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largura;
      frmacbrnfe.ACBrNFe1.Enviar(vNumLote,True,Sincrono);

      chave_nfe:=copy(frmacbrnfe.ACBrNFe1.NotasFiscais.Items[0].nfe.infNFe.ID,4,44);
      recibo_nfe:=frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt; //numero do protocolo

      if not Sincrono then
      begin
        //
      end
      else
      begin
        //
      end;

      if (frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat = 100) or (frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat = 110) then // Autorizado o uso da NF-e ou denegada
      begin
        MOSTRATELANOTIFICA('Nota Emitida '+vaux+' |Recibo '+recibo_nfe,'Chave '+chave_nfe);
        sleep(500);
        //showmessage('Chave NFe '+chave_nfe+' Recibo '+ recibo_nfe);
        ncaminho:='..\nfe\nfe\'+dm_dados.zqry_SGFILIALCNPJFILIAL.Value+'\nfce\'+inttostr(currentyear)+formatdatetime('mm',date)+'\nfce\'+chave_nfe+'-nfe.xml';
        lbl_CHAVENFCE.caption:=chave_nfe;
        lbl_SITUACAO.caption:='Situa��o '+inttostr(frmacbrnfe.ACBrNFe1.WebServices.Retorno.cStat);
        zqry_MAX.Close;
        zqry_MAX.SQL.Clear;
        zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
        zqry_MAX.Open;
        dm_dados.zqry_SGNF.Close;
        dm_dados.zqry_SGNF.Open;
        dm_dados.zqry_sgnf.Append;
        dm_dados.zqry_SGNFCODIGO.Value:=1+zqry_MAX.FieldByname('ultcodigo').asInteger;
        dm_Dados.zqry_SGNFCHAVE.Value:=chave_nfe;
        dm_dados.zqry_SGNFDATA.value:=date;
        dm_dados.zqry_SGNFHORA.Value:=time;
        dm_Dados.zqry_SGNFUPLOAD.Value:=ncaminho;
        dm_dados.zqry_SGNFCODMOV.AsInteger:=zqry_VDVENDACODTIPOMOV.AsInteger;
        dm_Dados.zqry_SGNFSITUACAO.Value:='NFCe Venda Emitida';
        dm_dados.zqry_sgnfvalor.asfloat:=zqry_VDVENDAVLRLIQVENDA.AsFloat;
        dm_dados.zqry_SGNFNFCE.AsString:='S';
        dm_dados.zqry_SGNFENVIADO.AsString:='S';
        DM_dADOS.zqry_SGNFNUMERO.asinteger:=dm_Dados.zqry_MAX_NFCEULTNFCE.asinteger;
    	  dm_Dados.zqry_SGNF.post;
        dm_dados.zqry_SGNF.applyupdates();
    	  EXECUTASGINICONSP;
        // Gravar na Sequencia NFCe
        numnf:= zqry_SEQNFCEULTNFCE.asinteger;//.cds_SGSEQUENCIA_NFNROSEQ.AsInteger;
       // showmessage('Israel 3820 '+inttostr(numnf));
        cod_pedido:=zqry_VDVENDACODVENDA.AsInteger;
        zqry_inc_nfce.Close;
        zqry_inc_nfce.SQL.Clear;
        zqry_inc_nfce.SQL.ADD('update sgsequencianfce set contador=:sequencia');
        zqry_inc_nfce.parambyname('sequencia').asinteger:=numnf+1;
        zqry_inc_nfce.execsql;
        MostraTelaAguarde('Pr�xima Nota a ser emitida n.� '+ inttostr(numnf+1));
        dm_dados.zqry_max_nfce.Close;
        //DM_DADOS.zqry_SGSEQUENCIANFCE.Close;
        {dm_Dados.zqry_MAX_NFCE.sql.clear;
        dm_dadoz.zqry_MAX_nfce.sql.add('select * from sgsequencia where codemp=:empcod');
        DM_dADOS.zqry.MAX_NFCE.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_dados.zqry_max_nfce.Open;
        //frm_principal.db_NFCE.Update;}
        fechatelaaguarde;
        // Gravar dados no Pedidos
      	EXECUTASGINICONSP;
        try
      	  MostraTelaAguarde('Gravandos dados no Pedido de Venda');
          ZQuery2.sql.Clear;
          ZQuery2.SQL.Add('update vdvenda set codtipomov=:mov, serie=:serienf,docvenda=:vendadoc, chavenfevenda=:chave, protocolo=:prot, caminho=:path where codvenda=:venda and codemp=:empcod');
          ZQuery2.parambyname('mov').asinteger:=601;
          ZQuery2.ParamByName('venda').AsInteger:=cod_pedido;//zqry_VDVENDACODVENDA.asinteger;
          ZQuery2.ParamByName('empcod').AsInteger:=99;//dm_DADOS.CODEMP;
          ZQuery2.parambyname('serienf').asstring:='1';
          ZQuery2.parambyname('vendadoc').asinteger:= frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.Ide.nNF;
          ZQuery2.parambyname('chave').asstring:=chave_nfe;
          ZQuery2.ParamByName('prot').AsString:=frmacbrnfe.acbrnfe1.NotasFiscais.Items[0].NFe.procNFe.nProt;
          ZQuery2.ParamByName('path').AsString:=ncaminho;
          ZQuery2.EXECSQL;
          fechatelaaguarde;
        except
        on E: Exception do
          showmessage(E.ClassName+' erro gerado com a mensagem ao atualizar Venda : '+E.Message);
        end;
      end
      else
       begin
        SHOWMESSAGE('CSTAT de NAO APROVA��O');
      end;
    end
    else
    begin

    end;
    frmacbrnfe.ACBrNFe1.NotasFiscais.Clear;
    //showmessage('Vai proximo');
   // zqry_VDVENDA.Next;
  end;
//end;

procedure Tfrm_CON_PEDIDOS.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');

end;

procedure Tfrm_CON_PEDIDOS.btn_BUSCASAIDA_DATAClick(Sender: TObject);
var
  Row, AColMaior, AColMenor: integer;
begin
  Row       := THackDBGrid(DBGrid1).Row;
  AColMaior := THackDBGrid(DBGrid1).Col;
  AColMenor := THackDBGrid(DBGrid1).Col;
MostraTelaAguarde('Consultando Informa��es');
zdts_VDVENDA.DataSet:=nil;
zqry_vdvenda.Params.Clear;
zqry_VDVENDA.Close;
zqry_VDVENDA.SQL.Clear;
zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
zqry_VDVENDA.SQL.Add('WHERE CODEMP=:EMPCOD AND DTEMITVENDA BETWEEN :DTINI AND :DTFIM and vlrprodvenda>0');//quotedstr(script);
zqry_VDVENDA.ParamByName('DTINI').AsDate:=strtodate(msk_pesquisa1.Text);
zqry_VDVENDA.ParamByName('DTFIM').asdate:=strtodate(msk_pesquisa2.Text);
zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
zqry_VDVENDA.Open;
if zqry_VDVENDA.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdvenda');
zqry_VDCLIENTE.Close;
zqry_vdcliente.sql.clear;
zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codemp=:empcod');
zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
zqry_VDCLIENTE.Open;
LBL_PESQUISA.Caption:='';
msk_PESQUISA1.Visible:=False;
msk_PESQUISA2.VISIBLE:=FALSE;
LBL_ATE.VISIBLE:=FALSE;
ENTRE:='N';
sp_BUSCA.Visible:=False;
zdts_VDVENDA.DataSet:=zqry_VDVENDA;
fechatelaaguarde;
if zqry_VDVENDACODTIPOMOV.AsInteger=501 Then
Begin
DBGrid1.Canvas.Font.Color := clWhite;
DBGrid1.Canvas.Brush.Color := clBlue;
DBGrid1DrawColumnCell(DBGrid1, THackDBGrid(DBGrid1).CellRect(AColMenor, Row), (AColMenor - 1), DBGrid1.Columns.Items[(AColMenor - 1)], [gdSelected, gdFocused]);
End
Else
Begin
DBGrid1.Canvas.Font.Color := clBlack;
DBGrid1.Canvas.Brush.Color := clWhite;
End;
end;

procedure Tfrm_CON_PEDIDOS.btn_BUSCAVDFUTURAClick(Sender: TObject);
var
  Row, AColMaior, AColMenor: integer;
begin
  Row       := THackDBGrid(DBGrid1).Row;
  AColMaior := THackDBGrid(DBGrid1).Col;
  AColMenor := THackDBGrid(DBGrid1).Col;
MostraTelaAguarde('Consultando Informa��es');
dm_Dados.zdts_VDVENDA.DataSet:=nil;
zqry_VDVENDA.Params.Clear;
zqry_VDVENDA.Close;
zqry_VDVENDA.SQL.Clear;
zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
zqry_VDVENDA.SQL.Add('WHERE CODTIPOMOV=:MOV AND CODEMP=:EMPCOD AND DTEMITVENDA BETWEEN :DTINI AND :DTFIM and vlrprodvenda>0');//quotedstr(script);
zqry_VDVENDA.ParamByName('DTINI').AsDate:=strtodate(msk_pesquisafutura1.Text);
zqry_VDVENDA.ParamByName('DTFIM').asdate:=strtodate(msk_pesquisafutura2.Text);
zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
zqry_VDVENDA.parambyname('mov').AsInteger:=580;
zqry_VDVENDA.Open;
if zqry_VDVENDA.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdvenda');
zqry_VDCLIENTE.Close;
zqry_VDCLIENTE.sql.clear;
zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codemp=:empcod');
zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
zqry_VDCLIENTE.Open;
LBL_PESQUISAFUTURA.Caption:='';
msk_PESQUISAfutura1.Visible:=False;
msk_PESQUISAfutura2.VISIBLE:=FALSE;
LBL_ATEFUTURA.VISIBLE:=FALSE;
ENTRE:='N';
sp_FUTURA.Visible:=False;
dm_Dados.zdts_VDVENDA.DataSet:=zqry_VDVENDA;
fechatelaaguarde;
if zqry_VDVENDACODTIPOMOV.AsInteger=580 Then
Begin
DBGrid1.Canvas.Font.Color := clWhite;
DBGrid1.Canvas.Brush.Color := clBlue;
DBGrid1DrawColumnCell(DBGrid1, THackDBGrid(DBGrid1).CellRect(AColMenor, Row), (AColMenor - 1), DBGrid1.Columns.Items[(AColMenor - 1)], [gdSelected, gdFocused]);
End
Else
Begin
DBGrid1.Canvas.Font.Color := clBlack;
DBGrid1.Canvas.Brush.Color := clWhite;
End;
end;

procedure Tfrm_CON_PEDIDOS.btn_AGRUPARClick(Sender: TObject);
begin
  agrupados:=1;
  zqry_VDITVENDA.Close;
  zqry_VDITVENDA.SQL.Clear;
  zqry_VDITVENDA.SQL.Add('select codvenda, coditvenda,codprod,codnat, qtditvenda, precoitvenda, vlrproditvenda,codfisc,coditfisc, codlote, codalmox, vlrdescitvenda from vditvenda where codvenda in('+edit3.Text+') and codemp=:empcod');
  zqry_VDITVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_VDITVENDA.Open;
  frm_CON_PEDIDOS.VLRAGRUPADO:=STRTOFLOAT(edt_VLRTOTALAGRUPADO.TEXT);
  dm_Dados.zqry_SGFILIAL.Close;
  dm_Dados.zqry_SGFILIAL.SQL.Clear;
  dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_SGFILIAL.Open;
  zqry_MAX.Close;
  zqry_MAX.SQL.Clear;
  zqry_MAX.sql.add('SELECT MAX(codigo) as ultcodigo FROM sgnf');
  zqry_MAX.Open;
  DM_DADOS.zqry_MAX_NFE.Close;
  dm_Dados.zqry_MAX_NFE.sql.clear;
  DM_dADOS.zqry_MAX_NFE.sql.Add('select max(nroseq) as ultnfe from sgsequencia where sgtab=:tabsg and codemp=:empcod');
  dm_dados.zqry_MAX_NFE.ParamByName('tabsg').AsString:='NF';
  dm_dados.zqry_MAX_NFE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_MAX_NFE.Open;
  NUMVENDA:=zqry_VDVENDACODVENDA.ASINTEGER;
  lbl_ITENS_LINHA.CAPTION:=INTTOSTR(zqry_VDITVENDA.RecordCount);
  LBL_ITENS_LINHA.Update;
  lbl_NFNUM.Caption:=dm_dados.zqry_MAX_NFEULTNFE.AsString;
  lbl_NFCENUM.Caption:=DM_DADOS.zqry_MAX_NFCEULTNFCE.AsString;
end;

procedure Tfrm_CON_PEDIDOS.btn_ATUALIZAClick(Sender: TObject);
begin
FECHACONEXOES;
end;

procedure Tfrm_CON_PEDIDOS.btn_BUSCACLIClick(Sender: TObject);
begin
if EDT_BUSCACLI.Text='' then
begin
  //mostratelaaviso('Informe uma valor para realizar a busca','');
  frm_CON_CLIENTES.Showmodal;
  edt_buscacli.Clear;
  edt_buscacli.SetFocus;
  edt_BUSCACLI.Text:=IntToStr(frm_con_clientes.codcliente);
end
else
begin
  zqry_VDCLIENTE.Close;
  zqry_VDCLIENTE.SQL.Clear;
  zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
  zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codcli=:clicod and codemp=:empcod');
  zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=strtoint(edt_buscacli.text);
  zqry_VDCLIENTE.Open;
  if zqry_VDCLIENTE.IsEmpty then
  begin
    mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdcliente');
    edt_buscacli.clear;
    edt_buscacli.SetFocus;
  end
  else
  begin
    LBL_NOME.Caption:=zqry_VDCLIENTENOMECLI.AsString;
    LBL_razao.Caption:=zqry_VDCLIENTERAZCLI.AsString;
    mkdata1.SetFocus;
  end;
end;

end;

procedure Tfrm_CON_PEDIDOS.btn_BUSCAENTRADAClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informa��es');
DM_DADOS.zqry_CPCOMPRA.Close;
DM_DADOS.zqry_CPCOMPRA.SQL.Clear;
DM_DADOS.zqry_CPCOMPRA.sql.Add('SELECT * FROM CPCOMPRA WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
DM_DADOS.zqry_CPCOMPRA.ParamByName(parametro1).value:=instrucao+msk_pesquisa1_ent.Text+instrucao;
if ENTRE='S' then DM_DADOS.zqry_CPCOMPRA.ParamByName(parametro2).value:=instrucao+msk_pesquisa2_ent.Text+instrucao;
DM_DADOS.zqry_CPCOMPRA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
DM_DADOS.zqry_CPCOMPRA.Open;
if DM_DADOS.zqry_CPCOMPRA.IsEmpty then
begin
 mostratelaaviso('Nada localizado com base nas informa��es','tab.: cpcompra');
end;
dm_dados.zqry_CPFORNECED.Close;
dm_Dados.zqry_cpfornecED.sql.clear;
dm_Dados.zqry_cpfornecED.SQL.Add('select * from cpforneced where codemp=:empcod');
dm_Dados.zqry_cpfornecED.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_cpfornecED.Open;
FechaTelaAguarde;
end;


procedure Tfrm_CON_PEDIDOS.btn_BUSCAENTRADA_DATAClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informa��es');
dm_Dados.zdts_CPCOMPRA.DataSet:=nil;
dm_dados.zqry_cpcompra.Params.Clear;
dm_dados.zqry_cpcompra.Close;
dm_dados.zqry_cpcompra.SQL.Clear;
dm_dados.zqry_cpcompra.sql.Add('SELECT * FROM CPCOMPRA WHERE CODEMP=:EMPCOD AND DTEMITCOMPRA BETWEEN :DTINI AND :DTFIM');//quotedstr(script);
dm_dados.zqry_cpcompra.ParamByName('DTINI').AsDate:=strtodate(msk_pesquisa1_ENT.Text);
dm_dados.zqry_cpcompra.ParamByName('DTFIM').asdate:=strtodate(msk_pesquisa2_ENT.Text);
dm_dados.zqry_cpcompra.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
dm_dados.zqry_cpcompra.Open;
if dm_dados.zqry_cpcompra.IsEmpty then mostratelaaviso('Nada localizado com base nas informa��es','tab.: cpcompra');
dm_dados.zqry_CPFORNECed.Close;
dm_Dados.zqry_CPFORNECed.sql.clear;
dm_Dados.zqry_CPFORNECed.SQL.Add('select * from CPFORNECED where codemp=:empcod');
dm_Dados.zqry_CPFORNECed.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_CPFORNECed.Open;
LBL_PESQUISA_ENT.Caption:='';
msk_PESQUISA1_ENT.Visible:=False;
msk_PESQUISA2_ENT.VISIBLE:=FALSE;
LBL_ATE_ENT.VISIBLE:=FALSE;
ENTRE:='N';
sp_BUSCA_ENT.Visible:=False;
dm_Dados.zdts_CPCOMPRA.DataSet:=dm_DADOS.zqry_CPCOMPRA;
fechatelaaguarde;
end;

procedure Tfrm_CON_PEDIDOS.btn_BUSCARClick(Sender: TObject);
var
  vrtotal, vrdesc : Currency;
  venda : string;
  tamanho : integer;
begin
  if mkdata1.Text='' then mkdata1.Text:=datetostr(date);
  if mkdata2.Text='' then mkdata2.Text:=datetostr(date);
  zqry_VDVENDA.Close;
  zqry_VDVENDA.SQL.Clear;
  zqry_VDVENDA.sql.add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
  zqry_VDVENDA.SQL.Add('where codcli=:codigocli and dtemitvenda between :dtini and :dtfim and codtipomov<>:tipomov and statusvenda<>:tipoped ');
  zqry_VDVENDA.ParamByName('codigocli').asinteger:=zqry_VDCLIENTEcodcli.asinteger;
  zqry_VDVENDA.ParamByName('dtini').asdate:=strtodate(mkdata1.Text);
  zqry_VDVENDA.ParamByName('dtfim').asdate:=strtodate(mkdata2.Text);
  zqry_VDVENDA.ParamByName('tipomov').Value:='601';
  zqry_VDVENDA.ParamByName('tipoped').Value:='CP';
  zqry_VDVENDA.Open;
  if zqry_VDVENDA.IsEmpty then
  begin
    mostratelaaviso('Nada localizado com base nas informa��es','tab.: vdvenda');
  end
  else
  begin
    zqry_VDCLIENTE.Close;
    zqry_vdcliente.sql.clear;
    zqry_VDCLIENTE.SQL.Add('select codemp, codfilial, codcli, razcli, nomecli, pessoacli,');
    zqry_VDCLIENTE.SQL.Add('cnpjcli, cpfcli, insccli, rgcli, emailcli, emailnfecli, endcli, numcli, complcli, baircli, cidcli, cepcli, siglauf, ufcli,dddcli, fonecli,codmunic from vdcliente where codemp=:empcod');
    zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    zqry_VDCLIENTE.Open;
    with zqry_VDVENDA do
    begin
      First; // Desnecess�rio, s� por legibilidade
      vrTotal := 0;
      while not Eof do
      begin
        vrTotal := vrTotal + zqry_VDVENDAvlrliqvenda.asfloat;
        venda := venda + zqry_VDVENDAcodvenda.AsString + ',';
        vrdesc := vrdesc + zqry_VDVENDAVLRDESCITVENDA.AsFloat;
        Next;
      end;
     First;
    end;
//  Edit2.Text := FormatFloat('##0.00', vrTOTAL); // Joga o valor formatado na Edit
  MOstratelaaguarde('Agupamento Pedidos para o cliente selecionado');
  FormatSettings.DecimalSeparator := '.';
  edt_VLRTOTALAGRUPADO.Text := FloattoSTr(vrTOTAL); // Joga o valor formatado na Edit
  TOTAGRUPA:=vrtotal;
  TOTDESCAGRUPA:=vrdesc;
  tamanho:=length(venda);
  venda:=copy(venda,1,tamanho-1);
  edit3.Text:=venda;
  btn_AGRUPARClick(Self);
  fechatelaaguarde;
end;

end;

procedure Tfrm_CON_PEDIDOS.FormActivate(Sender: TObject);
begin
rg_SAIDAS.ItemIndex:= -1;
rg_ENTRADA.ItemIndex:= -1;
NUMVENDA:=0;
dm_Dados.zqry_SGFILIAL.Close;
dm_DAdos.zqry_SGFILIAL.Params.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_Dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_SGFILIAL.Open;
if zqry_VDVENDACODPLANOPAG.VALUE=1 then pagamento:=0 else pagamento:=1;
minhaaba:=(pg_PEDIDOS.ActivePageIndex);
End;

procedure Tfrm_CON_PEDIDOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zqry_VDCLIENTE.close;
zqry_EQPRODUTO.Close;
dm_Dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
zqry_VDVENDA.Close;
zqry_VDITVENDA.Close;
//
dm_dados.zqry_CPFORNECed.Close;
dm_Dados.zqry_CPCOMPRA.Close;
dm_dados.zqry_CPITCOMPRA.Close;
//
zqry_VDVENDA.Close;
zqry_VDITVENDA.Close;
//
dm_dados.zqry_VDTRANSP.Close;
dm_dados.zqry_VDFRETEVD.Close;
FECHACONEXOES;
action:=TcloseAction.caFree;
frm_CON_PEDIDOS:=nil;
//FRM_PRINCIPAL.contaNOTAS;
end;

procedure Tfrm_CON_PEDIDOS.FormCreate(Sender: TObject);
begin
frm_PRINCIPAL.FormStyle := fsNormal;
end;

procedure Tfrm_CON_PEDIDOS.FormShow(Sender: TObject);
begin
pg_pedidos.ActivePage:=ts_vendas;
agrupados:=0;
sh_INTERNET.left:=screen.Width-25;
sh_INTERNET.top:=25;
sh_RECEITA.left:=screen.Width-42;
sh_RECEITA.top:=25;
//
frmacbrnfe.ACBrNFe1.WebServices.StatusServico.Executar;
LBL_RETCSTAT.Caption:=IntToStr(frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat);
if frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat=107 then sh_RECEITA.Brush.color:=cllime;
if frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat=108 then sh_RECEITA.Brush.color:=clyellow;
if frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat=109 then sh_RECEITA.Brush.color:=clred;
teminternet:=u_verificainternet.Ping(1000,'www.google.com.br',80);
if teminternet=0 then sh_internet.Brush.color:=cllime else sh_internet.brush.color:=clyellow;


//MEMORIA;

end;

procedure Tfrm_CON_PEDIDOS.mkdata1KeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN mkdata2.SetFocus;
end;

procedure Tfrm_CON_PEDIDOS.mkdata2KeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) THEN btn_BUSCARClick(Self);
end;

procedure Tfrm_CON_PEDIDOS.msk_PESQUISA1KeyPress(Sender: TObject; var Key: Char);
begin
IF (KEY = #13) and (msk_PESQUISA2.Visible=true)  then msk_PESQUISA2.SetFocus;
if (key = #13) and (msk_pesquisa2.Visible=false) then SP_BUSCAClick(Self);
end;

procedure Tfrm_CON_PEDIDOS.msk_PESQUISA2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then sp_BUSCAclick(Sender);

end;

procedure Tfrm_CON_PEDIDOS.msk_PESQUISAFUTURA1KeyPress(Sender: TObject;
  var Key: Char);
begin
IF (KEY = #13) and (msk_PESQUISAFUTURA2.Visible=true)  then msk_PESQUISAFUTURA2.SetFocus;
if (key = #13) and (msk_pesquisaFUTURA2.Visible=false) then btn_BUSCAVDFUTURAClick(Self);
end;

procedure Tfrm_CON_PEDIDOS.rg_ENTRADAClick(Sender: TObject);
begin
 case rg_ENTRADA.ItemIndex of
    0:begin
      LBL_PESQUISA_ENT.Caption:='ORDENANDO POR C�DIGO';
      msk_PESQUISA1_ENT.Visible:=False;
      msk_PESQUISA2_ENT.VISIBLE:=FALSE;
      LBL_ATE_ENT.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA_ENT.Visible:=False;
      MostraTelaAguarde('Consultando Informa��es');
      dm_dados.zqry_CPCOMPRA.Close;
      dm_dados.zqry_CPCOMPRA.sql.Clear;
      dm_Dados.zqry_CPCOMPRA.SQL.Add('select * from cpcompra where codemp=:empcod and codtipomov>=300 and codtipomov<=601 and vlrprodcompra>0.00');
      dm_Dados.zqry_CPCOMPRA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_CPCOMPRA.open;
      FechaTelaAguarde;
    end;
    1:begin
      LBL_PESQUISA_ENT.Caption:='CONSULTA ENTRE DATAS';
      msk_PESQUISA1_ENT.Visible:=TRUE;
      msk_PESQUISA2_ENT.Visible:=TRUE;
      LBL_ATE_ENT.VISIBLE:=TRUE;
      LBL_ATE_ENT.Caption:='AT�';
      msk_PESQUISA1_ENT.EditMask:='99/99/9999';
      msk_PESQUISA2_ENT.EditMask:='99/99/9999';
      msk_PESQUISA1_ENT.Text:=DATETOSTR(DATE);
      msk_PESQUISA2_ENT.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      OUTROBT:='S';
      sp_BUSCA_ENT.Visible:=TRUE;
      msk_PESQUISA1_ENT.SetFocus;
      script:='DTEMITCOMPRA BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
    2:begin
      LBL_PESQUISA_ENT.Caption:='CONSULTA POR PEDIDO';
      msk_PESQUISA1_ENT.Visible:=TRUE;
      msk_PESQUISA2_ENT.Visible:=FALSE;
      LBL_ATE_ENT.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA_ENT.Visible:=TRUE;
      msk_PESQUISA1_ENT.Clear;
      msk_PESQUISA1_ENT.SetFocus;
      msk_PESQUISA1_ENT.EditMask:='';
      script:='CODCOMPRA=:COMPRACOD';
      parametro1:='COMPRACOD';
      instrucao:='';
    end;
    3:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='BUSCA PEDIDOS PARA DEVOLU��O';
      msk_PESQUISA1_ent.Visible:=False;
      msk_PESQUISA2_ent.VISIBLE:=FALSE;
      LBL_ATE_ent.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA_ENT.Visible:=False;
      MostraTelaAguarde('Consultando Informa��es');
      dm_dados.zqry_CPCOMPRA.Close;
      dm_dados.zqry_CPCOMPRA.sql.Clear;
      dm_Dados.zqry_CPCOMPRA.SQL.Add('select * from cpcompra where codemp=:empcod and codtipomov=212 and vlrprodcompra>0.00');
      dm_Dados.zqry_CPCOMPRA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_CPCOMPRA.open;
      FechaTelaAguarde;
    end;
 end;

end;

procedure Tfrm_CON_PEDIDOS.rg_FUTURAClick(Sender: TObject);
begin
 NUMVENDA:=0;
 case rg_FUTURA.ItemIndex of
    0:begin
      FECHACONEXOES;
      LBL_PESQUISAFUTURA.Caption:='ORDENANDO POR C�DIGO';
      msk_PESQUISAFUTURA1.Visible:=False;
      msk_PESQUISAFUTURA2.VISIBLE:=FALSE;
      LBL_ATEFUTURA.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_FUTURA.Visible:=False;
      MostraTelaAguarde('Consultando Informa��es');
      zqry_VDVENDA.Params.Clear;
      zqry_VDVENDA.close;
      zqry_VDVENDA.sql.Clear;
      zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
      zqry_VDVENDA.SQL.Add('where codtipomov=580 and codemp=:empcod and vlrprodvenda>0.00');
      zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
      zqry_VDVENDA.Open;
      FechaTelaAguarde;
    end;
    1:begin
      FECHACONEXOES;
      LBL_PESQUISAFUTURA.Caption:='CONSULTA ENTRE DATAS';
      msk_PESQUISAFUTURA1.Visible:=TRUE;
      msk_PESQUISAFUTURA2.Visible:=TRUE;
      LBL_ATEFUTURA.VISIBLE:=TRUE;
      LBL_ATEFUTURA.Caption:='AT�';
      msk_PESQUISAFUTURA1.EditMask:='99/99/9999';
      msk_PESQUISAFUTURA2.EditMask:='99/99/9999';
      msk_PESQUISAFUTURA1.Text:=DATETOSTR(DATE);
      msk_PESQUISAFUTURA2.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      OUTROBT:='S';
      sp_FUTURA.Visible:=TRUE;
      msk_PESQUISAFUTURA1.SetFocus;
      script:='DTEMITVENDA BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
    2:begin
      FECHACONEXOES;
      LBL_PESQUISAFUTURA.Caption:='CONSULTA POR PEDIDO';
      msk_PESQUISAFUTURA1.Visible:=TRUE;
      msk_PESQUISAFUTURA2.Visible:=FALSE;
      LBL_ATEFUTURA.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_FUTURA.Visible:=TRUE;
      msk_PESQUISAFUTURA1.Clear;
      msk_PESQUISAFUTURA1.SetFocus;
      msk_PESQUISAFUTURA1.EditMask:='';
      script:='CODVENDA=:VENDACOD';
      parametro1:='VENDACOD';
      instrucao:='';
    end;
    3:begin
      FECHACONEXOES;
      LBL_PESQUISAFUTURA.Caption:='BUSCA PEDIDOS POR CODIGO DE CLIENTE';
      msk_PESQUISAFUTURA1.Visible:=False;
      msk_PESQUISAFUTURA2.VISIBLE:=FALSE;
      LBL_ATEFUTURA.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_FUTURA.Visible:=TRUE;
      msk_PESQUISAFUTURA1.Clear;
      msk_PESQUISAFUTURA1.SetFocus;
      msk_PESQUISAFUTURA1.EditMask:='';
      script:='CODCLI=:CLICOD';
      parametro1:='CLICOD';
      instrucao:='';
    end;
  end;
end;

procedure Tfrm_CON_PEDIDOS.rg_SAIDASClick(Sender: TObject);
begin
 NUMVENDA:=0;
 case rg_SAIDAS.ItemIndex of
    0:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='ORDENANDO POR C�DIGO';
      msk_PESQUISA1.Visible:=False;
      msk_PESQUISA2.VISIBLE:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=False;
      MostraTelaAguarde('Consultando Informa��es');
      zqry_VDVENDA.Params.Clear;
      zqry_VDVENDA.close;
      zqry_VDVENDA.sql.Clear;
      zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
      zqry_VDVENDA.SQL.Add('where codtipomov>=501 and codemp=:empcod and vlrprodvenda>0.00 order by codvenda desc');
      zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
      zqry_VDVENDA.Open;
      FechaTelaAguarde;
    end;
    1:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA ENTRE DATAS';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=TRUE;
      LBL_ATE.VISIBLE:=TRUE;
      LBL_ATE.Caption:='AT�';
      msk_PESQUISA1.EditMask:='99/99/9999';
      msk_PESQUISA2.EditMask:='99/99/9999';
      msk_PESQUISA1.Text:=DATETOSTR(DATE);
      msk_PESQUISA2.Text:=DATETOSTR(DATE);
      ENTRE:='S';
      OUTROBT:='S';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.SetFocus;
      script:='DTEMITVENDA BETWEEN :DTINI AND :DTFIM';
      parametro1:='DTINI';
      parametro2:='DTFIM';
      instrucao:='';
    end;
    2:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA POR PEDIDO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='CODVENDA=:VENDACOD';
      parametro1:='VENDACOD';
      instrucao:='';
    end;
    3:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='BUSCA PEDIDOS PARA DEVOLU��O';
      msk_PESQUISA1.Visible:=False;
      msk_PESQUISA2.VISIBLE:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=False;
      MostraTelaAguarde('Consultando Informa��es');
      zqry_VDVENDA.close;
      zqry_VDVENDA.sql.Clear;
      zqry_VDVENDA.sql.Add('select codemp,codfilial, codvenda,docvenda,codtipomov,codtipocob, codcli,dtemitvenda, vlrliqvenda, vlradicvenda,vlrdescitvenda, vlrfretevenda, vlrprodvenda, obsvenda, caminho, codplanopag, chavenfevenda, caminho, protocolo from vdvenda');
      zqry_vdvenda.SQL.Add('where codemp=:empcod and codtipomov=202 and vlrprodvenda>0.00');
      zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
      zqry_VDVENDA.Open;
      FechaTelaAguarde;
    end;
    4:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA POR MOVIMENTO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      script:='CODTIPOMOV=:TIPOMOV';
      parametro1:='TIPOMOV';
      instrucao:='';
    end;
 end;
end;

procedure Tfrm_CON_PEDIDOS.SpeedButton1Click(Sender: TObject);
begin
        frmacbrnfe.ACBrNFe1.WebServices.StatusServico.Executar;
        LBL_RETCSTAT.Caption:=IntToStr(frmacbrnfe.ACBrNFe1.WebServices.StatusServico.cStat);
end;

procedure Tfrm_CON_PEDIDOS.sp_FUTURAClick(Sender: TObject);
begin
  gb_ARECEBER.Caption:='CONTAS A RECEBER';
  Application.ProcessMessages;
  if msk_PESQUISAFUTURA1.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    msk_PESQUISAFUTURA1.Clear;
    msk_PESQUISAFUTURA1.SetFocus;
  end
  else
  begin
    if OUTROBT='N' then BUSCAVENDAFUTURA; // ou b.OnClick(b);
    IF OUTROBT='S' then btn_BUSCAVDFUTURAClick(Sender);
    //FRM_PRINCIPAL.contaNOTAS;
  end;
end;

procedure Tfrm_CON_PEDIDOS.sp_BUSCAClick(Sender: TObject);
begin
  gb_ARECEBER.Caption:='CONTAS A RECEBER';
  Application.ProcessMessages;
  if msk_PESQUISA1.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    msk_PESQUISA1.Clear;
    msk_PESQUISA1.SetFocus;
  end
  else
  begin
    if OUTROBT='N' then BUSCASAIDA; // ou b.OnClick(b);
    IF OUTROBT='S' then btn_BUSCASAIDA_DATAClick(Sender);
    //FRM_PRINCIPAL.contaNOTAS;
  end;
end;

procedure Tfrm_CON_PEDIDOS.sp_BUSCA_ENTClick(Sender: TObject);
begin
  if msk_PESQUISA1_ENT.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    msk_PESQUISA1_ENT.Clear;
    msk_PESQUISA1_ENT.SetFocus;
  end
  else
  begin
    if OUTROBT='N' then btn_BUSCAENTRADAClick(Sender); // ou b.OnClick(b);
    IF OUTROBT='S' then btn_BUSCAENTRADA_DATAClick(Sender);
  end;
end;

procedure Tfrm_CON_PEDIDOS.ts_AGRUPASAIDASEnter(Sender: TObject);
begin
LBL_NOME.Caption:='';
EDT_BUSCACLI.Clear;
EDT_BUSCACLI.SetFocus;
AGRUPADOS:=0;
end;

procedure Tfrm_CON_PEDIDOS.ts_AGRUPASAIDASShow(Sender: TObject);
begin
  EDT_BUSCACLI.SetFocus;
end;

procedure Tfrm_CON_PEDIDOS.ts_VENDASEnter(Sender: TObject);
begin
NUMVENDA:=0;
end;

end.
