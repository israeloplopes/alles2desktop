unit cupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Menus, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, math,
  Vcl.Imaging.pngimage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, XMLDoc, XMLIntf,
  ACBrBase, ACBrDFe, ACBrNFe,ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass, ACBrMail, Cappta_Gp_Api_Com_TLB,
  Vcl.Samples.Spin , System.VarUtils, ActiveX, System.StrUtils,Vcl.Mask,
  ACBrDFeReport,
  ACBrDFeDANFeReport;




type
  Tfrm_CUPOM = class(TForm)
    btn_FECHAR: TBitBtn;
    lbl_HORA: TLabel;
    timer_RELOGIO: TTimer;
    imagemloja: TImage;
    btn_CONSULTAPRODUTO: TBitBtn;
    btn_CONSULTACLIENTE: TBitBtn;
    btn_ABRECUPOM: TBitBtn;
    btn_CANCELAITEM: TBitBtn;
    btn_CANCELACUPOM: TBitBtn;
    btn_FECHACUPOM: TBitBtn;
    lbl_STATUS: TLabel;
    timer_LETREIRO: TTimer;
    timer_DESCANSO: TTimer;
    PopupMenu1: TPopupMenu;
    AbreCupom1: TMenuItem;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    lbl_CLIENTE: TLabel;
    lbl_PRODUTO: TLabel;
    FechaCupom1: TMenuItem;
    lbl_DIAMES: TLabel;
    lbl_DIASEMANA: TLabel;
    edt_EAN: TEdit;
    dbgrid_ITENS: TDBGrid;
    dbt_DESCPROD: TDBText;
    edt_PRECOVENDA: TEdit;
    lbl_PRECO: TLabel;
    lbl_VALORTOTAL: TLabel;
    edt_QTD: TEdit;
    lbl_QTDITENS: TLabel;
    gp_VLRTOTAL: TGroupBox;
    gb_VLRUNITARIO: TGroupBox;
    MudaQuantidade1: TMenuItem;
    lbl_CUPOM: TLabel;
    ConsultaProduto1: TMenuItem;
    ConsultaClientes1: TMenuItem;
    N1: TMenuItem;
    CancelaCupom1: TMenuItem;
    CancelaItem1: TMenuItem;
    zqry_SGINICONSP: TZQuery;
    zdts_SGINICONSP: TDataSource;
    N2: TMenuItem;
    N3: TMenuItem;
    KillApplication1: TMenuItem;
    Calculadora1: TMenuItem;
    btn_MUDAQTD: TBitBtn;
    img_PRODUTO: TImage;
    btn_MUDAPRECO: TBitBtn;
    AlteraPreo1: TMenuItem;
    Image1: TImage;
    FechaTela1: TMenuItem;
    DBText1: TDBText;
    zqry_EXCLUIITEM: TZQuery;
    zdts_EXCLUIITEM: TDataSource;
    zqry_EXCLUIVENDA: TZQuery;
    zdts_EXCLUIVENDA: TDataSource;
    ReimprimeNota1: TMenuItem;
    IdFTP1: TIdFTP;
    btn_REIMPRIME: TBitBtn;
    ReenviaVenda1: TMenuItem;
    lbl_cstat: TLabel;
    pn_MAIN: TPanel;
    pn_LEFT: TPanel;
    pn_RIGHT: TPanel;
    RadioButtonPagamentoCreditoSemParcelas: TRadioButton;
    RadioButtonPagamentoCreditoComParcelas: TRadioButton;
    RadioButtonReimprimirUltimoCupom: TRadioButton;
    RadioButtonUsarMultiTef: TRadioButton;
    RadioButtonNaoReimprimirUltimoCupom: TRadioButton;
    TMemoResultado: TMemo;
    RadioButtonNaoUsarMultiTef: TRadioButton;
    LabelQuantidadeDePagamentosMultiTef: TLabel;
    LabelQuantidadeParcelasPagamentoCredito: TLabel;
    ComboBoxTipoParcelamentoPagamentoCredito: TComboBox;
    BitBtn1: TBitBtn;
    ButtonExecutarCancelamento: TBitBtn;
    ButtonExecutarCrediario: TBitBtn;
    ButtonExecutarCredito: TBitBtn;
    ButtonExecutarDebito: TBitBtn;
    ButtonExecutarReimpressao: TBitBtn;
    lbl_LOGOLOJA: TLabel;
    lbl_LOGOMARCA: TLabel;
    LabelTipoParcelamentoPagamentoCredito: TLabel;
    FloatSpinEditQuantidadeDePagamentosMultiTef: TSpinEdit;
    FloatSpinEditQuantidadeParcelasPagamentoCredito: TSpinEdit;
    Image2: TImage;
    img_FUNDO: TImage;
    Administrativo1: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    Image3: TImage;
    zqry_EQPRODUTO: TZQuery;
    zdts_EQPRODUTO: TDataSource;
    zqry_EQPRODUTOCODEMP: TIntegerField;
    zqry_EQPRODUTOCODPROD: TIntegerField;
    zqry_EQPRODUTODESCPROD: TWideStringField;
    zqry_EQPRODUTOCODBARPROD: TWideStringField;
    zqry_EQPRODUTOCODFISC: TWideStringField;
    zqry_EQPRODUTOSLDPROD: TFloatField;
    zqry_EQPRODUTOPRECOBASEPROD: TFloatField;
    zqry_VDFOTOPROD: TZQuery;
    zdts_VDFOTOPROD: TDataSource;
    zqry_VDFOTOPRODCODEMP: TIntegerField;
    zqry_VDFOTOPRODCODPROD: TIntegerField;
    zqry_VDFOTOPRODFOTOPROD: TBlobField;
    zqry_EQPRODUTOCODBALANCA: TIntegerField;
    lbl_CONTINGENCIA: TLabel;
    function ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
    function ConcatenarControle(numcontrole: string; cupom: string) : string;
    function ConcatenarBandeira(bandeira: string; cupom: string) : string;
    function ConcatenarAutorizacao(numautorizacao: string; cupom: string) : string;
    function ConcatenarCartao(cartao: string; cupom: string) : string;
    function ConcatenarAdquirente(adquirente: string; cupom: string) : string;
    function DeveIniciarMultiCartoes() : boolean;
    function OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;
    function GerarMensagemTransacaoAprovada : string;
    function BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : IXMLNode;
    function FormatarNumeroControle(numeroControle: double) : string;
    procedure IniciarMultiCartoes();
    procedure AutenticarPdv(cliente: IClienteCappta);
    procedure IterarOperacaoTef();
    procedure ConfigurarModoIntegracao(exibirInterface: boolean);
    procedure DesabilitarControlesMultiTef();
    procedure DesabilitarBotoes();
    procedure HabilitarBotoes();
    procedure HabilitarControlesMultiTef();
    procedure FinalizarPagamento();
    procedure ExibirMensagem(mensagem: IMensagem);
    procedure ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
    procedure ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
    procedure AtualizarResultado(mensagem: string);
    procedure RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
    procedure ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
    procedure CriarMensagemErro(mensagem: PChar);
    procedure ExtrairLog1Click(Sender: TObject);
    procedure tef_cappta;


    procedure validacaixa;
    procedure btn_FECHARClick(Sender: TObject);
    procedure timer_RELOGIOTimer(Sender: TObject);
    procedure timer_LETREIROTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure timer_DESCANSOTimer(Sender: TObject);
    procedure AbreCupom1Click(Sender: TObject);
    procedure btn_ABRECUPOMClick(Sender: TObject);
    procedure FechaCupom1Click(Sender: TObject);
    procedure BuscaEAN;
    procedure BuscaProduto;
    procedure BuscaProdutoPeso;
    procedure ExecutaSGINICONSP;
    procedure edt_EANKeyPress(Sender: TObject; var Key: Char);
    procedure btn_FECHACUPOMClick(Sender: TObject);
    procedure MudaQuantidade1Click(Sender: TObject);
    procedure edt_QTDKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CONFIGURA��ESClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ConsultaProduto1Click(Sender: TObject);
    procedure btn_CONSULTAPRODUTOClick(Sender: TObject);
    procedure ConsultaClientes1Click(Sender: TObject);
    procedure btn_CONSULTACLIENTEClick(Sender: TObject);
    procedure CancelaCupom1Click(Sender: TObject);
    procedure btn_CANCELACUPOMClick(Sender: TObject);
    procedure CancelaItem1Click(Sender: TObject);
    procedure dbgrid_ITENSCellClick(Column: TColumn);
    procedure dbgrid_ITENSKeyPress(Sender: TObject; var Key: Char);
    procedure KillApplication1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Calculadora1Click(Sender: TObject);
    procedure btn_MUDAQTDClick(Sender: TObject);
    procedure btn_MUDAPRECOClick(Sender: TObject);
    procedure edt_PRECOVENDAKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CANCELAITEMClick(Sender: TObject);
    procedure AlteraPreo1Click(Sender: TObject);
    procedure edt_EANChange(Sender: TObject);
    procedure edt_QTDExit(Sender: TObject);
    procedure FechaTela1Click(Sender: TObject);
    procedure edt_EANExit(Sender: TObject);
    procedure edt_PRECOVENDAExit(Sender: TObject);
    procedure edt_EANEnter(Sender: TObject);
    procedure edt_PRECOVENDAEnter(Sender: TObject);
    procedure ReimprimeNota1Click(Sender: TObject);
    procedure Reimpimir;
    procedure btn_REIMPRIMEClick(Sender: TObject);
    procedure ReenviaVenda1Click(Sender: TObject);
    procedure Administrativo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    var
      descanso, seqfastsale, item, numvenda, codpagto,formaemissao, tipoamb, meucupom, alterapreco,
      seqvenda, seqsequencia, sequencia,codprodexclui, idprodexclui, estecupom :integer;
      precoproduto, precototal, valortotal, pesoproduto,precoprodexclui : double;
      emitcodcidade, host, port, username, password, from, assunto : string;
      setssl, settls :Boolean;
      valorpeso:currency;
      // VEIO DO CHECKOUT
      nummov, tipovia, quantidadeParcelas, tipoParcelamento, pedido:integer;
      processandoPagamento, sessaoMultiTefEmAndamento,transacaoParcelada :Boolean;
      chaveAutenticacao, numcontrole, numautorizacao, bandeira,adquirente,cartao,
      cnpj: string;
      cliente: IClienteCappta;
      quantidadecartoes,  pdv: Int32;
      detalhes: DetalhesCredito;
      valor, saldonega: double;

    { Public declarations }
  end;

var
  frm_CUPOM: Tfrm_CUPOM;

implementation

{$R *.dfm}

uses dados, principal, fechacupom, uFuncoes, prefacbr, checkout, con_produto, con_clientes, UCalculadora;


FUNCTION RemoveZeros(S: string): string;
var
I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do
      begin
      Dec(I);
      end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
      begin
      Inc(J);
     end;
Result := Copy(S, J, (I-J)+1);
end;

function IsNum(S:String):Boolean;
var
  outvar: integer;
begin
  result:=  TryStrToInt(S,OutVar);
end;

function testanumero(texto:string):boolean;
var
  i: integer;
begin
  result:=false;
  for i:=1 to length(texto) do
    if texto[i] in ['0'..'9'] then
    begin
      result:=true;
      exit;
    end;
end;

function Tfrm_CUPOM.DeveIniciarMultiCartoes() : boolean;
begin
     Result:= (sessaoMultiTefEmAndamento = false) and RadioButtonUsarMultiTef.Checked;
end;

function Tfrm_CUPOM.ConcatenarCupons(mensagemAprovada: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [mensagemAprovada, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.ConcatenarControle(numcontrole: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [numcontrole, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.ConcatenarBandeira(bandeira: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [bandeira, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.ConcatenarAutorizacao(numautorizacao: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [numautorizacao, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.FormatarNumeroControle(numeroControle: double) : string;
var numeroControleTexto: string;
begin
  numeroControleTexto := FloatToStr(numeroControle);
  numeroControleTexto := ReplaceStr(numeroControleTexto.PadLeft(11), ' ', '0');
  Result:= numeroControleTexto;
end;

function Tfrm_CUPOM.ConcatenarAdquirente(adquirente: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [adquirente, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.ConcatenarCartao(cartao: string; cupom: string) : string;
begin
  Result:= Format('%s%s%s', [cartao, ReplaceStr(cupom, '"', ''), sLineBreak]);
end;

function Tfrm_CUPOM.GerarMensagemTransacaoAprovada : string;
var
  trecho1: string;
  trecho2: string;
  mensagem: string;
begin
  trecho1 := '�o';
  trecho2 := '';
  mensagem := 'Transa�%s Aprovada%s!!! %s Clique em "OK" para confirmar a%s transa�%s e "Cancelar" para desfaz�-la%s.';

  if sessaoMultiTefEmAndamento = true then
  begin
     trecho1 := '�es';
     trecho2 := 's'
  end;

  Result := Format(mensagem, [trecho1, trecho2, sLineBreak, trecho2, trecho1, trecho2]);
end;

function Tfrm_CUPOM.OperacaoNaoFinalizada(iteracaoTef: IIteracaoTef): boolean;
var tipoIteracao: integer;
begin
  tipoIteracao := iteracaoTef.TipoIteracao;
  Result:= (tipoIteracao <> 1) and (tipoIteracao <> 2);
end;

function Tfrm_CUPOM.BuscarNodeXML(XMLAutenticacao: TXMLDocument; nomeNode: string) : IXMLNode;
var
node : IXMLNode;
begin
     node := XMLAutenticacao.DocumentElement.ChildNodes.FindNode(nomeNode);

     if node = nil then
        raise Exception.Create(Format('N�o existe a tag <%s>.', [nomeNode]));
     if node.NodeValue = String.Empty then
        raise Exception.Create(Format('A tag <%s> est� sem valor definido.', [nomeNode]));

     Result := node;
end;

procedure Tfrm_CUPOM.IniciarMultiCartoes();
begin
  quantidadeCartoes:= Trunc(FloatSpinEditQuantidadeDePagamentosMultiTef.Value);
  sessaoMultiTefEmAndamento:= true;
  cliente.IniciarMultiCartoes(quantidadeCartoes);
end;

procedure Tfrm_CUPOM.AutenticarPdv(cliente: IClienteCappta);
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
        raise Exception.Create('O valor passado na tag <cnpj> n�o tem 14 digitos (use um CNPJ sem pontua��o).');
     if TryStrToInt64(cnpj, valorNumericoCnpj) = false then
        raise Exception.Create('O valor passado na tag <cnpj> n�o � n�merico.');

     PdvNode := BuscarNodeXML(XMLAutenticacao, 'pdv');
     pdv := StrtoIntDef(PdvNode.ChildNodes.First.NodeValue, -1);
     if pdv = -1 then
        raise Exception.Create('O valor passado na tag <pdv> n�o � num�rico.');

     resultadoAutenticacao:= cliente.AutenticarPdv(cnpj, pdv, chaveAutenticacao);

     Case resultadoAutenticacao of
       0 : exit;
       1 : ShowMessage('N�o autorizado. Por favor, realize a autentica��o para utilizar o CapptaGpPlus.');
       2 : ShowMessage('O CapptaGpPlus esta sendo inicializado, tente novamente em alguns instantes.');
       3 : ShowMessage('O formato da requisi��o recebida pelo CapptaGpPlus � inv�lido.');
       4 : ShowMessage('Opera��o cancelada pelo operador.');
       7 : ShowMessage('Ocorreu um erro interno no CapptaGpPlus.');
       8 : ShowMessage('Ocorreu um erro na comunica��o entre a CappAPI e o CapptaGpPlus.');

     end;
     Application.Terminate;
  except on ex : Exception do
     begin
       erro := Format('%s%s%s%s%s',
            ['N�o foi poss�vel carregar o arquivo "autenticacao.xml".',
            sLineBreak,
            sLineBreak,
            'Erro: ',
            ex.Message]);
       ShowMessage(erro);
       Application.Terminate;
     end;
  end;
end;

procedure Tfrm_CUPOM.IterarOperacaoTef();
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

procedure Tfrm_CUPOM.HabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= true;
  RadioButtonNaoUsarMultiTef.Enabled:= true;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= true;
end;

procedure Tfrm_CUPOM.HabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= true;
  ButtonExecutarCrediario.Enabled:= true;
  ButtonExecutarCredito.Enabled:= true;
  ButtonExecutarDebito.Enabled:= true;
  ButtonExecutarReimpressao.Enabled:= true;
end;

procedure Tfrm_CUPOM.ConfigurarModoIntegracao(exibirInterface: boolean);
var
    configs: Configuracoes;
begin
     configs := CoConfiguracoes.Create;
     configs.ExibirInterface := exibirInterface;
     cliente.Configurar(configs);
end;

procedure Tfrm_CUPOM.DesabilitarBotoes();
begin
  ButtonExecutarCancelamento.Enabled:= false;
  ButtonExecutarCrediario.Enabled:= false;
  ButtonExecutarCredito.Enabled:= false;
  ButtonExecutarDebito.Enabled:= false;
  ButtonExecutarReimpressao.Enabled:= false;
end;

procedure Tfrm_CUPOM.DesabilitarControlesMultiTef();
begin
  RadioButtonUsarMultiTef.Enabled:= false;
  RadioButtonNaoUsarMultiTef.Enabled:= false;
  FloatSpinEditQuantidadeDePagamentosMultiTef.Enabled:= false;
end;

procedure Tfrm_CUPOM.ExibirDadosOperacaoRecusada(resposta: IRespostaOperacaoRecusada);
var textoCodigoAnsi: string;
begin
  textoCodigoAnsi := Utf8ToAnsi('C�digo');
  AtualizarResultado(Format('%s: %d%s%s', [textoCodigoAnsi, resposta.CodigoMotivo, sLineBreak, resposta.Motivo]))
end;

procedure Tfrm_CUPOM.ExibirDadosOperacaoAprovada(resposta: IRespostaOperacaoAprovada);
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

procedure Tfrm_CUPOM.ResolverTransacaoPendente(respostaTransacaoPendente: IRespostaTransacaoPendente);
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
           mensagemConvertida := Concat(mensagemConvertida, sLineBreak, 'N�mero de Controle: ', transacaoPendente.numeroControle);
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
end;

procedure Tfrm_CUPOM.FinalizarPagamento();
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

procedure Tfrm_CUPOM.AtualizarResultado(mensagem: string);
begin
  frm_fechacupom.TMemoResultado.Text:= AnsiToUtf8(mensagem);
  frm_fechacupom.TMemoResultado.Repaint;
  TMemoResultado.Text:= AnsiToUtf8(mensagem);
  TMemoResultado.Repaint;
end;

procedure Tfrm_CUPOM.ExibirMensagem(mensagem: IMensagem);
begin
  AtualizarResultado(mensagem.Descricao);
end;

procedure Tfrm_CUPOM.ExtrairLog1Click(Sender: TObject);
begin
frm_FECHACUPOM.ExtrairLog1Click(Self);
end;

procedure Tfrm_CUPOM.RequisitarParametros(requisicaoParametros: IRequisicaoParametro);
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

procedure Tfrm_CUPOM.CriarMensagemErro(mensagem: PChar);
begin
     Application.MessageBox(mensagem, 'Erro', MB_OK);
end;

procedure Tfrm_CUPOM.tef_cappta;
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
end;

procedure Tfrm_CUPOM.ValidaCaixa;
begin
    frm_checkout.zqry_CAIXAMOVABERTO.Params.Clear;
    frm_checkout.zqry_CAIXAMOVABERTO.Close;
    frm_checkout.zqry_CAIXAMOVABERTO.SQL.Clear;
    frm_checkout.zqry_CAIXAMOVABERTO.SQL.Add('SELECT MAX(DTAMOV)AS ULTCAIXA, MAX(NROMOV) AS NUMERO FROM PVMOVCAIXA');
    frm_checkout.zqry_caixamovaberto.SQL.Add('WHERE CODEMP=:EMPCOD AND CODCAIXA=:CAIXACOD');
    frm_checkout.zqry_CAIXAMOVABERTO.ParamByName('EMPCOD').AsInteger:=DM_DADOS.codemp;
    frm_checkout.zqry_CAIXAMOVABERTO.ParamByName('CAIXACOD').AsInteger:=dm_DADOS.estacao;
    frm_checkout.zqry_CAIXAMOVABERTO.Open;
    dm_Dados.ultdata:=frm_checkout.zqry_CAIXAMOVABERTO.FieldByName('ultcaixa').AsDateTime;
    nummov:= frm_checkout.zqry_CAIXAMOVABERTO.fieldbyname('numero').AsInteger;
    dm_dados.datahoje:=now;
end;


procedure Tfrm_CUPOM.ReenviaVenda1Click(Sender: TObject);
var
  ultvenda,ultcupom:integer;
  buscaultvenda,buscaultcupom:string;
begin
  ultvenda:=strtoint(dbtext1.Caption)-1;
  ultcupom:=strtoint(lbl_cupom.Caption)-1;
  buscaultvenda:=inttostr(ultvenda);
  if not(InputQuery('Reenviando Venda para Emiss�o', 'Informe o N.� da Venda',buscaultvenda)) then
  exit;
  Dm_DADOS.zqry_VDVENDA.Close;
  Dm_DADOS.zqry_VDVENDA.Params.Clear;
  dm_Dados.zqry_vdvenda.sql.clear;
  DM_dADOS.zqry_vdvenda.sql.add('select * from vdvenda where codvenda=:vendacod and codemp=:empcod and codtipomov=:tipomov');
  DM_DADOS.zqry_vdvenda.params.parambyname('vendacod').asinteger:=strtoint(buscaultvenda);
  dm_dados.zqry_VDVENDA.Params.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_dados.zqry_VDVENDA.Params.ParamByName('tipomov').AsInteger:=501;
  dm_dados.zqry_vdvenda.open;
  if dm_dados.zqry_VDVENDA.IsEmpty then
  begin
    showmessage('Dados nao foram localizados');
  end
  else
  begin
    showmessage('Dados localizados');
    dm_dados.zqry_FASTSALE.Close;
    dm_dados.zqry_FASTSALE.Params.Clear;
    dm_dados.zqry_FASTSALE.SQL.Clear;
    dm_dados.zqry_FASTSALE.SQL.Add('select * from fastsale where idfastsale=:doc');
    dm_dados.zqry_FASTSALE.ParamByName('doc').AsInteger:=ultcupom;
    dm_dados.zqry_FASTSALE.Open;
    if dm_dados.zqry_FASTSALE.IsEmpty then
    begin
      Showmessage('Dados n�o podem ser carregados');
    end
    else
    begin
      dm_dados.zqry_ITFASTSALE.Close;
      dm_dados.zqry_ITFASTSALE.Params.Clear;
      dm_dados.zqry_ITFASTSALE.SQL.Clear;
      dm_Dados.zqry_ITFASTSALE.SQL.Add('select * from itfastsale where idfastsale=:achoudoc');
      dm_dados.zqry_ITFASTSALE.ParamByName('achoudoc').AsInteger:=dm_dados.zqry_FASTSALEIDFASTSALE.AsInteger;
      dm_dados.zqry_ITFASTSALE.Open;
    end;
  end;
end;

procedure Tfrm_CUPOM.Reimpimir;
var
  arquivoweb, arquivolocal,diretorio, erro:string;
begin
    if dm_dados.logodanfe<>'' then
    begin
      frm_prefacbr.ACBrNFe1.DANFE.Logo:=dm_dados.logodanfe;
    end;
    frm_prefacbr.ACBrNFe1.NotasFiscais.Clear;
    arquivoweb:='http://www.nonoelemento.com.br/notas/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml';
    arquivolocal:=dm_Dados.zqry_SGNFUPLOAD.asstring;
    diretorio:='c:\integra\temp';
    if FileExists(arquivolocal) then
    begin
      frm_prefacbr.ACBrNFe1.NotasFiscais.LoadFromFile(arquivolocal,False);
    end
    else
    begin
      if fileExists(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml') then
      begin
        frm_prefacbr.ACBrNFe1.NotasFiscais.LoadFromFile(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml',False);
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
        { Espera at� 10 segundos pela conex�o }
          IdFTP1.Connect();
          idFTP1.ChangeDir('/'+dm_Dados.zqry_SGFILIALCNPJFILIAL.AsString+'/');
          IdFTP1.get(trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml', diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml', False, IdFTP1.ResumeSupported);
        except
        on E: Exception do
          Erro:= E.Message;
        end;
        fechatelaaguarde;
        idftp1.Disconnect();
        frm_prefacbr.ACBrNFe1.NotasFiscais.LoadFromFile(diretorio+'\'+trim(dm_Dados.zqry_SGNFCHAVE.AsString)+'-nfe.xml',False);
      end;
    //edt_NUM_NF.Clear;
  end;
//btn_REIMPRIME_NF.Visible:=FALSE;
frm_prefacbr.ACBrNFe1.NotasFiscais.Imprimir;
//rg_TIPONF.ItemIndex:= -1;
end;

procedure Tfrm_CUPOM.ExecutaSGINICONSP;
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

procedure Tfrm_CUPOM.BuscaProdutoPeso;
var
 i,  prod_cod, contador  : integer;
 sldatual,qtd_fim:double;
begin
alterapreco:=1;
dbgrid_ITENS.Update;
//dbgrid_ESTOQUE.DataSource.DataSet.Last();
i:=1;
qtd_fim:=0;
precoproduto:=0;
qtd_fim:=strtofloat(edt_qtd.Text);
item:=item+1;
//  dbt_Descprod.visible:=true;
  // CARREGA O PRE�O DO PRODUTO
  edt_PRECOVENDA.Clear;
  edt_PRECOVENDA.Text:=FormatFloat('##0.0000',ZQRY_EQPRODUTOPRECOBASEPROD.asfloat);//dm_Dados.cds_EQPRODUTOPRECOBASEPROD.Asstring;
  edt_precovenda.Update;
  precoproduto:=valorpeso;//strtofloat(edt_precovenda.Text);//dm_dados.cds_EQPRODUTOPRECOBASEPROD.asfloat;
  // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
  precototal:=0;
  precototal:=valorpeso;
  // VALOR TOTAL SOMA TODOS OS PRECOS TOTAIS PARA GERAR O GRANDE TOTAL
  valortotal:=valortotal+precototal;
  lbl_produto.Caption:=trim(ZQRY_EQPRODUTODESCPROD.value);
  lbl_preco.Caption:='R$ '+FormatFloat('#,,,,0.00', valorpeso);
  lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
  // Envio os dados para a tabela e faz a grava��o
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(id_itfastsale) as Ordem FROM itfastsale');
  zquery1.Open;
  dm_Dados.zqry_ITFASTSALE.Close;
  dm_dados.zqry_ITFASTSALE.Open;
  dm_Dados.zqry_ITFASTSALE.append;
  dm_dados.zqry_ITFASTSALEID_ITFASTSALE.AsInteger:=1+zquery1.FieldByname('Ordem').asInteger;
  dm_Dados.zqry_ITFASTSALEITEM.ASINTEGER:=ITEM;
  dm_dados.zqry_ITFASTSALEIDFASTSALE.AsInteger:=strtoint(LBL_CUPOM.Caption);
  dm_Dados.zqry_ITFASTSALECODPROD.AsInteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
  dm_dados.zqry_ITFASTSALEQUANT.asfloat:=SimpleRoundto(pesoproduto,-3);
  dm_dados.zqry_ITFASTSALEVLRVENDA.Value:=valorpeso;
  dm_dados.zqry_ITFASTSALECODFISC.AsString:=ZQRY_EQPRODUTOCODFISC.asstring;
  dm_dados.zqry_ITFASTSALE.post;
  dm_dados.zqry_ITFASTSALE.ApplyUpdates();
  dm_dados.zqry_ITFASTSALE.Close;
  dm_dados.zqry_ITFASTSALE.SQL.Clear;
  dm_Dados.zqry_ITFASTSALE.SQL.Add('select * from itfastsale where idfastsale=:venda');
  dm_Dados.zqry_ITFASTSALE.ParamByName('venda').Value:=strtoint(lbl_cupom.Caption);
  dm_dados.zqry_ITFASTSALE.Open;
  //
  //
  dm_Dados.zqry_FASTSALE.Edit;
  dm_Dados.zqry_FASTSALEVALORTOTAL.ASFLOAT:=VALORTOTAL;
  dm_dados.zqry_fastsale.post;
  dm_dados.zqry_FASTSALE.applyupdates();

  //item da venda
  dm_Dados.zqry_vditvenda.close;
  dm_Dados.zqry_vditvenda.open;
  dm_dados.zqry_VDITVENDA.append;
  dm_dados.zqry_VDITVENDAcodemp.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_VDITVENDACODFILIAL.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPNT.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALNT.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPPD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_VDITVENDACODFILIALPD.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPAX.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALAX.value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPTT.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALTT.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDATIPOVENDA.AsString:='V';
  // CONSULTA NCM NA CLASSIFICA��O FISCAL
  frm_fechacupom.zqry_ITREGRAFISCAL.Close;
  frm_fechacupom.zqry_ITREGRAFISCAL.SQL.Clear;
  frm_fechacupom.zqry_ITREGRAFISCAL.SQL.Add('select *  from lfitregrafiscal where codtipomov=:tipomov and codemp=:empcod and cvitrf=:mov and noufitrf=:estado');
  frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('tipomov').AsInteger:=501;
  frm_fechacupom.zqry_ITREGRAFISCAL.parambyname('empcod').asinteger:=99;
  frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('mov').AsString:='V';
  if ufigual=0 then frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='S' else frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='N';
  frm_fechacupom.zqry_ITREGRAFISCAL.Open;
  if frm_fechacupom.zqry_ITREGRAFISCAL.IsEmpty THEN dm_dados.zqry_VDITVENDACODNAT.Value:='8888' else   dm_dados.zqry_VDITVENDACODNAT.Value:=frm_fechacupom.zqry_ITREGRAFISCALCODNAT.AsString;
  dm_dados.zqry_VDITVENDACODALMOX.Value:=1;
  dm_dados.zqry_VDITVENDATIPOFISC.Value:='II';
  dm_dados.zqry_VDITVENDATIPOST.Value:='SI';
  dm_dados.zqry_VDITVENDAEMMANUT.Value:='N';
  dm_dados.zqry_VDITVENDAORIGFISC.Value:='0';
  dm_dados.zqry_VDITVENDACODTRATTRIB.Value:='40';
  dm_dados.zqry_VDITVENDAVLRPRODITVENDA.AsCurrency:=precoproduto*strtofloat(edt_qtd.Text);//dm_dados.zqry_ITFASTSALEVLRVENDA.AsCurrency;
  dm_Dados.zqry_VDITVENDAVLRDESCITVENDA.AsCurrency:=0.00;
  DM_DADOS.zqry_VDITVENDADTINS.AsDateTime:=DATE;
  DM_dADOS.zqry_VDITVENDAHINS.AsDateTime:=TIME;
  dm_Dados.zqry_VDITVENDACODVENDA.Value:=seqsequencia;
  dm_Dados.zqry_VDITVENDACODITVENDA.AsInteger:=item;
  dm_Dados.zqry_VDITVENDACODPROD.AsInteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
  dm_Dados.zqry_VDITVENDAQTDITVENDA.asfloat:=SimpleRoundto(pesoproduto,-3);
  dm_Dados.zqry_VDITVENDAPRECOITVENDA.AsCurrency:=valorpeso;
  DM_DADOS.zqry_VDITVENDAIDUSUINS.Value:=dm_dados.usuariousando;
  dm_dados.zqry_VDITVENDA.post;
  dm_dados.zqry_vditvenda.ApplyUpdates();
  //
    ZQRY_EQPRODUTO.Close;
  ZQRY_EQPRODUTO.sql.clear;
  ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99 order by descprod');
  //    DM_DADOS.cds_EQPRODUTO.params.parambyname('codmaq').asinteger:=strtoint(lbl_estacao.Caption);
  ZQRY_EQPRODUTO.open;
  //
  dm_Dados.zqry_ITFASTSALE.Close;
  dm_Dados.zqry_ITFASTSALE.Open;
  lbl_QTDITENS.Caption:=floatTOSTR(DM_dADOS.zqry_ITFASTSALE.RecordCount);

  dbgrid_ITENS.DataSource.DataSet.Last();
  dbt_DESCPROD.Update;
  edt_ean.SetFocus;
  edt_ean.Clear;
  edt_qtd.enabled:=false;
  edt_qtd.Text:='1';
  edt_precovenda.Clear;
  precototal:=0;
  precoproduto:=0;
  pesoproduto:=0;
  alterapreco:=1;
  edt_PRECOVENDA.Enabled:=false;
end;

procedure Tfrm_CUPOM.BuscaProduto;
var
 i,  prod_cod, contador  : integer;
 sldatual,qtd_fim:double;
begin
  dbgrid_ITENS.Update;
//dbgrid_ESTOQUE.DataSource.DataSet.Last();

precoproduto:=0;
i:=1;
qtd_fim:=strtofloat(edt_qtd.Text);
item:=item+1;
//SE NAO CONTROLA ESTOQUE
//  dbt_Descprod.visible:=true;
  // CARREGA O PRE�O DO PRODUTO
  //edt_PRECOVENDA.Clear;
  if (alterapreco=1) and (edt_PRECOVENDA.Text='') then
  begin
    edt_PRECOVENDA.Text:=FormatFloat('##0.0000', ZQRY_EQPRODUTOPRECOBASEPROD.asfloat);//dm_Dados.cds_EQPRODUTOPRECOBASEPROD.Asstring;
    precoproduto:=strtofloat(edt_precovenda.Text);
  end;
  if (alterapreco=2)  and (edt_precovenda.Text='') then
  begin
    edt_PRECOVENDA.Text:=FormatFloat('##0.0000', ZQRY_EQPRODUTOPRECOBASEPROD.asfloat);//dm_Dados.cds_EQPRODUTOPRECOBASEPROD.Asstring;
    precoproduto:=strtofloat(edt_precovenda.Text);
  end;
  if (alterapreco=2)  and (edt_precovenda.Text<>'') then
  begin
    precoproduto:=strtofloat(edt_precovenda.Text);
  end;
  //precoproduto:=strtofloat(edt_precovenda.Text);//dm_dados.cds_EQPRODUTOPRECOBASEPROD.asfloat;
  // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
  precototal:=0;
  precototal:=strtofloat(edt_qtd.text)*precoproduto;
  // VALOR TOTAL SOMA TODOS OS PRECOS TOTAIS PARA GERAR O GRANDE TOTAL
  valortotal:=valortotal+precototal;
  lbl_produto.Caption:=trim(ZQRY_EQPRODUTODESCPROD.value);
  lbl_preco.Caption:='R$ '+FormatFloat('#,,,,0.00', precoproduto);
  lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
  // Envio os dados para a tabela e faz a grava��o
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(id_itfastsale) as Ordem FROM itfastsale');
  zquery1.Open;
  dm_Dados.zqry_ITFASTSALE.Close;
  dm_dados.zqry_ITFASTSALE.Open;
  dm_Dados.zqry_ITFASTSALE.append;
  dm_dados.zqry_ITFASTSALEID_ITFASTSALE.AsInteger:=1+zquery1.FieldByname('Ordem').asInteger;
  dm_Dados.zqry_ITFASTSALEITEM.ASINTEGER:=ITEM;
  dm_dados.zqry_ITFASTSALEIDFASTSALE.AsInteger:=strtoint(LBL_CUPOM.Caption);
  dm_Dados.zqry_ITFASTSALECODPROD.AsInteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
  dm_dados.zqry_ITFASTSALEQUANT.Value:=strtofloat(edt_QTD.Text);
  dm_dados.zqry_ITFASTSALEVLRVENDA.Value:=precoproduto*strtofloat(edt_qtd.Text);
  dm_dados.zqry_ITFASTSALECODFISC.AsString:=ZQRY_EQPRODUTOCODFISC.asstring;
  dm_dados.zqry_ITFASTSALE.post;
  //dm_dados.zqry_ITFASTSALE.ApplyUpdates();

  //RETIRADO CLIENTE ESUTI DANDO ERRO NESSA PARTE
  {dm_dados.zqry_ITFASTSALE.Close;
    dm_Dados.zqry_ITFASTSALE.Params.Clear;
  dm_dados.zqry_ITFASTSALE.SQL.Clear;
  dm_Dados.zqry_ITFASTSALE.SQL.Add('select * from itfastsale where idfastsale=:venda');
  dm_Dados.zqry_ITFASTSALE.ParamByName('venda').Value:=seqfastsale;//strtoint(lbl_cupom.Caption);
  dm_dados.zqry_ITFASTSALE.Open; }

  //
  dm_Dados.zqry_FASTSALE.Edit;
  dm_Dados.zqry_FASTSALEVALORTOTAL.ASFLOAT:=VALORTOTAL;
  dm_dados.zqry_fastsale.post;
  dm_dados.zqry_FASTSALE.applyupdates();
  //item da venda
  dm_Dados.zqry_vditvenda.close;
  dm_Dados.zqry_vditvenda.open;
  dm_dados.zqry_VDITVENDA.append;
  dm_dados.zqry_VDITVENDAcodemp.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_VDITVENDACODFILIAL.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPNT.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALNT.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPPD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_VDITVENDACODFILIALPD.Value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPAX.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALAX.value:= DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDACODEMPTT.Value:= DM_DADOS.zqry_SGFILIALCODEMP.Value;
  dm_Dados.zqry_VDITVENDACODFILIALTT.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_VDITVENDATIPOVENDA.AsString:='V';
  // CONSULTA NCM NA CLASSIFICA��O FISCAL
  frm_fechacupom.zqry_ITREGRAFISCAL.Close;
  frm_fechacupom.zqry_ITREGRAFISCAL.SQL.Clear;
  frm_fechacupom.zqry_ITREGRAFISCAL.SQL.Add('select *  from lfitregrafiscal where codtipomov=:tipomov and codemp=:empcod and cvitrf=:mov and noufitrf=:estado');
  frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('tipomov').AsInteger:=501;
  frm_fechacupom.zqry_ITREGRAFISCAL.parambyname('empcod').asinteger:=99;
  frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('mov').AsString:='V';
  if ufigual=0 then frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='S' else frm_fechacupom.zqry_ITREGRAFISCAL.ParamByName('estado').AsString:='N';
  frm_fechacupom.zqry_ITREGRAFISCAL.Open;
  if frm_fechacupom.zqry_ITREGRAFISCAL.IsEmpty THEN dm_dados.zqry_VDITVENDACODNAT.Value:='8888' else   dm_dados.zqry_VDITVENDACODNAT.Value:=frm_fechacupom.zqry_ITREGRAFISCALCODNAT.AsString;
  dm_dados.zqry_VDITVENDACODALMOX.Value:=1;
  dm_dados.zqry_VDITVENDATIPOFISC.Value:='II';
  dm_dados.zqry_VDITVENDATIPOST.Value:='SI';
  dm_dados.zqry_VDITVENDAEMMANUT.Value:='N';
  dm_dados.zqry_VDITVENDAORIGFISC.Value:='0';
  dm_dados.zqry_VDITVENDACODTRATTRIB.Value:='40';
  dm_dados.zqry_VDITVENDAVLRPRODITVENDA.AsCurrency:=precoproduto*strtofloat(edt_qtd.Text);//dm_dados.zqry_ITFASTSALEVLRVENDA.AsCurrency;
  dm_Dados.zqry_VDITVENDAVLRDESCITVENDA.AsCurrency:=0.00;
  DM_DADOS.zqry_VDITVENDADTINS.AsDateTime:=DATE;
  DM_dADOS.zqry_VDITVENDAHINS.AsDateTime:=TIME;
  dm_Dados.zqry_VDITVENDACODVENDA.Value:=seqsequencia;
  dm_Dados.zqry_VDITVENDACODITVENDA.AsInteger:=item;
  dm_Dados.zqry_VDITVENDACODPROD.AsInteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
  dm_Dados.zqry_VDITVENDAQTDITVENDA.asfloat:=strtofloat(edt_QTD.Text);
  dm_Dados.zqry_VDITVENDAPRECOITVENDA.AsCurrency:=(precoproduto*strtofloat(edt_qtd.Text))/strtofloat(edt_QTD.Text);
  DM_DADOS.zqry_VDITVENDAIDUSUINS.Value:=dm_dados.usuariousando;
  dm_dados.zqry_VDITVENDA.post;
  dm_dados.zqry_vditvenda.ApplyUpdates();
  //
  dm_dados.zqry_ITFASTSALE.Close;
  dm_dados.zqry_ITFASTSALE.SQL.Clear;
  dm_Dados.zqry_ITFASTSALE.SQL.Add('select * from itfastsale where idfastsale=:estavenda');
  dm_Dados.zqry_ITFASTSALE.ParamByName('estavenda').Value:=strtoint(lbl_cupom.Caption);
  dm_dados.zqry_ITFASTSALE.Open;
//  showmessage('Cupom '+lbl_cupom.Caption);
  //
  ZQRY_EQPRODUTO.Close;
  ZQRY_EQPRODUTO.sql.clear;
  ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99 order by descprod');
  //    DM_DADOS.cds_EQPRODUTO.params.parambyname('codmaq').asinteger:=strtoint(lbl_estacao.Caption);
  ZQRY_EQPRODUTO.open;
  //
  dm_Dados.zqry_ITFASTSALE.Close;
  dm_Dados.zqry_ITFASTSALE.Open;
  lbl_QTDITENS.Caption:=INTTOSTR(DM_dADOS.zqry_ITFASTSALE.RecordCount);

  dbgrid_ITENS.DataSource.DataSet.Last();
  dbt_DESCPROD.Update;
  edt_ean.Clear;
  edt_qtd.Text:='1';
  edt_qtd.enabled:=false;
  edt_precovenda.Clear;
  precototal:=0;
  precoproduto:=0;
  pesoproduto:=0;
  alterapreco:=1;
  edt_PRECOVENDA.Enabled:=false;
end;


procedure Tfrm_CUPOM.BuscaEAN;
var
 i, qtd_fim, prod_cod, contador,tamanho,testanum  : integer;
 sldatual, precoproduto:double;
 PrimeiraLetra, SeqCodigo, SeqPreco : string;
begin
{  if frm_cupom.lbl_status.Caption='CAIXA DISPON�VEL !' then
  begin
    {zquery1.Close;
    zquery1.SQL.Clear;
    zquery1.sql.add('SELECT MAX(idfastsale) as Sequencia FROM fastsale');
    zquery1.Open;
    seqfastsale:=1+zquery1.FieldByname('Sequencia').asinteger;
    try
      dm_dados.zqry_FASTSALE.Close;
      dm_dados.zqry_FASTSALE.Open;
      dm_dados.zqry_FASTSALE.insert;
      dm_Dados.zqry_FASTSALEDATACADASTRO.Value:=date+time;
      dm_dados.zqry_FASTSALEIDFASTSALE.AsInteger:=seqfastsale;//1+ibquery1.FieldByname('sequencia').asInteger;
      dm_Dados.zqry_fastsalecodcupom.asInteger:=0;//strtoint(edt_cupomdesc.Text);
      dm_Dados.zqry_FASTSALECODCLI.AsInteger:=dm_Dados.zqry_VDCLIENTECODCLI.AsInteger;
      dm_dados.zqry_FASTSALECODPLANOPAG.asinteger:=1;//dm_dados.zqry_FNPLANOPAGCODPLANOPAG.AsInteger;
      dm_Dados.zqry_FASTSALECODVEND.AsInteger:=1;
      lbl_CLIENTE.Caption:='ID.: 1';//+dm_dados.zqry_VDCLIENTERAZCLI.Value;
      lbl_CUPOM.caption:=inttostr(seqfastsale);
      meucupom:=seqfastsale;
      dm_dados.zqry_fastsale.POST;
      dm_dados.zqry_FASTSALE.applyupdates();
      lbl_STATUS.Caption:='CUPOM ABERTO';
      frm_CUPOM.descanso:=0;
      btn_FECHAR.Enabled:=false;
      MOSTRATELANOTIFICA('CUPOM ABERTO','Boas Compras');
    except
    on E:Exception do
      MessageDlg('Erro ao conectar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
    end;}
 // if frm_cupom.descanso=1 then timer_DESCANSO.Enabled:=true else timer_descanso.Enabled:=false;
    { AbreCupom1Click(Self);
  end;                  }

  tamanho:=0;
  tamanho:=Length(edt_ean.text);
  primeiraletra:=copy(edt_ean.Text,1,1);
  //showmessage(inttostr(tamanho));

  if (tamanho = 13) and (primeiraletra='2') then
  begin
//    seqcodigo:=copy(edt_ean.Text,2,4);
//    seqpreco:=copy(edt_ean.Text,6,7);
    seqcodigo:=copy(edt_ean.Text,2,6);
    seqpreco:=copy(edt_ean.Text,8,5);
    //showmessage(primeiraletra+ ' - '+seqcodigo + ' - '+seqpreco);
    ZQRY_EQPRODUTO.Params.Clear;
    ZQRY_EQPRODUTO.Close;
    ZQRY_EQPRODUTO.sql.clear;
    ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99  and codbalanca=:prodcod');
    ZQRY_EQPRODUTO.parambyname('prodcod').value:=RemoveZeros(seqcodigo);
    ZQRY_EQPRODUTO.open;
    if ZQRY_EQPRODUTO.IsEmpty then
    begin
      edt_ean.setfocus;
      edt_ean.Clear;
      MostraTelaNotifica('PRODUTO N�O LOCALIZADO','EQPRODUTO - CODPROD|CODBARPROD');
    end
    else
    begin
      //SHOWMESSAGE('CHEGOU AQUI');
      qtd_fim:=0;
      precoproduto:=0;
      valorpeso:=0;
      pesoproduto:=0;
      if alterapreco=1 then precoproduto:=ZQRY_EQPRODUTOPRECOBASEPROD.AsFloat;
      if alterapreco=2 then precoproduto:=strtofloat(edt_PRECOVENDA.Text);
      valorpeso:=strtocurr(removezeros(seqpreco))/100;
      pesoproduto:=(valorpeso*1)/precoproduto;
      {zqry_VDFOTOPROD.Params.Clear;
      Zqry_VDFOTOPROD.Close;
      zqry_VDFOTOPROD.SQL.Clear;
      zqry_VDFOTOPROD.SQL.Add('select codemp, codprod, fotoprod from vdfotoprod where codemp=:empcod and codprod=:prodcod');
      zqry_VDFOTOPROD.ParamByName('empcod').AsInteger:=dm_dados.codemp;
      zqry_VDFOTOPROD.ParamByName('prodcod').Value:=RemoveZeros(seqcodigo);
      zqry_VDFOTOPROD.Open;
      if zqry_VDFOTOPROD.IsEmpty then
      begin
        //
        img_produto.picture:=nil;
        BuscaProdutoPeso;
      end
      else
      begin
        img_PRODUTO.Picture.Assign(TBlobField(dm_dados.zqry_VDFOTOPROD.FieldByName('fotoprod')));}
        BuscaProdutoPeso;
      //end;}
    end;
  end
  else
  // LER O TAMANHO O CODIGO
  // SE FOR 13
  // PEGAR O PRIMEIRO CARACTER E VER SE COME�A COM 2
  {begin
  PrimeiraLetra := Copy(Edit1.Text,1,1);
  ShowMessage(PrimeiraLetra);}
  begin
    ZQRY_EQPRODUTO.Params.Clear;
    ZQRY_EQPRODUTO.Close;
    ZQRY_EQPRODUTO.sql.clear;
    ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99 and codbarprod=:ean');
    ZQRY_EQPRODUTO.parambyname('ean').value:=trim(edt_ean.text);
    ZQRY_EQPRODUTO.open;
    if ZQRY_EQPRODUTO.IsEmpty then
    begin
      //consulta aqui se � inteiro
      if TryStrToInt(edt_ean.Text,testanum) then
      begin
        ZQRY_EQPRODUTO.Params.Clear;
        ZQRY_EQPRODUTO.Close;
        ZQRY_EQPRODUTO.SQL.Clear;
        ZQRY_EQPRODUTO.SQL.Add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99 and codprod=:prodcod');
        ZQRY_EQPRODUTO.ParamByName('prodcod').AsInteger:=strtoint(edt_ean.Text);
        ZQRY_EQPRODUTO.open;
        IF ZQRY_EQPRODUTO.IsEmpty then
        begin
          edt_ean.setfocus;
          edt_ean.Clear;
          MostraTelaNotifica('PRODUTO N�O LOCALIZADO','EQPRODUTO - CODPROD|CODBARPROD');
        end
        else
        begin
          {dm_Dados.zqry_VDFOTOPROD.Params.Clear;
          dm_Dados.zqry_VDFOTOPROD.Close;
          dm_Dados.zqry_VDFOTOPROD.SQL.Clear;
          dm_Dados.zqry_VDFOTOPROD.SQL.Add('select * from vdfotoprod where codemp=:empcod and codprod=:prodcod');
          dm_dados.zqry_VDFOTOPROD.ParamByName('empcod').AsInteger:=dm_dados.codemp;
          dm_Dados.zqry_VDFOTOPROD.ParamByName('prodcod').asinteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
          dm_Dados.zqry_VDFOTOPROD.Open;
          if dm_dados.zqry_VDFOTOPROD.IsEmpty then
          begin
            img_produto.picture:=nil;
          end
          else
          begin
            img_PRODUTO.Picture.Assign(TBlobField(dm_dados.zqry_VDFOTOPROD.FieldByName('fotoprod')));
           end;}
          BuscaProduto;
        end;
      end
      else
      begin
        showmessage('Produto n�o localizado');
        edt_ean.Clear;
        edt_ean.SetFocus;
      end;
    end
    else
    begin
        dm_Dados.zqry_VDFOTOPROD.Params.Clear;
        dm_Dados.zqry_VDFOTOPROD.Close;
        dm_Dados.zqry_VDFOTOPROD.SQL.Clear;
        dm_Dados.zqry_VDFOTOPROD.SQL.Add('select * from vdfotoprod where codemp=:empcod and codprod=:prodcod');
        dm_dados.zqry_VDFOTOPROD.ParamByName('empcod').AsInteger:=dm_dados.codemp;
        dm_Dados.zqry_VDFOTOPROD.ParamByName('prodcod').asinteger:=ZQRY_EQPRODUTOCODPROD.AsInteger;
        dm_Dados.zqry_VDFOTOPROD.Open;
        if dm_dados.zqry_VDFOTOPROD.IsEmpty then
        begin
          img_produto.picture:=nil;
        end
        else
        begin
          img_PRODUTO.Picture.Assign(TBlobField(dm_dados.zqry_VDFOTOPROD.FieldByName('fotoprod')));
        end;
      BuscaProduto;
    end;
  end;
end;


procedure Tfrm_CUPOM.Calculadora1Click(Sender: TObject);
begin
frmcalculadora.show;
end;

procedure Tfrm_CUPOM.CancelaCupom1Click(Sender: TObject);
begin
estecupom:=0;
estecupom:=strtoint(DBText1.Caption);
if lbl_status.Caption='CAIXA DISPONIVEL !' then
begin
  showmessage('NAO HA CUPONS EM ABERTO');
end
else
begin
  if MessageBox(HANDLE, 'DESEJA CANCELAR ESTE CUPOM ?'#13'Confirme com SIM'#13'Nao Cancelar clique em NAO', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
  begin
//  showmessage('N�O H� CUPOM ABERTO PARA CANCELAR');
  dm_dados.Executasginiconsp;
  zqry_excluivenda.close;
  zqry_excluivenda.SQL.Clear;
  zqry_excluivenda.SQL.Add('delete from vditvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_excluivenda.ParamByName('vendacod').AsInteger:=estecupom;
  zqry_excluivenda.execsql;
  //
  DM_dADOS.Executasginiconsp;
  zqry_excluivenda.close;
  zqry_excluivenda.SQL.Clear;
  zqry_excluivenda.SQL.Add('delete from vdvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_excluivenda.ParamByName('vendacod').AsInteger:=estecupom;
  zqry_excluivenda.execsql;
//

//
alterapreco:=1;
frm_cupom.img_PRODUTO.Picture:=nil;
frm_cupom.valortotal:=0;
frm_cupom.precoproduto:=0;
frm_cupom.precototal:=0;
frm_cupom.edt_ean.clear;
frm_cupom.edt_EAN.setfocus;
frm_cupom.edt_QTD.Text:='1';
frm_cupom.LBL_CUPOM.Caption:='';
frm_cupom.lbl_PRODUTO.caption:='';
frm_cupom.lbl_PRECO.Caption:='';
frm_cupom.lbl_VALORTOTAL.Caption:='';
frm_cupom.edt_PRECOVENDA.Clear;
frm_cupom.lbl_status.Caption:='CAIXA DISPONIVEL !';
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
  showmessage('CUPOM CANCELADO COM SUCESSO');
  btn_fechar.enabled:=true;

  if MessageBox(HANDLE, 'Deseja Abrir outro Cupom?'#13'Confirme com Sim'#13'Para Fechar tela de vendas clique em N�o', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
  begin
    AbreCupom1Click(Sender);
  end
  else
  begin
    FechaTela1Click(Sender);
  end;
end
else
begin
  //
end;
end;

end;

procedure Tfrm_CUPOM.CancelaItem1Click(Sender: TObject);
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

procedure Tfrm_CUPOM.ConsultaClientes1Click(Sender: TObject);
begin
  frm_con_clientes.Show;
end;

procedure Tfrm_CUPOM.ConsultaProduto1Click(Sender: TObject);
begin
//  Application.CreateForm(TFrm_con_produto, Frm_con_produto); // cria o form
  frm_con_produto.Show;
//  FreeAndNil(Frm_con_produto);
end;

procedure Tfrm_CUPOM.dbgrid_ITENSCellClick(Column: TColumn);
begin
Showmessage('Linha com o produto '+trim(dm_Dados.zqry_ITFASTSALE_NOMEPRODUTO.AsString)+' com a quantidade de '+dm_dados.zqry_ITFASTSALEQUANT.AsString+' selecionada para cancelamento');
case MessageDlg('Deseja realmente excluir este item?',  mtConfirmation,  [mbYes, mbNo], 0) of
  mrYes: //se clicar em sim fa�a isso
  begin
    precoproduto:=(dm_dados.zqry_ITFASTSALEVLRVENDA.asfloat/dm_Dados.zqry_ITFASTSALEQUANT.asfloat);
    // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
    precototal:=0;
    precototal:=dm_dados.zqry_ITFASTSALEQUANT.asfloat*precoproduto;
    valortotal:=valortotal-precototal;
    edt_ean.Clear;
    edt_qtd.Text:='1';
    edt_qtd.enabled:=false;
    codprodexclui:=0;
    codprodexclui:=dm_dados.zqry_ITFASTSALECODPROD.AsInteger;
    precoprodexclui:=0;
    precoprodexclui:=dm_dados.zqry_ITFASTSALEVLRVENDA.AsInteger;
    idprodexclui:=dm_dados.zqry_ITFASTSALEITEM.asinteger;
    EXECUTASGINICONSP;
   { ZQRY_EQPRODUTO.Edit;
    ZQRY_EQPRODUTOSLDPROD.Value:=ZQRY_EQPRODUTOSLDPROD.Value+dm_dados.zqry_ITFASTSALEQUANT.asfloat;
    ZQRY_EQPRODUTO.post;
    ZQRY_EQPRODUTO.applyupdates();}
    // Envio os dados para a tabela e faz a grava��o
    dm_Dados.zqry_ITFASTSALE.delete;
    dm_Dados.zqry_FASTSALE.Edit;
    dm_Dados.zqry_FASTSALEVALORTOTAL.Value:=dm_Dados.zqry_FASTSALEVALORTOTAL.Value-dm_dados.zqry_ITFASTSALEVLRVENDA.Value;
    dm_Dados.zqry_fastsale.post;
    //
    //showmessage('ID '+inttostr(idprodexclui)+' Produto '+inttostr(codprodexclui)+' Empresa '+inttostr(dm_dados.codemp)+' Venda '+dbtext1.Caption);
    zqry_excluiitem.close;
    zqry_excluiitem.SQL.Clear;
    zqry_excluiitem.SQL.Add('delete from vditvenda where codprod=:prodcod and codemp=:empcod and codvenda=:vendacod and coditvenda=:item');
    zqry_excluiitem.ParamByName('prodcod').AsInteger:=codprodexclui;
    zqry_excluiitem.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluiitem.ParamByName('vendacod').AsInteger:=strtoint(dbtext1.caption);
    zqry_excluiitem.ParamByName('item').AsInteger:=idprodexclui;
    zqry_excluiitem.execsql;
  //  dm_dados.zqry_FASTSALE.applyupdates();
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    dbgrid_itens.Enabled:=false;
    lbl_produto.caption:='[ITEM CANCELADO]';
    lbl_preco.Caption:='';
    edt_ean.Clear;
    edt_ean.setfocus;
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

procedure Tfrm_CUPOM.dbgrid_ITENSKeyPress(Sender: TObject; var Key: Char);
begin
if (key =#13) then
begin
Showmessage('Linha com o produto '+trim(dm_Dados.zqry_ITFASTSALE_NOMEPRODUTO.AsString)+' com a quantidade de '+dm_dados.zqry_ITFASTSALEQUANT.AsString+' selecionada para cancelamento');
case MessageDlg('Deseja realmente excluir este item?',  mtConfirmation,  [mbYes, mbNo], 0) of
  mrYes: //se clicar em sim fa�a isso
  begin
    precoproduto:=(dm_dados.zqry_ITFASTSALEVLRVENDA.asfloat/dm_Dados.zqry_ITFASTSALEQUANT.asfloat);
    // ZERA PRECO TOTAL MULTIPLICA A QUANTIDADE PELO PRECO DO PRODUTO
    precototal:=0;
    precototal:=dm_dados.zqry_ITFASTSALEQUANT.asfloat*precoproduto;
    valortotal:=valortotal-precototal;
    edt_ean.Clear;
    edt_qtd.Text:='1';
    edt_qtd.enabled:=false;
    codprodexclui:=0;
    codprodexclui:=dm_dados.zqry_ITFASTSALECODPROD.AsInteger;
    precoprodexclui:=0;
    precoprodexclui:=dm_dados.zqry_ITFASTSALEVLRVENDA.AsInteger;
    idprodexclui:=dm_dados.zqry_ITFASTSALEITEM.asinteger;
    EXECUTASGINICONSP;
    {ZQRY_EQPRODUTO.Edit;
    ZQRY_EQPRODUTOSLDPROD.Value:=ZQRY_EQPRODUTOSLDPROD.Value+dm_dados.zqry_ITFASTSALEQUANT.asfloat;
    ZQRY_EQPRODUTO.post;
    ZQRY_EQPRODUTO.applyupdates();}
    // Envio os dados para a tabela e faz a grava��o
    dm_Dados.zqry_ITFASTSALE.delete;
    dm_Dados.zqry_FASTSALE.Edit;
    dm_Dados.zqry_FASTSALEVALORTOTAL.Value:=dm_Dados.zqry_FASTSALEVALORTOTAL.Value-dm_dados.zqry_ITFASTSALEVLRVENDA.Value;
    dm_Dados.zqry_fastsale.post;
    //
    //showmessage('ID '+inttostr(idprodexclui)+' Produto '+inttostr(codprodexclui)+' Empresa '+inttostr(dm_dados.codemp)+' Venda '+dbtext1.Caption);
    zqry_excluiitem.close;
    zqry_excluiitem.SQL.Clear;
    zqry_excluiitem.SQL.Add('delete from vditvenda where codprod=:prodcod and codemp=:empcod and codvenda=:vendacod and coditvenda=:item');
    zqry_excluiitem.ParamByName('prodcod').AsInteger:=codprodexclui;
    zqry_excluiitem.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    zqry_excluiitem.ParamByName('vendacod').AsInteger:=strtoint(dbtext1.caption);
    zqry_excluiitem.ParamByName('item').AsInteger:=idprodexclui;
    zqry_excluiitem.execsql;
  //  dm_dados.zqry_FASTSALE.applyupdates();
    lbl_valortotal.Caption:= FormatFloat('R$ #,,,,0.00', valortotal);
    dbgrid_itens.Enabled:=false;
    lbl_produto.caption:='[ITEM CANCELADO]';
    lbl_preco.Caption:='';
    edt_ean.Clear;
    edt_ean.setfocus;
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
end;

procedure Tfrm_CUPOM.AbreCupom1Click(Sender: TObject);
var
produtoatual : string;
begin
alterapreco:=1;
edt_PRECOVENDA.Clear;
edt_QTD.Text:='1';
edt_ean.SetFocus;
edt_ean.Clear;
edt_ean.Color:=clyellow;
if lbl_status.caption='CUPOM ABERTO' then
begin
  MessageBeep(16);
  produtoatual:=lbl_produto.Caption;
  lbl_produto.Caption:='CUPOM J� EST� ABERTO';
  lbl_produto.Update;
  sleep(2000);
  lbl_produto.Caption:=produtoatual;
  produtoatual:='';
  edt_ean.SetFocus;
  edt_ean.Clear;
  edt_ean.Color:=clyellow;
end
else
begin
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.sql.add('SELECT MAX(idfastsale) as Sequencia FROM fastsale');
  zquery1.Open;
  seqfastsale:=1+zquery1.FieldByname('Sequencia').asinteger;
  meucupom:=seqfastsale;
  dm_dados.zqry_VDCLIENTE.Params.Clear;
  dm_DAdos.zqry_VDCLIENTE.Close;
  dm_dados.zqry_VDCLIENTE.SQL.Clear;
  dm_Dados.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod and codcli=:clicod');
  dm_Dados.zqry_VDCLIENTE.ParamByName('EMPCOD').AsInteger:=99;
  dm_Dados.zqry_VDCLIENTE.ParamByName('CLICOD').AsInteger:=1;
  dm_Dados.zqry_VDCLIENTE.Open;

  try
    mostratelaaguarde('Abrindo Cupom');
    dm_dados.zqry_FASTSALE.Params.Clear;
    dm_dados.zqry_FASTSALE.Close;
    dm_dados.zqry_FASTSALE.Open;
    dm_dados.zqry_FASTSALE.insert;
    dm_Dados.zqry_FASTSALEDATACADASTRO.Value:=date+time;
    dm_dados.zqry_FASTSALEIDFASTSALE.AsInteger:=seqfastsale;//1+ibquery1.FieldByname('sequencia').asInteger;
    dm_Dados.zqry_fastsalecodcupom.asInteger:=0;//strtoint(edt_cupomdesc.Text);
    dm_Dados.zqry_FASTSALECODCLI.AsInteger:=dm_Dados.zqry_VDCLIENTECODCLI.AsInteger;
    dm_dados.zqry_FASTSALECODPLANOPAG.asinteger:=1;//dm_dados.zqry_FNPLANOPAGCODPLANOPAG.AsInteger;
    dm_Dados.zqry_FASTSALECODVEND.AsInteger:=1;
    lbl_CLIENTE.Caption:='1';//+dm_dados.zqry_VDCLIENTERAZCLI.Value;
    lbl_CUPOM.caption:=inttostr(seqfastsale);
    dm_dados.zqry_fastsale.POST;
    dm_dados.zqry_FASTSALE.applyupdates();

    //venda
    zquery1.Close;
    zquery1.SQL.Clear;
    zquery1.sql.add('SELECT MAX(codvenda) as Sequencia FROM vdvenda');
    zquery1.Open;
    seqvenda:=zquery1.FieldByname('sequencia').asInteger;
// Sequencia SGSEQUENCIA
    dm_Dados.zqry_sgsequencia.Close;
    dm_dados.zqry_sgsequencia.sql.Clear;
    dm_Dados.zqry_sgsequencia.sql.add('select * from sgsequencia where sgtab=:buscavenda and codemp=:empresa');
    dm_Dados.zqry_sgsequencia.ParamByName('buscavenda').Value:='VD';
    dm_Dados.zqry_sgsequencia.ParamByName('empresa').Value:=99;
    dm_dados.zqry_sgsequencia.open;
    if dm_Dados.zqry_sgsequencia.IsEmpty then
    begin
      //  showmessage('Valores n�o encontrados')
    end
    else
    begin
      seqsequencia:=DM_dADOS.zqry_SGSEQUENCIANROSEQ.Value;
    end;
    if seqsequencia<=seqvenda then seqsequencia:=seqvenda+1;
    //showmessage('Seqsequencia '+inttostr(seqsequencia)+' - Seqvenda '+inttostr(seqvenda));
    //
    dm_Dados.zqry_SGFILIAL.Close;
    dm_Dados.zqry_SGFILIAL.SQL.Clear;
    dm_Dados.zqry_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:empcod');
    dm_dados.zqry_SGFILIAL.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
    dm_dados.zqry_SGFILIAL.Open;


    dm_dados.EXECUTASGINICONSP;

    // GRAVA DADOS NA VENDA
    IF DM_DADOS.zqry_VDCLIENTESIGLAUF.Value=DM_DADOS.zqry_SGFILIALSIGLAUF.Value then ufigual:=0 else ufigual:=1;
      dm_Dados.zqry_VDVENDA.Close;
      dm_dados.zqry_VDVENDA.Open;
      dm_dados.zqry_VDVENDA.INSERT;
      dm_dados.zqry_vdvendaCODEMP.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIAL.Value:=1;//DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODCAIXA.Value:=1;
      DM_DADOS.zqry_vdvendaCODCLCOMIS.Value:=1;//DM_DADOS.zqry_VDVENDEDORCODCLCOMIS.ASINTEGER;
      if DM_DADOS.zqry_VDVENDEDORCODVEND.isnull  then
      begin
        dm_dados.zqry_vdvendacodvend.asinteger:=1
      end
      else
      begin
        DM_DADOS.zqry_VDVENDACODVEND.AsInteger:=DM_DADOS.zqry_VDVENDEDORCODVEND.AsInteger;
      end;
      dm_dados.zqry_vdvendaCODCLASCOMIS.Value:='1';
      dm_dados.zqry_vdvendaTIPOVENDA.Value:='V';
      dm_dados.zqry_vdvendaSERIE.Value:='PV';
      dm_dados.zqry_vdvendaSUBTIPOVENDA.Value:='NF';
      //
      dm_dados.zqry_vdvendaCODVENDA.Value:=seqsequencia;
      dm_dados.zqry_vdvendaCODEMPCL.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALCL.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPCM.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALCM.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPPG.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALPG.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPCX.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALCX.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPSE.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALSE.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPTM.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALTM.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_vdvendaCODEMPVD.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_dados.zqry_vdvendaCODFILIALVD.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      //DM_DADOS.zqry_vdvendaCODVEND.Value:=1;//dm_dados.zqry_FASTSALECODVEND.Value;
      dm_dados.zqry_vdvendaPERCCOMISVENDA.AsFloat:=0.00;
      dm_dados.zqry_VDVENDAVLRDESCVENDA.AsFloat:=0.00;// ESSE TEMstrtofloat(edt_VLRDESC.Text);
      DM_dADOS.zqry_vdvendaCODCLI.Value:=1;//DM_DADOS.zqry_VDCLIENTECODCLI.Value;
      DM_DADOS.zqry_vdvendaCODPLANOPAG.asinteger:=1;//dm_dados.zqry_FASTSALECODPLANOPAG.AsInteger;
      //dm_Dados.zqry_vdvendaidfastsale.asintegeR:=frm_CUPOM.meucupom;
      // OR�AMENTO OU VENDA
      //if frm_principal.lbl_STATUS_ORC.Caption='OR�AMENTO' then DM_DADOS.cds_vdvendaCODTIPOMOV.Value:=401;
      if frm_CUPOM.lbl_STATUS.caption<>'OR�AMENTO' then DM_DADOS.zqry_vdvendaCODTIPOMOV.Value:=501;
      DM_DADOS.zqry_vdvendaDOCVENDA.Value:=dm_dados.zqry_FASTSALEIDFASTSALE.AsInteger;
      DM_dADOS.zqry_vdvendaDTSAIDAVENDA.AsDateTime:=date;
      DM_DADOS.zqry_vdvendaDTEMITVENDA.AsDateTime:=DATE;
      DM_DADOS.zqry_vdvendaDTCOMPVENDA.AsDateTime:=DATE;
      if dm_dados.zqry_FASTSALECODPLANOPAG.asinteger>=1 then dm_dados.zqry_vdvendaSTATUSVENDA.Value:='P3';
      DM_DADOS.zqry_vdvendaBLOQVENDA.Value:='N';
      DM_DADOS.zqry_vdvendaLOCALSERV.Value:='P';
      DM_DADOS.zqry_vdvendaNROATUALIZADO.Value:='N';
      DM_DADOS.zqry_vdvendaSITCOMPLVENDA.Value:='N';
      dm_Dados.zqry_VDVENDACODEMPTC.Value:=DM_DADOS.zqry_SGFILIALCODEMP.Value;
      dm_Dados.zqry_VDVENDACODFILIALTC.Value:=DM_DADOS.zqry_SGFILIALCODFILIAL.Value;
      dm_dados.zqry_VDVENDAVDCOMERCIAL.Value:='N';
      dm_Dados.zqry_VDVENDAVDVENDEXTERNO.Value:='N';
      dm_dados.zqry_VDVENDAVDCOMMERCE.Value:='N';
      dm_dados.zqry_VDVENDACODTIPOCOB.Value:=1;
      DM_DADOS.zqry_vdvendaDTINS.AsDateTime:=DATE;
      DM_dADOS.zqry_vdvendaHINS.AsDateTime:=TIME;
      DM_DADOS.zqry_vdvendaIDUSUINS.Value:=dm_dados.usuariousando;
      dm_dados.zqry_vdvenda.post;
      DM_DADOS.zqry_vdvenda.ApplyUpdates;
      // FECHA VENDA
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
      DM_DADOS.zqry_VDFRETEVDIDUSUINS.Value:=dm_dados.usuariousando;
      dm_Dados.zqry_vdfretevd.post;
      DM_DADOS.zqry_VDFRETEVD.ApplyUpdates();

      fechatelaaguarde;






    ///




    lbl_STATUS.Caption:='CUPOM ABERTO';



   // frm_CUPOM.descanso:=0;
    btn_FECHAR.Enabled:=false;
    edt_EAN.Enabled:=TRUE;
    edt_EAN.Clear;
    edt_EAN.SetFocus;
    edt_ean.Color:=clyellow;//$00BAFEF5;
   // MOSTRATELANOTIFICA('CUPOM ABERTO','Boas Compras');
  except
    on E:Exception do
    MessageDlg('Erro ao conectar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
  end;
end;
//if frm_cupom.descanso=1 then timer_DESCANSO.Enabled:=true else timer_descanso.Enabled:=false;
edt_ean.SetFocus;
end;

procedure Tfrm_CUPOM.btn_CANCELACUPOMClick(Sender: TObject);
begin
CancelaCupom1Click(Self);
end;

procedure Tfrm_CUPOM.btn_CANCELAITEMClick(Sender: TObject);
begin
CancelaItem1Click(Self);
end;

procedure Tfrm_CUPOM.btn_MUDAPRECOClick(Sender: TObject);
begin
if frm_cupom.lbl_status.caption='CAIXA DISPON�VEL !' then
begin
  showmessage('N�o h� cupom aberto para inser��o de produto');
end
else
begin
  edt_PRECOVENDA.Clear;
  edt_precovenda.Enabled:=true;
  edt_precovenda.SetFocus;
end;
end;

procedure Tfrm_CUPOM.Administrativo1Click(Sender: TObject);
begin
frm_checkout.Show;
end;

procedure Tfrm_CUPOM.AlteraPreo1Click(Sender: TObject);
begin
btn_MUDAPRECOClick(Sender);
edt_ean.Color:=clwhite;
edt_PRECOVENDA.Color:=clyellow;
end;

procedure Tfrm_CUPOM.btn_ABRECUPOMClick(Sender: TObject);
begin
AbreCupom1Click(Self);
end;

procedure Tfrm_CUPOM.btn_CONFIGURA��ESClick(Sender: TObject);
begin
FRM_PREFACBR.SHOW;
end;

procedure Tfrm_CUPOM.btn_CONSULTACLIENTEClick(Sender: TObject);
begin
  ConsultaClientes1Click(Self);
end;

procedure Tfrm_CUPOM.btn_CONSULTAPRODUTOClick(Sender: TObject);
begin
  ConsultaProduto1Click(Self);
end;

procedure Tfrm_CUPOM.btn_FECHACUPOMClick(Sender: TObject);
begin
FechaCupom1Click(Self);
end;

procedure Tfrm_CUPOM.btn_FECHARClick(Sender: TObject);
begin
//frm_CUPOM.descanso:=0;
//timer_DESCANSO.Enabled:=false;
close;
end;

procedure Tfrm_CUPOM.btn_MUDAQTDClick(Sender: TObject);
begin
MudaQuantidade1Click(Sender);
end;

procedure Tfrm_CUPOM.btn_REIMPRIMEClick(Sender: TObject);
begin
ReimprimeNota1Click(SeLF);
end;

procedure Tfrm_CUPOM.edt_EANChange(Sender: TObject);
begin
//  if (frm_cupom.lbl_status.Caption='CAIXA DISPON�VEL !') then AbreCupom1Click(Self);
end;

procedure Tfrm_CUPOM.edt_EANEnter(Sender: TObject);
begin
if Sender is TDBEdit then TDBEdit(Sender).Color := clyellow;
end;

procedure Tfrm_CUPOM.edt_EANExit(Sender: TObject);
begin
if Sender is TDBEdit then TDBEdit(Sender).Color := clWindow;
end;

procedure Tfrm_CUPOM.edt_EANKeyPress(Sender: TObject; var Key: Char);
var
  testanum, tamanhocodigo:integer;
  primeirocaracter:string;
begin
if(key = #13) and (edt_ean.Text<>'') and (frm_cupom.lbl_status.Caption='CUPOM ABERTO') then
begin
 tamanhocodigo:=0;
 tamanhocodigo:=Length(edt_ean.text);
 primeirocaracter:=copy(edt_ean.Text,1,1);
  //showmessage(inttostr(tamanho));
  ZQRY_EQPRODUTO.Close;
  ZQRY_EQPRODUTO.sql.clear;
  ZQRY_EQPRODUTO.sql.add('select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,codbarprod,codbalanca from eqproduto where codemp=99 order by descprod');
  //    DM_DADOS.cds_EQPRODUTO.params.parambyname('codmaq').asinteger:=strtoint(lbl_estacao.Caption);
  ZQRY_EQPRODUTO.open;
  //
  //
  dbgrid_ITENS.Update;
  dbgrid_ITENS.Refresh;
  if (tamanhocodigo >= 12) then
  BEGIN
    buscaean;
  END;
//  if (tamanhocodigo >= 12) and (primeirocaracter='0') then buscaean;
  if (tamanhocodigo <10) then
  begin
    if TryStrToInt(edt_ean.Text,testanum) then
    begin
      BuscaEAN ;
    end
    else
    begin
      edt_ean.Clear;
      edt_ean.SetFocus;
    end;
  end;
end;
 // ou b.OnClick(b);
end;

procedure Tfrm_CUPOM.edt_PRECOVENDAEnter(Sender: TObject);
begin
edt_precovenda.Color:=clyellow;
end;

procedure Tfrm_CUPOM.edt_PRECOVENDAExit(Sender: TObject);
begin
edt_precovenda.Color:=clwhite;
end;

procedure Tfrm_CUPOM.edt_PRECOVENDAKeyPress(Sender: TObject; var Key: Char);
var
  testavalor : Currency;
begin
    if (key = #13) then
    begin
      if TryStrToCurr(edt_PRECOVENDA.Text,testavalor) then
      begin
        edt_ean.Clear;
        edt_ean.SetFocus;
        edt_ean.Color:=clyellow;
        edt_precovenda.Color:=clwhite;
        if edt_precovenda.text='' then alterapreco:=1;
        if edt_precovenda.Text<>'' then alterapreco:=2;

      end
      else
      begin
        edt_precovenda.Clear;
        edt_precovenda.SetFocus;
      end;
    end;
end;

procedure Tfrm_CUPOM.edt_QTDExit(Sender: TObject);
begin
if edt_qtd.Text='' then edt_qtd.Text:='1';
 try
   strtofloat(edt_qtd.Text);
 except
  on E:Exception do
  begin
    MessageDlg('Valor informado na quantidade n�o � v�lido!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
    raise;
    edt_qtd.Color:=clwhite;
    edt_qtd.Text:='1';
  end;
 end;
end;

procedure Tfrm_CUPOM.edt_QTDKeyPress(Sender: TObject; var Key: Char);
var
  testaquant:double;
begin
  if (key = #13) then
  begin
    if TryStrToFloat(edt_QTD.Text,testaquant) then
    begin
      edt_ean.Clear;
      edt_ean.SetFocus;
      edt_ean.Color:=clyellow;
      edt_qtd.Color:=clwhite;
    end
    else
    begin
      edt_qtd.Clear;
      edt_qtd.Text:='1';
    end;
  end;
end;

procedure Tfrm_CUPOM.FechaCupom1Click(Sender: TObject);
begin
if (lbl_PRODUTO.Caption='') and (lbl_STATUS.Caption='CAIXA DISPON�VEL !') then
begin
  MOSTRATELANOTIFICA('FINALIZANDO','Obrigado');
  btn_fechar.enabled:=true;
end;
if (lbl_PRODUTO.Caption='') and (lbl_STATUS.Caption='CUPOM ABERTO') then
begin
  MOSTRATELANOTIFICA('CUPOM VAZIO','Finaliza��o em Processo');
  {frm_CUPOM.valortotal:=0;
  frm_CUPOM.precoproduto:=0;
  frm_CUPOM.precototal:=0;
  frm_CUPOM.item:=0;
//  frm_principal.dblook_produto.Enabled:=false;
  frm_CUPOM.edt_ean.Enabled:=false;
  frm_CUPOM.LBL_CUPOM.Caption:='';
  frm_CUPOM.lbl_PRODUTO.caption:='';
  frm_CUPOM.lbl_PRECO.Caption:='';
  frm_CUPOM.lbl_VALORTOTAL.Caption:='';
//  frm_principal.lbl_STATUS_ORC.Caption:='';
  frm_CUPOM.edt_PRECOVENDA.Clear;
  frm_CUPOM.lbl_CLIENTE.Caption:='';
//  frm_PRINCIPAL.dblook_produto.DataSource:=nil;
//  Frm_principal.dblook_produto.KeyField:='';
//  frm_principal.dblook_produto.ListField:='';
  frm_CUPOM.DBGrid_Itens.visible:=true;
  frm_CUPOM.lbl_status.Caption:='CAIXA DISPON�VEL !';
  frm_CUPOM.lbl_QTDITENS.Caption:='';
  dm_Dados.zqry_FNPLANOPAG.Close;
  dm_dados.zqry_FASTSALE.Cancel;
  dm_dados.zqry_FASTSALE.Close;
  dm_Dados.zqry_ITFASTSALE.Cancel;
  dm_Dados.zqry_ITFASTSALE.Close;
  dm_Dados.zdts_EQPRODUTO:=nil;
  dm_Dados.zdts_FASTSALE:=nil;
  dm_dados.zdts_ITFASTSALE:=nil;
  frm_CUPOM  :=nil;
  btn_fechar.enabled:=true;
  // FRM_PRINCIPAL.btn_MEMORIAClick(Sender);  }
  FechaTela1Click(Sender);
end;
if (lbl_PRODUTO.Caption<>'') and (lbl_STATUS.Caption='CUPOM ABERTO') then
begin
//   Application.CreateForm(TFrm_fechacupom, Frm_fechacupom); // cria o form
  frm_fechacupom.showmodal;
end;
end;

procedure Tfrm_CUPOM.FechaTela1Click(Sender: TObject);
begin
estecupom:=0;
estecupom:=strtoint(DBText1.Caption);
  dm_dados.Executasginiconsp;
  zqry_excluivenda.close;
  zqry_excluivenda.SQL.Clear;
  zqry_excluivenda.SQL.Add('delete from vditvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_excluivenda.ParamByName('vendacod').AsInteger:=estecupom;
  zqry_excluivenda.execsql;
  //
  DM_dADOS.Executasginiconsp;
  zqry_excluivenda.close;
  zqry_excluivenda.SQL.Clear;
  zqry_excluivenda.SQL.Add('delete from vdvenda where codvenda=:vendacod and codemp=:empcod');
  zqry_excluivenda.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  zqry_excluivenda.ParamByName('vendacod').AsInteger:=estecupom;
  zqry_excluivenda.execsql;

alterapreco:=1;
frm_cupom.img_PRODUTO.Picture:=nil;
frm_cupom.valortotal:=0;
frm_cupom.precoproduto:=0;
frm_cupom.precototal:=0;
frm_cupom.edt_ean.clear;
frm_cupom.edt_EAN.setfocus;
frm_cupom.edt_QTD.Text:='1';
frm_cupom.LBL_CUPOM.Caption:='';
frm_cupom.lbl_PRODUTO.caption:='';
frm_cupom.lbl_PRECO.Caption:='';
frm_cupom.lbl_VALORTOTAL.Caption:='';
frm_cupom.edt_PRECOVENDA.Clear;
frm_cupom.lbl_status.Caption:='CAIXA DISPON�VEL !';
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
close;
end;

procedure Tfrm_CUPOM.FormActivate(Sender: TObject);
begin
//frm_PREFACBR.LerConfiguracao;
edt_ean.SetFocus;
if DM_DADOS.contingencia='S' then lbl_contingencia.Caption:='CONTINGÊNCIA';

//Edit1.StyleElements := Edit1.StyleElements - [seClient];
edt_ean.StyleElements:=edt_ean.StyleElements - [seClient];
edt_qtd.StyleElements:=edt_qtd.StyleElements - [seClient];
edt_precovenda.StyleElements:=edt_precovenda.StyleElements - [seClient];
//
{formaemissao:=frm_PREFACBR.cbFormaEmissao.ItemIndex;
tipoamb:=frm_PREFACBR.rgTipoAmb.ItemIndex;
emitcodcidade:=frm_PREFACBR.edtEmitCodCidade.Text;
Host := frm_prefacbr.edtSmtpHost.Text;
Port := frm_prefacbr.edtSmtpPort.Text;
Username := frm_prefacbr.edtSmtpUser.Text;
Password := frm_prefacbr.edtSmtpPass.Text;
From := frm_prefacbr.edtSmtpUser.Text;
SetSSL := frm_prefacbr.cbEmailSSL.Checked; // SSL - Conexão Segura
SetTLS := frm_prefacbr.cbEmailSSL.Checked;
assunto :=frm_prefacbr.edtEmailAssunto.Text;}
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
  mostratelaaviso('Sequ�ncia de Notas Fiscais n�o cadastradas','Verifique seu �ltimo n�mero de Nota emitido e insira o pr�ximo na aba seq�encia');
  dm_dados.zqry_SGSEQUENCIA_NF.Append;
  dm_dados.zqry_SGSEQUENCIA_NFCODEMP.Value:=dm_dados.zqry_SGFILIALCODEMP.Value;
  dm_dados.zqry_SGSEQUENCIA_NFCODFILIAL.Value:=DM_dADOS.zqry_SGFILIALCODFILIAL.Value;
  dm_dados.zqry_SGSEQUENCIA_NFSGTAB.Value:='NF';
  dm_Dados.zqry_SGSEQUENCIA_NFNROSEQ.Value:=1;
  DM_dados.zqry_SGSEQUENCIA_NFDTINS.Value:=date;
  dm_dados.zqry_SGSEQUENCIA_NFHINS.Value:=time;
  dm_Dados.zqry_SGSEQUENCIA_NFIDUSUINS.Value:=dm_dados.usuariousando;
  dm_Dados.zqry_SGSEQUENCIA_NFDTALT.Value:=date;
  dm_Dados.zqry_SGSEQUENCIA_NFHALT.Value:=time;
  dm_dados.zqry_SGSEQUENCIA_NFIDUSUALT.Value:=dm_dados.usuariousando;
  dm_dados.zqry_sgsequencia_NF.post;
  dm_dados.zqry_SGSEQUENCIA_NF.ApplyUpdates();
end;
//img_logotop.Picture.LoadFromFile(frm_principal.lbl_logomarca.caption);
ValidaCaixa;
end;

procedure Tfrm_CUPOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm_Dados.zqry_vdvenda.params.clear;
dm_Dados.zqry_vdvenda.close;
dm_Dados.zqry_vdvenda.sql.clear;
dm_Dados.zqry_Vdvenda.sql.add('select * from vdvenda where codtipomov=:mov and dtemitvenda=:data and codemp=:empcod');
dm_Dados.zqry_vdvenda.parambyname('mov').asinteger:=501;
dm_Dados.zqry_vdvenda.parambyname('data').asdate:=now;
dm_Dados.zqry_vdvenda.parambyname('empcod').asinteger:=99;
dm_Dados.zqry_vdvenda.open;
//
{frm_checkout.zqry_MAISVENDIDOS.Params.Clear;
frm_checkout.zqry_MAISVENDIDOS.Close;
frm_checkout.zqry_MAISVENDIDOS.SQL.Clear;
frm_checkout.ZQRY_MAISVENDIDOS.SQL.Add('select * from maisvendidos where datavenda BETWEEN :DTINI AND :DTFIM ');
frm_checkout.zqry_MAISVENDIDOS.ParamByName('dtini').asdate:=now;
frm_checkout.zqry_MAISVENDIDOS.ParamByName('dtfim').AsDate:=now;
frm_checkout.zqry_MAISVENDIDOS.Open;
//
frm_checkout.zqry_TIPOSPAGTO.Params.Clear;
frm_checkout.zqry_TIPOSPAGTO.Close;
frm_checkout.zqry_TIPOSPAGTO.SQL.Clear;
frm_checkout.ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where data BETWEEN :DTINI AND :DTFIM ');
frm_checkout.zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=now;
frm_checkout.zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=now;
frm_checkout.zqry_TIPOSPAGTO.Open; }
end;

procedure Tfrm_CUPOM.FormShow(Sender: TObject);
begin

//demais
LBL_STATUS.CAPTION:='CAIXA DISPON�VEL !';
//if (frm_cupom.lbl_status.Caption='CAIXA DISPON�VEL !') then AbreCupom1Click(Self);
//if lbl_Status.Caption='CAIXA DISPON�VEL !' then frm_cupom.descanso:=1;
imagemloja.Picture.LoadFromFile(frm_principal.lbl_logoloja.caption);
//if frm_cupom.descanso=1 then timer_DESCANSO.Enabled:=true else timer_descanso.Enabled:=false;
//nfce
dm_dados.zqry_SGSEQUENCIANFCE.Close;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Clear;
dm_dados.zqry_SGSEQUENCIANFCE.SQL.Add('select * from sgsequencianfce where codemp=:empcod');
dm_dados.zqry_SGSEQUENCIANFCE.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
dm_dados.zqry_sgsequencianfce.Open;
//nfe
DM_DADOS.zqry_SGSEQUENCIA_NF.close;
dm_Dados.zqry_SGSEQUENCIA_NF.open;
dm_dados.zqry_SGSEQUENCIA_NF.SQL.Clear;
dm_Dados.zqry_SGSEQUENCIA_NF.SQL.Add('select * from sgsequencia where sgtab=:tabsg and codemp=:empcod');
dm_dados.zqry_sgsequencia_NF.ParamByName('tabsg').asstring:='NF';
dm_Dados.zqry_sgsequencia_NF.ParamByName('empcod').AsInteger:=99;//frm_splash.codemp;
dm_dados.zqry_SGSEQUENCIA_NF.Open;
edt_EAN.Enabled:=TRUE;
edt_EAN.Clear;
edt_EAN.SetFocus;
end;

procedure Tfrm_CUPOM.KillApplication1Click(Sender: TObject);
begin
case MessageBox(Handle, 'Deseja Encerrar aplica��o?',
  'Encerrar a Aplica��o?', MB_YESNO + MB_ICONQUESTION) of
  IDYES:  //se clicar em sim fa�a isso
  begin
    Application.Terminate;
  end;
  IDNO:  //se clicar em n�o fa�a isso
  begin
  end;
end;
end;

procedure Tfrm_CUPOM.MudaQuantidade1Click(Sender: TObject);
begin
if frm_cupom.lbl_status.caption='CAIXA DISPON�VEL !' then
begin
  showmessage('N�o h� cupom aberto para inser��o de produto');
end
else
begin
  edt_qtd.Enabled:=true;
  edt_QTD.Clear;
  edt_qtd.SetFocus;
  edt_qtd.Color:=clyellow;
  edt_ean.Color:=clwhite;
end;
end;

procedure Tfrm_CUPOM.ReimprimeNota1Click(Sender: TObject);
var
  notaatual,notaanterior:integer;
begin
 notaatual:=dm_DADOS.zqry_SGSEQUENCIANFCECONTADOR.AsInteger;
 notaanterior:=notaatual-1;
 dm_dados.zqry_SGNF.Close;
 dm_dados.zqry_sgnf.sql.clear;
 dm_dados.zqry_sgnf.sql.Add('select * from sgnf where numero=:numnf and nfce=:tipo');
 dm_dados.zqry_sgnf.paramByName('numnf').Value:=notaanterior;
 dm_dados.zqry_sgnf.paramByName('tipo').asstring:='S';
 dm_dados.zqry_SGNF.Open;
 if dm_dados.zqry_SGNF.IsEmpty then
 begin
  mostratelaaviso('Nada localizado com base nas informa��es','tab.: sgnf');
 end
 else
 begin
  //frm_PREFACBR.ACBrNFe1.DANFE := frm_PREFACBR.ACBrNFeDANFCeFortes1;
  //btn_REIMPRIME_NF.Visible:=TRUE;
  //btn_REIMPRIME_NFClick(Self);
  Reimpimir;
 end;
 edt_ean.SetFocus;
end;

procedure Tfrm_CUPOM.timer_DESCANSOTimer(Sender: TObject);
begin
edt_ean.clear;
edt_ean.setfocus;
//frm_descanso.show;
end;

procedure Tfrm_CUPOM.timer_LETREIROTimer(Sender: TObject);
begin
//LBL_STATUS.Visible:=not(LBL_STATUS.Visible);
end;

procedure Tfrm_CUPOM.timer_RELOGIOTimer(Sender: TObject);
begin
LBL_HORA.Caption:=TIMETOSTR(TIME);
lbl_DIAMES.Caption:=FormatDateTime('dd'+'/'+'mm',Date);
lbl_DIASEMANA.Caption:=FORMATDATETIME('dddd',Date);
end;

end.


