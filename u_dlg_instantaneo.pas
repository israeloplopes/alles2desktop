unit u_dlg_instantaneo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_DLG_INSTANTANEO = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid2: TDBGrid;
    btn_FECHAR: TBitBtn;
    zqry_PVMOVCAIXA: TZQuery;
    zdts_PVMOVCAIXA: TDataSource;
    zqry_PVMOVCAIXACODEMP: TIntegerField;
    zqry_PVMOVCAIXACODFILIAL: TIntegerField;
    zqry_PVMOVCAIXACODCAIXA: TIntegerField;
    zqry_PVMOVCAIXANROMOV: TIntegerField;
    zqry_PVMOVCAIXAITEM: TSmallintField;
    zqry_PVMOVCAIXADATAMOV: TDateField;
    zqry_PVMOVCAIXADATACADASTRO: TDateField;
    zqry_PVMOVCAIXAHORACADASTRO: TTimeField;
    zqry_PVMOVCAIXATIPOMOV: TWideStringField;
    zqry_PVMOVCAIXAVLRMOV: TSingleField;
    zqry_PVMOVCAIXAVLDSLDMOV: TSingleField;
    zqry_PVMOVCAIXACODUSUARIO: TIntegerField;
    zqry_PVMOVCAIXAISYNC: TWideStringField;
    zqry_PVMOVCAIXAESYNC: TWideStringField;
    lbl_ULTSALDO: TLabel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    ZQuery1ULTSALDO: TSingleField;
    procedure FormShow(Sender: TObject);
    procedure btn_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_INSTANTANEO: Tfrm_DLG_INSTANTANEO;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_DLG_INSTANTANEO.btn_FECHARClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_DLG_INSTANTANEO.FormShow(Sender: TObject);
begin
  zquery1.Params.Clear;
  zquery1.Close;
  zquery1.SQL.Clear;
  zquery1.SQL.Add('select max(vldsldmov) as ultsaldo from pvmovcaixa where codemp=:empcod and datamov=:movdata');
  zquery1.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zquery1.ParamByName('movdata').AsDateTime:=now;
  zquery1.Open;
  lbl_ULTSALDO.Caption:=FormatFloat('R$ #,,,,0.00', ZQuery1ULTSALDO.Value);
  //

  zqry_PVMOVCAIXA.Params.Clear;
  zqry_PVMOVCAIXA.Close;
  zqry_PVMOVCAIXA.SQL.Clear;
  ZQRY_PVMOVCAIXA.SQL.Add('select * from pvmovcaixa where codemp=:empcod and datamov=:movdata');
  zqry_pvmovcaixa.ParamByName('empcod').Asinteger:=dm_dados.codemp;
  zqry_pvmovcaixa.ParamByName('movdata').AsDateTime:=now;
  zqry_pvmovcaixa.Open;
end;

end.
