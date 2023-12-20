unit con_custos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrm_CON_CUSTOS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    btn_busc_custoinfo: TBitBtn;
    btn_proc_custoinfo: TBitBtn;
    DBGrid2: TDBGrid;
    btn_busc_custompm: TBitBtn;
    DBGrid3: TDBGrid;
    btn_busc_custopeps: TBitBtn;
    btn_proc_custopeps: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    DBEdit24: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit23: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    BitBtn2: TBitBtn;
    DBText2: TDBText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBText3: TDBText;
    Label4: TLabel;
    DBGrid5: TDBGrid;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBText4: TDBText;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure btn_busc_custoinfoClick(Sender: TObject);
    procedure btn_busc_custopepsClick(Sender: TObject);
    procedure btn_busc_custompmClick(Sender: TObject);
    procedure btn_proc_custopepsClick(Sender: TObject);
    procedure btn_proc_custompmClick(Sender: TObject);
    procedure btn_proc_custoinfoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CON_CUSTOS: Tfrm_CON_CUSTOS;

implementation

{$R *.dfm}

uses dados, principal;

procedure Tfrm_CON_CUSTOS.BitBtn1Click(Sender: TObject);
begin
showmessage('Inserindo Custo Médio Gerado no Custo Médio do Produto selecionado');
if edit1.text='' then edit1.text:=edit3.text;
zquery2.sql.Clear;
zquery2.sql.add('update eqmovprod ');
zquery2.SQL.Add('set custompmmovprod=:custoachado');
zquery2.sql.add('where codprod=:prod and custompmmovprod=:custompm');
zquery2.ParamByName('custoachado').value:=strtofloat(edit1.Text);
zquery2.ParamByName('prod').value:=DBText3.caption;
zquery2.ParamByName('custompm').value:=0.00;
zquery2.ExecSQL;
edit1.Clear;
edit3.Clear;
dbgrid4.Visible:=false;
dbgrid2.Visible:=true;
dbgrid3.Visible:=false;
dbgrid1.Visible:=false;
zquery1.Close;
zquery1.sql.Clear;
zquery1.sql.add('select eq.codprod, eq.custompmmovprod, pd.tipoprod, pd.descprod from eqmovprod eq, eqproduto pd');
zquery1.sql.add('where eq.codprod=pd.codprod and custompmmovprod=:custompm and pd.tipoprod<>:tipo group by 1,2,3,4 having count(eq.codprod)>1');
zquery1.ParamByName('custompm').value:=0.00;
zquery1.ParamByName('tipo').value:='Z';
zquery1.open;
if zquery1.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
end;

procedure Tfrm_CON_CUSTOS.BitBtn2Click(Sender: TObject);
begin
dbgrid4.Visible:=true;
dbgrid2.Visible:=false;
dbgrid3.Visible:=false;
dbgrid1.Visible:=false;
dm_Dados.zqry_eqmovprod.Close;
dm_dados.zqry_eqmovprod.sql.clear;
dm_Dados.zqry_eqmovprod.sql.add('select * from eqmovprod where sldmovprod<0');
//dm_Dados.qry_eqmovprod.ParamByName('custompm').value:=0.00;
dm_dados.zqry_eqmovprod.open;
if dm_dados.zqry_eqmovprod.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
end;

procedure Tfrm_CON_CUSTOS.BitBtn3Click(Sender: TObject);
begin
dm_dados.executasginiconsp;
if dm_dados.zqry_EQMOVPROD.State in [dsedit, dsinsert] then dm_dados.zqry_EQMOVPROD.applyupdates();
end;

procedure Tfrm_CON_CUSTOS.BitBtn4Click(Sender: TObject);
begin
dm_Dados.zqry_geracusto.Close;
dm_dados.zqry_geracusto.sql.Clear;
dm_Dados.zqry_geracusto.sql.add('select avg(precoitcompra) AS CUSTOMPM from cpitcompra');
dm_dados.zqry_geracusto.sql.add('where codprod=:produto');
dm_Dados.zqry_geracusto.ParamByName('produto').value:=strtoint(dbtext3.Caption);
dm_dados.zqry_geracusto.open;
if dm_dados.zqry_GERACUSTOCUSTOMPM.IsNull then
begin
showmessage('Atenção'#13'Não foi localizado Entrada para o item '+dbtext1.Caption);
end
else
begin
edit1.Text:=DBGrid5.Columns[0].Field.AsString;
end;
end;

procedure Tfrm_CON_CUSTOS.btn_busc_custoinfoClick(Sender: TObject);
begin
dbgrid1.Visible:=true;
dbgrid2.Visible:=false;
dbgrid3.Visible:=false;
dm_Dados.zqry_eqproduto.Close;
dm_dados.zqry_eqproduto.sql.clear;
dm_Dados.zqry_eqproduto.sql.add('select * from eqproduto where custoinfoprod=:custoinfo');
dm_Dados.zqry_eqproduto.params.ParamByName('custoinfo').value:=0.00;
dm_dados.zqry_eqproduto.open;
if dm_dados.zqry_eqproduto.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
end;

procedure Tfrm_CON_CUSTOS.btn_busc_custompmClick(Sender: TObject);
begin
dbgrid4.Visible:=false;
dbgrid2.Visible:=true;
dbgrid3.Visible:=false;
dbgrid1.Visible:=false;
//dm_dados.qry_eqmovprod.refresh;
zquery1.Close;
zquery1.sql.Clear;
{dm_Dados.qry_eqmovprod.sql.add('select * from eqmovprod');
dm_dados.qry_eqmovprod.sql.add('where custompmmovprod=:custompm');
dm_Dados.qry_eqmovprod.ParamByName('custompm').value:=0.00;}
//dm_Dados.qry_eqmovprod.sql.add('select eq.*, prod.codprod, prod.descprod, prod.tipoprod from eqmovprod eq, eqproduto prod');
//dm_dados.qry_eqmovprod.sql.add(' where custompmmovprod=:custompm and eq.codprod=prod.codprod and prod.tipoprod=:tipo order by eq.codprod');

zquery1.sql.add('select eq.codprod, eq.custompmmovprod, pd.tipoprod, pd.descprod from eqmovprod eq, eqproduto pd');
zquery1.sql.add('where eq.codprod=pd.codprod and custompmmovprod=:custompm and pd.tipoprod<>:tipo group by 1,2,3,4 having count(eq.codprod)>1');

//select eq.codemp, eq.codfilial,eq.codprod, eq.custompmmovprod, pd.tipoprod, pd.descprod from eqmovprod eq, eqproduto pd');
//ibquery1.sql.add('where eq.codemp=pd.codemp and eq.codprod=pd.codprod and custompmmovprod=:custompm and pd.tipoprod<>:tipo order by codprod');

zquery1.ParamByName('custompm').value:=0.00;
zquery1.ParamByName('tipo').value:='Z';

//dm_Dados.qry_eqmovprod.ParamByName('tipo').value:='P';
zquery1.open;
if zquery1.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
end;

procedure Tfrm_CON_CUSTOS.btn_busc_custopepsClick(Sender: TObject);
begin
dbgrid3.Visible:=true;
dbgrid2.Visible:=false;
dbgrid1.Visible:=false;
dm_Dados.zqry_eqproduto.Close;
dm_dados.zqry_eqproduto.sql.clear;
dm_Dados.zqry_eqproduto.sql.Add('select * from eqproduto where custopepsprod=:custopeps');
dm_Dados.zqry_eqproduto.params.ParamByName('custopeps').value:=0.00;
dm_dados.zqry_eqproduto.open;
if dm_dados.zqry_eqproduto.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
end;

procedure Tfrm_CON_CUSTOS.btn_proc_custoinfoClick(Sender: TObject);
begin
showmessage('Em Desenvolvimento');
end;

procedure Tfrm_CON_CUSTOS.btn_proc_custompmClick(Sender: TObject);
begin
showmessage('Em Desenvolvimento');
end;

procedure Tfrm_CON_CUSTOS.btn_proc_custopepsClick(Sender: TObject);
begin
showmessage('Em Desenvolvimento');
end;

procedure Tfrm_CON_CUSTOS.TabSheet2Enter(Sender: TObject);
begin
DM_DADOS.zqry_EQMOVPROD.Edit;
end;

end.
