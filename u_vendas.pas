unit u_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, System.ImageList;

type
  Tfrm_CAD_VENDAS = class(Tfrm_CADASTROPAI)
    PageControl1: TPageControl;
    ts_VENDA: TTabSheet;
    Panel1: TPanel;
    ts_ENTREGA: TTabSheet;
    ts_FISCAL: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    Label9: TLabel;
    ts_LUCRATIVIDADE: TTabSheet;
    zdts_ITEMCADASTRO: TDataSource;
    Label10: TLabel;
    Label11: TLabel;
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
    edt_CODVENDA: TEdit;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    cb_tipomov: TComboBox;
    zqry_EQTIPOMOV: TZQuery;
    zdts_EQTIPOMOV: TDataSource;
    zqry_EQTIPOMOVCODEMP: TIntegerField;
    zqry_EQTIPOMOVCODFILIAL: TSmallintField;
    zqry_EQTIPOMOVCODTIPOMOV: TIntegerField;
    zqry_EQTIPOMOVCODMODNOTA: TIntegerField;
    zqry_EQTIPOMOVSERIE: TWideStringField;
    zqry_EQTIPOMOVPERMITDIGIPI: TWideStringField;
    zqry_EQTIPOMOVNATOPERACAO: TWideStringField;
    zqry_EQTIPOMOVCALCIMPCP: TWideStringField;
    zqry_EQTIPOMOVDESCTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVESTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVFISCALTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVESTOQTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVCODTAB: TIntegerField;
    zqry_EQTIPOMOVESPECIETIPOMOV: TWideStringField;
    zqry_EQTIPOMOVIMPPEDTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVIMPNFTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVIMPBOLTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVIMPRECTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVREIMPNFTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVTUSUTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVSOMAVDTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVSEQNFTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVVLRMFINTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVMCOMISTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVOPERTIPOMOV: TWideStringField;
    zqry_EQTIPOMOVCTIPOFRETE: TWideStringField;
    zqry_EQTIPOMOVCODREGRCOMIS: TIntegerField;
    zqry_EQTIPOMOVCODTRAN: TIntegerField;
    zqry_EQTIPOMOVEMITNFCPMOV: TWideStringField;
    zqry_EQTIPOMOVCODMODDOCFISC: TWideStringField;
    zqry_EQTIPOMOVCODPLANOPAG: TIntegerField;
    zqry_EQTIPOMOVDESCNATCOMPL: TWideStringField;
    zqry_EQTIPOMOVCODMENS: TIntegerField;
    zqry_EQTIPOMOVDESBLOQCV: TWideStringField;
    zqry_EQTIPOMOVDTINS: TDateField;
    zqry_EQTIPOMOVHINS: TTimeField;
    zqry_EQTIPOMOVIDUSUINS: TWideStringField;
    zqry_EQTIPOMOVDTALT: TDateField;
    zqry_EQTIPOMOVHALT: TTimeField;
    zqry_EQTIPOMOVIDUSUALT: TWideStringField;
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROTIPOVENDA: TWideStringField;
    zqry_CADASTROCODVENDA: TIntegerField;
    zqry_CADASTROSUBTIPOVENDA: TWideStringField;
    zqry_CADASTROCODVEND: TIntegerField;
    zqry_CADASTROCODCLI: TIntegerField;
    zqry_CADASTROCODPLANOPAG: TIntegerField;
    zqry_CADASTROSERIE: TWideStringField;
    zqry_CADASTROCODTIPOMOV: TIntegerField;
    zqry_CADASTROCODCAIXA: TIntegerField;
    zqry_CADASTRODOCVENDA: TIntegerField;
    zqry_CADASTRODTSAIDAVENDA: TDateField;
    zqry_CADASTRODTEMITVENDA: TDateField;
    zqry_CADASTRODTCOMPVENDA: TDateField;
    zqry_CADASTROTICKET: TIntegerField;
    zqry_CADASTROVLRPRODVENDA: TFloatField;
    zqry_CADASTROPERCDESCVENDA: TFloatField;
    zqry_CADASTROVLRDESCVENDA: TFloatField;
    zqry_CADASTROVLRDESCITVENDA: TFloatField;
    zqry_CADASTROVLRVENDA: TFloatField;
    zqry_CADASTROVLRBASEICMSVENDA: TFloatField;
    zqry_CADASTROVLRICMSVENDA: TFloatField;
    zqry_CADASTROCALCICMSVENDA: TWideStringField;
    zqry_CADASTROIMPICMSVENDA: TWideStringField;
    zqry_CADASTROVLRISENTASVENDA: TFloatField;
    zqry_CADASTROVLROUTRASVENDA: TFloatField;
    zqry_CADASTROVLRBASEIPIVENDA: TFloatField;
    zqry_CADASTROVLRLIQVENDA: TFloatField;
    zqry_CADASTROPERCCOMISVENDA: TFloatField;
    zqry_CADASTROVLRCOMISVENDA: TFloatField;
    zqry_CADASTROSTATUSVENDA: TWideStringField;
    zqry_CADASTROVLRFRETEVENDA: TFloatField;
    zqry_CADASTROVLRADICVENDA: TFloatField;
    zqry_CADASTROVLRIPIVENDA: TFloatField;
    zqry_CADASTROCALCIPIVENDA: TWideStringField;
    zqry_CADASTROIMPIPIVENDA: TWideStringField;
    zqry_CADASTROOBSVENDA: TWideStringField;
    zqry_CADASTROCODBANCO: TWideStringField;
    zqry_CADASTROCODTIPOCOB: TIntegerField;
    zqry_CADASTROVLRBASEISSVENDA: TFloatField;
    zqry_CADASTROVLRISSVENDA: TFloatField;
    zqry_CADASTROCALCISSVENDA: TWideStringField;
    zqry_CADASTROIMPIISSVENDA: TWideStringField;
    zqry_CADASTROIMPNOTAVENDA: TWideStringField;
    zqry_CADASTROCODCLASCOMIS: TWideStringField;
    zqry_CADASTROVLRPISVENDA: TFloatField;
    zqry_CADASTROCALCPISVENDA: TWideStringField;
    zqry_CADASTROIMPPISVENDA: TWideStringField;
    zqry_CADASTROVLRCOFINSVENDA: TFloatField;
    zqry_CADASTROCALCCOFINSVENDA: TWideStringField;
    zqry_CADASTROIMPCOFINSVENDA: TWideStringField;
    zqry_CADASTROVLRIRVENDA: TFloatField;
    zqry_CADASTROCALCIRVENDA: TWideStringField;
    zqry_CADASTROIMPIRVENDA: TWideStringField;
    zqry_CADASTROVLRCSOCIALVENDA: TFloatField;
    zqry_CADASTROCALCCSOCIALVENDA: TWideStringField;
    zqry_CADASTROIMPCSOCIALVENDA: TWideStringField;
    zqry_CADASTROPERCMCOMISVENDA: TFloatField;
    zqry_CADASTROCODCLCOMIS: TIntegerField;
    zqry_CADASTROCODCARTCOB: TWideStringField;
    zqry_CADASTROPEDCLIVENDA: TWideStringField;
    zqry_CADASTROVLRICMSSTVENDA: TFloatField;
    zqry_CADASTROVLRBASEICMSSTVENDA: TFloatField;
    zqry_CADASTROEMMANUT: TWideStringField;
    zqry_CADASTROBLOQVENDA: TWideStringField;
    zqry_CADASTROVLRICMSSIMPLES: TFloatField;
    zqry_CADASTROPERCICMSSIMPLES: TFloatField;
    zqry_CADASTROVLRBASEPISVENDA: TFloatField;
    zqry_CADASTROVLRBASECOFINSVENDA: TFloatField;
    zqry_CADASTROVLRBASECOMIS: TFloatField;
    zqry_CADASTROCHAVENFEVENDA: TWideStringField;
    zqry_CADASTRONUMCONTA: TWideStringField;
    zqry_CADASTROOBSREC: TWideStringField;
    zqry_CADASTROINFCOMPL: TWideStringField;
    zqry_CADASTROSITDOC: TWideStringField;
    zqry_CADASTROOBSNFE: TWideStringField;
    zqry_CADASTRODESCIPIVENDA: TWideStringField;
    zqry_CADASTROSEQOP: TSmallintField;
    zqry_CADASTROCODOP: TIntegerField;
    zqry_CADASTROLOCALSERV: TWideStringField;
    zqry_CADASTRONROATUALIZADO: TWideStringField;
    zqry_CADASTROCNF: TLargeintField;
    zqry_CADASTROSITCOMPLVENDA: TWideStringField;
    zqry_CADASTROMOTIVOCANCVENDA: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROVLRSIMPLES: TFloatField;
    zqry_CADASTROTIPOENVIO: TWideStringField;
    zqry_CADASTROCODMOT: TIntegerField;
    zqry_CADASTROCODVEIC: TIntegerField;
    zqry_CADASTROOBSENTREGA: TWideStringField;
    zqry_CADASTRONOMEMOT: TWideStringField;
    zqry_CADASTROPLACA: TWideStringField;
    zqry_CADASTROREQUERMONTAGEM: TWideStringField;
    zqry_CADASTROPONTOREFERENCIA: TWideStringField;
    zqry_CADASTROCODATEND: TIntegerField;
    zqry_CADASTROVDCOMERCIAL: TWideStringField;
    zqry_CADASTROVDVENDEXTERNO: TWideStringField;
    zqry_CADASTROVDCOMMERCE: TWideStringField;
    zqry_CADASTROENTREGUE: TWideStringField;
    zqry_CADASTROIDFASTSALE: TIntegerField;
    zqry_CADASTRONOMECLI: TWideStringField;
    edt_SERIE: TEdit;
    Panel3: TPanel;
    btn_FECHAR: TBitBtn;
    btn_IMPRIMIR: TBitBtn;
    BitBtn1: TBitBtn;
    btn_DESISTIR: TBitBtn;
    edt_DOCVENDA: TEdit;
    edt_EMISSAO: TEdit;
    cb_cliente: TComboBox;
    zqry_VDCLIENTE: TZQuery;
    zdts_VDCLIENTE: TDataSource;
    zqry_FNPLANOPAG: TZQuery;
    zdts_FNPLANOPAG: TDataSource;
    cb_planopag: TComboBox;
    msk_DATASAIDA: TMaskEdit;
    edt_CAIXA: TEdit;
    cb_VENDEDOR: TComboBox;
    Label22: TLabel;
    cb_ATENDENTE: TComboBox;
    Label23: TLabel;
    edt_ITEM: TEdit;
    cb_PRODUTO: TComboBox;
    edt_QTD: TEdit;
    edt_VLRUNITARIO: TEdit;
    edt_VLRDESC: TEdit;
    edt_DESC: TEdit;
    edt_VLRTOTAL: TEdit;
    edt_CFOP: TEdit;
    edt_LOTE: TEdit;
    edt_ALMOX: TEdit;
    edt_CALCST: TEdit;
    edt_OBSERVACAO: TEdit;
    zqry_ITEMCADASTRO: TZQuery;
    zqry_ITEMCADASTROCODEMP: TIntegerField;
    zqry_ITEMCADASTROCODFILIAL: TSmallintField;
    zqry_ITEMCADASTROTIPOVENDA: TWideStringField;
    zqry_ITEMCADASTROCODVENDA: TIntegerField;
    zqry_ITEMCADASTROCODITVENDA: TIntegerField;
    zqry_ITEMCADASTROCODNAT: TWideStringField;
    zqry_ITEMCADASTROCODPROD: TIntegerField;
    zqry_ITEMCADASTROCODLOTE: TWideStringField;
    zqry_ITEMCADASTROCODALMOX: TIntegerField;
    zqry_ITEMCADASTROQTDITVENDA: TExtendedField;
    zqry_ITEMCADASTROQTDITVENDACANC: TExtendedField;
    zqry_ITEMCADASTROPRECOITVENDA: TExtendedField;
    zqry_ITEMCADASTROPERCDESCITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRDESCITVENDA: TExtendedField;
    zqry_ITEMCADASTROPERCICMSITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRBASEICMSITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRICMSITVENDA: TExtendedField;
    zqry_ITEMCADASTROPERCIPIITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRBASEIPIITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRIPIITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRLIQITVENDA: TExtendedField;
    zqry_ITEMCADASTROPERCCOMISITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRCOMISITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRADICITVENDA: TExtendedField;
    zqry_ITEMCADASTROPERCISSITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRISSITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRFRETEITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRPRODITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRISENTASITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLROUTRASITVENDA: TExtendedField;
    zqry_ITEMCADASTROREFPROD: TWideStringField;
    zqry_ITEMCADASTROVLRBASEISSITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRBASEICMSBRUTITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRBASEICMSSTITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRICMSSTITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRBASECOMISITVENDA: TExtendedField;
    zqry_ITEMCADASTROMARGEMVLAGRITVENDA: TExtendedField;
    zqry_ITEMCADASTROOBSITVENDA: TWideStringField;
    zqry_ITEMCADASTROORIGFISC: TWideStringField;
    zqry_ITEMCADASTROCODTRATTRIB: TWideStringField;
    zqry_ITEMCADASTROTIPOFISC: TWideStringField;
    zqry_ITEMCADASTROTIPOST: TWideStringField;
    zqry_ITEMCADASTROCODMENS: TIntegerField;
    zqry_ITEMCADASTROSTRDESCITVENDA: TWideStringField;
    zqry_ITEMCADASTROQTDDEVITVENDA: TExtendedField;
    zqry_ITEMCADASTROCODLOG: TIntegerField;
    zqry_ITEMCADASTROCANCITVENDA: TWideStringField;
    zqry_ITEMCADASTROCODPE: TIntegerField;
    zqry_ITEMCADASTRODIASPE: TSmallintField;
    zqry_ITEMCADASTROCODCONV: TIntegerField;
    zqry_ITEMCADASTROCODFISC: TWideStringField;
    zqry_ITEMCADASTROCODITFISC: TIntegerField;
    zqry_ITEMCADASTROCODCOMPRA: TIntegerField;
    zqry_ITEMCADASTROCODITCOMPRA: TIntegerField;
    zqry_ITEMCADASTROTIPOVENDAVR: TWideStringField;
    zqry_ITEMCADASTROCODVENDAVR: TIntegerField;
    zqry_ITEMCADASTROCODITVENDAVR: TIntegerField;
    zqry_ITEMCADASTRONUMSERIETMP: TWideStringField;
    zqry_ITEMCADASTROVLRBASEICMSSTRETITVENDA: TExtendedField;
    zqry_ITEMCADASTROVLRICMSSTRETITVENDA: TExtendedField;
    zqry_ITEMCADASTROCALCSTCM: TWideStringField;
    zqry_ITEMCADASTROEMMANUT: TWideStringField;
    zqry_ITEMCADASTRODTINS: TDateField;
    zqry_ITEMCADASTROHINS: TTimeField;
    zqry_ITEMCADASTROIDUSUINS: TWideStringField;
    zqry_ITEMCADASTRODTALT: TDateField;
    zqry_ITEMCADASTROHALT: TTimeField;
    zqry_ITEMCADASTROIDUSUALT: TWideStringField;
    zqry_ITEMCADASTROTXTDESCITEM: TWideStringField;
    zqry_ITEMCADASTRODESCITEM: TWideStringField;
    zqry_ITEMCADASTROSOLICITANTE: TWideStringField;
    pn_BOTOES_ITENS: TPanel;
    sp_ITEM_ADICIONA: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    sp_ITEM_SALVA: TSpeedButton;
    sp_ITEM_EDITA: TSpeedButton;
    sp_ITEM_RETIRA: TSpeedButton;
    zqry_EQPRODUTO: TZQuery;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOSLDPROD: TExtendedField;
    zqry_EQPRODUTOPRECOBASEPROD: TExtendedField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCODBALANCA: TIntegerField;
    dts_EQPRODUTO: TDataSource;
    zqry_EQPRODUTOCUSTOINFOPROD: TExtendedField;
    zqry_EQPRODUTOCLOTEPROD: TWideStringField;
    zqry_UPTVENDA: TZQuery;
    dts_UPTVENDA: TDataSource;
    Label26: TLabel;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lbl_PARCIAL: TLabel;
    lbl_DESCONTO: TLabel;
    lbl_BRUTO: TLabel;
    zqry_VDCLIENTECODEMP: TIntegerField;
    zqry_VDCLIENTECODFILIAL: TSmallintField;
    zqry_VDCLIENTECODCLI: TIntegerField;
    zqry_VDCLIENTERAZCLI: TWideStringField;
    zqry_VDCLIENTENOMECLI: TWideStringField;
    zqry_VDCLIENTECODEMPCC: TIntegerField;
    zqry_VDCLIENTECODFILIALCC: TSmallintField;
    zqry_VDCLIENTECODCLASCLI: TIntegerField;
    zqry_VDCLIENTECODEMPVD: TIntegerField;
    zqry_VDCLIENTECODFILIALVD: TSmallintField;
    zqry_VDCLIENTECODVEND: TIntegerField;
    zqry_VDCLIENTECODEMPTC: TIntegerField;
    zqry_VDCLIENTECODFILIALTC: TSmallintField;
    zqry_VDCLIENTECODTIPOCOB: TIntegerField;
    zqry_VDCLIENTECODEMPPG: TIntegerField;
    zqry_VDCLIENTECODFILIALPG: TSmallintField;
    zqry_VDCLIENTECODPLANOPAG: TIntegerField;
    zqry_VDCLIENTECODEMPTN: TIntegerField;
    zqry_VDCLIENTECODFILIALTN: TSmallintField;
    zqry_VDCLIENTECODTRAN: TIntegerField;
    zqry_VDCLIENTECODEMPBO: TIntegerField;
    zqry_VDCLIENTECODFILIALBO: TSmallintField;
    zqry_VDCLIENTECODBANCO: TWideStringField;
    zqry_VDCLIENTECODEMPSR: TIntegerField;
    zqry_VDCLIENTECODFILIALSR: TSmallintField;
    zqry_VDCLIENTECODSETOR: TIntegerField;
    zqry_VDCLIENTECODEMPTI: TIntegerField;
    zqry_VDCLIENTECODFILIALTI: TSmallintField;
    zqry_VDCLIENTECODTIPOCLI: TIntegerField;
    zqry_VDCLIENTECODTPCRED: TIntegerField;
    zqry_VDCLIENTECODFILIALTR: TIntegerField;
    zqry_VDCLIENTECODEMPTR: TIntegerField;
    zqry_VDCLIENTECODFISCCLI: TIntegerField;
    zqry_VDCLIENTECODEMPFC: TIntegerField;
    zqry_VDCLIENTECODFILIALFC: TIntegerField;
    zqry_VDCLIENTECODEMPEC: TIntegerField;
    zqry_VDCLIENTECODFILIALEC: TSmallintField;
    zqry_VDCLIENTECODTBEC: TSmallintField;
    zqry_VDCLIENTECODITTBEC: TIntegerField;
    zqry_VDCLIENTECODEMPHP: TIntegerField;
    zqry_VDCLIENTECODFILIALHP: TSmallintField;
    zqry_VDCLIENTECODHIST: TIntegerField;
    zqry_VDCLIENTECODEMPCB: TIntegerField;
    zqry_VDCLIENTECODFILIALCB: TSmallintField;
    zqry_VDCLIENTECODCARTCOB: TWideStringField;
    zqry_VDCLIENTEDATACLI: TDateField;
    zqry_VDCLIENTEPESSOACLI: TWideStringField;
    zqry_VDCLIENTEATIVOCLI: TWideStringField;
    zqry_VDCLIENTECNPJCLI: TWideStringField;
    zqry_VDCLIENTEINSCCLI: TWideStringField;
    zqry_VDCLIENTECPFCLI: TWideStringField;
    zqry_VDCLIENTERGCLI: TWideStringField;
    zqry_VDCLIENTESSPCLI: TWideStringField;
    zqry_VDCLIENTEENDCLI: TWideStringField;
    zqry_VDCLIENTENUMCLI: TIntegerField;
    zqry_VDCLIENTECOMPLCLI: TWideStringField;
    zqry_VDCLIENTEEDIFICIOCLI: TWideStringField;
    zqry_VDCLIENTEBAIRCLI: TWideStringField;
    zqry_VDCLIENTECIDCLI: TWideStringField;
    zqry_VDCLIENTEUFCLI: TWideStringField;
    zqry_VDCLIENTECEPCLI: TWideStringField;
    zqry_VDCLIENTEDDDCLI: TWideStringField;
    zqry_VDCLIENTEFONECLI: TWideStringField;
    zqry_VDCLIENTERAMALCLI: TWideStringField;
    zqry_VDCLIENTEDDDFAXCLI: TWideStringField;
    zqry_VDCLIENTEFAXCLI: TWideStringField;
    zqry_VDCLIENTEEMAILCLI: TWideStringField;
    zqry_VDCLIENTEEMAILCOB: TWideStringField;
    zqry_VDCLIENTEEMAILENT: TWideStringField;
    zqry_VDCLIENTEEMAILNFECLI: TWideStringField;
    zqry_VDCLIENTECONTCLI: TWideStringField;
    zqry_VDCLIENTEENDCOB: TWideStringField;
    zqry_VDCLIENTENUMCOB: TIntegerField;
    zqry_VDCLIENTECOMPLCOB: TWideStringField;
    zqry_VDCLIENTEBAIRCOB: TWideStringField;
    zqry_VDCLIENTECIDCOB: TWideStringField;
    zqry_VDCLIENTEUFCOB: TWideStringField;
    zqry_VDCLIENTECEPCOB: TWideStringField;
    zqry_VDCLIENTEDDDFONECOB: TWideStringField;
    zqry_VDCLIENTEFONECOB: TWideStringField;
    zqry_VDCLIENTEDDDFAXCOB: TWideStringField;
    zqry_VDCLIENTEFAXCOB: TWideStringField;
    zqry_VDCLIENTEENDENT: TWideStringField;
    zqry_VDCLIENTENUMENT: TIntegerField;
    zqry_VDCLIENTECOMPLENT: TWideStringField;
    zqry_VDCLIENTEBAIRENT: TWideStringField;
    zqry_VDCLIENTECIDENT: TWideStringField;
    zqry_VDCLIENTEUFENT: TWideStringField;
    zqry_VDCLIENTECEPENT: TWideStringField;
    zqry_VDCLIENTEDDDFONEENT: TWideStringField;
    zqry_VDCLIENTEFONEENT: TWideStringField;
    zqry_VDCLIENTEDDDFAXENT: TWideStringField;
    zqry_VDCLIENTEFAXENT: TWideStringField;
    zqry_VDCLIENTEDDDCELENT: TWideStringField;
    zqry_VDCLIENTECELENT: TWideStringField;
    zqry_VDCLIENTEOBSCLI: TWideStringField;
    zqry_VDCLIENTEAGENCIACLI: TWideStringField;
    zqry_VDCLIENTENCONTABCOCLI: TWideStringField;
    zqry_VDCLIENTECODEMPPQ: TIntegerField;
    zqry_VDCLIENTECODFILIALPQ: TSmallintField;
    zqry_VDCLIENTECODPESQ: TIntegerField;
    zqry_VDCLIENTEINCRACLI: TWideStringField;
    zqry_VDCLIENTEDTINITR: TDateField;
    zqry_VDCLIENTEDTVENCTOTR: TDateField;
    zqry_VDCLIENTENIRFCLI: TWideStringField;
    zqry_VDCLIENTESIMPLESCLI: TWideStringField;
    zqry_VDCLIENTEDDDCELCLI: TWideStringField;
    zqry_VDCLIENTECELCLI: TWideStringField;
    zqry_VDCLIENTENATCLI: TWideStringField;
    zqry_VDCLIENTEUFNATCLI: TWideStringField;
    zqry_VDCLIENTETEMPORESCLI: TWideStringField;
    zqry_VDCLIENTEAPELIDOCLI: TWideStringField;
    zqry_VDCLIENTESITECLI: TWideStringField;
    zqry_VDCLIENTECODCONTDEB: TWideStringField;
    zqry_VDCLIENTECODCONTCRED: TWideStringField;
    zqry_VDCLIENTECODCLICONTAB: TWideStringField;
    zqry_VDCLIENTEFOTOCLI: TBlobField;
    zqry_VDCLIENTEIMGASSCLI: TBlobField;
    zqry_VDCLIENTECODMUNIC: TWideStringField;
    zqry_VDCLIENTESIGLAUF: TWideStringField;
    zqry_VDCLIENTECODPAIS: TSmallintField;
    zqry_VDCLIENTECODMUNICENT: TWideStringField;
    zqry_VDCLIENTESIGLAUFENT: TWideStringField;
    zqry_VDCLIENTECODPAISENT: TSmallintField;
    zqry_VDCLIENTECODMUNICCOB: TWideStringField;
    zqry_VDCLIENTESIGLAUFCOB: TWideStringField;
    zqry_VDCLIENTECODPAISCOB: TSmallintField;
    zqry_VDCLIENTECODEMPUC: TIntegerField;
    zqry_VDCLIENTECODFILIALUC: TSmallintField;
    zqry_VDCLIENTECODUNIFCOD: TIntegerField;
    zqry_VDCLIENTESUFRAMACLI: TWideStringField;
    zqry_VDCLIENTEPRODRURALCLI: TWideStringField;
    zqry_VDCLIENTECTOCLI: TWideStringField;
    zqry_VDCLIENTECODCNAE: TWideStringField;
    zqry_VDCLIENTEINSCMUNCLI: TWideStringField;
    zqry_VDCLIENTEPERCDESCCLI: TFloatField;
    zqry_VDCLIENTECONTCLICOB: TWideStringField;
    zqry_VDCLIENTECONTCLIENT: TWideStringField;
    zqry_VDCLIENTEDESCIPI: TWideStringField;
    zqry_VDCLIENTEIDENTCLIBCO: TWideStringField;
    zqry_VDCLIENTEDTNASCCLI: TDateField;
    zqry_VDCLIENTEDTINS: TDateField;
    zqry_VDCLIENTEHINS: TTimeField;
    zqry_VDCLIENTEIDUSUINS: TWideStringField;
    zqry_VDCLIENTEDTALT: TDateField;
    zqry_VDCLIENTEHALT: TTimeField;
    zqry_VDCLIENTEIDUSUALT: TWideStringField;
    zqry_VDCLIENTECONSUMIDORCLI: TWideStringField;
    zqry_VDCLIENTESITREVCLI: TWideStringField;
    zqry_VDCLIENTEIDUSUREVCLI: TWideStringField;
    zqry_VDCLIENTEDTREVCLI: TDateField;
    zqry_VDCLIENTEHREVCLI: TTimeField;
    zqry_VDCLIENTECELENTOPERADORA: TWideStringField;
    zqry_VDCLIENTECELENTWHATSAPP: TWideStringField;
    zqry_VDCLIENTECELCLIOPERADORA: TWideStringField;
    zqry_VDCLIENTECELCLIWHATSAPP: TWideStringField;
    zqry_VDCLIENTEQTDPONTOS: TIntegerField;
    zqry_VDCLIENTESALDOCREDITO: TSingleField;
    zqry_VDCLIENTEESTCIVIL: TWideStringField;
    zqry_VDCLIENTECODATEND: TIntegerField;
    zqry_VDCLIENTEDTSYNC: TDateField;
    zqry_VDCLIENTESYNC: TWideStringField;
    zqry_VDCLIENTECARTAORFDI: TIntegerField;
    zqry_VDCLIENTEDIAVENCTO: TIntegerField;
    zqry_VDCLIENTEINSCPRODRURAL: TIntegerField;
    zqry_VDCLIENTECARTAORFID: TIntegerField;
    zqry_VDCLIENTEMEIRURALCLI: TWideStringField;
    zqry_VDCLIENTEARRENDATARIO: TWideStringField;
    zqry_VDCLIENTEDDDCELCLI2: TWideStringField;
    zqry_VDCLIENTECELCLI2: TWideStringField;
    zqry_VDCLIENTECELCLIOPERADORA2: TWideStringField;
    zqry_VDCLIENTECELCLIWHATSAPP2: TWideStringField;
    zqry_VDCLIENTEALUNO: TWideStringField;
    zqry_VDCLIENTERESPALUNO: TWideStringField;
    zqry_FNPLANOPAGCODEMP: TIntegerField;
    zqry_FNPLANOPAGCODFILIAL: TSmallintField;
    zqry_FNPLANOPAGCODPLANOPAG: TIntegerField;
    zqry_FNPLANOPAGDESCPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGPARCPLANOPAG: TIntegerField;
    zqry_FNPLANOPAGAPORCPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGAUTOBAIXAPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGCODEMPCA: TIntegerField;
    zqry_FNPLANOPAGCODFILIALCA: TSmallintField;
    zqry_FNPLANOPAGNUMCONTA: TWideStringField;
    zqry_FNPLANOPAGCODEMPPN: TIntegerField;
    zqry_FNPLANOPAGCODFILIALPN: TSmallintField;
    zqry_FNPLANOPAGCODPLAN: TWideStringField;
    zqry_FNPLANOPAGCODEMPCC: TIntegerField;
    zqry_FNPLANOPAGCODFILIALCC: TSmallintField;
    zqry_FNPLANOPAGANOCC: TSmallintField;
    zqry_FNPLANOPAGCODCC: TWideStringField;
    zqry_FNPLANOPAGATIVOPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGCVPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGCODEMPTBJ: TIntegerField;
    zqry_FNPLANOPAGCODFILIALTBJ: TSmallintField;
    zqry_FNPLANOPAGCODTBJ: TIntegerField;
    zqry_FNPLANOPAGPERCDESC: TFloatField;
    zqry_FNPLANOPAGREGRVCTOPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGRVSABPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGRVDOMPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGRVFERPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGRVDIAPLANOPAG: TWideStringField;
    zqry_FNPLANOPAGDIAVCTOPLANOPAG: TSmallintField;
    zqry_FNPLANOPAGDTINS: TDateField;
    zqry_FNPLANOPAGHINS: TTimeField;
    zqry_FNPLANOPAGIDUSUINS: TWideStringField;
    zqry_FNPLANOPAGDTALT: TDateField;
    zqry_FNPLANOPAGHALT: TTimeField;
    zqry_FNPLANOPAGIDUSUALT: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cb_tipomovExit(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure btn_DESISTIRClick(Sender: TObject);
    procedure sp_ITEM_ADICIONAClick(Sender: TObject);
    procedure cb_clienteExit(Sender: TObject);
    procedure cb_planopagExit(Sender: TObject);
    procedure cb_PRODUTOExit(Sender: TObject);
    procedure edt_VLRUNITARIOExit(Sender: TObject);
    procedure edt_VLRDESCExit(Sender: TObject);
    procedure edt_QTDKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VLRDESCKeyPress(Sender: TObject; var Key: Char);
    procedure edt_VLRUNITARIOKeyPress(Sender: TObject; var Key: Char);
    procedure cb_PRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DESCKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DESCExit(Sender: TObject);
    procedure cb_tipomovKeyPress(Sender: TObject; var Key: Char);
    procedure msk_DATASAIDAKeyPress(Sender: TObject; var Key: Char);
    procedure cb_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure cb_planopagKeyPress(Sender: TObject; var Key: Char);
    procedure cb_VENDEDORKeyPress(Sender: TObject; var Key: Char);
    procedure edt_OBSERVACAOExit(Sender: TObject);
    procedure sp_ITEM_SALVAClick(Sender: TObject);
    procedure edt_CFOPKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ALMOXKeyPress(Sender: TObject; var Key: Char);
    procedure edt_OBSERVACAOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_LOTEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    seqvenda, seqdocvenda, seqitemvenda, verificacoes, almoxarifado, codproduto  : integer;

    precounitario, precominimo, qtdmaxima, totalitem,totalpedido, totaldesconto,totalbruto,calcdesconto : double;

    temlote:string;


  end;

var
  frm_CAD_VENDAS: Tfrm_CAD_VENDAS;

implementation

{$R *.dfm}

uses u_dados,u_funcoes;

procedure Tfrm_CAD_VENDAS.btn_DESISTIRClick(Sender: TObject);
begin
  ZQRY_CADASTRO.Cancel;
  zqry_ITEMCADASTRO.Cancel;
  //
  //limpar campos
end;

procedure Tfrm_CAD_VENDAS.btn_GRAVAClick(Sender: TObject);
begin
  //inherited;
  //verifica��es
  if verificacoes=1 then
  begin
    showmessage('Campos de preenchimento Obrigat�rio est�o pendentes');
  end
  else
  begin
    zqry_CADASTROCODEMP.asinteger:=dm_dados.codemp;
    zqry_CADASTROCODFILIAL.AsInteger:=1;
    zqry_CADASTROCODVENDA.AsInteger:=strtoint(edt_CODVENDA.Text);
    zqry_CADASTROCODTIPOMOV.asinteger:=501;//zqry_EQTIPOMOVCODTIPOMOV.AsInteger;
    if cb_tipomov.Text='PEDIDO DE VENDA' then zqry_cadastrotipovenda.asstring:='V';
    if cb_tipomov.Text='OR�AMENTO' then zqry_CADASTROTIPOVENDA.AsString:='O';
    zqry_CADASTROSUBTIPOVENDA.asstring:='NF';
    zqry_CADASTROSERIE.AsString:='PV';//edt_SERIE.Text;
    zqry_CADASTRODTEMITVENDA.AsDateTime:=strtodate(edt_EMISSAO.text);
    zqry_CADASTRODTSAIDAVENDA.AsDateTime:=strtodate(msk_DATASAIDA.Text);
    zqry_CADASTROCODCLI.AsInteger:=1;//zqry_VDCLIENTECODCLI.AsInteger;
    zqry_CADASTRODOCVENDA.AsInteger:=StrToInt(edt_docvenda.Text);
    zqry_CADASTROCODPLANOPAG.AsInteger:=1;//zqry_FNPLANOPAGCODPLANOPAG.AsInteger;
    zqry_CADASTRODTCOMPVENDA.AsDateTime:=DATE;
    zqry_CADASTROSTATUSVENDA.Value:='P3';
    zqry_CADASTROBLOQVENDA.Value:='N';
    zqry_CADASTROLOCALSERV.Value:='P';
    zqry_CADASTRONROATUALIZADO.Value:='N';
    zqry_CADASTROSITCOMPLVENDA.Value:='N';
    zqry_CADASTRODTINS.AsDateTime:=DATE;
    zqry_CADASTROHINS.AsDateTime:=TIME;
    zqry_CADASTROIDUSUINS.Value:=dm_dados.usuario;
    //zqry_cadastracodcaixa.asstring:=dm_DADOS.estacao;
    if zqry_CADASTRO.State in [dsedit, dsinsert]  then
    begin
      zqry_cadastro.Post;
      btn_NOVO.Enabled:=true;
      pn_CABECALHO.Color:=clgreen;
      lbl_TITULO_FORM.Caption:='Pedido Aberto - Salvo';
      sp_ITEM_ADICIONA.Enabled:=true;
      cb_ATENDENTE.Color:=clwhite;
      cb_vendedor.Color:=clwhite;
      btn_GRAVA.Enabled:=false;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.btn_NOVOClick(Sender: TObject);
begin
  inherited;
  //
  totalpedido:=0;
  totalbruto:=0;
  totaldesconto:=0;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(codvenda) as Sequencia FROM vdvenda');
  zquery1.Open;
  seqvenda:=zquery1.FieldByname('sequencia').asInteger;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(docvenda) as Sequencia FROM vdvenda');
  zquery1.Open;
  seqdocvenda:=zquery1.FieldByname('sequencia').asInteger;
  //
  zqry_EQTIPOMOV.Close;
  zqry_EQtipoMOV.Params.clear;
  zqry_EQtipoMOV.SQL.Clear;
  zqry_EQtipoMOV.SQL.Add('select * from eqtipomov where codemp=:empcod and estipomov=:p2 and codtipomov between :p3 and :p4 order by desctipomov');
  zqry_EQtipoMOV.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_EQtipoMOV.ParamByName('p2').Asstring:='S';
  zqry_EQtipoMOV.ParamByName('p3').asinteger:=400;
  zqry_EQtipoMOV.ParamByName('p4').asinteger:=599;
  zqry_EQtipoMOV.Open;
  if not zqry_EQtipomov.IsEmpty then
  begin
    zqry_EQTIPOmov.First;
    while not zqry_EQTIPOmov.Eof do
    begin
      cb_tipomov.Items.Add(zqry_EQTIPOMOVDESCTIPOMOV.value);
      zqry_eqTIPOmov.Next;
    end;
  end
  else
  begin
    cb_tipomov.Items.Add('Or�amento');
  end;
  //
  zqry_VDCLIENTE.Params.Clear;
  zqry_vdcliente.Close;
  zqry_vdcliente.sql.Clear;
  zqry_vdcliente.SQL.Add('select * from vdcliente where codemp=:empcod and ativocli=:p2 order by razcli');
  zqry_vdcliente.ParamByName('empcod').asinteger:=dm_dados.codemp;
  zqry_vdcliente.ParamByName('p2').AsString:='S';
  zqry_vdcliente.Open;
  if not zqry_vdcliente.IsEmpty then
  begin
    zqry_vdcliente.First;
    while not zqry_vdcliente.Eof do
    begin
      cb_cliente.Items.Add(zqry_vdclienterazcli.value);
      zqry_vdcliente.Next;
    end;
  end
  else
  begin
    cb_cliente.Items.Add('CONSUMIDOR');
  end;
  //
  zqry_FNPLANOPAG.Params.Clear;
  zqry_FNPLANOPAG.Close;
  zqry_FNPLANOPAG.sql.Clear;
  zqry_FNPLANOPAG.SQL.Add('select * from fnplanopag where codemp=:empcod and ativoplanopag=:p2 order by descplanopag');
  zqry_FNPLANOPAG.ParamByName('empcod').asinteger:=dm_dados.codemp;
  zqry_FNPLANOPAG.ParamByName('p2').AsString:='S';
  zqry_FNPLANOPAG.Open;
  if not zqry_FNPLANOPAG.IsEmpty then
  begin
    zqry_FNPLANOPAG.First;
    while not zqry_FNPLANOPAG.Eof do
    begin
      cb_planopag.Items.Add(zqry_fnplanopagdescplanopag.value);
      zqry_FNPLANOPAG.Next;
    end;
  end
  else
  begin
    cb_planopag.Items.Add('VISTA');
  end;
  //

  zqry_CADASTRO.Close;
  zqry_cadastro.open;
  zqry_cadastro.insert;
  btn_novo.Enabled:=false;
  pn_CABECALHO.Color:=clyellow;
  lbl_TITULO_FORM.Caption:='Pedido Aberto';
  edt_CODVENDA.Text:=inttostr(seqvenda+1);
  edt_DOCVENDA.Text:=inttostr(seqdocvenda+1);
  edt_EMISSAO.Text:=datetostr(date);
  msk_DATASAIDA.Text:=datetostr(date);
  edt_CAIXA.Text:=INTTOSTR(DM_DADOS.terminal);
  cb_tipomov.SetFocus;
  cb_tipomov.Color:=clyellow;
  // BLOQUEIA O CADASTRO DE ITENS
  EDT_ITEM.Enabled:=FALSE;
  cb_PRODUTO.Enabled:=FALSE;
  edt_qtd.Text:='1';
  edt_QTD.Enabled:=FALSE;
  edt_VLRUNITARIO.Enabled:=FALSE;
  edt_VLRDESC.Enabled:=FALSE;
  edt_DESC.Enabled:=FALSE;
  edt_VLRTOTAL.Text:='0';
  edt_CFOP.Enabled:=FALSE;
  edt_LOTE.Enabled:=FALSE;
  edt_ALMOX.Enabled:=FALSE;
  EDT_CALCST.Enabled:=FALSE;
end;

procedure Tfrm_CAD_VENDAS.cb_clienteExit(Sender: TObject);
begin
  inherited;
  if cb_cliente.Text='' then verificacoes:=1 else verificacoes:=0;
end;

procedure Tfrm_CAD_VENDAS.cb_clienteKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (key = #13) or (key = #9) then
  begin
    if cb_cliente.Text='' then
    begin
      cb_cliente.Color:=clyellow;
    end
    else
    begin
      cb_planopag.SetFocus;
      cb_planopag.color:=clyellow;
      cb_cliente.Color:=clwhite;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_planopagExit(Sender: TObject);
begin
  inherited;
  if cb_planopag.Text='' then verificacoes:=1 else verificacoes:=0;
end;

procedure Tfrm_CAD_VENDAS.cb_planopagKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) or (key = #9) then
  begin
    if cb_planopag.Text='' then
    begin
      cb_planopag.Color:=clyellow;
    end
    else
    begin
      cb_vendedor.SetFocus;
      cb_vendedor.color:=clyellow;
      cb_planopag.Color:=clwhite;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_PRODUTOExit(Sender: TObject);
begin
  //inherited;
  calcdesconto:=0;
  precounitario:=0;
  precominimo:=0;
  qtdmaxima:=0;
  temlote:=EmptyStr;
  zqry_eqproduto.Params.Clear;
  zqry_eqproduto.Close;
  zqry_eqproduto.SQL.Clear;
  zqry_eqproduto.SQL.Add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca, custoinfoprod, cloteprod from eqproduto where codemp=:empcod and ativoprod=:p2  and descprod=:produto order by descprod ' );
  zqry_eqproduto.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_eqproduto.ParamByName('produto').AsString:=trim(cb_PRODUTO.Text);
  zqry_eqproduto.ParamByName('p2').AsString:='S';
  zqry_eqproduto.Open;
  if zqry_eqproduto.IsEmpty then
  begin
    showmessage('Dados deste produto n�o foram localizados');
    cb_PRODUTO.SetFocus;
  end
  else
  begin
    precounitario:=zqry_EQPRODUTOPRECOBASEPROD.AsFloat;
    qtdmaxima:=zqry_EQPRODUTOSLDPROD.asfloat;
    codproduto:=zqry_EQPRODUTOCODPROD.AsInteger;
    precominimo:=zqry_EQPRODUTOCUSTOINFOPROD.asfloat*1.30;
    edt_VLRUNITARIO.Text:=floattostr(precounitario);
    temlote:=zqry_EQPRODUTOCLOTEPROD.AsString;
    if temlote='S' then edt_LOTE.Enabled:=true else edt_lote.Enabled:=false;
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_PRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #9) then
  begin
    if cb_produto.Text='' then
    begin
      cb_produto.SetFocus;
      cb_PRODUTO.color:=clYellow;
    end
    else
    begin
      edt_QTD.SetFocus;
      edt_qtd.Color:=clyellow;
      cb_produto.Color:=clwhite;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_tipomovExit(Sender: TObject);
begin
  inherited;
  if cb_tipomov.Text='' then verificacoes:=1 else verificacoes:=0;
  if cb_tipomov.Text='Pedido de Venda' then
  begin
    edt_SERIE.Enabled:=false;
    edt_serie.Text:='PV';
  end;
  if cb_tipomov.Text='Or�amento' then
  begin
    edt_serie.Enabled:=false;
    edt_serie.Text:='OC';
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_tipomovKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #9) then
  begin
    if cb_tipomov.Text='' then
    begin
      cb_tipomov.Color:=clyellow;
    end
    else
    begin
      msk_DATASAIDA.SetFocus;
      msk_datasaida.Color:=clyellow;
      cb_tipomov.Color:=clwhite;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.cb_VENDEDORKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) or (key = #9) then
  begin
    if cb_vendedor.Text='' then
    begin
      cb_vendedor.Color:=clyellow;
    end
    else
    begin
      cb_atendente.SetFocus;
      cb_atendente.color:=clyellow;
      cb_vendedor.Color:=clwhite;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_ALMOXKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (key = #13) or (key = #9) then
  begin
    if edt_almox.Text='' then
    begin
      edt_almox.setfocus;
      edt_almox.text:='1';
    end
    else
    begin
      edt_observacao.SetFocus;
      edt_observacao.Color:=clyellow;
      edt_almox.Color:=clwhite;
    end;
  end;
end;


procedure Tfrm_CAD_VENDAS.edt_CFOPKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (key = #13) or (key = #9) then
  begin
    if edt_CFOP.Text='' then
    begin
      edt_cfop.SetFocus;
      edt_cfop.Clear;
    end
    else
    begin
      if temlote='S' then
      begin
        edt_LOTE.color:=clyellow;
        edt_lote.SetFocus;
        edt_CFOP.Color:=clwhite;
      end
      else
      begin
        edt_ALMOX.SetFocus;
        edt_almox.Color:=clyellow;
        edt_cfop.Color:=clwhite;
      end;
    end;
  end
end;

procedure Tfrm_CAD_VENDAS.edt_DESCExit(Sender: TObject);
var
  desconto:double;
begin
  //inherited;
  desconto:=0;
  totalitem:=0;
  if edt_desc.Text='' then desconto:=0;
  if edt_desc.Text<>'' then desconto:=strtofloat(edt_desc.Text);
  if edt_VLRDESC.Text='0' then
  begin
    if desconto=0 then
    begin
      totalitem:=StrToInt(edt_QTD.Text)*strtofloat(edt_VLRUNITARIO.text);
      edt_VLRTOTAL.Text:=formatfloat('##0.00', totalitem);
      edt_vlrtotal.Update;
    end
    else
    begin
      //showmessage(floattostr(desconto));
      calcdesconto:=strtofloat(edt_vlrunitario.Text)-((strtofloat(edt_vlrunitario.Text)*desconto)/100);
      //showmessage(floattostr(calcdesconto));
      totalitem:=calcdesconto*strtofloat(edt_QTD.Text);
      totaldesconto:=totaldesconto+calcdesconto;
      lbl_DESCONTO.Caption:=formatfloat('##0.00',totaldesconto);
      edt_VLRTOTAL.Text:=formatfloat('##0.00', totalitem);
      edt_vlrtotal.Update;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_DESCKeyPress(Sender: TObject; var Key: Char);
var
 testadesc:double;
begin
  if (key = #13) or (key = #9) then
  begin
    if TryStrToFloat(edt_desc.Text,testadesc) then
    begin
      edt_cfop.Clear;
      edt_cfop.SetFocus;
      edt_cfop.Color:=clyellow;
      edt_cfop.Text:='5102';
      edt_DESC.Color:=clwhite;
    end
    else
    begin
      edt_desc.Clear;
      edt_desc.Text:='0';
    end;
  end;

end;

procedure Tfrm_CAD_VENDAS.edt_LOTEKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) or (key = #9) then
  begin
    if edt_lote.Text='' then
    begin
      edt_lote.SetFocus;
      edt_lote.Clear;
    end
    else
    begin
      edt_almox.SetFocus;
      edt_almox.Clear;
      edt_lote.Color:=clwhite;
      edt_almox.Color:=clyellow;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_OBSERVACAOExit(Sender: TObject);
begin
  //inherited;
  SP_ITEM_SALVA.Enabled:=TRUE;
  sp_ITEM_SALVAClick(SENDER);
  SP_ITEM_SALVA.Enabled:=FALSE;
end;

procedure Tfrm_CAD_VENDAS.edt_OBSERVACAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #13) or (key = #9) then
  begin
    edt_OBSERVACAO.Color:=clwhite;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_QTDKeyPress(Sender: TObject; var Key: Char);
var
 testaqtd:double;
begin
  if (key = #13) or (key = #9) then
  begin
    if TryStrToFloat(edt_QTD.Text,testaqtd) then
    begin
      edt_vlrunitario.SetFocus;
      edt_vlrunitario.Color:=clyellow;
      edt_qtd.Color:=clwhite;
    end
    else
    begin
      edt_qtd.Clear;
      edt_qtd.Text:='1';
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_VLRDESCExit(Sender: TObject);
var
  vlrdesconto:double;
begin
  //inherited;
  vlrdesconto:=0;
  totalitem:=0;
  if edt_vlrdesc.Text='' then vlrdesconto:=0;
  if edt_vlrdesc.Text<>'' then vlrdesconto:=strtofloat(edt_vlrdesc.Text);
  if vlrdesconto<strtofloat(edt_VLRUNITARIO.Text) then
  begin
    if vlrdesconto=0 then
    begin
      totalitem:=StrToInt(edt_QTD.Text)*strtofloat(edt_VLRUNITARIO.text);
      edt_VLRTOTAL.Text:=formatfloat('##0.00', totalitem);
      edt_vlrtotal.Update;
    end
    else
    begin
      //showmessage('aqui');
      calcdesconto:=strtofloat(edt_VLRDESC.Text);
      totalitem:=(strtoint(edt_qtd.Text)*strtofloat(edt_vlrunitario.Text))-strtofloat(edt_vlrdesc.Text);
      totaldesconto:=totaldesconto+calcdesconto;
      //showmessage(floattostr(totalitem));
      lbl_DESCONTO.Caption:=formatfloat('##0.00',totaldesconto);
      edt_VLRTOTAL.Text:=formatfloat('##0.00', totalitem);
      edt_vlrtotal.Update;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_VLRDESCKeyPress(Sender: TObject; var Key: Char);
var
 testavlrdesc:double;
begin
  if (key = #13) or (key = #9) then
  begin
    if TryStrToFloat(edt_vlrdesc.Text,testavlrdesc) then
    begin
      edt_desc.Clear;
      edt_desc.SetFocus;
      edt_desc.Color:=clyellow;
      edt_VLRDESC.Color:=clwhite;
    end
    else
    begin
      edt_vlrdesc.Clear;
      edt_vlrdesc.Text:='0';
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_VLRUNITARIOExit(Sender: TObject);
begin
  //inherited;
  if strtofloat(edt_VLRUNITARIO.Text)<precominimo then
  begin
    edt_VLRUNITARIO.SetFocus;
    showmessage('Custo do produto est� sendo comprometido nessa venda');
  end;
end;

procedure Tfrm_CAD_VENDAS.edt_VLRUNITARIOKeyPress(Sender: TObject;
  var Key: Char);
var
  testavlrunitario : Currency;
begin
  if (key = #13) or (key = #9) then
  begin
    if TryStrToCurr(edt_VLRUNITARIO.Text,testavlrunitario) then
    begin
      edt_vlrdesc.Clear;
      edt_vlrdesc.SetFocus;
      edt_vlrdesc.Color:=clyellow;
      edt_vlrunitario.Color:=clwhite;
    end
    else
    begin
      edt_vlrunitario.text:=FloatToStr(precounitario);
      edt_vlrunitario.SetFocus;
    end;
  end;
end;

procedure Tfrm_CAD_VENDAS.FormCreate(Sender: TObject);
begin
  inherited;
//
  zqry_VDCLIENTE.Close;
  zqry_VDCLIENTE.Params.clear;
  zqry_VDCLIENTE.SQL.Clear;
  zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod and ativocli=:p2 order by razcli');
  zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_VDCLIENTE.ParamByName('p2').Asstring:='S';
  zqry_VDCLIENTE.Open;
  if not zqry_vdcliente.IsEmpty then
  begin
    zqry_vdcliente.First;
    while not zqry_vdcliente.Eof do
    begin
      cb_cliente.Items.Add(zqry_VDCLIENTERAZCLI.value);
      zqry_vdcliente.Next;
    end;
  end;
  //
  zqry_fnplanopag.Close;
  zqry_fnplanopag.Params.clear;
  zqry_fnplanopag.SQL.Clear;
  zqry_fnplanopag.SQL.Add('select * from fnplanopag where codemp=:empcod order by descplanopag');
  zqry_fnplanopag.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  //zqry_fnplanopag.ParamByName('p2').Asstring:='S';
  zqry_fnplanopag.Open;
  if not zqry_fnplanopag.IsEmpty then
  begin
    zqry_fnplanopag.First;
    while not zqry_fnplanopag.Eof do
    begin
      cb_cliente.Items.Add(zqry_FNPLANOPAGDESCPLANOPAG.value);
      zqry_fnplanopag.Next;
    end;
  end
end;

procedure Tfrm_CAD_VENDAS.FormShow(Sender: TObject);
begin
  inherited;
  mostratelaaguarde('Carregando Vendas');
  zqry_cadastro.SQL.Add('select * from vdvenda where codemp=:empcod order by codvenda');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
	zqry_cadastro.Open;
  zqry_cadastro.First;

 { zqry_eqalmox.Close;
  zqry_eqalmox.SQL.Clear;
  zqry_eqalmox.sql.Add('select codemp, codalmox, descalmox from eqalmox where codemp=:empcod');
  zqry_eqalmox.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqalmox.Open;
  //
  zqry_eqMARCA.Close;
  zqry_eqMARCA.SQL.Clear;
  zqry_eqMARCA.sql.Add('select codemp, codmarca, descmarca from eqmarca where codemp=:empcod');
  zqry_eqMARCA.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqMARCA.Open;
  //
  zqry_eqGRUPO.Close;
  zqry_eqGRUPO.SQL.Clear;
  zqry_eqGRUPO.sql.Add('select codemp, codgrup, descgrup from eqgrupo where codemp=:empcod');
  zqry_eqGRUPO.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqGRUPO.Open;
  //
  zqry_eqUNIDADE.Close;
  zqry_eqUNIDADE.SQL.Clear;
  zqry_eqUNIDADE.sql.Add('select codemp, codunid, descunid from equnidade where codemp=:empcod');
  zqry_eqUNIDADE.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_eqUNIDADE.Open;
  //
  zqry_NCM.Close;
  zqry_NCM.SQL.Clear;
  zqry_NCM.sql.Add('select codemp, codfisc, descfisc from lfclfiscal where codemp=:empcod');
  zqry_NCM.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_NCM.Open;
  //             }
	lbl_TITULO_FORM.Caption:='Vendas';
  PageControl1.ActivePage:=ts_VENDA;
  //tipoproduto;
  //produtoativo;
   sp_ITEM_ADICIONA.Enabled:=false;
  verificacoes:=0;
  fechatelaaguarde;
end;

procedure Tfrm_CAD_VENDAS.msk_DATASAIDAKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #9) then
  begin
    cb_cliente.Color:=clyellow;
    msk_DATASAIDA.Color:=clwhite;
   end;
end;

procedure Tfrm_CAD_VENDAS.sp_ITEM_ADICIONAClick(Sender: TObject);
begin
  //
  sp_ITEM_SALVA.Enabled:=FALSE;
  zqry_ITEMCADASTRO.Params.Clear;
  zqry_ITEMCADASTRO.close;
  zqry_ITEMCADASTRO.Open;
  zqry_ITEMCADASTRO.Insert;
  seqitemvenda:=0;
  zquery1.Params.Clear;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.SQL.Add('select max(coditvenda)  as sequencia from vditvenda where codvenda=:p1');
  zquery1.ParamByName('p1').AsInteger:=strtoint(edt_CODVENDA.text);
  zquery1.Open;
  seqitemvenda:=1+zquery1.FieldByname('sequencia').asInteger;
 // showmessage(inttostr(seqitemvenda));
  cb_produto.clear;
  edt_item.Text:=inttostr(seqitemvenda);
  edt_item.Update;
  edt_vlrunitario.Clear;
  edt_VLRUNITARIO.Enabled:=true;
  edt_qtd.Clear;
  edt_QTD.Enabled:=true;
  edt_vlrdesc.Clear;
  edt_VLRDESC.Enabled:=true;
  edt_desc.Clear;
  edt_desc.enabled:=true;
  edt_cfop.Clear;
  edt_CFOP.Enabled:=true;
  edt_almox.Enabled:=true;

  //
  cb_PRODUTO.Enabled:=true;
  ZQRY_EQPRODUTO.Close;
  ZQRY_EQPRODUTO.sql.clear;
  ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca, custoinfoprod, cloteprod from eqproduto where codemp=:empcod and ativoprod=:p2 order by descprod');
  zqry_EQPRODUTO.parambyname('empcod').asinteger:=dm_dados.codemp;
  zqry_eqproduto.ParamByName('p2').AsString:='S';
  ZQRY_EQPRODUTO.open;
  if not zqry_eqproduto.IsEmpty then
  begin
    zqry_eqproduto.First;
    while not zqry_eqproduto.Eof do
    begin
      cb_produto.Items.Add(zqry_EQPRODUTODESCPROD.value);
      zqry_eqproduto.Next;
    end;
    cb_produto.Color:=clyellow;
    cb_PRODUTO.SetFocus;
  end
  else
  begin
    showmessage('Produtos n�o localizados');
  end;

end;

procedure Tfrm_CAD_VENDAS.sp_ITEM_SALVAClick(Sender: TObject);
begin
  //inherited;
  zqry_ITEMCADASTROcodemp.Value:=dm_dados.codemp;
    zqry_ITEMCADASTROCODFILIAL.Value:=1;//DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_ITEMCADASTROTIPOVENDA.AsString:='V';
    // CONSULTA NCM NA CLASSIFICA??O FISCAL
    {zqry_ITREGRAFISCAL.Close;
    zqry_ITREGRAFISCAL.SQL.Clear;
    zqry_ITREGRAFISCAL.SQL.Add('select *  from lfitregrafiscal where codtipomov=:tipomov and codemp=:empcod and cvitrf=:mov and noufitrf=:estado');
    zqry_ITREGRAFISCAL.ParamByName('tipomov').AsInteger:=501;
    zqry_ITREGRAFISCAL.parambyname('empcod').asinteger:=dm_dados.codemp;
    zqry_ITREGRAFISCAL.ParamByName('mov').AsString:='V';
    if ufigual=0 then zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='S' else zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='N';
    zqry_ITREGRAFISCAL.Open;
    if zqry_ITREGRAFISCAL.IsEmpty THEN }
    zqry_ITEMCADASTROCODNAT.Value:='5102';
    //else zqry_VDITVENDACODNAT.Value:=zqry_ITREGRAFISCALCODNAT.AsString;
    zqry_ITEMCADASTROCODALMOX.Value:=1;
    zqry_ITEMCADASTROTIPOFISC.Value:='II';
    zqry_ITEMCADASTROTIPOST.Value:='SI';
    zqry_ITEMCADASTROEMMANUT.Value:='N';
    zqry_ITEMCADASTROORIGFISC.Value:='0';
    zqry_ITEMCADASTROCODTRATTRIB.Value:='40';
    zqry_ITEMCADASTROVLRPRODITVENDA.AsCurrency:=strtocurr(edt_QTD.Text)*strtocurr(edt_VLRUNITARIO.Text);
    zqry_ITEMCADASTROVLRDESCITVENDA.AsCurrency:=calcdesconto;
    zqry_ITEMCADASTRODTINS.AsDateTime:=DATE;
    zqry_ITEMCADASTROHINS.AsDateTime:=TIME;
    zqry_ITEMCADASTROCODVENDA.asinteger:=strtoint(edt_CODVENDA.text);
    zqry_ITEMCADASTROCODITVENDA.AsInteger:=strtoint(edt_ITEM.Text);
    zqry_ITEMCADASTROCODPROD.AsInteger:=codproduto;
    zqry_ITEMCADASTROQTDITVENDA.asfloat:=strtofloat(edt_QTD.text);
    zqry_ITEMCADASTROPRECOITVENDA.AsCurrency:=strtocurr(edt_QTD.Text)*strtocurr(edt_VLRUNITARIO.Text);
    zqry_ITEMCADASTROIDUSUINS.Value:=dm_dados.usuario;
    zqry_ITEMCADASTRO.post;
    totalbruto:=totalbruto+(strtofloat(edt_QTD.Text)*strtofloat(edt_VLRUNITARIO.Text));
    totalpedido:=totalbruto-totaldesconto;
    lbl_PARCIAL.Caption:=formatfloat('##0.00',totalpedido);
    lbl_BRUTO.Caption:=formatfloat('##0.00',TOTALBRUTO);
    //
    zqry_UPTVENDA.Params.Clear;
    zqry_UPTVENDA.Close;
    zqry_UPTVENDA.SQL.Clear;
    zqry_UPTVENDA.SQL.Add('update vdvenda set vlrprodvenda=:p1, vlrdescvenda=:p2, vlrvenda=:p3, vlrliqvenda=:p4, vlradicvenda=:p5, codtipocob=:p6, emmanut=:p7 where codvenda=:p8');
    zqry_UPTVENDA.ParamByName('p1').AsCurrency:=totalpedido;
    zqry_UPTVENDA.ParamByName('p2').AsCurrency:=totaldesconto;
    zqry_UPTVENDA.ParamByName('p3').AsCurrency:=totalbruto-totaldesconto;
    zqry_UPTVENDA.ParamByName('p4').AsCurrency:=totalpedido;
    zqry_UPTVENDA.ParamByName('p5').AsCurrency:=0;
    zqry_UPTVENDA.ParamByName('p6').AsInteger:=1;
    zqry_UPTVENDA.ParamByName('p7').AsString:='N';
    zqry_UPTVENDA.parambyname('p8').asintegeR:=strtoint(edt_CODVENDA.Text);
    zqry_UPTVENDA.ExecSQL;
    {zqry_ITEMCADASTRO.Close;
    zqry_ITEMCADASTRO.SQL.Clear;
    zqry_ITEMCADASTRO.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_ITEMCADASTRO.ParamByName('vendacod').AsInteger:=strtoint(edt_codvenda.Text);
    zqry_itemcadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    zqry_itemcadastro.Open;
    dbgrid2.Update;  }

end;

end.
