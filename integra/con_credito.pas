unit con_credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Data.DB;

type
  Tfrm_CON_NOTACREDITO = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Edit1: TEdit;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CON_NOTACREDITO: Tfrm_CON_NOTACREDITO;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_CON_NOTACREDITO.BitBtn1Click(Sender: TObject);
begin
dm_Dados.zqry_vdcliente.Close;
dm_dados.zqry_vdcliente.sql.clear;
dm_Dados.zqry_vdcliente.sql.Add('select * from vdcliente');
dm_dados.zqry_vdcliente.open;
end;

procedure Tfrm_CON_NOTACREDITO.BitBtn5Click(Sender: TObject);
begin
if edit1.text='' then
  begin
      showmessage('Não foi informado valores para a busca');
      edit1.Clear;
      edit1.SetFocus;
  end
else
  begin

dm_Dados.zqry_vdcliente.Close;
dm_dados.zqry_vdcliente.sql.Clear;
dm_Dados.zqry_vdcliente.sql.Add('select * from vdclientewhere nomecli like :nomepesq');
dm_Dados.zqry_vdcliente.params.ParamByName('nomepesq').value:='%'+edit1.Text+'%';
dm_dados.zqry_vdcliente.open;
end;
end;


end.
