unit u_checkout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Menus, Data.DB, StrUtils,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset, Math,
  ZSqlUpdate, Datasnap.DBClient, Datasnap.Provider;

type
  Tfrm_CHECKOUT = class(TForm)
    pn_TOP: TPanel;
    pn_CUPOM: TPanel;
    pn_CENTRO: TPanel;
    pn_USUARIO: TPanel;
    lbl_USUARIO: TLabel;
    lbl_HORASISTEMA: TLabel;
    sp_FECHACAIXA: TSpeedButton;
    sp_VENDASDIA: TSpeedButton;
    sp_FINALIZADORES: TSpeedButton;
    Timer1: TTimer;
    pn_LERCODIGO: TPanel;
    pn_PRODUTO: TPanel;
    img_LOGOEMPRESA: TImage;
    Label3: TLabel;
    edt_BUSCAEAN: TEdit;
    PopupMenu1: TPopupMenu;
    btn_SAIR: TBitBtn;
    pn_BOTOES: TPanel;
    sp_CANCELACUPOM: TSpeedButton;
    sp_CANCELAITEM: TSpeedButton;
    sp_ABRECUPOM: TSpeedButton;
    sp_FECHACUPOM: TSpeedButton;
    dbgrid_ITENS: TDBGrid;
    lbl_PRODUTO: TLabel;
    lbl_STATUS: TLabel;
    pn_CENTRO_CLIVEND: TPanel;
    pn_CENTRO_VLRUNITARIO: TPanel;
    pn_CENTRO_VLRTOTAL: TPanel;
    lbl_VALORTOTAL: TLabel;
    lbl_PRECO: TLabel;
    sp_BUSCAS: TSpeedButton;
    sp_ADMINISTRATIVO: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    zqry_EQPRODUTO_CHECKOUT: TZQuery;
    dts_EQPRODUTO_CHECKOUT: TDataSource;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    lbl_QTDITENS: TLabel;
    zqry_ITREGRAFISCAL: TZQuery;
    dts_ITREGRAFISCAL: TDataSource;
    zqry_VDITVENDA: TZQuery;
    dts_VDITVENDA: TDataSource;
    zqry_VDCLIENTE: TZQuery;
    zqry_VDCLIENTECODEMP: TIntegerField;
    zqry_VDCLIENTECODFILIAL: TSmallintField;
    zqry_VDCLIENTECODCLI: TIntegerField;
    zqry_VDCLIENTENOMECLI: TWideStringField;
    dts_VDCLIENTE: TDataSource;
    zqry_SGSEQUENCIA: TZQuery;
    zqry_SGSEQUENCIACODEMP: TIntegerField;
    zqry_SGSEQUENCIACODFILIAL: TSmallintField;
    zqry_SGSEQUENCIANROSEQ: TIntegerField;
    zqry_SGSEQUENCIASGTAB: TWideStringField;
    dts_SGSEQUENCIA: TDataSource;
    zqry_VDVENDA: TZQuery;
    zqry_VDCLIENTESIGLAUF: TWideStringField;
    dts_VDVENDA: TDataSource;
    zqry_VDFRETEVD: TZQuery;
    zqry_VDFRETEVDCODEMP: TIntegerField;
    zqry_VDFRETEVDCODFILIAL: TSmallintField;
    zqry_VDFRETEVDTIPOVENDA: TWideStringField;
    zqry_VDFRETEVDCODVENDA: TIntegerField;
    zqry_VDFRETEVDTIPOFRETEVD: TWideStringField;
    zqry_VDFRETEVDPLACAFRETEVD: TWideStringField;
    zqry_VDFRETEVDUFFRETEVD: TWideStringField;
    zqry_VDFRETEVDVLRFRETEVD: TFloatField;
    zqry_VDFRETEVDVLRSEGFRETEVD: TFloatField;
    zqry_VDFRETEVDQTDFRETEVD: TFloatField;
    zqry_VDFRETEVDPESOBRUTVD: TFloatField;
    zqry_VDFRETEVDPESOLIQVD: TFloatField;
    zqry_VDFRETEVDESPFRETEVD: TWideStringField;
    zqry_VDFRETEVDMARCAFRETEVD: TWideStringField;
    zqry_VDFRETEVDADICFRETEVD: TWideStringField;
    zqry_VDFRETEVDADICFRETEBASEICM: TWideStringField;
    zqry_VDFRETEVDDTINS: TDateField;
    zqry_VDFRETEVDHINS: TTimeField;
    zqry_VDFRETEVDIDUSUINS: TWideStringField;
    dts_VDFRETEVD: TDataSource;
    lbl_CLIENTE: TLabel;
    zqry_VDVENDEDOR: TZQuery;
    zqry_VDVENDEDORCODEMP: TIntegerField;
    zqry_VDVENDEDORCODFILIAL: TSmallintField;
    zqry_VDVENDEDORCODVEND: TIntegerField;
    zqry_VDVENDEDORNOMEVEND: TWideStringField;
    dts_VDVENDEDOR: TDataSource;
    AbreCupom1: TMenuItem;
    pn_CENTRO_INFO: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    zqry_EXCLUIVENDA: TZQuery;
    BuscaProdutos1: TMenuItem;
    N1: TMenuItem;
    CancelaItem1: TMenuItem;
    CancelaCupom1: TMenuItem;
    FechaCupom1: TMenuItem;
    Administrativo1: TMenuItem;
    MudaPreo1: TMenuItem;
    MudaQuantidade1: TMenuItem;
    N2: TMenuItem;
    BuscaVendedorCaixa1: TMenuItem;
    zqry_SGPREFERE: TZQuery;
    zdts_SGPREFERE1: TDataSource;
    zqry_SGPREFERECODEMP: TIntegerField;
    zqry_SGPREFEREESTNEG: TWideStringField;
    zqry_EXCLUIITEM: TZQuery;
    zdts_EXCLUIITEM: TDataSource;
    zqry_ATUALIZAVENDA: TZQuery;
    zdts_ATUALIZAVENDA: TDataSource;
    zqry_INSERT: TZQuery;
    zdts_INSERT: TDataSource;
    zqry_ITREGRAFISCALCODEMP: TIntegerField;
    zqry_ITREGRAFISCALCODFILIAL: TSmallintField;
    zqry_ITREGRAFISCALCODREGRA: TWideStringField;
    zqry_ITREGRAFISCALCODNAT: TWideStringField;
    zqry_ITREGRAFISCALNOUFITRF: TWideStringField;
    zqry_ITREGRAFISCALCVITRF: TWideStringField;
    zqry_ITREGRAFISCALCODTIPOMOV: TIntegerField;
    zqry_ITREGRAFISCALDTINS: TDateField;
    zqry_ITREGRAFISCALHINS: TTimeField;
    zqry_ITREGRAFISCALIDUSUINS: TWideStringField;
    zqry_ITREGRAFISCALDTALT: TDateField;
    zqry_ITREGRAFISCALHALT: TTimeField;
    zqry_ITREGRAFISCALIDUSUALT: TWideStringField;
    lbl_NUMNFCE: TLabel;
    zqry_EQPRODUTO_CHECKOUTCODEMP: TIntegerField;
    zqry_EQPRODUTO_CHECKOUTCODPROD: TIntegerField;
    zqry_EQPRODUTO_CHECKOUTDESCPROD: TWideStringField;
    zqry_EQPRODUTO_CHECKOUTCODFISC: TWideStringField;
    zqry_EQPRODUTO_CHECKOUTSLDPROD: TFloatField;
    zqry_EQPRODUTO_CHECKOUTPRECOBASEPROD: TFloatField;
    zqry_EQPRODUTO_CHECKOUTCODBARPROD: TWideStringField;
    zqry_EQPRODUTO_CHECKOUTCODBALANCA: TIntegerField;
    zqry_VDVENDACODEMP: TIntegerField;
    zqry_VDVENDACODFILIAL: TSmallintField;
    zqry_VDVENDACODCAIXA: TIntegerField;
    zqry_VDVENDACODCLCOMIS: TIntegerField;
    zqry_VDVENDACODVEND: TIntegerField;
    zqry_VDVENDACODCLASCOMIS: TWideStringField;
    zqry_VDVENDATIPOVENDA: TWideStringField;
    zqry_VDVENDASERIE: TWideStringField;
    zqry_VDVENDASUBTIPOVENDA: TWideStringField;
    zqry_VDVENDACODVENDA: TIntegerField;
    zqry_VDVENDAPERCCOMISVENDA: TFloatField;
    zqry_VDVENDAVLRDESCVENDA: TFloatField;
    zqry_VDVENDAVLRPRODVENDA: TFloatField;
    zqry_VDVENDACODCLI: TIntegerField;
    zqry_VDVENDACODPLANOPAG: TIntegerField;
    zqry_VDVENDACODTIPOMOV: TIntegerField;
    zqry_VDVENDADOCVENDA: TIntegerField;
    zqry_VDVENDADTSAIDAVENDA: TDateField;
    zqry_VDVENDADTEMITVENDA: TDateField;
    zqry_VDVENDADTCOMPVENDA: TDateField;
    zqry_VDVENDASTATUSVENDA: TWideStringField;
    zqry_VDVENDABLOQVENDA: TWideStringField;
    zqry_VDVENDALOCALSERV: TWideStringField;
    zqry_VDVENDANROATUALIZADO: TWideStringField;
    zqry_VDVENDASITCOMPLVENDA: TWideStringField;
    zqry_VDVENDADTINS: TDateField;
    zqry_VDVENDAHINS: TTimeField;
    zqry_VDVENDAIDUSUINS: TWideStringField;
    zqry_VDVENDACODEMPCL: TIntegerField;
    zqry_VDVENDACODFILIALCL: TSmallintField;
    zqry_VDVENDACODEMPCM: TIntegerField;
    zqry_VDVENDACODFILIALCM: TIntegerField;
    zqry_VDVENDACODEMPPG: TIntegerField;
    zqry_VDVENDACODFILIALPG: TSmallintField;
    zqry_VDVENDACODEMPCX: TIntegerField;
    zqry_VDVENDACODFILIALCX: TSmallintField;
    zqry_VDVENDACODEMPSE: TIntegerField;
    zqry_VDVENDACODFILIALSE: TSmallintField;
    zqry_VDVENDACODEMPTM: TIntegerField;
    zqry_VDVENDACODFILIALTM: TSmallintField;
    zqry_VDVENDACODEMPVD: TIntegerField;
    zqry_VDVENDACODFILIALVD: TSmallintField;
    zqry_VDVENDACODEMPTC: TIntegerField;
    zqry_VDVENDACODFILIALTC: TSmallintField;
    zqry_VDVENDACODTIPOCOB: TIntegerField;
    zqry_VDITVENDACODEMP: TIntegerField;
    zqry_VDITVENDACODFILIAL: TSmallintField;
    zqry_VDITVENDATIPOVENDA: TWideStringField;
    zqry_VDITVENDACODVENDA: TIntegerField;
    zqry_VDITVENDACODITVENDA: TIntegerField;
    zqry_VDITVENDACODEMPNT: TIntegerField;
    zqry_VDITVENDACODFILIALNT: TSmallintField;
    zqry_VDITVENDACODNAT: TWideStringField;
    zqry_VDITVENDACODEMPPD: TIntegerField;
    zqry_VDITVENDACODFILIALPD: TSmallintField;
    zqry_VDITVENDACODPROD: TIntegerField;
    zqry_VDITVENDACODEMPLE: TIntegerField;
    zqry_VDITVENDACODFILIALLE: TSmallintField;
    zqry_VDITVENDACODLOTE: TWideStringField;
    zqry_VDITVENDACODEMPAX: TIntegerField;
    zqry_VDITVENDACODFILIALAX: TSmallintField;
    zqry_VDITVENDACODALMOX: TIntegerField;
    zqry_VDITVENDAQTDITVENDA: TFloatField;
    zqry_VDITVENDAQTDITVENDACANC: TFloatField;
    zqry_VDITVENDAPRECOITVENDA: TFloatField;
    zqry_VDITVENDAPERCDESCITVENDA: TFloatField;
    zqry_VDITVENDAVLRDESCITVENDA: TFloatField;
    zqry_VDITVENDAPERCICMSITVENDA: TFloatField;
    zqry_VDITVENDAVLRBASEICMSITVENDA: TFloatField;
    zqry_VDITVENDAVLRICMSITVENDA: TFloatField;
    zqry_VDITVENDAPERCIPIITVENDA: TFloatField;
    zqry_VDITVENDAVLRBASEIPIITVENDA: TFloatField;
    zqry_VDITVENDAVLRIPIITVENDA: TFloatField;
    zqry_VDITVENDAVLRLIQITVENDA: TFloatField;
    zqry_VDITVENDAPERCCOMISITVENDA: TFloatField;
    zqry_VDITVENDAVLRCOMISITVENDA: TFloatField;
    zqry_VDITVENDAVLRADICITVENDA: TFloatField;
    zqry_VDITVENDAPERCISSITVENDA: TFloatField;
    zqry_VDITVENDAVLRISSITVENDA: TFloatField;
    zqry_VDITVENDAVLRFRETEITVENDA: TFloatField;
    zqry_VDITVENDAVLRPRODITVENDA: TFloatField;
    zqry_VDITVENDAVLRISENTASITVENDA: TFloatField;
    zqry_VDITVENDAVLROUTRASITVENDA: TFloatField;
    zqry_VDITVENDAREFPROD: TWideStringField;
    zqry_VDITVENDAVLRBASEISSITVENDA: TFloatField;
    zqry_VDITVENDAVLRBASEICMSBRUTITVENDA: TFloatField;
    zqry_VDITVENDAVLRBASEICMSSTITVENDA: TFloatField;
    zqry_VDITVENDAVLRICMSSTITVENDA: TFloatField;
    zqry_VDITVENDAVLRBASECOMISITVENDA: TFloatField;
    zqry_VDITVENDAMARGEMVLAGRITVENDA: TFloatField;
    zqry_VDITVENDAOBSITVENDA: TWideStringField;
    zqry_VDITVENDAORIGFISC: TWideStringField;
    zqry_VDITVENDACODEMPTT: TIntegerField;
    zqry_VDITVENDACODFILIALTT: TIntegerField;
    zqry_VDITVENDACODTRATTRIB: TWideStringField;
    zqry_VDITVENDATIPOFISC: TWideStringField;
    zqry_VDITVENDATIPOST: TWideStringField;
    zqry_VDITVENDACODEMPME: TIntegerField;
    zqry_VDITVENDACODFILIALME: TSmallintField;
    zqry_VDITVENDACODMENS: TIntegerField;
    zqry_VDITVENDASTRDESCITVENDA: TWideStringField;
    zqry_VDITVENDAQTDDEVITVENDA: TFloatField;
    zqry_VDITVENDACODEMPLG: TIntegerField;
    zqry_VDITVENDACODFILIALLG: TSmallintField;
    zqry_VDITVENDACODLOG: TIntegerField;
    zqry_VDITVENDACANCITVENDA: TWideStringField;
    zqry_VDITVENDACODEMPPE: TIntegerField;
    zqry_VDITVENDACODFILIALPE: TSmallintField;
    zqry_VDITVENDACODPE: TIntegerField;
    zqry_VDITVENDADIASPE: TSmallintField;
    zqry_VDITVENDACODEMPCV: TIntegerField;
    zqry_VDITVENDACODFILIALCV: TSmallintField;
    zqry_VDITVENDACODCONV: TIntegerField;
    zqry_VDITVENDACODEMPIF: TIntegerField;
    zqry_VDITVENDACODFILIALIF: TIntegerField;
    zqry_VDITVENDACODFISC: TWideStringField;
    zqry_VDITVENDACODITFISC: TIntegerField;
    zqry_VDITVENDACODEMPCP: TIntegerField;
    zqry_VDITVENDACODFILIALCP: TSmallintField;
    zqry_VDITVENDACODCOMPRA: TIntegerField;
    zqry_VDITVENDACODITCOMPRA: TIntegerField;
    zqry_VDITVENDACODEMPVR: TIntegerField;
    zqry_VDITVENDACODFILIALVR: TSmallintField;
    zqry_VDITVENDATIPOVENDAVR: TWideStringField;
    zqry_VDITVENDACODVENDAVR: TIntegerField;
    zqry_VDITVENDACODITVENDAVR: TIntegerField;
    zqry_VDITVENDACODEMPNS: TIntegerField;
    zqry_VDITVENDACODFILIALNS: TSmallintField;
    zqry_VDITVENDANUMSERIETMP: TWideStringField;
    zqry_VDITVENDAVLRBASEICMSSTRETITVENDA: TFloatField;
    zqry_VDITVENDAVLRICMSSTRETITVENDA: TFloatField;
    zqry_VDITVENDACALCSTCM: TWideStringField;
    zqry_VDITVENDAEMMANUT: TWideStringField;
    zqry_VDITVENDADTINS: TDateField;
    zqry_VDITVENDAHINS: TTimeField;
    zqry_VDITVENDAIDUSUINS: TWideStringField;
    zqry_VDITVENDADTALT: TDateField;
    zqry_VDITVENDAHALT: TTimeField;
    zqry_VDITVENDAIDUSUALT: TWideStringField;
    zqry_VDITVENDATXTDESCITEM: TWideStringField;
    zqry_VDITVENDADESCITEM: TWideStringField;
    zqry_VDITVENDASOLICITANTE: TWideStringField;
    zqry_VDITVENDAprod_DESCPROD: TStringField;
    lbl_QTDCANCELADA: TLabel;
    MemoCancela: TMemo;
    zdts_TIPOSPAGTO: TDataSource;
    zqry_TIPOSPAGTO: TZQuery;
    zqry_TIPOSPAGTOTIPOCOB: TIntegerField;
    zqry_TIPOSPAGTOVALOR: TFloatField;
    zqry_TIPOSPAGTODATA: TDateField;
    zqry_TIPOSPAGTODESCCOB: TWideStringField;
    zqry_TIPOSPAGTOTIPONFE: TIntegerField;
    zqry_TIPOSPAGTOTERMINAL: TIntegerField;
    sp_IDENTIFICACLIENTE: TSpeedButton;
    IdentificaCliente1: TMenuItem;
    zqry_VDVENDAIDECLIDOC: TWideStringField;
    zqry_VDVENDAIDECLITEL: TWideStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_SAIRClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edt_BUSCAEANKeyPress(Sender: TObject; var Key: Char);
    procedure CancelaItem;
    procedure CancelaCupom;
    procedure BuscaEAN;
    procedure BuscaProduto;
    procedure BuscaProdutoPeso;
    procedure sp_ABRECUPOMClick(Sender: TObject);
    procedure AbreCupom1Click(Sender: TObject);
    procedure sp_MUDAPRECOClick(Sender: TObject);
    procedure sp_MUDAQTDClick(Sender: TObject);
    procedure CancelaCupom1Click(Sender: TObject);
    procedure MudaPreo1Click(Sender: TObject);
    procedure MudaQuantidade1Click(Sender: TObject);
    procedure FechaCupom1Click(Sender: TObject);
    procedure edt_QTDKeyPress(Sender: TObject; var Key: Char);
    procedure edt_PRECOVENDAKeyPress(Sender: TObject; var Key: Char);
    procedure CancelaItem1Click(Sender: TObject);
    procedure dbgrid_ITENSCellClick(Column: TColumn);
    procedure dbgrid_ITENSColEnter(Sender: TObject);
    procedure dbgrid_ITENSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Administrativo1Click(Sender: TObject);
    procedure BuscaProdutos1Click(Sender: TObject);
    procedure sp_FECHACUPOMClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sp_CANCELAITEMClick(Sender: TObject);
    procedure sp_CANCELACUPOMClick(Sender: TObject);
    procedure sp_FINALIZADORESClick(Sender: TObject);
    procedure IdentificaCliente1Click(Sender: TObject);
    procedure sp_BUSCASClick(Sender: TObject);
    procedure sp_IDENTIFICACLIENTEClick(Sender: TObject);
    procedure sp_ADMINISTRATIVOClick(Sender: TObject);
  private
    { Private declarations }
    codprodexclui, idprodexclui: integer;
    precoprodexclui,vlrtotalvenda:double;
  public
    { Public declarations }
    //STRING
     multiplica,unitario, edt_ean, identifica:string;
    //INTEGER
    alterapreco, item, itemcancelado, seqsequencia,ufigual, seqvenda:integer;
    //CURRENCY
    valorpeso:currency;
    //DOUBLE
    pesoproduto, precototal, precoproduto, valortotal:double;
  end;

var
  frm_CHECKOUT: Tfrm_CHECKOUT;

implementation

{$R *.dfm}

uses u_dados, u_funcoes, u_fechacupom, u_dlg_administrativo, u_con_buscas,
  u_identificacliente;

procedure Tfrm_CHECKOUT.CancelaItem;
var
  vendaitemcancela:integer;
begin
  Showmessage('Linha com o produto '+trim(zqry_VDITVENDAcodprod.asstring)+' com a quantidade de '+zqry_VDITVENDAQTDITVENDA.asstring+' selecionada para cancelamento');
  case MessageDlg('Deseja realmente excluir este item?',  mtConfirmation,  [mbYes, mbNo], 0) of
    mrYes: //se clicar em sim fa�a isso
  begin
    vendaitemcancela:=0;
    vendaitemcancela:=zqry_VDVENDACODVENDA.AsInteger;
    precoproduto:=(zqry_VDITVENDAVLRPRODITVENDA.asfloat/zqry_VDITVENDAQTDITVENDA.asfloat);
    // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
    precototal:=0;
    //precototal:=dm_dados.zqry_ITFASTSALEQUANT.asfloat*precoproduto;
    valortotal:=valortotal-precoproduto;
    edt_buscaean.Clear;
    multiplica:='1';
    codprodexclui:=0;
    codprodexclui:=zqry_VDITVENDACODPROD.asinteger;
    precoprodexclui:=0;
    precoprodexclui:=zqry_VDITVENDAVLRPRODITVENDA.asfloat;
    idprodexclui:=zqry_VDITVENDACODITVENDA.AsInteger;
    EXECUTASGINICONSP;
    ZQRY_EQPRODUTO_CHECKOUT.Edit;
    ZQRY_EQPRODUTO_CHECKOUTSLDPROD.Value:=ZQRY_EQPRODUTO_CHECKOUTSLDPROD.Value+zqry_VDITVENDAQTDITVENDA.asfloat;
    ZQRY_EQPRODUTO_CHECKOUT.post;
    ZQRY_EQPRODUTO_CHECKOUT.applyupdates();
    // Envio os dados para a tabela e faz a grava��o
    {dm_Dados.zqry_ITFASTSALE.delete;
    dm_Dados.zqry_FASTSALE.Edit;
    dm_Dados.zqry_FASTSALEVALORTOTAL.Value:=dm_Dados.zqry_FASTSALEVALORTOTAL.Value-dm_dados.zqry_ITFASTSALEVLRVENDA.Value;
    dm_Dados.zqry_fastsale.post;  }
    //
    //showmessage('ID '+inttostr(idprodexclui)+' Produto '+inttostr(codprodexclui)+' Empresa '+inttostr(dm_dados.codemp)+' Venda '+dbtext1.Caption);
    {zqry_excluiitem.close;
    zqry_excluiitem.SQL.Clear;
    zqry_excluiitem.SQL.Add('update vditvenda set qtditvenda=:quant where codprod=:prodcod and codemp=:empcod and codvenda=:vendacod and coditvenda=:item');
    zqry_excluiitem.ParamByName('quant').Asfloat:=0;
    zqry_excluiitem.ParamByName('prodcod').AsInteger:=codprodexclui;
    zqry_excluiitem.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluiitem.ParamByName('vendacod').AsInteger:=strtoint(dbtext5.caption);
    zqry_excluiitem.ParamByName('item').AsInteger:=idprodexclui;
    zqry_excluiitem.execsql;}
    zqry_excluiitem.close;
    zqry_excluiitem.SQL.Clear;
    zqry_excluiitem.SQL.Add('delete from vditvenda where codprod=:prodcod and codemp=:empcod and codvenda=:vendacod and coditvenda=:item');
    zqry_excluiitem.ParamByName('prodcod').AsInteger:=codprodexclui;
    zqry_excluiitem.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluiitem.ParamByName('vendacod').AsInteger:=vendaitemcancela;
    zqry_excluiitem.ParamByName('item').AsInteger:=idprodexclui;
    zqry_excluiitem.execsql;

    {zqry_ATUALIZAVENDA.Close;
    zqry_atualizavenda.sql.Clear;
    zqry_atualizavenda.SQL.Add('update vdvenda set vlrprodvenda=:vlrvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_atualizavenda.ParamByName('vlrvenda').AsFloat:=(vlrtotalvenda-precoprodexclui);
    zqry_ATUALIZAVENDA.ParamByName('vendacod').AsInteger:=strtoint(DBText5.caption);
    zqry_ATUALIZAVENDA.ParamByName('EMPCOD').AsInteger:=dm_dados.codemp;
    zqry_atualizavenda.ExecSQL;}
    lbl_VALORTOTAL.Refresh;
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    LBL_VALORTOTAL.Update;
    //SHOWMESSAGE(FLOATTOSTR(VALORTOTAL));
//    lbl_VALORTOTAL.Caption:=floattostr(zqry_VDVENDAVLRPRODVENDA.AsFloat);
    //showmessage(zqry_VDVENDAVLRPRODVENDA.AsString);
   { lbl_VALORTOTAL.Update;}
    zqry_vdvenda.close;
    zqry_vdvenda.SQL.Clear;
    zqry_vdvenda.SQL.Add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vdvenda.ParamByName('vendacod').AsInteger:=vendaitemcancela;
    zqry_vdvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vdvenda.open;
    //
    zqry_vditvenda.close;
    zqry_vditvenda.SQL.Clear;
    zqry_vditvenda.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vditvenda.ParamByName('vendacod').AsInteger:=vendaitemcancela;
    zqry_vditvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vditvenda.open;
   { ZQRY_EQPRODUTO_checkout.Close;
    ZQRY_EQPRODUTO_checkout.sql.clear;
    ZQRY_EQPRODUTO_checkout.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod order by descprod');
    zqry_EQPRODUTO_checkout.parambyname('empcod').asinteger:=dm_dados.codemp;
    ZQRY_EQPRODUTO_checkout.open;}
  //  dm_dados.zqry_FASTSALE.applyupdates();
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    dbgrid_itens.Enabled:=false;
    lbl_produto.caption:='[ITEM CANCELADO]';
    lbl_preco.Caption:='';
    edt_buscaean.Clear;
    edt_buscaean.setfocus;
    //dbgrid_itens.Refresh;
    itemcancelado:=itemcancelado+1;
    lbl_QTDCANCELADA.Caption:='Cancelados: '+INTTOSTR(itemcancelado);
    lbl_QTDCANCELADA.Refresh;
    lbl_QTDCANCELADA.update;
    memocancela.Visible:=true;
    MemoCancela.Lines.Add('Produto '+inttostr(codprodexclui)+' no valor de '+FormatFloat('R$ #,,,,0.00', precoprodexclui) +' cancelado do cupom N.º '+inttostr(vendaitemcancela));
    dbgrid_itens.update;
    dbgrid_ITENS.DataSource.DataSet.Last();
  end;
  mrNo: //se clicar em n�o fa�a isso
  begin
    case MessageBox(Handle, 'Deseja realmente continuar cancelando itens?',
      'Continuar cancelando?', MB_YESNO + MB_ICONQUESTION) of
      IDYES:  //se clicar em sim fa�a isso
      begin
        DBGrid_Itens.SelectedRows.CurrentRowSelected := True;
      end;
      IDNO:  //se clicar em n�o fa�a isso
      begin
        dbgrid_itens.Enabled:=false;
        lbl_PRODUTO.Caption:='';
        lbl_preco.Caption:='';
      end;
    end;
  end;
end;
end;

procedure Tfrm_CHECKOUT.CancelaCupom;
var
 cancelavenda:integer;
begin
cancelavenda:=0;
cancelavenda:=zqry_VDVENDACODVENDA.AsInteger;
if lbl_status.Caption='CAIXA DISPONIVEL !' then
begin
  showmessage('NAO HA CUPONS EM ABERTO');
end
else
begin
  if MessageBox(HANDLE, 'DESEJA CANCELAR ESTE CUPOM ?'#13'Confirme com SIM'#13'Nao Cancelar clique em NAO', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
  begin
  //  showmessage('N�O H� CUPOM ABERTO PARA CANCELAR');
    Executasginiconsp;
    zqry_excluivenda.close;
    zqry_excluivenda.SQL.Clear;
    zqry_excluivenda.SQL.Add('delete from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluivenda.ParamByName('vendacod').AsInteger:=cancelavenda;
    zqry_excluivenda.execsql;
    //
    Executasginiconsp;
    zqry_excluivenda.close;
    zqry_excluivenda.SQL.Clear;
    zqry_excluivenda.SQL.Add('delete from vdvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluivenda.ParamByName('vendacod').AsInteger:=cancelavenda;
    zqry_excluivenda.execsql;
    //
    alterapreco:=1;
    valortotal:=0;
    precoproduto:=0;
    precototal:=0;
    multiplica:='1';
    item:=0;
    itemcancelado:=0;
    valortotal:=0;
    lbl_CLIENTE.Caption:='';
    lbl_QTDITENS.Caption:='';
    lbl_PRECO.Caption:='';
    lbl_VALORTOTAL.caption:='';
    lbl_STATUS.Caption:='CAIXA DISPONIVEL';
    lbl_PRODUTO.Caption:='';
    zqry_vdvenda.close;
    zqry_VDITVENDA.Close;
    zqry_EQPRODUTO_CHECKOUT.Close;
    DBGrid_Itens.visible:=true;
    dbgrid_itens.Update;
    showmessage('CUPOM CANCELADO COM SUCESSO');
    btn_SAIR.enabled:=true;
    edt_BUSCAean.clear;
    edt_BUSCAEAN.setfocus;
  end
  else
  begin
    //
  end;
end;


end;

procedure Tfrm_CHECKOUT.BuscaProduto;
var
 i,  prod_cod, contador  : integer;
 sldatual,qtd_fim:double;
begin
  i:=1;
  qtd_fim:=strtofloat(multiplica);
  item:=item+1;
  zqry_SGPREFERE.Close;
  zqry_sgprefere.Params.Clear;
  zqry_sgprefere.SQL.Clear;
  zqry_sgprefere.SQL.Add('select codemp, estneg from sgprefere1 where codemp=:empcod');
  zqry_sgprefere.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
  zqry_sgprefere.Open;
  if (zqry_SGPREFEREESTNEG.asstring='N') and (zqry_EQPRODUTO_CHECKOUTSLDPROD.AsFloat<strtofloat(multiplica)) then
  begin
    Showmessage('Estoque com Bloqueio para Saldo Negativo'#13'Verifique as Preferências Gerais');
    edt_BUSCAEAN.Clear;
    edt_ean:=EmptyStr;
  end
  else
  begin
    zqry_vditvenda.close;
    zqry_vditvenda.SQL.Clear;
    zqry_vditvenda.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vditvenda.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
    zqry_vditvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vditvenda.open;
    dbgrid_itens.Refresh;
    dbgrid_itens.update;
    dbgrid_ITENS.DataSource.DataSet.Last();
    //SE NAO CONTROLA ESTOQUE
    //  dbt_Descprod.visible:=true;
    // CARREGA O PRE�O DO PRODUTO
    //edt_PRECOVENDA.Clear;
    if alterapreco=1 then unitario:=FormatFloat('##0.0000', ZQRY_EQPRODUTO_CHECKOUTPRECOBASEPROD.asfloat);//dm_Dados.cds_EQPRODUTOPRECOBASEPROD.Asstring;
    precoproduto:=strtofloat(unitario);//dm_dados.cds_EQPRODUTOPRECOBASEPROD.asfloat;
    // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
    precototal:=0;
    precototal:=strtofloat(multiplica)*precoproduto;
    // VALOR TOTAL SOMA TODOS OS PRECOS TOTAIS PARA GERAR O GRANDE TOTAL
    valortotal:=valortotal+precototal;
    lbl_produto.Caption:=trim(ZQRY_EQPRODUTO_CHECKOUTDESCPROD.value);
    lbl_preco.Caption:='R$ '+FormatFloat('#,,,,0.00', precoproduto);
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    // Envio os dados para a tabela e faz a grava��o
    //item da venda
   if zqry_vditvenda.State in [dsInactive] then
   begin
    zqry_vditvenda.close;
    zqry_vditvenda.SQL.Clear;
    zqry_vditvenda.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vditvenda.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
    zqry_vditvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vditvenda.open;
   end;
    zqry_VDITVENDA.append;
    zqry_VDITVENDAcodemp.Value:=dm_dados.codemp;
    zqry_VDITVENDACODFILIAL.Value:=1;//DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDATIPOVENDA.AsString:='V';
    zqry_VDITVENDACODEMPNT.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALNT.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPPD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALPD.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPAX.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALAX.value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPTT.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALTT.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDATIPOVENDA.AsString:='V';
    // CONSULTA NCM NA CLASSIFICA��O FISCAL
    zqry_ITREGRAFISCAL.Close;
    zqry_ITREGRAFISCAL.SQL.Clear;
    zqry_ITREGRAFISCAL.SQL.Add('select *  from lfitregrafiscal where codtipomov=:tipomov and codemp=:empcod and cvitrf=:mov and noufitrf=:estado');
    zqry_ITREGRAFISCAL.ParamByName('tipomov').AsInteger:=501;
    zqry_ITREGRAFISCAL.parambyname('empcod').asinteger:=dm_dados.codemp;
    zqry_ITREGRAFISCAL.ParamByName('mov').AsString:='V';
    if ufigual=0 then zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='S' else zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='N';
    zqry_ITREGRAFISCAL.Open;
    if zqry_ITREGRAFISCAL.IsEmpty THEN zqry_VDITVENDACODNAT.Value:='5102' else zqry_VDITVENDACODNAT.Value:=zqry_ITREGRAFISCALCODNAT.AsString;
    zqry_VDITVENDACODALMOX.Value:=1;
    zqry_VDITVENDATIPOFISC.Value:='II';
    zqry_VDITVENDATIPOST.Value:='SI';
    zqry_VDITVENDAEMMANUT.Value:='N';
    zqry_VDITVENDAORIGFISC.Value:='0';
    zqry_VDITVENDACODTRATTRIB.Value:='40';
    zqry_VDITVENDAVLRPRODITVENDA.AsCurrency:=precoproduto*strtofloat(multiplica);//dm_dados.zqry_ITFASTSALEVLRVENDA.AsCurrency;
    zqry_VDITVENDAVLRDESCITVENDA.AsCurrency:=0.00;
    zqry_VDITVENDADTINS.AsDateTime:=DATE;
    zqry_VDITVENDAHINS.AsDateTime:=TIME;
    zqry_VDITVENDACODVENDA.Value:=seqsequencia;
    zqry_VDITVENDACODITVENDA.AsInteger:=item;
    zqry_VDITVENDACODPROD.AsInteger:=ZQRY_EQPRODUTO_CHECKOUTCODPROD.AsInteger;
    zqry_VDITVENDAQTDITVENDA.asfloat:=strtofloat(multiplica);
    zqry_VDITVENDAPRECOITVENDA.AsCurrency:=(precoproduto*strtofloat(multiplica))/strtofloat(multiplica);
    zqry_VDITVENDAIDUSUINS.Value:=dm_dados.usuario;
    zqry_VDITVENDA.post;
    zqry_vditvenda.ApplyUpdates();

    //
    ZQRY_EQPRODUTO_checkout.Close;
    ZQRY_EQPRODUTO_checkout.sql.clear;
    ZQRY_EQPRODUTO_checkout.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod order by descprod');
    zqry_EQPRODUTO_checkout.parambyname('empcod').asinteger:=dm_dados.codemp;
    ZQRY_EQPRODUTO_checkout.open;
    //
    lbl_QTDITENS.Caption:='Itens: '+INTTOSTR(zqry_vditvenda.RecordCount);
    lbl_QTDITENS.Refresh;
    lbl_QTDITENS.update;
    dbgrid_itens.Refresh;
    dbgrid_itens.update;
    dbgrid_ITENS.DataSource.DataSet.Last();
    //dbt_DESCPROD.Update;
    edt_buscaean.Clear;
    edt_ean:=EmptyStr;
    multiplica:='1';
    alterapreco:=1;
  end;
end;

procedure Tfrm_CHECKOUT.BuscaProdutoPeso;
var
 i,  prod_cod, contador  : integer;
 sldatual,qtd_fim:double;
begin
  i:=1;
  qtd_fim:=strtofloat(multiplica);
  item:=item+1;
  zqry_SGPREFERE.Close;
  zqry_sgprefere.Params.Clear;
  zqry_sgprefere.SQL.Clear;
  zqry_sgprefere.SQL.Add('select codemp, estneg from sgprefere1 where codemp=:empcod');
  zqry_sgprefere.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
  zqry_sgprefere.Open;
  if (zqry_SGPREFEREESTNEG.asstring='N') and (zqry_EQPRODUTO_CHECKOUTSLDPROD.AsFloat<strtofloat(multiplica)) then
  begin
    Showmessage('Estoque com Bloqueio para Saldo Negativo'#13'Verifique as Preferências Gerais');
    edt_BUSCAEAN.Clear;
    edt_ean:=EmptyStr;
  end
  else
  begin
    zqry_vditvenda.close;
    zqry_vditvenda.SQL.Clear;
    zqry_vditvenda.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vditvenda.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
    zqry_vditvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vditvenda.open;
    dbgrid_itens.Refresh;
    dbgrid_itens.update;
    dbgrid_ITENS.DataSource.DataSet.Last();
    //SE NAO CONTROLA ESTOQUE
    //  dbt_Descprod.visible:=true;
    // CARREGA O PRE�O DO PRODUTO
    //edt_PRECOVENDA.Clear;
    if alterapreco=1 then unitario:=FormatFloat('##0.0000', ZQRY_EQPRODUTO_CHECKOUTPRECOBASEPROD.asfloat);//dm_Dados.cds_EQPRODUTOPRECOBASEPROD.Asstring;
    precoproduto:=strtofloat(unitario);//dm_dados.cds_EQPRODUTOPRECOBASEPROD.asfloat;
    // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
    precototal:=0;
    precototal:=strtofloat(multiplica)*(precoproduto*SimpleRoundto(pesoproduto,-3));
    // VALOR TOTAL SOMA TODOS OS PRECOS TOTAIS PARA GERAR O GRANDE TOTAL
    valortotal:=valortotal+precototal;
    lbl_produto.Caption:=trim(ZQRY_EQPRODUTO_CHECKOUTDESCPROD.value);
    lbl_preco.Caption:='R$ '+FormatFloat('#,,,,0.00', precoproduto);
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    // Envio os dados para a tabela e faz a grava��o
    //item da venda
   if zqry_vditvenda.State in [dsInactive] then
   begin
    zqry_vditvenda.close;
    zqry_vditvenda.SQL.Clear;
    zqry_vditvenda.SQL.Add('select * from vditvenda where codvenda=:vendacod and codemp=:empcod');
    zqry_vditvenda.ParamByName('vendacod').AsInteger:=zqry_VDVENDACODVENDA.AsInteger;
    zqry_vditvenda.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
    zqry_vditvenda.open;
   end;
    zqry_VDITVENDA.append;
    zqry_VDITVENDAcodemp.Value:=dm_dados.codemp;
    zqry_VDITVENDACODFILIAL.Value:=1;//DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDATIPOVENDA.AsString:='V';
    zqry_VDITVENDACODEMPNT.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALNT.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPPD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALPD.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPAX.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALAX.value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDACODEMPTT.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
    zqry_VDITVENDACODFILIALTT.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
    zqry_VDITVENDATIPOVENDA.AsString:='V';
    // CONSULTA NCM NA CLASSIFICA��O FISCAL
    zqry_ITREGRAFISCAL.Close;
    zqry_ITREGRAFISCAL.SQL.Clear;
    zqry_ITREGRAFISCAL.SQL.Add('select *  from lfitregrafiscal where codtipomov=:tipomov and codemp=:empcod and cvitrf=:mov and noufitrf=:estado');
    zqry_ITREGRAFISCAL.ParamByName('tipomov').AsInteger:=501;
    zqry_ITREGRAFISCAL.parambyname('empcod').asinteger:=dm_dados.codemp;
    zqry_ITREGRAFISCAL.ParamByName('mov').AsString:='V';
    if ufigual=0 then zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='S' else zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='N';
    zqry_ITREGRAFISCAL.Open;
    if zqry_ITREGRAFISCAL.IsEmpty THEN zqry_VDITVENDACODNAT.Value:='5102' else zqry_VDITVENDACODNAT.Value:=zqry_ITREGRAFISCALCODNAT.AsString;
    zqry_VDITVENDACODALMOX.Value:=1;
    zqry_VDITVENDATIPOFISC.Value:='II';
    zqry_VDITVENDATIPOST.Value:='SI';
    zqry_VDITVENDAEMMANUT.Value:='N';
    zqry_VDITVENDAORIGFISC.Value:='0';
    zqry_VDITVENDACODTRATTRIB.Value:='40';
    zqry_VDITVENDAVLRPRODITVENDA.AsCurrency:=valorpeso;//dm_dados.zqry_ITFASTSALEVLRVENDA.AsCurrency;
    zqry_VDITVENDAVLRDESCITVENDA.AsCurrency:=0.00;
    zqry_VDITVENDADTINS.AsDateTime:=DATE;
    zqry_VDITVENDAHINS.AsDateTime:=TIME;
    zqry_VDITVENDACODVENDA.Value:=seqsequencia;
    zqry_VDITVENDACODITVENDA.AsInteger:=item;
    zqry_VDITVENDACODPROD.AsInteger:=ZQRY_EQPRODUTO_CHECKOUTCODPROD.AsInteger;
    zqry_VDITVENDAQTDITVENDA.asfloat:=SimpleRoundto(pesoproduto,-3);
    zqry_VDITVENDAPRECOITVENDA.AsCurrency:=(precoproduto*strtofloat(multiplica))/strtofloat(multiplica);
    zqry_VDITVENDAIDUSUINS.Value:=dm_dados.usuario;
    zqry_VDITVENDA.post;
    zqry_vditvenda.ApplyUpdates();

    //
    ZQRY_EQPRODUTO_checkout.Close;
    ZQRY_EQPRODUTO_checkout.sql.clear;
    ZQRY_EQPRODUTO_checkout.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod order by descprod');
    zqry_EQPRODUTO_checkout.parambyname('empcod').asinteger:=dm_dados.codemp;
    ZQRY_EQPRODUTO_checkout.open;
    //
    lbl_QTDITENS.Caption:='Itens: '+INTTOSTR(zqry_vditvenda.RecordCount);
    lbl_QTDITENS.Refresh;
    lbl_QTDITENS.update;
    dbgrid_itens.Refresh;
    dbgrid_itens.update;
    dbgrid_ITENS.DataSource.DataSet.Last();
    //dbt_DESCPROD.Update;
    edt_buscaean.Clear;
    edt_ean:=EmptyStr;
    multiplica:='1';
    alterapreco:=1;
    precototal:=0;
    precoproduto:=0;
    pesoproduto:=0;
  end;
end;


procedure Tfrm_CHECKOUT.BuscaProdutos1Click(Sender: TObject);
begin
frm_con_buscas.show;
end;

procedure Tfrm_CHECKOUT.CancelaCupom1Click(Sender: TObject);
begin
  cancelacupom;
end;

procedure Tfrm_CHECKOUT.CancelaItem1Click(Sender: TObject);
var
produtoatual : string;
begin
  if lbl_status.caption='CUPOM ABERTO' then
  begin
    DBGrid_Itens.enabled:=true;
    showmessage('Clique ou Mova com as setas para a linha que deseja Cancelar [pressione ENTER] para seleciona-la');
    DBGrid_Itens.SelectedRows.CurrentRowSelected := True;
    dbgrid_itens.SetFocus;
  end
  else
  begin
    MessageBeep(16);
    produtoatual:=lbl_produto.Caption;
    lbl_produto.Caption:='SEM ITENS NO CUPOM';
    lbl_produto.Update;
    sleep(3000);
    lbl_produto.Caption:=produtoatual;
    produtoatual:='';
  end;
end;

procedure Tfrm_CHECKOUT.dbgrid_ITENSCellClick(Column: TColumn);
begin
cancelaitem;
end;

procedure Tfrm_CHECKOUT.dbgrid_ITENSColEnter(Sender: TObject);
begin
cancelaitem;
end;

procedure Tfrm_CHECKOUT.dbgrid_ITENSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
//Muda Cor Linha DBGrid1.
If zqry_VDITVENDAQTDITVENDA.asfloat=0 then
begin
  dbgrid_ITENS.Canvas.Font.Color := clRed;
  dbgrid_ITENS.Canvas.Font.Style:= [fsBold];
  dbgrid_ITENS.Canvas.FillRect(Rect);
  dbgrid_ITENS.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
end;

procedure Tfrm_CHECKOUT.BuscaEAN;
var
 i, qtd_fim, prod_cod, contador,tamanho,testanum  : integer;
 sldatual, precoproduto:double;
 PrimeiraLetra, SeqCodigo, SeqPreco : string;
begin
  tamanho:=0;
  tamanho:=Length(edt_ean);
  primeiraletra:=copy(edt_ean,1,1);
  // TAMANHO 13 E COMECA COM 2
  if (tamanho = 13) and (primeiraletra='2') then
  begin
    seqcodigo:=copy(edt_ean,2,6);
    seqpreco:=copy(edt_ean,8,5);
    ZQRY_EQPRODUTO_CHECKOUT.Params.Clear;
    ZQRY_EQPRODUTO_CHECKOUT.Close;
    ZQRY_EQPRODUTO_CHECKOUT.sql.clear;
    ZQRY_EQPRODUTO_checkout.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod and codbalanca=:prodcod');
    ZQRY_EQPRODUTO_checkout.parambyname('prodcod').asinteger:=strtoint(RemoveZeros(seqcodigo));
    zqry_eqproduto_checkout.parambyname('empcod').asinteger:=dm_dados.codemp;
    ZQRY_EQPRODUTO_checkout.open;
    if zQRY_EQPRODUTO_checkout.IsEmpty then
    begin
      edt_buscaean.setfocus;
      edt_buscaean.Clear;
      edt_ean:=emptystr;
      MostraTelaNotifica('PRODUTO NAO LOCALIZADO','EQPRODUTO - CODPROD|CODBARPROD');
    end
    else
    begin
      zqry_SGPREFERE.Close;
      zqry_sgprefere.Params.Clear;
      zqry_sgprefere.SQL.Clear;
      zqry_sgprefere.SQL.Add('select codemp, estneg from sgprefere1 where codemp=:empcod');
      zqry_sgprefere.ParamByName('empcod').AsInteger:=dm_DADOS.codemp;
      zqry_sgprefere.Open;
      if alterapreco=1 then precoproduto:=ZQRY_EQPRODUTO_CHECKOUTPRECOBASEPROD.AsFloat;
      if alterapreco=2 then precoproduto:=strtofloat(unitario);
      valorpeso:=strtocurr(removezeros(seqpreco))/100;
      pesoproduto:=(valorpeso*1)/precoproduto;
      BUSCAPRODUTOPESO;
    end;
  end;
  // TAMANHO 13 E NAO COMECA COM 2
  if (tamanho >= 10) and (primeiraletra<>'2') then
  begin
    ZQRY_EQPRODUTO_checkout.Params.Clear;
    ZQRY_EQPRODUTO_checkout.Close;
    ZQRY_EQPRODUTO_checkout.sql.clear;
    ZQRY_EQPRODUTO_checkout.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod and codbarprod=:ean');
    ZQRY_EQPRODUTO_checkout.parambyname('ean').value:=trim(edt_ean);
    zqry_eqproduto_checkout.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    ZQRY_EQPRODUTO_checkout.open;
    if ZQRY_EQPRODUTO_checkout.IsEmpty then
    begin
      showmessage('Produto não localizado');
      edt_BUSCAEAN.Clear;
      edt_buscaean.SetFocus;
    end
    else
    begin
       BuscaProduto;
    end;
  end;
  // TAMANHO 13 E NAO COMECA COM 2
  if (tamanho <= 9) then
  begin
    if TryStrToInt(edt_ean,testanum) then
      begin
        ZQRY_EQPRODUTO_checkout.Params.Clear;
        ZQRY_EQPRODUTO_checkout.Close;
        ZQRY_EQPRODUTO_checkout.SQL.Clear;
        ZQRY_EQPRODUTO_checkout.SQL.Add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=:empcod and codprod=:prodcod');
        ZQRY_EQPRODUTO_checkout.ParamByName('prodcod').AsInteger:=strtoint(edt_ean);
        zqry_eqproduto_checkout.ParamByName('empcod').AsInteger:=dm_dados.codemp;
        ZQRY_EQPRODUTO_checkout.open;
        IF ZQRY_EQPRODUTO_checkout.IsEmpty then
        begin
          edt_buscaean.setfocus;
          edt_buscaean.Clear;
          edt_ean:=EmptyStr;
          MostraTelaNotifica('PRODUTO NAO LOCALIZADO','EQPRODUTO - CODPROD|CODBARPROD');
        end
        else
        begin
          if (alterapreco=2) and (zqry_EQPRODUTO_CHECKOUTPRECOBASEPROD.AsFloat>0) then
          begin
            showmessage('Produto não pode ser vendido nesse preço. Viola regras de integridade');
            edt_BUSCAEAN.Clear;
            edt_buscaean.SetFocus;
          end
          else
          begin
            BuscaProduto;
          end;
        end;
      end;
    end;
  end;


procedure Tfrm_CHECKOUT.AbreCupom1Click(Sender: TObject);
begin
sp_ABRECUPOMClick(Sender);
end;

procedure Tfrm_CHECKOUT.Administrativo1Click(Sender: TObject);
begin
frm_dlg_administrativo.show;
end;

procedure Tfrm_CHECKOUT.btn_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_CHECKOUT.edt_BUSCAEANKeyPress(Sender: TObject; var Key: Char);
var
  testanum, tamanhocodigo,contax,contaa,multigual:integer;
  primeirocaracter,vlredtean:string;
begin
  edt_ean:=emptystr;
  vlredtean:=emptystr;
  alterapreco:=0;
  contax:=0;
  contaa:=0;
  multigual:=0;
  unitario:=emptystr;
  vlredtean:=edt_buscaean.Text;
  alterapreco:=1;
  contax:=Pos('*', edt_buscaean.text);
  if contax>0 then
  begin
    multiplica:=(LeftStr(edt_buscaean.Text,contax-1));
    edt_ean:=copy(vlredtean , Pos('*',vlredtean)+1,length(vlredtean));
    multigual:=1;
  end;
  //showmessage(multiplica);

  contaa:=Pos('=', edt_buscaean.text);
  if contaa>0 then
  begin
    unitario:=(LeftStr(edt_buscaean.Text,contaa-1));
    edt_ean:=copy(vlredtean , Pos('=',vlredtean)+1,length(vlredtean));
    alterapreco:=2; //alterapreco igual 2 é preço alterado
    multigual:=1;
    //edt_ean:=(RightStr(edt_buscaean.Text,contaa));
    //showmessage(edt_ean);
  end;
  //showmessage(multiplica);

  if (multigual=0) then edt_ean:=edt_buscaean.Text;


  if (key=#13) and (edt_ean<>'') and (lbl_status.Caption='CAIXA DISPONIVEL') then
  begin
    //showmessage(unitario);
    //showmessage(edt_ean);
    sp_ABRECUPOMClick(Self);
    tamanhocodigo:=0;
    tamanhocodigo:=Length(edt_ean);
    primeirocaracter:=copy(edt_ean,1,1);
    if (tamanhocodigo >= 12) then
    BEGIN
      buscaean;
    END;
    if (tamanhocodigo <10) then
    begin
      //SHOWMESSAGE(EDT_EAN);
      if TryStrToInt(edt_ean,testanum) then
      begin
        BuscaEAN ;
      end
      else
      begin
        edt_buscaean.Clear;
        edt_buscaean.SetFocus;
      end;
    end;
  end
  else
  if(key = #13) and (edt_ean<>'') and (lbl_status.Caption='CUPOM ABERTO') then
  begin
   //showmessage(unitario);
   //showmessage(edt_ean);
   tamanhocodigo:=0;
   tamanhocodigo:=Length(edt_ean);
   primeirocaracter:=copy(edt_ean,1,1);
    if (tamanhocodigo >= 12) then
    BEGIN
      buscaean;
    END;
    if (tamanhocodigo <10) then
    begin
      if TryStrToInt(edt_ean,testanum) then
      begin
        BuscaEAN ;
      end
      else
      begin
        edt_buscaean.Clear;
        edt_buscaean.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_CHECKOUT.edt_PRECOVENDAKeyPress(Sender: TObject; var Key: Char);
 var
  testavalor : Currency;
begin
  if (key = #13) then
  begin
    if TryStrToCurr(unitario,testavalor) then
    begin
      edt_buscaean.Clear;
      edt_buscaean.SetFocus;
      edt_buscaean.Color:=clyellow;
    end
    else
    begin
      unitario:=zqry_EQPRODUTO_CHECKOUTPRECOBASEPROD.asstring;
    end;
  end;
end;

procedure Tfrm_CHECKOUT.edt_QTDKeyPress(Sender: TObject; var Key: Char);
var
  testaquant:double;
begin
  if (key = #13) then
  begin
    if TryStrToFloat(multiplica,testaquant) then
    begin
      edt_buscaean.Clear;
      edt_buscaean.SetFocus;
      edt_buscaean.Color:=clyellow;
    end
    else
    begin
      multiplica:='1';
    end;
  end;
end;

procedure Tfrm_CHECKOUT.FechaCupom1Click(Sender: TObject);
begin
frm_fechacupom.caption:='Fecha Cupom N.º '+dbtext5.Caption+' no valor de R$ '+frm_checkout.lbl_VALORTOTAL.Caption;
frm_fechacupom.vlrprodutos:=frm_CHECKOUT.valortotal;
frm_fechacupom.codvenda:=strtoint(frm_checkout.dbtext4.Caption);
frm_fechacupom.show;
end;

procedure Tfrm_CHECKOUT.FormActivate(Sender: TObject);
begin
edt_BUSCAEAN.SetFocus;
end;

procedure Tfrm_CHECKOUT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zqry_vdvenda.Cancel;
zqry_VDITVENDA.Cancel;
zqry_EQPRODUTO_CHECKOUT.Cancel;
zqry_ITREGRAFISCAL.Cancel;
zqry_VDCLIENTE.Cancel;
zqry_SGSEQUENCIA.Cancel;
zqry_VDFRETEVD.Cancel;
zqry_VDVENDEDOR.Cancel;
zqry_SGPREFERE.Cancel;
end;

procedure Tfrm_CHECKOUT.FormShow(Sender: TObject);
begin
img_logoEMPRESA.LEFT:=ROUND(SCREEN.WIDTH/2)-50;
img_logoEMPRESA.top:=ROUND(screen.height/2)-80;
img_logoEMPRESA.picture.loadfromfile(dm_dados.logomarca);
frm_checkout.Caption:='Módulo Checkout '+dm_Dados.empresa;
lbl_USUARIO.Caption:=dm_DADOS.usuario;
memocancela.Visible:=false;
MemoCancela.Top:=screen.Height-(290+90);
alterapreco:=1;
multiplica:='1';
edt_buscaean.SetFocus;
edt_buscaean.Clear;
edt_buscaean.Color:=clyellow;
end;

procedure Tfrm_CHECKOUT.IdentificaCliente1Click(Sender: TObject);
begin
  if lbl_status.Caption='CAIXA DISPONIVEL' then
  BEGIN
    SHOWMESSAGE('NÃO HÁ CUPOM EM ABERTO');
  END
  ELSE
  BEGIN
    frm_dlg_identifica.codvenda:=strtoint(dbtext4.Caption);
    frm_dlg_identifica.docvenda:=strtoint(dbtext5.Caption);
    frm_dlg_identifica.show;
  END;
  if frm_dlg_identifica.cliente='' then lbl_cliente.Caption:='CONSUMIDOR NÃO IDENTIFICADO'
  ELSE lbl_cliente.Caption:=frm_dlg_identifica.cliente;
  lbl_cliente.Update;
end;

procedure Tfrm_CHECKOUT.MudaPreo1Click(Sender: TObject);
begin
  sp_MUDAPRECOClick(Sender);
end;

procedure Tfrm_CHECKOUT.MudaQuantidade1Click(Sender: TObject);
begin
  sp_MUDAQTDClick(Sender);
end;

procedure Tfrm_CHECKOUT.sp_CANCELACUPOMClick(Sender: TObject);
begin
cancelacupom;
end;

procedure Tfrm_CHECKOUT.sp_CANCELAITEMClick(Sender: TObject);
begin
cancelaitem;
end;

procedure Tfrm_CHECKOUT.sp_FECHACUPOMClick(Sender: TObject);
begin
FechaCupom1Click(Self);
end;

procedure Tfrm_CHECKOUT.sp_FINALIZADORESClick(Sender: TObject);
begin
  zqry_TIPOSPAGTO.Params.Clear;
  zqry_TIPOSPAGTO.Close;
  zqry_TIPOSPAGTO.SQL.Clear;
  ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where terminal=:estacao and data BETWEEN :DTINI AND :DTFIM ');
  zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=now;
  zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=now;
  zqry_TIPOSPAGTO.ParamByName('estacao').AsInteger:=dm_dados.estacao;
  zqry_TIPOSPAGTO.Open;
 // if dm_dados.impressao50='S' then FRM_REL_MOVIMENTO50.RLREPORT1.PREVIEW ELSE FRM_REL_MOVIMENTO.RLREPORT1.PREVIEW;
end;

procedure Tfrm_CHECKOUT.sp_IDENTIFICACLIENTEClick(Sender: TObject);
begin
IdentificaCliente1Click(Self);
end;

procedure Tfrm_CHECKOUT.sp_MUDAPRECOClick(Sender: TObject);
begin
if lbl_status.caption='CAIXA DISPONIVEL !' then
begin
  showmessage('Nao ha cupom aberto para insercao de produto');
end
else
begin
  alterapreco:=2;
end;
end;

procedure Tfrm_CHECKOUT.sp_MUDAQTDClick(Sender: TObject);
begin
if lbl_status.caption='CAIXA DISPONIVEL !' then
begin
  showmessage('Nao ha cupom aberto para insercao de produto');
end
else
begin
  edt_buscaean.Color:=clwhite;
end;
end;

procedure Tfrm_CHECKOUT.sp_ABRECUPOMClick(Sender: TObject);
var
  produtoatual : string;
begin
if lbl_status.caption='CUPOM ABERTO' then
begin
  //MessageBeep(16);
  produtoatual:=lbl_produto.Caption;
  lbl_produto.Caption:='CUPOM JA ESTA ABERTO';
  lbl_produto.Update;
  lbl_produto.Caption:=produtoatual;
  produtoatual:='';
  edt_buscaean.SetFocus;
  edt_buscaean.Clear;
  edt_buscaean.Color:=clyellow;
  memocancela.Visible:=false;
end
else
begin
  // busca ultima nfce
  dm_dados.zqry_MAX_NFCE.Close;
  dm_dados.zqry_MAX_NFCE.SQL.Clear;
  dm_dados.zqry_MAX_NFCE.SQL.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
  dm_dados.zqry_MAX_NFCE.ParamByName('p1').AsString:='NC';
  dm_dados.zqry_MAX_NFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_MAX_NFCE.Open;
  lbl_NUMNFCE.Caption:=inttostr(dm_dados.zqry_MAX_NFCEULTNFCE.AsInteger);
  lbl_numnfce.Update;
  //
  zqry_VDCLIENTE.Params.Clear;
  zqry_VDCLIENTE.Close;
  zqry_VDCLIENTE.SQL.Clear;
  zqry_VDCLIENTE.SQL.Add('select codemp,codfilial,codcli,nomecli,siglauf from vdcliente where codemp=:empcod and codcli=:clicod');
  zqry_VDCLIENTE.ParamByName('EMPCOD').AsInteger:=dm_dados.codemp;
  zqry_VDCLIENTE.ParamByName('CLICOD').AsInteger:=1;
  zqry_VDCLIENTE.Open;

  try
    mostratelaaguarde('Abrindo Cupom');
    lbl_CLIENTE.Caption:=frm_DLG_IDENTIFICA.lbl_NOME.caption;

    //venda
    zquery1.Close;
    zquery1.SQL.Clear;
    zquery1.sql.add('SELECT MAX(codvenda) as Sequencia FROM vdvenda');
    zquery1.Open;
    seqvenda:=zquery1.FieldByname('sequencia').asInteger;
// Sequencia SGSEQUENCIA
    zqry_sgsequencia.Close;
    zqry_sgsequencia.sql.Clear;
    zqry_sgsequencia.sql.add('select codemp, codfilial,sgtab,nroseq from sgsequencia where sgtab=:buscavenda and codemp=:empresa');
    zqry_sgsequencia.ParamByName('buscavenda').Value:='VD';
    zqry_sgsequencia.ParamByName('empresa').Value:=dm_dados.codemp;
    zqry_sgsequencia.open;
    if zqry_sgsequencia.IsEmpty then
    begin
      showmessage('Valores nao encontrados para Seguência');
      zqry_insert.close;
      zqry_insert.sql.clear;
      zqry_insert.sql.add('insert into sgsequencia (codemp, codfilial, sgtab, nroseq, dtins, hins, idusuins)');
      zqry_insert.sql.add('values (:codemp, :codfilial, :sgtab, :nroseq, :dtins, :hins, :idusuins)');
      zqry_insert.ParamByName('codemp').AsInteger:=dm_dados.codemp;
      zqry_insert.ParamByName('codfilial').AsInteger:=1;
      zqry_insert.ParamByName('sgtab').AsString:='VD';
      zqry_insert.ParamByName('nroseq').AsInteger:=1;
      zqry_insert.ParamByName('dtins').AsDateTime:=now;
      zqry_insert.ParamByName('hins').asdatetime:=now;
      zqry_insert.ParamByName('idusuins').asstring:=dm_dados.usuario;
      zqry_insert.ExecSQL;
      seqsequencia:=1;
    end
    else
    begin
      seqsequencia:=zqry_SGSEQUENCIANROSEQ.Value;
    end;
    if seqsequencia<=seqvenda then seqsequencia:=seqvenda+1;
    dm_Dados.zqry_SGFILIAL.Close;
    dm_Dados.zqry_SGFILIAL.SQL.Clear;
    dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    dm_dados.zqry_SGFILIAL.Open;


    EXECUTASGINICONSP;

    // GRAVA DADOS NA VENDA
    IF zqry_VDCLIENTESIGLAUF.Value=DM_DADOS.zqry_SGFILIALSIGLAUF.Value then ufigual:=0 else ufigual:=1;
      zqry_VDVENDA.Close;
      zqry_VDVENDA.Open;
      zqry_VDVENDA.INSERT;
      zqry_vdvendaCODEMP.Value:=dm_dados.codemp;
      zqry_vdvendaCODFILIAL.Value:=1;//DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODCAIXA.Value:=1;{
      zqry_vdvendaCODCLCOMIS.Value:=1;//DM_DADOS.zqry_VDVENDEDORCODCLCOMIS.ASINTEGER;}
      if zqry_VDVENDEDORCODVEND.isnull  then
      begin
        zqry_vdvendacodvend.asinteger:=1
      end
      else
      begin
        zqry_VDVENDACODVEND.AsInteger:=zqry_VDVENDEDORCODVEND.AsInteger;
      end;
{      zqry_vdvendaCODCLASCOMIS.Value:='1';
      zqry_vdvendaTIPOVENDA.Value:='V';
      zqry_vdvendaSERIE.Value:='PV';
      zqry_vdvendaSUBTIPOVENDA.Value:='NF';
      //
      zqry_vdvendaCODVENDA.Value:=seqsequencia;
      zqry_vdvendaPERCCOMISVENDA.AsFloat:=0.00;
      zqry_VDVENDAVLRDESCVENDA.AsFloat:=0.00;// ESSE TEMstrtofloat(edt_VLRDESC.Text);
      zqry_vdvendaCODCLI.Value:=1;//DM_DADOS.zqry_VDCLIENTECODCLI.Value;
      zqry_vdvendaCODPLANOPAG.asinteger:=1;//dm_dados.zqry_FASTSALECODPLANOPAG.AsInteger;
      if lbl_STATUS.caption<>'ORCAMENTO' then zqry_vdvendaCODTIPOMOV.Value:=501;
      zqry_vdvendaDOCVENDA.Value:=seqsequencia;
      zqry_vdvendaDTSAIDAVENDA.AsDateTime:=date;
      zqry_vdvendaDTEMITVENDA.AsDateTime:=DATE;
      zqry_vdvendaDTCOMPVENDA.AsDateTime:=DATE;
      zqry_vdvendaSTATUSVENDA.Value:='P3';
      zqry_vdvendaBLOQVENDA.Value:='N';
      zqry_vdvendaLOCALSERV.Value:='P';
      zqry_vdvendaNROATUALIZADO.Value:='N';
      zqry_vdvendaSITCOMPLVENDA.Value:='N';
      zqry_vdvendaDTINS.AsDateTime:=DATE;
      zqry_vdvendaHINS.AsDateTime:=TIME;
      zqry_vdvendaIDUSUINS.Value:=dm_dados.usuario;}
      zqry_vdvendaCODCLASCOMIS.Value:='1';
      zqry_vdvendaTIPOVENDA.Value:='V';
      zqry_vdvendaSERIE.Value:='PV';
      zqry_vdvendaSUBTIPOVENDA.Value:='NF';
      //
      zqry_vdvendaCODVENDA.Value:=seqsequencia;
      zqry_vdvendaCODEMPCL.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALCL.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPCM.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALCM.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPPG.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALPG.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPCX.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALCX.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPSE.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALSE.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPTM.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALTM.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_vdvendaCODEMPVD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_vdvendaCODFILIALVD.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      //DM_DADOS.zqry_vdvendaCODVEND.Value:=1;//dm_dados.zqry_FASTSALECODVEND.Value;
      zqry_vdvendaPERCCOMISVENDA.AsFloat:=0.00;
      zqry_VDVENDAVLRDESCVENDA.AsFloat:=0.00;// ESSE TEMstrtofloat(edt_VLRDESC.Text);
      zqry_vdvendaCODCLI.Value:=1;//DM_DADOS.zqry_VDCLIENTECODCLI.Value;
      zqry_vdvendaCODPLANOPAG.asinteger:=1;//dm_dados.zqry_FASTSALECODPLANOPAG.AsInteger;
      //dm_Dados.zqry_vdvendaidfastsale.asintegeR:=frm_CUPOM.meucupom;
      // OR�AMENTO OU VENDA
      //if frm_principal.lbl_STATUS_ORC.Caption='OR�AMENTO' then DM_DADOS.cds_vdvendaCODTIPOMOV.Value:=401;
      zqry_vdvendaCODTIPOMOV.Value:=501;
      zqry_vdvendaDOCVENDA.Value:=seqsequencia;
      zqry_vdvendaDTSAIDAVENDA.AsDateTime:=date;
      zqry_vdvendaDTEMITVENDA.AsDateTime:=DATE;
      zqry_vdvendaDTCOMPVENDA.AsDateTime:=DATE;
      zqry_vdvendaSTATUSVENDA.Value:='P3';
      zqry_vdvendaBLOQVENDA.Value:='N';
      zqry_vdvendaLOCALSERV.Value:='P';
      zqry_vdvendaNROATUALIZADO.Value:='N';
      zqry_vdvendaSITCOMPLVENDA.Value:='N';
      zqry_VDVENDACODEMPTC.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      zqry_VDVENDACODFILIALTC.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      zqry_VDVENDACODTIPOCOB.Value:=1;
      zqry_vdvendaDTINS.AsDateTime:=DATE;
      zqry_vdvendaHINS.AsDateTime:=TIME;
      zqry_vdvendaIDUSUINS.Value:='sysdba';
      zqry_vdvenda.post;
      zqry_vdvenda.ApplyUpdates;
      frm_DLG_IDENTIFICA.Show;
      frm_dlg_identifica.codvenda:=seqsequencia;
      // FECHA VENDA
      // GRAVA FRETE VENDA
      {zqry_VDFRETEVD.Close;
      zqry_VDFRETEVD.Open;
      zqry_VDFRETEVD.append;
      zqry_VDFRETEVDCODEMP.asinteger:=99;//DM_DADOS.cds_SGFILIALCODEMP.Value;
      zqry_VDFRETEVDCODFILIAL.asinteger:=1;//DM_DADOS.cds_SGFILIALCODFILIAL.Value;
      zqry_VDFRETEVDTIPOVENDA.Value:='V';
      zqry_VDFRETEVDCODVENDA.Value:=seqsequencia;
      zqry_VDFRETEVDTIPOFRETEVD.Value:='F';
      zqry_VDFRETEVDPLACAFRETEVD.Value:='*******';
      zqry_VDFRETEVDUFFRETEVD.Value:='**';
      zqry_VDFRETEVDVLRFRETEVD.AsCurrency:=0.00;
      zqry_VDFRETEVDVLRSEGFRETEVD.AsCurrency:=0.00;
      zqry_VDFRETEVDQTDFRETEVD.AsFloat:=1;
      zqry_VDFRETEVDPESOBRUTVD.AsFloat:=0.00;
      zqry_VDFRETEVDPESOLIQVD.AsFloat:=0.00;
      zqry_VDFRETEVDESPFRETEVD.Value:='VOLUME';
      zqry_VDFRETEVDMARCAFRETEVD.Value:='OUTRO';
      zqry_VDFRETEVDADICFRETEVD.Value:='N';
      zqry_VDFRETEVDADICFRETEBASEICM.Value:='N';
      zqry_VDFRETEVDDTINS.AsDateTime:=DATE;
      zqry_VDFRETEVDHINS.AsDateTime:=TIME;
      zqry_VDFRETEVDIDUSUINS.Value:=dm_dados.usuario;
      zqry_vdfretevd.post;
      zqry_VDFRETEVD.ApplyUpdates();}
      fechatelaaguarde;
   ///
    lbl_STATUS.Caption:='CUPOM ABERTO';
   // frm_CUPOM.descanso:=0;
    btn_sair.Enabled:=false;
    memocancela.Visible:=false;
    //edt_BUSCAEAN.Enabled:=TRUE;
    //edt_BUSCAEAN.Clear;
    //edt_BUSCAEAN.SetFocus;
    //edt_BUSCAean.Color:=clyellow;//$00BAFEF5;
   // MOSTRATELANOTIFICA('CUPOM ABERTO','Boas Compras');
  except
    on E:Exception do
    MessageDlg('Erro ao conectar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
end;
//if frm_cupom.descanso=1 then timer_DESCANSO.Enabled:=true else timer_descanso.Enabled:=false;
//edt_BUSCAean.SetFocus;
end;

procedure Tfrm_CHECKOUT.sp_ADMINISTRATIVOClick(Sender: TObject);
begin
Administrativo1Click(Self);
end;

procedure Tfrm_CHECKOUT.sp_BUSCASClick(Sender: TObject);
begin
BuscaProdutos1Click(Self);
end;

procedure Tfrm_CHECKOUT.Timer1Timer(Sender: TObject);
begin
lbl_HORASISTEMA.Caption:=timetostr(time);
end;

end.
