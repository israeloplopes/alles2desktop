unit u_preferencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.ExtCtrls;

type
  Tfrm_PREFERENCIAS = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    zqry_SEQNFE: TZQuery;
    zqry_SEQNFECODEMP: TIntegerField;
    zqry_SEQNFECODFILIAL: TSmallintField;
    zqry_SEQNFESGTAB: TWideStringField;
    zqry_SEQNFENROSEQ: TIntegerField;
    zqry_SEQNFEDTINS: TDateField;
    zqry_SEQNFEHINS: TTimeField;
    zqry_SEQNFEIDUSUINS: TWideStringField;
    zqry_SEQNFEDTALT: TDateField;
    zqry_SEQNFEHALT: TTimeField;
    zqry_SEQNFEIDUSUALT: TWideStringField;
    zdts_SEQNFE: TDataSource;
    btn_EDITANFE: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btn_SALVANFE: TBitBtn;
    zqry_SEQNFCE: TZQuery;
    zdts_SEQNFCE: TDataSource;
    btn_EDITANFCE: TBitBtn;
    BitBtn2: TBitBtn;
    btn_SALVANFCE: TBitBtn;
    btn_SALVAMDFE: TBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    zqry_SEQMDFE: TZQuery;
    zqry_SEQMDFEULTMDFE: TIntegerField;
    zdts_SEQMDFE: TDataSource;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    zqry_MAX: TZQuery;
    zdts_MAX: TDataSource;
    zqry_SEQNFCECODEMP: TIntegerField;
    zqry_SEQNFCECODFILIAL: TSmallintField;
    zqry_SEQNFCESGTAB: TWideStringField;
    zqry_SEQNFCENROSEQ: TIntegerField;
    zqry_SEQNFCEDTINS: TDateField;
    zqry_SEQNFCEHINS: TTimeField;
    zqry_SEQNFCEIDUSUINS: TWideStringField;
    zqry_SEQNFCEDTALT: TDateField;
    zqry_SEQNFCEHALT: TTimeField;
    zqry_SEQNFCEIDUSUALT: TWideStringField;
    procedure btn_EDITANFCEClick(Sender: TObject);
    procedure btn_SALVANFCEClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btn_SALVAMDFEClick(Sender: TObject);
    procedure btn_EDITANFEClick(Sender: TObject);
    procedure btn_SALVANFEClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    arquivo:textfile;
  end;

var
  frm_PREFERENCIAS: Tfrm_PREFERENCIAS;

implementation

{$R *.dfm}

uses u_dados, u_funcoes;

procedure Tfrm_PREFERENCIAS.BitBtn2Click(Sender: TObject);
begin
  zqry_SEQMDFE.Params.Clear;
  zqry_SEQMDFE.Close;
  zqry_seqMDFE.sql.clear;
  zqry_SEQMDFE.SQL.Add('select max(nroseq) as ultmdfe from sgsequencia where sgtab=:p1 and codemp=:p2');
  zqry_SEQMDFE.ParamByName('p1').AsString:='MD';
  zqry_SEQMDFE.ParamByName('p2').AsInteger:=dm_dados.codemp;
  zqry_seqMDFE.Open;
  dbedit3.SetFocus;
  btn_SALVAMDFE.Enabled:=FALSE;
end;

procedure Tfrm_PREFERENCIAS.btn_EDITANFCEClick(Sender: TObject);
var
  retseq:integer;
  nomearquivo:string;
begin
  zqry_MAX.Params.Clear;
  zqry_MAX.Close;
  zqry_MAX.SQL.Clear;
  zqry_MAX.sql.add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
  zqry_MAX.ParamByName('p1').AsString:='NC';
  zqry_MAX.ParamByName('p2').AsInteger:=dm_dados.codemp;
  zqry_MAX.Open;
  retseq:=zqry_MAX.FieldByname('ultnfce').asInteger;
  if ZQRY_MAX.IsEmpty then
  begin
    showmessage('Parametro n�o encontrado');
  end
  else
  begin
    zqry_SEQNFCE.Params.Clear;
    zqry_SEQNFCE.Close;
    zqry_seqnfCe.sql.clear;
    zqry_SEQNFCE.SQL.Add('select * from sgsequencia where sgtab=:p1 and codemp=:p2');
    zqry_SEQNFCE.ParamByName('p1').AsString:='NC';
    zqry_SEQNFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
    zqry_seqnfce.Open;
    dbedit2.SetFocus;
    nomearquivo := 'logalles.txt';
    btn_SALVANFCE.Enabled := True;

    // Verifica se o arquivo LOGALLES.TXT existe, se n�o existir, cria-o
    if not FileExists(nomearquivo) then
    begin
      assignfile(arquivo, nomearquivo);
      rewrite(arquivo); // Cria o arquivo se n�o existir
      closefile(arquivo);
    end;

    // Aguarda uma pequena pausa (por exemplo, 1 segundo)
    Sleep(1000); // 1000 milissegundos = 1 segundo

    // Abre o arquivo para adicionar informa��es
    assignfile(arquivo, nomearquivo);
    append(arquivo);

    // Escreve no arquivo
    writeln(arquivo, 'Em ' + datetostr(date) + ' �s ' + timetostr(time) + #13);
    writeln(arquivo, 'Altera��o na Sequ�ncia da NFCe do N.� ' + inttostr(retseq));
    // Fecha o arquivo
    closefile(arquivo);
  end;
end;

procedure Tfrm_PREFERENCIAS.btn_EDITANFEClick(Sender: TObject);
var
  retseq:integer;
begin
  zqry_MAX.Params.Clear;
  zqry_MAX.Close;
  zqry_MAX.SQL.Clear;
  zqry_MAX.sql.add('select max(nroseq) as ultnfe from sgsequencia where sgtab=:p1 and codemp=:p2');
  zqry_MAX.ParamByName('p1').AsString:='NF';
  zqry_MAX.ParamByName('p2').AsInteger:=dm_dados.codemp;
  zqry_MAX.Open;
  retseq:=zqry_MAX.FieldByname('ultnfe').asInteger;
  if ZQRY_MAX.IsEmpty then
  begin
    showmessage('Parametro n�o encontrado');
  end
  else
  begin
    zqry_SEQNFE.Params.Clear;
    zqry_SEQNFE.Close;
    zqry_seqnfe.sql.clear;
    zqry_SEQNFE.SQL.Add('select * from sgsequencia where sgtab=:p1 and codemp=:p2');
    zqry_SEQNFE.ParamByName('p1').AsString:='NF';
    zqry_SEQNFE.ParamByName('p2').AsInteger:=dm_dados.codemp;
    zqry_seqnfe.Open;
    dbedit1.SetFocus;
    btn_SALVANFE.Enabled:=true;
  end;
end;

procedure Tfrm_PREFERENCIAS.btn_SALVAMDFEClick(Sender: TObject);
begin
  zqry_seqmdfe.open;
  zqry_SEQMDFE.Post;
  zqry_SEQMDFE.ApplyUpdates;
  btn_SALVAMDFE.Enabled:=false;
end;

procedure Tfrm_PREFERENCIAS.btn_SALVANFCEClick(Sender: TObject);
var
  nomearquivo:string;
begin
  nomearquivo := 'logalles.txt';
  assignfile(arquivo, nomearquivo);
  append(arquivo);
  writeln(arquivo, 'Para o N�mero N.� '+dbedit2.Text+#13);
  closefile(arquivo);
  zqry_seqnfce.open;
  zqry_SEQNFCE.Post;
  zqry_SEQNFCE.ApplyUpdates;
  btn_SALVANFCE.Enabled:=false;
end;

procedure Tfrm_PREFERENCIAS.btn_SALVANFEClick(Sender: TObject);
begin
  zqry_seqnfe.open;
  zqry_SEQNFE.Post;
  zqry_SEQNFE.ApplyUpdates;
  showmessage('Atualiza��o da Sequ�ncia de NFe salva');
  btn_SALVANFE.Enabled:=false;
end;

procedure Tfrm_PREFERENCIAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if IsFileInUse('logalles.txt') then   closefile(arquivo);
zqry_SEQNFE.Cancel;
zqry_SEQNFCE.Cancel;
dbedit2.Update;
dbedit1.Update;
end;

end.