unit u_comissionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  Tfrm_CAD_COMISSIONADO = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTROCODVEND: TIntegerField;
    zqry_CADASTRONOMEVEND: TWideStringField;
    zqry_CADASTROENDVEND: TWideStringField;
    zqry_CADASTRONUMVEND: TIntegerField;
    zqry_CADASTROCOMPLVEND: TWideStringField;
    zqry_CADASTROBAIRVEND: TWideStringField;
    zqry_CADASTROCIDVEND: TWideStringField;
    zqry_CADASTROCEPVEND: TWideStringField;
    zqry_CADASTROUFVEND: TWideStringField;
    zqry_CADASTROFONEVEND: TWideStringField;
    zqry_CADASTROFAXVEND: TWideStringField;
    zqry_CADASTROEMAILVEND: TWideStringField;
    zqry_CADASTROPERCCOMVEND: TFloatField;
    zqry_CADASTROCOMIPIVEND: TWideStringField;
    zqry_CADASTROCODEMPPN: TIntegerField;
    zqry_CADASTROCODFILIALPN: TSmallintField;
    zqry_CADASTROCODPLAN: TWideStringField;
    zqry_CADASTROCPFVEND: TWideStringField;
    zqry_CADASTRORGVEND: TWideStringField;
    zqry_CADASTROCNPJVEND: TWideStringField;
    zqry_CADASTROINSCVEND: TWideStringField;
    zqry_CADASTROCELVEND: TWideStringField;
    zqry_CADASTROCODEMPSE: TIntegerField;
    zqry_CADASTROCODFILIALSE: TIntegerField;
    zqry_CADASTROCODSETOR: TIntegerField;
    zqry_CADASTROCODEMPCM: TIntegerField;
    zqry_CADASTROCODFILIALCM: TIntegerField;
    zqry_CADASTROCODCLCOMIS: TIntegerField;
    zqry_CADASTROCODFORNVEND: TWideStringField;
    zqry_CADASTROCODFUNC: TIntegerField;
    zqry_CADASTROCODEMPFU: TIntegerField;
    zqry_CADASTROCODFILIALFU: TSmallintField;
    zqry_CADASTROCODEMPTV: TIntegerField;
    zqry_CADASTROCODFILIALTV: TSmallintField;
    zqry_CADASTROCODTIPOVEND: TIntegerField;
    zqry_CADASTRODDDFONEVEND: TWideStringField;
    zqry_CADASTRODDDFAXVEND: TWideStringField;
    zqry_CADASTRODDDCELVEND: TWideStringField;
    zqry_CADASTROSSPVEND: TWideStringField;
    zqry_CADASTROOBSVEND: TWideStringField;
    zqry_CADASTROATIVOCOMIS: TWideStringField;
    zqry_CADASTROIMGASSVEND: TBlobField;
    zqry_CADASTROCODEMPCA: TIntegerField;
    zqry_CADASTROCODFILIALCA: TSmallintField;
    zqry_CADASTRONUMCONTA: TWideStringField;
    zqry_CADASTROCODEMPSC: TIntegerField;
    zqry_CADASTROCODFILIALSC: TSmallintField;
    zqry_CADASTROCODSECAO: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROVLRABONO: TFloatField;
    zqry_CADASTROVLRDESCONTO: TFloatField;
    zqry_CADASTROMETAVEND: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_COMISSIONADO: Tfrm_CAD_COMISSIONADO;

implementation

{$R *.dfm}

end.
