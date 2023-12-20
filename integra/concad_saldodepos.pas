unit concad_saldodepos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Mask;

type
  Tfrm_CONCAD_SALDODEPOS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rg_BUSCA: TRadioGroup;
    DBGrid1: TDBGrid;
    gb_PARAMETROS: TGroupBox;
    Label1: TLabel;
    edt_BUSCAPROD: TEdit;
    btn_BUSCAPROD: TBitBtn;
    Label2: TLabel;
    edt_BUSCAALMOX: TEdit;
    btn_BUSCAALMOX: TBitBtn;
    lbl_ALMOX: TLabel;
    lbl_PRODUTO: TLabel;
    Label3: TLabel;
    edt_QTD: TEdit;
    DBText1: TDBText;
    zqry_SLDEQLOTE: TZQuery;
    zdts_SLDEQLOTE: TDataSource;
    zqry_SLDEQLOTECODEMP: TIntegerField;
    zqry_SLDEQLOTECODFILIAL: TSmallintField;
    zqry_SLDEQLOTECODPROD: TIntegerField;
    zqry_SLDEQLOTECODLOTE: TWideStringField;
    zqry_SLDEQLOTEVENCTOLOTE: TDateField;
    zqry_SLDEQLOTESLDLOTE: TFloatField;
    zqry_SLDEQLOTESLDRESLOTE: TFloatField;
    zqry_SLDEQLOTESLDCONSIGLOTE: TFloatField;
    zqry_SLDEQLOTESLDLIQLOTE: TFloatField;
    zqry_SLDEQLOTEQTDPRODLOTE: TFloatField;
    zqry_SLDEQLOTEDINILOTE: TDateField;
    zqry_SLDEQLOTEDIASAVISOLOTE: TSmallintField;
    zqry_SLDEQLOTEDTINS: TDateField;
    zqry_SLDEQLOTEHINS: TTimeField;
    zqry_SLDEQLOTEIDUSUINS: TWideStringField;
    zqry_SLDEQLOTEDTALT: TDateField;
    zqry_SLDEQLOTEHALT: TTimeField;
    zqry_SLDEQLOTEIDUSUALT: TWideStringField;
    dbgrid_LOTE: TDBGrid;
    Label4: TLabel;
    btn_PROCESSAR: TBitBtn;
    Label5: TLabel;
    edt_LOTE: TEdit;
    ZQuery1: TZQuery;
    edt_BUSCADEPOS: TEdit;
    btn_BUSCADEPOS: TBitBtn;
    lbl_DEPOSITO: TLabel;
    zqry_UPTLOTE: TZQuery;
    zdts_UPTLOTE: TDataSource;
    DBText2: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    lbl_PESQUISA: TLabel;
    msk_PESQUISA: TMaskEdit;
    sp_BUSCA: TSpeedButton;
    procedure btn_BUSCAPRODClick(Sender: TObject);
    procedure edt_BUSCAPRODKeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCAALMOXClick(Sender: TObject);
    procedure edt_BUSCAALMOXKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_PROCESSARClick(Sender: TObject);
    procedure dbgrid_LOTECellClick(Column: TColumn);
    procedure edt_QTDExit(Sender: TObject);
    procedure edt_BUSCADEPOSKeyPress(Sender: TObject; var Key: Char);
    procedure btn_BUSCADEPOSClick(Sender: TObject);
    procedure edt_QTDKeyPress(Sender: TObject; var Key: Char);
    procedure FechaConexoes;
    procedure BuscaSaldo;
    procedure rg_BUSCAClick(Sender: TObject);
    procedure sp_BUSCAClick(Sender: TObject);
    procedure msk_PESQUISAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sld_estoque,qtd_atual,sld_lote:double;
    temlote:integer;
    ENTRE, OUTROBT, SCRIPT, PARAMETRO1, PARAMETRO2, PARAMETRO3, INSTRUCAO: string //SCRIPT PARA CONSULTA SQl

  end;

var
  frm_CONCAD_SALDODEPOS: Tfrm_CONCAD_SALDODEPOS;

implementation

{$R *.dfm}

uses dados, principal, uFuncoes;

procedure Tfrm_CONCAD_SALDODEPOS.FechaConexoes;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
    except
    end;
    Application.ProcessMessages;

zqry_SLDEQLOTE.Cancel;
zqry_SLDEQLOTE.Params.Clear;
zqry_SLDEQLOTE.Close;
zqry_SLDEQLOTE.SQL.Clear;
zqry_SLDEQLOTE.SQL.Add('select * from eqlote');
zqry_SLDEQLOTE.Open;
//
dm_Dados.zqry_EQPRODUTO.Cancel;
dm_Dados.zqry_EQPRODUTO.Params.Clear;
dm_Dados.zqry_eqproduto.close;
dm_Dados.zqry_EQPRODUTO.SQL.Clear;
dm_Dados.zqry_EQPRODUTO.SQL.Add('select * from eqproduto');
dm_Dados.zqry_EQPRODUTO.Open;
//
dm_dados.zqry_EQALMOX.Cancel;
dm_Dados.zqry_EQALMOX.Params.Clear;
dm_dados.zqry_EQALMOX.Close;
dm_Dados.zqry_EQALMOX.SQL.Clear;
dm_Dados.zqry_EQALMOX.SQL.Add('select * from eqalmox');
dm_Dados.zqry_EQALMOX.open;
//
dm_Dados.zqry_EQDEPOS.Cancel;
dm_Dados.zqry_EQDEPOS.Params.Clear;
dm_dados.zqry_EQDEPOS.Close;
dm_dados.zqry_EQDEPOS.SQL.clear;
dm_Dados.zqry_EQDEPOS.SQL.Add('select * from eqdepos');
dm_Dados.zqry_EQDEPOS.Open;
//
dm_Dados.zqry_EQSALDODEPOS.Cancel;
dm_Dados.zqry_EQSALDODEPOS.Params.Clear;
dm_dados.zqry_EQSALDODEPOS.Close;
dm_Dados.zqry_EQSALDODEPOS.SQL.Clear;
dm_Dados.zqry_EQSALDODEPOS.SQL.Add('select * from eqsaldodepos');
dm_Dados.zqry_EQSALDODEPOS.Open;
edt_BUSCAALMOX.Clear;
lbl_ALMOX.Caption:='';
edt_BUSCAPROD.Clear;
lbl_PRODUTO.Caption:='';
edt_LOTE.Clear;
edt_BUSCADEPOS.Clear;
lbl_DEPOSITO.Caption:='';
sld_estoque:=0;
qtd_atual:=0;
sld_lote:=0;
temlote:=0;
rg_BUSCA.ItemIndex:= -1;
end;

procedure Tfrm_CONCAD_SALDODEPOS.btn_BUSCAALMOXClick(Sender: TObject);
begin
  if edt_BUSCAALMOX.Text='' then
  begin
    MOSTRATELANOTIFICA('PREENCHIMENTO OBRIGATORIO','Favor informar valor');
    edt_BUSCAALMOX.Clear;
    edt_BUSCAALMOX.SetFocus;
  end
  else
  begin
    dm_dados.zqry_eqalmox.close;
    dm_Dados.zqry_eqalmox.sql.clear;
    dm_dados.zqry_eqalmox.sql.add('select * from eqalmox where codalmox=:almoxcod and codemp=99');
    dm_dados.zqry_EQALMOX.ParamByName('almoxcod').AsInteger:=strtoint(edt_BUSCAALMOX.Text);
    dm_dados.zqry_EQALMOX.Open;
    if dm_dados.zqry_EQALMOX.IsEmpty then
    begin
      showmessage('Atenção não foi localizada Almoxarifado com esse código'#13'Tab: EQALMOX');
      edt_BUSCAALMOX.Clear;
      edt_BUSCAALMOX.SetFocus;
    end
    else
    begin
      lbl_ALMOX.Caption:=dm_dados.zqry_EQALMOXDESCALMOX.AsString;
      edt_BUSCAPROD.Clear;
      edt_BUSCAPROD.SetFocus;
    end;
  end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.btn_BUSCADEPOSClick(Sender: TObject);
begin
  if edt_BUSCADEPOS.Text='' then
  begin
    MOSTRATELANOTIFICA('PREENCHIMENTO OBRIGATORIO','Favor informar valor');
    edt_BUSCAALMOX.Clear;
    edt_BUSCAALMOX.SetFocus;
  end
  else
  begin
    DM_dados.zqry_EQDEPOS.Params.Clear;
    dm_dados.zqry_EQDEPOS.Close;
    dm_Dados.zqry_EQDEPOS.SQL.Clear;
    dm_dados.zqry_EQDEPOS.SQL.Add('select * from eqdepos where coddepos=:deposcod');
    dm_Dados.zqry_EQDEPOS.ParamByName('deposcod').AsInteger:=strtoint(edt_BUSCADEPOS.Text);
    dm_dados.zqry_EQDEPOS.Open;
    if dm_Dados.zqry_EQDEPOS.IsEmpty then
    begin
      showmessage('Atenção não foi localizado Depósito com esse código'#13'Tab: EQDEPOS');
      edt_BUSCADEPOS.Clear;
      edt_BUSCADEPOS.SetFocus;
    end
    else
    begin
      lbl_DEPOSITO.Caption:=dm_Dados.zqry_EQDEPOSDESCDEPOS.AsString;
      btn_PROCESSAR.SetFocus;
    end;
  end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.btn_BUSCAPRODClick(Sender: TObject);
begin
  if edt_BUSCAPROD.Text='' then
  begin
    MOSTRATELANOTIFICA('PREENCHIMENTO OBRIGATORIO','Favor informar valor');
    edt_BUSCAPROD.Clear;
    edt_BUSCAPROD.SetFocus;
  end
  else
  begin
    dm_Dados.zqry_eqproduto.close;
    dm_Dados.zqry_eqproduto.sql.clear;
    dm_dados.zqry_eqproduto.sql.add('select * from eqproduto where codprod=:prodcod and codemp=99');
    dm_dados.zqry_EQproduto.ParamByName('prodcod').AsInteger:=strtoint(edt_BUSCAPROD.Text);
    dm_dados.zqry_EQproduto.Open;
    sld_estoque:=dm_dados.zqry_EQPRODUTOSLDPROD.AsFloat;
    if dm_dados.zqry_EQproduto.IsEmpty then
    begin
      showmessage('Atenção não foi localizado Produto com esse código'#13'Tab: EQPRODUTO');
      edt_BUSCAPROD.Clear;
      edt_BUSCAPROD.SetFocus;
    end
    else
    begin
      dm_dados.zqry_EQSALDOPROD.Close;
      dm_dados.zqry_EQSALDOPROD.sql.clear;
      dm_dados.zqry_EQSALDOPROD.sql.add('select * from eqsaldoprod where codprod=:prodcod and codalmox=:almoxcod');
      dm_dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_BUSCAPROD.Text);
      dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_BUSCAALMOX.text);
      dm_dados.zqry_EQSALDOPROD.Open;
      if dm_dados.zqry_EQSALDOPROD.IsEmpty then
      begin
        showmessage('Não existe movimento desse produto no almoxarifado informado'#13'Tab: EQSALDOPROD');
        edt_BUSCAPROD.Clear;
        edt_BUSCAPROD.SetFocus;
      end
      else
      begin
        edt_Qtd.Clear;
        edt_qtd.SetFocus;
        qtd_atual:=dm_dados.zqry_EQSALDOPRODSLDPROD.AsFloat;
        lbl_PRODUTO.Caption:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
        dm_dados.zqry_EQSALDOPROD.Close;
        dm_dados.zqry_EQSALDOPROD.sql.clear;
        dm_dados.zqry_EQSALDOPROD.sql.add('select * from eqsaldoprod where codprod=:prodcod and codalmox=:almoxcod');
        dm_Dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_BUSCAPROD.Text);
        dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_BUSCAALMOX.text);
        dm_dados.zqry_EQSALDOPROD.Open;
        if dm_dados.zqry_EQSALDOPROD.IsEmpty then
        begin
          //lbl_sld_dest.Caption:='0';
        end
        else
        begin
          zqry_sldeqlote.params.clear;
          zqry_SLDEQlote.Close;
          zqry_sldeqlote.SQL.Clear;
          zqry_sldeqlote.SQL.Add('select * from eqlote where codprod=:sldeqprod and codemp=:empcod order by venctolote desc');
          zqry_SLDEQlote.ParamByName('sldeqprod').AsInteger:=dm_dados.zqry_eqprodutocodprod.asinteger;
          zqry_sldeqlote.ParamByName('empcod').AsInteger:=dm_dados.codemp;
          zqry_sldeqlote.Open;
          if zqry_SLDEQLOTE.IsEmpty then
          begin
            temlote:=0;
            edt_QTD.SetFocus;
            edt_QTD.Clear;
          end
          else
          begin
            temlote:=1;
            sld_lote:=zqry_SLDEQLOTESLDLOTE.AsFloat;
            MOSTRATELANOTIFICA('SELECIONE UM LOTE','Clique na grade para escolher');
          end;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.btn_PROCESSARClick(Sender: TObject);
begin
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(codtrandepos) as Item FROM eqsaldodepos');
zquery1.Open;
//
dm_Dados.zqry_EQSALDODEPOS.Params.Clear;
dm_Dados.zqry_EQSALDODEPOS.Close;
dm_Dados.zqry_EQSALDODEPOS.Open;
dm_Dados.zqry_EQSALDODEPOS.Append;
dm_Dados.zqry_EQSALDODEPOSCODTRANDEPOS.AsInteger:=(1+zquery1.FieldByname('item').asInteger);
dm_dados.zqry_EQSALDODEPOSCODEMP.AsInteger:=99;
dm_Dados.zqry_EQSALDODEPOSCODFILIAL.AsInteger:=1;
dm_Dados.zqry_EQSALDODEPOSCODDEPOS.AsInteger:=dm_DADOS.zqry_EQDEPOSCODDEPOS.AsInteger;
dm_dados.zqry_EQSALDODEPOSCODPROD.AsInteger:=strtoint(edt_BUSCAPROD.Text);
if temlote=1 then
begin
  dm_DADOS.zqry_EQSALDODEPOSCODLOTE.AsString:=edt_LOTE.Text;
  dm_Dados.zqry_EQSALDODEPOSSLDLOTE.AsFloat:=strtofloat(edt_QTD.Text);
  dm_dados.zqry_EQSALDODEPOSDTVENCLOTE.AsDateTime:=zqry_SLDEQLOTEVENCTOLOTE.AsDateTime;
end;
dm_Dados.zqry_EQSALDODEPOSSLDPROD.AsFloat:=strtofloat(edt_QTD.Text);
dm_Dados.zqry_EQSALDODEPOSDTINS.AsDateTime:=date;
dm_dados.zqry_EQSALDODEPOSHINS.AsDateTime:=time;
dm_Dados.zqry_EQSALDODEPOSIDUSUINS.AsString:='sysdba';
dm_dados.zqry_EQSALDODEPOS.Post;
dm_Dados.zqry_EQSALDODEPOS.ApplyUpdates;

  //saldoprod
  dm_dados.zqry_eqsaldoprod.close;
  dm_Dados.zqry_EQSALDOPROD.sql.clear;
  dm_dados.zqry_eqsaldoprod.sql.add('update eqsaldoprod set sldprod=:prodsld where codalmox=:almoxcod');
  dm_dados.zqry_EQSALDOPROD.ParamByName('prodsld').AsFloat:=qtd_atual-strtofloat(edt_QTD.Text);
  dm_dados.zqry_eqsaldoprod.params.parambyname('almoxcod').asinteger:=strtoint(edt_BUSCAALMOX.Text);
  dm_Dados.zqry_eqsaldoprod.execsql;
  //eqproduto
  dm_dados.executasginiconsp;
  dm_Dados.zqry_EQPRODUTO.Close;
  dm_Dados.zqry_EQPRODUTO.SQL.Clear;
  dm_dados.zqry_EQPRODUTO.SQL.Add('update eqproduto set sldprod=:prodsld where codprod=:prodcod and codemp=:empcod');
  dm_Dados.zqry_EQPRODUTO.ParamByName('prodsld').AsFloat:=sld_estoque-strtofloat(edt_QTD.Text);
  dm_Dados.zqry_eqproduto.ParamByName('prodcod').AsInteger:=strtoint(edt_BUSCAPROD.Text);
  dm_dados.zqry_EQPRODUTO.ParamByName('empcod').AsInteger:=99;
  dm_Dados.zqry_EQPRODUTO.ExecSQL;
  if temlote=1 then
  begin
    zqry_SLDEQLOTE.Params.Clear;
    zqry_SLDEQLOTE.Close;
    zqry_SLDEQLOTE.SQL.Clear;
    zqry_SLDEQLOTE.SQL.Add('update eqlote set sldlote=:saldo where codprod=:prodcod and codlote=:lote and codemp=:empcod');
    zqry_SLDEQLOTE.ParamByName('saldo').AsFloat:=sld_lote-StrToFloat(edt_QTD.text);
    zqry_SLDEQLOTE.ParamByName('prodcod').AsInteger:=strtoint(edt_BUSCAPROD.Text);
    zqry_SLDEQLOTE.ParamByName('lote').AsString:=edt_LOTE.text;
    zqry_SLDEQLOTE.ParamByName('empcod').AsInteger:=dm_dados.codemp;
    zqry_SLDEQLOTE.ExecSQL;
  end;
  MOSTRATELANOTIFICA('TRANSFERENCIA REALIZADA','');
  FECHACONEXOES;
end;

procedure Tfrm_CONCAD_SALDODEPOS.dbgrid_LOTECellClick(Column: TColumn);
begin
edt_LOTE.Text:=zqry_SLDEQLOTECODLOTE.AsString;
edt_QTD.SetFocus;

end;

procedure Tfrm_CONCAD_SALDODEPOS.edt_BUSCAALMOXKeyPress(Sender: TObject;
  var Key: Char);
begin
IF (key=#13) then btn_BUSCAALMOXclick(Self);
end;

procedure Tfrm_CONCAD_SALDODEPOS.edt_BUSCADEPOSKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#13) then btn_BUSCADEPOSClick(Sender);
end;

procedure Tfrm_CONCAD_SALDODEPOS.edt_BUSCAPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#13) then btn_BUSCAPRODClick(Self);
end;

procedure Tfrm_CONCAD_SALDODEPOS.edt_QTDExit(Sender: TObject);
begin
  if (temlote=1) and (edt_LOTE.Text='') then
  begin
    showmessage('Necessário selecionar um lote');
    dbgrid_LOTE.SetFocus;
  end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.edt_QTDKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key=#13) then edt_BUSCADEPOS.SetFocus;
end;

procedure Tfrm_CONCAD_SALDODEPOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
edt_BUSCAPROD.clear;
edt_BUSCAALMOX.Clear;
lbl_ALMOX.Caption:='';
lbl_PRODUTO.Caption:='';
end;

procedure Tfrm_CONCAD_SALDODEPOS.FormShow(Sender: TObject);
begin
dm_dados.zqry_EQDEPOS.Params.Clear;
dm_dados.zqry_EQDEPOS.SQL.Clear;
dm_dados.zqry_EQDEPOS.SQL.Add('select * from eqdepos order by descdepos');
dm_Dados.zqry_EQDEPOS.Open;
PageControl1.ActivePage:=TabSheet1;
end;

procedure Tfrm_CONCAD_SALDODEPOS.msk_PESQUISAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then sp_BUSCAClick(Sender);
end;

procedure Tfrm_CONCAD_SALDODEPOS.rg_BUSCAClick(Sender: TObject);
begin
case rg_BUSCA.ItemIndex of
    0:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='ORDENANDO POR CÓDIGO';
      msk_PESQUISA.Visible:=False;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=False;
      MostraTelaAguarde('Consultando Informações');
      dm_dados.zqry_eqsaldodepos.Params.Clear;
      dm_dados.zqry_eqsaldodepos.close;
      dm_dados.zqry_eqsaldodepos.sql.Clear;
      dm_dados.zqry_eqsaldodepos.sql.Add('SELECT * FROM eqsaldodepos where codemp=:empcod');
      dm_dados.zqry_eqsaldodepos.ParamByName('empcod').asinteger:=dm_dados.codemp;
      dm_dados.zqry_eqsaldodepos.Open;
      FechaTelaAguarde;
    end;
    1:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA POR CÓDIGO';
      msk_PESQUISA.Visible:=TRUE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA.Clear;
      msk_PESQUISA.SetFocus;
      msk_PESQUISA.EditMask:='';
      script:='CODPROD=:PRODCOD';
      parametro1:='PRODCOD';
      instrucao:='';
    end;
    2:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA POR DEPÓSITO';
      msk_PESQUISA.Visible:=TRUE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA.Clear;
      msk_PESQUISA.SetFocus;
      msk_PESQUISA.EditMask:='';
      script:='CODDEPOS=:DEPOSCOD';
      parametro1:='DEPOSCOD';
      instrucao:='';
    end;
    3:begin
      FECHACONEXOES;
      LBL_PESQUISA.Caption:='CONSULTA POR LOTE';
      msk_PESQUISA.Visible:=TRUE;
      ENTRE:='N';
      OUTROBT:='N';
      sp_BUSCA.Visible:=TRUE;
      msk_PESQUISA.Clear;
      msk_PESQUISA.SetFocus;
      msk_PESQUISA.EditMask:='';
      script:='CODLOTE=:LOTECOD';
      parametro1:='LOTECOD';
      instrucao:='';
    end;
end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.sp_BUSCAClick(Sender: TObject);
begin
 Application.ProcessMessages;
  if msk_PESQUISA.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','');
    msk_PESQUISA.Clear;
    msk_PESQUISA.SetFocus;
  end
  else
  begin
    if OUTROBT='N' then BUSCASALDO; // ou b.OnClick(b);
  end;
end;

procedure Tfrm_CONCAD_SALDODEPOS.BuscaSaldo;
begin
MostraTelaAguarde('Consultando Informações');
dm_Dados.zdts_EQSALDOPROD.DataSet:=nil;
dm_dados.zqry_eqsaldodepos.Params.Clear;
dm_dados.zqry_EQSALDODEPOS.Close;
dm_dados.zqry_EQSALDODEPOS.SQL.Clear;
dm_dados.zqry_EQSALDODEPOS.sql.Add('SELECT * FROM eqsaldodepos WHERE CODEMP=:EMPCOD AND '+SCRIPT);//quotedstr(script);
dm_dados.zqry_EQSALDODEPOS.ParamByName(parametro1).value:=instrucao+msk_pesquisa.Text+instrucao;
//if ENTRE='S' then dm_dados.zqry_EQSALDODEPOS.ParamByName(parametro2).value:=instrucao+msk_pesquisa2.Text+instrucao;
dm_dados.zqry_EQSALDODEPOS.ParamByName('empcod').asinteger:=dm_dados.codemp;
dm_dados.zqry_EQSALDODEPOS.Open;
if dm_dados.zqry_eqsaldodepos.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: eqsaldodepos');
FechaTelaAguarde;
LBL_PESQUISA.Caption:='';
msk_PESQUISA.Visible:=False;
ENTRE:='N';
sp_BUSCA.Visible:=False;
dm_Dados.zdts_EQSALDOPROD.DataSet:=dm_Dados.zqry_EQSALDOPROD;
end;

end.
