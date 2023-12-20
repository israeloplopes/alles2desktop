unit u_consultapai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.Buttons;

type
  Tfrm_CONSULTAPAI = class(TForm)
    pn_CABECALHO: TPanel;
    lbl_TITULO_FORM: TLabel;
    pn_CONSULTA: TPanel;
    lbl_TITULO: TLabel;
    edt_PESQUISA: TEdit;
    zqry_CONSULTA: TZQuery;
    zdts_CONSULTA: TDataSource;
    pn_RODAPE: TPanel;
    DBGrid1: TDBGrid;
    btn_PESQUISA: TBitBtn;
    Label1: TLabel;
    cb_MINHAPESQUISA: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure preenchecombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CONSULTAPAI: Tfrm_CONSULTAPAI;

implementation

{$R *.dfm}

procedure Tfrm_CONSULTAPAI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;

procedure Tfrm_CONSULTAPAI.preenchecombo;
var
  i:integer;
begin
  for i := 0 to zdts_consulta.DataSet.FieldCount -1 do
  begin
    cb_MINHAPESQUISA.Items.Add(zdts_consulta.DataSet.Fields[i].FieldName);
  end;
end;

end.
