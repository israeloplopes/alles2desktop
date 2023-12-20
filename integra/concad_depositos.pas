unit concad_depositos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_CONCAD_DEPOSITOS = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    btn_EDITAR: TBitBtn;
    btn_INSERIR: TBitBtn;
    btn_GRAVAR: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQuery1: TZQuery;
    DBEdit2: TDBEdit;
    LBL_CODIGO: TLabel;
    procedure btn_INSERIRClick(Sender: TObject);
    procedure btn_GRAVARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_EDITARClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CONCAD_DEPOSITOS: Tfrm_CONCAD_DEPOSITOS;

implementation

{$R *.dfm}

uses dados, uFuncoes;

procedure Tfrm_CONCAD_DEPOSITOS.btn_EDITARClick(Sender: TObject);
begin
if LBL_CODIGO.Caption<>'' then
begin
  dm_dados.zqry_EQDEPOS.Close;
  dm_Dados.zqry_EQDEPOS.Open;
  dm_dados.zqry_eqdepos.Edit;
  dm_dados.zqry_VDVENDEDOR.Params.Clear;
  dm_dados.zqry_VDVENDEDOR.Close;
  dm_Dados.zqry_VDVENDEDOR.SQL.Clear;
  dm_dados.zqry_VDVENDEDOR.SQL.Add('select * from vdvendedor where codemp=:empcod order by nomevend');
  dm_Dados.zqry_VDVENDEDOR.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_Dados.zqry_vdvendedor.Open;
  DBEdit2.SetFocus;
end
else
begin
  MOSTRATELANOTIFICA('SELECIONE UM DEP�SITO','Clique na grade');
end;
end;

procedure Tfrm_CONCAD_DEPOSITOS.btn_GRAVARClick(Sender: TObject);
begin
dm_dados.zqry_EQDEPOS.Post;
dm_Dados.zqry_eqdepos.ApplyUpdates;
LBL_CODIGO.Caption:='';
end;

procedure Tfrm_CONCAD_DEPOSITOS.btn_INSERIRClick(Sender: TObject);
begin
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(coddepos) as Sequencia FROM eqdepos');
zquery1.Open;
//
dm_dados.zqry_eqdepos.Close;
dm_dados.zqry_eqdepos.Open;
dm_dados.zqry_eqdepos.Insert;
dm_dados.zqry_eqdeposcoddepos.AsInteger:=(1+zquery1.FieldByname('sequencia').asInteger);
dbedit1.text:=inttostr(1+zquery1.FieldByname('sequencia').asInteger);
dm_Dados.zqry_EQDEPOSCODEMP.asinteger:=99;
dm_dados.zqry_EQDEPOSCODFILIAL.AsInteger:=1;
dm_dados.zqry_EQDEPOSDTINS.AsDateTime:=date;
dm_dados.zqry_EQDEPOSHINS.AsDateTime:=time;
dm_dados.zqry_EQDEPOSIDUSUINS.AsString:='sysdba';
dbedit2.setfocus;
//
dm_dados.zqry_VDVENDEDOR.Params.Clear;
dm_dados.zqry_VDVENDEDOR.Close;
dm_Dados.zqry_VDVENDEDOR.SQL.Clear;
dm_dados.zqry_VDVENDEDOR.SQL.Add('select * from vdvendedor where codemp=:empcod order by nomevend');
dm_Dados.zqry_VDVENDEDOR.ParamByName('empcod').AsInteger:=dm_dados.codemp;
dm_Dados.zqry_vdvendedor.Open;

end;

procedure Tfrm_CONCAD_DEPOSITOS.DBGrid1CellClick(Column: TColumn);
begin
LBL_CODIGO.Caption:=dm_dados.zqry_EQDEPOSCODDEPOS.AsString;
end;

procedure Tfrm_CONCAD_DEPOSITOS.FormShow(Sender: TObject);
begin
dm_dados.zqry_EQDEPOS.Params.Clear;
dm_Dados.zqry_EQDEPOS.Close;
dm_Dados.zqry_EQDEPOS.SQL.Clear;
dm_Dados.zqry_EQDEPOS.SQL.Add('select * from eqdepos');
dm_Dados.zqry_EQDEPOS.Open;
end;

end.