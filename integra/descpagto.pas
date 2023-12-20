unit descpagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_DESCPAGTO = class(TForm)
    lbl_MENS1: TLabel;
    edt_DESCPAGTO: TEdit;
    msk_CHEQUE: TMaskEdit;
    btn_FECHADESCPAGTO: TBitBtn;
    edt_CODTIPOCOB: TEdit;
    PopupMenu1: TPopupMenu;
    F1: TMenuItem;
    lbl_BANDEIRA: TLabel;
    cb_BANDEIRA: TComboBox;
    img_DINHEIRO: TImage;
    img_DEBITO: TImage;
    img_CREDITO: TImage;
    img_CHEQUE: TImage;
    btn_CANCELAR: TBitBtn;
    Label1: TLabel;
    edt_VALORPAGO: TEdit;
    procedure btn_FECHADESCPAGTOClick(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edt_DESCPAGTOKeyPress(Sender: TObject; var Key: Char);
    procedure cb_BANDEIRAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_CANCELARClick(Sender: TObject);
    procedure edt_VALORPAGOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    valorcartao:double;
  end;

var
  frm_DESCPAGTO: Tfrm_DESCPAGTO;

implementation

{$R *.dfm}

uses fechacupom, dados, principal, checkout;

procedure Tfrm_DESCPAGTO.btn_CANCELARClick(Sender: TObject);
begin
CLOSE;
FRM_FECHACUPOM.edt_VLRDESC.SetFocus;
end;

procedure Tfrm_DESCPAGTO.btn_FECHADESCPAGTOClick(Sender: TObject);
begin
// Cheque
if edt_CODTIPOCOB.Text='3' then
begin
  if msk_CHEQUE.Text='________.__________.____________' then
  begin
    showmessage('Favor informar a Linha Digitável do Cheque');
    msk_cheque.Clear;
    msk_CHEQUE.SetFocus;
  end
  else
  begin
    frm_fechacupom.btn_fecha.enabled:=true;
    frm_FECHACUPOM.edt_valorpago.Text:=frm_FECHACUPOM.edt_valorvenda.Text;
    dm_dados.zqry_FASTSALE.Close;
    dm_dados.zqry_FASTSALE.Open;
    dm_Dados.zqry_fastsale.edit;
    dm_Dados.zqry_fastsalecodtipocob.asinteger:=strtoint(edt_codtipocob.Text);
    dm_dados.zqry_fastsaleDESCPAG.Value:=msk_CHEQUE.Text;
    dm_Dados.zqry_fastsalebandeira.asstring:='';//cb_BANDEIRA.Text;
    dm_dados.zqry_fastsale.post;
   // dm_dados.zqry_fastsale.applyupdates();
    frm_fechacupom.edt_valorpago.Text:=frm_FECHACUPOM.edt_valorvenda.Text;
    frm_fechacupom.valorvenda:=strToFloat(frm_fechacupom.edt_valorpago.text);
    frm_DESCPAGTO.Close;
    frm_FECHACUPOM.btn_fechaclick(Sender);
  end;
end;
// Cartão Crédito
if edt_CODTIPOCOB.Text='4' then
begin
  if edt_DESCPAGTO.Text='' then
  begin
    showmessage('Favor informar o código de Autorização da Operadora');
    msk_cheque.Clear;
    msk_CHEQUE.SetFocus;
  end
  else
  begin
    frm_fechacupom.btn_fecha.enabled:=true;
    frm_FECHACUPOM.edt_valorpago.Text:=frm_FECHACUPOM.edt_valorvenda.Text;
    dm_dados.zqry_FASTSALE.Close;
    dm_Dados.zqry_FASTSALE.Open;
    dm_Dados.zqry_fastsale.edit;
    dm_Dados.zqry_fastsalecodtipocob.asinteger:=strtoint(edt_codtipocob.Text);
    dm_dados.zqry_fastsaleDESCPAG.Value:=edt_DESCPAGTO.text;
    dm_Dados.zqry_fastsalebandeira.asstring:=cb_BANDEIRA.Text;
    frm_checkout.numautorizacao:=edt_DESCPAGTO.Text;
    frm_checkout.bandeira:=cb_BANDEIRA.Text;
    dm_Dados.zqry_fastsale.post;
  //  dm_dados.zqry_fastsale.applyupdates();
//    frm_fechacupom.valorvenda:=StrToFloat(frm_fechacupom.edt_valorpago.text);
        frm_fechacupom.edt_valorpago.Text:=floattostr(valorcartao);
    frm_DESCPAGTO.Close;
    frm_fechacupom.edt_valorpago.SetFocus;
  end;
end;
// Cartão Débito
if edt_CODTIPOCOB.Text='5' then
begin
  if edt_DESCPAGTO.Text='' then
  begin
    showmessage('Favor informar o código de Autorização da Operadora');
    msk_cheque.Clear;
    msk_CHEQUE.SetFocus;
  end
  else
  begin
    frm_fechacupom.btn_fecha.enabled:=true;
    frm_FECHACUPOM.edt_valorpago.Text:=frm_FECHACUPOM.edt_valorvenda.Text;
    dm_dados.zqry_FASTSALE.Close;
    dm_dados.zqry_FASTSALE.Open;
    dm_Dados.zqry_fastsale.edit;
    dm_Dados.zqry_fastsalecodtipocob.asinteger:=strtoint(edt_codtipocob.Text);
    dm_dados.zqry_fastsaleDESCPAG.Value:=edt_descpagto.text;
    dm_Dados.zqry_fastsalebandeira.asstring:=cb_BANDEIRA.Text;
    frm_checkout.numautorizacao:=edt_DESCPAGTO.Text;
    frm_checkout.bandeira:=cb_BANDEIRA.Text;
    dm_Dados.zqry_fastsale.post;
   // dm_dados.zqry_fastsale.applyupdates();
    frm_fechacupom.edt_valorpago.Text:=floattostr(valorcartao);
    //frm_fechacupom.valorvenda:=StrtoFloat(frm_fechacupom.edt_valorpago.text);
    //frm_fechacupom.btn_fechaClick(Sender);
    frm_DESCPAGTO.Close;
    frm_fechacupom.edt_valorpago.SetFocus;
 //   frm_fechacupom.btn_fechaClick(Sender);
  end;
end;
close;
end;

procedure Tfrm_DESCPAGTO.cb_BANDEIRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then btn_FECHADESCPAGTOClick(Self);
end;

procedure Tfrm_DESCPAGTO.edt_DESCPAGTOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
BEGIN
  if frm_FECHACUPOM.falta=0 then
  begin
    edt_VALORPAGO.Clear;
    edt_valorpago.Text:=formatfloat('##0.00',frm_FECHACUPOM.totalpagar);
    //    floattostr(frm_FECHACUPOM.totalpagar);
    edt_valorpago.SetFocus;
  end
  else
  begin
    edt_valorpago.Clear;
    edt_valorpago.Text:=formatfloat('##0.00',frm_fechacupom.falta);
    //floattostr(frm_fechacupom.falta);
    edt_valorpago.SetFocus;
  end;
END;
end;

procedure Tfrm_DESCPAGTO.edt_VALORPAGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
BEGIN
  if (edt_valorpago.Text='') or (edt_valorpago.Text='0') then
  begin
    edt_VALORPAGO.Clear;
    edt_valorpago.SetFocus;
  end
  else
  begin
    cb_bandeira.SetFocus;
    valorcartao:=strtofloat(edt_valorpago.Text);
  end;
END;
end;

procedure Tfrm_DESCPAGTO.F1Click(Sender: TObject);
begin
btn_FECHADESCPAGTOClick(Sender);
end;

procedure Tfrm_DESCPAGTO.FormActivate(Sender: TObject);
begin
edt_DESCPAGTO.SetFocus;
end;

procedure Tfrm_DESCPAGTO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
IMG_DEBITO.Visible:=FALSE;
IMG_CREDITO.Visible:=FALSE;
IMG_DINHEIRO.Visible:=FALSE;
IMG_CHEQUE.Visible:=false;
IMG_cheque.Align:=alnone;
img_debito.Align:=alnone;
img_credito.Align:=alnone;
img_dinheiro.Align:=alnone;
end;

procedure Tfrm_DESCPAGTO.FormShow(Sender: TObject);
begin
frm_DESCPAGTO.Top:=100;
frm_descpagto.left:=round(screen.width/2)-225;
edt_descpagto.Left:=62;
edt_valorpago.Clear;
valorcartao:=0;
end;

end.
