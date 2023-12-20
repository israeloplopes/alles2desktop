{$I ACBr.inc}

unit prefacbr;

interface

uses IniFiles, ShellAPI,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, OleCtrls, SHDocVw,
  ACBrNFe, pcnConversao, ACBrUtil, ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS,
  ACBrBase, ACBrDFe, XMLIntf, XMLDoc, zlib,
  ACBrMail,  Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.DB, uFuncoes, Printers,
  IdGlobal, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Principal, Vcl.Samples.Spin, blcksock, ACBrSocket,
  ACBrCEP, ACBrIntegrador, ACBrNFeDANFeRLClass, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrSAT,
  ACBrSATExtratoESCPOS, ACBrDFeReport, ACBrDFeDANFeReport, ACBrDANFCeFortesFr,
  ACBrTEFD, ACBrTEFDClass ;


type

  { TForm1 }

  Tfrm_PREFACBR = class(TForm)
    pn_ESQUERDA: TPanel;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    pgRespostas: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    PageControl3: TPageControl;
    tsNFe: TTabSheet;
    tsNFCe: TTabSheet;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    btnInutilizar: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    btnConsultarRecibo: TButton;
    btnImportarXML: TButton;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    btnGerarTXT: TButton;
    btnAdicionarProtNFe: TButton;
    btnCarregarXMLEnviar: TButton;
    btnCartadeCorrecao: TButton;
    btnValidarAssinatura: TButton;
    btnManifDestConfirmacao: TButton;
    btnImprimirCCe: TButton;
    btnEnviarEvento: TButton;
    btnCriarEnviarNFCe: TButton;
    btnDistribuicaoDFe: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet14: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    btnInutilizarImprimir: TButton;
    ts_EMPRESA: TTabSheet;
    Label45: TLabel;
    Sequencia: TTabSheet;
    Label50: TLabel;
    TabSheet16: TTabSheet;
    DBGrid1: TDBGrid;
    Label48: TLabel;
    DBEdit2: TDBEdit;
    btn_GERARELATORIO: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label49: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label51: TLabel;
    Label52: TLabel;
    DataSource1: TDataSource;
    edt_NOMEREDUZIDO: TEdit;
    edt_RAZFILIAL: TEdit;
    gb_JUROSEPRAZOS: TGroupBox;
    edt_TX_JUROS: TEdit;
    edt_DIAS_ATRASO: TEdit;
    edt_TX_MULTA: TEdit;
    edt_DIAS_PROTESTO: TEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    edt_MSG_BOLETO: TEdit;
    Label58: TLabel;
    Label59: TLabel;
    edt_NUM_NF: TEdit;
    btn_REIMPRIME_NFE: TBitBtn;
    gp_CAMINHOCOPIANFE: TGroupBox;
    Label60: TLabel;
    edt_PATH_COPIA_NFE: TEdit;
    gp_MARCA: TGroupBox;
    Label61: TLabel;
    edt_MARCAUNICA: TEdit;
    IdFTP1: TIdFTP;
    zqry_SGINICONSP: TZQuery;
    wbRESPOSTA: TWebBrowser;
    sp_SEQUENCIA_EDITAR: TSpeedButton;
    sp_SEQUENCIA_GRAVAR: TSpeedButton;
    sp_EMPRESA_GRAVAR: TSpeedButton;
    btn_GRAVAR: TBitBtn;
    btn_FECHAR: TBitBtn;
    edt_NUM_NFE: TEdit;
    ACBrMail1: TACBrMail;
    gb_CONTAPLANO: TGroupBox;
    db_look_CONTA: TDBLookupComboBox;
    Label72: TLabel;
    db_look_PLANO: TDBLookupComboBox;
    Label73: TLabel;
    gb_EAN_CODPROD: TGroupBox;
    Label74: TLabel;
    edt_BUSCAEAN: TEdit;
    btn_PREFSISTEMA: TBitBtn;
    Label76: TLabel;
    edt_CAIXACENTRALIZADO: TEdit;
    ACBrCEP1: TACBrCEP;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    gb_DESTAQUEICMS: TGroupBox;
    Label78: TLabel;
    edt_ALIQDESTICMS: TEdit;
    PageControl4: TPageControl;
    TabSheet3: TTabSheet;
    Label44: TLabel;
    Label7: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    gbCertificado: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    sp_MOSTRACERT: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    btn_CERTIFICADO_DTVALIDADE: TButton;
    btn_CERTIFICADO_NUMSERIE: TButton;
    btn_CERTIFICADO_SUBJECT: TButton;
    btn_CERTIFICADO_CNPJ: TButton;
    Edit1: TEdit;
    btn_CERTIFICADO_RSA: TButton;
    cbAssinar: TCheckBox;
    cbSSLlib: TComboBox;
    cbCRYPTLIB: TComboBox;
    cbHTTPLIB: TComboBox;
    cbXMLSIGNLIB: TComboBox;
    btn_CERTIFICADO_HTTPS: TBitBtn;
    btn_CERTIFICADO_X509: TBitBtn;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label29: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label42: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtPathSchemas: TEdit;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    cbSSLTYPE: TComboBox;
    seTIMEOUT: TSpinEdit;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet12: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label75: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    btn_BUSCACEP: TBitBtn;
    TabSheet13: TTabSheet;
    sbPathNFe: TSpeedButton;
    Label35: TLabel;
    Label39: TLabel;
    sbPathCan: TSpeedButton;
    Label46: TLabel;
    sbPathCCe: TSpeedButton;
    Label40: TLabel;
    sbPathInu: TSpeedButton;
    Label41: TLabel;
    sbPathDPEC: TSpeedButton;
    Label47: TLabel;
    sbPathEvento: TSpeedButton;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    edtPathCCe: TEdit;
    edtPathNFe: TEdit;
    edtPathCan: TEdit;
    edtPathInu: TEdit;
    edtPathDPEC: TEdit;
    edtPathEvento: TEdit;
    cbxSepararPorModelo: TCheckBox;
    TabSheet17: TTabSheet;
    Label62: TLabel;
    SpeedButton1: TSpeedButton;
    edtLOGOMARCA: TEdit;
    rgTIPODANFE: TRadioGroup;
    tb_TEF: TTabSheet;
    sp_GRAVAR_TEF: TSpeedButton;
    pn_DECORA_TEF: TPanel;
    tb_: TTabSheet;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBGrid4: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    TabSheet19: TTabSheet;
    PageControl2: TPageControl;
    ACBrNFe2: TACBrNFe;
    btn_GERARELATORIONFe: TBitBtn;
    btn_GERARELATORIONFCe: TBitBtn;
    ACBrSAT1: TACBrSAT;
    TabSheet2: TTabSheet;
    Label80: TLabel;
    edLog: TEdit;
    Label81: TLabel;
    edNomeDLL: TEdit;
    Label82: TLabel;
    edtCodigoAtivacao: TEdit;
    Label83: TLabel;
    edtSwHAssinatura: TEdit;
    Label84: TLabel;
    edtNUMSERIESAT: TEdit;
    SbArqLog: TBitBtn;
    sbNomeDLL: TBitBtn;
    GroupBox1: TGroupBox;
    edt_TEFCAPPTA: TEdit;
    Label43: TLabel;
    Label68: TLabel;
    edt_TEFCIELLO: TEdit;
    edt_TEFREDE: TEdit;
    Label77: TLabel;
    cb_TIPO_PARCELA: TComboBox;
    Label79: TLabel;
    GroupBox2: TGroupBox;
    edt_SATCFE: TEdit;
    Label85: TLabel;
    cbxAmbiente: TComboBox;
    Label86: TLabel;
    cbxRegTributario: TComboBox;
    Label87: TLabel;
    cbxFormatXML: TCheckBox;
    cbxRemoverAcentos: TCheckBox;
    GroupBox5: TGroupBox;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    lImpressora: TLabel;
    seLargura: TSpinEdit;
    seMargemTopo: TSpinEdit;
    seMargemFundo: TSpinEdit;
    seMargemEsquerda: TSpinEdit;
    seMargemDireita: TSpinEdit;
    bImpressora: TButton;
    cbPreview: TCheckBox;
    PrintDialog1: TPrintDialog;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    Label93: TLabel;
    edt_TEFTROCA: TEdit;
    edt_ESPERASLEEP: TEdit;
    edt_ESPERASTS: TEdit;
    Label94: TLabel;
    Label95: TLabel;
    TabSheet22: TTabSheet;
    Panel6: TPanel;
    Shape1: TShape;
    Label103: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Button52: TButton;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    PageControl7: TPageControl;
    TabSheet23: TTabSheet;
    Panel7: TPanel;
    GroupBox7: TGroupBox;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Button53: TButton;
    CheckBox7: TCheckBox;
    ComboBox1: TComboBox;
    Button54: TButton;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    TabSheet24: TTabSheet;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button55: TButton;
    Button56: TButton;
    GroupBox10: TGroupBox;
    Label109: TLabel;
    Label110: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox11: TGroupBox;
    Label111: TLabel;
    Edit8: TEdit;
    Button57: TButton;
    Button58: TButton;
    GroupBox12: TGroupBox;
    Button59: TButton;
    ComboBox2: TComboBox;
    TabSheetCupomTef: TTabSheet;
    MemoCupomTEF: TMemo;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lMensagemOperador: TLabel;
    Label112: TLabel;
    pMensagemCliente: TPanel;
    Label113: TLabel;
    lMensagemCliente: TLabel;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancNFClick(Sender: TObject);
    procedure btnValidarXMLClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCriarEnviarClick(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnGerarNFEClick(Sender: TObject);
    procedure btnConsCadClick(Sender: TObject);
    procedure btnGerarPDFClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure btnConsultarReciboClick(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure btnImportarXMLClick(Sender: TObject);
    procedure lblMouseEnter(Sender: TObject);
    procedure lblMouseLeave(Sender: TObject);
    procedure lblColaboradorClick(Sender: TObject);
    procedure lblPatrocinadorClick(Sender: TObject);
    procedure lblDoar1Click(Sender: TObject);
    procedure btnConsultarChaveClick(Sender: TObject);
    procedure btnCancelarChaveClick(Sender: TObject);
    procedure btnGerarTXTClick(Sender: TObject);
    procedure btnAdicionarProtNFeClick(Sender: TObject);
    procedure btnCarregarXMLEnviarClick(Sender: TObject);
    procedure btnCartadeCorrecaoClick(Sender: TObject);
    procedure btnValidarAssinaturaClick(Sender: TObject);
    procedure btnManifDestConfirmacaoClick(Sender: TObject);
    procedure btnImprimirCCeClick(Sender: TObject);
    procedure btnEnviarEventoClick(Sender: TObject);
    procedure btnCriarEnviarNFCeClick(Sender: TObject);
    procedure btnDistribuicaoDFeClick(Sender: TObject);
    procedure PathClick(Sender: TObject);
    procedure sbPathNFeClick(Sender: TObject);
    procedure sbPathCanClick(Sender: TObject);
    procedure sbPathCCeClick(Sender: TObject);
    procedure sbPathInuClick(Sender: TObject);
    procedure sbPathDPECClick(Sender: TObject);
    procedure sbPathEventoClick(Sender: TObject);
    procedure spPathSchemasClick(Sender: TObject);
//    procedure cbTipoEmissaoChange(Sender: TObject);
    procedure btnInutilizarImprimirClick(Sender: TObject);
    procedure btn_CERTIFICADO_DTVALIDADEClick(Sender: TObject);
    procedure btn_CERTIFICADO_NUMSERIEClick(Sender: TObject);
    procedure btn_CERTIFICADO_SUBJECTClick(Sender: TObject);
    procedure btn_CERTIFICADO_CNPJClick(Sender: TObject);
    procedure btn_CERTIFICADO_RSAClick(Sender: TObject);
//    procedure BitBtn31Click(Sender: TObject);
//    procedure BitBtn32Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_GERARELATORIOClick(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure TabSheet16Enter(Sender: TObject);
    procedure btn_REIMPRIME_NFEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
    procedure cbSSLLibChange(Sender: TObject);
    procedure cbCryptLibChange(Sender: TObject);
    procedure cbXmlSignLibChange(Sender: TObject);
    procedure cbSSLTypeChange(Sender: TObject);
    procedure cbHttpLibChange(Sender: TObject);
    procedure GetCert(Sender: TObject);

    procedure sp_SEQUENCIA_EDITARClick(Sender: TObject);
    procedure sp_SEQUENCIA_GRAVARClick(Sender: TObject);
    procedure sp_EMPRESA_GRAVARClick(Sender: TObject);
    procedure btn_CERTIFICADO_HTTPSClick(Sender: TObject);
    procedure btn_CERTIFICADO_X509Click(Sender: TObject);
    procedure btn_GRAVARClick(Sender: TObject);
    procedure btn_FECHARClick(Sender: TObject);
    procedure sp_MOSTRACERTClick(Sender: TObject);
    procedure sp_GRAVAR_TEFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_PREFSISTEMAClick(Sender: TObject);
    procedure btn_BUSCACEPClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure cb_TIPO_PARCELAExit(Sender: TObject);
    procedure SbArqLogClick(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure btn_GERARELATORIONFeClick(Sender: TObject);
    procedure btn_GERARELATORIONFCeClick(Sender: TObject);
    procedure sbNomeDLLClick(Sender: TObject);
    procedure AjustaACBrSAT;
    procedure AtivaTefDial;
    procedure bImpressoraClick(Sender: TObject);

  private
    { Private declarations }
    procedure GerarNFe(NumNFe : String);
    procedure GerarNFCe(NumNFe : String);

    procedure AtualizaSSLLibsCombo;
    procedure LoadConsulta201(XML: AnsiString);
    procedure GetsignAC(var Chave: AnsiString);
    procedure GetcodigoDeAtivacao(var Chave: AnsiString);

  public
    { Public declarations }
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    var
    cod_formaemissao, cod_emitcodcidade, mexeuconfiguracao:integer;
    tp_parcela_tef:string;
  end;

var
  frm_PREFACBR: Tfrm_PREFACBR;

implementation

uses
  strutils, math, TypInfo, DateUtils, ufrmStatus, synacode, pcnNFe,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl, dados, rel_notas, selecionacert, prefsistema, rel_notasresumido;

const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure Tfrm_PREFACBR.AtivaTefDial;
begin
  //AcbrTEfd1.AtivarGP(tacbrtefdtipo(1));
  memocupomtef.Lines.Add('Ativando GP');
  //ACBrTEFD1.Inicializar(TACBrTEFDTipo(1));
  memocupomtef.Lines.Add('Inicializar');
  SHOWMESSAGE('TEF ATIVADO');
end;

procedure Tfrm_PREFACBR.GetsignAC(var Chave: AnsiString);
begin
  Chave := AnsiString( edtSwHAssinatura.Text );
end;

procedure Tfrm_PREFACBR.GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := AnsiString( edtCodigoAtivacao.Text );
end;

procedure Tfrm_PREFACBR.AJUSTAACBRSAT;
begin
   with frm_prefacbr.ACBrSAT1 do
  begin
    //Modelo  := satdinamico_cdecl;//TACBrSATModelo( cbxModelo.ItemIndex ) ;
    ArqLOG  := edLog.Text;
    NomeDLL := edNomeDLL.Text;
    Config.ide_numeroCaixa := 1;//seNumeroCaixa.Value;
    Config.ide_tpAmb       := taPRODUCAO;//TpcnTipoAmbiente( cbxAmbiente.ItemIndex );
    Config.ide_CNPJ        := edtEmitCNPJ.text;//edtSwHCNPJ.Text;
    Config.emit_CNPJ       := edtEmitCNPJ.Text;
    Config.emit_IE         := edtEmitIE.Text;
    //Config.emit_IM         := edtEmitIM.Text;
    Config.emit_cRegTrib      := TpcnRegTrib( cbxRegTributario.ItemIndex ) ;
   // Config.emit_cRegTribISSQN := TpcnRegTribISSQN( cbxRegTribISSQN.ItemIndex ) ;
    //Config.emit_indRatISSQN   := TpcnindRatISSQN( cbxIndRatISSQN.ItemIndex ) ;
   // Config.PaginaDeCodigo     := sePagCod.Value;
   // Config.EhUTF8             := cbxUTF8.Checked;
    //Config.infCFe_versaoDadosEnt := StringToFloatDef( sfeVersaoEnt.Text, cversaoDadosEnt);

    //ConfigArquivos.SalvarCFe := cbxSalvarCFe.Checked;
    //ConfigArquivos.SalvarCFeCanc := cbxSalvarCFeCanc.Checked;
    //ConfigArquivos.SalvarEnvio := cbxSalvarEnvio.Checked;
    ConfigArquivos.SepararPorCNPJ := cbxSepararPorCNPJ.Checked;
    ConfigArquivos.SepararPorModelo := cbxSepararPorModelo.Checked;
    //ConfigArquivos.SepararPorDia := cbxSepararPorDia.Checked;
    //ConfigArquivos.SepararPorMes := cbxSepararPorMes.Checked;
    //ConfigArquivos.SepararPorAno := cbxSepararPorAno.Checked;

   { if Modelo = mfe_Integrador_XML then
    begin
      frm_PREFACBR.ACBrIntegrador1.PastaInput  := edMFEInput.Text;
      frm_PREFACBR.ACBrIntegrador1.PastaOutput := edMFEOutput.Text;
      frm_PREFACBR.ACBrIntegrador1.Timeout     := seMFETimeout.Value;

      Integrador := frm_PREFACBR.ACBrIntegrador1;
    end;}
  end
end;


procedure Tfrm_PREFACBR.GetCert(Sender: TObject);
var
  I: Integer;
begin
  frSelecionarCertificado := TfrSelecionarCertificado.Create(Self);
  try
    ACBrNFe1.SSL.LerCertificadosStore;

    For I := 0 to ACBrNFe1.SSL.ListaCertificados.Count-1 do
    begin
      with ACBrNFe1.SSL.ListaCertificados[I] do
      begin
        if (CNPJ <> '') then
        begin
          with frSelecionarCertificado.StringGrid1 do
          begin
            RowCount := RowCount + 1;
            Cells[ 0, RowCount-1] := NumeroSerie;
            Cells[ 1, RowCount-1] := RazaoSocial;
            Cells[ 2, RowCount-1] := CNPJ;
            Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
            Cells[ 4, RowCount-1] := Certificadora;
          end;
        end;
      end;
    end;

    frSelecionarCertificado.ShowModal;

    if frSelecionarCertificado.ModalResult = mrOK then
      edtNumSerie.Text := frSelecionarCertificado.StringGrid1.Cells[ 0,
                            frSelecionarCertificado.StringGrid1.Row];
      finally
     frSelecionarCertificado.Free;
  end;
end;

procedure Tfrm_PREFACBR.cbSSLLibChange(Sender: TObject);
begin
  try
    if cbSSLLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbSSLLib.ItemIndex);
      showmessage(inttostr(cbssllib.ItemIndex));
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrm_PREFACBR.cbSSLTypeChange(Sender: TObject);
begin
  if cbSSLType.ItemIndex <> -1 then
     ACBrNFe1.SSL.SSLType := TSSLType(cbSSLType.ItemIndex);
end;

procedure Tfrm_PREFACBR.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );
 cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;
end;

procedure Tfrm_PREFACBR.bImpressoraClick(Sender: TObject);
begin
  if PrintDialog1.Execute then lImpressora.Caption := Printer.Printers[Printer.PrinterIndex] ;
end;

procedure Tfrm_PREFACBR.cbCryptLibChange(Sender: TObject);
begin
  try
    if cbCryptLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := TSSLCryptLib(cbCryptLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrm_PREFACBR.cbHttpLibChange(Sender: TObject);
begin
  try
    if cbHttpLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := TSSLHttpLib(cbHttpLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrm_PREFACBR.cbXmlSignLibChange(Sender: TObject);
begin
  try
    if cbXmlSignLib.ItemIndex <> -1 then
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
  finally
    AtualizaSSLLibsCombo;
  end;
end;

procedure Tfrm_PREFACBR.cb_TIPO_PARCELAExit(Sender: TObject);
begin
if cb_TIPO_PARCELA.text='Administradora' then tp_parcela_tef:='A';
if cb_TIPO_PARCELA.text='Loja' then tp_parcela_tef:='L';
if cb_TIPO_PARCELA.Text='' then tp_parcela_tef:='L';
end;

procedure Tfrm_PREFACBR.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteInteger( 'Certificado','SSLLib' , cbSSLLib.ItemIndex) ;
      Ini.WriteInteger( 'Certificado','CryptLib' , cbCryptLib.ItemIndex) ;
      Ini.WriteInteger( 'Certificado','HttpLib' , cbHttpLib.ItemIndex) ;
      Ini.WriteInteger( 'Certificado','XmlSignLib' , cbXmlSignLib.ItemIndex) ;
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteBool(   'Geral','AtualizarXML'      ,ckSalvar.Checked) ;
      Ini.WriteBool(   'Geral','ExibirErroSchema'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','FormatoAlerta'  ,edtFormatoAlerta.Text) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',cbFormaEmissao.ItemIndex) ;
      Ini.WriteInteger( 'Geral','ModeloDF',cbModeloDF.ItemIndex) ;
      Ini.WriteInteger( 'Geral','VersaoDF',cbVersaoDF.ItemIndex) ;
      Ini.WriteString( 'Geral','IdToken'  ,edtIdToken.Text) ;
      Ini.WriteString( 'Geral','Token'  ,edtToken.Text) ;
      Ini.WriteBool(   'Geral','RetirarAcentos'      ,cbxRetirarAcentos.Checked) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;
      Ini.WriteString( 'Geral','PathSchemas'  ,edtPathSchemas.Text) ;

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked) ;
      Ini.WriteBool(   'WebService','SalvarSOAP',cbxSalvarSOAP.Checked) ;
      Ini.WriteBool(   'WebService','AjustarAut',cbxAjustarAut.Checked) ;
      Ini.WriteString( 'WebService','Aguardar'    ,edtAguardar.Text) ;
      Ini.WriteString( 'WebService','Tentativas'  ,edtTentativas.Text) ;
      Ini.WriteString( 'WebService','Intervalo'  ,edtIntervalo.Text) ;
      Ini.WriteInteger( 'WebService','TimeOut'   ,seTimeOut.Value) ;
      Ini.WriteInteger( 'WebService','SSLType' , cbSSLType.ItemIndex) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteBool(   'Arquivos','Salvar'          ,cbxSalvarArqs.Checked) ;
      Ini.WriteBool(   'Arquivos','PastaMensal'     ,cbxPastaMensal.Checked) ;
      Ini.WriteBool(   'Arquivos','AddLiteral'      ,cbxAdicionaLiteral.Checked) ;
      Ini.WriteBool(   'Arquivos','EmissaoPathNFe'  ,cbxEmissaoPathNFe.Checked) ;
      Ini.WriteBool(   'Arquivos','SalvarPathEvento',cbxSalvaPathEvento.Checked) ;
      Ini.WriteBool(   'Arquivos','SepararPorCNPJ'  ,cbxSepararPorCNPJ.Checked) ;
      Ini.WriteBool(   'Arquivos','SepararPorModelo',cbxSepararPorModelo.Checked) ;
      Ini.WriteString( 'Arquivos','PathNFe'    ,edtPathNFe.Text) ;
      Ini.WriteString( 'Arquivos','PathCan'    ,edtPathCan.Text) ;
      Ini.WriteString( 'Arquivos','PathInu'    ,edtPathInu.Text) ;
      Ini.WriteString( 'Arquivos','PathDPEC'   ,edtPathDPEC.Text) ;
      Ini.WriteString( 'Arquivos','PathCCe'    ,edtPathCCe.Text) ;
      Ini.WriteString( 'Arquivos','PathEvento' ,edtPathEvento.Text) ;

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ;
      INI.WriteInteger('Emitente','RegTributario',cbxRegTributario.ItemIndex);

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;

      Ini.WriteInteger( 'DANFE','Tipo'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteString( 'DANFE','LogoMarca'   ,edtLogoMarca.Text) ;

     // INI.WriteInteger('SAT','Modelo',cbxModelo.ItemIndex);
      INI.WriteString('SAT','ArqLog',edLog.Text);
      INI.WriteString('SAT','NomeDLL',edNomeDLL.Text);
      INI.WriteString('SAT','CodigoAtivacao',edtCodigoAtivacao.Text);
      //INI.WriteString('SAT','CodigoUF',edtCodUF.Text);
      //INI.WriteInteger('SAT','NumeroCaixa',seNumeroCaixa.Value);
      INI.WriteInteger('SAT','Ambiente',cbxAmbiente.ItemIndex);
      //INI.WriteInteger('SAT','PaginaDeCodigo',sePagCod.Value);
      //INI.WriteFloat('SAT','versaoDadosEnt', StringToFloatDef( sfeVersaoEnt.Text, cversaoDadosEnt) );
      INI.WriteBool('SAT','FormatarXML', cbxFormatXML.Checked);
      INI.WriteBool('SAT','RetirarAcentos', cbxRemoverAcentos.Checked);
      //INI.WriteBool('SAT','SalvarCFe', cbxSalvarCFe.Checked);
      //INI.WriteBool('SAT','SalvarCFeCanc', cbxSalvarCFeCanc.Checked);
      //INI.WriteBool('SAT','SalvarEnvio', cbxSalvarEnvio.Checked);
      INI.WriteBool('SAT','SepararPorCNPJ', cbxSepararPorCNPJ.Checked);
      INI.WriteBool('SAT','SepararPorModelo', cbxSepararPorModelo.Checked);
      //INI.WriteBool('SAT','SepararPorDIA', cbxSepararPorDia.Checked);
      //INI.WriteBool('SAT','SepararPorMES', cbxSepararPorMes.Checked);
      //INI.WriteBool('SAT','SepararPorANO', cbxSepararPorAno.Checked);
     // INI.WriteString('SAT','SchemaVendaAPL',edSchemaVendaAPL.Text);
    //  INI.WriteString('SAT','SchemaVendaSAT',edSchemaVendaSAT.Text);
     // INI.WriteInteger('SAT','XMLLib',cbxXmlSignLib.ItemIndex);

     // INI.WriteInteger('PosPrinter','Modelo',cbxModeloPosPrinter.ItemIndex);
      //INI.WriteString('PosPrinter','Porta',cbxPorta.Text);
      //INI.WriteInteger('PosPrinter','PaginaDeCodigo',cbxPagCodigo.ItemIndex);
      //INI.WriteString('PosPrinter','ParamsString',ACBrPosPrinter1.Device.ParamsString);
      //INI.WriteInteger('PosPrinter','Colunas',seColunas.Value);
     // INI.WriteInteger('PosPrinter','EspacoLinhas',seEspLinhas.Value);
     // INI.WriteInteger('PosPrinter','LinhasEntreCupons',seLinhasPular.Value);

      INI.WriteString('SwH','CNPJ',edtEmitCNPJ.Text);
      INI.WriteString('SwH','Assinatura',edtSwHAssinatura.Text);

      {INI.WriteBool('Fortes','UsarFortes',cbUsarFortes.Checked) ; }
      INI.WriteInteger('Fortes','Largura',seLargura.Value);
      INI.WriteInteger('Fortes','MargemTopo',seMargemTopo.Value);
      INI.WriteInteger('Fortes','MargemFundo',seMargemFundo.Value);
      INI.WriteInteger('Fortes','MargemEsquerda',seMargemEsquerda.Value);
      INI.WriteInteger('Fortes','MargemDireita',seMargemDireita.Value);
      INI.WriteBool('Fortes','Preview',cbPreview.Checked);

      INI.WriteString('Printer','Name',lImpressora.Caption);
      {INI.WriteBool('EscPos','ImprimirItemUmaLinha',cbImprimir1Linha.Checked);
      INI.WriteBool('EscPos','ImprimirChaveUmaLinha',cbImprimirChaveUmaLinha.Checked);

      INI.WriteInteger('Rede','tipoInter',rgRedeTipoInter.ItemIndex);
      INI.WriteInteger('Rede','tipoLan',rgRedeTipoLan.ItemIndex);
      INI.WriteString('Rede','SSID',edRedeSSID.Text);
      INI.WriteInteger('Rede','seg',cbxRedeSeg.ItemIndex);
      INI.WriteString('Rede','codigo',edRedeCodigo.Text);
      INI.WriteString('Rede','lanIP',edRedeIP.Text);
      INI.WriteString('Rede','lanMask',edRedeMask.Text);
      INI.WriteString('Rede','lanGW',edRedeGW.Text);
      INI.WriteString('Rede','lanDNS1',edRedeDNS1.Text);
      INI.WriteString('Rede','lanDNS2',edRedeDNS2.Text);
      INI.WriteString('Rede','usuario',edRedeUsuario.Text);
      INI.WriteString('Rede','senha',edRedeSenha.Text);
      INI.WriteInteger('Rede','proxy',cbxRedeProxy.ItemIndex);
      INI.WriteString('Rede','proxy_ip',edRedeProxyIP.Text);
      INI.WriteInteger('Rede','proxy_porta',edRedeProxyPorta.Value);
      INI.WriteString('Rede','proxy_user',edRedeProxyUser.Text);
      INI.WriteString('Rede','proxy_senha',edRedeProxySenha.Text);

      INI.WriteString('MFE','Input',edMFEInput.Text);
      INI.WriteString('MFE','Output',edMFEOutput.Text);
      INI.WriteInteger('MFE','Timeout',seMFETimeout.Value);}



  finally
     Ini.Free ;
  end;

end;

procedure Tfrm_PREFACBR.LerConfiguracao;
Var IniFile,texto  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  ini.free;

  inifile:='';
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      cbSSLLib.ItemIndex:= Ini.ReadInteger( 'Certificado','SSLLib' ,0) ;
      //showmessage(inttostr(cbssllib.ItemIndex));
      cbCryptLib.ItemIndex := Ini.ReadInteger( 'Certificado','CryptLib' , 0) ;
      cbHttpLib.ItemIndex := Ini.ReadInteger( 'Certificado','HttpLib' , 0) ;
      cbXmlSignLib.ItemIndex := Ini.ReadInteger( 'Certificado','XmlSignLib' , 0) ;
      edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
      edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
      edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
      ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
      ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

     if cbModeloDF.ItemIndex = 0 then
        ACBrNFe1.DANFE := ACBrNFeDANFeRL1
      else
         ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1 ;

      cbxAtualizarXML.Checked    := Ini.ReadBool(   'Geral','AtualizarXML',True) ;
      cbxExibirErroSchema.Checked    := Ini.ReadBool(   'Geral','ExibirErroSchema',True) ;
      edtFormatoAlerta.Text    := Ini.ReadString( 'Geral','FormatoAlerta'  ,'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.') ;
      cbFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      cbModeloDF.ItemIndex := Ini.ReadInteger( 'Geral','ModeloDF',0) ;
      cbVersaoDF.ItemIndex := Ini.ReadInteger( 'Geral','VersaoDF',0) ;
      edtIdToken.Text      := Ini.ReadString( 'Geral','IdToken'  ,'') ;
      edtToken.Text        := Ini.ReadString( 'Geral','Token'  ,'') ;
      ckSalvar.Checked     := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral','RetirarAcentos',True) ;
      edtPathLogs.Text     := Ini.ReadString( 'Geral','PathSalvar'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs') ;
      edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) )) ;
      //edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\');//+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) )) ;

      ACBrNFe1.SSL.DescarregarCertificado;

      with ACBrNFe1.Configuracoes.Geral do
       begin
        SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
        SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
        SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
        SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
        AtualizaSSLLibsCombo;
   //     showmessage( inttostr(cbSSLLib.ItemIndex)+' - '+inttostr(cbCryptLib.ItemIndex));
        AtualizarXMLCancelado := cbxAtualizarXML.Checked;
        ExibirErroSchema := cbxExibirErroSchema.Checked;
        RetirarAcentos   := cbxRetirarAcentos.Checked;
        FormatoAlerta    := edtFormatoAlerta.Text;
        FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
         ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
         VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);
         IdCSC            := edtIdToken.Text;
         CSC              := edtToken.Text;
         Salvar           := ckSalvar.Checked;
       end;

      cbUF.ItemIndex        := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      rgTipoAmb.ItemIndex   := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      cbxVisualizar.Checked  := Ini.ReadBool(    'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked := Ini.ReadBool(    'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(   'WebService','AjustarAut' ,False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','5') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;

       seTimeOut.Value        := Ini.ReadInteger('WebService','TimeOut'  ,5000) ;
      cbSSLType.ItemIndex    := Ini.ReadInteger('WebService','SSLType' , 0) ;

      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         := cbUF.Text;
         Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
         Visualizar := cbxVisualizar.Checked;
         Salvar     := cbxSalvarSOAP.Checked;
         AjustaAguardaConsultaRet := cbxAjustarAut.Checked;
         if NaoEstaVazio(edtAguardar.Text)then
            AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
         else
            edtAguardar.Text := IntToStr(AguardarConsultaRet);

         if NaoEstaVazio(edtTentativas.Text) then
            Tentativas          := StrToInt(edtTentativas.Text)
         else
            edtTentativas.Text := IntToStr(Tentativas);

         if NaoEstaVazio(edtIntervalo.Text) then
            IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
         else
            edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

         TimeOut := seTimeOut.Value;

         ProxyHost := edtProxyHost.Text;
         ProxyPort := edtProxyPorta.Text;
         ProxyUser := edtProxyUser.Text;
         ProxyPass := edtProxySenha.Text;
       end;

      ACBrNFe1.SSL.SSLType := TSSLType( cbSSLType.ItemIndex );

      cbxSalvarArqs.Checked       := Ini.ReadBool(   'Arquivos','Salvar'     ,false);
      cbxPastaMensal.Checked      := Ini.ReadBool(   'Arquivos','PastaMensal',false);
      cbxAdicionaLiteral.Checked  := Ini.ReadBool(   'Arquivos','AddLiteral' ,false);
      cbxEmissaoPathNFe.Checked   := Ini.ReadBool(   'Arquivos','EmissaoPathNFe',false);
      cbxSalvaPathEvento.Checked  := Ini.ReadBool(   'Arquivos','SalvarPathEvento',false);
      cbxSepararPorCNPJ.Checked   := Ini.ReadBool(   'Arquivos','SepararPorCNPJ',false);
      cbxSepararPorModelo.Checked := Ini.ReadBool(   'Arquivos','SepararPorModelo',false);
      edtPathNFe.Text             := Ini.ReadString( 'Arquivos','PathNFe'    ,'') ;
      edtPathCan.Text             := Ini.ReadString( 'Arquivos','PathCan'    ,'') ;
      edtPathInu.Text             := Ini.ReadString( 'Arquivos','PathInu'    ,'') ;
      edtPathDPEC.Text            := Ini.ReadString( 'Arquivos','PathDPEC'   ,'') ;
      edtPathCCe.Text             := Ini.ReadString( 'Arquivos','PathCCe'   ,'') ;
      edtPathEvento.Text          := Ini.ReadString( 'Arquivos','PathEvento','') ;

      with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := cbxSalvarArqs.Checked;
         SepararPorMes      := cbxPastaMensal.Checked;
         AdicionarLiteral   := cbxAdicionaLiteral.Checked;
         EmissaoPathNFe     := cbxEmissaoPathNFe.Checked;
         SalvarEvento       := cbxSalvaPathEvento.Checked;
         SepararPorCNPJ     := cbxSepararPorCNPJ.Checked;
         SepararPorModelo   := cbxSepararPorModelo.Checked;
         PathSalvar         := edtPathLogs.Text;
         PathSchemas        := edtPathSchemas.Text;
         PathNFe            := edtPathNFe.Text;
         PathInu            := edtPathInu.Text;
         PathEvento         := edtPathEvento.Text;
       end;

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'DANFE','Tipo'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'DANFE','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;


    edLog.Text             := INI.ReadString('SAT','ArqLog','');
    edNomeDLL.Text         := INI.ReadString('SAT','NomeDLL','');
    edtCodigoAtivacao.Text := INI.ReadString('SAT','CodigoAtivacao','');
    cbxAmbiente.ItemIndex  := INI.ReadInteger('SAT','Ambiente',0);
    cbxFormatXML.Checked   := INI.ReadBool('SAT','FormatarXML', True);
    cbxRemoverAcentos.Checked:= INI.ReadBool('SAT','RetirarAcentos', True);
    cbxSepararPorCNPJ.Checked:= INI.ReadBool('SAT','SepararPorCNPJ', True);
    cbxSepararPorModelo.Checked := INI.ReadBool('SAT','SepararPorModelo', True);
    //edSchemaVendaAPL.Text := INI.ReadString('SAT','SchemaVendaAPL','');
    //edSchemaVendaSAT.Text := INI.ReadString('SAT','SchemaVendaSAT','');
    //cbxXmlSignLib.ItemIndex := INI.ReadInteger('SAT','XMLLib',Integer(ACBrSAT1.Config.XmlSignLib));

    {cbxModeloPosPrinter.ItemIndex := INI.ReadInteger('PosPrinter', 'Modelo', Integer(ACBrPosPrinter1.Modelo));
    cbxPorta.Text := INI.ReadString('PosPrinter','Porta',ACBrPosPrinter1.Porta);
    cbxPagCodigo.ItemIndex := INI.ReadInteger('PosPrinter','PaginaDeCodigo',Integer(ACBrPosPrinter1.PaginaDeCodigo));
    ACBrPosPrinter1.Device.ParamsString := INI.ReadString('PosPrinter','ParamsString','');
    seColunas.Value := INI.ReadInteger('PosPrinter','Colunas',ACBrPosPrinter1.ColunasFonteNormal);
    seEspLinhas.Value := INI.ReadInteger('PosPrinter','EspacoLinhas',ACBrPosPrinter1.EspacoEntreLinhas);
    seLinhasPular.Value := INI.ReadInteger('PosPrinter','LinhasEntreCupons',ACBrPosPrinter1.LinhasEntreCupons);}

    cbxRegTributario.ItemIndex := INI.ReadInteger('Emit','RegTributario',0);
    edtSwHAssinatura.Text := INI.ReadString('SwH','Assinatura','');

    {cbUsarFortes.Checked   := INI.ReadBool('Fortes','UsarFortes', True) ;   }
    //cbUsarEscPos.Checked   := not cbUsarFortes.Checked;
    seLargura.Value        := INI.ReadInteger('Fortes','Largura',ACBrSATExtratoFortes1.LarguraBobina);
   { seMargemTopo.Value     := INI.ReadInteger('Fortes','MargemTopo',ACBrSATExtratoFortes1.
    seMargemFundo.Value    := INI.ReadInteger('Fortes','MargemFundo',ACBrSATExtratoFortes1.Margens.Fundo);
    seMargemEsquerda.Value := INI.ReadInteger('Fortes','MargemEsquerda',ACBrSATExtratoFortes1.Margens.Esquerda);
    seMargemDireita.Value  := INI.ReadInteger('Fortes','MargemDireita',ACBrSATExtratoFortes1.Margens.Direita);  }

    cbPreview.Checked      := INI.ReadBool('Fortes','Preview',True);

    lImpressora.Caption    := INI.ReadString('Printer','Name', '');
    if EstaVazio(lImpressora.Caption) then
    begin
      Printer.PrinterIndex := -1;
      lImpressora.Caption  := Printer.Printers[Printer.PrinterIndex];
    end;

    {cbImprimir1Linha.Checked := INI.ReadBool('EscPos','ImprimirItemUmaLinha',cbImprimir1Linha.Checked);
    cbImprimirChaveUmaLinha.Checked := INI.ReadBool('EscPos','ImprimirChaveUmaLinha',cbImprimirChaveUmaLinha.Checked);}

    {rgRedeTipoInter.ItemIndex := INI.ReadInteger('Rede','tipoInter',0);
    rgRedeTipoLan.ItemIndex   := INI.ReadInteger('Rede','tipoLan',0);
    edRedeSSID.Text           := INI.ReadString('Rede','SSID','');
    cbxRedeSeg.ItemIndex      := INI.ReadInteger('Rede','seg',0);
    edRedeCodigo.Text         := INI.ReadString('Rede','codigo','');
    edRedeIP.Text             := INI.ReadString('Rede','lanIP','');
    edRedeMask.Text           := INI.ReadString('Rede','lanMask','');
    edRedeGW.Text             := INI.ReadString('Rede','lanGW','');
    edRedeDNS1.Text           := INI.ReadString('Rede','lanDNS1','');
    edRedeDNS2.Text           := INI.ReadString('Rede','lanDNS2','');
    edRedeUsuario.Text        := INI.ReadString('Rede','usuario','');
    edRedeSenha.Text          := INI.ReadString('Rede','senha','');
    cbxRedeProxy.ItemIndex    := INI.ReadInteger('Rede','proxy',0);
    edRedeProxyIP.Text        := INI.ReadString('Rede','proxy_ip','');
    edRedeProxyPorta.Value    := INI.ReadInteger('Rede','proxy_porta',0);
    edRedeProxyUser.Text      := INI.ReadString('Rede','proxy_user','');
    edRedeProxySenha.Text     := INI.ReadString('Rede','proxy_senha','');

    edMFEInput.Text    :=  INI.ReadString('MFE','Input','c:\Integrador\Input\');
    edMFEOutput.Text   :=  INI.ReadString('MFE','Output','c:\Integrador\Output\');
    seMFETimeout.Value :=  INI.ReadInteger('MFE','Timeout',30);}

  finally
     Ini.Free ;
  end;
end;

procedure Tfrm_PREFACBR.LoadConsulta201(XML: AnsiString);
var
  DOM: IXMLDocument;
  lXML: AnsiString;

  procedure AddNodes(XMLNode: IXMLNode; TreeNode: TTreeNode);
  var
    Index: Integer;
    NewNode: TTreeNode;
    Value: string;
  begin
    if XMLNode.nodeType in [ntTEXT, ntCDATA, ntCOMMENT] then
      Value := XMLNode.text
    else
      Value := XMLNode.nodeName;
    NewNode := TreeViewRetornoConsulta.Items.AddChild(TreeNode, {XMLNode.NodeName +} ' ' + Value);
    for Index := 0 to XMLNode.childNodes.Count - 1 do
      AddNodes(XMLNode.childNodes[Index], NewNode);
  end;

  function ReplaceStr( Fonte, De, Para:AnsiString ):AnsiString;
  begin
    result:=fonte;
    while pos(de,result) <> 0 do
      result:=copy(result, 1, pos(de,result)-1 )+Para+copy(result,pos(de,result)+length(de),length(result) );
  end;

  function LimpaXML(XML: AnsiString; TagRemover:AnsiString): AnsiString;
  begin
    Result := XML;
    while pos('<'+TagRemover,Result) <> 0 do
    begin
      Result := ReplaceStr(Result,
                           '<'+TagRemover+
                              RetornarConteudoEntre(Result,'<'+TagRemover,'</'+TagRemover+'>')+
                           '</'+TagRemover+'>','');
    end;
  end;
begin
  DOM := TXMLDocument.Create(nil);
  try
    lXML := LimpaXML(UTF8Decode(XML),'Signature');
    DOM.LoadFromXML(lXML);
    DOM.Active := True;
    TreeViewRetornoConsulta.Items.BeginUpdate;
    TreeViewRetornoConsulta.Items.Clear;
    AddNodes(dom.DocumentElement, nil);
    TreeViewRetornoConsulta.TopItem := TreeViewRetornoConsulta.Items[0];
  finally
    TreeViewRetornoConsulta.Items.EndUpdate;
  end;
end;

procedure Tfrm_PREFACBR.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');
end;

procedure Tfrm_PREFACBR.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_PREFACBR.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrm_PREFACBR.sbtnPathSalvarClick(Sender: TObject);
begin
 PathClick(edtPathLogs);
end;

procedure Tfrm_PREFACBR.sp_SEQUENCIA_EDITARClick(Sender: TObject);
begin
edt_NUM_NFE.Enabled:=true;
DBEDIT2.Enabled:=TRUE;
edt_NUM_NFE.SetFocus;
dm_Dados.zqry_sgsequencia_NF.Close;
dm_dados.zqry_sgsequencia_NF.sql.Clear;
dm_Dados.zqry_sgsequencia_NF.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia_NF.sql.add('where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencia_NF.open;
if dm_Dados.zqry_SGSEQUENCIA_NF.IsEmpty then SHOWMESSAGE('Dados não localizados') else EDT_NUM_NFE.Text:=inttostr(dm_Dados.zqry_SGSEQUENCIA_NFNROSEQ.AsInteger);
//
dm_Dados.zqry_sgsequencianfce.Close;
dm_dados.zqry_sgsequencianfce.sql.Clear;
dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencianfce.open;
dm_dados.zqry_SGSEQUENCIAnfce.Edit;
end;

procedure Tfrm_PREFACBR.sp_SEQUENCIA_GRAVARClick(Sender: TObject);
begin
dm_Dados.zqry_sgsequencia_NF.Close;
dm_dados.zqry_sgsequencia_NF.sql.Clear;
dm_Dados.zqry_sgsequencia_NF.sql.add('update sgsequencia set nroseq=:numero where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia_NF.ParamByName('numero').asinteger:=strtoint(edt_num_nfe.Text);
dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencia_NF.ExecSQL;
dm_dados.zqry_SGSEQUENCIANFCECONTADOR.AsInteger:=strtoint(dbedit2.text);
if dm_dados.zqry_SGSEQUENCIANFCE.State in [dsedit, dsinsert] then DM_DADOS.zqry_SGSEQUENCIANFCE.Post;
dm_Dados.zqry_SGSEQUENCIANFCE.ApplyUpdates();
showmessage('Alteração de Sequência Salva');
// LÊ BANCO NOVAMENTE
dm_Dados.zqry_sgsequencia_NF.Close;
dm_dados.zqry_sgsequencia_NF.sql.Clear;
dm_Dados.zqry_sgsequencia_NF.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia_NF.sql.add('where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencia_NF.open;
//
dm_Dados.zqry_sgsequencianfce.Close;
dm_dados.zqry_sgsequencianfce.sql.Clear;
dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').asinteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencianfce.open;
//
DBEDIT2.ENABLED:=FALSE;
EDT_NUM_NFE.Enabled:=false;
end;

procedure Tfrm_PREFACBR.sp_EMPRESA_GRAVARClick(Sender: TObject);
begin
dm_Dados.EXECUTASGINICONSP;
try
  dm_Dados.zqry_SGFILIAL.Close;
  dm_Dados.zqry_sgfilial.sql.Clear;
  dm_Dados.zqry_SGFILIAL.SQL.Add('update sgfilial set nomereduzido=:nome, tx_juros_boleto=:juros, tx_multa_boleto=:multa, dias_atraso_boleto=:atraso,');
  //dm_dados.zqry_SGFILIAL.SQL.Add('dias_protesto_boleto=:protesto, path_copia_nfe=:path, marcaunica=:marca, numconta=:contanum, codplan=:plancod where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.SQL.Add('dias_protesto_boleto=:protesto, desticms=:destaque, path_copia_nfe=:path, marcaunica=:marca, caixa_finaliza=:caixaaqui where codemp=:empcod');
  dm_Dados.zqry_SGFILIAL.ParamByName('nome').asstring:=edt_nomereduzido.text;
  dm_Dados.zqry_SGFILIAL.ParamByName('juros').value:=strtofloat(edt_TX_JUROS.text);
  dm_Dados.zqry_SGFILIAL.ParamByName('multa').value:=strtofloat(edt_TX_MULTA.text);
  dm_Dados.zqry_SGFILIAL.ParamByName('atraso').value:=strtoint(edt_DIAS_ATRASO.text);
  dm_Dados.zqry_SGFILIAL.ParamByName('protesto').value:=strtoint(edt_DIAS_PROTESTO.text);
  dm_Dados.zqry_SGFILIAL.ParamByName('path').value:=edt_PATH_COPIA_NFE.text;
  dm_Dados.zqry_SGFILIAL.ParamByName('marca').value:=edt_MARCAUNICA.text;
  dm_dados.zqry_SGFILIAL.ParamByName('caixaaqui').value:=strtoint(edt_CAIXACENTRALIZADO.Text);
  dm_dados.zqry_SGFILIAL.ParamByName('destaque').value:=strtofloat(edt_ALIQDESTICMS.Text);
  dm_Dados.zqry_sgfilial.ParamByName('empcod').asinteger:=dm_dados.codemp;
  //dm_dados.zqry_SGFILIAL.ParamByName('contanum').AsString:=db_look_CONTA.Keyvalue;
  //DM_DADOS.zqry_SGFILIAL.ParamByName('plancod').AsString:=db_look_PLANO.KeyValue;
  dm_Dados.zqry_SGFILIAL.execsql;
  except
  on E: Exception do
    showmessage(E.ClassName+'Valores ficaram sem preenchimento aparentemente. Erro gerado com a mensagem : '+E.Message);
  end;
  showmessage('Atenção'#13'Favor encerrar o Integra e abrir novamente para que as alterações tenha efeito');
end;

procedure Tfrm_PREFACBR.sp_GRAVAR_TEFClick(Sender: TObject);
begin
dm_dados.EXECUTASGINICONSP;
dm_Dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_sgfilial.sql.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('update sgfilial set tef_cappta=:cappta, tef_troca=:troca, tipo_parc_tef=:tipo, satcfe=:sat where codemp=:empcod');
dm_Dados.zqry_SGFILIAL.ParamByName('cappta').asstring:=edt_TEFCAPPTA.text;
dm_Dados.zqry_SGFILIAL.ParamByName('troca').asstring:=edt_TEFTROCA.text;
dm_Dados.zqry_sgfilial.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_Dados.zqry_sgfilial.ParamByName('tipo').Asstring:=tp_parcela_tef;
dm_dados.zqry_SGFILIAL.ParamByName('sat').AsString:=edt_satcfe.Text;
dm_Dados.zqry_SGFILIAL.execsql;
showmessage('Atenção'#13'Favor encerrar o Integra e abrir novamente para que as alterações tenha efeito');
end;

procedure Tfrm_PREFACBR.sp_MOSTRACERTClick(Sender: TObject);
var
  I: Integer;
  ASerie: String;
  AddRow: Boolean;
begin
  frSelecionarCertificado := TfrSelecionarCertificado.Create(Self);
  try
    ACBrNFe1.SSL.LerCertificadosStore;
    AddRow := False;

    with frSelecionarCertificado.StringGrid1 do
    begin
      ColWidths[0] := 220;
      ColWidths[1] := 250;
      ColWidths[2] := 120;
      ColWidths[3] := 80;
      ColWidths[4] := 150;
      Cells[ 0, 0 ] := 'Num.Série';
      Cells[ 1, 0 ] := 'Razão Social';
      Cells[ 2, 0 ] := 'CNPJ';
      Cells[ 3, 0 ] := 'Validade';
      Cells[ 4, 0 ] := 'Certificadora';
    end;

    For I := 0 to ACBrNFe1.SSL.ListaCertificados.Count-1 do
    begin
      with ACBrNFe1.SSL.ListaCertificados[I] do
      begin
        ASerie := NumeroSerie;
        if (CNPJ <> '') then
        begin
          with frSelecionarCertificado.StringGrid1 do
          begin
            if Addrow then
              RowCount := RowCount + 1;

            Cells[ 0, RowCount-1] := NumeroSerie;
            Cells[ 1, RowCount-1] := RazaoSocial;
            Cells[ 2, RowCount-1] := CNPJ;
            Cells[ 3, RowCount-1] := FormatDateBr(DataVenc);
            Cells[ 4, RowCount-1] := Certificadora;
            AddRow := True;
          end;
        end;
      end;
    end;

    frSelecionarCertificado.ShowModal;

    if frSelecionarCertificado.ModalResult = mrOK then
      edtNumSerie.Text := frSelecionarCertificado.StringGrid1.Cells[ 0,
                            frSelecionarCertificado.StringGrid1.Row];

  finally
     frSelecionarCertificado.Free;
  end;
end;

procedure Tfrm_PREFACBR.FormActivate(Sender: TObject);
begin
mexeuconfiguracao:=0;
dm_dados.zqry_SGNF.close;
dm_Dados.zqry_SGNF.OPEN;
dm_Dados.zqry_sgsequencianfce.Close;
dm_dados.zqry_sgsequencianfce.sql.Clear;
dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').asInteger:=dm_Dados.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_sgsequencianfce.open;
//edt_seqnfe.Text:=inttostr(dm_Dados.qry_SGSEQUENCIANROSEQ.Value);
edt_nomereduzido.Text:=dm_Dados.zqry_SGFILIALNOMEREDUZIDO.AsString;
edt_razfilial.Text:=dm_Dados.zqry_SGFILIALRAZFILIAL.AsString;
edt_msg_boleto.Text:=dm_Dados.zqry_SGFILIALMSG_BOLETO.AsString;
edt_DIAS_ATRASO.Text:=dm_dados.zqry_SGFILIALDIAS_ATRASO_BOLETO.AsString;
edt_PATH_COPIA_NFE.Text:=dm_Dados.zqry_SGFILIALPATH_COPIA_NFE.AsString;
edt_MARCAUNICA.Text:=dm_dados.zqry_SGFILIALMARCAUNICA.AsString;
edt_DIAS_PROTESTO.Text:=DM_dADOS.zqry_SGFILIALDIAS_PROTESTO_BOLETO.AsString;
edt_TX_JUROS.Text:=DM_dADOS.zqry_SGFILIALTX_JUROS_BOLETO.AsString;
edt_TX_MULTA.Text:=DM_dADOS.zqry_SGFILIALTX_MULTA_BOLETO.AsString;
edt_TEFCAPPTA.Text:=DM_DADOS.zqry_SGFILIALTEF_CAPPTA.AsString;
edt_TEFTROCA.Text:=dm_dados.zqry_sgfilialtef_troca.asstring;
edt_satcfe.Text:=dm_dados.zqry_SGFILIALSATCFE.AsString;
cb_TIPO_PARCELA.Text:=dm_dados.zqry_sgfilialtipo_parc_tef.asstring;
if cb_TIPO_PARCELA.text='Administradora' then tp_parcela_tef:='A';
if cb_TIPO_PARCELA.text='Loja' then tp_parcela_tef:='L';
if cb_TIPO_PARCELA.Text='' then tp_parcela_tef:='L';
edt_TEFCIELLO.Text:='N';
edt_BUSCAEAN.Text:=dm_Dados.zqry_SGPREFERE1PDV_BUSCAEAN.AsString;
edt_CAIXACENTRALIZADO.Text:=inttostr(dm_dados.zqry_SGFILIALCAIXA_FINALIZA.asinteger);
edt_ALIQDESTICMS.Text:=floattostr(roundto(dm_dados.zqry_SGFILIALDESTICMS.AsFloat,-2));
end;

procedure Tfrm_PREFACBR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IF mexeuconfiguracao<>0 then
begin
  SHOWMESSAGE('FINALIZE O INTEGRA PARA QUE AS ALTERAÇÕES TENHAM EFEITO');
  DM_DADOS.zqry_VDVENDEDOR.Close;
  dm_dados.zqry_FNCONTA.Close;
  dm_Dados.zqry_FNPLANEJAMENTO.Close;
  ufuncoes.MEMORIA;
  MOSTRATELANOTIFICA('Integra está sendo finalizado','');
  frm_principal.Close;
end
else
begin
  DM_DADOS.zqry_VDVENDEDOR.Close;
  dm_dados.zqry_FNCONTA.Close;
  dm_Dados.zqry_FNPLANEJAMENTO.Close;
  ufuncoes.MEMORIA;
end;
end;

procedure Tfrm_PREFACBR.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
 M : TpcnRegTrib ;
 N : TpcnTipoAmbiente ;
begin
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  ACBrSAT1.OnGetsignAC := GetsignAC;
  ACBrSAT1.OnGetcodigoDeAtivacao := GetcodigoDeAtivacao;

 cbxAmbiente.Items.Clear ;
  For N := Low(TpcnTipoAmbiente) to High(TpcnTipoAmbiente) do
     cbxAmbiente.Items.Add( GetEnumName(TypeInfo(TpcnTipoAmbiente), integer(J) ) ) ;

  cbxRegTributario.Items.Clear ;
  For M := Low(TpcnRegTrib) to High(TpcnRegTrib) do
     cbxRegTributario.Items.Add( GetEnumName(TypeInfo(TpcnRegTrib), integer(M) ) ) ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  cbSSLType.Items.Clear ;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) ) ;
  cbSSLType.ItemIndex := 0 ;

  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  cbVersaoDF.Items[0] := 've200' ;
  cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
  PageControl3.ActivePage := tsNFe;
  pgRespostas.ActivePageIndex := 2;
  ACBrNFe1.Configuracoes.WebServices.Salvar := true;
end;


procedure Tfrm_PREFACBR.FormShow(Sender: TObject);
begin
PageControl1.ActivePage:=Sequencia;
dm_Dados.zqry_FNTIPOCOB.Params.Clear;
dm_Dados.zqry_FNTIPOCOB.Close;
dm_Dados.zqry_FNTIPOCOB.SQL.Clear;
dm_dados.zqry_FNTIPOCOB.SQL.Add('select * from fntipocob where codemp=:empcod');
dm_Dados.zqry_FNTIPOCOB.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_Dados.zqry_FNTIPOCOB.Open;
//
dm_dados.zqry_FNCONTA.Params.Clear;
dm_Dados.zqry_FNCONTA.Close;
dm_Dados.zqry_FNCONTA.SQL.Clear;
dm_dados.zqry_FNCONTA.SQL.Add('select * from fnconta where codemp=:empcod and ativaconta=:ativa');
dm_dados.zqry_FNCONTA.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_dados.zqry_FNCONTA.ParamByName('ativa').AsString:='S';
dm_dados.zqry_FNCONTA.Open;
//
dm_dados.zqry_FNPLANEJAMENTO.Params.Clear;
dm_Dados.zqry_FNPLANEJAMENTO.Close;
dm_Dados.zqry_FNPLANEJAMENTO.SQL.Clear;
dm_dados.zqry_FNPLANEJAMENTO.SQL.Add('select * from fnplanejamento where codemp=:empcod and nivelplan=:nivel');
dm_dados.zqry_FNPLANEJAMENTO.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_Dados.zqry_FNPLANEJAMENTO.ParamByName('nivel').AsInteger:=6;
dm_Dados.zqry_FNPLANEJAMENTO.Open;
PageControl4.ActivePage:=TabSheet3;
end;

procedure Tfrm_PREFACBR.btnSalvarConfigClick(Sender: TObject);
begin
 GravarConfiguracao;
 LerConfiguracao;
end;

procedure Tfrm_PREFACBR.btnStatusServClick(Sender: TObject);
begin
 LerConfiguracao;
 ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
 memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
 LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

 pgRespostas.ActivePageIndex := 1;

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Status Serviço');
 MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.StatusServico.tpAmb));
 MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
 MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.StatusServico.xMotivo);
 MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
 MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRecbto));
 MemoDados.Lines.Add('tMed: '     +IntToStr(ACBrNFe1.WebServices.StatusServico.TMed));
 MemoDados.Lines.Add('dhRetorno: '+DateTimeToStr(ACBrNFe1.WebServices.StatusServico.dhRetorno));
 MemoDados.Lines.Add('xObs: '     +ACBrNFe1.WebServices.StatusServico.xObs);
end;

procedure Tfrm_PREFACBR.btnConsultarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
    LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
  end;
end;

procedure Tfrm_PREFACBR.btnCancNFClick(Sender: TObject);
var
  idLote,vAux : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    idLote := '1';
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Identificador de controle do Lote de envio do Evento', idLote)) then
       exit;
    if not(InputQuery('WebServices Eventos: Cancelamento', 'Justificativa', vAux)) then
       exit;
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.idLote := StrToInt(idLote) ;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := vAux;
    end;
    ACBrNFe1.EnviarEvento(StrToInt(idLote));

    MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
    //ACBrNFe1.EventoNFe.Evento.Clear;
    //ACBrNFe1.EventoNFe.LerXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
    ACBRNFe1.DANFE:=ACBrNFeDANFCeFortes1;
    ACBrNFe1.ImprimirEvento;

    //ShowMessage(IntToStr(ACBrNFe1.WebServices.EnvEvento.cStat));
    //ShowMessage(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);
     dm_dados.zqry_sgnf.close;
     dm_Dados.zqry_SGNF.Open;
     dm_dados.zqry_sgnf.Append;
     dm_dados.zqry_SGNFCODIGO.Value:=strtoint(FormatDateTime('mm',Date))+strtoint(FormatDateTime('hhss',time));
     dm_Dados.zqry_SGNFCHAVE.Value:=OpenDialog1.FileName;
     dm_dados.zqry_SGNFDATA.value:=date;
     dm_dados.zqry_SGNFHORA.Value:=time;
     dm_Dados.zqry_SGNFUPLOAD.Value:='NFe em'+DateTimeToStr(now);
     dm_Dados.zqry_SGNFSITUACAO.Value:='NFe Cancelada pela chave';
     dm_dados.zqry_SGNF.Post;
     dm_dados.zqry_SGNF.Close;
     dm_Dados.zqry_SGNF.Open;

  end;
end;

procedure Tfrm_PREFACBR.btnValidarXMLClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
// ConfiguraÃ§Ã£o padrÃ£o para exibiÃ§Ã£o dos erros de validaÃ§Ã£o
//  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := True;
//  ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
// ACBrNFe1.Configuracoes.Geral.RetirarAcentos

// Sugestão de configuração para apresentação de mensagem mais amigável ao usuário final
  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema := False;
  ACBrNFe1.Configuracoes.Geral.FormatoAlerta := 'Campo:%DESCRICAO% - %MSG%';

  if OpenDialog1.Execute then
   begin
     ACBrNFe1.NotasFiscais.Clear;
     ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, True);
     try
        ACBrNFe1.NotasFiscais.Validar;
        if ACBrNFe1.NotasFiscais.Items[0].Alertas <> '' then
          MemoDados.Lines.Add('Alertas: '+ACBrNFe1.NotasFiscais.Items[0].Alertas);
        ShowMessage('Nota Fiscal Eletrônica Valida');
     except
        on E: Exception do
        begin
          pgRespostas.ActivePage := Dados;
          MemoDados.Lines.Add('Exception: '+E.Message);
          MemoDados.Lines.Add('Erro: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacao);
          MemoDados.Lines.Add('Erro Completo: '+ACBrNFe1.NotasFiscais.Items[0].ErroValidacaoCompleto); //Ãštil para gravar em arquivos de LOG
        end;
     end;
   end;
end;

procedure Tfrm_PREFACBR.btn_REIMPRIME_NFEClick(Sender: TObject);
{begin
if EDT_NUM_NF.Text='' then
begin
    showmessage('Nenhum valor informado para a busca');
    edt_num_nf.SetFocus;
    edt_num_nf.Clear;
end
else
begin
  dm_Dados.qry_SGNF.Close;
  dm_dados.cds_SGNF.Close;
  dm_dados.qry_sgnf.sql.clear;
  dm_dados.qry_sgnf.sql.Add('select * from sgnf where numero=:numnf');
  dm_dados.qry_sgnf.paramByName('numnf').Value:=edt_num_nf.text;
  dm_dados.cds_sgnf.Open;
  if dm_dados.cds_sgnf.IsEmpty then
  begin
      showmessage('Atenção'#13'Não foram encontrado valores com base na busca'#13'tab: sgnf');
  end
  else
  begin
    if dm_dados.logodanfe<>'' then
    begin
      ACBrNFe1.DANFE.Logo:=dm_dados.logodanfe;
    end;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(dm_dados.qry_sgprefere1pathserver.value+dm_Dados.cds_SGNFUPLOAD.asstring,False);
    ACBrNFe1.NotasFiscais.Imprimir;
    edt_NUM_NF.Clear;
  end;
end;  }
var
  arquivoweb, arquivolocal,diretorio, erro:string;
begin
if EDT_NUM_NF.Text='' then
begin
    showmessage('Nenhum valor informado para a busca');
    edt_num_nf.SetFocus;
    edt_num_nf.Clear;
end
else
begin
  dm_Dados.zqry_SGNF.Close;
  dm_dados.zqry_sgnf.sql.clear;
  dm_dados.zqry_sgnf.sql.Add('select * from sgnf where numero=:numnf');
  dm_dados.zqry_sgnf.paramByName('numnf').Value:=edt_num_nf.text;
  dm_dados.zqry_sgnf.Open;
  if dm_dados.zqry_sgnf.IsEmpty then
  begin
      showmessage('Atenção'#13'Não foram encontrado valores com base na busca'#13'tab: sgnf');
  end
  else
  begin
    if dm_dados.logodanfe<>'' then
    begin
      ACBrNFe1.DANFE.Logo:=dm_dados.logodanfe;
    end;
    ACBrNFe1.NotasFiscais.Clear;
    arquivoweb:='http://www.nonoelemento.com.br/notas/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml';
    arquivolocal:=dm_Dados.zqry_SGNFUPLOAD.asstring;
    diretorio:='c:\integra\temp';
    //showmessage(arquivoweb);
    //showmessage(arquivolocal);
    if FileExists(arquivolocal) then
    begin
      ACBrNFe1.NotasFiscais.LoadFromFile(arquivolocal,False);
    end
    else
    begin
      if fileExists(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml') then
      begin
        ACBrNFe1.NotasFiscais.LoadFromFile(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml',False);
      end
      else
      begin
        mostratelaaguarde('Baixando XML');
        IdFTP1.Disconnect();
        idftp1.Host:='nonoelemento.com.br';
        idftp1.Port:=21;
        idftp1.Username:='notas@nonoelemento.com.br';
        idftp1.Password:='px4b7470#ISA';
        idftp1.Passive:=true;
        try
        { Espera até 10 segundos pela conexão }
          IdFTP1.Connect();
          idFTP1.ChangeDir('/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/');
          IdFTP1.get(trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml', diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml', False, IdFTP1.ResumeSupported);
        except
        on E: Exception do
          Erro:= E.Message;
        end;
        fechatelaaguarde;
        idftp1.Disconnect();
        ACBrNFe1.NotasFiscais.LoadFromFile(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml',False);
      end;
    //IdFTP.get(arquivo, diretorio, False, IdFTP.ResumeSupported);
//      ShowMessage('não existe');
    end;

//    ACBrNFe1.NotasFiscais.LoadFromFile(dm_dados.qry_sgprefere1pathserver.value+dm_Dados.zqry_SGNFUPLOAD.asstring,False);
    //ACBrNFe1.NotasFiscais.LoadFromFile(arquivo,False);
    ACBrNFe1.NotasFiscais.Imprimir;
    edt_NUM_NF.Clear;
  end;
end;
end;

{procedure Tfrm_PREFACBR.cbTipoEmissaoChange(Sender: TObject);
begin
  if cbTipoEmissao.ItemIndex <> -1 then
    ACBrNFe1.Configuracoes.Geral.SSLLib := TSSLLib(cbTipoEmissao.ItemIndex);

  Label44.Visible :=  ACBrNFe1.Configuracoes.Geral.SSLLib = libCapicom;
end;}

procedure Tfrm_PREFACBR.btnManifDestConfirmacaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ: string;
 lMsg: string;
begin
  Chave:='';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := '';
  if not(InputQuery('WebServices Eventos: Manif. Destinatario - Conf. Operacao', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;

  ACBrNFe1.EventoNFe.Evento.Clear;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     InfEvento.cOrgao   := 91;
     infEvento.chNFe    := Chave;
     infEvento.CNPJ     := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teManifDestConfirmacao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(IDLote));

  with ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
  begin
    lMsg:=
    'Id: '+Id+#13+
    'tpAmb: '+TpAmbToStr(tpAmb)+#13+
    'verAplic: '+verAplic+#13+
    'cOrgao: '+IntToStr(cOrgao)+#13+
    'cStat: '+IntToStr(cStat)+#13+
    'xMotivo: '+xMotivo+#13+
    'chNFe: '+chNFe+#13+
    'tpEvento: '+TpEventoToStr(tpEvento)+#13+
    'xEvento: '+xEvento+#13+
    'nSeqEvento: '+IntToStr(nSeqEvento)+#13+
    'CNPJDest: '+CNPJDest+#13+
    'emailDest: '+emailDest+#13+
    'dhRegEvento: '+DateTimeToStr(dhRegEvento)+#13+
    'nProt: '+nProt;
  end;
  ShowMessage(lMsg);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
end;

procedure Tfrm_PREFACBR.btnImprimirClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

  if OpenDialog1.Execute then
  begin
    ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName,False);
    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure Tfrm_PREFACBR.btnCriarEnviarClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF :=  TpcnVersaoDF(cbVersaoDF.ItemIndex);
  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.GerarNFe;

  ACBrNFe1.Enviar(vNumLote,True);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
  MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
  MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
  MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;

{ ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

  ACBrNFe1.NotasFiscais.Clear;
end;

procedure Tfrm_PREFACBR.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza(edtEmitCNPJ.Text, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetWS;
  memoRespWS.Lines.Text :=  ACBrNFe1.WebServices.Inutilizacao.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Inutilizacao.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Inutilização');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Inutilizacao.tpAmb));
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Inutilizacao.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Inutilizacao.xMotivo);
  MemoDados.Lines.Add('cUF: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.cUF));
  MemoDados.Lines.Add('Ano: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Ano));
  MemoDados.Lines.Add('CNPJ: '      +ACBrNFe1.WebServices.Inutilizacao.CNPJ);
  MemoDados.Lines.Add('Modelo: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Modelo));
  MemoDados.Lines.Add('Serie: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.Serie));
  MemoDados.Lines.Add('NumeroInicial: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
  MemoDados.Lines.Add('NumeroFinal: '      +IntToStr(ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
  MemoDados.Lines.Add('dhRecbto: ' +DateTimeToStr(ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
  MemoDados.Lines.Add('Protocolo: '      +ACBrNFe1.WebServices.Inutilizacao.Protocolo);

end;

procedure Tfrm_PREFACBR.btnInutilizarImprimirClick(Sender: TObject);
begin
//  OpenDialog1.Title := 'Selecione a NFE';
//  OpenDialog1.DefaultExt := '*.XML';
//  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
//  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
//  if OpenDialog1.Execute then
//  begin
//    ACBrNFe1.NotasFiscais.Clear;
//    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
//  end;

  OpenDialog1.Title := 'Selecione o Inutilização';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.InutNFe.LerXML(OpenDialog1.FileName);
    ACBrNFe1.ImprimirInutilizacao;
  end;
end;

procedure Tfrm_PREFACBR.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frm_Status <> nil ) then
        frm_STATUS.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Verificando Status do servico...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando dados da NFe...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Recebendo dados da NFe...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Consultando NFe...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Consultando Cadastro...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando Email...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeCCe :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando Carta de Correção...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
    stNFeEvento :
    begin
      if ( frm_STATUS = nil ) then
        frm_STATUS := Tfrm_STATUS.Create(Application);
      frm_STATUS.lblStatus.Caption := 'Enviando Evento...';
      frm_STATUS.Show;
      frm_STATUS.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;

procedure Tfrm_PREFACBR.btn_GERARELATORIOClick(Sender: TObject);
begin
if maskedit1.Text='' then maskedit1.Text:=datetostr(date);
if maskedit2.Text='' then maskedit2.Text:=datetostr(date);

dm_Dados.zqry_SGNF.Close;
dm_dados.zqry_sgnf.SQL.Clear;
dm_dados.zqry_sgnf.SQL.Add('select * from sgnf');
dm_Dados.zqry_sgnf.SQL.Add('where data between :dtini and :dtfim');
dm_dados.zqry_sgnf.ParamByName('dtini').AsDate:=strtodate(maskedit1.Text);
dm_Dados.zqry_sgnf.ParamByName('dtfim').asdate:=strtodate(maskedit2.Text);
dm_dados.zqry_SGNF.Open;
if dm_dados.zqry_SGNF.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end
else
  begin
    case MessageBox(Handle, 'Gerenciamento de Notas',
    'Clique em SIM para impressão Resumida. Clique em NÃO para detalhada', MB_YESNO + MB_ICONQUESTION) of
    IDYES:  //se clicar em sim faça isso
    begin
      frm_Rel_notasresumido.rlreport1.preview;
    end;
    IDNO:  //se clicar em não faça isso
    begin
      frm_Rel_notas.rlreport1.preview;
    end;
    end;

  end;
end;

procedure Tfrm_PREFACBR.btn_GERARELATORIONFCeClick(Sender: TObject);
begin
if maskedit1.Text='' then maskedit1.Text:=datetostr(date);
if maskedit2.Text='' then maskedit2.Text:=datetostr(date);

dm_Dados.zqry_SGNF.Close;
dm_dados.zqry_sgnf.SQL.Clear;
dm_dados.zqry_sgnf.SQL.Add('select * from sgnf');
dm_Dados.zqry_sgnf.SQL.Add('where data between :dtini and :dtfim and nfce=:enfce');
dm_dados.zqry_sgnf.ParamByName('dtini').AsDate:=strtodate(maskedit1.Text);
dm_Dados.zqry_sgnf.ParamByName('dtfim').asdate:=strtodate(maskedit2.Text);
dm_Dados.zqry_sgnf.ParamByName('enfce').asstring:='S';
dm_dados.zqry_SGNF.Open;
if dm_dados.zqry_SGNF.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end
else
  begin
    frm_Rel_notas.rlreport1.preview;
  end;
end;

procedure Tfrm_PREFACBR.btn_GERARELATORIONFeClick(Sender: TObject);
begin
if maskedit1.Text='' then maskedit1.Text:=datetostr(date);
if maskedit2.Text='' then maskedit2.Text:=datetostr(date);

dm_Dados.zqry_SGNF.Close;
dm_dados.zqry_sgnf.SQL.Clear;
dm_dados.zqry_sgnf.SQL.Add('select * from sgnf');
dm_Dados.zqry_sgnf.SQL.Add('where data between :dtini and :dtfim and nfce=:enfce');
dm_dados.zqry_sgnf.ParamByName('dtini').AsDate:=strtodate(maskedit1.Text);
dm_Dados.zqry_sgnf.ParamByName('dtfim').asdate:=strtodate(maskedit2.Text);
dm_Dados.zqry_sgnf.ParamByName('enfce').asstring:='N';
dm_dados.zqry_SGNF.Open;
if dm_dados.zqry_SGNF.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end
else
  begin
    frm_Rel_notas.rlreport1.preview;
  end;
end;



procedure Tfrm_PREFACBR.btn_GRAVARClick(Sender: TObject);
begin
 mexeuconfiguracao:=1;
 GravarConfiguracao;
 LerConfiguracao;
 SHOWMESSAGE('Configurações gravadas com Sucesso!!!'#13'Quando finalizar a Tela de Configuração o sistema será fechado para validar as mudanças');
end;

procedure Tfrm_PREFACBR.btn_PREFSISTEMAClick(Sender: TObject);
begin
frm_prefsistema.show;
end;

procedure Tfrm_PREFACBR.SbArqLogClick(Sender: TObject);
begin
OpenURL( ExtractFilePath( Application.ExeName ) + edLog.Text);
end;

procedure Tfrm_PREFACBR.BitBtn30Click(Sender: TObject);
begin
dm_dados.EXECUTASGINICONSP;
dm_Dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_sgfilial.sql.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('update sgfilial set nomereduzido=:nome, tx_juros_boleto=:juros, tx_multa_boleto=:multa, dias_atraso_boleto=:atraso, dias_protesto_boleto=:protesto, path_copia_nfe=:path, marcaunica=:marca where codemp=:empcod');
dm_Dados.zqry_SGFILIAL.ParamByName('nome').asstring:=edt_nomereduzido.text;
dm_Dados.zqry_SGFILIAL.ParamByName('juros').value:=strtofloat(edt_TX_JUROS.text);
dm_Dados.zqry_SGFILIAL.ParamByName('multa').value:=strtofloat(edt_TX_MULTA.text);
dm_Dados.zqry_SGFILIAL.ParamByName('atraso').value:=strtoint(edt_DIAS_ATRASO.text);
dm_Dados.zqry_SGFILIAL.ParamByName('protesto').value:=strtoint(edt_DIAS_PROTESTO.text);
dm_Dados.zqry_SGFILIAL.ParamByName('path').value:=edt_PATH_COPIA_NFE.text;
dm_Dados.zqry_SGFILIAL.ParamByName('marca').value:=edt_MARCAUNICA.text;
dm_Dados.zqry_sgfilial.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_Dados.zqry_SGFILIAL.execsql;
showmessage('Atenção'#13'Favor encerrar o Integra e abrir novamente para que as alterações tenha efeito');
end;

{procedure Tfrm_PREFACBR.BitBtn31Click(Sender: TObject);
begin
dbedit3.Enabled:=true;
DBEDIT2.Enabled:=TRUE;
dbedit3.SetFocus;
dm_Dados.zqry_sgsequencia.Close;
dm_dados.zqry_sgsequencia.sql.Clear;
dm_Dados.zqry_sgsequencia.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia.sql.add('where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia.ParamByName('empresa').value:=strtoint(frm_splash.lbl_empresa.caption);
dm_dados.zqry_sgsequencia.open;
dm_dados.zqry_SGSEQUENCIA.Edit;
//
dm_Dados.zqry_sgsequencianfce.Close;
dm_dados.zqry_sgsequencianfce.sql.Clear;
dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').value:=strtoint(frm_splash.lbl_empresa.caption);
dm_dados.zqry_sgsequencianfce.open;
dm_dados.zqry_SGSEQUENCIAnfce.Edit;
end;}

{procedure Tfrm_PREFACBR.BitBtn32Click(Sender: TObject);
begin
dm_dados.zqry_SGSEQUENCIANROSEQ.AsInteger:=strtoint(dbedit3.text);
dm_dados.zqry_SGSEQUENCIA.Post;
showmessage('Gravando Alterações de NFe');
dm_dados.zqry_SGSEQUENCIANFCECONTADOR.AsInteger:=strtoint(dbedit2.text);
DM_DADOS.zqry_SGSEQUENCIANFCE.Post;
showmessage('Gravando Alterações de NFCe');

DBEDIT2.ENABLED:=FALSE;
dbedit3.Enabled:=false;
end;}

procedure Tfrm_PREFACBR.sbtnGetCertClick(Sender: TObject);
begin
  edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure Tfrm_PREFACBR.btnGerarNFEClick(Sender: TObject);
var
 vAux : String;
begin
if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.Assinar;

  ACBrNFe1.NotasFiscais.Items[0].GravarXML();
  ShowMessage('Arquivo gerado em: '+ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoDados.Lines.Add('Arquivo gerado em: '+ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  MemoResp.Lines.LoadFromFile(ACBrNFe1.NotasFiscais.Items[0].NomeArq);
  LoadXML(MemoResp.Text, WBResposta);
  pgRespostas.ActivePageIndex := 1;
end;

procedure Tfrm_PREFACBR.btnConsCadClick(Sender: TObject);
var
 UF, Documento : String;
begin
 if not(InputQuery('WebServices Consulta Cadastro ', 'UF do Documento a ser Consultado:',    UF)) then
    exit;
 if not(InputQuery('WebServices Consulta Cadastro ', 'Documento(CPF/CNPJ)',    Documento)) then
    exit;
  Documento :=  Trim(OnlyNumber(Documento));

  ACBrNFe1.WebServices.ConsultaCadastro.UF  := UF;
  if Length(Documento) > 11 then
     ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := Documento
  else
     ACBrNFe1.WebServices.ConsultaCadastro.CPF := Documento;
  ACBrNFe1.WebServices.ConsultaCadastro.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.ConsultaCadastro.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consulta Cadastro');
 MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.ConsultaCadastro.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.ConsultaCadastro.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.ConsultaCadastro.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.ConsultaCadastro.xMotivo);
  MemoDados.Lines.Add('DhCons: ' +DateTimeToStr(ACBrNFe1.WebServices.ConsultaCadastro.DhCons));

end;

procedure Tfrm_PREFACBR.btnGerarPDFClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  ACBrNFe1.NotasFiscais.Clear;
  if OpenDialog1.Execute then
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

  ACBrNFe1.NotasFiscais.ImprimirPDF;
end;

procedure Tfrm_PREFACBR.btnGerarTXTClick(Sender: TObject);
var
   vAux, vNumLote : String;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  ACBrNFe1.NotasFiscais.Clear;

  GerarNFe(vAux);

  ACBrNFe1.NotasFiscais.GravarTXT({caminho e nome do arquivo TXT});
end;

procedure Tfrm_PREFACBR.btnEnviarEmailClick(Sender: TObject);
var
 Para : String;
 CC: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;

  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    CC:=TstringList.Create;
    try
      CC.Add('contato@nonoelemento.com'); //especifique um email vÃ¡lido
     // CC.Add('contato@nonoelemento.com');    //especifique um email vÃ¡lido

      ACBrMail1.Host := edtSmtpHost.Text;
      ACBrMail1.Port := edtSmtpPort.Text;
      ACBrMail1.Username := edtSmtpUser.Text;
      ACBrMail1.Password := edtSmtpPass.Text;
      ACBrMail1.From := edtSmtpUser.Text;
      ACBrMail1.SetSSL := cbEmailSSL.Checked; // SSL - ConexÃ£o Segura
      ACBrMail1.SetTLS := cbEmailSSL.Checked; // Auto TLS
      ACBrMail1.ReadingConfirmation := False; //Pede confirmaÃ§Ã£o de leitura do email
      ACBrMail1.UseThread := False;           //Aguarda Envio do Email(nÃ£o usa thread)
      ACBrMail1.FromName := 'NonoElemento Integra';

      ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, edtEmailAssunto.Text,
                                               mmEmailMsg.Lines
                                               , True  // Enviar PDF junto
                                               , CC    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                               , nil); // Lista de anexos - TStrings
    finally
      CC.Free;
    end;
  end;
end;

procedure Tfrm_PREFACBR.btnConsultarReciboClick(Sender: TObject);
var
  aux : String;
begin
  if not(InputQuery('Consultar Recibo Lote', 'Número do Recibo', aux)) then
    exit;
  ACBrNFe1.WebServices.Recibo.Recibo := aux;;
  ACBrNFe1.WebServices.Recibo.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Recibo.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Recibo.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Recibo.RetornoWS, WBResposta);

  pgRespostas.ActivePageIndex := 1;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Consultar Recibo');
  MemoDados.Lines.Add('tpAmb: '    +TpAmbToStr(ACBrNFe1.WebServices.Recibo.tpAmb));
  MemoDados.Lines.Add('versao: ' +ACBrNFe1.WebServices.Recibo.versao);
  MemoDados.Lines.Add('verAplic: ' +ACBrNFe1.WebServices.Recibo.verAplic);
  MemoDados.Lines.Add('cStat: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cStat));
  MemoDados.Lines.Add('xMotivo: '  +ACBrNFe1.WebServices.Recibo.xMotivo);
  MemoDados.Lines.Add('cUF: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cUF));
  MemoDados.Lines.Add('xMsg: ' +ACBrNFe1.WebServices.Recibo.xMsg);
  MemoDados.Lines.Add('cMsg: '    +IntToStr(ACBrNFe1.WebServices.Recibo.cMsg));
  MemoDados.Lines.Add('Recibo: ' +ACBrNFe1.WebServices.Recibo.Recibo);
end;

procedure Tfrm_PREFACBR.ACBrCEP1BuscaEfetuada(Sender: TObject);

var
   i : integer;
begin
 for I := 0 to ACBrCEP1.Enderecos.Count -1 do
    begiN
         {msk_cepcli.Text         	:= ACBrCEP1.Enderecos[i].CEP;}
      edtEmitLogradouro.Text          := ACBrCEP1.Enderecos[i].Logradouro;
{         edt_complcli.Text      := ACBrCEP1.Enderecos[i].Complemento;
         edt_cidcli.Text      	    := ACBrCEP1.Enderecos[i].Municipio;
         edt_coduf.Text          	    := ACBrCEP1.Enderecos[i].IBGE_UF;
         edt_codmun.text              := ACBrCEP1.Enderecos[i].IBGE_Municipio;
         edt_baircli.Text      	    := ACBrCEP1.Enderecos[i].Bairro;
         uf :=acbrcep1.Enderecos[i].UF;}

        // msk_cepcli.Text     := ACBrCEP1.Enderecos[i].CEP;
        // edt_endcli.Text     := ACBrCEP1.Enderecos[i].Logradouro;
        // edt_complcli.Text   := ACBrCEP1.Enderecos[i].Complemento;
      edtEmitCidade.Text    := ACBrCEP1.Enderecos[i].Municipio;
      //   edt_coduf.Text      := ACBrCEP1.Enderecos[i].IBGE_UF;
       //  edt_codmun.text     := ACBrCEP1.Enderecos[i].IBGE_Municipio;
      edtEmitBairro.Text    := ACBrCEP1.Enderecos[i].Bairro;
      edtEmitUF.Text        := acbrcep1.Enderecos[i].UF;
//         edtTipo.Text        	    := ACBrCEP1.Enderecos[i].Tipo_Logradouro;
      edtEmitCodCidade.Text := ACBrCEP1.Enderecos[i].IBGE_Municipio;
    end;
end;

procedure Tfrm_PREFACBR.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure Tfrm_PREFACBR.btnImportarXMLClick(Sender: TObject);
var
  i, j, k, n  : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  NFeRTXT: TNFeRTXT;
begin
  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Arquivos TXT (*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    //tenta TXT
    ACBrNFe1.NotasFiscais.Add;
    NFeRTXT := TNFeRTXT.Create(ACBrNFe1.NotasFiscais.Items[0].NFe);
    NFeRTXT.CarregarArquivo(OpenDialog1.FileName);
    if NFeRTXT.LerTxt then
       NFeRTXT.Free
    else
    begin
       NFeRTXT.Free;
       //tenta XML
       ACBrNFe1.NotasFiscais.Clear;
       try
          ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
       except
          ShowMessage('Arquivo NFe Inválido');
          exit;
       end;
    end;

    trvwNFe.Items.Clear;

    for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin
    with ACBrNFe1.NotasFiscais.Items[n].NFe do
     begin

       Nota := trvwNFe.Items.Add(nil,infNFe.ID);
       trvwNFe.Items.AddChild(Nota,'ID= ' +infNFe.ID);
       Node := trvwNFe.Items.AddChild(Nota,'procNFe');
       trvwNFe.Items.AddChild(Node,'tpAmb= '     +TpAmbToStr(procNFe.tpAmb));
       trvwNFe.Items.AddChild(Node,'verAplic= '  +procNFe.verAplic);
       trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);
       trvwNFe.Items.AddChild(Node,'dhRecbto= '  +DateTimeToStr(procNFe.dhRecbto));
       trvwNFe.Items.AddChild(Node,'nProt= '     +procNFe.nProt);
       trvwNFe.Items.AddChild(Node,'digVal= '    +procNFe.digVal);
       trvwNFe.Items.AddChild(Node,'cStat= '     +IntToStr(procNFe.cStat));
       trvwNFe.Items.AddChild(Node,'xMotivo= '   +procNFe.xMotivo);

       Node := trvwNFe.Items.AddChild(Nota,'Ide');
       trvwNFe.Items.AddChild(Node,'cNF= '     +IntToStr(Ide.cNF));
       trvwNFe.Items.AddChild(Node,'natOp= '   +Ide.natOp );
       trvwNFe.Items.AddChild(Node,'indPag= '  +IndpagToStr(Ide.indPag));
       trvwNFe.Items.AddChild(Node,'modelo= '  +IntToStr(Ide.modelo));
       trvwNFe.Items.AddChild(Node,'serie= '   +IntToStr(Ide.serie));
       trvwNFe.Items.AddChild(Node,'nNF= '     +IntToStr(Ide.nNF));
       trvwNFe.Items.AddChild(Node,'dEmi= '    +DateToStr(Ide.dEmi));
       trvwNFe.Items.AddChild(Node,'dSaiEnt= ' +DateToStr(Ide.dSaiEnt));
       trvwNFe.Items.AddChild(Node,'hSaiEnt= ' +DateToStr(Ide.hSaiEnt));
       trvwNFe.Items.AddChild(Node,'tpNF= '    +tpNFToStr(Ide.tpNF));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'cUF= '     +IntToStr(Ide.cUF));
       trvwNFe.Items.AddChild(Node,'cMunFG= '  +IntToStr(Ide.cMunFG));
       trvwNFe.Items.AddChild(Node,'tpImp= '   +TpImpToStr(Ide.tpImp));
       trvwNFe.Items.AddChild(Node,'tpEmis= '  +TpEmisToStr(Ide.tpEmis));
       trvwNFe.Items.AddChild(Node,'cDV= '     +IntToStr(Ide.cDV));
       trvwNFe.Items.AddChild(Node,'tpAmb= '   +TpAmbToStr(Ide.tpAmb));
       trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'procEmi= ' +procEmiToStr(Ide.procEmi));
       trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
       trvwNFe.Items.AddChild(Node,'dhCont= '  +DateTimeToStr(Ide.dhCont));
       trvwNFe.Items.AddChild(Node,'xJust= '   +Ide.xJust);

       for i:=0 to Ide.NFref.Count-1 do
        begin
          if Ide.NFref.Items[i].refNFe <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Node,'NFRef'+IntToStrZero(i+1,3));
            trvwNFe.Items.AddChild(Node,'refNFe= ' +Ide.NFref.Items[i].refNFe);
            trvwNFe.Items.AddChild(Node,'cUF= '    +IntToStr(Ide.NFref.Items[i].RefNF.cUF));
            trvwNFe.Items.AddChild(Node,'AAMM= '   +Ide.NFref.Items[i].RefNF.AAMM);
            trvwNFe.Items.AddChild(Node,'CNPJ= '   +Ide.NFref.Items[i].RefNF.CNPJ);
            trvwNFe.Items.AddChild(Node,'modelo= ' +IntToStr(Ide.NFref.Items[i].RefNF.modelo));
            trvwNFe.Items.AddChild(Node,'serie= '  +IntToStr(Ide.NFref.Items[i].RefNF.serie));
            trvwNFe.Items.AddChild(Node,'nNF= '    +IntToStr(Ide.NFref.Items[i].RefNF.nNF));
          end;

          if Ide.NFref.Items[i].RefECF.nCOO <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Node,'refECF'+IntToStrZero(i+1,3));
            trvwNFe.Items.AddChild(Node,'mod= '  +ECFModRefToStr(Ide.NFref.Items[i].RefECF.modelo));
            trvwNFe.Items.AddChild(Node,'nECF= ' +Ide.NFref.Items[i].RefECF.nECF);
            trvwNFe.Items.AddChild(Node,'nCOO= ' +Ide.NFref.Items[i].RefECF.nCOO);
          end;
        end;

       Node := trvwNFe.Items.AddChild(Nota,'Emit');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Emit.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Emit.IE);
       trvwNFe.Items.AddChild(Node,'xNome='    +Emit.xNome);
       trvwNFe.Items.AddChild(Node,'xFant='    +Emit.xFant );
       trvwNFe.Items.AddChild(Node,'IEST='     +Emit.IEST);
       trvwNFe.Items.AddChild(Node,'IM='       +Emit.IM);
       trvwNFe.Items.AddChild(Node,'CNAE='     +Emit.CNAE);
       trvwNFe.Items.AddChild(Node,'CRT='      +CRTToStr(Emit.CRT));

       Node := trvwNFe.Items.AddChild(Node,'EnderEmit');
       trvwNFe.Items.AddChild(Node,'Fone='    +Emit.EnderEmit.fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Emit.EnderEmit.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Emit.EnderEmit.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Emit.EnderEmit.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Emit.EnderEmit.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Emit.EnderEmit.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Emit.EnderEmit.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Emit.EnderEmit.xMun);
       trvwNFe.Items.AddChild(Node,'UF'       +Emit.EnderEmit.UF);
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Emit.EnderEmit.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Emit.EnderEmit.xPais);

       if Avulsa.CNPJ  <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Avulsa');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Avulsa.CNPJ);
          trvwNFe.Items.AddChild(Node,'xOrgao='  +Avulsa.xOrgao);
          trvwNFe.Items.AddChild(Node,'matr='    +Avulsa.matr );
          trvwNFe.Items.AddChild(Node,'xAgente=' +Avulsa.xAgente);
          trvwNFe.Items.AddChild(Node,'fone='    +Avulsa.fone);
          trvwNFe.Items.AddChild(Node,'UF='      +Avulsa.UF);
          trvwNFe.Items.AddChild(Node,'nDAR='    +Avulsa.nDAR);
          trvwNFe.Items.AddChild(Node,'dEmi='    +DateToStr(Avulsa.dEmi));
          trvwNFe.Items.AddChild(Node,'vDAR='    +FloatToStr(Avulsa.vDAR));
          trvwNFe.Items.AddChild(Node,'repEmi='  +Avulsa.repEmi);
          trvwNFe.Items.AddChild(Node,'dPag='    +DateToStr(Avulsa.dPag));
        end;
       Node := trvwNFe.Items.AddChild(Nota,'Dest');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Dest.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='       +Dest.IE);
       trvwNFe.Items.AddChild(Node,'ISUF='     +Dest.ISUF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Dest.xNome);
       trvwNFe.Items.AddChild(Node,'email='    +Dest.Email);

       Node := trvwNFe.Items.AddChild(Node,'EnderDest');
       trvwNFe.Items.AddChild(Node,'Fone='    +Dest.EnderDest.Fone);
       trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Dest.EnderDest.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='    +Dest.EnderDest.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='     +Dest.EnderDest.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='    +Dest.EnderDest.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro=' +Dest.EnderDest.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Dest.EnderDest.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='    +Dest.EnderDest.xMun);
       trvwNFe.Items.AddChild(Node,'UF='      +Dest.EnderDest.UF );
       trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Dest.EnderDest.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='   +Dest.EnderDest.xPais);

       {if Retirada.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Retirada');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Retirada.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Retirada.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Retirada.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Retirada.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Retirada.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Retirada.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Retirada.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Retirada.UF);
        end;

       if Entrega.CNPJ <> '' then
        begin
          Node := trvwNFe.Items.AddChild(Nota,'Entrega');
          trvwNFe.Items.AddChild(Node,'CNPJ='    +Entrega.CNPJ);
          trvwNFe.Items.AddChild(Node,'xLgr='    +Entrega.xLgr);
          trvwNFe.Items.AddChild(Node,'nro='     +Entrega.nro);
          trvwNFe.Items.AddChild(Node,'xCpl='    +Entrega.xCpl);
          trvwNFe.Items.AddChild(Node,'xBairro=' +Entrega.xBairro);
          trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Entrega.cMun));
          trvwNFe.Items.AddChild(Node,'xMun='    +Entrega.xMun);
          trvwNFe.Items.AddChild(Node,'UF='      +Entrega.UF);
        end;}

       for I := 0 to Det.Count-1 do
        begin
          with Det.Items[I] do
           begin
               NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
               trvwNFe.Items.AddChild(NodeItem,'nItem='  +IntToStr(Prod.nItem) );
               trvwNFe.Items.AddChild(NodeItem,'cProd='  +Prod.cProd );
               trvwNFe.Items.AddChild(NodeItem,'cEAN='   +Prod.cEAN);
               trvwNFe.Items.AddChild(NodeItem,'xProd='  +Prod.xProd);
               trvwNFe.Items.AddChild(NodeItem,'NCM='    +Prod.NCM);
               trvwNFe.Items.AddChild(NodeItem,'EXTIPI=' +Prod.EXTIPI);
               //trvwNFe.Items.AddChild(NodeItem,'genero=' +IntToStr(Prod.genero));
               trvwNFe.Items.AddChild(NodeItem,'CFOP='   +Prod.CFOP);
               trvwNFe.Items.AddChild(NodeItem,'uCom='   +Prod.uCom);
               trvwNFe.Items.AddChild(NodeItem,'qCom='   +FloatToStr(Prod.qCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vUnCom=' +FloatToStr(Prod.vUnCom)) ;
               trvwNFe.Items.AddChild(NodeItem,'vProd='  +FloatToStr(Prod.vProd)) ;

               trvwNFe.Items.AddChild(NodeItem,'cEANTrib=' +Prod.cEANTrib);
               trvwNFe.Items.AddChild(NodeItem,'uTrib='    +Prod.uTrib);
               trvwNFe.Items.AddChild(NodeItem,'qTrib='    +FloatToStr(Prod.qTrib));
               trvwNFe.Items.AddChild(NodeItem,'vUnTrib='  +FloatToStr(Prod.vUnTrib)) ;

               trvwNFe.Items.AddChild(NodeItem,'vFrete='      +FloatToStr(Prod.vFrete)) ;
               trvwNFe.Items.AddChild(NodeItem,'vSeg='        +FloatToStr(Prod.vSeg)) ;
               trvwNFe.Items.AddChild(NodeItem,'vDesc='       +FloatToStr(Prod.vDesc)) ;
               trvwNFe.Items.AddChild(NodeItem,'vOutro='      +FloatToStr(Prod.vOutro)) ;
               trvwNFe.Items.AddChild(NodeItem,'indTot='      +indTotToStr(Prod.IndTot)) ;
               trvwNFe.Items.AddChild(NodeItem,'xPed='        +Prod.xPed) ;
               trvwNFe.Items.AddChild(NodeItem,'nItemPedido=' +Prod.nItemPed) ;

               trvwNFe.Items.AddChild(NodeItem,'infAdProd=' +infAdProd);

               for J:=0 to Prod.DI.Count-1 do
                begin
                  if Prod.DI.Items[j].nDi <> '' then
                   begin
                     with Prod.DI.Items[j] do
                      begin
                        NodePai := trvwNFe.Items.AddChild(NodeItem,'DI'+IntToStrZero(J+1,3));
                        trvwNFe.Items.AddChild(NodePai,'nDi='         +nDi);
                        trvwNFe.Items.AddChild(NodePai,'dDi='         +DateToStr(dDi));
                        trvwNFe.Items.AddChild(NodePai,'xLocDesemb='  +xLocDesemb);
                        trvwNFe.Items.AddChild(NodePai,'UFDesemb='    +UFDesemb);
                        trvwNFe.Items.AddChild(NodePai,'dDesemb='     +DateToStr(dDesemb));
                        trvwNFe.Items.AddChild(NodePai,'cExportador=' +cExportador);;

                        for K:=0 to adi.Count-1 do
                         begin
                           with adi.Items[K] do
                            begin
                              Node := trvwNFe.Items.AddChild(NodePai,'LADI'+IntToStrZero(K+1,3));
                              trvwNFe.Items.AddChild(Node,'nAdicao='     +IntToStr(nAdicao)) ;
                              trvwNFe.Items.AddChild(Node,'nSeqAdi='     +IntToStr(nSeqAdi)) ;
                              trvwNFe.Items.AddChild(Node,'cFabricante=' +cFabricante);
                              trvwNFe.Items.AddChild(Node,'vDescDI='     +FloatToStr(vDescDI));
                            end;
                         end;
                      end;
                   end
                  else
                    Break;
                end;

              if Prod.veicProd.chassi <> '' then
               begin
                 Node := trvwNFe.Items.AddChild(NodeItem,'Veiculo');
                 with Prod.veicProd do
                  begin
                    trvwNFe.Items.AddChild(Node,'tpOP='     +tpOPToStr(tpOP));
                    trvwNFe.Items.AddChild(Node,'chassi='   +chassi) ;
                    trvwNFe.Items.AddChild(Node,'cCor='     +cCor);
                    trvwNFe.Items.AddChild(Node,'xCor='     +xCor);
                    trvwNFe.Items.AddChild(Node,'pot='      +pot);
                    trvwNFe.Items.AddChild(Node,'Cilin='      +Cilin);
                    trvwNFe.Items.AddChild(Node,'pesoL='    +pesoL);
                    trvwNFe.Items.AddChild(Node,'pesoB='    +pesoB);
                    trvwNFe.Items.AddChild(Node,'nSerie='   +nSerie);
                    trvwNFe.Items.AddChild(Node,'tpComb='   +tpComb);
                    trvwNFe.Items.AddChild(Node,'nMotor='   +nMotor);
                    trvwNFe.Items.AddChild(Node,'CMT='     +CMT);
                    trvwNFe.Items.AddChild(Node,'dist='     +dist);
                    //trvwNFe.Items.AddChild(Node,'RENAVAM='  +RENAVAM);
                    trvwNFe.Items.AddChild(Node,'anoMod='   +IntToStr(anoMod));
                    trvwNFe.Items.AddChild(Node,'anoFab='   +IntToStr(anoFab));
                    trvwNFe.Items.AddChild(Node,'tpPint='   +tpPint);
                    trvwNFe.Items.AddChild(Node,'tpVeic='   +IntToStr(tpVeic));
                    trvwNFe.Items.AddChild(Node,'espVeic='  +IntToStr(espVeic));
                    trvwNFe.Items.AddChild(Node,'VIN='      +VIN);
                    trvwNFe.Items.AddChild(Node,'condVeic=' +condVeicToStr(condVeic));
                    trvwNFe.Items.AddChild(Node,'cMod='     +cMod);
                  end;
               end;

               for J:=0 to Prod.med.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) );
                  with Prod.med.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nLote=' +nLote) ;
                     trvwNFe.Items.AddChild(Node,'qLote=' +FloatToStr(qLote)) ;
                     trvwNFe.Items.AddChild(Node,'dFab='  +DateToStr(dFab)) ;
                     trvwNFe.Items.AddChild(Node,'dVal='  +DateToStr(dVal)) ;
                     trvwNFe.Items.AddChild(Node,'vPMC='  +FloatToStr(vPMC)) ;
                    end;
                end;

               for J:=0 to Prod.arma.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(NodeItem,'Arma'+IntToStrZero(J+1,3));
                  with Prod.arma.Items[J] do
                   begin
                     trvwNFe.Items.AddChild(Node,'nSerie=' +nSerie) ;
                     trvwNFe.Items.AddChild(Node,'tpArma=' +tpArmaToStr(tpArma)) ;
                     trvwNFe.Items.AddChild(Node,'nCano='  +nCano) ;
                     trvwNFe.Items.AddChild(Node,'descr='  +descr) ;
                    end;
                end;

               if (Prod.comb.cProdANP > 0) then
                begin
                 NodePai := trvwNFe.Items.AddChild(NodeItem,'Combustivel');
                 with Prod.comb do
                  begin
                    trvwNFe.Items.AddChild(NodePai,'cProdANP=' +IntToStr(cProdANP)) ;
                    trvwNFe.Items.AddChild(NodePai,'CODIF='    +CODIF) ;
                    trvwNFe.Items.AddChild(NodePai,'qTemp='    +FloatToStr(qTemp)) ;
                    trvwNFe.Items.AddChild(NodePai,'UFcons='    +UFcons) ;                    

                    Node := trvwNFe.Items.AddChild(NodePai,'CIDE'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'qBCprod='   +FloatToStr(CIDE.qBCprod)) ;
                    trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(CIDE.vAliqProd)) ;
                    trvwNFe.Items.AddChild(Node,'vCIDE='     +FloatToStr(CIDE.vCIDE)) ;

                    Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'+IntToStrZero(I+1,3));
                    trvwNFe.Items.AddChild(Node,'vBCICMS='   +FloatToStr(ICMS.vBCICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vICMS='     +FloatToStr(ICMS.vICMS)) ;
                    trvwNFe.Items.AddChild(Node,'vBCICMSST=' +FloatToStr(ICMS.vBCICMSST)) ;
                    trvwNFe.Items.AddChild(Node,'vICMSST='   +FloatToStr(ICMS.vICMSST)) ;

                    if (ICMSInter.vBCICMSSTDest>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSInter'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTDest=' +FloatToStr(ICMSInter.vBCICMSSTDest)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTDest='   +FloatToStr(ICMSInter.vICMSSTDest)) ;
                     end;

                    if (ICMSCons.vBCICMSSTCons>0) then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMSCons'+IntToStrZero(I+1,3));
                       trvwNFe.Items.AddChild(Node,'vBCICMSSTCons=' +FloatToStr(ICMSCons.vBCICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'vICMSSTCons='   +FloatToStr(ICMSCons.vICMSSTCons)) ;
                       trvwNFe.Items.AddChild(Node,'UFCons='        +ICMSCons.UFcons) ;
                     end;
                  end;
               end;

               with Imposto do
                begin
                   NodePai := trvwNFe.Items.AddChild(NodeItem,'Imposto');

                   if ISSQN.cSitTrib = ISSQNcSitTribVazio then
                   begin
                     Node := trvwNFe.Items.AddChild(NodePai,'ICMS');
                     with ICMS do
                      begin
                        trvwNFe.Items.AddChild(Node,'CST=' +CSTICMSToStr(CST));
                        trvwNFe.Items.AddChild(Node,'CSOSN=' +CSOSNIcmsToStr(CSOSN));
                        trvwNFe.Items.AddChild(Node,'orig='  +OrigToStr(ICMS.orig));
                        trvwNFe.Items.AddChild(Node,'modBC=' +modBCToStr(ICMS.modBC));
                        trvwNFe.Items.AddChild(Node,'pRedBC=' +FloatToStr(ICMS.pRedBC));
                        trvwNFe.Items.AddChild(Node,'vBC='   +FloatToStr(ICMS.vBC));
                        trvwNFe.Items.AddChild(Node,'pICMS=' +FloatToStr(ICMS.pICMS));
                        trvwNFe.Items.AddChild(Node,'vICMS=' +FloatToStr(ICMS.vICMS));
                        trvwNFe.Items.AddChild(Node,'modBCST='  +modBCSTToStr(ICMS.modBCST));
                        trvwNFe.Items.AddChild(Node,'pMVAST='   +FloatToStr(ICMS.pMVAST));
                        trvwNFe.Items.AddChild(Node,'pRedBCST=' +FloatToStr(ICMS.pRedBCST));
                        trvwNFe.Items.AddChild(Node,'vBCST='    +FloatToStr(ICMS.vBCST));
                        trvwNFe.Items.AddChild(Node,'pICMSST='  +FloatToStr(ICMS.pICMSST));
                        trvwNFe.Items.AddChild(Node,'vICMSST='  +FloatToStr(ICMS.vICMSST));
                        trvwNFe.Items.AddChild(Node,'vBCSTRet='   +FloatToStr(ICMS.vBCSTRet));
                        trvwNFe.Items.AddChild(Node,'vICMSSTRet=' +FloatToStr(ICMS.vICMSSTRet));
                        trvwNFe.Items.AddChild(Node,'pCredSN='   +FloatToStr(ICMS.pCredSN));
                        trvwNFe.Items.AddChild(Node,'vCredICMSSN='   +FloatToStr(ICMS.vCredICMSSN));
                      end;

                      Node := trvwNFe.Items.AddChild(NodePai,'ICMSUFDest');
                      with ICMSUFDest do
                      begin
                        trvwNFe.Items.AddChild(Node,'vBCUFDest='   +FloatToStr(vBCUFDest));
                        trvwNFe.Items.AddChild(Node,'pFCPUFDest='   +FloatToStr(pFCPUFDest));
                        trvwNFe.Items.AddChild(Node,'pICMSUFDest='   +FloatToStr(pICMSUFDest));
                        trvwNFe.Items.AddChild(Node,'pICMSInter='   +FloatToStr(pICMSInter));
                        trvwNFe.Items.AddChild(Node,'pICMSInterPart='   +FloatToStr(pICMSInterPart));
                        trvwNFe.Items.AddChild(Node,'vFCPUFDest='   +FloatToStr(vFCPUFDest));
                        trvwNFe.Items.AddChild(Node,'vICMSUFDest='   +FloatToStr(vICMSUFDest));
                        trvwNFe.Items.AddChild(Node,'vICMSUFRemet='   +FloatToStr(vICMSUFRemet));
                      end;
                   end
                   else
                   begin
                     Node := trvwNFe.Items.AddChild(NodePai,'ISSQN');
                     with ISSQN do
                      begin
                        trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                        trvwNFe.Items.AddChild(Node,'vAliq='     +FloatToStr(vAliq));
                        trvwNFe.Items.AddChild(Node,'vISSQN='    +FloatToStr(vISSQN));
                        trvwNFe.Items.AddChild(Node,'cMunFG='    +IntToStr(cMunFG));
                        trvwNFe.Items.AddChild(Node,'cListServ=' +cListServ);
                      end;
                   end;

                   if (IPI.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'IPI');
                      with IPI do
                       begin
                         trvwNFe.Items.AddChild(Node,'CST='       +CSTIPIToStr(CST)) ;
                         trvwNFe.Items.AddChild(Node,'clEnq='    +clEnq);
                         trvwNFe.Items.AddChild(Node,'CNPJProd=' +CNPJProd);
                         trvwNFe.Items.AddChild(Node,'cSelo='    +cSelo);
                         trvwNFe.Items.AddChild(Node,'qSelo='    +IntToStr(qSelo));
                         trvwNFe.Items.AddChild(Node,'cEnq='     +cEnq);

                         trvwNFe.Items.AddChild(Node,'vBC='    +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'qUnid='  +FloatToStr(qUnid));
                         trvwNFe.Items.AddChild(Node,'vUnid='  +FloatToStr(vUnid));
                         trvwNFe.Items.AddChild(Node,'pIPI='   +FloatToStr(pIPI));
                         trvwNFe.Items.AddChild(Node,'vIPI='   +FloatToStr(vIPI));
                       end;
                    end;

                   if (II.vBc > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'II');
                      with II do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='      +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'vDespAdu=' +FloatToStr(vDespAdu));
                         trvwNFe.Items.AddChild(Node,'vII='      +FloatToStr(vII));
                         trvwNFe.Items.AddChild(Node,'vIOF='     +FloatToStr(vIOF));
                       end;
                    end;

                   Node := trvwNFe.Items.AddChild(NodePai,'PIS');
                   with PIS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTPISToStr(CST));

                      if (CST = pis01) or (CST = pis02) then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='  +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS=' +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'vPIS=' +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end
                      else if CST = pis99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(PIS.vBC));
                         trvwNFe.Items.AddChild(Node,'pPIS='      +FloatToStr(PIS.pPIS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                       end;
                    end;

                   if (PISST.vBc>0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'PISST');
                      with PISST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBc='       +FloatToStr(vBc));
                         trvwNFe.Items.AddChild(Node,'pPis='      +FloatToStr(pPis));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(vPIS));
                       end;
                      end;

                   Node := trvwNFe.Items.AddChild(NodePai,'COFINS');
                   with COFINS do
                    begin
                      trvwNFe.Items.AddChild(Node,'CST=' +CSTCOFINSToStr(CST));

                      if (CST = cof01) or (CST = cof02)   then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS=' +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof03 then
                       begin
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end
                      else if CST = cof99 then
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(COFINS.vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(COFINS.pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                       end;
                    end;

                   if (COFINSST.vBC > 0) then
                    begin
                      Node := trvwNFe.Items.AddChild(NodePai,'COFINSST');
                      with COFINSST do
                       begin
                         trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                         trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(pCOFINS));
                         trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                         trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                         trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(vCOFINS));
                       end;
                    end;
                end;
             end;
          end ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Total');
       Node := trvwNFe.Items.AddChild(NodePai,'ICMSTot');
       trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ICMSTot.vBC));
       trvwNFe.Items.AddChild(Node,'vICMS='   +FloatToStr(Total.ICMSTot.vICMS)) ;
       trvwNFe.Items.AddChild(Node,'vBCST='   +FloatToStr(Total.ICMSTot.vBCST)) ;
       trvwNFe.Items.AddChild(Node,'vST='     +FloatToStr(Total.ICMSTot.vST)) ;
       trvwNFe.Items.AddChild(Node,'vProd='   +FloatToStr(Total.ICMSTot.vProd)) ;
       trvwNFe.Items.AddChild(Node,'vFrete='  +FloatToStr(Total.ICMSTot.vFrete)) ;
       trvwNFe.Items.AddChild(Node,'vSeg='    +FloatToStr(Total.ICMSTot.vSeg)) ;
       trvwNFe.Items.AddChild(Node,'vDesc='   +FloatToStr(Total.ICMSTot.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vII='     +FloatToStr(Total.ICMSTot.vII)) ;
       trvwNFe.Items.AddChild(Node,'vIPI='    +FloatToStr(Total.ICMSTot.vIPI)) ;
       trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ICMSTot.vPIS)) ;
       trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ICMSTot.vCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vOutro='  +FloatToStr(Total.ICMSTot.vOutro)) ;
       trvwNFe.Items.AddChild(Node,'vNF='     +FloatToStr(Total.ICMSTot.vNF)) ;
       trvwNFe.Items.AddChild(Node,'vFCPUFDest='   +FloatToStr(Total.ICMSTot.vFCPUFDest)) ;
       trvwNFe.Items.AddChild(Node,'vICMSUFDest='  +FloatToStr(Total.ICMSTot.vICMSUFDest)) ;
       trvwNFe.Items.AddChild(Node,'vICMSUFRemet=' +FloatToStr(Total.ICMSTot.vICMSUFRemet)) ;

       if Total.ISSQNtot.vServ > 0 then
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'ISSQNtot');
          trvwNFe.Items.AddChild(Node,'vServ='   +FloatToStr(Total.ISSQNtot.vServ)) ;
          trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ISSQNTot.vBC)) ;
          trvwNFe.Items.AddChild(Node,'vISS='    +FloatToStr(Total.ISSQNTot.vISS)) ;
          trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ISSQNTot.vPIS)) ;
          trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ISSQNTot.vCOFINS)) ;
        end;

       Node := trvwNFe.Items.AddChild(NodePai,'retTrib');
       trvwNFe.Items.AddChild(Node,'vRetPIS='   +FloatToStr(Total.retTrib.vRetPIS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCOFINS='+FloatToStr(Total.retTrib.vRetCOFINS)) ;
       trvwNFe.Items.AddChild(Node,'vRetCSLL='  +FloatToStr(Total.retTrib.vRetCSLL)) ;
       trvwNFe.Items.AddChild(Node,'vBCIRRF='   +FloatToStr(Total.retTrib.vBCIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vIRRF='     +FloatToStr(Total.retTrib.vIRRF)) ;
       trvwNFe.Items.AddChild(Node,'vBCRetPrev='+FloatToStr(Total.retTrib.vBCRetPrev)) ;
       trvwNFe.Items.AddChild(Node,'vRetPrev='  +FloatToStr(Total.retTrib.vRetPrev)) ;

       NodePai := trvwNFe.Items.AddChild(Nota,'Transp');
       Node := trvwNFe.Items.AddChild(NodePai,'Transporta');
       trvwNFe.Items.AddChild(Node,'modFrete=' +modFreteToStr(Transp.modFrete));
       trvwNFe.Items.AddChild(Node,'CNPJCPF='  +Transp.Transporta.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'xNome='    +Transp.Transporta.xNome);
       trvwNFe.Items.AddChild(Node,'IE='       +Transp.Transporta.IE);
       trvwNFe.Items.AddChild(Node,'xEnder='   +Transp.Transporta.xEnder);
       trvwNFe.Items.AddChild(Node,'xMun='     +Transp.Transporta.xMun);
       trvwNFe.Items.AddChild(Node,'UF='       +Transp.Transporta.UF);

       Node := trvwNFe.Items.AddChild(NodePai,'retTransp');
       trvwNFe.Items.AddChild(Node,'vServ='    +FloatToStr(Transp.retTransp.vServ)) ;
       trvwNFe.Items.AddChild(Node,'vBCRet='   +FloatToStr(Transp.retTransp.vBCRet)) ;
       trvwNFe.Items.AddChild(Node,'pICMSRet=' +FloatToStr(Transp.retTransp.pICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'vICMSRet=' +FloatToStr(Transp.retTransp.vICMSRet)) ;
       trvwNFe.Items.AddChild(Node,'CFOP='     +Transp.retTransp.CFOP);
       trvwNFe.Items.AddChild(Node,'cMunFG='   +FloatToStr(Transp.retTransp.cMunFG));

       Node := trvwNFe.Items.AddChild(NodePai,'veicTransp');
       trvwNFe.Items.AddChild(Node,'placa='  +Transp.veicTransp.placa);
       trvwNFe.Items.AddChild(Node,'UF='     +Transp.veicTransp.UF);
       trvwNFe.Items.AddChild(Node,'RNTC='   +Transp.veicTransp.RNTC);

       for I:=0 to Transp.Reboque.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Reboque'+IntToStrZero(I+1,3));
          with Transp.Reboque.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'placa=' +placa) ;
             trvwNFe.Items.AddChild(Node,'UF='    +UF) ;
             trvwNFe.Items.AddChild(Node,'RNTC='  +RNTC) ;
           end;
        end;

       for I:=0 to Transp.Vol.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'Volume'+IntToStrZero(I+1,3));
          with Transp.Vol.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'qVol='  +IntToStr(qVol)) ;
             trvwNFe.Items.AddChild(Node,'esp='   +esp);
             trvwNFe.Items.AddChild(Node,'marca=' +marca);
             trvwNFe.Items.AddChild(Node,'nVol='  +nVol);
             trvwNFe.Items.AddChild(Node,'pesoL=' +FloatToStr(pesoL)) ;
             trvwNFe.Items.AddChild(Node,'pesoB'  +FloatToStr(pesoB)) ;

             for J:=0 to Lacres.Count-1 do
              begin
                Node := trvwNFe.Items.AddChild(Node,'Lacre'+IntToStrZero(I+1,3)+IntToStrZero(J+1,3) );
                trvwNFe.Items.AddChild(Node,'nLacre='+Lacres.Items[J].nLacre) ;
              end;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'Cobr');
       Node    := trvwNFe.Items.AddChild(NodePai,'Fat');
       trvwNFe.Items.AddChild(Node,'nFat='  +Cobr.Fat.nFat);
       trvwNFe.Items.AddChild(Node,'vOrig=' +FloatToStr(Cobr.Fat.vOrig)) ;
       trvwNFe.Items.AddChild(Node,'vDesc=' +FloatToStr(Cobr.Fat.vDesc)) ;
       trvwNFe.Items.AddChild(Node,'vLiq='  +FloatToStr(Cobr.Fat.vLiq)) ;

       for I:=0 to Cobr.Dup.Count-1 do
        begin
          Node    := trvwNFe.Items.AddChild(NodePai,'Duplicata'+IntToStrZero(I+1,3));
          with Cobr.Dup.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'nDup='  +nDup) ;
             trvwNFe.Items.AddChild(Node,'dVenc=' +DateToStr(dVenc));
             trvwNFe.Items.AddChild(Node,'vDup='  +FloatToStr(vDup)) ;
           end;
        end;

       NodePai := trvwNFe.Items.AddChild(Nota,'InfAdic');
       trvwNFe.Items.AddChild(NodePai,'infCpl='     +InfAdic.infCpl);
       trvwNFe.Items.AddChild(NodePai,'infAdFisco=' +InfAdic.infAdFisco);

       for I:=0 to InfAdic.obsCont.Count-1 do
        begin
          Node := trvwNFe.Items.AddChild(NodePai,'obsCont'+IntToStrZero(I+1,3));
          with InfAdic.obsCont.Items[I] do
           begin
             trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
             trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
           end;
        end;

         for I:=0 to InfAdic.obsFisco.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'obsFisco'+IntToStrZero(I+1,3));
            with InfAdic.obsFisco.Items[I] do
             begin
                trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo) ;
                trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
             end;
          end;

         for I:=0 to InfAdic.procRef.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'procRef'+IntToStrZero(I+1,3));
            with InfAdic.procRef.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'nProc='   +nProc) ;
               trvwNFe.Items.AddChild(Node,'indProc=' +indProcToStr(indProc));
             end;
          end;

         if (exporta.UFembarq <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'exporta');
            trvwNFe.Items.AddChild(Node,'UFembarq='   +exporta.UFembarq) ;
            trvwNFe.Items.AddChild(Node,'xLocEmbarq=' +exporta.xLocEmbarq);
          end;

         if (compra.xNEmp <> '') then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'compra');
            trvwNFe.Items.AddChild(Node,'xNEmp=' +compra.xNEmp) ;
            trvwNFe.Items.AddChild(Node,'xPed='  +compra.xPed);
            trvwNFe.Items.AddChild(Node,'xCont=' +compra.xCont);
          end;
     end;
       pgRespostas.ActivePageIndex := 3;
     end;

  end;
end;

procedure Tfrm_PREFACBR.lblMouseEnter(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold,fsUnderline];
end;

procedure Tfrm_PREFACBR.lblMouseLeave(Sender: TObject);
begin
 TLabel(Sender).Font.Style := [fsBold];
end;

procedure Tfrm_PREFACBR.lblColaboradorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/5');
end;

procedure Tfrm_PREFACBR.lblPatrocinadorClick(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/35');
end;

procedure Tfrm_PREFACBR.lblDoar1Click(Sender: TObject);
begin
  OpenURL('http://acbr.sourceforge.net/drupal/?q=node/14');
end;

procedure Tfrm_PREFACBR.GerarNFe(NumNFe : String);
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
     Ide.indPag    := ipVista;
     Ide.modelo    := 55;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := Date;
     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     if  Assigned( ACBrNFe1.DANFE ) then
        Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}
      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }

      Dest.CNPJCPF           := '05481336000137';
      Dest.IE                := '687138770110';
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1532599600';
      Dest.EnderDest.CEP     := 18270170;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatui';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

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
      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123456';
         Prod.cEAN     := '7896523206646';
         Prod.xProd    := 'TESTE DE PRODUTO';
         Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '7896523206646';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         Prod.CEST := '1111111';

         infAdProd      := 'Informacao Adicional do Produto';

//Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
{         with Prod.DI.Add do
          begin
            nDi         := '';
            dDi         := now;
            xLocDesemb  := '';
            UFDesemb    := '';
            dDesemb     := now;
            cExportador := '';

            with adi.Add do
             begin
               nAdicao     := 1;
               nSeqAdi     := 1;
               cFabricante := '';
               vDescDI     := 0;
             end;
          end;
}
//Campos para venda de veículos novos
{         with Prod.veicProd do
          begin
            tpOP    := toVendaConcessionaria;
            chassi  := '';
            cCor    := '';
            xCor    := '';
            pot     := '';
            Cilin   := '';
            pesoL   := '';
            pesoB   := '';
            nSerie  := '';
            tpComb  := '';
            nMotor  := '';
            CMT     := '';
            dist    := '';
            RENAVAM := '';
            anoMod  := 0;
            anoFab  := 0;
            tpPint  := '';
            tpVeic  := 0;
            espVeic := 0;
            VIN     := '';
            condVeic := cvAcabado;
            cMod    := '';
          end;
}
//Campos específicos para venda de medicamentos
{         with Prod.med.Add do
          begin
            nLote := '';
            qLote := 0 ;
            dFab  := now ;
            dVal  := now ;
            vPMC  := 0 ;
          end;  }
//Campos específicos para venda de armamento
{         with Prod.arma.Add do
          begin
            nSerie := 0;
            tpArma := taUsoPermitido ;
            nCano  := 0 ;
            descr  := '' ;
          end;      }
//Campos específicos para venda de combustível(distribuidoras)
{         with Prod.comb do
          begin
            cProdANP := 0;
            CODIF    := '';
            qTemp    := 0;
            UFcons   := '';

            CIDE.qBCprod   := 0 ;
            CIDE.vAliqProd := 0 ;
            CIDE.vCIDE     := 0 ;

            ICMS.vBCICMS   := 0 ;
            ICMS.vICMS     := 0 ;
            ICMS.vBCICMSST := 0 ;
            ICMS.vICMSST   := 0 ;

            ICMSInter.vBCICMSSTDest := 0 ;
            ICMSInter.vICMSSTDest   := 0 ;

            ICMSCons.vBCICMSSTCons := 0 ;
            ICMSCons.vICMSSTCons   := 0 ;
            ICMSCons.UFcons        := '' ;
          end;}

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;

            with ICMS do
             begin
               CST          := cst00;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := 100;
               ICMS.pICMS   := 18;
               ICMS.vICMS   := 18;
               ICMS.modBCST := dbisMargemValorAgregado;
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

    {        with IPI do
             begin
               CST      := ipi99 ;
               clEnq    := '999';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := 100;
               qUnid  := 0;
               vUnid  := 0;
               pIPI   := 5;
               vIPI   := 5;
             end;    }
{
            with II do
             begin
               vBc      := 0;
               vDespAdu := 0;
               vII      := 0;
               vIOF     := 0;
             end;

            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para serviços
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}
         end;
       end ;
 {
//Adicionando Serviços
      with Det.Add do
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
               cListServ := '1402'; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;       }

      Total.ICMSTot.vBC     := 100;
      Total.ICMSTot.vICMS   := 18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 100;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;

      // lei da transparencia de impostos
      Total.ICMSTot.vTotTrib := 0;

      // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := 0.00;
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;


  {    Total.ISSQNtot.vServ   := 100;
      Total.ISSQNTot.vBC     := 100;
      Total.ISSQNTot.vISS    := 2;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

      Transp.modFrete := mfContaEmitente;
      Transp.Transporta.CNPJCPF  := '';
      Transp.Transporta.xNome    := '';
      Transp.Transporta.IE       := '';
      Transp.Transporta.xEnder   := '';
      Transp.Transporta.xMun     := '';
      Transp.Transporta.UF       := '';

{      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;         }

      Transp.veicTransp.placa := '';
      Transp.veicTransp.UF    := '';
      Transp.veicTransp.RNTC  := '';
//Dados do Reboque
{      with Transp.Reboque.Add do
       begin
         placa := '';
         UF    := '';
         RNTC  := '';
       end;}

      with Transp.Vol.Add do
       begin
         qVol  := 1;
         esp   := 'Especie';
         marca := 'Marca';
         nVol  := 'Numero';
         pesoL := 100;
         pesoB := 110;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
       end;

      Cobr.Fat.nFat  := 'Numero da Fatura';
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


      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end;
//Processo referenciado
{     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

      exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';
   end;

  ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure Tfrm_PREFACBR.GerarNFCe(NumNFe: String);
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := now;
     Ide.dSaiEnt   := now;
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variÃ¡vel quando for para ambiente de produÃ§Ã£o
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      Dest.CNPJCPF           := '05481336000137';
//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1533243333';
      Dest.EnderDest.CEP     := 18270170;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatuí';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

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
      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123456';
         Prod.cEAN     := '7896523206646';
         Prod.xProd    := 'Descrição do Produto';
         Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '7896523206646';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         Prod.CEST := '1111111';

//         infAdProd      := 'Informação Adicional do Produto';

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;

            with ICMS do
             begin
               CST          := cst00;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := 100;
               ICMS.pICMS   := 18;
               ICMS.vICMS   := 18;
               ICMS.modBCST := dbisMargemValorAgregado;
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
{            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para serviços
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      {       end;}
          end;
       end ;

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
      Total.ICMSTot.vBC     := 100;
      Total.ICMSTot.vICMS   := 18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 100;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;

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

      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := 100;
       end;

      InfAdic.infCpl     :=  '';
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

   ACBrNFe1.NotasFiscais.GerarNFe;
end;

procedure Tfrm_PREFACBR.btnConsultarChaveClick(Sender: TObject);
var
 vChave : String;
begin
  if not(InputQuery('WebServices Consultar', 'Chave da NF-e:', vChave)) then
    exit;

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.WebServices.Consulta.NFeChave := vChave;
  ACBrNFe1.WebServices.Consulta.Executar;

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
  LoadConsulta201(ACBrNFe1.WebServices.Consulta.RetWS);
end;

procedure Tfrm_PREFACBR.btnCancelarChaveClick(Sender: TObject);
var
 Chave, idLote, CNPJ, Protocolo, Justificativa : string;
begin
  if frm_principal.chave<>'' then chave:=frm_principal.chave;
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

  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EvnvEvento.EnvEventoNFe.idLote := StrToInt(idLote) ;
  with ACBrNFe1.EventoNFe.Evento.Add do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCancelamento;
     infEvento.detEvento.xJust := Justificativa;
     infEvento.detEvento.nProt := Protocolo;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetornoWS, WBResposta);
  ACBRNFe1.DANFE:=ACBrNFeDANFCeFortes1;
  ACBrNFe1.ImprimirEvento;


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
     dm_Dados.zqry_SGNF.Open;

end;

procedure Tfrm_PREFACBR.btnAdicionarProtNFeClick(Sender: TObject);
var
  NomeArq : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ACBrNFe1.Consultar;
    ShowMessage(ACBrNFe1.WebServices.Consulta.Protocolo);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Consulta.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Consulta.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Consulta.RetornoWS, WBResposta);
    NomeArq := OpenDialog1.FileName;
    if pos(UpperCase('-nfe.xml'),UpperCase(NomeArq)) > 0 then
       NomeArq := StringReplace(NomeArq,'-nfe.xml','-procNfe.xml',[rfIgnoreCase]);
    ACBrNFe1.NotasFiscais.Items[0].GravarXML(NomeArq);
    ShowMessage('Arquivo gravado em: '+NomeArq);
    memoLog.Lines.Add('Arquivo gravado em: '+NomeArq);
  end;
end;

procedure Tfrm_PREFACBR.btnCarregarXMLEnviarClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName, False);

 {   with ACBrNFe1.NotasFiscais.Items[0].NFe do
     begin
       Emit.CNPJCPF           := edtEmitCNPJ.Text;
       Emit.IE                := edtEmitIE.Text;
       Emit.xNome             := edtEmitRazao.Text;
       Emit.xFant             := edtEmitFantasia.Text;

       Emit.EnderEmit.fone    := edtEmitFone.Text;
       Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
       Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
       Emit.EnderEmit.nro     := edtEmitNumero.Text;
       Emit.EnderEmit.xCpl    := edtEmitComp.Text;
       Emit.EnderEmit.xBairro := edtEmitBairro.Text;
       Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
       Emit.EnderEmit.xMun    := edtEmitCidade.Text;
       Emit.EnderEmit.UF      := edtEmitUF.Text;
       Emit.enderEmit.cPais   := 1058;
       Emit.enderEmit.xPais   := 'BRASIL';

       Emit.IEST              := '';
       Emit.IM                := ''; // Preencher no caso de existir serviços na nota
       Emit.CNAE              := ''; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
       Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)
    end;}
    //ACBrNFe1.NotasFiscais.GerarNFe;
    //ACBrNFe1.NotasFiscais.GravarXML('c:\temp\teste.xml');
    ACBrNFe1.Enviar(1,True);

    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

   MemoDados.Lines.Add('');
   MemoDados.Lines.Add('Envio NFe');
   MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
   MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
   MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
   MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
   MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
   MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
   MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
   MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
   MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
  end;
end;

procedure Tfrm_PREFACBR.btnCartadeCorrecaoClick(Sender: TObject);
var
 Chave, idLote, CNPJ, nSeqEvento, Correcao : string;
begin
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Chave da NF-e', Chave)) then
     exit;
  Chave := Trim(OnlyNumber(Chave));
  idLote := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Identificador de controle do Lote de envio do Evento', idLote)) then
     exit;
  CNPJ := copy(Chave,7,14);
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'CNPJ ou o CPF do autor do Evento', CNPJ)) then
     exit;
  nSeqEvento := '1';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Sequencial do evento para o mesmo tipo de evento', nSeqEvento)) then
     exit;
  Correcao := 'Correção a ser considerada, texto livre. A correção mais recente substitui as anteriores.';
  if not(InputQuery('WebServices Eventos: Carta de Correção', 'Correção a ser considerada', Correcao)) then
     exit;
  ACBrNFe1.EventoNFe.Evento.Clear;
//  ACBrNFe1.EnvEvento.EnvEventoNFe..idLote := StrToInt(idLote);
  with ACBrNFe1.EventoNFe.Evento.New do
   begin
     infEvento.chNFe := Chave;
     infEvento.CNPJ   := CNPJ;
     infEvento.dhEvento := now;
     infEvento.tpEvento := teCCe;
     infEvento.nSeqEvento := StrToInt(nSeqEvento);
     infEvento.detEvento.xCorrecao := Correcao;
   end;
  ACBrNFe1.EnviarEvento(StrToInt(idLote));

  MemoResp.Lines.Text := ACBrNFe1.WebServices.EnvEvento.RetWS;
  //memoRespWS.Lines.Text := ACBrNFe1.WebServices.EnvEvento.EventoRetorno;
//  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].XXXX
  LoadXML(ACBrNFe1.WebServices.EnvEvento.RetWS, WBResposta);
  btnImprimirCCeClick(Self);
end;

procedure Tfrm_PREFACBR.btnValidarAssinaturaClick(Sender: TObject);
var
  Msg : String;
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    if not ACBrNFe1.NotasFiscais.VerificarAssinatura(Msg) then
      MemoDados.Lines.Add('Erro: '+Msg)
    else
      ShowMessage('Assinatura Válida');  
  end;
end;

procedure Tfrm_PREFACBR.btnImprimirCCeClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione o Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName);
    ACBrNFe1.ImprimirEvento;
  end;
end;

procedure Tfrm_PREFACBR.btnEnviarEventoClick(Sender: TObject);
var
 Para : String;
 CC, Evento: Tstrings;
begin
  if not(InputQuery('Enviar Email', 'Email de destino', Para)) then
    exit;
    
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
  end;

  OpenDialog1.Title := 'Selecione ao Evento';
  OpenDialog1.DefaultExt := '*.XML';
  OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    Evento := TStringList.Create;
    Evento.Clear;
    Evento.Add(OpenDialog1.FileName);
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
    CC:=TstringList.Create;
    CC.Add('contato@nonoelemento.com'); //especifique um email vÃ¡lido
    CC.Add('contato@nonoelemento.com');    //especifique um email vÃ¡lido
    //TODO:
    ////ACBrNFe1.EnviarEmailEvento(edtSmtpHost.Text
    ////                         , edtSmtpPort.Text
    ////                         , edtSmtpUser.Text
    ////                         , edtSmtpPass.Text
    ////                         , edtSmtpUser.Text
    ////                         , Para
    ////                         , edtEmailAssunto.Text
    ////                         , mmEmailMsg.Lines
    ////                         , cbEmailSSL.Checked // SSL - ConexÃ£o Segura
    ////                         , True //Enviar PDF junto
    ////                         , CC //Lista com emails que serÃ£o enviado cÃ³pias - TStrings
    ////                         , Evento // Lista de anexos - TStrings
    ////                         , False  //Pede confirmaÃ§Ã£o de leitura do email
    ////                         , False  //Aguarda Envio do Email(nÃ£o usa thread)
    ////                         , 'ACBrNFe2' // Nome do Rementente
    ////                         , cbEmailSSL.Checked ); // Auto TLS
    CC.Free;
    Evento.Free;
  end;
end;

procedure Tfrm_PREFACBR.btnCriarEnviarNFCeClick(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
begin
  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
    exit;

  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
    exit;

  vSincrono := '1';
  if not(InputQuery('WebServices Enviar', 'Envio Síncrono(1=Sim, 0=Não)', vSincrono)) then
    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('Número do Lote inválido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inválido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;  

  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
  GerarNFCe(vAux);

  ACBrNFe1.Enviar(vNumLote,True,Sincrono);

  if not Sincrono then
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
    MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
  end
  else
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Enviar.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Enviar.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Enviar.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Enviar.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Enviar.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Enviar.xMotivo);
    //MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cMsg));
    //MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Enviar.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
    //MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Enviar.Protocolo);
  end;

  ACBrNFe1.NotasFiscais.Clear;
end;

procedure Tfrm_PREFACBR.btnDistribuicaoDFeClick(Sender: TObject);
var
 cUFAutor, CNPJ, ultNSU, ANSU: string;
 ok: boolean;
begin
  cUFAutor := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Código da UF do Autor', cUFAutor)) then
     exit;

  CNPJ := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'CNPJ/CPF do interessado no DF-e', CNPJ)) then
     exit;

  ultNSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'Último NSU recebido pelo ator', ultNSU)) then
     exit;

  ANSU := '';
  if not(InputQuery('WebServices Distribuição Documentos Fiscais', 'NSU específico', ANSU)) then
     exit;

   ACBrNFe1.DistribuicaoDFe(StrToInt(cUFAutor),CNPJ,ultNSU,ANSU);

  MemoResp.Lines.Text := ACBrNFe1.WebServices.DistribuicaoDFe.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.DistribuicaoDFe.RetornoWS;

  LoadXML(ACBrNFe1.WebServices.DistribuicaoDFe.RetWS, WBResposta);

  ACBrNFe1.Free;
end;

procedure Tfrm_PREFACBR.PageControl1Enter(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
begin
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  cbSSLType.Items.Clear ;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) ) ;
  cbSSLType.ItemIndex := 0 ;

  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  cbVersaoDF.Items[0] := 've200' ;
  cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
  PageControl3.ActivePage := tsNFe;
  pgRespostas.ActivePageIndex := 2;
  ACBrNFe1.Configuracoes.WebServices.Salvar := true;
end;

procedure Tfrm_PREFACBR.PathClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(TEdit(Sender).Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := TEdit(Sender).Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    TEdit(Sender).Text := Dir;
end;

procedure Tfrm_PREFACBR.sbPathNFeClick(Sender: TObject);
begin
 PathClick(edtPathNFe);
end;

procedure Tfrm_PREFACBR.sbNomeDLLClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivo DLL|*.dll';
  OpenDialog1.InitialDir := ExtractFilePath(edNomeDLL.Text);
  OpenDialog1.FileName := edNomeDLL.Text;
  if OpenDialog1.Execute then edNomeDLL.Text := OpenDialog1.FileName ;
end;

procedure Tfrm_PREFACBR.sbPathCanClick(Sender: TObject);
begin
 PathClick(edtPathCan);
end;

procedure Tfrm_PREFACBR.sbPathCCeClick(Sender: TObject);
begin
 PathClick(edtPathCCe);
end;

procedure Tfrm_PREFACBR.sbPathInuClick(Sender: TObject);
begin
 PathClick(edtPathInu);
end;

procedure Tfrm_PREFACBR.sbPathDPECClick(Sender: TObject);
begin
 PathClick(edtPathDPEC);
end;

procedure Tfrm_PREFACBR.sbPathEventoClick(Sender: TObject);
begin
 PathClick(edtPathEvento);
end;

procedure Tfrm_PREFACBR.spPathSchemasClick(Sender: TObject);
begin
 PathClick(edtPathSchemas);
end;

procedure Tfrm_PREFACBR.TabSheet16Enter(Sender: TObject);
begin
dm_Dados.zqry_SGNF.Close;
dm_dados.Zqry_sgnf.SQL.Clear;
dm_dados.Zqry_sgnf.SQL.Add('select * from sgnf');
dm_dados.zqry_SGNF.Open;
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_DTVALIDADEClick(Sender: TObject);
begin
  ShowMessage( FormatDateBr(ACBrNFe1.SSL.CertDataVenc) );
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_HTTPSClick(Sender: TObject);
var
  Acao: String;
  OldUseCert: Boolean;
begin
  Acao := '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'+
     '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" '+
     'xmlns:cli="http://cliente.bean.master.sigep.bsb.correios.com.br/"> '+
     ' <soapenv:Header/>'+
     ' <soapenv:Body>' +
     ' <cli:consultaCEP>' +
     ' <cep>18270-170</cep>' +
     ' </cli:consultaCEP>' +
     ' </soapenv:Body>' +
     ' </soapenv:Envelope>';

  OldUseCert := ACBrNFe1.SSL.UseCertificateHTTP;
  ACBrNFe1.SSL.UseCertificateHTTP := False;
  try
    MemoResp.Lines.Text := ACBrNFe1.SSL.Enviar(Acao, 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl', '');
  finally
    ACBrNFe1.SSL.UseCertificateHTTP := OldUseCert;
  end;
  pgRespostas.ActivePageIndex := 0;
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_NUMSERIEClick(Sender: TObject);
begin
  ShowMessage( ACBrNFe1.SSL.CertNumeroSerie );
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_SUBJECTClick(Sender: TObject);
begin
  ShowMessage( ACBrNFe1.SSL.CertSubjectName + sLineBreak + sLineBreak +
               'Razão Social: '+ACBrNFe1.SSL.CertRazaoSocial);
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_X509Click(Sender: TObject);
var
  Erro, AName: String;
begin
  with ACBrNFe1.SSL do
  begin
     CarregarCertificadoPublico(MemoDados.Lines.Text);
     MemoResp.Lines.Add(CertIssuerName);
     MemoResp.Lines.Add(CertRazaoSocial);
     MemoResp.Lines.Add(CertCNPJ);
     MemoResp.Lines.Add(CertSubjectName);
     MemoResp.Lines.Add(CertNumeroSerie);
    //MemoDados.Lines.LoadFromFile('c:\temp\teste2.xml');
    //MemoResp.Lines.Text := Assinar(MemoDados.Lines.Text, 'Entrada', 'Parametros');
    //Erro := '';
    //if VerificarAssinatura(MemoResp.Lines.Text, Erro, 'Parametros' ) then
    //  ShowMessage('OK')
    //else
    //  ShowMessage('ERRO: '+Erro)
    pgRespostas.ActivePageIndex := 0;
  end;

end;

procedure Tfrm_PREFACBR.btn_FECHARClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_PREFACBR.btn_BUSCACEPClick(Sender: TObject);
begin
MostraTelaAguarde('Buscando CEP '+edtEmitCEP.Text+' nos Correios');
ACBrCEP1.BuscarPorCEP(edtEmitCEP.Text);
fechatelaaguarde;
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_CNPJClick(Sender: TObject);
begin
  ShowMessage( ACBrNFe1.SSL.CertCNPJ );
end;

procedure Tfrm_PREFACBR.btn_CERTIFICADO_RSAClick(Sender: TObject);
var
  Ahash: AnsiString;
begin
  Ahash := ACBrNFe1.SSL.CalcHash(Edit1.Text, dgstSHA256, outBase64, cbAssinar.Checked);
  MemoResp.Lines.Add( Ahash );
end;

end.




