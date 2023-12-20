unit rel_receituario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  Tfrm_REL_RECEITUARIO = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLLabel34: TRLLabel;
    RLMemo5: TRLMemo;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText20: TRLDBText;
    RLBand4: TRLBand;
    RLMemo6: TRLMemo;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    rl_ENDERECO: TRLLabel;
    rl_RAZAO: TRLLabel;
    rl_ENDERECO1: TRLLabel;
    rl_NOMEFANTASIA: TRLLabel;
    RL_ENGENHEIRO: TRLLabel;
    rl_CPF: TRLLabel;
    rl_CREA: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_REL_RECEITUARIO: Tfrm_REL_RECEITUARIO;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_REL_RECEITUARIO.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
DM_DADOS.ZQRY_SGFILIAL.CLOSE;
DM_DADOS.ZQRY_SGFILIAL.SQL.CLEAR;
DM_DADOS.ZQRY_SGFILIAL.SQL.ADD('SELECT * FROM SGFILIAL WHERE CODEMP=:EMPCOD');
dm_dados.zqry_sgfilial.parambyname('empcod').asinteger:=dm_Dados.codemp;
dm_dados.zqry_Sgfilial.open;
if DM_DADOS.zqry_SGFILIALCODFORN_REC.AsInteger>1 then
begin
  dm_dados.zqry_CPFORNECED.Close;
  dm_dados.zqry_CPFORNECED.SQL.Clear;
  DM_DADOS.zqry_CPFORNECED.SQL.Add('SELECT * FROM CPFORNECED WHERE CODFOR=:FORCOD');
  DM_DADOS.zqry_CPFORNECED.ParamByName('FORCOD').AsInteger:=dm_DADOS.zqry_SGFILIALCODFORN_REC.AsInteger;
  DM_dADOS.zqry_CPFORNECED.Open;
  RL_ENGENHEIRO.Caption:=DM_DADOS.zqry_CPFORNECEDNOMEFOR.AsString;
  rl_CPF.Caption:=DM_dADOS.zqry_CPFORNECEDCPFFOR.AsString;
  rl_CREA.Caption:=DM_DADOS.zqry_CPFORNECEDINSCCONREG.AsString;
end;
rl_endereco.Caption:=trim(dm_dados.zqry_SGFILIALendfilial.value)+', '+inttostr(dm_dados.zqry_SGFILIALNUMFILIAL.Value)+' - '+trim(dm_dados.zqry_SGFILIALBAIRFILIAL.Value)+' CEP: '+dm_Dados.zqry_SGFILIALCEPFILIAL.value;
rl_endereco1.caption:=trim(dm_Dados.zqry_SGFILIALCIDFILIAL.value)+' - '+dm_dados.zqry_SGFILIALSIGLAUF.value;
rl_RAZAO.Caption:=dm_dados.zqry_SGFILIALRAZFILIAL.AsString;
rl_NOMEFANTASIA.Caption:=dm_dados.zqry_SGFILIALNOMEFILIAL.AsString;


end;

end.
