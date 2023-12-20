unit dlg_cheques_hoje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_DLG_CHEQUES_HOJE = class(TForm)
    DBGrid1: TDBGrid;
    btn_IMPRIMIR: TBitBtn;
    btn_FECHAR: TBitBtn;
    pn_RODAPE: TPanel;
    zqry_CHEQUE_HOJE: TZQuery;
    zdts_CHEQUE_HOJE: TDataSource;
    zqry_CHEQUE_HOJECODEMP: TIntegerField;
    zqry_CHEQUE_HOJECODFILIAL: TSmallintField;
    zqry_CHEQUE_HOJECODEMPBO: TIntegerField;
    zqry_CHEQUE_HOJESEQCHEQ: TIntegerField;
    zqry_CHEQUE_HOJECODFILIALBO: TSmallintField;
    zqry_CHEQUE_HOJECODBANC: TWideStringField;
    zqry_CHEQUE_HOJEAGENCIACHEQ: TWideStringField;
    zqry_CHEQUE_HOJECONTACHEQ: TWideStringField;
    zqry_CHEQUE_HOJENUMCHEQ: TIntegerField;
    zqry_CHEQUE_HOJENOMEEMITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJENOMEFAVCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEDTEMITCHEQ: TDateField;
    zqry_CHEQUE_HOJEDTVENCTOCHEQ: TDateField;
    zqry_CHEQUE_HOJEDTCOMPCHEQ: TDateField;
    zqry_CHEQUE_HOJETIPOCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEPREDATCHEQ: TWideStringField;
    zqry_CHEQUE_HOJESITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEVLRCHEQ: TFloatField;
    zqry_CHEQUE_HOJEHISTCHEQ: TWideStringField;
    zqry_CHEQUE_HOJECNPJEMITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJECPFEMITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJECNPJFAVCHEQ: TWideStringField;
    zqry_CHEQUE_HOJECPFFAVCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEDDDFAVCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEDDDEMITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEFONEEMITCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEFONEFAVCHEQ: TWideStringField;
    zqry_CHEQUE_HOJEDTINS: TDateField;
    zqry_CHEQUE_HOJEHINS: TTimeField;
    zqry_CHEQUE_HOJEIDUSUINS: TWideStringField;
    zqry_CHEQUE_HOJEDTALT: TDateField;
    zqry_CHEQUE_HOJEHALT: TTimeField;
    zqry_CHEQUE_HOJEIDUSUALT: TWideStringField;
    zqry_CHEQUE_HOJECONTAEMITE: TWideStringField;
    zqry_CHEQUE_HOJECODCLI: TIntegerField;
    zqry_CHEQUE_HOJECODVENDA: TIntegerField;
    zqry_CHEQUE_HOJENOMEBANCO: TWideStringField;
    zqry_CHEQUE_HOJECODEMPCL: TIntegerField;
    zqry_CHEQUE_HOJECODFILIALCL: TSmallintField;
    zqry_CHEQUE_HOJECODEMPVD: TIntegerField;
    zqry_CHEQUE_HOJECODFILIALVD: TSmallintField;
    zqry_CHEQUE_HOJEDTDEPCHEQ: TDateField;
    zqry_CHEQUE_HOJECODALINEA: TSmallintField;
    zqry_CHEQUE_HOJEDTDEVOLCHEQ: TDateField;
    zqry_CHEQUE_HOJEDTREAPRESENTAR: TDateField;
    zqry_CHEQUE_HOJEREAPRESENTAR: TWideStringField;
    zqry_CHEQUE_HOJEAUTREAPRESENTAR: TWideStringField;
    Timer1: TTimer;
    procedure btn_FECHARClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_CHEQUES_HOJE: Tfrm_DLG_CHEQUES_HOJE;

implementation

{$R *.dfm}

procedure Tfrm_DLG_CHEQUES_HOJE.btn_FECHARClick(Sender: TObject);
begin
Timer1.Enabled:=true;
close;
end;

procedure Tfrm_DLG_CHEQUES_HOJE.FormActivate(Sender: TObject);
begin
FRM_DLG_CHEQUES_HOJE.TOP:= SCREEN.WorkAreaHeight- FRM_DLG_CHEQUES_HOJE.HEIGHT;
FRM_DLG_CHEQUES_HOJE.LEFT:=SCREEN.WorkareaWidth- FRM_DLG_CHEQUES_HOJE.WIDTH;
end;

procedure Tfrm_DLG_CHEQUES_HOJE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Timer1.Enabled:=false;
end;

procedure Tfrm_DLG_CHEQUES_HOJE.Timer1Timer(Sender: TObject);
begin
close;
end;

end.
