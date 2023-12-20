unit descanso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.FileCtrl, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Jpeg, Math;

type
  Tfrm_DESCANSO = class(TForm)
    pn_BOTTOM: TPanel;
    zqry_PROMOCAO: TZQuery;
    zdts_PROMOCAO: TDataSource;
    zqry_PROMOCAOCODEMP: TIntegerField;
    zqry_PROMOCAOCODPROD: TIntegerField;
    zqry_PROMOCAODESCPROD: TWideStringField;
    zqry_PROMOCAOCODBARPROD: TWideStringField;
    zqry_PROMOCAOPRECOBASEPROD: TFloatField;
    zqry_PROMOCAOPROMOCAO: TWideStringField;
    timer_promocao: TTimer;
    PopupMenu1: TPopupMenu;
    Finalizar1: TMenuItem;
    Image1: TImage;
    lbl_NOMEIMAGE: TLabel;
    DBText1: TDBText;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    procedure FormShow(Sender: TObject);
    procedure promocao;
    procedure timer_promocaoTimer(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure LoadImages;
  private
    { Private declarations }
  public
    { Public declarations }
      //
  end;

var
  frm_DESCANSO: Tfrm_DESCANSO;

implementation

{$R *.dfm}

uses cupom, dados;

procedure Tfrm_DESCANSO.Finalizar1Click(Sender: TObject);
begin
timer_promocao.Enabled:=false;
close;
frm_CUPOM.timer_DESCANSO.Enabled:=true;
end;

procedure Tfrm_DESCANSO.FormShow(Sender: TObject);
begin
frm_cupom.descanso:=0;
frm_cupom.timer_descanso.enabled:=false;
timer_promocao.Enabled:=true;
image1.Picture.LoadFromFile('CheckOut.jpg');
end;

procedure Tfrm_DESCANSO.LoadImages;
var
  valor:integer;
  nome:string;
begin
  valor:=0;
  nome:='';
  randomize;
  Valor := Random((5)+2-1);

  if valor=0 then nome:=dm_dados.wpimg0;
  if valor=1 then nome:=dm_Dados.wpimg1;
  if valor=2 then nome:=dm_dados.wpimg2;
  if valor=3 then nome:=dm_dados.wpimg3;
  if valor=4 then nome:=dm_dados.wpimg4;
  if valor>=5 then nome:=dm_dados.wpimg0;
  lbl_NOMEIMAGE.Caption:=inttostr(valor);
  image1.Picture:=nil;
  Image1.Picture.LoadFromFile(nome);
  image1.Repaint;
end;


procedure Tfrm_DESCANSO.promocao;
{var
//  operator : array[1..3] of string = (dm_dados.wpimg1,dm_Dados.wpimg2, dm_dados.wpimp3);}
begin
//Image1.Picture.LoadFromFile(operator[1 + Random(3)]);
timer_promocao.Enabled:=false;
loadimages;
zqry_PROMOCAO.Close;
ZQRY_PROMOCAO.SQL.Clear;
ZQRY_PROMOCAO.SQL.Add('SELECT CODEMP, CODPROD, DESCPROD, CODBARPROD,PRECOBASEPROD,PROMOCAO FROM EQPRODUTO WHERE PROMOCAO=:PROMO AND CODEMP=:EMPCOD');
ZQRY_PROMOCAO.ParamByName('promo').AsString:='S';
zqry_PROMOCAO.ParamByName('empcod').AsInteger:=DM_dADOS.codemp;
zqry_PROMOCAO.Open;
if zqry_PROMOCAO.IsEmpty then
begin
//
end
ELSE
BEGIN
Randomize;
zqry_PROMOCAO.Close;
ZQRY_PROMOCAO.SQL.Clear;
ZQRY_PROMOCAO.SQL.Add('SELECT CODEMP, CODPROD, DESCPROD, CODBARPROD,PRECOBASEPROD,PROMOCAO FROM EQPRODUTO WHERE PROMOCAO=:PROMO AND CODEMP=:EMPCOD order by rand()');
ZQRY_PROMOCAO.ParamByName('promo').AsString:='S';
zqry_PROMOCAO.ParamByName('empcod').AsInteger:=DM_dADOS.codemp;
zqry_PROMOCAO.Open;
dbtext1.Width:=Screen.Width;
dbtext1.Top:=Round((screen.height/2)-100);
DBText1.Update;
//
dbtext2.Width:=screen.Width;
dbtext2.Top:=Round((Screen.Height/2)+100);
dbtext2.Update
{ZQRY_PROMOCAO.First;
  while not zqry_PROMOCAO.eof do
  begin
       if GetKeyState(VK_F4) and 115=115 then break;
       DBText1.Update;
       SLEEP(2000);
       ZQRY_PROMOCAO.Next;
       if GetKeyState(VK_F4) and 115=115 then break;
  end;
END;}
END;
timer_promocao.Enabled:=true;
END;

procedure Tfrm_DESCANSO.timer_promocaoTimer(Sender: TObject);
begin
promocao;
end;

end.
