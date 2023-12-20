unit dlg_etiquetas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.DB;

type
  Tfrm_DLG_ETIQUETAS = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edt_BUSCAPEDIDO: TEdit;
    btn_BUSCAR: TBitBtn;
    btn_IMPRIMIR: TBitBtn;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    btn_TODOS: TBitBtn;
    DBGrid4: TDBGrid;
    btn_SAIR: TBitBtn;
    procedure btn_BUSCARClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn_IMPRIMIRClick(Sender: TObject);
    procedure btn_TODOSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ETIQUETAS: Tfrm_DLG_ETIQUETAS;

implementation

{$R *.dfm}

uses dados, rel_etiquetas, ufuncoes, principal;

procedure Tfrm_DLG_ETIQUETAS.btn_BUSCARClick(Sender: TObject);
begin
if edt_buscapedido.Text='' then
begin
  showmessage('Atenção!!!'#13'Não foram encontrado valores para busca');
  edt_buscapedido.clear;
  edt_buscapedido.SetFocus;
end
else
begin
  mostratelaaguarde('Consultando Vendas');
  dm_dados.zqry_vdvenda.close;
  dm_Dados.zqry_vdvenda.sql.clear;
  dm_dados.zqry_vdvenda.sql.add('select * from vdvenda where codvenda=:vendacod and codemp=99');
  dm_dados.zqry_vdvenda.parambyname('vendacod').asinteger:=strtoint(edt_BUSCAPEDIDO.Text);
  dm_Dados.zqry_vdvenda.open;
  fechatelaaguarde;
end;
if dm_dados.zqry_vdvenda.IsEmpty then
begin
  showmessage('Pedido não localizado. Refaça sua busca');
  edt_buscapedido.Clear;
  edt_buscapedido.setfocus;
end;
end;

procedure Tfrm_DLG_ETIQUETAS.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_etiqueta.rlreport1.preview();
end;

procedure Tfrm_DLG_ETIQUETAS.btn_TODOSClick(Sender: TObject);
begin
dm_Dados.Zqry_VDVENDA.Close;
dm_dados.Zqry_vdvenda.sql.Clear;;
dm_dados.zqry_VDVENDA.sql.Add('select * from vdvenda where codemp=99');
dm_Dados.zqry_vdvenda.open;

end;

procedure Tfrm_DLG_ETIQUETAS.DBGrid1CellClick(Column: TColumn);
begin
  mostratelaaguarde('Consultando Itens da Venda');
  dm_dados.zqry_VDITVENDA.Close;
  dm_dados.zqry_VDITVENDA.sql.clear;
  dm_dados.zqry_VDITVENDA.sql.add('select * from vditvenda where codvenda=:itvendacod and codemp=99');
  dm_Dados.zqry_VDITVENDA.ParamByName('itvendacod').AsInteger:=dm_dados.zqry_VDVENDACODVENDA.AsInteger;
  dm_dados.zqry_VDITVENDA.Open;
  fechatelaaguarde;
  mostratelaaguarde ('Consultando Volumes e Peso');
  dm_dados.zqry_VDFRETEVD.close;
  dm_Dados.zqry_VDFRETEVD.sql.clear;
  dm_Dados.zqry_VDFRETEVD.sql.add('select * from vdfretevd where codvenda=:fretevendacod and codemp=99');
  dm_dados.zqry_VDFRETEVD.ParamByName('fretevendacod').AsInteger:=dm_dados.zqry_VDVENDACODVENDA.AsInteger;
  dm_dados.zqry_VDFRETEVD.Open;
  fechatelaaguarde;
  if dm_dados.zqry_VDFRETEVD.IsEmpty then
  begin
      showmessage('Pedido localizado. Mas não foi localizado fechamento de VendaxEntrega para a Venda');
  end
  else
  begin
      mostratelaaguarde ('Consultando Transpostadora');
      dm_Dados.zqry_VDTRANSP.Close;
      dm_dados.zqry_VDTRANSP.sql.clear;
      dm_dados.zqry_VDTRANSP.sql.add('select * from vdtransp where codtran=:trancod and codemp=99');
      dm_dados.zqry_VDTRANSP.ParamByName('trancod').AsInteger:=dm_dados.zqry_VDFRETEVDCODTRAN.AsInteger;
      dm_dados.zqry_VDTRANSP.Open;
      fechatelaaguarde;
  end;

end;


procedure Tfrm_DLG_ETIQUETAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_Dados.zqry_VDVENDA.Close;
dm_dados.zqry_VDITVENDA.Close;
dm_dados.zqry_VDTRANSP.Close;
dm_dados.zqry_VDFRETEVD.Close;
dm_dados.zqry_VDCLIENTE.Close;
dm_dados.zqry_EQPRODUTO.Close;
action:=cafree;
release;
frm_dlg_etiquetas:=nil;
end;

procedure Tfrm_DLG_ETIQUETAS.FormShow(Sender: TObject);
begin
dm_dados.zqry_VDCLIENTE.Close;
dm_Dados.zqry_vdcliente.sql.clear;
dm_Dados.zqry_vdcliente.SQL.Add('select * from vdcliente where codemp=:empcod');
dm_Dados.zqry_VDCLIENTE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_VDCLIENTE.Open;
//
dm_dados.zqry_eqproduto.Close;
dm_Dados.zqry_eqproduto.sql.clear;
dm_Dados.zqry_eqproduto.SQL.Add('select * from eqproduto where codemp=:empcod');
dm_Dados.zqry_eqproduto.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_eqproduto.Open;
end;

end.
