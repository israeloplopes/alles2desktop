unit concad_chequealinea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CONCAD_CHEQUEALINEA = class(TForm)
    DBGrid1: TDBGrid;
    btn_FECHAR: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CONCAD_CHEQUEALINEA: Tfrm_CONCAD_CHEQUEALINEA;

implementation

{$R *.dfm}

uses dados, principal;

procedure Tfrm_CONCAD_CHEQUEALINEA.btn_FECHARClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_CONCAD_CHEQUEALINEA.FormActivate(Sender: TObject);
begin
dm_Dados.MEMORIA;
dm_dados.zqry_FNCHEQUE_ALINEA.Close;
dm_dados.zqry_FNCHEQUE_ALINEA.SQL.Clear;
dm_dados.zqry_FNCHEQUE_ALINEA.SQL.Add('select * from fncheque_alinea');
dm_Dados.zqry_FNCHEQUE_ALINEA.Open;
end;

procedure Tfrm_CONCAD_CHEQUEALINEA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_dados.zqry_FNCHEQUE_ALINEA.Cancel;
dm_Dados.MEMORIA;
end;

end.
