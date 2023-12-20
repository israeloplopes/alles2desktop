unit cad_chequecompensado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_CAD_CHEQUECOMPENSADO = class(TForm)
    gb_IDENTIFICACHEQUE: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label12: TLabel;
    DBText9: TDBText;
    Label13: TLabel;
    DBText10: TDBText;
    edt_BUSCACONTA: TEdit;
    edt_BUSCACHEQUE: TEdit;
    edt_BUSCAVALOR: TEdit;
    btn_BUSCAR: TBitBtn;
    GroupBox1: TGroupBox;
    db_CONTA: TDBLookupComboBox;
    zqry_SGINICONSP: TZQuery;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btn_BUSCARClick(Sender: TObject);
    procedure ExecutaSGINICONSP;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_CHEQUECOMPENSADO: Tfrm_CAD_CHEQUECOMPENSADO;

implementation

{$R *.dfm}

uses dados, uFuncoes;


procedure Tfrm_CAD_CHEQUECOMPENSADO.ExecutaSGINICONSP;
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

procedure Tfrm_CAD_CHEQUECOMPENSADO.btn_BUSCARClick(Sender: TObject);
var
  texto:string;
begin
dm_dados.zqry_FNCHEQUE.close;
dm_dados.zqry_fncheque.SQL.Clear;
//dm_Dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where codbanc=:banccod and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
dm_dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where fncheque.numcheq=:cheqnum and fncheque.sitcheq=:sit and fncheque.contacheq=:contadep and fncheque.vlrcheq=:cheqvlr');
dm_dados.zqry_FNCHEQUE.ParamByName('cheqvlr').asfloat:=strtofloat(edt_BUSCAVALOR.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('contadep').AsString:=trim(edt_BUSCACONTA.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_BUSCACHEQUE.Text);
dm_Dados.zqry_FNCHEQUE.parambyname('sit').asstring:='DP';
//dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNCHEQUE.Open;
if dm_Dados.zqry_FNCHEQUE.IsEmpty then
begin
  dm_dados.zqry_FNCHEQUE.close;
  dm_dados.zqry_fncheque.SQL.Clear;
  dm_dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where fncheque.numcheq=:cheqnum and fncheque.sitcheq=:sit and fncheque.contacheq=:contadep and fncheque.vlrcheq=:cheqvlr');
  dm_dados.zqry_FNCHEQUE.ParamByName('cheqvlr').asfloat:=strtofloat(edt_BUSCAVALOR.Text);
  dm_dados.zqry_FNCHEQUE.ParamByName('contadep').AsString:=trim(edt_BUSCACONTA.Text);
  dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_BUSCACHEQUE.Text);
  dm_Dados.zqry_FNCHEQUE.parambyname('sit').asstring:='CD';
  dm_Dados.zqry_FNCHEQUE.Open;
  IF DM_DADOS.zqry_FNCHEQUE.IsEmpty THEN
  BEGIN
      mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque');
  END
  ELSE
  BEGIN
     MostraTelaNotifica('CHEQUE COMPENSADO','Em '+datetostr(dm_dados.zqry_FNCHEQUEDTCOMPCHEQ.AsDateTime)+' na conta '+dm_Dados.zqry_FNCHEQUECONTACHEQ.asstring);
  END;
end
else
begin
  texto:='COMPENSAR o Cheque N.º '+inttostr(dm_dados.zqry_FNCHEQUENUMCHEQ.AsInteger)+' ?'#13'Confirme com SIM para CANCELAR'#13'ou para NÃO CANCELAR clique em Não';
  if MessageBox(HANDLE, pchar(texto), 'COMPENSAR CHEQUE?', MB_YESNO + MB_ICONQUESTION) = idyes then
  begin
    EXECUTASGINICONSP;
    dm_Dados.zqry_fncheque.close;
    dm_dados.zqry_fncheque.SQL.Clear;
    dm_Dados.zqry_FNCHEQUE.SQL.Add('update fncheque set sitcheq=''CD'',dtcompcheq=:dtcomp');
    dm_dados.zqry_FNCHEQUE.SQL.Add('where fncheque.numcheq=:cheqnum and fncheque.sitcheq=:sit and fncheque.contacheq=:contadep and fncheque.vlrcheq=:cheqvlr');
    dm_dados.zqry_FNCHEQUE.ParamByName('cheqvlr').asfloat:=strtofloat(edt_BUSCAVALOR.Text);
    dm_dados.zqry_FNCHEQUE.ParamByName('contadep').AsString:=trim(edt_BUSCACONTA.Text);
    dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_BUSCACHEQUE.Text);
    dm_Dados.zqry_FNCHEQUE.parambyname('sit').asstring:='DP';
    dm_dados.zqry_FNCHEQUE.ParamByName('dtcomp').AsDate:=now;
    //showmessage(edt_buscabanco.Text+' - '+edt_buscaconta.Text+' - '+edt_buscacheque.Text+' - '+numero_conta);
    dm_Dados.zqry_FNCHEQUE.execsql;
    mostratelaaviso('DADOS GRAVADOS COM SUCESSO','');
    btn_BUSCARClick(Self);
  end
  else
  begin
  end;
end;
end;

procedure Tfrm_CAD_CHEQUECOMPENSADO.FormShow(Sender: TObject);
begin
dm_dados.zqry_FNconta.Params.Clear;
dm_dados.zqry_FNconta.Close;
dm_Dados.zqry_FNconta.SQL.clear;
dm_dados.zqry_FNconta.SQL.Add('select * from fnconta where ativaconta=:ativa and codemp=:empcod order by numconta');
dm_Dados.zqry_FNconta.ParamByName('ativa').AsString:='S';
dm_Dados.zqry_FNconta.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_fnconta.Open;
end;

end.
