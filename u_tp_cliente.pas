unit u_tp_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_TPCLIENTE = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODTIPOCLI: TIntegerField;
    zqry_CADASTRODESCTIPOCLI: TWideStringField;
    zqry_CADASTROCHEQTIPOCLI: TWideStringField;
    zqry_CADASTROFISTIPOCLI: TWideStringField;
    zqry_CADASTROJURTIPOCLI: TWideStringField;
    zqry_CADASTROFILTIPOCLI: TWideStringField;
    zqry_CADASTROLOCTRABTIPOCLI: TWideStringField;
    zqry_CADASTROREFCOMLTIPOCLI: TWideStringField;
    zqry_CADASTROBANCTIPOCLI: TWideStringField;
    zqry_CADASTROREFPESTIPOCLI: TWideStringField;
    zqry_CADASTROCONJTIPOCLI: TWideStringField;
    zqry_CADASTROVEICTIPOCLI: TWideStringField;
    zqry_CADASTROIMOVTIPOCLI: TWideStringField;
    zqry_CADASTROTERRATIPOCLI: TWideStringField;
    zqry_CADASTROPESAUTCPTIPOCLI: TWideStringField;
    zqry_CADASTROAVALTIPOCLI: TWideStringField;
    zqry_CADASTROSOCIOTIPOCLI: TWideStringField;
    zqry_CADASTROPRODRURALTIPOCLI: TWideStringField;
    zqry_CADASTROWEB: TWideStringField;
    zqry_CADASTROSIGLATIPOCLI: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_TPCLIENTE: Tfrm_CAD_TPCLIENTE;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_TPCLIENTE.FormDestroy(Sender: TObject);
begin
  inherited;
  frm_cad_tpcliente:=nil;
end;

procedure Tfrm_CAD_TPCLIENTE.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from vdtipocli where codemp=:empcod');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='TIPO DE CLIENTE'
end;

end.
