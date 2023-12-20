unit dlg_cancelacompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrm_DLG_CANCELACOMPRA = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_BUSCANFE: TEdit;
    Label2: TLabel;
    msk_DATA: TMaskEdit;
    BitBtn1: TBitBtn;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    ZQuery3: TZQuery;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_CANCELACOMPRA: Tfrm_DLG_CANCELACOMPRA;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_DLG_CANCELACOMPRA.BitBtn1Click(Sender: TObject);
var
  compracancela:integer;
begin
  if  edt_BUSCANFE.Text='' then
  begin
    showmessage('Não constam valores para a busca');
    edt_buscanfe.Clear;
    edt_BUSCANFE.SetFocus;
  end
  else
  begin
  dm_dados.zqry_CPCOMPRA.Params.Clear;
  dm_dados.zqry_CPCOMPRA.Close;
  dm_Dados.zqry_CPCOMPRA.SQL.Clear;
  dm_dados.zqry_CPCOMPRA.SQL.Add('select * from cpcompra where doccompra=:compradoc and codemp=:empcod and dtentcompra=:data');
  dm_dados.zqry_CPCOMPRA.parambyname('compradoc').AsInteger:=strtoint(edt_buscanfe.text);
  dm_Dados.zqry_CPCOMPRA.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  dm_dados.zqry_CPCOMPRA.ParamByName('data').AsDateTime:=strtodate(msk_DATA.text);
  dm_Dados.zqry_CPCOMPRA.Open;
  if dm_dados.zqry_CPCOMPRA.IsEmpty then
  begin
    showmessage('Dados localizados para essa Data e/produtosou Nota Fiscal');
  end
  else
  begin
    if MessageBox(HANDLE, 'Deseja Exclui o movimento de Entrada para esta Nota?'#13'Confirme com Sim'#13'Para Não EXCLUIR clique em Não', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
    begin
        compracancela:=dm_dados.zqry_CPCOMPRACODCOMPRA.AsInteger;
        dm_dados.Executasginiconsp;
        zquery1.Close;
        zquery1.SQL.Clear;
        zquery1.SQL.Add('delete from eqmovprod where docmovprod=:doc and dtins=:data');
        zquery1.ParamByName('doc').AsInteger:=strtoint(edt_BUSCANFE.Text);
        zquery1.ParamByName('data').AsDateTime:=strtodate(msk_DATA.Text);
        zquery1.ExecSQL;
        //
        dm_dados.Executasginiconsp;
        zquery2.Close;
        zquery2.SQL.Clear;
        zquery2.SQL.Add('delete from cpitcompra where codcompra=:compra');
        zquery2.ParamByName('compra').AsInteger:=compracancela;
        zquery2.ExecSQL;
        //
        dm_dados.Executasginiconsp;
        zquery3.Close;
        zquery3.SQL.Clear;
        zquery3.SQL.Add('delete from cpcompra where codcompra=:compra');
        zquery3.ParamByName('compra').AsInteger:=compracancela;
        zquery3.ExecSQL;
        showmessage('Cancelamento da Importação de Compras via XML executado com sucesso');
    end
    else
    begin
      //
    end;
  end;
end;
EDT_BUSCANFE.Clear;
edt_buscanfe.SetFocus;
end;

end.
