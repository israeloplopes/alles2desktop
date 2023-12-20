unit dlg_alterasenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_DLG_ALTERASENHA = class(TForm)
    Usuário: TLabel;
    edt_USUARIO: TEdit;
    Label1: TLabel;
    edt_SENHAATUAL: TEdit;
    Label2: TLabel;
    edt_NOVASENHA: TEdit;
    edt_REPETESENHA: TEdit;
    Label3: TLabel;
    btn_GRAVAR: TBitBtn;
    btn_CANCELAR: TBitBtn;
    procedure btn_CANCELARClick(Sender: TObject);
    procedure edt_USUARIOExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ALTERASENHA: Tfrm_DLG_ALTERASENHA;

implementation

{$R *.dfm}

uses dados;

procedure Tfrm_DLG_ALTERASENHA.btn_CANCELARClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_DLG_ALTERASENHA.edt_USUARIOExit(Sender: TObject);
begin
  dm_dados.zqry_sgusuario.params.clear;
  dm_dados.zqry_sgusuario.close;
  dm_dados.zqry_sgusuario.sql.clear;
  dm_Dados.zqry_sgusuario.sql.add('select * from sgusuario where idusu=:usuid and codemp=:empcod and ativousu=:estaapto');
  dm_dados.zqry_sgusuario.parambyname('usuid').asstring:=trim(edt_usuario.Text);
  dm_dados.zqry_sgusuario.parambyname('empcod').asinteger:=99;
  dm_Dados.zqry_sgusuario.parambyname('estaapto').asstring:='S';
  dm_dados.zqry_sgusuario.open;
  if DM_DADOS.ZQRY_SGUSUARIo.isempty then
  begin
    showmessage('Usuario não localizado');
    edt_usuario.Clear;
    edt_usuario.SetFocus;
  end
  else
  begin
    edt_SENHAatual.Clear;
    edt_senhaatual.SetFocus;
  end;
end;

procedure Tfrm_DLG_ALTERASENHA.FormShow(Sender: TObject);
begin
edt_usuario.Clear;
edt_usuario.SetFocus;
if dm_dados.usuariodobd<>'' then edt_usuario.Text:=dm_dados.usuariodobd;
if dm_dados.senhadobd<>'' then edt_senhaatual.Text:=dm_dados.senhadobd;
edt_usuario.SetFocus;
end;

end.
