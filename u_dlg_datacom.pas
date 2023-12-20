unit u_dlg_datacom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, ZSqlProcessor;

type
  Tfrm_DLG_DATACOM = class(TForm)
    pn_TOP: TPanel;
    Image1: TImage;
    pn_BOTTOM: TPanel;
    btn_FECHA: TBitBtn;
    btn_GRAVA: TBitBtn;
    ZSQLProcessor1: TZSQLProcessor;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    edt_SCRIPT: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure btn_FECHAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_DATACOM: Tfrm_DLG_DATACOM;

implementation

uses u_dados;

{$R *.dfm}

procedure Tfrm_DLG_DATACOM.BitBtn1Click(Sender: TObject);
var
  linhasarq : String;
  arquivo : TextFile;
begin
memo1.ReadOnly:=true;
Memo1.Clear;
if (OpenDialog1.execute) then
    if (OpenDialog1.FileName <> '' ) then
    begin
        edt_SCRIPT.text:= OpenDialog1.FileName;
        AssignFile(arquivo,OpenDialog1.FileName);
        Reset(arquivo);
        while not (eof(arquivo)) do
        begin
          Readln(arquivo,linhasarq);
          Memo1.Lines.add(linhasarq);
        end;
          CloseFile(arquivo);
    end;

end;

procedure Tfrm_DLG_DATACOM.btn_FECHAClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_DLG_DATACOM.btn_GRAVAClick(Sender: TObject);
var
   arquivosql:string;
begin
arquivosql:=edt_SCRIPT.Text;
//dtm_dados.scriptsql.script:=memo1.Text;
ZSQLProcessor1.Script.LoadFromFile(arquivosql);
ZSQLProcessor1.Execute;
showmessage('Script executado.'#13'Aplicação será finalizada.');
close;
end;

end.
