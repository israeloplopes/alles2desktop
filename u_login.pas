unit u_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Imaging.pngimage;

type
  Tfrm_LOGIN = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btn_CANCELAR: TBitBtn;
    btn_ACESSAR: TBitBtn;
    Panel3: TPanel;
    Image1: TImage;
    Label1: TLabel;
    edt_USUARIO: TEdit;
    Label2: TLabel;
    edt_SENHA: TEdit;
    zqry_SGUSUARIO: TZQuery;
    zdts_SGUSUARIO: TDataSource;
    zqry_SGUSUARIOCODEMP: TIntegerField;
    zqry_SGUSUARIOCODFILIAL: TSmallintField;
    zqry_SGUSUARIOIDUSU: TWideStringField;
    zqry_SGUSUARIONOMEUSU: TWideStringField;
    zqry_SGUSUARIOCODEMPIG: TIntegerField;
    zqry_SGUSUARIOCODFILIALIG: TSmallintField;
    zqry_SGUSUARIOIDGRPUSU: TWideStringField;
    zqry_SGUSUARIOCODEMPCC: TIntegerField;
    zqry_SGUSUARIOCODFILIALCC: TSmallintField;
    zqry_SGUSUARIOANOCC: TSmallintField;
    zqry_SGUSUARIOCODCC: TWideStringField;
    zqry_SGUSUARIOPNOMEUSU: TWideStringField;
    zqry_SGUSUARIOUNOMEUSU: TWideStringField;
    zqry_SGUSUARIOCOMENTUSU: TWideStringField;
    zqry_SGUSUARIOBAIXOCUSTOUSU: TWideStringField;
    zqry_SGUSUARIOCODALMOX: TIntegerField;
    zqry_SGUSUARIOCODEMPAM: TIntegerField;
    zqry_SGUSUARIOCODFILIALAM: TSmallintField;
    zqry_SGUSUARIOABREGAVETAUSU: TWideStringField;
    zqry_SGUSUARIOAPROVCPSOLICITACAOUSU: TWideStringField;
    zqry_SGUSUARIOALMOXARIFEUSU: TWideStringField;
    zqry_SGUSUARIOCODEMPAE: TIntegerField;
    zqry_SGUSUARIOCODFILIALAE: TSmallintField;
    zqry_SGUSUARIOTIPOAGE: TWideStringField;
    zqry_SGUSUARIOCODAGE: TIntegerField;
    zqry_SGUSUARIOAPROVRMAUSU: TWideStringField;
    zqry_SGUSUARIOCOMPRASUSU: TWideStringField;
    zqry_SGUSUARIOALTPARCVENDA: TWideStringField;
    zqry_SGUSUARIOAPROVRECEITA: TWideStringField;
    zqry_SGUSUARIOATIVCLI: TWideStringField;
    zqry_SGUSUARIOLIBERACREDUSU: TWideStringField;
    zqry_SGUSUARIOCORAGENDA: TIntegerField;
    zqry_SGUSUARIOCODEMPCE: TIntegerField;
    zqry_SGUSUARIOCODFILIALCE: TSmallintField;
    zqry_SGUSUARIOCODCONFEMAIL: TIntegerField;
    zqry_SGUSUARIOCANCELAOP: TWideStringField;
    zqry_SGUSUARIOVENDAPATRIMUSU: TWideStringField;
    zqry_SGUSUARIORMAOUTCC: TWideStringField;
    zqry_SGUSUARIOATIVOUSU: TWideStringField;
    zqry_SGUSUARIOVISUALIZALUCR: TWideStringField;
    zqry_SGUSUARIOLIBERACAMPOPESAGEM: TWideStringField;
    zqry_SGUSUARIOAPROVORDCP: TWideStringField;
    zqry_SGUSUARIOACESOPBTCADLOTE: TWideStringField;
    zqry_SGUSUARIOACESOPBTRMA: TWideStringField;
    zqry_SGUSUARIOACESOPBTQUALID: TWideStringField;
    zqry_SGUSUARIOACESOPBTDISTR: TWideStringField;
    zqry_SGUSUARIOACESOPBTFASE: TWideStringField;
    zqry_SGUSUARIOACESOPBTCANC: TWideStringField;
    zqry_SGUSUARIOACESOPBTSUBPROD: TWideStringField;
    zqry_SGUSUARIOACESOPBTREMESSA: TWideStringField;
    zqry_SGUSUARIOACESOPBTRETORNO: TWideStringField;
    zqry_SGUSUARIOACESOPVERITENS: TWideStringField;
    zqry_SGUSUARIOCADOUTUSU: TWideStringField;
    zqry_SGUSUARIODTINS: TDateField;
    zqry_SGUSUARIOHINS: TTimeField;
    zqry_SGUSUARIOIDUSUINS: TWideStringField;
    zqry_SGUSUARIODTALT: TDateField;
    zqry_SGUSUARIOHALT: TTimeField;
    zqry_SGUSUARIOIDUSUALT: TWideStringField;
    zqry_SGUSUARIOTIPOUSU: TWideStringField;
    zqry_SGUSUARIOSENHAUSU: TWideStringField;
    zqry_SGUSUARIONIVEL: TIntegerField;
    zqry_SGUSUARIOFOTO: TWideStringField;
    Image2: TImage;
    zqry_UPT: TZQuery;
    zdts_UPT: TDataSource;
    Image3: TImage;
    lbl_VERSAO: TLabel;
    ComboBox1: TComboBox;
    lbl_LICENCA: TLabel;
    procedure btn_ACESSARClick(Sender: TObject);
    procedure btn_CANCELARClick(Sender: TObject);
    procedure edt_USUARIOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    meuusuario, minhasenha, senhadigitada:string;
  public
    { Public declarations }
  end;

var
  frm_LOGIN: Tfrm_LOGIN;

implementation

{$R *.dfm}

uses u_principal, u_dados,u_funcoes;

procedure Tfrm_LOGIN.btn_CANCELARClick(Sender: TObject);
begin
frm_principal.close;
close;
end;

procedure Tfrm_LOGIN.btn_ACESSARClick(Sender: TObject);
begin
 if edt_USUARIO.Text<>'' then
  begin
    zqry_sgusuario.params.clear;
    zqry_sgusuario.close;
    zqry_sgusuario.sql.clear;
    zqry_sgusuario.sql.add('select * from sgusuario where idusu=:usuid and codemp=:empcod and ativousu=:estaapto');
    zqry_sgusuario.parambyname('usuid').asstring:=trim(edt_usuario.Text);
    zqry_sgusuario.parambyname('empcod').asinteger:=dm_dados.codemp;
    zqry_sgusuario.parambyname('estaapto').asstring:='S';
    zqry_sgusuario.open;
    if ZQRY_SGUSUARIo.isempty then
    begin
      showmessage('USUÁRIO NÃO LOCALIZADO');
      edt_usuario.Clear;
      edt_usuario.SetFocus;
    end
    else
    begin
      meuusuario:=zqry_SGUSUARIOIDUSU.AsString;
      minhasenha:=zqry_SGUSUARIOSENHAUSU.asstring;
      if minhasenha='' then
      begin
        zqry_upt.Params.Clear;
        zqry_upt.Close;
        zqry_upt.SQL.Clear;
        zqry_upt.SQL.Add('update sgusuario set senhausu=:p1 where idusu=:p2');
        zqry_upt.ParamByName('p1').AsString:='masterkey';
        zqry_upt.ParamByName('p2').AsString:='sysdba';
        zqry_upt.ExecSQL;
        showmessage('ALLES SERÁ FECHADO PARA GRAVAR PARAMÊTROS'#13'FAVOR ABRIR O ALLES NOVAMENTE');
        frm_LOGIN.close;
        frm_principal.Close;
      end
      else
      begin
        if edt_SENHA.Text<>'' then
        begin
          senhadigitada:=trim(edt_senha.Text);
          if senhadigitada=minhasenha then
          begin
            close;
          end
          else
          begin
            showmessage('SENHAS NÃO CONFERE');
            edt_USUARIO.Clear;
            EDT_SENHA.Clear;
            EDT_USUARIO.SetFocus;
          end;
        end
        else
        begin
          edt_senha.SetFocus;
        end;
      end;
    end
  end
  else
  begin
    edt_usuario.SetFocus;
  end;
end;

procedure Tfrm_LOGIN.edt_SENHAKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) and (edt_senha.Text<>'') then
begin
  BTN_ACESSAR.SetFocus;
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
var
 buscalicenca:string;
begin
  lbl_VERSAO.caption:=versaoexe;
  buscalicenca:=emptystr;
  dm_dados.zqry_SGLICENCA.Params.Clear;
  dm_Dados.zqry_SGLICENCA.Close;
  dm_Dados.zqry_SGLICENCA.SQL.Clear;
  dm_Dados.zqry_SGLICENCA.SQL.Add('select * from sglicenca');
  dm_Dados.zqry_SGLICENCA.Open;
  if dm_dados.nativo='S' then buscalicenca:=trim(dm_dados.zqry_SGLICENCALICENCAALLES.AsString);
  if dm_dados.nativo='N' then buscalicenca:=trim(DM_DADOS.zqry_SGLICENCALICENCAA.AsString);
  if buscalicenca='' then buscalicenca:='Não Localizado';
  lbl_licenca.Caption:='Licença: '+buscalicenca;
  lbl_licenca.Update;
  if dm_dados.usuariost<>'' then
  begin
    edt_usuario.Text:=dm_dados.usuariost;
    edt_SENHA.Text:=dm_dados.senhast;
  end
  else
  begin
    edt_usuario.Clear;
    edt_usuario.SetFocus;
  end;
end;

end.
