unit dlg_cstat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_DLG_CSTAT = class(TForm)
    zqry_SGNFCSTAT: TZQuery;
    zdts_SGNFCSTAT: TDataSource;
    zqry_SGNFCSTATCSTAT: TIntegerField;
    zqry_SGNFCSTATMENSAGEM: TWideStringField;
    zqry_SGNFCSTATRESUMO: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btn_FECHAR: TBitBtn;
    procedure btn_FECHARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_CSTAT: Tfrm_DLG_CSTAT;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_DLG_CSTAT.btn_FECHARClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrm_DLG_CSTAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=TcloseAction.caFree;
frm_dlg_cstat:=nil;
end;

end.
