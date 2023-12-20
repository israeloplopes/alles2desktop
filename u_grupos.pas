unit u_grupos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_CAD_GRUPOS = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODGRUP: TWideStringField;
    zqry_CADASTRODESCGRUP: TWideStringField;
    zqry_CADASTRONIVELGRUP: TIntegerField;
    zqry_CADASTROCODEMPSG: TIntegerField;
    zqry_CADASTROCODFILIALSG: TSmallintField;
    zqry_CADASTROCODSUBGRUP: TWideStringField;
    zqry_CADASTROSIGLAGRUP: TWideStringField;
    zqry_CADASTROESTNEGGRUP: TWideStringField;
    zqry_CADASTROESTLOTNEGGRUP: TWideStringField;
    zqry_CADASTROWEB: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROMARKUP: TSingleField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_GRUPOS: Tfrm_CAD_GRUPOS;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_GRUPOS.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from eqgrupo where codemp=:empcod order by codgrup, nivelgrup');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='GRUPOS'
end;

end.
