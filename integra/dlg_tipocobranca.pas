unit dlg_tipocobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, uFuncoes, Data.DB;

type
  Tfrm_DLG_TIPOCOBRANCA = class(TForm)
    Label1: TLabel;
    edt_TIPOCOBRANCA: TEdit;
    btn_BUSCATIPOCOB: TBitBtn;
    lbl_TIPOCOBRANCA: TLabel;
    Label11: TLabel;
    msk_INICIO: TMaskEdit;
    Label12: TLabel;
    msk_FIM: TMaskEdit;
    btn_BUSCACOMISSAO: TBitBtn;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    btn_IMPRIMIR: TBitBtn;
    btn_SAIR: TBitBtn;
    procedure btn_BUSCATIPOCOBClick(Sender: TObject);
    procedure btn_BUSCACOMISSAOClick(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure btn_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_TIPOCOBRANCA: Tfrm_DLG_TIPOCOBRANCA;

implementation

{$R *.dfm}

uses dados, rel_tipocobranca;

procedure Tfrm_DLG_TIPOCOBRANCA.btn_BUSCACOMISSAOClick(Sender: TObject);
begin
mostratelaaguarde('Consultando Financeiro');
if LBL_TIPOCOBRANCA.Caption='' then
begin
  dm_dados.zqry_fnreceber.close;
  dm_dados.zqry_fnreceber.SQL.Clear;
  dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where datarec between :dtini and :dtfim '{and codbanco<>:banco'});
  dm_dados.zqry_fnreceber.ParamByName('dtini').Value:=strtodate(msk_inicio.Text);
  dm_Dados.zqry_fnreceber.ParamByName('dtfim').Value:=strtodate(msk_fim.Text);
  dm_dados.zqry_fnreceber.Open;
  if dm_Dados.zqry_fnreceber.IsEmpty then showmessage('Não foram encontradas comissões dentro da data especificada'#13'tab.: fnreceber');
end
else
begin
  dm_dados.zqry_fnreceber.close;
  dm_dados.zqry_fnreceber.SQL.Clear;
  dm_dados.zqry_fnreceber.SQL.Add('select * from fnreceber where codtipocob=:tipocob and datarec between :dtini and :dtfim '{and codbanco<>:banco'});
  dm_dados.zqry_fnreceber.ParamByName('dtini').Value:=strtodate(msk_inicio.Text);
  dm_Dados.zqry_fnreceber.ParamByName('dtfim').Value:=strtodate(msk_fim.Text);
  dm_Dados.zqry_fnreceber.ParamByName('tipocob').asinteger:=strtoint(edt_tipocobranca.Text);
  dm_dados.zqry_fnreceber.Open;
  if dm_Dados.zqry_fnreceber.IsEmpty then showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: fnreceber');
end;
fechatelaaguarde;
mostratelaaguarde('Consulta Parcelamento da Contas a Receber');
dm_dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.SQL.Clear;
dm_dados.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsInteger:=dm_Dados.zqry_FNRECEBERCODREC.AsInteger;
dm_DAdos.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_FNITRECEBER.Open;
fechatelaaguarde;

end;

procedure Tfrm_DLG_TIPOCOBRANCA.btn_BUSCATIPOCOBClick(Sender: TObject);
begin
if edt_TIPOCOBRANCA.Text='' then
begin
  showmessage('Atenção'#13'Não foram informados valores para a busca');
  edt_TIPOCOBRANCA.Clear;
  edt_TIPOCOBRANCA.SetFocus;
  lbl_TIPOCOBRANCA.Caption:='';
end
else
begin
  DM_dADOS.ZQRY_fntipocob.CLOSE;
  DM_DADOS.zQRY_fntipocob.SQL.CLEAR;
  DM_DADOS.zQRY_fntipocob.SQL.ADD('SELECT * FROM FNTIPOCOB WHERE CODTIPOCOB=:TIPOCOB and codemp=:empcod ');
  DM_DADOS.zQRY_fntipocob.PARAMBYNAME('TIPOCOB').ASINTEGER:=STRTOINT(EDT_TIPOCOBRANCA.Text);
  dm_Dados.zqry_fntipocob.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  DM_DADOS.zqry_fntipocob.OPEN;
  if dm_dados.zqry_fntipocob.IsEmpty then
  begin
    showmessage('Atenção!!!'#13'Não foram localizadas informações para esse parâmetro'#13'tab: VDVENDEDOR');
    edt_tipocobranca.Clear;
    edt_TIPOCOBRANCA.setfocus;
    lbl_TIPOCOBRANCA.Caption:='';
  end
  else
  begin
    LBL_TIPOCOBRANCA.Caption:=DM_DADOS.zqry_fntipocobdesctipocob.asstring;
  end;
end;

end;

procedure Tfrm_DLG_TIPOCOBRANCA.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_tipocobranca.rlreport1.preview();

end;

procedure Tfrm_DLG_TIPOCOBRANCA.DBGrid3CellClick(Column: TColumn);
begin
mostratelaaguarde('Consulta Parcelamento da Contas a Receber');
dm_dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.SQL.Clear;
dm_dados.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where codrec=:reccod and codemp=:empcod');
dm_dados.zqry_FNITRECEBER.ParamByName('reccod').AsInteger:=dm_Dados.zqry_FNRECEBERCODREC.AsInteger;
dm_DAdos.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
fechatelaaguarde;
dm_dados.zqry_FNITRECEBER.Open;
end;

end.
