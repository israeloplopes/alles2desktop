unit sync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_SYNC = class(TForm)
    edt_CLI_CLOUD: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_SYNC: Tfrm_SYNC;

implementation

{$R *.dfm}

uses uFuncoes, dados;

procedure Tfrm_SYNC.FormShow(Sender: TObject);
begin
mostratelaaguarde('Contando Registros da Nuvem para Clientes');
dm_dados.mysqlconectar.Connected:=false;
dm_Dados.MySQLConectar.Connected:=true;
dm_dados.cloud_vdcliente.close;
dm_dados.cloud_vdcliente.sql.clear;
dm_dados.cloud_vdcliente.sql.add('select * from vdcliente where codemp=:empcod');
dm_dados.cloud_vdcliente.parambyname('empcod').asinteger:=dm_dados.codemp;
dm_Dados.cloud_vdcliente.open;
if dm_dados.cloud_vdcliente.isempty then edt_CLI_CLOUD.Text:='0' else edt_CLI_CLOUD.Text:=inttostr(dm_dados.cloud_vdcliente.recordcount);
fechatelaaguarde;
end;

end.
