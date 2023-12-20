unit u_atendente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_ATENDENTE = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODATEND: TIntegerField;
    zqry_CADASTRONOMEATEND: TWideStringField;
    zqry_CADASTROCODEMPTA: TIntegerField;
    zqry_CADASTROCODFILIALTA: TSmallintField;
    zqry_CADASTROCODTPATEND: TIntegerField;
    zqry_CADASTRORGATEND: TWideStringField;
    zqry_CADASTROENDATEND: TWideStringField;
    zqry_CADASTROBAIRATEND: TWideStringField;
    zqry_CADASTROCIDATEND: TWideStringField;
    zqry_CADASTROCEPATEND: TWideStringField;
    zqry_CADASTROFONEATEND: TWideStringField;
    zqry_CADASTROFAXATEND: TWideStringField;
    zqry_CADASTROEMAILATEND: TWideStringField;
    zqry_CADASTRONUMATEND: TIntegerField;
    zqry_CADASTROUFATEND: TWideStringField;
    zqry_CADASTROCELATEND: TWideStringField;
    zqry_CADASTROIDENTIFICATEND: TWideStringField;
    zqry_CADASTROCODEMPUS: TIntegerField;
    zqry_CADASTROCODFILIALUS: TIntegerField;
    zqry_CADASTROIDUSU: TWideStringField;
    zqry_CADASTROCPFATEND: TWideStringField;
    zqry_CADASTROCODVEND: TIntegerField;
    zqry_CADASTROCODEMPVE: TIntegerField;
    zqry_CADASTROCODFILIALVE: TIntegerField;
    zqry_CADASTROCODEMPEP: TIntegerField;
    zqry_CADASTROCODFILIALEP: TSmallintField;
    zqry_CADASTROMATEMPR: TIntegerField;
    zqry_CADASTROMETAATEND: TFloatField;
    zqry_CADASTROPARTPREMIATEND: TWideStringField;
    zqry_CADASTROACESATDOLEROUT: TWideStringField;
    zqry_CADASTROACESATDOALTOUT: TWideStringField;
    zqry_CADASTROACESATDODELLAN: TWideStringField;
    zqry_CADASTROACESATDODELOUT: TWideStringField;
    zqry_CADASTROACESRELESTOUT: TWideStringField;
    zqry_CADASTROACESTROCOMIS: TWideStringField;
    zqry_CADASTROACESTROCOMISOUT: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROINSCCONREG: TWideStringField;
    zqry_CADASTROCOMISSAO: TSingleField;
    zqry_CADASTROACESCHAMLEROUT: TWideStringField;
    zqry_CADASTROACESCHAMDELOUT: TWideStringField;
    zqry_CADASTROACESCHAMFINPRO: TWideStringField;
    zqry_CADASTROACESCHAMFINOUT: TWideStringField;
    zqry_CADASTROACESCHAMALTOUT: TWideStringField;
    zqry_CADASTROACESCHAMDELLAN: TWideStringField;
    zqry_CADASTROACESCHAMALTPRO: TWideStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_ATENDENTE: Tfrm_CAD_ATENDENTE;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CAD_ATENDENTE.FormShow(Sender: TObject);
begin
  inherited;
  zqry_cadastro.SQL.Add('select * from atatendente where codemp=:empcod order by codatend');
  zqry_cadastro.ParamByName('empcod').AsInteger:=dm_dados.codemp;;
  zqry_cadastro.Open;
  lbl_TITULO_FORM.Caption:='ATENDENTES'
end;

end.
