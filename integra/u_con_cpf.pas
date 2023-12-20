unit u_con_cpf;

interface

uses
  PNGImage,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ACBrBase, ACBrSocket, ACBrConsultaCPF,
  Vcl.Buttons;

type
  Tfrm_CON_CPF = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    EditRazaoSocial: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditCNPJ: TEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    RzLabel1: TLabel;
    EdtCodCtrlControle: TEdit;
    RzLabel2: TLabel;
    EdtEmissao: TEdit;
    RzLabel3: TLabel;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    btnConsultar: TButton;
    Label2: TLabel;
    EditDtNasc: TEdit;
    EdtIncricao: TEdit;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private

  public
  end;

var
  frm_CON_CPF: Tfrm_CON_CPF;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CON_CPF.BitBtn1Click(Sender: TObject);
begin
//dm_dados.zqry_vdcliente.append;
//frm_cad_clientes.show;
//frm_cad_clientes.edt_razcli.Text:=EditRazaoSocial.Text;
//frm_cad_clientes.dbedit2.Text:=EditRazaoSocial.Text;
//frm_cad_clientes.msk_cpfcli.Text:=EditCNPJ.Text;
end;

procedure Tfrm_CON_CPF.BitBtn3Click(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
  EditCNPJ.Clear;
  EditDtNasc.Clear;
  editcnpj.SetFocus;
end;

procedure Tfrm_CON_CPF.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      EdtIncricao.Text          := ACBrConsultaCPF1.DataInscricao;
    end;
  end
  else
  begin
    ShowMessage('� necess�rio digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure Tfrm_CON_CPF.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCNPJ.SetFocus;
end;

procedure Tfrm_CON_CPF.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure Tfrm_CON_CPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCnpj.SetFocus;
end;

end.