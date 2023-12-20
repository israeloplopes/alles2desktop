unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_LOGIN = class(TForm)
    edt_USUARIO: TEdit;
    Label1: TLabel;
    edt_SENHA: TEdit;
    Label2: TLabel;
    btn_ACESSO: TBitBtn;
    BitBtn1: TBitBtn;
    edt_REPETESENHA: TEdit;
    Label3: TLabel;
    zqry_GRAVASENHA: TZQuery;
    zdts_GRAVASENHA: TDataSource;
    lbl_ALTERASENHA: TLabel;
    Image1: TImage;
    Label4: TLabel;
    procedure edt_USUARIOExit(Sender: TObject);
    procedure btn_ACESSOClick(Sender: TObject);
    procedure edt_REPETESENHAExit(Sender: TObject);
    procedure edt_USUARIOKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gravasenha;
    procedure edt_SENHAExit(Sender: TObject);
    procedure lbl_ALTERASENHAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    meuusuario,senhaatual,senhanova,repetesenha:string;
  end;

var
  frm_LOGIN: Tfrm_LOGIN;

implementation

{$R *.dfm}

uses dados, principal, dlg_alterasenha;

procedure Tfrm_LOGIN.GravaSenha;
begin
    dm_dados.EXECUTASGINICONSP;
    zqry_GRAVASENHA.Params.Clear;
    zqry_GRAVASENHA.Close;
    Zqry_GRAVASENHA.SQL.Clear;
    zqry_GRAVASENHA.SQL.Add('update sgusuario set senhausu=:minhasenha where idusu=:usuid and codemp=:empcod');
    zqry_GRAVASENHA.ParamByName('minhasenha').Asstring:=senhanova;
    zqry_GRAVASENHA.ParamByName('usuid').Asstring:=meuusuario;
    zqry_GRAVASENHA.ParamByName('empcod').Asinteger:=99;
    zqry_GRAVASENHA.ExecSQL;
    showmessage('Senha gravada com sucesso');
    edt_REPETESENHA.Visible:=false;
    label3.Visible:=false;
    close;
end;

procedure Tfrm_LOGIN.lbl_ALTERASENHAClick(Sender: TObject);
begin
showmessage('Alteração de senha do Usuário');
frm_dlg_alterasenha.show;
end;

procedure Tfrm_LOGIN.BitBtn1Click(Sender: TObject);
begin
frm_principal.close;
close;

end;

procedure Tfrm_LOGIN.btn_ACESSOClick(Sender: TObject);
begin
dm_dados.usuariousando:=meuusuario;
close;
end;

procedure Tfrm_LOGIN.edt_REPETESENHAExit(Sender: TObject);
begin
if edt_REPETESENHA.Text<>edt_SENHA.text then
begin
  showmessage('Senhas não coincidem');
  edt_senha.Clear;
  edt_repetesenha.Clear;
  edt_senha.setfocus;
end
else
begin
  senhanova:=edt_REPETESENHA.Text;
  gravasenha;
end;
end;

procedure Tfrm_LOGIN.edt_SENHAExit(Sender: TObject);
var
  senhadigitada:string;
begin
if edt_Senha.Text<>'' then
begin
    if senhaatual='' then
    begin
      showmessage('Necessário regravar sua senha');
      edt_REPETESENHA.Visible:=true;
      LABEL3.Visible:=true;
      edt_repetesenha.SetFocus;
    end
    else
    begin
      edt_repetesenha.Visible:=false;
      label3.Visible:=false;
      senhadigitada:=trim(edt_senha.Text);
      if senhadigitada=senhaatual then
      begin
        btn_acesso.Enabled:=true;
      end
      else
      begin
        showmessage('Senha incorreta para este Usuário');
        edt_senha.Clear;
        edt_Senha.SetFocus;
      end;
  end
end
else
begin
  showmessage('Necessário informar senha para prosseguir');
  edt_senha.Clear;
  edt_senha.SetFocus;
end;
end;

procedure Tfrm_LOGIN.edt_USUARIOExit(Sender: TObject);
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
    meuusuario:=dm_Dados.zqry_SGUSUARIOIDUSU.AsString;
    senhaatual:=dm_dados.zqry_SGUSUARIOSENHAUSU.asstring;
    edt_senha.SetFocus;
  end;


end;


procedure Tfrm_LOGIN.edt_USUARIOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) and (edt_usuario.Text<>'') then
begin
  edt_senha.SetFocus;
end;
end;

procedure Tfrm_LOGIN.FormShow(Sender: TObject);
begin
frm_login.Left:=screen.Width-280;
frm_login.Top:=screen.Height-587;
edt_usuario.Clear;
edt_usuario.SetFocus;
if dm_dados.usuariodobd<>'' then edt_usuario.Text:=dm_dados.usuariodobd;
if dm_dados.senhadobd<>'' then edt_senha.Text:=dm_dados.senhadobd;
edt_usuario.SetFocus;
end;

end.
