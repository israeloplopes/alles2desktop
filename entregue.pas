unit entregue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.MPlayer, Data.DB;

type
  Tfrm_ENTREGUE = class(TForm)
    lbl_WALLPAPER: TLabel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lbl_HORA: TLabel;
    Timer1: TTimer;
    lbl_DATA: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Image1: TImage;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    Memo1: TMemo;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    DBGrid3: TDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    MediaPlayer1: TMediaPlayer;
    timer_som: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure timer_somTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ENTREGUE: Tfrm_ENTREGUE;

implementation

{$R *.dfm}

uses u_dados,PngImage,  HTTPApp, WinInet;

type
  TQrImage_ErrCorrLevel = (L, M, Q, H);

const
  UrlGoogleQrCode =
    'http://chart.apis.google.com/chart?chs=%dx%d&cht=qr&chld=%s&chl=%s';
  QrImgCorrStr: array [TQrImage_ErrCorrLevel] of string = ('L', 'M', 'Q', 'H');

procedure WinInet_HttpGet(const Url: string; Stream: TStream);
const
  BuffSize = 1024 * 1024;
var
  hInter: HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: DWORD;
  Buffer: Pointer;
begin
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    Stream.Seek(0, 0);
    GetMem(Buffer, BuffSize);
    try
      UrlHandle := InternetOpenUrl(hInter, PChar(Url), nil, 0,
        INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      begin
        repeat
          InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
          if BytesRead > 0 then
            Stream.WriteBuffer(Buffer^, BytesRead);
        until BytesRead = 0;
        InternetCloseHandle(UrlHandle);
      end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
end;

procedure GetQrCode(Width, Height: Word;
  Correction_Level: TQrImage_ErrCorrLevel; const Data: string;
  StreamImage: TMemoryStream);
Var
  EncodedURL: string;
begin
  EncodedURL := Format(UrlGoogleQrCode,
    [Width, Height, QrImgCorrStr[Correction_Level], HTTPEncode(Data)]);
  WinInet_HttpGet(EncodedURL, StreamImage);
end;


procedure Tfrm_ENTREGUE.BitBtn1Click(Sender: TObject);
begin
if timer_som.Enabled=false then
begin
timer_som.Enabled:=true;
showmessage('Som Ligado');
end;
end;

procedure Tfrm_ENTREGUE.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_ENTREGUE.BitBtn5Click(Sender: TObject);
var
  ImageStream: TMemoryStream;
  PngImage: TPngImage;
  composicao:ansistring;
begin
  Image1.Picture := nil;
  ImageStream := TMemoryStream.Create;
  PngImage := TPngImage.Create;
  try
    try
      composicao:='http://www.nonoelemento.com/integra/qrcode/';
      showmessage(composicao);
      GetQrCode(StrToInt(Trim(MaskEdit1.Text)), StrToInt(Trim(MaskEdit2.Text)),
        TQrImage_ErrCorrLevel(ComboBox1.ItemIndex), composicao,
        ImageStream);
      if ImageStream.Size > 0 then
      begin
        ImageStream.Position := 0;
        PngImage.LoadFromStream(ImageStream);
        Image1.Picture.Assign(PngImage);
      end;
    except
      on E: exception do
        ShowMessage(E.Message);
    end;
  finally
    ImageStream.Free;
    PngImage.Free;
end;
end;

procedure Tfrm_ENTREGUE.Timer1Timer(Sender: TObject);
begin
LBL_HORA.Caption:=timetostr(time);
LBL_DATA.Caption:=DATETOSTR(DATE);
end;

procedure Tfrm_ENTREGUE.timer_somTimer(Sender: TObject);
begin
 MediaPlayer1.Close;
 MediaPlayer1.Open;
 mediaPlayer1.Play;
end;

end.
