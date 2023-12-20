unit u_dlg_inspetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_DLG_INSPETOR = class(TForm)
    pn_TOP: TPanel;
    Image1: TImage;
    btn_FECHA: TBitBtn;
    btn_GRAVA: TBitBtn;
    PageControl1: TPageControl;
    ts_CONEXAO: TTabSheet;
    ts_REFERENCIA: TTabSheet;
    ts_COMPRA: TTabSheet;
    ts_VENDA: TTabSheet;
    ts_CLIENTES: TTabSheet;
    DBGrid7: TDBGrid;
    Label7: TLabel;
    edt_REF_BUSCAPROD: TEdit;
    btn_BUSCAPRODREF: TBitBtn;
    edt_REF_NOVOREF: TEdit;
    btn_GRAVANOVAREF: TBitBtn;
    Label1: TLabel;
    DBGrid6: TDBGrid;
    Label2: TLabel;
    edt_CODCLI: TEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    edt_CODCOMPRA: TEdit;
    DBGrid4: TDBGrid;
    Label4: TLabel;
    edt_CODVENDA: TEdit;
    DBGrid3: TDBGrid;
    edt_SENHA: TEdit;
    Label3: TLabel;
    procedure minhasenha;
    procedure btn_GRAVAClick(Sender: TObject);
    procedure edt_SENHAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_FECHAClick(Sender: TObject);
    procedure btn_BUSCAPRODREFClick(Sender: TObject);
    procedure btn_GRAVANOVAREFClick(Sender: TObject);
    procedure edt_CODCOMPRAExit(Sender: TObject);
    procedure edt_CODVENDAExit(Sender: TObject);
    procedure edt_CODCLIExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    minhasenhadia,minhasenhahora:string;
  end;

var
  frm_DLG_INSPETOR: Tfrm_DLG_INSPETOR;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_DLG_INSPETOR.btn_BUSCAPRODREFClick(Sender: TObject);
begin
  dm_Dados.zqry_EQPRODUTO.Close;
  dm_dados.zqry_EQPRODUTO.SQL.Clear;
  dm_Dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto where codprod=:cod and codemp=:emp');
  DM_DADOS.zqry_eqproduto.parambyname('cod').asinteger:=strtoint(edt_REF_BUSCAPROD.TEXT);
  DM_DADOS.zqry_eqproduto.parambyname('emp').asinteger:=dm_DADOS.codemp;
  dm_dados.zqry_eqproduto.open;
  if dm_dados.zqry_EQPRODUTO.IsEmpty then
  begin
    Showmessage('Não foi localizado esse produto.');
    edt_ref_buscaprod.Clear;
    edt_ref_buscaprod.SetFocus;
  end
  else
  begin
    edt_REF_NOVOREF.Enabled:=TRUE;
    edt_REF_NOVOREF.SetFocus;
    dm_dados.zqry_EQPRODUTO.Edit;
  end;
end;

procedure Tfrm_DLG_INSPETOR.btn_GRAVANOVAREFClick(Sender: TObject);
begin
  dm_Dados.zqry_EQPRODUTO.Close;
  dm_dados.zqry_EQPRODUTO.SQL.Clear;
  dm_Dados.zqry_EQPRODUTO.SQL.Add('update eqproduto set refprod=:ref where codprod=:cod and codemp=:empcod');
  DM_DADOS.zqry_eqproduto.parambyname('ref').value:=trim(edt_REF_NOVOREF.text);
  DM_DADOS.zqry_eqproduto.parambyname('empcod').asinteger:=dm_DADOS.codemp;
  DM_DADOS.zqry_eqproduto.parambyname('cod').asinteger:=strtoint(edt_REF_BUSCAPROD.Text);
  dm_dados.zqry_eqproduto.ExecSql;
  edt_REF_BUSCAPROD.Clear;
  edt_REF_NOVOREF.Clear;
  EDT_REF_BUSCAPROD.SetFocus;
end;

procedure Tfrm_DLG_INSPETOR.edt_CODVENDAExit(Sender: TObject);
begin
if edt_CODVENDA.text='' then
  begin
      showmessage('Não foi informado valores para a busca');
      edt_codvenda.Clear;
      edt_codvenda.SetFocus;
  end
else
  begin
    //dm_DADOS.qry_cpcompra.refresh;
    dm_DADOS.zqry_vdvenda.Close;
    dm_DADOS.zqry_vdvenda.sql.Clear;
    dm_DADOS.zqry_vdvenda.sql.add('select * from vdvenda');
    dm_DADOS.zqry_vdvenda.sql.add('where codvenda=:venda and codemp=:empcod');
    dm_DADOS.zqry_vdvenda.ParamByName('venda').asInteger:=strtoint(edt_codvenda.text);
    dm_DADOS.zqry_vdvenda.ParamByName('empcod').asInteger:=dm_dados.codemp;
    dm_DADOS.zqry_vdvenda.open;
    if dm_DADOS.zqry_vdvenda.IsEmpty then
    begin
      showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
    end;
  end;
  application.ProcessMessages;
end;

procedure Tfrm_DLG_INSPETOR.btn_FECHAClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_DLG_INSPETOR.btn_GRAVAClick(Sender: TObject);
var
  senha:string;
begin
  senha:=minhasenhadia+minhasenhahora;
  if trim(edt_senha.Text)=senha then
  BEGIN
    PageControl1.Enabled:=true;
    dm_dados.zqry_sgconexao.close;
    dm_dados.zqry_sgconexao.open;
  END
else
  begin
    PageControl1.Enabled:=false;
    showmessage('Senha não confere');
    edt_senha.Clear;
    edt_senha.SetFocus;
  end;
end;

procedure Tfrm_DLG_INSPETOR.edt_CODCLIExit(Sender: TObject);
begin
if edt_CODCLI.text='' then
  begin
      showmessage('Não foi informado valores para a busca');
      edt_CODCLI.Clear;
      edt_CODCLI.SetFocus;
  end
else
  begin
    DM_DADOS.zqry_vdcliente.Close;
    dm_dados.zqry_vdcliente.sql.clear;
    DM_dADOS.zqry_vdcliente.sql.add('select * from vdcliente where codcli=:cliente and codemp=:empcod');
    DM_DADOS.zqry_vdcliente.parambyname('cliente').asinteger:=strtoint(edt_codcli.TEXT);
    DM_DADOS.zqry_vdcliente.parambyname('empcod').asinteger:=dm_dados.codemp;
    dm_dados.zqry_vdcliente.open;
    Application.ProcessMessages;
    if dm_dados.zqry_vdcliente.IsEmpty then
    begin
      showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
    end;
  end;
  application.ProcessMessages;
end;

procedure Tfrm_DLG_INSPETOR.edt_CODCOMPRAExit(Sender: TObject);
begin
if edt_CODCOMPRA.text='' then
  begin
      showmessage('Não foi informado valores para a busca');
      edt_codcompra.Clear;
      edt_codcompra.SetFocus;
  end
else
  begin
    //dm_DADOS.qry_cpcompra.refresh;
    dm_DADOS.zqry_cpcompra.Close;
    dm_DADOS.zqry_cpcompra.sql.Clear;
    dm_DADOS.zqry_cpcompra.sql.add('select * from cpcompra');
    dm_DADOS.zqry_cpcompra.sql.add('where codcompra=:compra and codemp=:empcod');
    dm_DADOS.zqry_cpcompra.ParamByName('compra').asInteger:=strtoint(edt_codcompra.text);
    dm_DADOS.zqry_cpcompra.ParamByName('empcod').asInteger:=dm_dados.codemp;
    dm_DADOS.zqry_cpcompra.open;
    if dm_DADOS.zqry_cpcompra.IsEmpty then
    begin
      showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
    end;
  end;
  application.ProcessMessages;
end;

procedure Tfrm_DLG_INSPETOR.edt_SENHAExit(Sender: TObject);
begin
//
end;

procedure Tfrm_DLG_INSPETOR.FormShow(Sender: TObject);
begin
minhasenha;
PageControl1.ActivePage:=ts_CONEXAO;
pagecontrol1.Enabled:=false;
edt_senha.Clear;
edt_senha.SetFocus;
end;

procedure Tfrm_DLG_INSPETOR.minhasenha;
var
  dia,mes,vdia,vmes, erro:string;
  Hora, Min, Sec, MSec : Word;
  ddia,dmes:integer;
begin
dia:= FormatDateTime('dd',Now);
mes:= FormatDateTime('mm',Now);
ddia:=strtoint(dia)*2;
dmes:=strtoint(mes)*2;
vdia:=inttostr(ddia);
vmes:=inttostr(dmes);
minhasenhadia:=vdia+vmes;
minhasenhahora := FormatDateTime('hhmm',Now);
DecodeTime(Now, Hora, Min, Sec, MSec);
end;



end.
