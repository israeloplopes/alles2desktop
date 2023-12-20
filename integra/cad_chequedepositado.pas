unit cad_chequedepositado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrm_CAD_CHEQUEDEPOSITADO = class(TForm)
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
    edt_BUSCABANCO: TEdit;
    edt_BUSCACONTA: TEdit;
    edt_BUSCACHEQUE: TEdit;
    btn_BUSCAR: TBitBtn;
    GroupBox1: TGroupBox;
    zqry_SGINICONSP: TZQuery;
    btn_CADASTRA: TBitBtn;
    msk_DTDEP: TMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    edt_CONTAATUAL: TEdit;
    Label16: TLabel;
    db_CONTA: TDBLookupComboBox;
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_CADASTRAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_CONTAExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
    numero_conta:string;
  end;

var
  frm_CAD_CHEQUEDEPOSITADO: Tfrm_CAD_CHEQUEDEPOSITADO;

implementation

{$R *.dfm}

uses dados, uFuncoes, principal, cad_chequedevolvido;


procedure Tfrm_CAD_CHEQUEDEPOSITADO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_Dados.zqry_FNCHEQUE.Close;
dm_dados.zqry_FNCONTA.Close;
dm_Dados.MEMORIA;
edt_BUSCABANCO.Clear;
edt_BUSCACONTA.Clear;
edt_BUSCACHEQUE.Clear;
msk_DTDEP.Clear;
end;

procedure Tfrm_CAD_CHEQUEDEPOSITADO.FormShow(Sender: TObject);
begin
dm_dados.zqry_FNconta.Params.Clear;
dm_dados.zqry_FNconta.Close;
dm_Dados.zqry_FNconta.SQL.clear;
dm_dados.zqry_FNconta.SQL.Add('select * from fnconta where ativaconta=:ativa and codemp=:empcod order by numconta');
dm_Dados.zqry_FNconta.ParamByName('ativa').AsString:='S';
dm_Dados.zqry_FNconta.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_fnconta.Open;
end;

procedure Tfrm_CAD_CHEQUEDEPOSITADO.btn_BUSCARClick(Sender: TObject);
begin
dm_dados.zqry_FNCHEQUE.close;
dm_dados.zqry_fncheque.SQL.Clear;
dm_Dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where codbanc=:banccod and fncheque.sitcheq=:sit and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
dm_dados.zqry_FNCHEQUE.ParamByName('banccod').AsInteger:=strtoint(edt_buscabanco.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('emiteconta').AsString:=trim(edt_buscaconta.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_buscacheque.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNCHEQUE.parambyname('sit').asstring:='CA';
dm_Dados.zqry_FNCHEQUE.Open;
if dm_Dados.zqry_FNCHEQUE.IsEmpty then
begin
  dm_dados.zqry_FNCHEQUE.close;
  dm_dados.zqry_fncheque.SQL.Clear;
  dm_Dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where codbanc=:banccod and fncheque.sitcheq=:sit and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
  dm_dados.zqry_FNCHEQUE.ParamByName('banccod').AsInteger:=strtoint(edt_buscabanco.Text);
  dm_dados.zqry_FNCHEQUE.ParamByName('emiteconta').AsString:=trim(edt_buscaconta.Text);
  dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_buscacheque.Text);
  dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_Dados.zqry_FNCHEQUE.parambyname('sit').asstring:='DP';
  dm_Dados.zqry_FNCHEQUE.Open;
  if dm_Dados.zqry_FNCHEQUE.IsEmpty then
  begin
      mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque');
   end
  else
  begin
         MostraTelaNotifica('CHEQUE DEPOSITADO','Em '+datetostr(dm_dados.zqry_FNCHEQUEDTDEPCHEQ.AsDateTime)+' na conta '+dm_Dados.zqry_FNCHEQUECONTACHEQ.asstring);
  end;
end
else
begin
  if dm_DADOS.zqry_FNCHEQUESITCHEQ.AsString='DP' THEN
  begin
     MostraTelaNotifica('CHEQUE DEPOSITADO','Em '+datetostr(dm_dados.zqry_FNCHEQUEDTDEPCHEQ.AsDateTime)+' na conta '+dm_Dados.zqry_FNCHEQUECONTACHEQ.asstring);
  end
  else
  begin
    msk_DTDEP.Text:=datetostr(dm_dados.zqry_FNCHEQUEDTDEPCHEQ.AsDateTime);
    edt_CONTAATUAL.Text:=dm_DADOS.zqry_FNCHEQUECONTACHEQ.AsString;
  end;
end;
end;

procedure Tfrm_CAD_CHEQUEDEPOSITADO.btn_CADASTRAClick(Sender: TObject);
begin
dm_Dados.EXECUTASGINICONSP;
dm_Dados.zqry_fncheque.close;
dm_dados.zqry_fncheque.SQL.Clear;
dm_Dados.zqry_FNCHEQUE.SQL.Add('update fncheque set sitcheq=''DP'',dtdepcheq=:dtdep, contacheq=:conta');
dm_dados.zqry_FNCHEQUE.SQL.Add('where codbanc=:banccod and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
dm_dados.zqry_FNCHEQUE.ParamByName('banccod').AsInteger:=strtoint(edt_buscabanco.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('emiteconta').AsString:=trim(edt_buscaconta.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_buscacheque.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_FNCHEQUE.ParamByName('dtdep').AsDate:=strtodate(msk_DTDEP.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('conta').AsString:=numero_conta;
//showmessage(edt_buscabanco.Text+' - '+edt_buscaconta.Text+' - '+edt_buscacheque.Text+' - '+numero_conta);
dm_Dados.zqry_FNCHEQUE.execsql;
mostratelaaviso('DADOS GRAVADOS COM SUCESSO','');
btn_BUSCARClick(Self);
end;

procedure Tfrm_CAD_CHEQUEDEPOSITADO.db_CONTAExit(Sender: TObject);
begin
numero_conta:=db_CONTA.Text;
end;

end.
