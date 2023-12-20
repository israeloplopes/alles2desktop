unit dlg_est_almox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_DLG_EST_ALMOX = class(TForm)
    Label1: TLabel;
    edt_BUSCAALMOX: TEdit;
    btn_BUSCAR: TBitBtn;
    lbl_ALMOX: TLabel;
    btn_IMPRIME_RELATORIO: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_IMPRIME_RELATORIOClick(Sender: TObject);
    procedure edt_BUSCAALMOXKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_EST_ALMOX: Tfrm_DLG_EST_ALMOX;

implementation

{$R *.dfm}

uses rel_almox_origem, dados;

procedure Tfrm_DLG_EST_ALMOX.btn_BUSCARClick(Sender: TObject);
begin
if edt_buscaalmox.Text='' then
begin
    showmessage('Não há valores inseridos para a busca');
    edt_buscaalmox.SetFocus;
    edt_buscaalmox.Clear;
end
else
begin
    dm_dados.zqry_eqalmox.close;
    dm_Dados.zqry_eqalmox.sql.clear;
    dm_dados.zqry_eqalmox.sql.add('select * from eqalmox where codalmox=:almoxcod and codemp=99');
    dm_dados.zqry_EQALMOX.ParamByName('almoxcod').AsInteger:=strtoint(edt_buscaalmox.Text);
    dm_dados.zqry_EQALMOX.Open;
    if dm_dados.zqry_EQALMOX.IsEmpty then
    begin
      showmessage('Atenção não foi localizada Almoxarifado com esse código'#13'Tab: EQALMOX');
      edt_buscaalmox.Clear;
      edt_buscaalmox.SetFocus;
    end
    else
    begin
      lbl_almox.Caption:=dm_dados.zqry_EQALMOXDESCALMOX.AsString;
      dm_Dados.zqry_eqsaldoprod.close;
      dm_Dados.zqry_eqsaldoprod.sql.clear;
      dm_Dados.zqry_eqsaldoprod.sql.add('select * from eqsaldoprod where codalmox=:almoxcod and codemp=:empcod order by codprod ');
      dm_dados.zqry_eqsaldoprod.parambyname('almoxcod').AsInteger:=strtoint(edt_BUSCAALMOX.Text);
      dm_Dados.zqry_EQSALDOPROD.ParamByName('empcod').Asinteger:=dm_Dados.codemp;
      dm_Dados.zqry_eqsaldoprod.Open;
    end;
end;

end;

procedure Tfrm_DLG_EST_ALMOX.btn_IMPRIME_RELATORIOClick(Sender: TObject);
begin
 // showmessage('consultou');
  frm_rel_almox_origem.rlreport1.preview();
  dm_Dados.zqry_eqproduto.close;
  dm_Dados.zqry_Eqsaldoprod.close;
  dm_dados.zqry_eqalmox.close;
  edt_BUSCAALMOX.Clear;
  lbl_ALMOX.Caption:='';
  edt_BUSCAALMOX.SetFocus;
end;

procedure Tfrm_DLG_EST_ALMOX.edt_BUSCAALMOXKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key= #13)  or (key= #9)  then
begin
  btn_BUSCARClick(Sender);
end;
end;

procedure Tfrm_DLG_EST_ALMOX.FormActivate(Sender: TObject);
begin
dm_Dados.zqry_eqproduto.close;
dm_Dados.zqry_Eqsaldoprod.close;
dm_dados.zqry_eqalmox.close;
edt_BUSCAALMOX.Clear;
lbl_ALMOX.Caption:='';
end;

end.
