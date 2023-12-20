unit checkout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,XMLDoc, XMLIntf,
  ACBrBase, ACBrDFe, ACBrNFe,ACBrNFeDANFEClass, Vcl.ComCtrls,
  ACBrNFeDANFeRLClass, ACBrMail, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,   Vcl.Samples.Spin , System.VarUtils, ActiveX, System.StrUtils,Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Menus, ACBrDFeReport,
  ACBrDFeDANFeReport;

type
  Tfrm_CHECKOUT = class(TForm)
    pn_PRINCIPAL_TOTAL: TPanel;
    pn_PRINCIPAL_ESQUERDA: TPanel;
    gp_PEDIDOS: TGroupBox;
    gp_MOVIMENTOS: TGroupBox;
    gp_LISTAPRODUTOS: TGroupBox;
    gp_FINALIZADORES: TGroupBox;
    pn_DIREITA_BOTTON: TPanel;
    lbl_WALLPAPER: TLabel;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrMail1: TACBrMail;
    db_PEDIDOS: TDBGrid;
    lbl_LOGOMARCA: TLabel;
    lbl_LOGOLOJA: TLabel;
    zqry_MAISVENDIDOS: TZQuery;
    zdts_MAISVENDIDOS: TDataSource;
    zqry_MAISVENDIDOSCODPROD: TIntegerField;
    zqry_MAISVENDIDOSCODBARPROD: TWideStringField;
    zqry_MAISVENDIDOSDESCPROD: TWideStringField;
    zqry_MAISVENDIDOSQTDITVENDA: TFloatField;
    zqry_MAISVENDIDOSDATAVENDA: TDateField;
    DBGrid1: TDBGrid;
    zqry_TIPOSPAGTO: TZQuery;
    zdts_TIPOSPAGTO: TDataSource;
    zqry_TIPOSPAGTOTIPOCOB: TIntegerField;
    zqry_TIPOSPAGTOVALOR: TFloatField;
    zqry_TIPOSPAGTODATA: TDateField;
    zqry_TIPOSPAGTODESCCOB: TWideStringField;
    DBGrid2: TDBGrid;
    zqry_TIPOSPAGTOTIPONFE: TIntegerField;
    DBGrid3: TDBGrid;
    btn_SUPRIMENTO: TBitBtn;
    btn_SANGRIA: TBitBtn;
    btn_FECHACAIXA: TBitBtn;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    PopupMenu1: TPopupMenu;
    ACERTARESTOQUE1: TMenuItem;
    zqry_PVMOVSUPRI: TZQuery;
    zdts_PVMOVSUPRI: TDataSource;
    zqry_PVMOVSUPRICODEMP: TIntegerField;
    zqry_PVMOVSUPRICODFILIAL: TSmallintField;
    zqry_PVMOVSUPRICODCAIXA: TIntegerField;
    zqry_PVMOVSUPRIDTAMOV: TDateField;
    zqry_PVMOVSUPRINROMOV: TIntegerField;
    zqry_PVMOVSUPRITIPOMOV: TWideStringField;
    zqry_PVMOVSUPRIVLRMOV: TFloatField;
    zqry_PVMOVSUPRIVLRSLDMOV: TFloatField;
    zqry_PVMOVSUPRICODEMPUS: TIntegerField;
    zqry_PVMOVSUPRICODFILIALUS: TSmallintField;
    zqry_PVMOVSUPRIIDUSU: TWideStringField;
    zqry_PVMOVSUPRIDTINS: TDateField;
    zqry_PVMOVSUPRIHINS: TTimeField;
    zqry_PVMOVSUPRIIDUSUINS: TWideStringField;
    zqry_PVMOVSUPRIDTALT: TDateField;
    zqry_PVMOVSUPRIHALT: TTimeField;
    zqry_PVMOVSUPRIIDUSUALT: TWideStringField;
    zqry_PVMOVSANG: TZQuery;
    zqry_PVMOVSANGCODEMP: TIntegerField;
    zqry_PVMOVSANGCODFILIAL: TSmallintField;
    zqry_PVMOVSANGCODCAIXA: TIntegerField;
    zqry_PVMOVSANGDTAMOV: TDateField;
    zqry_PVMOVSANGNROMOV: TIntegerField;
    zqry_PVMOVSANGTIPOMOV: TWideStringField;
    zqry_PVMOVSANGVLRMOV: TFloatField;
    zqry_PVMOVSANGVLRSLDMOV: TFloatField;
    zqry_PVMOVSANGCODEMPUS: TIntegerField;
    zqry_PVMOVSANGCODFILIALUS: TSmallintField;
    zqry_PVMOVSANGIDUSU: TWideStringField;
    zqry_PVMOVSANGDTINS: TDateField;
    zqry_PVMOVSANGHINS: TTimeField;
    zqry_PVMOVSANGIDUSUINS: TWideStringField;
    zqry_PVMOVSANGDTALT: TDateField;
    zqry_PVMOVSANGHALT: TTimeField;
    zqry_PVMOVSANGIDUSUALT: TWideStringField;
    zdts_PVMOVSANG: TDataSource;
    TextEditNumeroControleCancelamento: TEdit;
    N1: TMenuItem;
    ReimprimeTEF1: TMenuItem;
    TextEditNumeroControleReimpressaoCupom: TEdit;
    CancelaTEF1: TMenuItem;
    N2: TMenuItem;
    gb_TEF: TGroupBox;
    Label5: TLabel;
    gb_CAIXA: TGroupBox;
    sp_TEF_CANCELA: TSpeedButton;
    sp_TEF_REIMPRIME: TSpeedButton;
    gb_TEF_CANCELA: TGroupBox;
    gb_TEF_REIMPRIME: TGroupBox;
    zqry_CAIXAMOVABERTO: TZQuery;
    zqry_CAIXAMOVABERTOULTCAIXA: TDateField;
    zqry_CAIXAMOVABERTONUMERO: TIntegerField;
    zdts_CAIXAMOVABERTO: TDataSource;
    btn_FECHAR: TBitBtn;
    Fechar1: TMenuItem;
    N3: TMenuItem;
    Consultas1: TMenuItem;
    Produtos1: TMenuItem;
    SAT1: TMenuItem;
    ExtrairLog1: TMenuItem;
    FimaFim1: TMenuItem;
    lbl_CODFAST: TLabel;
    Administrativo1: TMenuItem;
    zqry_TIPOSPAGTOTERMINAL: TIntegerField;
    BitBtn1: TBitBtn;
    function ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
    function ConcatenarControle(numcontrole: string; cupom: string) : string;
    function ConcatenarBandeira(bandeira: string; cupom: string) : string;
    function ConcatenarAutorizacao(numautorizacao: string; cupom: string) : string;
    function ConcatenarCartao(cartao: string; cupom: string) : string;
    function ConcatenarAdquirente(adquirente: string; cupom: string) : string;
    function DeveIniciarMultiCartoes() : boolean;
    //function OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;
    function GerarMensagemTransacaoAprovada : string;
    function BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : IXMLNode;
    function FormatarNumeroControle(numeroControle: double) : string;
//    procedure IniciarMultiCartoes();
    //procedure AutenticarPdv(cliente: IClienteCappta);
    procedure FormShow(Sender: TObject);
    procedure sp_CUPOMClick(Sender: TObject);
    procedure sp_SAIRClick(Sender: TObject);
    procedure sp_PRODUTOSClick(Sender: TObject);
//    procedure tef_cappta;
    procedure sp_CONFIGURACOESClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
 //   procedure IterarOperacaoTef();
 //   procedure ConfigurarModoIntegracao(exibirInterface: boolean);
 //   procedure DesabilitarControlesMultiTef();
 //   procedure DesabilitarBotoes();
 //   procedure HabilitarBotoes();
 //   procedure HabilitarControlesMultiTef();
 //   procedure FinalizarPagamento();
    //procedure ExibirMensagem(mensagem: IMensagem);
    //procedure ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
    //procedure ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
//    procedure AtualizarResultado(mensagem: string);
    //procedure RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
    //procedure ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
 //   procedure CriarMensagemErro(mensagem: PChar);

    procedure FormCreate(Sender: TObject);
    procedure btn_IMPRIMIRPEDIDOSClick(Sender: TObject);
    procedure btn_SUPRIMENTOClick(Sender: TObject);
    procedure btn_ABRECAIXAClick(Sender: TObject);
    procedure btn_FECHACAIXAClick(Sender: TObject);
    procedure btn_SANGRIAClick(Sender: TObject);
    procedure btn_CANCELA_TEFClick(Sender: TObject);
    procedure ReimprimeTEF1Click(Sender: TObject);
    procedure TextEditNumeroControleCancelamentoKeyPress(Sender: TObject;
      var Key: Char);
    procedure CancelaTEF1Click(Sender: TObject);
    procedure btn_REIMPRIME_TEFClick(Sender: TObject);
    procedure TextEditNumeroControleReimpressaoCupomKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cupom1Click(Sender: TObject);
    procedure ValidaCaixa;
    procedure sp_TEF_CANCELAClick(Sender: TObject);
    procedure sp_TEF_REIMPRIMEClick(Sender: TObject);
    procedure gp_LISTAPRODUTOSClick(Sender: TObject);
    procedure gp_PEDIDOSClick(Sender: TObject);
    procedure gp_MOVIMENTOSClick(Sender: TObject);
    procedure gp_FINALIZADORESClick(Sender: TObject);
    procedure btn_FECHARClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ExtrairLog1Click(Sender: TObject);
    procedure db_PEDIDOSDblClick(Sender: TObject);
    procedure db_PEDIDOSCellClick(Column: TColumn);
    procedure Administrativo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
    var
      formaemissao, tipoamb, sequencia, nummov, tipovia, quantidadeParcelas, tipoParcelamento, pedido:integer;
      setssl, settls, processandoPagamento, sessaoMultiTefEmAndamento,transacaoParcelada :Boolean;
      chaveAutenticacao, numcontrole, numautorizacao, bandeira,adquirente,cartao,
      emitcodcidade, host, port, username, password, from, assunto, cnpj: string;
      //cliente: IClienteCappta;
      quantidadecartoes,  pdv: Int32;
     // detalhes: DetalhesCredito;
      valor, saldonega: double;
  end;

var
  frm_CHECKOUT: Tfrm_CHECKOUT;

  const
  INTERVALO_MILISEGUNDOS: Integer = 500;

implementation

{$R *.dfm}

uses principal, dados, rel_tef, prefacbr, abrecaixa, uFuncoes, con_produto,
  rel_movfechacaixa, rel_pedido, sangria, suprimento, fechacupom, con_clientes,
  cupom, rel_movimento, rel_movimento50;

function Tfrm_CHECKOUT.FormatarNumeroControle(numeroControle: double) : string;
var numeroControleTexto: string;
begin
  numeroControleTexto := FloatToStr(numeroControle);
  numeroControleTexto := ReplaceStr(numeroControleTexto.PadLeft(11), ' ', '0');

  Result:= numeroControleTexto;
end;

procedure Tfrm_CHECKOUT.ValidaCaixa;
begin
    zqry_CAIXAMOVABERTO.Params.Clear;
    zqry_CAIXAMOVABERTO.Close;
    zqry_CAIXAMOVABERTO.SQL.Clear;
    zqry_CAIXAMOVABERTO.SQL.Add('SELECT MAX(DTAMOV)AS ULTCAIXA, MAX(NROMOV) AS NUMERO FROM PVMOVCAIXA');
    zqry_caixamovaberto.SQL.Add('WHERE CODEMP=:EMPCOD AND CODCAIXA=:CAIXACOD');
    zqry_CAIXAMOVABERTO.ParamByName('EMPCOD').AsInteger:=DM_DADOS.codemp;
    zqry_CAIXAMOVABERTO.ParamByName('CAIXACOD').AsInteger:=dm_DADOS.estacao;
    zqry_CAIXAMOVABERTO.Open;
    dm_Dados.ultdata:=zqry_CAIXAMOVABERTO.FieldByName('ultcaixa').AsDateTime;
    nummov:= zqry_CAIXAMOVABERTO.fieldbyname('numero').AsInteger;
    dm_dados.datahoje:=now;
end;


{procedure Tfrm_CHECKOUT.CriarMensagemErro(mensagem: PChar);
begin
     Application.MessageBox(mensagem, 'Erro', MB_OK);
end;     }

procedure Tfrm_CHECKOUT.Cupom1Click(Sender: TObject);
begin
sp_CUPOMClick(Self);
end;

procedure Tfrm_CHECKOUT.btn_CANCELA_TEFClick(Sender: TObject);
var
  numeroControle: string;
  senhaAdministrativa: string;
begin
 { tmemoresultado.Visible:=true;
  if sessaoMultiTefEmAndamento = true then
  begin
     CriarMensagemErro('Não é possível cancelar um pagamento com uma sessão multitef em andamento.'); exit;
  end;

  numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleCancelamento.Text));
  senhaAdministrativa:= 'cappta';

  if Length(senhaAdministrativa) = 0 then
  begin
     CriarMensagemErro('A senha administrativa não pode ser vazia.');
     exit;
  end;

  cliente.CancelarPagamento(senhaAdministrativa, numeroControle);

  processandoPagamento := false;
  IterarOperacaoTef();
  if (tMemoresultado.GetTextLen <> 0) then frm_rel_tef.rlreport1.print;
  sleep(3000);
  TextEditNumeroControleCancelamento.Clear;
  TextEditNumeroControleCancelamento.Visible:=false;
  TMemoResultado.Text := String.Empty;
  tmemoresultado.visible:=false;     }
  //btn_CANCELA_TEF.Visible:=false;
end;

procedure Tfrm_CHECKOUT.Administrativo1Click(Sender: TObject);
begin
      zqry_TIPOSPAGTO.Params.Clear;
      zqry_TIPOSPAGTO.Close;
      zqry_TIPOSPAGTO.SQL.Clear;
      ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where terminal=:estacao and data BETWEEN :DTINI AND :DTFIM ');
      zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=now;
      zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=now;
      zqry_TIPOSPAGTO.ParamByName('estacao').AsInteger:=dm_dados.estacao;
      zqry_TIPOSPAGTO.Open;
      if dm_dados.impressao50='S' then FRM_REL_MOVIMENTO50.RLREPORT1.PREVIEW ELSE FRM_REL_MOVIMENTO.RLREPORT1.PREVIEW;

end;

procedure Tfrm_CHECKOUT.BitBtn1Click(Sender: TObject);
begin
Administrativo1Click(Sender);
end;

procedure Tfrm_CHECKOUT.btn_ABRECAIXAClick(Sender: TObject);
begin
dm_Dados.zqry_PVMOVCAIXA.Params.clear;
dm_dados.zqry_PVMOVCAIXA.Close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=now;
dm_dados.zqry_PVMOVCAIXA.ParamByName('movtipo').AsString:='A';
dm_dados.zqry_PVMOVCAIXA.Open;
if dm_DAdos.zqry_PVMOVCAIXA.IsEmpty THEN
begin
  frm_dlg_ABRECAIXA.showmodal;
end
else
begin
   MOSTRATELANOTIFICA('CAIXA ABERTO','Já existe um Caixa aberto');
   dm_dados.zqry_PVMOVCAIXA.Params.Clear;
   dm_dados.zqry_PVMOVCAIXA.close;
   dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
   dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
   dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
   dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
   dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
   dm_dados.zqry_PVMOVCAIXA.Open;
end;
end;

procedure Tfrm_CHECKOUT.btn_FECHACAIXAClick(Sender: TObject);
begin
  dm_dados.zqry_PVMOVCAIXA.Params.Clear;
  dm_Dados.zqry_PVMOVCAIXA.close;
  dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
  dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where tipomov=:tipo and codcaixa=:caixacod and dtamov=:data');
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('tipo').AsString:='F';
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('data').AsDateTime:=dm_dados.ultdata;
  dm_Dados.zqry_PVMOVCAIXA.Open;
  if dm_dados.zqry_PVMOVCAIXA.IsEmpty then
  begin
    mostratelaaviso('CAIXA CONSTA COMO ABERTO','Para o dia '+datetostr(dm_Dados.ultdata));
    if MessageBox(HANDLE, 'DESEJA ENCERRAR CAIXA QUE ESTÁ ABERTO?'#13'Confirme com SIM'#13'Não Cancelar clique em NÃO', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
    BEGIN
      sequencia:=0;
      zquery1.Close;
      zquery1.SQL.Clear;
      zquery1.sql.add('SELECT MAX(nromov) as nro FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and dtamov=:data');
      zquery1.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      zquery1.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
      zquery1.ParamByName('data').AsDateTime:=dm_dados.ultdata;
      zquery1.Open;
      sequencia:=1+zquery1.FieldByname('nro').asinteger;

      zquery2.close;
      zquery2.SQL.Clear;
      zquery2.sql.add('SELECT vlrsldmov as SALDODIA FROM pvmovcaixa where codemp=:empcod and codcaixa=:caixacod and dtamov=:saldohoje and nromov=:mov');
      zquery2.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
      zquery2.ParamByName('caixacod').AsInteger:=dm_dados.estacao;
      zquery2.ParamByName('saldohoje').asdatetime:=dm_Dados.ultdata;
      zquery2.ParamByName('mov').asinteger:=zquery1.FieldByname('nro').asinteger;
      //showmessage('Num mov '+inttostr(zquery1.FieldByname('nro').asinteger)+' hoje '+datetostr(frm_splash.ultdata));
      zquery2.Open;
      saldonega:=zquery2.fieldbyname('saldodia').asfloat* -1;
      // FAZ A SAIDA DO VALOR
      dm_Dados.zqry_PVMOVCAIXA.Close;
      dm_dados.zqry_PVMOVCAIXA.Open;
      dm_Dados.zqry_PVMOVCAIXA.Append;
      dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_Dados.codemp;
      dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
      dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.estacao;
      dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=dm_Dados.ultdata;
      dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia;
      dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='S';
      dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=SALDONEGA;
      dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_Dados.codemp;
      dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
      dm_Dados.zqry_PVMOVCAIXAIDUSU.AsString:='sysdba';
      dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
      dm_Dados.zqry_PVMOVCAIXAHINS.AsDateTime:=time;
      dm_dados.zqry_PVMOVCAIXA.Post;
      //FECHA CAIXA
      dm_Dados.zqry_PVMOVCAIXA.Append;
      dm_Dados.zqry_PVMOVCAIXACODEMP.AsInteger:=dm_Dados.codemp;
      dm_dados.zqry_PVMOVCAIXACODFILIAL.asinteger:=1;
      dm_Dados.zqry_PVMOVCAIXACODCAIXA.AsInteger:=dm_Dados.estacao;
      dm_dados.zqry_PVMOVCAIXADTAMOV.AsDateTime:=dm_Dados.ultdata;
      dm_dados.zqry_PVMOVCAIXANROMOV.AsInteger:=sequencia+1;
      dm_dados.zqry_PVMOVCAIXATIPOMOV.AsString:='F';
      dm_dados.zqry_PVMOVCAIXAVLRMOV.AsFloat:=0.00;
      dm_dados.zqry_PVMOVCAIXAVLRSLDMOV.AsFloat:=0.00;
      dm_dados.zqry_PVMOVCAIXACODEMPUS.AsInteger:=dm_Dados.codemp;
      dm_dados.zqry_PVMOVCAIXACODFILIALUS.AsInteger:=1;
      dm_Dados.zqry_PVMOVCAIXAIDUSU.AsString:='sysdba';
      dm_dados.zqry_PVMOVCAIXADTINS.AsDateTime:=now;
      dm_Dados.zqry_PVMOVCAIXAHINS.AsDateTime:=time;
      dm_dados.zqry_PVMOVCAIXA.Post;
      dm_Dados.zqry_pvmovcaixa.ApplyUpdates;
      SHOWMESSAGE('CAIXA FECHADO');
      dm_Dados.zqry_PVMOVCAIXA.Params.clear;
      dm_dados.zqry_PVMOVCAIXA.Close;
      dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
      dm_dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta');
      dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
      dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=now;
      dm_dados.zqry_PVMOVCAIXA.Open;
      //frm_rel_movfechacaixa.rlreport1.Title:='CheckOut - Fechamento - '+datetostr(now);
      //frm_rel_movfechacaixa.rlreport1.Print;
      zqry_TIPOSPAGTO.Params.Clear;
      zqry_TIPOSPAGTO.Close;
      zqry_TIPOSPAGTO.SQL.Clear;
      ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where terminal=:maquina and data BETWEEN :DTINI AND :DTFIM ');
      zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=now;
      zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=now;
      zqry_tipospagto.ParamByName('maquina').AsInteger:=dm_dados.estacao;
      zqry_TIPOSPAGTO.Open;
      if dm_dados.impressao50='S' then FRM_REL_MOVIMENTO50.RLREPORT1.PREVIEW ELSE FRM_REL_MOVIMENTO.RLREPORT1.PREVIEW;
    END
    ELSE
    BEGIN
      showmessage('ERRO AO GERAR RELATORIO DE FECHAMENTO');
    END;
  end;
dm_dados.zqry_PVMOVCAIXA.Params.Clear;
dm_dados.zqry_PVMOVCAIXA.close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_PVMOVCAIXA.Open;
end;

procedure Tfrm_CHECKOUT.btn_FECHARClick(Sender: TObject);
begin
CLOSE;
end;

procedure Tfrm_CHECKOUT.btn_IMPRIMIRPEDIDOSClick(Sender: TObject);
begin
  if pedido=1 then
  begin
    frm_rel_pedido.rlreport1.preview;
    dm_dados.zqry_FASTSALE.Close;
    dm_Dados.zqry_itfastsale.Close;
    pedido:=0;
  end;
end;

procedure Tfrm_CHECKOUT.btn_REIMPRIME_TEFClick(Sender: TObject);
var
  reimprimirUltimoCupom: boolean;
  numeroControle: string;
begin
  frm_cupom.tmemoresultado.Visible:=true;
  if sessaoMultiTefEmAndamento = true then
  begin
     //CriarMensagemErro('Não é possível reimprimir um cupom com uma sessão multitef em andamento.'); exit;
  end;

  reimprimirUltimoCupom := frm_cupom.RadioButtonReimprimirUltimoCupom.Checked;

  if (reimprimirUltimoCupom) then
  begin
     frm_cupom.cliente.ReimprimirUltimoCupom(tipoVia)
  end
  else
  begin
       numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleReimpressaoCupom.Text));
       frm_cupom.cliente.ReimprimirCupom(numeroControle, frm_cupom.tipoVia);
  end;

  processandoPagamento := false;
  //IterarOperacaoTef();
  if (frm_cupom.tMemoresultado.GetTextLen <> 0) then frm_rel_tef.rlreport1.print;
  sleep(3000);
  TextEditNumeroControleReimpressaoCupom.Clear;
  TextEditNumeroControleReimpressaoCupom.visible:=false;
  frm_cupom.TMemoResultado.Text := String.Empty;
  frm_cupom.tmemoresultado.visible:=false;
  //btn_REIMPRIME_TEF.Visible:=false;
end;

procedure Tfrm_CHECKOUT.btn_SANGRIAClick(Sender: TObject);
begin
zqry_PVMOVSANG.Params.clear;
zqry_PVMOVSANG.Close;
zqry_PVMOVSANG.SQL.Clear;
zqry_PVMOVSANG.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
zqry_PVMOVSANG.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
zqry_PVMOVSANG.ParamByName('movdta').AsDate:=now;
zqry_PVMOVSANG.ParamByName('movtipo').AsString:='A';
zqry_PVMOVSANG.Open;
if zqry_PVMOVSANG.IsEmpty THEN
begin
   MOSTRATELANOTIFICA('NÃO HÁ CAIXA ABERTO','Efetue a aberto do Caixa');
end
else
begin
  frm_dlg_sangria.showmodal;
end;
end;

procedure Tfrm_CHECKOUT.btn_SUPRIMENTOClick(Sender: TObject);
begin
zqry_PVMOVSUPRI.Params.clear;
zqry_PVMOVSUPRI.Close;
zqry_PVMOVSUPRI.SQL.Clear;
zqry_PVMOVSUPRI.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
zqry_PVMOVSUPRI.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
zqry_PVMOVSUPRI.ParamByName('movdta').AsDate:=now;
zqry_PVMOVSUPRI.ParamByName('movtipo').AsString:='A';
zqry_PVMOVSUPRI.Open;
if zqry_PVMOVSUPRI.IsEmpty THEN
begin
   MOSTRATELANOTIFICA('NÃO HÁ CAIXA ABERTO','Efetue a aberto do Caixa');
end
else
begin
  frm_dlg_suprimento.showmodal;
end;
end;

function Tfrm_CHECKOUT.BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : IXMLNode;
var
node : IXMLNode;
  begin
     node := XMLAutenticacao.DocumentElement.ChildNodes.FindNode(nomeNode);

     if node = nil then
        raise Exception.Create(Format('Não existe a tag <%s>.', [nomeNode]));
     if node.NodeValue = String.Empty then
        raise Exception.Create(Format('A tag <%s> está sem valor definido.', [nomeNode]));

     Result := node;
  end;

function Tfrm_CHECKOUT.DeveIniciarMultiCartoes() : boolean;
begin
     //Result:= (sessaoMultiTefEmAndamento = false) and RadioButtonUsarMultiTef.Checked;
end;

function Tfrm_CHECKOUT.ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [mensagemAprovada, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CHECKOUT.ConcatenarControle(numcontrole: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [numcontrole, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CHECKOUT.ConcatenarBandeira(bandeira: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [bandeira, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CHECKOUT.ConcatenarAutorizacao(numautorizacao: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [numautorizacao, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

procedure Tfrm_CHECKOUT.CancelaTEF1Click(Sender: TObject);
begin
TextEditNumeroControleCancelamento.Visible:=TRUE;
SLEEP(2000);
TextEditNumeroControleCancelamento.Clear;
TextEditNumeroControleCancelamento.SetFocus;
//btn_CANCELA_TEF.Visible:=true;
end;

function Tfrm_CHECKOUT.ConcatenarAdquirente(adquirente: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [adquirente, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CHECKOUT.ConcatenarCartao(cartao: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [cartao, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CHECKOUT.GerarMensagemTransacaoAprovada : string;
var
  trecho1: string;
  trecho2: string;
  mensagem: string;
begin
  trecho1 := 'ão';
  trecho2 := '';
  mensagem := 'Transaç%s Aprovada%s!!! %s Clique em "OK" para confirmar a%s transaç%s e "Cancelar" para desfazê-la%s.';

  if sessaoMultiTefEmAndamento = true then
  begin
     trecho1 := 'ões';
     trecho2 := 's'
  end;

  Result := Format(mensagem, [trecho1, trecho2, sLineBreak, trecho2, trecho1, trecho2]);
end;

procedure Tfrm_CHECKOUT.gp_FINALIZADORESClick(Sender: TObject);
begin
  if(gp_FINALIZADORES.height=20) then
    while gp_FINALIZADORES.height < 220 do
    begin
      gp_FINALIZADORES.height:= gp_FINALIZADORES.height+2;
      gp_FINALIZADORES.caption:='Finalizadores | - ';
      gp_FINALIZADORES.update;
    end
    else
    begin
      while gp_FINALIZADORES.height > 20 do
        begin
          gp_FINALIZADORES.Height:= gp_FINALIZADORES.Height-2;
          gp_FINALIZADORES.caption:='Finalizadores | + ';
          gp_FINALIZADORES.Update;
        end;
    end;
end;

procedure Tfrm_CHECKOUT.gp_LISTAPRODUTOSClick(Sender: TObject);
begin
  if(gp_listaprodutos.height=20) then
    while gp_listaprodutos.height < 220 do
    begin
      gp_listaprodutos.height:= gp_listaprodutos.height+2;
      gp_listaprodutos.caption:='Lista de Produtos Vendidos | - ';
      gp_listaprodutos.update;
    end
    else
    begin
      while gp_listaprodutos.height > 20 do
        begin
          gp_listaprodutos.Height:= gp_listaprodutos.Height-2;
          gp_listaprodutos.caption:='Lista de Produtos Vendidos | + ';
          gp_listaprodutos.Update;
        end;
    end;
end;

procedure Tfrm_CHECKOUT.gp_MOVIMENTOSClick(Sender: TObject);
begin
  if(gp_MOVIMENTOS.height=20) then
    while gp_MOVIMENTOS.height < 220 do
    begin
      gp_MOVIMENTOS.height:= gp_MOVIMENTOS.height+2;
      gp_MOVIMENTOS.caption:='Movimentos - Suprimento e Sangria | - ';
      gp_MOVIMENTOS.update;
    end
    else
    begin
      while gp_MOVIMENTOS.height > 20 do
        begin
          gp_MOVIMENTOS.Height:= gp_MOVIMENTOS.Height-2;
          gp_MOVIMENTOS.caption:='Movimentos - Suprimento e Sangria | + ';
          gp_MOVIMENTOS.Update;
        end;
    end;
end;

procedure Tfrm_CHECKOUT.gp_PEDIDOSClick(Sender: TObject);
begin
  if(gp_pedidos.height=20) then
    while gp_pedidos.height < 220 do
    begin
      gp_pedidos.height:= gp_pedidos.height+2;
      gp_pedidos.update;
      gp_pedidos.caption:='PEDIDOS S-N-E | - ';
    end
    else
    begin
      while gp_pedidos.height > 20 do
        begin
          gp_pedidos.Height:= gp_pedidos.Height-2;
          gp_pedidos.Update;
          gp_pedidos.caption:='PEDIDOS S-N-E | + ';
        end;
    end;
end;

{function Tfrm_CHECKOUT.OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;
var tipoIteracao: integer;
begin
  tipoIteracao := iteracaoTef.TipoIteracao;
  Result:= (tipoIteracao <> 1) and (tipoIteracao <> 2);
end;     }

procedure Tfrm_CHECKOUT.Produtos1Click(Sender: TObject);
begin
frm_con_produto.Show;
end;

{procedure Tfrm_CHECKOUT.tef_cappta;
begin
  cliente := CoClienteCappta.Create;
  tipoVia := 1;
  AutenticarPdv(cliente);
  ConfigurarModoIntegracao(true);
  frm_fechacupom.TMemoResultado.Text := String.Empty;
  TMemoResultado.Text := String.Empty;
  LabelQuantidadeDePagamentosMultiTef.Hide();
  FloatSpinEditQuantidadeDePagamentosMultiTef.Hide();
  LabelTipoParcelamentoPagamentoCredito.Hide();
  ComboBoxTipoParcelamentoPagamentoCredito.Hide();
  LabelQuantidadeParcelasPagamentoCredito.Hide();
  FloatSpinEditQuantidadeParcelasPagamentoCredito.Hide();
  FloatSpinEditQuantidadeParcelasPagamentoCredito.Value := 1;
end;      }

procedure Tfrm_CHECKOUT.TextEditNumeroControleCancelamentoKeyPress(
  Sender: TObject; var Key: Char);
begin
//if(key = #13)then btn_CANCELA_TEFClick(Self); // ou b.OnClick(b);
end;

procedure Tfrm_CHECKOUT.TextEditNumeroControleReimpressaoCupomKeyPress(
  Sender: TObject; var Key: Char);
begin
 //if(key = #13)then btn_REIMPRIME_TEFCLICK(Self); // ou b.OnClick(b);
end;

procedure Tfrm_CHECKOUT.Fechar1Click(Sender: TObject);
begin
btn_FECHARClick(Self);
end;

{procedure Tfrm_CHECKOUT.FinalizarPagamento();
var botaoSelecionado: Integer;
var mensagem: string;
begin
  if processandoPagamento = false then exit;
  if sessaoMultiTefEmAndamento then
  begin
     botaoSelecionado := 0;
     quantidadeCartoes:= quantidadeCartoes - 1;
     if quantidadeCartoes > 0 then exit;
  end;

  mensagem := GerarMensagemTransacaoAprovada;

  processandoPagamento := false;
  sessaoMultiTefEmAndamento := false;

  botaoSelecionado := MessageDlg(mensagem, mtConfirmation, mbOKCancel, 0);
  if botaoSelecionado = mrOK then cliente.ConfirmarPagamentos()
  else cliente.DesfazerPagamentos();

end;

procedure Tfrm_CHECKOUT.ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
var textoCodigoAnsi: string;
begin
  textoCodigoAnsi := Utf8ToAnsi('Código');
  AtualizarResultado(Format('%s: %d%s%s', [textoCodigoAnsi, resposta.CodigoMotivo, sLineBreak, resposta.Motivo]))
end;

procedure Tfrm_CHECKOUT.ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
var mensagemAprovada: string;
begin
    mensagemAprovada := String.Empty;
    numcontrole:= String.Empty;
    numautorizacao:=string.Empty;
    bandeira:=string.Empty;
    adquirente:=string.Empty;

   if (resposta.CupomCliente <> null) then mensagemAprovada := Format('%s%s',[ConcatenarCupons(mensagemAprovada, resposta.CupomCliente), sLineBreak]);
   if (resposta.CupomLojista <> null) then mensagemAprovada := ConcatenarCupons(mensagemAprovada, resposta.CupomLojista);
   numcontrole := ConcatenarControle(numcontrole, resposta.numeroControle);
   numautorizacao := ConcatenarAutorizacao(numautorizacao, resposta.CodigoAutorizacaoAdquirente);
   bandeira := ConcatenarBandeira(bandeira, resposta.NomeBandeiraCartao);
   cartao := ConcatenarCartao(cartao, resposta.NumeroCartaoCliente);
   adquirente:=ConcatenarAdquirente(adquirente, resposta.NomeAdquirente);
   //showmessage(' aqui '+ mensagemaprovada);
   if (resposta.CupomReduzido <> null) then mensagemAprovada := ConcatenarCupons(mensagemAprovada, resposta.CupomReduzido);

   AtualizarResultado(mensagemAprovada);
end;

procedure Tfrm_CHECKOUT.ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
var
  parametro: string;
  mensagemConvertida: string;
  acao: Int32;
  lowerBound, upperBound, contador: LongInt;
  listaTransacoes: PSafeArray;
  transacaoPendente: ITransacaoPendente;
begin
     mensagemConvertida := AnsiToUtf8(respostaTransacaoPendente.Mensagem);
     listaTransacoes := respostaTransacaoPendente.ListaTransacoesPendentes;

     SafeArrayGetLBound(listaTransacoes, 1, lowerBound);
     SafeArrayGetUBound(listaTransacoes, 1, upperBound);
     for contador := lowerBound to upperBound do
      begin
           SafeArrayGetElement(listaTransacoes, contador, transacaoPendente);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Número de Controle: ', transacaoPendente.numeroControle);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Bandeira: ', transacaoPendente.NomeBandeiraCartao);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Adquirente: ', transacaoPendente.NomeAdquirente);
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Valor: ', FloatToStr(transacaoPendente.valor));
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'Data: ', DateTimeToStr(transacaoPendente.DataHoraAutorizacao));
      end;

     parametro := InputBox('Sample API COM', mensagemConvertida, '');

     if Length(parametro) = 0 then
     begin
       acao := 2;
       parametro := ' ';
     end
     else begin acao := 1; end;

    cliente.EnviarParametro(parametro, acao);
end;                                    }

procedure Tfrm_CHECKOUT.sp_TEF_REIMPRIMEClick(Sender: TObject);
var
  reimprimirUltimoCupom: boolean;
  numeroControle: string;
begin
  frm_cupom.tmemoresultado.Visible:=true;
  if sessaoMultiTefEmAndamento = true then
  begin
     frm_cupom.CriarMensagemErro('Não é possível reimprimir um cupom com uma sessão multitef em andamento.'); exit;
  end;

  reimprimirUltimoCupom := frm_cupom.RadioButtonReimprimirUltimoCupom.Checked;

  if (reimprimirUltimoCupom) then
  begin
     frm_cupom.cliente.ReimprimirUltimoCupom(tipoVia)
  end
  else
  begin
       numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleReimpressaoCupom.Text));
       frm_cupom.cliente.ReimprimirCupom(numeroControle, frm_cupom.tipoVia);
  end;

  processandoPagamento := false;
  frm_cupom.IterarOperacaoTef();
  if (frm_cupom.tMemoresultado.GetTextLen <> 0) then frm_rel_tef.rlreport1.print;
  sleep(3000);
  TextEditNumeroControleReimpressaoCupom.Clear;
  TextEditNumeroControleReimpressaoCupom.visible:=false;
  frm_cupom.TMemoResultado.Text := String.Empty;
  frm_cupom.tmemoresultado.visible:=false;
  //btn_REIMPRIME_TEF.Visible:=false;
end;

procedure Tfrm_CHECKOUT.sp_TEF_CANCELAClick(Sender: TObject);
var
  numeroControle: string;
  senhaAdministrativa: string;
begin
 { tmemoresultado.Visible:=true;
  if sessaoMultiTefEmAndamento = true then
  begin
     CriarMensagemErro('Não é possível cancelar um pagamento com uma sessão multitef em andamento.'); exit;
  end;

  numeroControle := FormatarNumeroControle(StrToInt64(TextEditNumeroControleCancelamento.Text));
  senhaAdministrativa:= 'cappta';

  if Length(senhaAdministrativa) = 0 then
  begin
     CriarMensagemErro('A senha administrativa não pode ser vazia.');
     exit;
  end;

  cliente.CancelarPagamento(senhaAdministrativa, numeroControle);

  processandoPagamento := false;
  IterarOperacaoTef();
  if (tMemoresultado.GetTextLen <> 0) then frm_rel_tef.rlreport1.print;
  sleep(3000);
  TextEditNumeroControleCancelamento.Clear;
  TextEditNumeroControleCancelamento.Visible:=false;
  TMemoResultado.Text := String.Empty;
  tmemoresultado.visible:=false;
  //btn_CANCELA_TEF.Visible:=false;   }
end;

procedure Tfrm_CHECKOUT.ReimprimeTEF1Click(Sender: TObject);
begin
TextEditNumeroControleReimpressaoCupom.Visible:=TRUE;
SLEEP(2000);
TextEditNumeroControleReimpressaoCupom.Clear;
TextEditNumeroControleReimpressaoCupom.SetFocus;
//btn_REIMPRIME_TEF.Visible:=true;
end;

{procedure Tfrm_CHECKOUT.RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
var
  parametro: string;
  mensagemConvertida: string;
  acao: Int32;
begin
    mensagemConvertida := AnsiToUtf8(requisicaoParametros.Mensagem);
    parametro := InputBox('Sample API COM', mensagemConvertida, '');

    if Length(parametro) = 0 then
    begin
       acao := 2;
       parametro := ' ';
    end
    else begin acao := 1; end;

    cliente.EnviarParametro(parametro, acao);
end;

procedure Tfrm_CHECKOUT.AtualizarResultado(mensagem: string);
begin
  frm_fechacupom.TMemoResultado.Text:= AnsiToUtf8(mensagem);
  frm_fechacupom.TMemoResultado.Repaint;
  TMemoResultado.Text:= AnsiToUtf8(mensagem);
  TMemoResultado.Repaint;
end;

procedure Tfrm_CHECKOUT.ExibirMensagem(mensagem: IMensagem);
begin
  AtualizarResultado(mensagem.Descricao);
end;  }

procedure Tfrm_CHECKOUT.ExtrairLog1Click(Sender: TObject);
begin
frm_FECHACUPOM.ExtrairLog1Click(Self);
end;

{procedure Tfrm_CHECKOUT.DesabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= false;
  ButtonExecutarCrediario.Enabled:= false;
  ButtonExecutarCredito.Enabled:= false;
  ButtonExecutarDebito.Enabled:= false;
  ButtonExecutarReimpressao.Enabled:= false;
end;

procedure Tfrm_CHECKOUT.IniciarMultiCartoes();
begin
  quantidadeCartoes:= Trunc(FloatSpinEditQuantidadeDePagamentosMultiTef.Value);
  sessaoMultiTefEmAndamento:= true;
  cliente.IniciarMultiCartoes(quantidadeCartoes);
end;

procedure Tfrm_CHECKOUT.DesabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= false;
  RadioButtonNaoUsarMultiTef.Enabled:= false;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= false;
end;

procedure Tfrm_CHECKOUT.IterarOperacaoTef();
var
  iteracaoTef: IIteracaoTef;
begin
  if RadioButtonUsarMultiTef.Enabled then DesabilitarControlesMultiTef();
  DesabilitarBotoes();

  Repeat

    iteracaoTef := cliente.IterarOperacaoTef();

    if Supports(iteracaoTef, IMensagem) then
    begin
       ExibirMensagem(iteracaoTef as IMensagem);
       Sleep(INTERVALO_MILISEGUNDOS);
    end;

    if Supports(iteracaoTef, IRequisicaoParametro) then RequisitarParametros(iteracaoTef as IRequisicaoParametro);
    if Supports(iteracaoTef, IRespostaTransacaoPendente) then ResolverTransacaoPendente(iteracaoTef as IRespostaTransacaoPendente);

    if Supports(iteracaoTef, IRespostaOperacaoRecusada) then ExibirDadosOperacaoRecusada(iteracaoTef as IRespostaOperacaoRecusada);
    if Supports(iteracaoTef, IRespostaOperacaoAprovada) then
    begin
       ExibirDadosOperacaoAprovada(iteracaoTef as IRespostaOperacaoAprovada);
       cliente.ConfirmarPagamentos();
//       FinalizarPagamento();
       if frm_fechacupom.edt_valorvenda.text='' then frm_fechacupom.edt_valorvenda.text:='0,01';
       frm_fechacupom.edt_valorpago.text:=frm_FECHACUPOM.edt_valorvenda.Text;
       frm_fechacupom.valorvenda:=strtofloat(frm_fechacupom.edt_valorvenda.Text);
      //       frm_FECHACUPOM.btn_fechaClick(Self);
    end;

    Until OperacaoNaoFinalizada(iteracaoTef) = false;

  if (sessaoMultiTefEmAndamento = false) then HabilitarControlesMultiTef();
  HabilitarBotoes();
end;

procedure Tfrm_CHECKOUT.HabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= true;
  RadioButtonNaoUsarMultiTef.Enabled:= true;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= true;
end;

procedure Tfrm_CHECKOUT.HabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= true;
  ButtonExecutarCrediario.Enabled:= true;
  ButtonExecutarCredito.Enabled:= true;
  ButtonExecutarDebito.Enabled:= true;
  ButtonExecutarReimpressao.Enabled:= true;
end;


procedure Tfrm_CHECKOUT.ConfigurarModoIntegracao(exibirInterface: boolean);
var
    configs: Configuracoes;
begin
     configs := CoConfiguracoes.Create;
     configs.ExibirInterface := exibirInterface;
     cliente.Configurar(configs);
end;         }

procedure Tfrm_CHECKOUT.db_PEDIDOSCellClick(Column: TColumn);
begin
lbl_codfast.caption:=inttostr(dm_dados.zqry_VDVENDAIDFASTSALE.AsInteger);
end;

procedure Tfrm_CHECKOUT.db_PEDIDOSDblClick(Sender: TObject);
begin
dm_dados.zqry_FASTSALE.Close;
dm_dados.zqry_FASTSALE.SQL.Clear;
dm_dados.zqry_FASTSALE.SQL.Add('select * from fastsale where idfastsale=:idfast');
dm_dados.zqry_FASTSALE.ParamByName('idfast').AsInteger:=dm_dados.zqry_VDVENDAIDFASTSALE.AsInteger;
dm_dados.zqry_FASTSALE.Open;
if dm_dados.zqry_FASTSALE.IsEmpty then
begin
  showmessage('Busca não retornou valores');
  pedido:=0;
end
else
begin
  pedido:=1;
  dm_Dados.zqry_itfastsale.Close;
  dm_Dados.zqry_ITFASTSALE.SQL.Clear;
  dm_dados.zqry_ITFASTSALE.SQL.Add('select * from itfastsale where idfastsale=:id');
  dm_dados.zqry_ITFASTSALE.ParamByName('id').AsInteger:=dm_Dados.zqry_FASTSALEIDFASTSALE.AsInteger;
  dm_Dados.zqry_ITFASTSALE.Open;
end;
end;

procedure Tfrm_CHECKOUT.FormActivate(Sender: TObject);
begin
formaemissao:=frm_PREFACBR.cbFormaEmissao.ItemIndex;
tipoamb:=frm_PREFACBR.rgTipoAmb.ItemIndex;
emitcodcidade:=frm_PREFACBR.edtEmitCodCidade.Text;
Host := frm_prefacbr.edtSmtpHost.Text;
Port := frm_prefacbr.edtSmtpPort.Text;
Username := frm_prefacbr.edtSmtpUser.Text;
Password := frm_prefacbr.edtSmtpPass.Text;
From := frm_prefacbr.edtSmtpUser.Text;
SetSSL := frm_prefacbr.cbEmailSSL.Checked; // SSL - ConexÃ£o Segura
SetTLS := frm_prefacbr.cbEmailSSL.Checked;
assunto :=frm_prefacbr.edtEmailAssunto.Text;
//
dm_Dados.zqry_sgfilial.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_Dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;
dm_Dados.zqry_sgfilial.open;
//if dm_dados.zqry_SGFILIALTEF_CAPPTA.AsString='S' then tef_cappta;
//
dm_dados.zqry_SGSEQUENCIANFCE.Close;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Add('select * from sgsequencianfce where codemp=:empcod');
dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_sgsequencianfce.Open;
// CHECA SEQUENCIA NFE
DM_DADOS.zqry_SGSEQUENCIA_NF.close;
dm_Dados.zqry_SGSEQUENCIA_NF.open;
dm_dados.zqry_SGSEQUENCIA_NF.SQL.Clear;
dm_Dados.zqry_SGSEQUENCIA_NF.SQL.Add('select * from sgsequencia where sgtab=:tabsg and codemp=:empcod');
dm_dados.zqry_sgsequencia_NF.ParamByName('tabsg').asstring:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empcod').AsInteger:=99;
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
end;
//img_logotop.Picture.LoadFromFile(frm_principal.lbl_logomarca.caption);
ValidaCaixa;
end;

procedure Tfrm_CHECKOUT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if MessageBox(HANDLE, 'Deseja Encerrar as vendas deste dia?'#13'Confirme com Sim'#13'Para Encerrar depois clique em Não', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
begin
  btn_FECHACAIXAClick(Sender);
end
else
begin
  //
end;
{dm_dados.zqry_VDVENDA.Cancel;
dm_Dados.zqry_vdvenda.params.clear;
dm_Dados.zqry_vdvenda.close;}
end;

procedure Tfrm_CHECKOUT.FormCreate(Sender: TObject);
begin
{dm_dados.zqry_SGFILIAL.Params.Clear;
DM_DADOS.zqry_SGFILIAL.CLOSE;
dm_dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:emp');
dm_Dados.zqry_SGFILIAL.ParamByName('emp').AsInteger:=99;
dm_Dados.zqry_SGFILIAL.Open;
if dm_Dados.zqry_SGFILIALTEF_CAPPTA.AsString='S' THEN
BEGIN
    cliente := CoClienteCappta.Create;
    tipoVia := 1;
    AutenticarPdv(cliente);
    ConfigurarModoIntegracao(true);
    TMemoResultado.Text := String.Empty;
    LabelQuantidadeDePagamentosMultiTef.Hide();
    FloatSpinEditQuantidadeDePagamentosMultiTef.Hide();
    LabelTipoParcelamentoPagamentoCredito.Hide();
    ComboBoxTipoParcelamentoPagamentoCredito.Hide();
    LabelQuantidadeParcelasPagamentoCredito.Hide();
    FloatSpinEditQuantidadeParcelasPagamentoCredito.Hide();
    FloatSpinEditQuantidadeParcelasPagamentoCredito.Value := 1;
END;
dm_dados.zqry_SGFILIAL.Params.Clear;
DM_DADOS.zqry_SGFILIAL.CLOSE;}
end;

{procedure Tfrm_CHECKOUT.AutenticarPdv(cliente: IClienteCappta);
var
  XMLAutenticacao: TXMLDocument;
  ChaveAutenticacaoNode: IXMLNode;
  CnpjNode: IXMLNode;
  PdvNode: IXMLNode;
  erro: string;
  resultadoAutenticacao: integer;
  valorNumericoCnpj: Int64;
begin
  try
     XMLAutenticacao := TXMLDocument.Create(Self);
     XMLAutenticacao.LoadFromFile('autenticacao.xml');

     ChaveAutenticacaoNode :=  BuscarNodeXML(XMLAutenticacao, 'chaveAutenticacao');
     chaveAutenticacao := ChaveAutenticacaoNode.ChildNodes.First.NodeValue;

     CnpjNode := BuscarNodeXML(XMLAutenticacao, 'cnpj');
     cnpj := CnpjNode.ChildNodes.First.NodeValue;
     if Length(cnpj) <> 14 then
        raise Exception.Create('O valor passado na tag <cnpj> não tem 14 digitos (use um CNPJ sem pontuação).');
     if TryStrToInt64(cnpj, valorNumericoCnpj) = false then
        raise Exception.Create('O valor passado na tag <cnpj> não é númerico.');

     PdvNode := BuscarNodeXML(XMLAutenticacao, 'pdv');
     pdv := StrtoIntDef(PdvNode.ChildNodes.First.NodeValue, -1);
     if pdv = -1 then
        raise Exception.Create('O valor passado na tag <pdv> não é numérico.');

     resultadoAutenticacao:= cliente.AutenticarPdv(cnpj, pdv, chaveAutenticacao);

     Case resultadoAutenticacao of
       0 : exit;
       1 : ShowMessage('Não autorizado. Por favor, realize a autenticação para utilizar o CapptaGpPlus.');
       2 : ShowMessage('O CapptaGpPlus esta sendo inicializado, tente novamente em alguns instantes.');
       3 : ShowMessage('O formato da requisição recebida pelo CapptaGpPlus é inválido.');
       4 : ShowMessage('Operação cancelada pelo operador.');
       7 : ShowMessage('Ocorreu um erro interno no CapptaGpPlus.');
       8 : ShowMessage('Ocorreu um erro na comunicação entre a CappAPI e o CapptaGpPlus.');

     end;
     Application.Terminate;
  except on ex : Exception do
     begin
       erro := Format('%s%s%s%s%s',
            ['Não foi possível carregar o arquivo "autenticacao.xml".',
            sLineBreak,
            sLineBreak,
            'Erro: ',
            ex.Message]);
       ShowMessage(erro);
       Application.Terminate;
     end;
  end;
end;      }


procedure Tfrm_CHECKOUT.FormShow(Sender: TObject);
begin
pedido:=0;
dm_Dados.zqry_vdvenda.params.clear;
dm_Dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_Dados.zqry_Vdvenda.sql.add('select * from vdvenda where codtipomov=:mov and dtemitvenda=:data and codemp=:empcod');
dm_Dados.zqry_vdvenda.parambyname('mov').asinteger:=501;
dm_Dados.zqry_vdvenda.parambyname('data').asdate:=now;
dm_Dados.zqry_vdvenda.parambyname('empcod').asinteger:=99;
dm_Dados.zqry_vdvenda.open;
//
zqry_MAISVENDIDOS.Params.Clear;
zqry_MAISVENDIDOS.Close;
zqry_MAISVENDIDOS.SQL.Clear;
ZQRY_MAISVENDIDOS.SQL.Add('select * from maisvendidos where datavenda BETWEEN :DTINI AND :DTFIM ');
zqry_MAISVENDIDOS.ParamByName('dtini').asdate:=now;
zqry_MAISVENDIDOS.ParamByName('dtfim').AsDate:=now;
zqry_MAISVENDIDOS.Open;
//
zqry_TIPOSPAGTO.Params.Clear;
zqry_TIPOSPAGTO.Close;
zqry_TIPOSPAGTO.SQL.Clear;
ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where data BETWEEN :DTINI AND :DTFIM ');
zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=now;
zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=now;
zqry_TIPOSPAGTO.Open;
//
dm_dados.zqry_PVMOVCAIXA.Params.Clear;
dm_dados.zqry_PVMOVCAIXA.close;
dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
dm_Dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and codemp=:empcod order by nromov');
dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=Now;
dm_Dados.zqry_PVMOVCAIXA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_dados.zqry_PVMOVCAIXA.Open;
if (frm_principal.btn_inicializar.caption='Inicializa SAT') and (dm_dados.zqry_SGFILIALSATCFE.AsString='S') then frm_principal.btn_INICIALIZARClick(Self);
end;

procedure Tfrm_CHECKOUT.sp_CONFIGURACOESClick(Sender: TObject);
begin
frm_prefacbr.show;
pn_DIREITA_BOTTON.HEIGHT:=Round(screen.height/2);
pn_DIREITA_BOTTON.TOP:=Round((screen.height/2)+1);
//DBGRID DOS PEDIDOS
MostraTelaAguarde('Consultando Vendas');
dm_Dados.zqry_SGFILIAL.Close;
dm_Dados.zqry_SGFILIAL.SQL.Clear;
dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
dm_dados.zqry_SGFILIAL.Open;
//
dm_dados.zqry_VDCLIENTE.Params.Clear;
dm_DAdos.zqry_VDCLIENTE.Close;
dm_dados.zqry_VDCLIENTE.SQL.Clear;
dm_Dados.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod');
dm_Dados.zqry_VDCLIENTE.ParamByName('EMPCOD').AsInteger:=99;
dm_Dados.zqry_VDCLIENTE.Open;
//
dm_Dados.zqry_vdvenda.params.clear;
dm_Dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_Dados.zqry_Vdvenda.sql.add('select * from vdvenda where codtipomov=:mov and dtemitvenda=:data and codemp=:empcod');
dm_Dados.zqry_vdvenda.parambyname('mov').asinteger:=501;
dm_Dados.zqry_vdvenda.parambyname('data').asdate:=now;
dm_Dados.zqry_vdvenda.parambyname('empcod').asinteger:=99;
dm_Dados.zqry_vdvenda.open;
fechatelaaguarde;
end;

procedure Tfrm_CHECKOUT.sp_CUPOMClick(Sender: TObject);
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
  //Verifica se Caixa Fechado
 { dm_Dados.zqry_PVMOVCAIXA.Params.clear;
  dm_dados.zqry_PVMOVCAIXA.Close;
  dm_Dados.zqry_PVMOVCAIXA.SQL.Clear;
  dm_dados.zqry_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codcaixa=:caixacod and dtamov=:movdta and tipomov=:movtipo');
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('caixacod').AsInteger:=dm_Dados.estacao;
  dm_Dados.zqry_PVMOVCAIXA.ParamByName('movdta').AsDate:=now;
  dm_dados.zqry_PVMOVCAIXA.ParamByName('movtipo').AsString:='F';
  dm_dados.zqry_PVMOVCAIXA.Open;
  if dm_DADOS.zqry_PVMOVCAIXA.IsEmpty then
  begin                      }
    dm_dados.zqry_vdvenda.params.clear;
    dm_dados.zqry_vdvenda.close;
    frm_CUPOM.show;
    frm_cupom.BorderStyle:=bsNone;
    frm_cupom.edt_EAN.Clear;
    frm_cupom.edt_EAN.SetFocus;
    frm_cupom.WindowState:=wsNormal;
    frm_cupom.Height:=700;
    frm_cupom.Width:=1000;
    frm_cupom.Position:=poScreenCenter;
    frm_cupom.AbreCupom1Click(Self);
    frm_checkout.WindowState:=wsMinimized;
 { end
  else
  begin
    MOSTRATELANOTIFICA('CAIXA ESTÁ FECHADO','Para o movimento de '+datetostr(now));
  end;   }
end;
end;

procedure Tfrm_CHECKOUT.sp_PRODUTOSClick(Sender: TObject);
begin
frm_con_produto.show;
end;

procedure Tfrm_CHECKOUT.sp_SAIRClick(Sender: TObject);
begin
CLOSE;
end;

end.
