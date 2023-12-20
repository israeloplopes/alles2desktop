unit u_fechacupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.Menus,
  ComCtrls, OleCtrls, SHDocVw, IdExplicitTLSClientServerBase, IdFTP, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ShellApi, WinSock, WinInet,
  Vcl.Imaging.jpeg, ACBrDANFCeFortesFrA4, ACBrNFeDANFeESCPOS, ACBrNFeDANFEClass,
  ACBrDANFCeFortesFr, ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFeRLClass,
  ACBrPosPrinter, ACBrIntegrador, ACBrMail, ACBrBase, ACBrDFe, ACBrNFe, ACBrUtil,
  XMLIntf, XMLDoc, zlib;


type
  Tfrm_FECHACUPOM = class(TForm)
    pn_ESQUERDA: TPanel;
    pn_DIREITA: TPanel;
    pn_BOTTON: TPanel;
    pn_TOP: TPanel;
    lbl_VALORTOTAL: TLabel;
    GroupBox1: TGroupBox;
    cb_FORMAPAGTO: TComboBox;
    Label1: TLabel;
    edt_VALORPAGO: TEdit;
    btn_CONFIRMAR: TBitBtn;
    GroupBox3: TGroupBox;
    pn_SUBTOTAL: TPanel;
    pn_FIDELIDADE: TPanel;
    pn_TROCO: TPanel;
    pn_TOTALPAGAR: TPanel;
    zqry_CONTADOR: TZQuery;
    lbl_PAGTOPARCIAL: TLabel;
    BitBtn2: TBitBtn;
    zqry_TIPOCOB: TZQuery;
    zdts_TIPOCOB: TDataSource;
    GroupBox4: TGroupBox;
    edt_VALORACRESCIMO: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edt_VALORDESCONTO: TEdit;
    pn_FALTA: TPanel;
    lbl_TOTALGERALPAGAR: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_VALORTROCO: TLabel;
    Label7: TLabel;
    lbl_FALTA: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cds_MULTIPAGTO: TClientDataSet;
    dts_MULTIPAGTO: TDataSource;
    DBGrid1: TDBGrid;
    zqry_FECHAVENDA: TZQuery;
    zdts_FECHAVENDA: TDataSource;
    zqry_FNRECEBER: TZQuery;
    zdts_FNRECEBER: TDataSource;
    zdts_CONTADOR: TDataSource;
    lbl_AVISO: TLabel;
    zqry_FNITRECEBER: TZQuery;
    DataSource1: TDataSource;
    zqry_VDVENDA_NFCE: TZQuery;
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
    zdts_VDVENDA_NFCE: TDataSource;
    zdts_VDITVENDA_NFCE: TDataSource;
    zqry_VDITVENDA_NFCE: TZQuery;
    zqry_VDITVENDA_NFCECODEMP: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIAL: TSmallintField;
    zqry_VDITVENDA_NFCETIPOVENDA: TWideStringField;
    zqry_VDITVENDA_NFCECODVENDA: TIntegerField;
    zqry_VDITVENDA_NFCECODITVENDA: TIntegerField;
    zqry_VDITVENDA_NFCECODNAT: TWideStringField;
    zqry_VDITVENDA_NFCECODPROD: TIntegerField;
    zqry_VDITVENDA_NFCECODLOTE: TWideStringField;
    zqry_VDITVENDA_NFCECODALMOX: TIntegerField;
    zqry_VDITVENDA_NFCEREFPROD: TWideStringField;
    zqry_VDITVENDA_NFCEOBSITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCEORIGFISC: TWideStringField;
    zqry_VDITVENDA_NFCECODTRATTRIB: TWideStringField;
    zqry_VDITVENDA_NFCETIPOFISC: TWideStringField;
    zqry_VDITVENDA_NFCETIPOST: TWideStringField;
    zqry_VDITVENDA_NFCECODMENS: TIntegerField;
    zqry_VDITVENDA_NFCECODLOG: TIntegerField;
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
    zqry_VDITVENDA_NFCE_DESCPROD: TStringField;
    zqry_VDITVENDA_NFCE_CODBARPROD: TStringField;
    zqry_VDITVENDA_NFCE_CODUNID: TStringField;
    zqry_EQPRODUTO: TZQuery;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCODUNID: TWideStringField;
    zdts_EQPRODUTO: TDataSource;
    zqry_ATUALIZA: TZQuery;
    zdts_ATUALIZA: TDataSource;
    zqry_VDVENDA_NFCECODEMP: TIntegerField;
    zqry_VDVENDA_NFCECODFILIAL: TSmallintField;
    zqry_VDVENDA_NFCETIPOVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODVENDA: TIntegerField;
    zqry_VDVENDA_NFCESUBTIPOVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODEMPVD: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALVD: TSmallintField;
    zqry_VDVENDA_NFCECODVEND: TIntegerField;
    zqry_VDVENDA_NFCECODEMPCL: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALCL: TSmallintField;
    zqry_VDVENDA_NFCECODCLI: TIntegerField;
    zqry_VDVENDA_NFCECODEMPPG: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALPG: TSmallintField;
    zqry_VDVENDA_NFCECODPLANOPAG: TIntegerField;
    zqry_VDVENDA_NFCECODEMPSE: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALSE: TSmallintField;
    zqry_VDVENDA_NFCESERIE: TWideStringField;
    zqry_VDVENDA_NFCECODEMPTM: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALTM: TSmallintField;
    zqry_VDVENDA_NFCECODTIPOMOV: TIntegerField;
    zqry_VDVENDA_NFCECODEMPCX: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALCX: TSmallintField;
    zqry_VDVENDA_NFCECODCAIXA: TIntegerField;
    zqry_VDVENDA_NFCEDOCVENDA: TIntegerField;
    zqry_VDVENDA_NFCEDTSAIDAVENDA: TDateField;
    zqry_VDVENDA_NFCEDTEMITVENDA: TDateField;
    zqry_VDVENDA_NFCEDTCOMPVENDA: TDateField;
    zqry_VDVENDA_NFCECODEMPRM: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALRM: TSmallintField;
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
    zqry_VDVENDA_NFCECODEMPBO: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALBO: TSmallintField;
    zqry_VDVENDA_NFCECODBANCO: TWideStringField;
    zqry_VDVENDA_NFCECODEMPTC: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALTC: TSmallintField;
    zqry_VDVENDA_NFCECODTIPOCOB: TIntegerField;
    zqry_VDVENDA_NFCEVLRBASEISSVENDA: TFloatField;
    zqry_VDVENDA_NFCEVLRISSVENDA: TFloatField;
    zqry_VDVENDA_NFCECALCISSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPIISSVENDA: TWideStringField;
    zqry_VDVENDA_NFCEIMPNOTAVENDA: TWideStringField;
    zqry_VDVENDA_NFCEFLAG: TWideStringField;
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
    zqry_VDVENDA_NFCECODEMPCM: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALCM: TIntegerField;
    zqry_VDVENDA_NFCECODCLCOMIS: TIntegerField;
    zqry_VDVENDA_NFCECODEMPCB: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALCB: TSmallintField;
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
    zqry_VDVENDA_NFCECODEMPCA: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALCA: TSmallintField;
    zqry_VDVENDA_NFCENUMCONTA: TWideStringField;
    zqry_VDVENDA_NFCEOBSREC: TWideStringField;
    zqry_VDVENDA_NFCEINFCOMPL: TWideStringField;
    zqry_VDVENDA_NFCESITDOC: TWideStringField;
    zqry_VDVENDA_NFCEOBSNFE: TWideStringField;
    zqry_VDVENDA_NFCEDESCIPIVENDA: TWideStringField;
    zqry_VDVENDA_NFCECODEMPOP: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALOP: TSmallintField;
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
    zqry_VDVENDA_NFCECODEMPAT: TIntegerField;
    zqry_VDVENDA_NFCECODFILIALAT: TSmallintField;
    zqry_VDVENDA_NFCEVDCOMERCIAL: TWideStringField;
    zqry_VDVENDA_NFCEVDVENDEXTERNO: TWideStringField;
    zqry_VDVENDA_NFCEVDCOMMERCE: TWideStringField;
    zqry_VDVENDA_NFCEENTREGUE: TWideStringField;
    zqry_VDVENDA_NFCEIDFASTSALE: TIntegerField;
    zqry_VDVENDA_NFCENOMECLI: TWideStringField;
    zqry_FNITRECEBERCODEMP: TIntegerField;
    zqry_FNITRECEBERCODFILIAL: TSmallintField;
    zqry_FNITRECEBERCODREC: TIntegerField;
    zqry_FNITRECEBERNPARCITREC: TIntegerField;
    zqry_FNITRECEBERVLRITREC: TFloatField;
    zqry_FNITRECEBERVLRDESCITREC: TFloatField;
    zqry_FNITRECEBERVLRMULTAITREC: TFloatField;
    zqry_FNITRECEBERVLRJUROSITREC: TFloatField;
    zqry_FNITRECEBERVLRDEVITREC: TFloatField;
    zqry_FNITRECEBERVLRPARCITREC: TFloatField;
    zqry_FNITRECEBERVLRPAGOITREC: TFloatField;
    zqry_FNITRECEBERVLRAPAGITREC: TFloatField;
    zqry_FNITRECEBERVLRCOMIITREC: TFloatField;
    zqry_FNITRECEBERVLRCANCITREC: TFloatField;
    zqry_FNITRECEBERVLRBASECOMIS: TFloatField;
    zqry_FNITRECEBERDESCPONT: TWideStringField;
    zqry_FNITRECEBERDTITREC: TDateField;
    zqry_FNITRECEBERDTCOMPITREC: TDateField;
    zqry_FNITRECEBERDTVENCITREC: TDateField;
    zqry_FNITRECEBERDTPREVITREC: TDateField;
    zqry_FNITRECEBERDTPAGOITREC: TDateField;
    zqry_FNITRECEBERDTLIQITREC: TDateField;
    zqry_FNITRECEBERSTATUSITREC: TWideStringField;
    zqry_FNITRECEBERCODEMPPN: TIntegerField;
    zqry_FNITRECEBERCODFILIALPN: TSmallintField;
    zqry_FNITRECEBERCODPLAN: TWideStringField;
    zqry_FNITRECEBEROBSITREC: TWideStringField;
    zqry_FNITRECEBERCODEMPCA: TIntegerField;
    zqry_FNITRECEBERCODFILIALCA: TSmallintField;
    zqry_FNITRECEBERNUMCONTA: TWideStringField;
    zqry_FNITRECEBERCODEMPBO: TIntegerField;
    zqry_FNITRECEBERCODFILIALBO: TSmallintField;
    zqry_FNITRECEBERCODBANCO: TWideStringField;
    zqry_FNITRECEBERCODEMPTC: TIntegerField;
    zqry_FNITRECEBERCODFILIALTC: TSmallintField;
    zqry_FNITRECEBERCODTIPOCOB: TIntegerField;
    zqry_FNITRECEBERCODEMPCB: TIntegerField;
    zqry_FNITRECEBERCODFILIALCB: TSmallintField;
    zqry_FNITRECEBERCODCARTCOB: TWideStringField;
    zqry_FNITRECEBERDOCLANCAITREC: TWideStringField;
    zqry_FNITRECEBERFLAG: TWideStringField;
    zqry_FNITRECEBERCODEMPCC: TIntegerField;
    zqry_FNITRECEBERCODFILIALCC: TSmallintField;
    zqry_FNITRECEBERANOCC: TSmallintField;
    zqry_FNITRECEBERCODCC: TWideStringField;
    zqry_FNITRECEBERIMPRECIBOITREC: TWideStringField;
    zqry_FNITRECEBERRECIBOITREC: TIntegerField;
    zqry_FNITRECEBERALTUSUITREC: TWideStringField;
    zqry_FNITRECEBERPDVITREC: TWideStringField;
    zqry_FNITRECEBERRECEMCOB: TWideStringField;
    zqry_FNITRECEBERDTINIEMCOB: TDateField;
    zqry_FNITRECEBERDTFIMEMCOB: TDateField;
    zqry_FNITRECEBERSEQNOSSONUMERO: TIntegerField;
    zqry_FNITRECEBERNOSSONUMERO: TWideStringField;
    zqry_FNITRECEBEREMMANUT: TWideStringField;
    zqry_FNITRECEBERCODEMPSN: TIntegerField;
    zqry_FNITRECEBERCODFILIALSN: TSmallintField;
    zqry_FNITRECEBERCODSINAL: TSmallintField;
    zqry_FNITRECEBERMULTIBAIXA: TWideStringField;
    zqry_FNITRECEBERCODEMPCT: TIntegerField;
    zqry_FNITRECEBERCODFILIALCT: TSmallintField;
    zqry_FNITRECEBERCODCONTR: TIntegerField;
    zqry_FNITRECEBERCODITCONTR: TSmallintField;
    zqry_FNITRECEBERDTINS: TDateField;
    zqry_FNITRECEBERHINS: TTimeField;
    zqry_FNITRECEBERIDUSUINS: TWideStringField;
    zqry_FNITRECEBERDTALT: TDateField;
    zqry_FNITRECEBERHALT: TTimeField;
    zqry_FNITRECEBERIDUSUALT: TWideStringField;
    zqry_FNITRECEBERCODEMPEM: TIntegerField;
    zqry_FNITRECEBERCODFILIALEM: TSmallintField;
    zqry_FNITRECEBERMATEMPR: TIntegerField;
    zqry_FNITRECEBERDTPROCES: TDateField;
    zqry_FNITRECEBEROCOR_RET: TWideStringField;
    zqry_FNRECEBERCODEMP: TIntegerField;
    zqry_FNRECEBERCODFILIAL: TSmallintField;
    zqry_FNRECEBERCODREC: TIntegerField;
    zqry_FNRECEBERCODEMPBO: TIntegerField;
    zqry_FNRECEBERCODFILIALBO: TSmallintField;
    zqry_FNRECEBERCODBANCO: TWideStringField;
    zqry_FNRECEBERCODEMPPG: TIntegerField;
    zqry_FNRECEBERCODFILIALPG: TSmallintField;
    zqry_FNRECEBERCODPLANOPAG: TIntegerField;
    zqry_FNRECEBERCODEMPCL: TIntegerField;
    zqry_FNRECEBERCODFILIALCL: TSmallintField;
    zqry_FNRECEBERCODCLI: TIntegerField;
    zqry_FNRECEBERCODEMPVD: TIntegerField;
    zqry_FNRECEBERCODFILIALVD: TSmallintField;
    zqry_FNRECEBERCODVEND: TIntegerField;
    zqry_FNRECEBERCODEMPVA: TIntegerField;
    zqry_FNRECEBERCODFILIALVA: TSmallintField;
    zqry_FNRECEBERTIPOVENDA: TWideStringField;
    zqry_FNRECEBERCODVENDA: TIntegerField;
    zqry_FNRECEBERCODEMPTC: TIntegerField;
    zqry_FNRECEBERCODFILIALTC: TSmallintField;
    zqry_FNRECEBERCODTIPOCOB: TIntegerField;
    zqry_FNRECEBERCODEMPCB: TIntegerField;
    zqry_FNRECEBERCODFILIALCB: TSmallintField;
    zqry_FNRECEBERCODCARTCOB: TWideStringField;
    zqry_FNRECEBERVLRREC: TFloatField;
    zqry_FNRECEBERVLRDESCREC: TFloatField;
    zqry_FNRECEBERVLRMULTAREC: TFloatField;
    zqry_FNRECEBERVLRJUROSREC: TFloatField;
    zqry_FNRECEBERVLRDEVREC: TFloatField;
    zqry_FNRECEBERVLRPARCREC: TFloatField;
    zqry_FNRECEBERVLRPAGOREC: TFloatField;
    zqry_FNRECEBERVLRAPAGREC: TFloatField;
    zqry_FNRECEBERVLRBASECOMIS: TFloatField;
    zqry_FNRECEBERVLRRETENSAOISS: TFloatField;
    zqry_FNRECEBERDTCOMPREC: TDateField;
    zqry_FNRECEBERDATAREC: TDateField;
    zqry_FNRECEBERSTATUSREC: TWideStringField;
    zqry_FNRECEBERVLRCOMIREC: TFloatField;
    zqry_FNRECEBERDTQUITREC: TDateField;
    zqry_FNRECEBERDOCREC: TIntegerField;
    zqry_FNRECEBERNROPARCREC: TIntegerField;
    zqry_FNRECEBEROBSREC: TWideStringField;
    zqry_FNRECEBERFLAG: TWideStringField;
    zqry_FNRECEBERALTUSUREC: TWideStringField;
    zqry_FNRECEBERCODEMPCA: TIntegerField;
    zqry_FNRECEBERCODFILIALCA: TSmallintField;
    zqry_FNRECEBERNUMCONTA: TWideStringField;
    zqry_FNRECEBERCODEMPPN: TIntegerField;
    zqry_FNRECEBERCODFILIALPN: TSmallintField;
    zqry_FNRECEBERCODPLAN: TWideStringField;
    zqry_FNRECEBERCODEMPCC: TIntegerField;
    zqry_FNRECEBERCODFILIALCC: TSmallintField;
    zqry_FNRECEBERANOCC: TSmallintField;
    zqry_FNRECEBERCODCC: TWideStringField;
    zqry_FNRECEBERCODEMPRR: TIntegerField;
    zqry_FNRECEBERCODFILIALRR: TSmallintField;
    zqry_FNRECEBERCODRENEGREC: TIntegerField;
    zqry_FNRECEBEREMMANUT: TWideStringField;
    zqry_FNRECEBERDTINS: TDateField;
    zqry_FNRECEBERHINS: TTimeField;
    zqry_FNRECEBERIDUSUINS: TWideStringField;
    zqry_FNRECEBERDTALT: TDateField;
    zqry_FNRECEBERHALT: TTimeField;
    zqry_FNRECEBERIDUSUALT: TWideStringField;
    zqry_FNRECEBERNUMCONTROLE: TIntegerField;
    zqry_FNRECEBERNUMAUTORIZACAO: TIntegerField;
    zqry_FNRECEBERBANDEIRA: TWideStringField;
    zqry_FECHAVENDACODEMP: TIntegerField;
    zqry_FECHAVENDACODFILIAL: TSmallintField;
    zqry_FECHAVENDATIPOVENDA: TWideStringField;
    zqry_FECHAVENDACODVENDA: TIntegerField;
    zqry_FECHAVENDASUBTIPOVENDA: TWideStringField;
    zqry_FECHAVENDACODEMPVD: TIntegerField;
    zqry_FECHAVENDACODFILIALVD: TSmallintField;
    zqry_FECHAVENDACODVEND: TIntegerField;
    zqry_FECHAVENDACODEMPCL: TIntegerField;
    zqry_FECHAVENDACODFILIALCL: TSmallintField;
    zqry_FECHAVENDACODCLI: TIntegerField;
    zqry_FECHAVENDACODEMPPG: TIntegerField;
    zqry_FECHAVENDACODFILIALPG: TSmallintField;
    zqry_FECHAVENDACODPLANOPAG: TIntegerField;
    zqry_FECHAVENDACODEMPSE: TIntegerField;
    zqry_FECHAVENDACODFILIALSE: TSmallintField;
    zqry_FECHAVENDASERIE: TWideStringField;
    zqry_FECHAVENDACODEMPTM: TIntegerField;
    zqry_FECHAVENDACODFILIALTM: TSmallintField;
    zqry_FECHAVENDACODTIPOMOV: TIntegerField;
    zqry_FECHAVENDACODEMPCX: TIntegerField;
    zqry_FECHAVENDACODFILIALCX: TSmallintField;
    zqry_FECHAVENDACODCAIXA: TIntegerField;
    zqry_FECHAVENDADOCVENDA: TIntegerField;
    zqry_FECHAVENDADTSAIDAVENDA: TDateField;
    zqry_FECHAVENDADTEMITVENDA: TDateField;
    zqry_FECHAVENDADTCOMPVENDA: TDateField;
    zqry_FECHAVENDACODEMPRM: TIntegerField;
    zqry_FECHAVENDACODFILIALRM: TSmallintField;
    zqry_FECHAVENDATICKET: TIntegerField;
    zqry_FECHAVENDAVLRPRODVENDA: TFloatField;
    zqry_FECHAVENDAPERCDESCVENDA: TFloatField;
    zqry_FECHAVENDAVLRDESCVENDA: TFloatField;
    zqry_FECHAVENDAVLRDESCITVENDA: TFloatField;
    zqry_FECHAVENDAVLRVENDA: TFloatField;
    zqry_FECHAVENDAVLRBASEICMSVENDA: TFloatField;
    zqry_FECHAVENDAVLRICMSVENDA: TFloatField;
    zqry_FECHAVENDACALCICMSVENDA: TWideStringField;
    zqry_FECHAVENDAIMPICMSVENDA: TWideStringField;
    zqry_FECHAVENDAVLRISENTASVENDA: TFloatField;
    zqry_FECHAVENDAVLROUTRASVENDA: TFloatField;
    zqry_FECHAVENDAVLRBASEIPIVENDA: TFloatField;
    zqry_FECHAVENDAVLRLIQVENDA: TFloatField;
    zqry_FECHAVENDAPERCCOMISVENDA: TFloatField;
    zqry_FECHAVENDAVLRCOMISVENDA: TFloatField;
    zqry_FECHAVENDASTATUSVENDA: TWideStringField;
    zqry_FECHAVENDAVLRFRETEVENDA: TFloatField;
    zqry_FECHAVENDAVLRADICVENDA: TFloatField;
    zqry_FECHAVENDAVLRIPIVENDA: TFloatField;
    zqry_FECHAVENDACALCIPIVENDA: TWideStringField;
    zqry_FECHAVENDAIMPIPIVENDA: TWideStringField;
    zqry_FECHAVENDAOBSVENDA: TWideStringField;
    zqry_FECHAVENDACODEMPBO: TIntegerField;
    zqry_FECHAVENDACODFILIALBO: TSmallintField;
    zqry_FECHAVENDACODBANCO: TWideStringField;
    zqry_FECHAVENDACODEMPTC: TIntegerField;
    zqry_FECHAVENDACODFILIALTC: TSmallintField;
    zqry_FECHAVENDACODTIPOCOB: TIntegerField;
    zqry_FECHAVENDAVLRBASEISSVENDA: TFloatField;
    zqry_FECHAVENDAVLRISSVENDA: TFloatField;
    zqry_FECHAVENDACALCISSVENDA: TWideStringField;
    zqry_FECHAVENDAIMPIISSVENDA: TWideStringField;
    zqry_FECHAVENDAIMPNOTAVENDA: TWideStringField;
    zqry_FECHAVENDAFLAG: TWideStringField;
    zqry_FECHAVENDACODCLASCOMIS: TWideStringField;
    zqry_FECHAVENDAVLRPISVENDA: TFloatField;
    zqry_FECHAVENDACALCPISVENDA: TWideStringField;
    zqry_FECHAVENDAIMPPISVENDA: TWideStringField;
    zqry_FECHAVENDAVLRCOFINSVENDA: TFloatField;
    zqry_FECHAVENDACALCCOFINSVENDA: TWideStringField;
    zqry_FECHAVENDAIMPCOFINSVENDA: TWideStringField;
    zqry_FECHAVENDAVLRIRVENDA: TFloatField;
    zqry_FECHAVENDACALCIRVENDA: TWideStringField;
    zqry_FECHAVENDAIMPIRVENDA: TWideStringField;
    zqry_FECHAVENDAVLRCSOCIALVENDA: TFloatField;
    zqry_FECHAVENDACALCCSOCIALVENDA: TWideStringField;
    zqry_FECHAVENDAIMPCSOCIALVENDA: TWideStringField;
    zqry_FECHAVENDAPERCMCOMISVENDA: TFloatField;
    zqry_FECHAVENDACODEMPCM: TIntegerField;
    zqry_FECHAVENDACODFILIALCM: TIntegerField;
    zqry_FECHAVENDACODCLCOMIS: TIntegerField;
    zqry_FECHAVENDACODEMPCB: TIntegerField;
    zqry_FECHAVENDACODFILIALCB: TSmallintField;
    zqry_FECHAVENDACODCARTCOB: TWideStringField;
    zqry_FECHAVENDAPEDCLIVENDA: TWideStringField;
    zqry_FECHAVENDAVLRICMSSTVENDA: TFloatField;
    zqry_FECHAVENDAVLRBASEICMSSTVENDA: TFloatField;
    zqry_FECHAVENDAEMMANUT: TWideStringField;
    zqry_FECHAVENDABLOQVENDA: TWideStringField;
    zqry_FECHAVENDAVLRICMSSIMPLES: TFloatField;
    zqry_FECHAVENDAPERCICMSSIMPLES: TFloatField;
    zqry_FECHAVENDAVLRBASEPISVENDA: TFloatField;
    zqry_FECHAVENDAVLRBASECOFINSVENDA: TFloatField;
    zqry_FECHAVENDAVLRBASECOMIS: TFloatField;
    zqry_FECHAVENDACHAVENFEVENDA: TWideStringField;
    zqry_FECHAVENDACODEMPCA: TIntegerField;
    zqry_FECHAVENDACODFILIALCA: TSmallintField;
    zqry_FECHAVENDANUMCONTA: TWideStringField;
    zqry_FECHAVENDAOBSREC: TWideStringField;
    zqry_FECHAVENDAINFCOMPL: TWideStringField;
    zqry_FECHAVENDASITDOC: TWideStringField;
    zqry_FECHAVENDAOBSNFE: TWideStringField;
    zqry_FECHAVENDADESCIPIVENDA: TWideStringField;
    zqry_FECHAVENDACODEMPOP: TIntegerField;
    zqry_FECHAVENDACODFILIALOP: TSmallintField;
    zqry_FECHAVENDASEQOP: TSmallintField;
    zqry_FECHAVENDACODOP: TIntegerField;
    zqry_FECHAVENDALOCALSERV: TWideStringField;
    zqry_FECHAVENDANROATUALIZADO: TWideStringField;
    zqry_FECHAVENDACNF: TLargeintField;
    zqry_FECHAVENDASITCOMPLVENDA: TWideStringField;
    zqry_FECHAVENDAMOTIVOCANCVENDA: TWideStringField;
    zqry_FECHAVENDADTINS: TDateField;
    zqry_FECHAVENDAHINS: TTimeField;
    zqry_FECHAVENDAIDUSUINS: TWideStringField;
    zqry_FECHAVENDADTALT: TDateField;
    zqry_FECHAVENDAHALT: TTimeField;
    zqry_FECHAVENDAIDUSUALT: TWideStringField;
    zqry_FECHAVENDAVLRSIMPLES: TFloatField;
    zqry_FECHAVENDATIPOENVIO: TWideStringField;
    zqry_FECHAVENDACODMOT: TIntegerField;
    zqry_FECHAVENDACODVEIC: TIntegerField;
    zqry_FECHAVENDAOBSENTREGA: TWideStringField;
    zqry_FECHAVENDANOMEMOT: TWideStringField;
    zqry_FECHAVENDAPLACA: TWideStringField;
    zqry_FECHAVENDAREQUERMONTAGEM: TWideStringField;
    zqry_FECHAVENDAPONTOREFERENCIA: TWideStringField;
    zqry_FECHAVENDACODATEND: TIntegerField;
    zqry_FECHAVENDACODEMPAT: TIntegerField;
    zqry_FECHAVENDACODFILIALAT: TSmallintField;
    zqry_FECHAVENDAVDCOMERCIAL: TWideStringField;
    zqry_FECHAVENDAVDVENDEXTERNO: TWideStringField;
    zqry_FECHAVENDAVDCOMMERCE: TWideStringField;
    zqry_FECHAVENDAENTREGUE: TWideStringField;
    zqry_FECHAVENDAIDFASTSALE: TIntegerField;
    zqry_FECHAVENDANOMECLI: TWideStringField;
    zqry_TIPOCOBCODEMP: TIntegerField;
    zqry_TIPOCOBCODFILIAL: TSmallintField;
    zqry_TIPOCOBCODTIPOCOB: TIntegerField;
    zqry_TIPOCOBDESCTIPOCOB: TWideStringField;
    zqry_TIPOCOBTIPOFEBRABAN: TWideStringField;
    zqry_TIPOCOBTIPOSPED: TWideStringField;
    zqry_TIPOCOBDUPLCOB: TWideStringField;
    zqry_TIPOCOBOBRIGCARTCOB: TWideStringField;
    zqry_TIPOCOBCODEMPCT: TIntegerField;
    zqry_TIPOCOBCODFILIALCT: TSmallintField;
    zqry_TIPOCOBNUMCONTA: TWideStringField;
    zqry_TIPOCOBSEQTALAO: TSmallintField;
    zqry_TIPOCOBNRODIASCOMP: TSmallintField;
    zqry_TIPOCOBDTINS: TDateField;
    zqry_TIPOCOBHINS: TTimeField;
    zqry_TIPOCOBIDUSUINS: TWideStringField;
    zqry_TIPOCOBDTALT: TDateField;
    zqry_TIPOCOBHALT: TTimeField;
    zqry_TIPOCOBIDUSUALT: TWideStringField;
    zqry_TIPOCOBTIPONFE: TIntegerField;
    cds_MULTIPAGTOSEQMULTIPAGTO: TIntegerField;
    cds_MULTIPAGTOVALOR: TCurrencyField;
    cds_MULTIPAGTOTROCO: TCurrencyField;
    cds_MULTIPAGTOCODTIPOCOB: TIntegerField;
    cds_MULTIPAGTOCODEMP: TIntegerField;
    cds_MULTIPAGTOCODFILIAL: TIntegerField;
    cds_MULTIPAGTOCODVENDA: TIntegerField;
    zqry_FNRECEBERCODTERMINAL: TIntegerField;
    zqry_VDITVENDA_NFCECODEMPNT: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALNT: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPPD: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALPD: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPLE: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALLE: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPAX: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALAX: TSmallintField;
    zqry_VDITVENDA_NFCEQTDITVENDA: TFloatField;
    zqry_VDITVENDA_NFCECODEMPTT: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALTT: TIntegerField;
    zqry_VDITVENDA_NFCECODEMPME: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALME: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPLG: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALLG: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPPE: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALPE: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPCV: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALCV: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPIF: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALIF: TIntegerField;
    zqry_VDITVENDA_NFCECODEMPCP: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALCP: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPVR: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALVR: TSmallintField;
    zqry_VDITVENDA_NFCECODEMPNS: TIntegerField;
    zqry_VDITVENDA_NFCECODFILIALNS: TSmallintField;
    zqry_VDITVENDA_NFCEQTDITVENDACANC: TFloatField;
    zqry_VDITVENDA_NFCEPRECOITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEPERCDESCITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRDESCITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEPERCICMSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEICMSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRICMSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEPERCIPIITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEIPIITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRIPIITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRLIQITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEPERCCOMISITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRCOMISITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRADICITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEPERCISSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRISSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRFRETEITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRPRODITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRISENTASITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLROUTRASITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEISSITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEICMSBRUTITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEICMSSTITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRICMSSTITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASECOMISITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEMARGEMVLAGRITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRBASEICMSSTRETITVENDA: TFloatField;
    zqry_VDITVENDA_NFCEVLRICMSSTRETITVENDA: TFloatField;
    zqry_VDITVENDA_NFCESTRDESCITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCEQTDDEVITVENDA: TFloatField;
    zqry_VDITVENDA_NFCECANCITVENDA: TWideStringField;
    zqry_VDITVENDA_NFCECALCSTCM: TWideStringField;
    zqry_EQPRODUTOPRECOBASEPROD: TFloatField;
    zqry_SGMUNICIPIO: TZQuery;
    zqry_SGMUNICIPIOCODMUNIC: TWideStringField;
    zqry_SGMUNICIPIOSIGLAUF: TWideStringField;
    zqry_SGMUNICIPIOCODPAIS: TSmallintField;
    zqry_SGMUNICIPIONOMEMUNIC: TWideStringField;
    zqry_SGMUNICIPIODDDMUNIC: TWideStringField;
    zqry_SGMUNICIPIODTINS: TDateField;
    zqry_SGMUNICIPIOHINS: TTimeField;
    zqry_SGMUNICIPIOIDUSUINS: TWideStringField;
    zqry_SGMUNICIPIODTALT: TDateField;
    zqry_SGMUNICIPIOHALT: TTimeField;
    zqry_SGMUNICIPIOIDUSUALT: TWideStringField;
    zqry_SGMUNICIPIOCODUF: TWideStringField;
    zdts_SGMUNICIPIO: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cb_FORMAPAGTOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VALORPAGOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VALORDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VALORACRESCIMOKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CONFIRMARClick(Sender: TObject);
    procedure alimentarnfce(NumDFe: String);
  private
    { Private declarations }
  public
    { Public declarations }
    //double
    pagoparcial, vlrtotalpagar, vlrdesconto,vlracrescimo,
    vlrprodutos, pago, falta, apagar : double;
    // Currency
    testavalor, valorpago, valortotal, valortroco : Currency;
    // Integer
    itemmultipagto, codvenda, codtipocob, codcli,ultmov, teminternet, pedvenda, nfceemit:integer;
    // String;
    cpfcli,cnpjcli,numdfe, retornacstat: string;
  end;

var
  frm_FECHACUPOM: Tfrm_FECHACUPOM;

implementation

{$R *.dfm}

uses u_dados,u_checkout, u_principal, u_verificainternet, u_funcoes,
     u_dlg_abrecaixa, strutils, math, TypInfo, DateUtils,
     synacode, blcksock, FileCtrl, IniFiles, Printers, pcnAuxiliar, pcnNFe,
     pcnConversao, pcnConversaoNFe, pcnNFeRTXT, pcnRetConsReciDFe, ACBrDFeConfiguracoes,
     ACBrDFeSSL, ACBrDFeOpenSSL, ACBrDFeUtil, ACBrNFeNotasFiscais, ACBrNFeConfiguracoes,
  Frm_ACBrNFe;


procedure Tfrm_FECHACUPOM.AlimentarNFCe(NumDFe: String);
var
  cpf, cepempresa, prod_codbar, prod_descri, prod_unidad:string;
  contador,munic_emit:integer;
  desconto:double;
begin

  cpf:=emptystr;
  cpfcli:=emptystr;
  cnpjcli:=emptystr;
  //  CONFIGURA ACBR
  frmACBrNFe.ACBrNFe1.NotasFiscais.Clear;
  frmACBrNFe.ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  //frmACBrNFe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;
  //frmACBrNFe.ACBrNFe1.Configuracoes.Geral.VersaoQRCode:=veqr200;
  frmACBrNFe.ACBrNFeDANFCeFortes1.LarguraBobina:=dm_dados.largura;
  if dm_dados.logomarca<>'' then frmACBrNFe.ACBrNFeDANFCeFortes1.Logo:=dm_dados.logomarca;
  // RETORNA ULTIMO NUMERO DE NFCE
  dm_dados.zqry_MAX_NFCE.Close;
  dm_dados.zqry_MAX_NFCE.SQL.Clear;
  dm_dados.zqry_MAX_NFCE.SQL.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
  dm_dados.zqry_MAX_NFCE.ParamByName('p1').AsString:='NC';
  dm_dados.zqry_MAX_NFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_MAX_NFCE.Open;
  if dm_dados.zqry_MAX_NFCE.IsEmpty then
  begin
    showmessage('Dados de Sequência da NFCe não localizados.'#13'Solicite Suporte Técnico'#13'Erro: SGTAB=NC | Tab: SEQUENCIA');
  end;
  numdfe:=dm_dados.zqry_MAX_NFCEULTNFCE.Asstring;
  nfceemit:=strtoint(numdfe);
  //* fazer consulta empresa *//
  dm_dados.zqry_SGFILIAL.Params.clear;
  dm_dados.zqry_SGFILIAL.Close;
  dm_dados.zqry_SGFILIAL.SQL.Clear;
  dm_dados.zqry_SGFILIAL.sql.Add('select * from sgfilial where codemp=:empcod');
  dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_SGFILIAL.Open;
  //* fazer consulta *//
  zqry_VDVENDA_NFCE.Params.Clear;
  zqry_VDVENDA_NFCE.Close;
  zqry_VDVENDA_NFCE.sql.clear;
  zqry_VDVENDA_NFCE.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_VDVENDA_NFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_VDVENDA_NFCE.ParamByName('vendacod').AsInteger:=codvenda;//dm_dados.zqry_VDVENDACODCLI.AsInteger;
  zqry_VDVENDA_NFCE.Open;
  // Consulta Cliente
    // Retorna Cliente
  dm_dados.zqry_VDCLIENTE.Close;
  dm_Dados.zqry_vdcliente.sql.clear;
  dm_Dados.zqry_vdcliente.SQL.Add('select * from vdcliente where codcli=:clicod and codemp=:empcod');
  dm_Dados.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_VDCLIENTE.ParamByName('clicod').AsInteger:=1;//dm_dados.zqry_VDVENDACODCLI.AsInteger;
  dm_Dados.zqry_VDCLIENTE.Open;
  cpfcli:=dm_Dados.zqry_vdclientecpfcli.asstring;
  cnpjcli:=dm_dados.zqry_VDCLIENTECNPJCLI.AsString;

  teminternet:=u_verificainternet.Ping(10000,'www.google.com.br',80);
  with frmACBrNFe.ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    Ide.natOp     := 'VENDA';
    Ide.indPag    := ipVista;
    Ide.modelo    := 65;
    Ide.serie     := 1;
    Ide.nNF       := strtoint(NumDFe);
    Ide.cNF       := GerarCodigoDFe(Ide.nNF);
    Ide.dEmi      := now;
    Ide.dSaiEnt   := now;
    Ide.hSaiEnt   := now;
    Ide.tpNF      := tnSaida;
    if teminternet=0  then Ide.tpEmis     := teNormal;
    if teminternet<>0 then ide.tpemis     := teContingencia;
    //Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao);;
    if dm_dados.ambiente='1' then Ide.tpAmb     := taHomologacao;
    if dm_dados.ambiente='0' then ide.tpAmb     := taProducao;
    zqry_SGMUNICIPIO.close;
    zqry_SGMUNICIPIO.SQL.Clear;
    zqry_SGMUNICIPIO.SQL.Add('select * from sgmunicipio where siglauf=:uf and codmunic=:codigo');
    zqry_sgmunicipio.PARAMS.ParamByName('codigo').asString:=DM_DADOS.zqry_SGFILIALCODMUNIC.ASSTRING;
    zqry_sgmunicipio.PARAMS.ParamByName('uf').asString:=DM_DADOS.zqry_SGFILIALSIGLAUF.AsString;
    zqry_sgmunicipio.open;
    munic_emit:=strtoint(zqry_sgmunicipiocoduf.asstring+zqry_sgmunicipiocodmunic.asstring);

    Ide.cUF       := UFtoCUF(dm_Dados.zqry_SGFILIALSIGLAUF.asstring);
    Ide.cMunFG    := munic_emit;
    Ide.finNFe    := fnNormal;
    Ide.tpImp     := tiNFCe;
    Ide.indFinal  := cfConsumidorFinal;
    Ide.indPres   := pcPresencial;

    if teminternet<>0 then
    begin
     Ide.dhCont := date;
     Ide.xJust  := 'Sistema de comunicação com a Receita em falha';

    end;

    Emit.CNPJCPF           := dm_dados.zqry_SGFILIALCNPJFILIAL.asstring;;
    Emit.IE                := dm_dados.zqry_SGFILIALINSCFILIAL.asstring;
    Emit.xNome             := dm_dados.zqry_SGFILIALRAZFILIAL.asstring;
    Emit.xFant             := dm_dados.zqry_SGFILIALNOMEFILIAL.asstring;

    Emit.EnderEmit.fone    := dm_dados.zqry_SGFILIALDDDFILIAL.asstring+dm_dados.zqry_SGFILIALFONEFILIAL.asstring;
    cepempresa             := tirapontos(dm_dados.zqry_SGFILIALCEPFILIAL.asstring);
    Emit.EnderEmit.CEP     := strtoint(cepempresa);
    Emit.EnderEmit.xLgr    := dm_dados.zqry_SGFILIALENDFILIAL.asstring;
    Emit.EnderEmit.nro     := dm_dados.zqry_SGFILIALNUMFILIAL.asstring;
    Emit.EnderEmit.xCpl    := dm_dados.zqry_SGFILIALCOMPLFILIAL.asstring;
    Emit.EnderEmit.xBairro := dm_dados.zqry_SGFILIALBAIRFILIAL.asstring;
    Emit.EnderEmit.cMun    := 2611606;//munic_emit;
    Emit.EnderEmit.xMun    := dm_dados.zqry_SGFILIALCIDFILIAL.AsString;
    //showmessage(dm_dados.zqry_SGFILIALCIDFILIAL.AsString);
    Emit.EnderEmit.UF      := dm_dados.zqry_SGFILIALSIGLAUF.asstring;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
    infRespTec.CNPJ:= '06976896000125';
    infRespTec.xContato:='Israel de Oliveira Pinheiro Lopes';
    infRespTec.email:= 'contato@nonoelemento.com.br';
    infRespTec.fone:='2731800309';
    infResptec.idcsrt:=0;
    infRespTec.hashCSRT:='';

    if dm_dados.zqry_SGFILIALSIMPLESFILIAL.AsString='S' then Emit.CRT := crtSimplesNacional else  Emit.CRT :=crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      If (cpfcli='') and (cnpjcli='') and (zqry_VDVENDA_NFCEVLRVENDA.AsFloat>=500) then
      begin
        if not(InputQuery('Alles - NFCe: Informar CNPJ/CPF', 'Informe o CNPJ/CPF do Comprador', cpf)) then
        exit;
        Dest.CNPJCPF := cpf;
      end
      else
      begin
        if cpfcli<>'' then Dest.CNPJCPF := cpfcli else Dest.CNPJCPF := cnpjcli;
      end;

//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
      Dest.ISUF              := '';
      Dest.xNome             := zqry_VDVENDA_NFCE_RAZCLI.AsString;
      //Dest.CNPJCPF           := '05481336000137';
//      Dest.IE                := '687138770110'; //NFC-e não aceita IE
    Dest.ISUF              := '';
    if zqry_VDVENDA_NFCE_FONECLI.AsString=''  then
        Dest.EnderDest.Fone := '' else
        Dest.EnderDest.Fone := zqry_VDVENDA_NFCE_DDDCLI.value+zqry_VDVENDA_NFCE_FONECLI.VALUE;
    if zqry_VDVENDA_NFCE_CEPCLI.IsNull        then
        Dest.EnderDest.CEP  :=0   else
        Dest.EnderDest.CEP  :=zqry_VDVENDA_NFCE_CEPCLI.AsInteger;
    Dest.EnderDest.xLgr    := zqry_VDVENDA_NFCE_ENDCLI.AsString;
    Dest.EnderDest.nro     := zqry_VDVENDA_NFCE_NUMCLI.AsString;;
    Dest.EnderDest.xCpl    := zqry_VDVENDA_NFCE_COMPLCLI.AsString;
    Dest.EnderDest.xBairro := zqry_VDVENDA_NFCE_BAIRCLI.AsString;
    Dest.EnderDest.cMun    := zqry_VDVENDA_NFCE_CODMUNIC.AsInteger;
    Dest.EnderDest.xMun    := zqry_VDVENDA_NFCE_CIDCLI.AsString;
    //SHOWMESSAGE(zqry_vdvenda_nfce_ufcli.AsString);
    Dest.EnderDest.UF      := zqry_VDVENDA_NFCE_UFCLI.AsString;;
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
    Retirada.CNPJCPF := '';
    Retirada.xLgr    := '';
    Retirada.nro     := '';
    Retirada.xCpl    := '';
    Retirada.xBairro := '';
    Retirada.cMun    := 0;
    Retirada.xMun    := '';
    Retirada.UF      := '';

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
    Entrega.CNPJCPF := '';
    Entrega.xLgr    := '';
    Entrega.nro     := '';
    Entrega.xCpl    := '';
    Entrega.xBairro := '';
    Entrega.cMun    := 0;
    Entrega.xMun    := '';
    Entrega.UF      := '';

    zqry_VDITVENDA_NFCE.Close;
    zqry_VDITVENDA_NFCE.SQL.clear;
    zqry_VDITVENDA_NFCE.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_VDITVENDA_NFCE.ParamByName('vendacod').AsInteger:=codvenda;//strtoint(frm_cupom.DBText1.Caption);
    zqry_VDITVENDA_NFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    zqry_VDITVENDA_NFCE.Open;
    if zqry_VDITVENDA_NFCE.IsEmpty then
    begin
      showmessage('Fechamento do Cupom não Localizado');
    end
    else
    begin
      zqry_VDITVENDA_NFCE.First;
    end;
    contador:=1;
    //totitens:=zqry_vditvenda_nfce.recordcount;
    desconto:=0;//strtocurr(edt_vlrdesc.text)/zqry_vditvenda_nfce.recordcount;

    while not zqry_VDITVENDA_NFCE.eof do
    begin
      //Adicionando Produtos
        with Det.New do
        begin
          Prod.nItem    := contador; // Número sequencial, para cada item deve ser incrementado
          Prod.cProd    := zqry_VDITVENDA_NFCECODPROD.AsString;
          //Consulta Produtos
          zqry_EQPRODUTO.Params.Clear;
          zqry_EQPRODUTO.close;
          zqry_EQPRODUTO.SQL.Clear;
          zqry_EQPRODUTO.SQL.Add('select codemp,codprod,descprod,codfisc,codbarprod,codunid,precobaseprod from eqproduto where codprod=:prodcod and codemp=:empcod');
          zqry_EQPRODUTO.ParamByName('prodcod').AsInteger:=zqry_VDITVENDA_NFCECODPROD.AsInteger;
          zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=dm_dados.codemp;
          zqry_EQPRODUTO.Open;
          PROD_CODBAR   := zqry_EQPRODUTOCODBARPROD.AsString;
          PROD_DESCRI   := zqry_EQPRODUTODESCPROD.AsString;
          PROD_UNIDAD   := zqry_EQPRODUTOCODUNID.AsString;
          Prod.cEAN     := PROD_CODBAR;
          //showmessage(prod_descri);
          Prod.xProd    := PROD_DESCRI;
          Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
          Prod.EXTIPI   := '';
          Prod.CFOP     := zqry_VDITVENDA_NFCECODNAT.ASSTRING;
          Prod.uCom     := prod_UNIDAD;
          Prod.qCom     := zqry_VDITVENDA_NFCEQTDITVENDA.asfloat;
          Prod.vUnCom   := zqry_VDITVENDA_NFCEPRECOITVENDA.AsCurrency;
          Prod.vProd    := zqry_VDITVENDA_NFCEVLRPRODITVENDA.AsCurrency;

          Prod.cEANTrib  := PROD_CODBAR;
          Prod.uTrib     := prod_UNIDAD;;
          Prod.qTrib     := zqry_VDITVENDA_NFCEQTDITVENDA.asfloat;
          Prod.vUnTrib   := zqry_VDITVENDA_NFCEPRECOITVENDA.AsCurrency;

          Prod.vOutro    := 0;
          Prod.vFrete    := 0;
          Prod.vSeg      := 0;
          Prod.vDesc     := SimpleRoundto(desconto,-3);

          Prod.CEST := '1111111';

          //         infAdProd      := 'Informação Adicional do Produto';

        with Imposto do
        begin
          // lei da transparencia nos impostos
        vTotTrib := 0;

        with ICMS do
        begin
          //CST          := cst00;
          CSOSN        := csosn102;
          ICMS.orig    := oeNacional;
          ICMS.modBC   := dbiValorOperacao;
          ICMS.vBC     := 0;//100;
          ICMS.pICMS   := 0;//18;
          ICMS.vICMS   := 0;//18;
          ICMS.modBCST := dbisPrecoTabelado;//dbisMargemValorAgregado;
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
      end;
      contador:=contador+1;
      zqry_VDITVENDA_nfce.Next;
    end;

    (*
    //Adicionando Serviços
    with Det.New do
    begin
      Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
      Prod.cProd    := '123457';
      Prod.cEAN     := '';
      Prod.xProd    := 'Descrição do Serviço';
      Prod.NCM      := '99';
      Prod.EXTIPI   := '';
      Prod.CFOP     := '5933';
      Prod.uCom     := 'UN';
      Prod.qCom     := 1;
      Prod.vUnCom   := 100;
      Prod.vProd    := 100;

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
        cListServ := '14.02'; // Preencha este campo usando a tabela disponível
                              // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      end;
    end;
    *)
    end;

    Total.ICMSTot.vBC     := 0;//100;
    Total.ICMSTot.vICMS   := 0;//18;
    Total.ICMSTot.vBCST   := 0;
    Total.ICMSTot.vST     := 0;
    Total.ICMSTot.vProd   := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;
    Total.ICMSTot.vFrete  := 0;
    Total.ICMSTot.vSeg    := 0;
    Total.ICMSTot.vDesc   := strtoCurr(edt_valordesconto.Text);
    Total.ICMSTot.vII     := 0;
    Total.ICMSTot.vIPI    := 0;
    Total.ICMSTot.vPIS    := 0;
    Total.ICMSTot.vCOFINS := 0;
    Total.ICMSTot.vOutro  := StrtoCurr(edt_VALORACRESCIMO.text);;
    Total.ICMSTot.vNF     := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;

    // partilha do icms e fundo de probreza
    Total.ICMSTot.vFCPUFDest   := 0.00;
    Total.ICMSTot.vICMSUFDest  := 0.00;
    Total.ICMSTot.vICMSUFRemet := 0.00;

    Total.ISSQNtot.vServ   := 0;
    Total.ISSQNTot.vBC     := 0;
    Total.ISSQNTot.vISS    := 0;
    Total.ISSQNTot.vPIS    := 0;
    Total.ISSQNTot.vCOFINS := 0;

    Total.retTrib.vRetPIS    := 0;
    Total.retTrib.vRetCOFINS := 0;
    Total.retTrib.vRetCSLL   := 0;
    Total.retTrib.vBCIRRF    := 0;
    Total.retTrib.vIRRF      := 0;
    Total.retTrib.vBCRetPrev := 0;
    Total.retTrib.vRetPrev   := 0;

    pag.vTroco:=valortroco;

    Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

    {Cobr.Fat.nFat  := 'Numero da Fatura';
    Cobr.Fat.vOrig := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;
    Cobr.Fat.vDesc := strtocurr(edt_VALORDESCONTO.Text);
    Cobr.Fat.vLiq  := zqry_VDVENDA_NFCEVLRVENDA.AsFloat;

    {with Cobr.Dup.New do
    begin
      nDup  := '1234';
      dVenc := now+10;
      vDup  := 50;
    end;

    with Cobr.Dup.New do
    begin
      nDup  := '1235';
      dVenc := now+10;
      vDup  := 50;
    end;}

    with pag.New do
    begin
      tPag := fpDinheiro;
      vPag := valorpago;
    end;

    InfAdic.infCpl     :=  'O Vlr. Aprox. Tributos Lei 12.741/12 de R$ '+(formatfloat('##0.00',((zqry_VDVENDA_NFCEVLRVENDA.asfloat*7)/100)));
    InfAdic.infAdFisco :=  '';

    with InfAdic.obsCont.New do
    begin
      xCampo := 'Pedido N.:';
      xTexto := inttostr(codvenda);
    end;

    with InfAdic.obsFisco.New do
    begin
      xCampo := 'ObsFisco';
      xTexto := 'Texto';
    end;
  end;

end;


procedure Tfrm_FECHACUPOM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_FECHACUPOM.btn_CONFIRMARClick(Sender: TObject);
var
  seqrec,seqitem : integer;
  sldatual:currency;
  vnumlote: string;
  sincrono: boolean;
begin
  frmACBrNFe.lerconfiguracao;
  vnumlote:='1';
  sincrono:=true;
  sldatual:=0;
  seqrec:=0;
  seqitem:=0;
  lbl_AVISO.Caption:='*** FECHANDO CUPOM. AGUARDE ***';
  lbl_aviso.Update;
  // FECHA VENDA
  zqry_fechavenda.Params.Clear;
  zqry_fechavenda.Close;
  zqry_fechavenda.SQL.Clear;
  zqry_fechavenda.SQL.Add('update vdvenda set vlrprodvenda=:p1, vlrdescvenda=:p2, vlrvenda=:p3, vlrliqvenda=:p4, vlradicvenda=:p5, codtipocob=:p6, emmanut=:p7 where codvenda=:p8');
  zqry_fechavenda.ParamByName('p1').AsCurrency:=vlrprodutos;
  zqry_fechavenda.ParamByName('p2').AsCurrency:=vlrdesconto;
  zqry_fechavenda.ParamByName('p3').AsCurrency:=vlrtotalpagar;
  zqry_FECHAVENDA.ParamByName('p4').AsCurrency:=vlrtotalpagar;
  zqry_fechavenda.ParamByName('p5').AsCurrency:=vlracrescimo;
  zqry_fechavenda.ParamByName('p6').AsInteger:=codtipocob;
  zqry_fechavenda.ParamByName('p7').AsString:='N';
  zqry_fechavenda.parambyname('p8').asintegeR:=codvenda;
  zqry_fechavenda.ExecSQL;
  // GERA FINANCEIRO
  zqry_contador.Params.Clear;
  zqry_contador.Close;
  zqry_contador.SQL.Clear;
  zqry_contador.SQL.Add('select max(codrec) as sequencia from fnreceber');
  zqry_contador.Open;
  seqrec:=1+ +zqry_CONTADOR.FieldByName('sequencia').asinteger;
  //
 { zqry_FNRECEBER.Params.Clear;
  zqry_fnreceber.Close;
  zqry_fnreceber.Open;
  zqry_fnreceber.Insert;
  zqry_FNRECEBERCODEMP.AsInteger:=dm_dados.codemp;
  zqry_fnrecebercodfilial.AsInteger:=1;
  zqry_FNRECEBERCODEMPPG.AsInteger:=dm_Dados.codemp;
  zqry_FNRECEBERCODFILIALPG.AsInteger:=1;
  zqry_FNRECEBERCODEMPCL.AsInteger:=dm_Dados.codemp;
  zqry_FNRECEBERCODFILIALCL.AsInteger:=1;
  zqry_FNRECEBERCODEMPTC.AsInteger:=dm_Dados.codemp;
  zqry_FNRECEBERCODFILIALTC.AsInteger:=1;
  zqry_FNRECEBERCODEMPCB.AsInteger:=dm_Dados.codemp;
  zqry_FNRECEBERCODFILIALCB.AsInteger:=1;
  zqry_FNRECEBERCODCARTCOB.AsString:='21';
  zqry_FNRECEBERCODEMPCA.AsInteger:=dm_Dados.codemp;
  zqry_FNRECEBERCODFILIALCA.AsInteger:=1;
  zqry_FNRECEBERCODEMPVD.ASINTEGER:=DM_DADOS.CODEMP;
  zqry_FNRECEBERCODFILIALVD.ASINTEGEr:=1;
  zqry_FNRECEBERNUMCONTA.AsString:='CAIXA';
  zqry_FNRECEBERCODEMPBO.AsInteger:=dm_dados.codemp;
  zqry_FNRECEBERCODFILIALBO.AsInteger:=1;
  zqry_FNRECEBERCODREC.AsInteger:=seqrec;
  zqry_FNRECEBERCODPLANOPAG.AsInteger:=1;
  zqry_FNRECEBERCODCLI.AsInteger:= 1;//{TODO -oOwner -cGeneral : ActionItem Puxar o codigo do cliente}
 { zqry_FNRECEBERCODVEND.AsInteger:= 1;//{TODO -oOwner -cGeneral : ActionItem Puxar o codigo do caixa}
  {zqry_FNRECEBERTIPOVENDA.ASSTRING:='PV';
  zqry_FNRECEBERCODVENDA.AsInteger:=codvenda;
  zqry_FNRECEBERCODTIPOCOB.AsInteger:=1;
  zqry_FNRECEBERVLRREC.AsCurrency:=vlrtotalpagar;
  zqry_FNRECEBERVLRDEVREC.AsCurrency:=0;
  zqry_FNRECEBERVLRPAGOREC.AsCurrency:=vlrtotalpagar;
  zqry_FNRECEBERVLRAPAGREC.AsCurrency:=0;
  zqry_FNRECEBERVLRPARCREC.AsCurrency:=0;
  zqry_FNRECEBERDATAREC.AsDateTime:=now;
  zqry_FNRECEBERDTCOMPREC.AsDateTime:=now;
  zqry_FNRECEBERSTATUSREC.AsString:='PG';
  zqry_FNRECEBERDTQUITREC.AsDateTime:=now;
  zqry_FNRECEBERDOCREC.AsInteger:=CODVENDA;
  zqry_FNRECEBEREMMANUT.asstring:='N';
  zqry_FNRECEBERNROPARCREC.AsInteger:=1;
  zqry_FNRECEBEROBSREC.AsString:='Referente a Venda n.º '+inttostr(codvenda)+' finalizada no Checkout no dia '+datetostr(date)+' as '+timetostr(time);
  zqry_FNRECEBERFLAG.AsString:='F1';
  zqry_FNRECEBERNUMCONTA.AsString:='CAIXA';
  zqry_FNRECEBERDTINS.AsDateTime:=now;
  zqry_FNRECEBERIDUSUINS.AsString:='sysdba';//capturar o usuario do caixa;
  zqry_FNRECEBERHINS.AsDateTime:=now;
  zqry_fnreceber.Post;
  zqry_fnreceber.ApplyUpdates;  }
  zqry_FNRECEBER.params.Clear;
  zqry_FNRECEBER.Close;
  zqry_fnreceber.SQL.Clear;
  zqry_FNRECEBER.SQL.Add('update fnreceber set vlrpagorec=:vlrpag, obsrec=:controle,');
  zqry_FNRECEBER.SQL.Add('codemptc=:empcodtc, codfilialtc=:filialcodtc, vlrdescrec=:desc, codtipocob=:tipocod, codterminal=:terminal');
  zqry_FNRECEBER.SQL.Add('where codvenda=:vendacod and codemp=:empcod ');
  zqry_FNRECEBER.ParamByName('vlrpag').AsCurrency:=vlrtotalpagar;
  zqry_FNRECEBER.ParamByName('desc').AsCurrency:=StrToCurr(edt_VALORDESCONTO.text);
  zqry_FNRECEBER.ParamByName('controle').asstring:='Controle '+inttostr(codvenda);
  zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=codvenda;
  zqry_FNRECEBER.ParamByName('empcod').AsInteger:=99;
  zqry_FNRECEBER.ParamByName('empcodtc').AsInteger:=99;
  zqry_FNRECEBER.ParamByName('filialcodtc').AsInteger:=1;
  zqry_FNRECEBER.ParamByName('terminal').asinteger:=dm_dados.terminal;
  zqry_FNRECEBER.ParamByName('tipocod').AsInteger:=1;
  zqry_fnreceber.ExecSQL;
  // GERA INTERNO DO FINANCEIRO
  {zqry_FNITRECEBER.Params.Clear;
  zqry_fnitreceber.Close;
  zqry_fnitreceber.Open;
  cds_MULTIPAGTO.First;
  while not cds_MULTIPAGTO.Eof do
  begin
    zqry_fnitreceber.Insert;
    zqry_FNITRECEBERCODEMP.AsInteger:=dm_dados.codemp;
    zqry_fnitrecebercodfilial.asinteger:=1;
    //zqry_FNITRECEBERCODREC.AsInteger:=seqrec;
    zqry_FNITRECEBERNPARCITREC.AsInteger:=cds_MULTIPAGTOSEQMULTIPAGTO.AsInteger;
    zqry_FNITRECEBERVLRITREC.AsCurrency:=cds_MULTIPAGTOVALOR.AsCurrency-cds_MULTIPAGTOTROCO.ascurrency;
    zqry_FNITRECEBERVLRPARCITREC.AsCurrency:=cds_MULTIPAGTOVALOR.AsCurrency-cds_MULTIPAGTOTROCO.ascurrency;
    zqry_FNITRECEBERVLRPAGOITREC.AsCurrency:=cds_MULTIPAGTOvalor.AsCurrency;
    zqry_FNITRECEBERCODTIPOCOB.AsInteger:=cds_MULTIPAGTOCODTIPOCOB.AsInteger;
    zqry_FNITRECEBERDOCLANCAITREC.AsString:=inttostr(codvenda)+'/'+cds_MULTIPAGTOSEQMULTIPAGTO.AsString;
    zqry_FNITRECEBERVLRAPAGITREC.AsCurrency:=0;
    zqry_FNITRECEBERVLRDEVITREC.AsCurrency:=0;
    zqry_FNITRECEBERDESCPONT.AsString:='N';
    zqry_FNITRECEBERDTITREC.AsDateTime:=NOW;
    zqry_FNITRECEBERDTCOMPITREC.AsDateTime:=now;
    zqry_FNITRECEBERDTVENCITREC.AsDateTime:=now;
    zqry_FNITRECEBERDTPAGOITREC.asdatetime:=now;
    zqry_FNITRECEBERSTATUSITREC.AsString:='PG';
    zqry_FNITRECEBERIMPRECIBOITREC.AsString:='N';
    zqry_FNITRECEBERALTUSUITREC.AsString:='N';
    zqry_FNITRECEBERPDVITREC.AsString:='1';//numerodocaixaondefoifeita a venda
    zqry_FNITRECEBERRECEMCOB.AsString:='S';
    zqry_FNITRECEBEREMMANUT.AsString:='N';
    zqry_FNITRECEBERIDUSUINS.AsString:='sysdba';
    zqry_FNITRECEBERDTINS.AsDateTime:=now;
    zqry_FNITRECEBERHINS.AsDateTime:=now;
    zqry_fnitreceber.Post;
    cds_MULTIPAGTO.Next;
  end;
  zqry_fnitreceber.ApplyUpdates;  }
  // Movimentacao
  zqry_contador.Params.Clear;
  zqry_CONTADOR.Close;
  zqry_CONTADOR.SQL.Clear;
  zqry_CONTADOR.sql.add('SELECT MAX(item) as proxitem, vlrsldmov FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and nromov=:p3 group by item , vlrsldmov');
  zqry_CONTADOR.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_CONTADOR.ParamByName('caixacod').AsInteger:=dm_dados.terminal;
  zqry_CONTADOR.ParamByName('p3').AsInteger:=ultmov;
  zqry_CONTADOR.Open;
  zqry_contador.Last;
  seqitem:=1+zqry_contador.FieldByName('proxitem').asinteger;
  //showmessage(inttostr(seqitem));
  sldatual:=zqry_contador.FieldByName('vlrsldmov').AsCurrency;
  dm_dados.zqry_PVMOVCAIXA.close;
  dm_Dados.zqry_PVMOVCAIXA.Open;
  dm_dados.zqry_PVMOVCAIXA.Insert;
  dm_dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_dados.codemp;
  dm_Dados.zqry_PVMOVCAIXACODFILIAL.AsInteger:=1;
  dm_dados.zqry_PVMOVCAIXACODEMPUS.ASINTEGEr:=DM_DADOS.CODEMP;
  dm_dados.zqry_PVMOVCAIXACODFILIALUS.asintegeR:=1;
  dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=1;
  dm_Dados.zqry_PVMOVCAIXANROMOV.AsInteger:=ultmov+1;
  dm_Dados.zqry_PVMOVCAIXAITEM.AsInteger:=seqitem;
  dm_Dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXAHINS.AsDateTime:=now;
  dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='E';
  dm_Dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=vlrtotalpagar;
  dm_dados.zqry_PVMOVCAIXAVLRSLDMOV.AsFloat:=sldatual+vlrtotalpagar;
  dm_dados.zqry_PVMOVCAIXAIDUSU.Asstring:='sysdba';
  dm_dados.zqry_PVMOVCAIXA.Post;
  dm_dados.zqry_PVMOVCAIXA.ApplyUpdates;
  //
  alimentarnfce(numdfe);

  frmACBrNFe.ACBrNFe1.DANFE := frmACBrNFe.ACBrNFeDANFCeFortes1 ;
  lbl_AVISO.Caption:='*** ASSINANDO NFCE. AGUARDE 1/5 ***';
  lbl_aviso.Update;
  frmACBrNFe.ACBrNFe1.NotasFiscais.Assinar;
  lbl_AVISO.Caption:='*** GRAVANDO XML. AGUARDE 2/5 ***';
  lbl_aviso.Update;
  frmACBrNFe.ACBrNFe1.NotasFiscais.GravarXML;
  lbl_AVISO.Caption:='*** VALIDANDO XML. AGUARDE 3/5 ***';
  lbl_aviso.Update;
  frmACBrNFe.ACBrNFe1.NotasFiscais.Validar;
  lbl_AVISO.Caption:='*** GERANDO ARQUIVO. AGUARDE 4/5 ***';
  lbl_aviso.Update;
  frmACBrNFe.ACBrNFe1.NotasFiscais.GerarNFe;
  lbl_AVISO.Caption:='*** TRANSMITINDO. AGUARDE 5/5 ***';
  lbl_aviso.Update;
  frmACBrNFe.ACBrNFe1.Enviar(vNumLote,true,Sincrono);
  frmacbrnfe.memoresp.Lines.text:=frmACBrNFe.ACBrNFe1.WebServices.Retorno.RetWS;
  frmacbrnfe.memorespws.Lines.Text:=frmACBrNFe.ACBrNFe1.WebServices.Retorno.RetornoWS;

  frmacbrnfe.LoadXML(frmACBrNFe.ACBrNFe1.WebServices.Retorno.RetornoWS, frmacbrnfe.WBResposta);
  frmacbrnfe.memodados.Lines.Clear;
  frmacbrnfe.memodados.Lines.Add('cstat '+inttostr(frmACBrNFe.ACBrNFe1.WebServices.Retorno.cStat));


  retornacstat :=inttostr(frmACBrNFe.ACBrNFe1.WebServices.Retorno.cStat);
  //showmessage(retornacstat);
  if frmACBrNFe.ACBrNFe1.WebServices.Retorno.cStat= 100 then
  begin
    frmACBrNFe.acbrnfe1.NotasFiscais.Imprimir;
  end;

  //
  zqry_ATUALIZA.Params.Clear;
  zqry_ATUALIZA.Close;
  zqry_ATUALIZA.SQL.Clear;
  zqry_ATUALIZA.SQL.Add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
  zqry_atualiza.ParamByName('seq').AsInteger:=nfceemit+1;
  zqry_atualiza.ParamByName('tabsg').AsString:='NC';
  zqry_atualiza.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_atualiza.ExecSQL;
  //
  lbl_AVISO.Caption:='*** CUPOM FECHADO. VOLTANDO PARA VENDA ***';
  lbl_aviso.Update;
  frm_checkout.lbl_QTDITENS.Caption:='';
  frm_checkout.lbl_PRECO.Caption:='';
  frm_checkout.lbl_VALORTOTAL.caption:='';
  frm_checkout.lbl_STATUS.Caption:='CAIXA DISPONIVEL';
  frm_checkout.lbl_PRODUTO.Caption:='';
  frm_checkout.zqry_vdvenda.close;
  frm_checkout.zqry_VDITVENDA.Close;
  frm_CHECKOUT.zqry_EQPRODUTO_CHECKOUT.Close;
  FRM_CHECKOUT.edt_BUSCAEAN.Clear;
  FRM_CHECKOUT.edt_BUSCAEAN.SetFocus;
  frm_checkout.alterapreco:=1;
  frm_checkout.multiplica:='1';
  frm_checkout.edt_buscaean.SetFocus;
  frm_checkout.edt_buscaean.Clear;
  frm_checkout.edt_buscaean.Color:=clyellow;
  codtipocob:=0;
  codvenda:=0;
  vlrdesconto:=0;
  vlracrescimo:=0;
  vlrprodutos:=0;
  vlrtotalpagar:=0;
  valorpago:=0;
  valortotal:=0;
  valortroco:=0;
  pagoparcial:=0;
  pago:=0;
  lbl_VALORTOTAL.caption:='';
  lbl_PAGTOPARCIAL.Caption:='';
  lbl_TOTALGERALPAGAR.caption:='';
  lbl_VALORTROCO.Caption:='';
  lbl_FALTA.Caption:='';
  edt_VALORPAGO.clear;
  cb_FORMAPAGTO.Text:='SELECIONE';
  cds_MULTIPAGTO.Close;
  lbl_AVISO.Caption:='';
  lbl_aviso.Update;
  frm_checkout.valortotal:=0;
  frm_checkout.lbl_VALORTOTAL.Caption:='';
  FRM_FECHACUPOM.close;
end;

procedure Tfrm_FECHACUPOM.cb_FORMAPAGTOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) and (cb_FORMAPAGTO.Text<>'SELECIONE') then
begin
  zqry_TIPOCOB.Close;
  zqry_tipocob.Params.clear;
  zqry_tipocob.SQL.Clear;
  zqry_tipocob.SQL.Add('select * from fntipocob where codemp=:empcod and checkout=:sim and desctipocob=:cobtipo');
  zqry_tipocob.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_tipocob.ParamByName('sim').Asstring:='S';
  zqry_tipocob.ParamByName('cobtipo').Asstring:=trim(cb_FORMAPAGTO.text);
  zqry_tipocob.Open;
  if zqry_tipocob.IsEmpty then
  begin
    showmessage('Não localizada valor para Tipo de Cobrança');
  end
  else
  begin
    codtipocob:=zqry_TIPOCOBCODTIPOCOB.AsInteger;
  end;
  //zqry_tipocob.Open;
  edt_VALORPAGO.Clear;
  edt_valorpago.SetFocus;
  edt_valorpago.color:=clyellow;
  cb_FORMAPAGTO.Color:=clWindow;
end
else
begin
  cb_FORMAPAGTO.SetFocus;
end;
end;

procedure Tfrm_FECHACUPOM.edt_VALORPAGOKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if TryStrToCurr(edt_VALORPAGO.Text,testavalor) then
    begin
      cb_FORMAPAGTO.Color:=clwindow;
      valorpago:=StrToCurr(edt_VALORPAGO.text);
      valortotal:=vlrtotalpagar;//(lbl_VALORTOTAL.caption);
      pago:=pago+strtofloat(edt_valorpago.Text);
      falta:=valortotal-pago;
      if (valorpago>=valortotal) or (pago>=valortotal) then
      begin
        if pago>valorpago then valortroco:=pago-valortotal;
        if pago<=valorpago then valortroco:=valorpago-valortotal;
        lbl_VALORTROCO.Caption:=FormatFloat('R$ #,,,,0.00', valortroco);
        lbl_valortroco.Update;
        btn_CONFIRMAR.Enabled:=true;
        btn_confirmar.SetFocus;
        edt_VALORPAGO.Color:=clwindow;
        lbl_falta.Caption:='0';
        pagoparcial:=pagoparcial+valorpago;
        lbl_PAGTOPARCIAL.Caption:=FormatFloat('R$ #,,,,0.00', pagoparcial);
        itemmultipagto:=itemmultipagto+1;
        cds_MULTIPAGTO.Append;
        cds_MULTIPAGTOCODEMP.AsInteger:=dm_dados.codemp;
        cds_MULTIPAGTOCODFILIAL.AsInteger:=1;
        cds_MULTIPAGTOCODVENDA.AsInteger:=codvenda;
        cds_MULTIPAGTOSEQMULTIPAGTO.AsInteger:=itemmultipagto;
        cds_MULTIPAGTOCODTIPOCOB.AsInteger:=codtipocob;
        cds_MULTIPAGTOVALOR.AsCurrency:=StrToCurr(edt_VALORPAGO.text);
        cds_MULTIPAGTOTROCO.AsCurrency:=valortroco;
        cds_MULTIPAGTO.Post;
      end
      else
      begin
        if (pago<valortotal) and (valortotal>0) then
        begin
          itemmultipagto:=itemmultipagto+1;
          cds_MULTIPAGTO.Append;
          cds_MULTIPAGTOCODEMP.AsInteger:=dm_dados.codemp;
          cds_MULTIPAGTOCODFILIAL.AsInteger:=1;
          cds_MULTIPAGTOCODVENDA.AsInteger:=codvenda;
          cds_MULTIPAGTOSEQMULTIPAGTO.AsInteger:=itemmultipagto;
          cds_MULTIPAGTOCODTIPOCOB.AsInteger:=codtipocob;
          cds_MULTIPAGTOVALOR.AsCurrency:=StrToCurr(edt_VALORPAGO.text);
          cds_MULTIPAGTOTROCO.AsCurrency:=0;
          cds_MULTIPAGTO.Post;
          lbl_falta.Caption:=formatfloat('##0.00', falta);
          lbl_falta.Update;
          cb_FORMAPAGTO.SetFocus;
          cb_formapagto.Color:=clyellow;
          edt_valorpago.Clear;
          pagoparcial:=pagoparcial+valorpago;
          lbl_PAGTOPARCIAL.Caption:=FormatFloat('R$ #,,,,0.00', pagoparcial);
          lbl_pagtoparcial.Update;
        end;
      end;
    end;
  end
  else
  begin
    edt_valorpago.SetFocus;
  end;
end;

procedure Tfrm_FECHACUPOM.FormShow(Sender: TObject);
begin
pedvenda:=codvenda;
pago:=0;
falta:=0;
itemmultipagto:=0;
edt_VALORDESCONTO.Text:='0';
edt_VALORACRESCIMO.Text:= '0';
vlrdesconto:=strtofloat(edt_valordesconto.Text);
vlracrescimo:=strtofloat(edt_VALORACRESCIMO.Text);
vlrtotalpagar:=(vlrprodutos+vlracrescimo)-vlrdesconto;
//owmessage(floattostr(vlrprodutos));
lbl_VALORTOTAL.Caption:= FormatFloat('R$ #,,,,0.00', vlrtotalpagar);
lbl_TOTALGERALPAGAR.Caption:= FormatFloat('R$ #,,,,0.00', vlrprodutos);
lbl_TOTALGERALPAGAR.Update;
lbl_valortotal.update;
btn_CONFIRMAR.Enabled:=false;
edt_VALORDESCONTO.SetFocus;
edt_valordesconto.color:=clyellow;
zqry_TIPOCOB.Close;
zqry_tipocob.Params.clear;
zqry_tipocob.SQL.Clear;
zqry_tipocob.SQL.Add('select * from fntipocob where codemp=:empcod and checkout=:sim order by codtipocob');
zqry_tipocob.ParamByName('empcod').AsInteger:=dm_dados.codemp;
zqry_tipocob.ParamByName('sim').Asstring:='S';
zqry_tipocob.Open;
if not zqry_tipocob.IsEmpty then
begin
    zqry_TIPOCOB.First;
    while not zqry_TIPOCOB.Eof do
    begin
      cb_FORMAPAGTO.Items.Add(zqry_TIPOCOBDESCTIPOCOB.value);
      zqry_TIPOCOB.Next;
    end;
end
else
begin
  cb_formapagto.Items.Add('Dinheiro');
end;
  zqry_contador.params.clear;
  zqry_CONTADOR.Close;
  zqry_CONTADOR.SQL.Clear;
  zqry_CONTADOR.sql.add('SELECT MAX(nromov) as ultmov FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and tipomov<>:p3');
  zqry_CONTADOR.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_CONTADOR.ParamByName('caixacod').AsInteger:=dm_dados.terminal;
  zqry_CONTADOR.ParamByName('p3').AsString:='F';
  zqry_CONTADOR.Open;
  ultmov:=zqry_contador.FieldByName('ultmov').AsInteger;
cds_MULTIPAGTO.CreateDataSet;
cds_MULTIPAGTO.Open;
end;


procedure Tfrm_FECHACUPOM.edt_VALORDESCONTOKeyPress(Sender: TObject;
  var Key: Char);
var
  testanum:double;
begin
 if (key = #13) then
 begin
  if TryStrToFloat(edt_valordesconto.text,testanum) then
  begin
    if edt_valordesconto.Text='' then edt_valordesconto.Text:='0';
    vlrdesconto:=strtofloat(edt_valordesconto.Text);
    if vlrdesconto>=vlrprodutos then
    begin
      edt_valordesconto.clear;
      edt_valordesconto.SetFocus;
    end
    else
    begin
      vlrtotalpagar:=(vlrprodutos+vlracrescimo)-vlrdesconto;
      //owmessage(floattostr(vlrprodutos));
      lbl_VALORTOTAL.Caption:= FormatFloat('R$ #,,,,0.00', vlrtotalpagar);
      lbl_TOTALGERALPAGAR.Caption:= FormatFloat('R$ #,,,,0.00', vlrprodutos);
      lbl_valortotal.update;
      edt_valordesconto.Color:=clWindow;
      edt_valoracrescimo.color:=clyellow;
      edt_VALORACRESCIMO.SetFocus;
    end;
  end
  else
  begin
    edt_valordesconto.Clear;
    edt_valordesconto.Text:='0';
    edt_valordesconto.SetFocus;
  end;
 end;
end;

procedure Tfrm_FECHACUPOM.edt_VALORACRESCIMOKeyPress(Sender: TObject;
  var Key: Char);
var
  testanum:double;
begin
  if (key = #13) then
  begin
  if TryStrToFloat(edt_VALORACRESCIMO.text,testanum) then
  begin
    if edt_valoracrescimo.Text='' then edt_valoracrescimo.Text:='0';
    vlracrescimo:=strtofloat(edt_VALORACRESCIMO.Text);
    vlrtotalpagar:=(vlrprodutos+vlracrescimo)-vlrdesconto;
    //owmessage(floattostr(vlrprodutos));
    lbl_VALORTOTAL.Caption:= FormatFloat('R$ #,,,,0.00', vlrtotalpagar);
    lbl_TOTALGERALPAGAR.Caption:= FormatFloat('R$ #,,,,0.00', vlrprodutos);
    lbl_valortotal.update;
    cb_FORMAPAGTO.SetFocus;
    cb_formapagto.Color:=clyellow;
    edt_valoracrescimo.color:=clWindow;
  end
  else
  begin
    edt_valoracrescimo.Clear;
    edt_valoracrescimo.Text:='0';
    edt_valoracrescimo.SetFocus;
  end;
  end;
end;

end.
