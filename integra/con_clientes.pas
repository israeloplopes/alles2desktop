unit con_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, ComObj,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Menus;

type
  Tfrm_CON_CLIENTES = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btn_NOVO: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    ProgressBar1: TProgressBar;
    rg_CLIENTES: TRadioGroup;
    gb_CLIENTES: TGroupBox;
    lbl_PESQUISA: TLabel;
    lbl_ATE: TLabel;
    sp_BUSCA: TSpeedButton;
    msk_PESQUISA1: TMaskEdit;
    msk_PESQUISA2: TMaskEdit;
    btn_BUSCACLIENTE: TBitBtn;
    btn_FECHA: TBitBtn;
    btn_OK: TBitBtn;
    PopupMenu1: TPopupMenu;
    OK1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    odos1: TMenuItem;
    Codigo1: TMenuItem;
    Nome1: TMenuItem;
    elefone1: TMenuItem;
    Cidade1: TMenuItem;
    CNPJ1: TMenuItem;
    CPF1: TMenuItem;
    procedure btn_NOVOClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rg_CLIENTESClick(Sender: TObject);
    procedure btn_BUSCACLIENTEClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure btn_FECHAClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
    procedure Codigo1Click(Sender: TObject);
    procedure Nome1Click(Sender: TObject);
    procedure elefone1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure CNPJ1Click(Sender: TObject);
    procedure CPF1Click(Sender: TObject);
    procedure msk_PESQUISA1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    entre, script, parametro1, parametro2, instrucao : string;
    codcliente:integer;
  end;

var
  frm_CON_CLIENTES: Tfrm_CON_CLIENTES;

implementation

{$R *.dfm}

uses u_dados, rel_clientes, u_Funcoes, u_fechacupom;

procedure Tfrm_CON_CLIENTES.btn_BUSCACLIENTEClick(Sender: TObject);
begin
MostraTelaAguarde('Consultando Informações');
dm_dados.zqry_VDCLIENTE.Params.Clear;
DM_DADOS.zqry_VDCLIENTE.Close;
DM_DADOS.zqry_VDCLIENTE.SQL.Clear;
DM_DADOS.zqry_VDCLIENTE.sql.Add('SELECT * FROM VDCLIENTE WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
DM_DADOS.zqry_VDCLIENTE.ParamByName(parametro1).value:=instrucao+msk_pesquisa1.Text+instrucao;
if ENTRE='S' then DM_DADOS.zqry_VDCLIENTE.ParamByName(parametro2).value:=instrucao+msk_pesquisa2.Text+instrucao;
DM_DADOS.zqry_VDCLIENTE.ParamByName('empcod').asinteger:=dm_dados.codemp;
DM_DADOS.zqry_VDCLIENTE.Open;
if DM_DADOS.zqry_VDCLIENTE.IsEmpty then
begin
  showmessage('Atenção!!!'#13'Não foram encontrados valores, com base na sua busca'#13'Tab: vdcliente');
end;
FECHATELAAGUARDE;
end;

procedure Tfrm_CON_CLIENTES.btn_FECHAClick(Sender: TObject);
begin
dm_dados.zqry_VDCLIENTE.Close;
close;
end;

procedure Tfrm_CON_CLIENTES.btn_NOVOClick(Sender: TObject);
begin
//frm_cad_clientes.show;
end;

procedure Tfrm_CON_CLIENTES.elefone1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=3;
end;

procedure Tfrm_CON_CLIENTES.Cidade1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=4;
end;

procedure Tfrm_CON_CLIENTES.CNPJ1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=5;
end;

procedure Tfrm_CON_CLIENTES.Codigo1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=1;
end;

procedure Tfrm_CON_CLIENTES.CPF1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=6;
end;

procedure Tfrm_CON_CLIENTES.BitBtn2Click(Sender: TObject);
begin
frm_rel_clientes.rlreport1.preview();
end;

procedure Tfrm_CON_CLIENTES.BitBtn3Click(Sender: TObject);
var
  linha, coluna : integer;
  planilha : variant;
  valorcampo : string;
begin
dm_Dados.zqry_VDCLIENTE.close;
dm_dados.zqry_vdcliente.sql.clear;
dm_Dados.zqry_vdcliente.sql.add('select * from vdcliente where codemp=99 order by codcli');
dm_dados.zqry_VDCLIENTE.open;
dm_Dados.zqry_VDCLIENTE.CachedUpdates := true;
planilha:= CreateoleObject('Excel.Application');
planilha.WorkBooks.add(1);
planilha.caption := 'Exportando dados do dbGrid para o Excel';
planilha.visible := true;

dm_Dados.zqry_VDCLIENTE.ApplyUpdates();
dm_Dados.zqry_VDCLIENTE.First;
for linha := 0 to dm_Dados.zqry_VDCLIENTE.RecordCount - 1 do
begin
  for coluna := 1 to dm_Dados.zqry_VDCLIENTE.FieldCount do
  begin
    valorcampo := dm_Dados.zqry_VDCLIENTE.Fields[coluna - 1].AsString;
    planilha.cells[linha + 2,coluna] := valorCampo;
  end;
  dm_Dados.zqry_VDCLIENTE.Next;
  end;
  for coluna := 1 to dm_Dados.zqry_VDCLIENTE.FieldCount do
  begin
    valorcampo := dm_Dados.zqry_VDCLIENTE.Fields[coluna - 1].DisplayLabel;
    planilha.cells[1,coluna] := valorcampo;
  end;
  planilha.columns.Autofit;
end;

procedure Tfrm_CON_CLIENTES.BitBtn4Click(Sender: TObject);
var
PLANILHA: Variant;
LINHA,CONT: Integer;
begin
dm_dados.zqry_VDCLIENTE.close;
dm_Dados.Zqry_VDCLIENTE.sql.clear;
dm_dados.Zqry_VDCLIENTE.sql.Add('select * from vdcliente where codemp=99 order by codcli');
dm_dados.zqry_VDCLIENTE.open;
CONT:=dm_Dados.zqry_VDCLIENTE.RecordCount;
ProgressBar1.Max:=CONT;
ProgressBar1.Position:=0;
dm_Dados.zqry_VDCLIENTE.Filtered:=FALSE;
LINHA:=2;
PLANILHA:=CreateOleObject('Excel.Application');
PLANILHA.caption:='IntegraERP - Planilha Clientes';
PLANILHA.visible:=false;
PLANILHA.workbooks.add(1);
PLANILHA.cells[1,1]:='Código';
PLANILHA.cells[1,2]:='Razão';
PLANILHA.cells[1,3]:='Nome';
PLANILHA.cells[1,4]:='Tip';
PLANILHA.cells[1,5]:='CNPJ';
PLANILHA.cells[1,6]:='IE';
PLANILHA.cells[1,7]:='IM';
PLANILHA.cells[1,8]:='CPF';
PLANILHA.cells[1,9]:='RG';
PLANILHA.cells[1,10]:='End';
PLANILHA.cells[1,11]:='N.º';
PLANILHA.cells[1,12]:='Compl';
PLANILHA.cells[1,13]:='Bairro';
PLANILHA.cells[1,14]:='Cidade';
PLANILHA.cells[1,15]:='UF';
PLANILHA.cells[1,16]:='CEP';
PLANILHA.cells[1,17]:='End. Ent';
PLANILHA.cells[1,18]:='N.º Ent';
PLANILHA.cells[1,19]:='Compl Ent';
PLANILHA.cells[1,20]:='Bairro Ent';
PLANILHA.cells[1,21]:='Cidade Ent';
PLANILHA.cells[1,22]:='UF Ent';
PLANILHA.cells[1,23]:='CEP Ent';
PLANILHA.cells[1,24]:='Tel';
PLANILHA.cells[1,25]:='Cel';
PLANILHA.cells[1,26]:='Oper';
PLANILHA.cells[1,27]:='Tel Ent';
PLANILHA.cells[1,28]:='Cel Ent';
PLANILHA.cells[1,29]:='Oper Ent';
PLANILHA.cells[1,30]:='Site';
PLANILHA.cells[1,31]:='Email';
dm_Dados.zqry_VDCLIENTE.DisableControls;
try while not dm_Dados.zqry_VDCLIENTE.Eof do
begin
PLANILHA.cells[linha,1]:=dm_Dados.zqry_VDCLIENTEcodcli.Value;
PLANILHA.cells[linha,2]:=dm_Dados.zqry_VDCLIENTERAZCLI.Value;
PLANILHA.cells[linha,3]:=dm_Dados.zqry_VDCLIENTENOMECLI.Value;
PLANILHA.cells[linha,4]:=dm_Dados.zqry_VDCLIENTEPESSOACLI.Value;
PLANILHA.cells[linha,5]:=dm_Dados.zqry_VDCLIENTECNPJCLI.AsString;
PLANILHA.cells[linha,6]:=dm_Dados.zqry_VDCLIENTEINSCCLI.Value;
PLANILHA.cells[linha,7]:=dm_Dados.zqry_VDCLIENTEINSCMUNCLI.Value;
PLANILHA.cells[linha,8]:=dm_Dados.zqry_VDCLIENTECPFCLI.Value;
PLANILHA.cells[linha,9]:=dm_Dados.zqry_VDCLIENTERGCLI.Value;
PLANILHA.cells[linha,10]:=dm_Dados.zqry_VDCLIENTEENDCLI.Value;
PLANILHA.cells[linha,11]:=dm_Dados.zqry_VDCLIENTENUMCLI.Value;
PLANILHA.cells[linha,12]:=dm_Dados.zqry_VDCLIENTECOMPLCLI.Value;
PLANILHA.cells[linha,13]:=dm_Dados.zqry_VDCLIENTEBAIRCLI.Value;
PLANILHA.cells[linha,14]:=dm_Dados.zqry_VDCLIENTECIDCLI.Value;
PLANILHA.cells[linha,15]:=dm_Dados.zqry_VDCLIENTEUFCLI.Value;
PLANILHA.cells[linha,16]:=dm_Dados.zqry_VDCLIENTECEPCLI.Value;
PLANILHA.cells[linha,17]:=dm_Dados.zqry_VDCLIENTEENDENT.Value;
PLANILHA.cells[linha,18]:=dm_Dados.zqry_VDCLIENTENUMENT.Value;
PLANILHA.cells[linha,19]:=dm_Dados.zqry_VDCLIENTECOMPLENT.Value;
PLANILHA.cells[linha,20]:=dm_Dados.zqry_VDCLIENTEBAIRENT.Value;
PLANILHA.cells[linha,21]:=dm_Dados.zqry_VDCLIENTECIDENT.Value;
PLANILHA.cells[linha,22]:=dm_Dados.zqry_VDCLIENTEUFENT.Value;
PLANILHA.cells[linha,23]:=dm_Dados.zqry_VDCLIENTECEPENT.Value;
PLANILHA.cells[linha,24]:=dm_Dados.zqry_VDCLIENTEFONECLI.Value;
PLANILHA.cells[linha,25]:=dm_Dados.zqry_VDCLIENTECELCLI.Value;
PLANILHA.cells[linha,26]:=dm_Dados.zqry_VDCLIENTECELCLIOPERADORA.Value;
PLANILHA.cells[linha,27]:=dm_Dados.zqry_VDCLIENTEFONEENT.Value;
PLANILHA.cells[linha,28]:=dm_Dados.zqry_VDCLIENTECELENT.Value;
PLANILHA.cells[linha,29]:=dm_Dados.zqry_VDCLIENTECELENTOPERADORA.Value;
PLANILHA.cells[linha,30]:=dm_Dados.zqry_VDCLIENTESITECLI.Value;
PLANILHA.cells[linha,31]:=dm_Dados.zqry_VDCLIENTEEMAILCLI.Value;
LINHA:=linha+1;
dm_Dados.zqry_VDCLIENTE.Next;
ProgressBar1.Position:=ProgressBar1.Position+1;
end;
PLANILHA.columns.autofit;
planilha.Visible:=true;
finally
dm_Dados.zqry_VDCLIENTE.EnableControls;
PLANILHA:=Unassigned;
end;

end;

procedure Tfrm_CON_CLIENTES.Fechar1Click(Sender: TObject);
begin
btn_FECHAClick(Self);
end;

procedure Tfrm_CON_CLIENTES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_dados.zqry_VDCLIENTE.Close;
end;

procedure Tfrm_CON_CLIENTES.FormShow(Sender: TObject);
begin
  dm_dados.zqry_VDCLIENTE.Params.Clear;
  dm_dados.zqry_VDCLIENTE.Close;
  dm_dados.Zqry_VDCLIENTE.sql.Clear;
  dm_Dados.Zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod order by codcli');
  dm_Dados.Zqry_VDCLIENTE.ParamByName('empcod').asinteger:=dm_Dados.codemp;
  dm_dados.zqry_VDCLIENTE.open;
end;

procedure Tfrm_CON_CLIENTES.msk_PESQUISA1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then sp_BUSCAClick(Self);
end;

procedure Tfrm_CON_CLIENTES.Nome1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=2;
end;

procedure Tfrm_CON_CLIENTES.odos1Click(Sender: TObject);
begin
rg_Clientes.ItemIndex:=0;
end;

procedure Tfrm_CON_CLIENTES.rg_CLIENTESClick(Sender: TObject);
begin
case rg_CLIENTES.ItemIndex of
    0:begin
      LBL_PESQUISA.Caption:='ORDENANDO POR CÓDIGO';
      msk_PESQUISA1.Visible:=False;
      msk_PESQUISA2.VISIBLE:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=False;
      MostraTelaAguarde('Consultando Informações');
      dm_dados.zqry_VDCLIENTE.Close;
      dm_dados.Zqry_VDCLIENTE.sql.Clear;
      dm_Dados.Zqry_VDCLIENTE.SQL.Add('select * from vdcliente where codemp=:empcod order by codcli');
      dm_Dados.Zqry_VDCLIENTE.ParamByName('empcod').asinteger:=dm_Dados.codemp;
      dm_dados.zqry_VDCLIENTE.open;
      FechaTelaAguarde;
    end;
    1:begin
      LBL_PESQUISA.Caption:='CONSULTA POR CODIGO';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CODCLI=:CLICOD';
      parametro1:='CLICOD';
      instrucao:='';
    end;
    2:begin
      LBL_PESQUISA.Caption:='CONSULTA POR NOME';
      msk_PESQUISA1.Visible:=true;
      msk_PESQUISA2.Visible:=false;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=300;
      script:='NOMECLI LIKE :CLINOME';
      parametro1:='CLINOME';
      instrucao:='%';
    end;
    3:begin
      LBL_PESQUISA.Caption:='TELEFONE SEM O DDD';
      msk_PESQUISA1.Visible:=true;
      msk_PESQUISA2.Visible:=false;
      LBL_ATE.VISIBLE:=FALSE;
      LBL_ATE.Caption:='';
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='FONECLI=:CLITEL';
      parametro1:='CLITEL';
      parametro2:='';
      instrucao:='';
    end;
    4:begin
      LBL_PESQUISA.Caption:='CONSULTA POR CIDADE';
      msk_PESQUISA1.Visible:=true;
      msk_PESQUISA2.Visible:=false;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CIDCLI LIKE :CLICID';
      parametro1:='CLICID';
      instrucao:='%';
    end;
    5:begin
      LBL_PESQUISA.Caption:='CONSULTA POR CNPJ';
      msk_PESQUISA1.Visible:=true;
      msk_PESQUISA2.Visible:=false;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CNPJCLI=:CLICNPJ';
      parametro1:='CLICNPJ';
      instrucao:='';
    end;
    6:begin
      LBL_PESQUISA.Caption:='CONSULTA POR CPF';
      msk_PESQUISA1.Visible:=TRUE;
      msk_PESQUISA2.Visible:=FALSE;
      LBL_ATE.VISIBLE:=FALSE;
      ENTRE:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA1.Clear;
      msk_PESQUISA1.SetFocus;
      msk_PESQUISA1.EditMask:='';
      msk_PESQUISA1.Width:=100;
      script:='CPFCLI=:CLICPF';
      parametro1:='CLICPF';
      instrucao:='';
    end;
end;
end;

procedure Tfrm_CON_CLIENTES.sp_BUSCAClick(Sender: TObject);
begin
  if msk_PESQUISA1.Text='' then
  begin
    showmessage('Atenção Usuário'#13'Não foram localizados informações para realizar sua busca');
    msk_PESQUISA1.Clear;
    msk_PESQUISA1.SetFocus;
  end
  else
  begin
    btn_BUSCACLIENTEClick(Sender); // ou b.OnClick(b);
  end;
end;


end.
