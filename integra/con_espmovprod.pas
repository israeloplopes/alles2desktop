unit con_espmovprod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DB;

type
  Tfrm_CON_ESPMOVPROD = class(TForm)
    Label1: TLabel;
    edt_buscacodigo: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CON_ESPMOVPROD: Tfrm_CON_ESPMOVPROD;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_CON_ESPMOVPROD.BitBtn1Click(Sender: TObject);
begin
if edt_buscacodigo.text='' then
  begin
      showmessage('Não foi informado valores para a busca');
      edt_buscacodigo.Clear;
      edt_buscacodigo.SetFocus;
  end
else
  begin

//dm_dados.qry_espmovprod.refresh;
dm_Dados.zqry_espmovprod.Close;
dm_dados.zqry_espmovprod.sql.Clear;
dm_Dados.zqry_espmovprod.sql.add('select * from espmovprod');
dm_dados.zqry_espmovprod.sql.add('where codproduto=:codigop order by dtmovprod,codmovimento');
dm_Dados.zqry_espmovprod.ParamByName('codigop').asInteger:=strtoint(edt_buscacodigo.text);
dm_dados.zqry_espmovprod.open;
if dm_dados.zqry_espmovprod.IsEmpty then
begin
showmessage('Atenção'#13'Não existe itens que coincidem com a busca');
end;
  end;

end;

end.
