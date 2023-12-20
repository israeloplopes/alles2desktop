unit u_recado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,shellapi,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrm_RECADO = class(TForm)
    DBGrid1: TDBGrid;
    btn_LIDO: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    dbt_LINK: TDBText;
    zqry_UPT: TZQuery;
    zdts_UPT: TDataSource;
    btn_SAI: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure dbt_LINKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_LIDOClick(Sender: TObject);
    procedure btn_SAIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RECADO: Tfrm_RECADO;

implementation

{$R *.dfm}

uses u_principal, u_dados;

procedure Tfrm_RECADO.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_RECADO.btn_LIDOClick(Sender: TObject);
var
  meureg:integer;
begin
  meureg:=0;
  meureg:=dm_dados.zqry_sgrecadocodrecado.asinteger;
  zqry_UPT.Close;
  zqry_UPT.SQL.Clear;
  zqry_UPT.SQL.Add('update sgrecado set lido=:p1 where codrecado=:p2');
  zqry_UPT.ParamByName('p1').AsString:='S';
  zqry_UPT.ParamByName('p2').AsInteger:=meureg;
  zqry_UPT.ExecSQL;
end;

procedure Tfrm_RECADO.btn_SAIClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_RECADO.dbt_LINKClick(Sender: TObject);
var
  linkaviso:string;
  wideChars   : array[0..11] of WideChar;
begin
  if dbt_LINK.Caption='' THEN
  BEGIN
    //
  END
  ELSE
  BEGIN
    linkaviso:=dbt_link.Caption;
    StringToWideChar(linkaviso, wideChars, 12);
    ShellExecute(Handle, 'open', widechars, nil, nil, SW_SHOWMAXIMIZED);
  END;

end;

procedure Tfrm_RECADO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FRM_PRINCIPAL.Timer1.Enabled:=TRUE;
end;

procedure Tfrm_RECADO.FormShow(Sender: TObject);
begin
  FRM_PRINCIPAL.Timer1.Enabled:=FALSE;
end;

end.
