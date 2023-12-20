unit dlg_etiqproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_DLG_ETIQPRODUTO = class(TForm)
    Label1: TLabel;
    edt_BUSCAPEDIDO: TEdit;
    btn_BUSCAR: TBitBtn;
    DBGrid1: TDBGrid;
    btn_IMPRIMIR: TBitBtn;
    btn_SAIR: TBitBtn;
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_SAIRClick(Sender: TObject);
    procedure btn_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ETIQPRODUTO: Tfrm_DLG_ETIQPRODUTO;

implementation

{$R *.dfm}

uses dados, rel_etiqproduto,ufuncoes, principal;

procedure Tfrm_DLG_ETIQPRODUTO.btn_BUSCARClick(Sender: TObject);
begin
if edt_buscapedido.Text='' then
begin
  showmessage('Atenção!!!'#13'Não foram encontrado valores para busca');
  edt_buscapedido.clear;
  edt_buscapedido.SetFocus;
end
else
begin
  mostratelaaguarde('Consultando Produtos');
  dm_dados.zqry_eqproduto.close;
  dm_Dados.zqry_eqproduto.sql.clear;
  dm_dados.zqry_eqproduto.sql.add('select * from eqproduto where codprod=:vendacod and codemp=99');
  dm_dados.zqry_eqproduto.parambyname('vendacod').asinteger:=strtoint(edt_BUSCAPEDIDO.Text);
  dm_Dados.zqry_eqproduto.open;
  fechatelaaguarde;
end;
if dm_dados.zqry_eqproduto.IsEmpty then
begin
  showmessage('Produto não localizado. Refaça sua busca');
  edt_buscapedido.Clear;
  edt_buscapedido.setfocus;
end;
end;

procedure Tfrm_DLG_ETIQPRODUTO.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_etiqproduto.rlreport1.preview();
end;

procedure Tfrm_DLG_ETIQPRODUTO.btn_SAIRClick(Sender: TObject);
begin
CLOSE;
end;

end.
