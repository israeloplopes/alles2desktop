unit u_ins_clfiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset ;

type
  Tfrm_INS_CLFISCAL = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btn_INSERTBD: TBitBtn;
    Label1: TLabel;
    btn_INSERT_MOVBD: TBitBtn;
    edt_CODMOV: TEdit;
    Label2: TLabel;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    btn_DEL_MOVI: TBitBtn;
    DataSource2: TDataSource;
    btn_GERASQL: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    btn_MOV_GERASQL: TBitBtn;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure btn_INSERTBDClick(Sender: TObject);
    procedure btn_INSERT_MOVBDClick(Sender: TObject);
    procedure btn_DEL_MOVIClick(Sender: TObject);
    procedure edt_CODMOVEnter(Sender: TObject);
    procedure btn_GERASQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_INS_CLFISCAL: Tfrm_INS_CLFISCAL;

implementation

{$R *.dfm}

uses u_dados;

Function tirapontos(texto : String) : String;
Begin

  While pos('-', Texto) <> 0 Do
    delete(Texto,pos('-', Texto),1);

  While pos('.', Texto) <> 0 Do
    delete(Texto,pos('.', Texto),1);

  While pos('/', Texto) <> 0 Do
    delete(Texto,pos('/', Texto),1);

  While pos(',', Texto) <> 0 Do
    delete(Texto,pos(',', Texto),1);

  Result := Texto;
End;

procedure Tfrm_INS_CLFISCAL.btn_INSERTBDClick(Sender: TObject);
var
  componto:string;
  tamanho: integer;
begin
//dm_Dados.qry_lfncm.First;
   while not DM_DADOS.zqry_lfncm.eof do
   begin
     componto:=dm_dados.zqry_LFNCMCODNCM.Asstring;
     edit1.Text:=tirapontos(componto);
     tamanho:=Length(edit1.Text);
     if tamanho=8 then
     begin
       DM_DADOS.zqry_LFCLFISCAL.Close;
       dm_Dados.zqry_LFCLFISCAL.sql.clear;
       DM_dADOS.zqry_LFCLFISCAL.SQL.ADD('select * from lfclfiscal where codfisc=:fisc');
       dm_dados.zqry_LFCLFISCAL.Params.ParamByName('fisc').AsString:=edit1.text;
       dm_dados.zqry_LFCLFISCAL.Open;
       if dm_dados.zqry_EQPRODUTO.IsEmpty then
       begin
        dm_dados.zqry_LFCLFISCAL.Append;
        dm_dados.zqry_LFCLFISCALCODEMP.Value:=99;
        dm_dados.zqry_LFCLFISCALCODFILIAL.Value:=1;
        dm_Dados.zqry_LFCLFISCALCODFISC.asstring:=edit1.Text;
        dm_Dados.zqry_LFCLFISCALDESCFISC.Value:=copy(dm_dados.zqry_LFNCMDESCNCM.Value,1,50);
        dm_dados.zqry_LFCLFISCALTPREDICMSFISC.AsString:='B';
        dm_Dados.zqry_LFCLFISCALCODEMPRA.Value:=99;
        dm_Dados.zqry_LFCLFISCALCODFILIALRA.Value:=1;
        dm_dados.zqry_LFCLFISCALCODREGRA.Value:='1';
        dm_dados.zqry_LFCLFISCALSITPISFISC.Value:='T';
        dm_dados.zqry_LFCLFISCALSITCOFINSFISC.Value:='T';
        dm_dados.zqry_LFCLFISCALTIPOST.Value:='SI';
        dm_dados.zqry_LFCLFISCALDTINS.AsString:=datetostr(date);
        dm_dados.zqry_LFCLFISCALHINS.Value:=STRTOTIME('00:00:01');
        dm_dados.zqry_LFCLFISCALIDUSUINS.Value:='ISRAEL';
        dm_Dados.zqry_LFCLFISCAL.Post;
        dm_Dados.zqry_LFCLFISCAL.ApplyUpdates();
//        dm_dados.zqry_LFCLFISCAL.Close;
        dm_dados.zdts_lfclfiscal:=nil;
        label1.Caption:=edit1.Text;
        dm_dados.zqry_LFNCM.Next;
       end;
     end
     else
     begin
        dm_dados.zqry_LFNCM.Next;
   end;
  end;
showmessage('Itens inseridos tabela CLFISCAL');
//dm_dados.Transacao.Commit;
end;

procedure Tfrm_INS_CLFISCAL.btn_INSERT_MOVBDClick(Sender: TObject);
var
  componto:string;
  tamanho,contador: integer;
begin
if EDT_CODMOV.Text='' then
begin
  showmessage('Necessário informar um tipo de movimento');
  edt_codmov.Clear;
  edt_codmov.SetFocus;
end
else
begin
dm_Dados.zqry_lfncm.First;
   while not DM_DADOS.zqry_lfncm.eof do
   begin
     componto:=dm_dados.zqry_LFNCMCODNCM.Asstring;
     edit1.Text:=tirapontos(componto);
     tamanho:=Length(edit1.Text);
     if tamanho=8 then
     begin
      dm_dados.zqry_LFITCLFISCAL.Append;
      dm_dados.zqry_LFITCLFISCALCODEMP.Value:=99;
      dm_dados.zqry_LFITCLFISCALCODFILIAL.Value:=1;
      //showmessage(edit1.Text);
      dm_Dados.zqry_LFITCLFISCALCODFISC.asstring:=edit1.Text;
      zquery1.Close;
      zquery1.SQL.Clear;
      zquery1.sql.add('SELECT MAX(coditfisc) as Sequencia FROM lfitclfiscal where codfisc=:codigo');
      zquery1.ParamByName('codigo').asstring:=edit1.text;
      zquery1.Open;
      contador:=(1+zquery1.FieldByname('sequencia').asInteger);
      //showmessage(inttostr(contador));
      dm_dados.zqry_LFITCLFISCALCODITFISC.Value:=contador;
      dm_dados.zqry_LFITCLFISCALORIGFISC.Value:='0';
      dm_dados.zqry_LFITCLFISCALTIPOFISC.Value:='II';
      dm_dados.zqry_LFITCLFISCALTPREDICMSFISC.Value:='B';
      dm_dados.zqry_LFITCLFISCALCODTRATTRIB.Value:='40';
      dm_dados.zqry_LFITCLFISCALNOUFITFISC.Value:='S';
      dm_dados.zqry_LFITCLFISCALCODFISCCLI.Value:=1;
      dm_dados.zqry_LFITCLFISCALALIQIPIFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQPISFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQCOFINSFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQCSOCIALFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQIRFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQFUNRURALFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALALIQIIFISC.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALCODTIPOMOV.Value:=strtoint(edt_CODMOV.Text);
      dm_dados.zqry_LFITCLFISCALTIPOST.Value:='SI';
      dm_dados.zqry_LFITCLFISCALGERALFISC.Value:='N';
      dm_dados.zqry_LFITCLFISCALCODSITTRIBPIS.Value:='49';
      dm_dados.zqry_LFITCLFISCALIMPSITTRIBPIS.Value:='PI';
      dm_dados.zqry_LFITCLFISCALCODFILIAL.Value:=1;
      dm_dados.zqry_LFITCLFISCALCODSITTRIBCOF.Value:='49';
      dm_dados.zqry_LFITCLFISCALIMPSITTRIBCOF.Value:='CO';
      dm_dados.zqry_LFITCLFISCALCLENQ.Value:=999;
      dm_dados.zqry_LFITCLFISCALCENQ.Value:='999';
      dm_dados.zqry_LFITCLFISCALCODSITTRIBIPI.Value:='50';
      dm_dados.zqry_LFITCLFISCALIMPSITTRIBIPI.Value:='IP';
      dm_dados.zqry_LFITCLFISCALTPCALCIPI.Value:='V';
      dm_dados.zqry_LFITCLFISCALMODBCICMS.Value:=0;
      dm_dados.zqry_LFITCLFISCALMODBCICMSST.Value:=0;
      dm_dados.zqry_LFITCLFISCALTIPOUSOITFISC.Value:='VD';
      dm_dados.zqry_LFITCLFISCALCODPAIS.Value:=76;
      dm_dados.zqry_LFITCLFISCALPERCCREDPRESIMP.asfloat:=100.00;
      dm_dados.zqry_LFITCLFISCALADICIPIBASEICMS.Value:='N';
      dm_dados.zqry_LFITCLFISCALADICICMSTOTNOTA.Value:='N';
      dm_dados.zqry_LFITCLFISCALATIVOITFISC.Value:='S';
      dm_dados.zqry_LFITCLFISCALVLRIPIUNIDTRIB.AsCurrency:=0.00;
      dm_dados.zqry_LFITCLFISCALREDBASEST.Value:='N';
      dm_dados.zqry_LFITCLFISCALREDBASEFRETE.Value:='N';
      dm_dados.zqry_LFITCLFISCALCODREGRA.Value:='1';
      dm_dados.zqry_LFITCLFISCALRETENSAOISS.Value:='N';
      dm_dados.zqry_LFITCLFISCALINDAPURIPI.Value:='O';
      dm_dados.zqry_LFITCLFISCALDTINS.AsString:=datetostr(date);
      dm_dados.zqry_LFITCLFISCALHINS.Value:=STRTOTIME('00:00:01');
      dm_dados.zqry_LFITCLFISCALIDUSUINS.Value:='ISRAEL';
      dm_dados.zqry_LFITCLFISCAL.Post;
      dm_Dados.zqry_LFITCLFISCAL.applyupdates();
      label1.Caption:='Inserindo Movimento '+edt_CODMOV.Text+' para o NCM '+edit1.Text+' como item '+inttostr(contador);
      dm_dados.zqry_LFNCM.Next;
     end
     else
     begin
        dm_dados.zqry_LFNCM.Next;
   end;
  end;
//dm_dados.Transacao.Commit;
end;
end;

procedure Tfrm_INS_CLFISCAL.btn_DEL_MOVIClick(Sender: TObject);
begin
if edt_CODMOV.Text='' then
begin
  showmessage('Não foi localizado código de movimento'#13'Insira um para continuar');
  edt_codmov.Clear;
  edt_codmov.SetFocus;
end
else
begin
  zquery2.Close;
  zquery2.SQL.Clear;
  label1.Caption:='Excluindo Itens na Classificação com movimento '+edt_CODMOV.Text;
  zquery2.sql.add('delete from lfitclfiscal where codtipomov=:codmov');
  zquery2.ParamByName('codmov').asstring:=edt_CODMOV.text;
  zquery2.Open;
//  dm_Dados.Transacao.CommitRetaining;
  Label1.Caption:='Itens Excluídos';
end;


end;

procedure Tfrm_INS_CLFISCAL.btn_GERASQLClick(Sender: TObject);
var
  arq : textfile;
  componto, nome:string;
  tamanho: integer;
begin
nome:='c:\integra\scripts\clfiscal.sql';
AssignFile(arq, nome);
Rewrite(arq);
while not DM_DADOS.zqry_lfncm.eof do
begin
  componto:=dm_dados.zqry_LFNCMCODNCM.Asstring;
  edit1.Text:=tirapontos(componto);
  tamanho:=Length(edit1.Text);
  if tamanho=8 then
  begin
    Writeln(arq,'INSERT INTO LFCLFISCAL (CODEMP, CODFILIAL, CODFISC, DESCFISC, TPREDICMSFISC, CODEMPRA, CODFILIALRA, CODREGRA, SITPISFISC, SITCOFINSFISC, TIPOST, DTINS,HINS,IDUSUINS) VALUES (99, 1, '+edit1.Text+', '''+copy(dm_dados.zqry_LFNCMDESCNCM.Value,1,50)+''',''B'',99,1,''1'', ''T'', ''T'', ''SI'', ''2017-07-06'', ''00:00:01'', ''ISRAEL''); ');
  end;
  DM_dADOS.zqry_LFNCM.Next;
end;
CloseFile(arq);
showmessage('Arquivo gerado com sucesso'#13+nome+#13'Fazendo a carga agora para o BD');
//ibscript1.Script.LoadFromFile(nome);
//ibscript1.ExecuteScript;
showmessage('Script executado'#13'Aplicação será finalizada');
end;

procedure Tfrm_INS_CLFISCAL.edt_CODMOVEnter(Sender: TObject);
begin
label1.Caption:='';
end;

end.
