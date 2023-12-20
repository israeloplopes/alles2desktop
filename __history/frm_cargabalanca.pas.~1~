unit carga_balanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrCargaBal, ACBrBase, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, FileCtrl, TypInfo, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_DLG_CARGABALANCA = class(TForm)
    ACBrCargaBal1: TACBrCargaBal;
    Label1: TLabel;
    Label2: TLabel;
    lblStatus: TLabel;
    cbxModelo: TComboBox;
    edtDiretorio: TEdit;
    btnEscolherDiretorio: TButton;
    ProgressBar1: TProgressBar;
    btn_GERARARQUIVO: TBitBtn;
    DBGrid1: TDBGrid;
    zqry_PRODBALANCA: TZQuery;
    zdts_PRODBALANCA: TDataSource;
    zqry_PRODBALANCACODEMP: TIntegerField;
    zqry_PRODBALANCACODFILIAL: TSmallintField;
    zqry_PRODBALANCACODPROD: TIntegerField;
    zqry_PRODBALANCADESCPROD: TWideStringField;
    zqry_PRODBALANCACODUNID: TWideStringField;
    zqry_PRODBALANCAPRECOBASEPROD: TFloatField;
    btn_FECHAR: TBitBtn;
    procedure btn_GERARARQUIVOClick(Sender: TObject);
    procedure btnEscolherDiretorioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrCargaBal1Progresso(Mensagem: String; ProgressoAtual,
      ProgressoTotal: Integer);
    procedure FormShow(Sender: TObject);
    procedure btn_FECHARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_CARGABALANCA: Tfrm_DLG_CARGABALANCA;


implementation

{$R *.dfm}

uses dados;

procedure Tfrm_DLG_CARGABALANCA.btn_FECHARClick(Sender: TObject);
begin
edtDiretorio.Clear;
close;
end;

procedure Tfrm_DLG_CARGABALANCA.btn_GERARARQUIVOClick(Sender: TObject);
var
  I: Integer;
begin
  try
    // definição do modelo do arquivo, utilizado para padronizar o layout
    // conforme a balança para a qual se vai gerar o arquivo
    ACBrCargaBal1.Modelo := TACBrCargaBalModelo(cbxModelo.ItemIndex);

   zqry_PRODBALANCA.Params.Clear;
   zqry_PRODBALANCA.Close;
   zqry_PRODBALANCA.SQL.Clear;
   zqry_PRODBALANCA.SQL.Add('select codemp, codfilial, codprod, descprod, codunid, precobaseprod from eqproduto where codemp=:empcod and codunid=:unidcod');
   zqry_PRODBALANCA.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
   zqry_PRODBALANCA.ParamByName('unidcod').AsString:='KG';
   zqry_PRODBALANCA.Open;
   zqry_PRODBALANCA.First;

    // adição dos itens que serão gerados no arquivo
    ACBrCargaBal1.Produtos.Clear;
    while not zqry_PRODBALANCA.Eof do
    begin
      with ACBrCargaBal1.Produtos.New do
      begin
        ModeloEtiqueta  := 1;
        Tipo            := tpvPeso;
        Codigo          := zqry_PRODBALANCACODPROD.asinteger;
        Descricao       := trim(zqry_PRODBALANCADESCPROD.AsString);  //Format('Descricao item %d', [I]);
        ValorVenda      := FloatToCurr(zqry_PRODBALANCAPRECOBASEPROD.AsFloat);
        zqry_PRODBALANCA.Next;
   {     Validade        := 15;
        Tecla           := 0;
   {     Receita         := Format('Receita do item %d', [I]);
//        Nutricional     := Format('Informação Nutricional do item %d', [I]);;

      {  Nutricional.Codigo:=I;
        Nutricional.Qtd :=1;
        Nutricional.UndPorcao := tpGramas;
        Nutricional.PartInteira :=1;
        Nutricional.PartDecimal:= tpPara12;
        Nutricional.MedCaseira := tpColherSopa;
        Nutricional.ValorEnergetico := 20;
        Nutricional.Carboidrato := 2;
        Nutricional.Proteina := 3;
        Nutricional.GorduraTotal:= 4;
        Nutricional.GorduraSaturada:=5;
        Nutricional.GorduraTrans := 6;
        Nutricional.Fibra := 7;
        Nutricional.Sodio :=8;    }

        Setor.Codigo    := 1;
      //  Setor.Descricao := 'GERAL';
      end;
    end;

    // gerar os arquivos para o diretório, informe somente o caminho do diretório
    ACBrCargaBal1.GerarArquivos(edtDiretorio.Text);
    ShowMessage('Arquivo gerado com sucesso!');
  except
    on E: Exception do
    begin
      // todo erro do componente levanta uma excessão
      ShowMessage('Ocorreu o seguinte erro:' + sLineBreak + E.Message);
    end;
  end;
end;

procedure Tfrm_DLG_CARGABALANCA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
zqry_PRODBALANCA.Close;
end;

procedure Tfrm_DLG_CARGABALANCA.FormCreate(Sender: TObject);
var
  I: TACBrCargaBalModelo;
begin
  edtDiretorio.Clear;

  cbxModelo.Items.Clear ;
  for I := Low(TACBrCargaBalModelo) to High(TACBrCargaBalModelo) do
    cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrCargaBalModelo), integer(I) ) ) ;

  cbxModelo.ItemIndex := 0;
end;

procedure Tfrm_DLG_CARGABALANCA.FormShow(Sender: TObject);
begin
zqry_PRODBALANCA.Params.Clear;
zqry_PRODBALANCA.Close;
zqry_PRODBALANCA.SQL.Clear;
zqry_PRODBALANCA.SQL.Add('select codemp, codfilial, codprod, descprod, codunid, precobaseprod from eqproduto where codemp=:empcod and codunid=:unidcod');
zqry_PRODBALANCA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
zqry_PRODBALANCA.ParamByName('unidcod').AsString:='KG';
zqry_PRODBALANCA.Open;
end;

procedure Tfrm_DLG_CARGABALANCA.btnEscolherDiretorioClick(Sender: TObject);
var
  Diretorio: String;
begin
  if SelectDirectory('Selecione o diretório onde serão gerados os arquivos:', '', Diretorio) then
    edtDiretorio.Text := Diretorio;
end;

procedure Tfrm_DLG_CARGABALANCA.ACBrCargaBal1Progresso(Mensagem: String;
  ProgressoAtual, ProgressoTotal: Integer);
begin
  lblStatus.Caption     := Mensagem;
  ProgressBar1.Max      := ProgressoTotal;
  ProgressBar1.Position := ProgressoAtual;

  Application.ProcessMessages;
end;

end.
