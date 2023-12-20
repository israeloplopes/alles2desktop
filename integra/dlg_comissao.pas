unit dlg_comissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, uFuncoes, Vcl.ExtCtrls, Vcl.DBCtrls,
  Data.DB, Datasnap.Provider, Datasnap.DBClient, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_DLG_COMISSAO = class(TForm)
    PageControl1: TPageControl;
    ts_ATENDENTE: TTabSheet;
    ts_VENDEDOR: TTabSheet;
    GroupBox1: TGroupBox;
    msk_DTINICIO: TMaskEdit;
    msk_DTFIM: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_CODATENDE: TEdit;
    Label3: TLabel;
    btn_BUSCAATENDE: TBitBtn;
    lbl_NOMEATENDE: TLabel;
    btn_BUSCAVENDA: TBitBtn;
    DBGrid1: TDBGrid;
    btn_BUSCASEMATENDE: TBitBtn;
    Label7: TLabel;
    edt_VLRPAGARCOMI: TEdit;
    Label8: TLabel;
    edt_VLRTOTALCOMI: TEdit;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    edt_CODVENDE: TEdit;
    btn_BUSCAVENDE: TBitBtn;
    Label11: TLabel;
    msk_INICIO: TMaskEdit;
    Label12: TLabel;
    msk_FIM: TMaskEdit;
    btn_BUSCACOMISSAO: TBitBtn;
    lbl_NOMEVENDE: TLabel;
    GroupBox2: TGroupBox;
    edt_CODPED: TEdit;
    Label13: TLabel;
    btn_BUSCAPED: TBitBtn;
    btn_GRAVARCOMISSAO: TBitBtn;
    edt_CODVENDEDOR: TEdit;
    edt_DATAVENDA: TEdit;
    edt_VLRVENDA: TEdit;
    edt_VLRAPAGAR: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edt_DEDUCOES: TEdit;
    edt_ESTORNOS: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    zdts_COMISSAO: TDataSource;
    Label20: TLabel;
    gbBOX_QUITACAO: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    dblook_PLANOCONTA: TDBLookupComboBox;
    dblook_CENTROCUSTO: TDBLookupComboBox;
    dblook_CONTAS: TDBLookupComboBox;
    edt_DATAPAGTO: TEdit;
    edt_DOCPAGTO: TEdit;
    btn_PROCESSAPAGTO: TBitBtn;
    gbBOX_DESCRITIVO: TGroupBox;
    GroupBox3: TGroupBox;
    dts_SEQCI: TDataSource;
    zqry_SGINICONSP: TZQuery;
    zqry_COMISSAO: TZQuery;
    zqry_SEQCI: TZQuery;
    zqry_SEQCICODEMP: TIntegerField;
    zqry_SEQCICODFILIAL: TSmallintField;
    zqry_SEQCISGTAB: TWideStringField;
    zqry_SEQCINROSEQ: TIntegerField;
    zqry_SEQCIDTINS: TDateField;
    zqry_SEQCIHINS: TTimeField;
    zqry_SEQCIIDUSUINS: TWideStringField;
    zqry_SEQCIDTALT: TDateField;
    zqry_SEQCIHALT: TTimeField;
    zqry_SEQCIIDUSUALT: TWideStringField;
    zqry_COMISSAOCODCOMI: TIntegerField;
    zqry_COMISSAOCODVEND: TIntegerField;
    zqry_COMISSAOSTATUSCOMI: TWideStringField;
    zqry_COMISSAOCODREC: TIntegerField;
    zqry_COMISSAOVLRPAGOCOMI: TFloatField;
    zqry_COMISSAODTPAGTOCOMI: TDateField;
    zqry_COMISSAODATACOMI: TDateField;
    zqry_COMISSAONPARCITREC: TIntegerField;
    zqry_COMISSAOVLRVENDACOMI: TFloatField;
    zqry_COMISSAOVLRCOMI: TFloatField;
    zqry_COMISSAONOMEVEND: TWideStringField;
    zqry_COMISSAOCODVENDA: TIntegerField;
    zqry_COMISSAORAZCLI: TWideStringField;
    btn_VENDEDOR_LIMPAR: TBitBtn;
    BitBtn1: TBitBtn;
    btn_IMPRIMIR: TBitBtn;
    gb_TOTAL_ATENDENTE: TGroupBox;
    edt_VLRTOTAL: TEdit;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    edt_VLRPAGAR: TEdit;
    Label6: TLabel;
    Label26: TLabel;
    zqry_COMISSAOVLRPAGOREC: TFloatField;
    zqry_COMISSAOVLRAPAGREC: TFloatField;
    Label27: TLabel;
    Label28: TLabel;
    edt_DISPONIVEL: TEdit;
    edt_PAGAS: TEdit;
    procedure btn_BUSCAATENDEClick(Sender: TObject);
    procedure ts_ATENDENTEEnter(Sender: TObject);
    procedure ts_VENDEDOREnter(Sender: TObject);
    procedure btn_BUSCAVENDAClick(Sender: TObject);
    procedure btn_BUSCASEMATENDEClick(Sender: TObject);
    procedure btn_IMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_BUSCAVENDEClick(Sender: TObject);
    procedure btn_BUSCACOMISSAOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure btn_BUSCAPEDClick(Sender: TObject);
    procedure btn_GRAVARCOMISSAOClick(Sender: TObject);
    procedure edt_CODVENDEKeyPress(Sender: TObject; var Key: Char);
    procedure msk_INICIOKeyPress(Sender: TObject; var Key: Char);
    procedure msk_FIMKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btn_PROCESSAPAGTOClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_CODATENDEKeyPress(Sender: TObject; var Key: Char);
    procedure btn_VENDEDOR_LIMPARClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vrtotal, vrtotalcomi, vlrapagar, vlrpagas, vlrtotalcomidesc: double;
  end;

var
  frm_DLG_COMISSAO: Tfrm_DLG_COMISSAO;

implementation

{$R *.dfm}

uses dados, rel_comi_atendente, rel_comi_vendedor;


procedure Tfrm_DLG_COMISSAO.btn_BUSCAVENDEClick(Sender: TObject);
begin
if edt_codvende.Text='' then
begin
  showmessage('Atenção'#13'Não foram informados valores para a busca');
  edt_codvende.Clear;
  edt_codvende.SetFocus;
  lbl_nomevende.Caption:='';
end
else
begin
  DM_dADOS.zQRY_vdvendedor.CLOSE;
  DM_DADOS.zQRY_vdvendedor.SQL.CLEAR;
  DM_DADOS.zQRY_vdvendedor.SQL.ADD('SELECT * FROM vdvendedor WHERE CODVEND=:VENDCOD and codemp=:empcod ');
  DM_DADOS.zQRY_vdvendedor.PARAMBYNAME('VENDCOD').ASINTEGER:=STRTOINT(EDT_CODVENDE.Text);
  dm_Dados.zqry_VDVENDEDOR.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
 // dm_DADOS.iQRY_vdvendedor.PARAMBYNAME('EMPCOD').ASINTEGER:=dm_DADOS.CODEMP;
  DM_DADOS.zqry_vdvendedor.OPEN;
  if dm_dados.zqry_VDVENDEDOR.IsEmpty then
  begin
    showmessage('Atenção!!!'#13'Não foram localizadas informações para esse parâmetro'#13'tab: VDVENDEDOR');
    edt_codvende.Clear;
    edt_codvende.setfocus;
    lbl_nomevende.Caption:='';
  end
  else
  begin
    LBL_NOMEvende.Caption:=trim(DM_DADOS.zqry_vdvendedornomevend.AsString);
    msk_INICIO.SetFocus;
  end;
end;
end;

procedure Tfrm_DLG_COMISSAO.btn_BUSCAPEDClick(Sender: TObject);
begin
if edt_CODPED.Text='' then
begin
  showmessage('Atenção'#13'Não foi informado valor para a busca');
  edt_Codped.Clear;
  edt_codped.SetFocus;
end
else
begin
  dm_dados.zqry_FNRECEBER.Close;
  dm_dados.zqry_FNRECEBER.SQL.Clear;
  dm_Dados.zqry_FNRECEBER.SQL.Add('select * from fnreceber where codvenda=:vendacod and codemp=:empcod');
  dm_Dados.zqry_FNRECEBER.ParamByName('vendacod').AsInteger:=strtoint(edt_codped.Text);
  dm_Dados.zqry_FNRECEBER.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
  dm_Dados.zqry_FNRECEBER.Open;
  if dm_DADOS.zqry_FNRECEBER.IsEmpty then
  begin
    showmessage('Atenção'#13'Nenhum valor encontrado com base no campo de busca'#13'tab: fnreceber');
    edt_codped.Clear;
    edt_codped.SetFocus;
  end
  else
  begin
    dm_Dados.zqry_VDCOMISSAO.Close;
    dm_dados.zqry_VDCOMISSAO.SQL.Clear;
    dm_Dados.zqry_VDCOMISSAO.SQL.Add('select * from vdcomissao where codrec=:reccod and codemp=:empcod');
    dm_Dados.zqry_VDCOMISSAO.ParamByName('reccod').AsInteger:=dm_Dados.zqry_FNRECEBERCODREC.AsInteger;
    dm_Dados.zqry_VDCOMISSAO.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
    dm_Dados.zqry_VDCOMISSAO.Open;
    if dm_dados.zqry_VDCOMISSAO.IsEmpty then
    begin
      showmessage('Não foi localizada Comissão para este Pedido');
    end
    else
    begin
      edt_CODVENDEDOR.Text:=dm_Dados.zqry_VDCOMISSAOCODVEND.AsString;
      edt_DATAVENDA.Text:=dm_dados.zqry_VDCOMISSAODATACOMI.AsString;
      edt_VLRVENDA.Text:=formatfloat('##0.0000',dm_dados.zqry_VDCOMISSAOVLRVENDACOMI.asfloat);
      edt_VLRAPAGAR.Text:=formatfloat('##0.0000',dm_Dados.zqry_VDCOMISSAOVLRAPAGCOMI.asfloat);
      edt_vlrapagar.SetFocus;
      //dm_Dados.cds_VDCOMISSAO.Edit;
    end;
  end;
end;
end;

procedure Tfrm_DLG_COMISSAO.btn_GRAVARCOMISSAOClick(Sender: TObject);
var
rec:integer;
begin
rec:=dm_dados.zqry_VDCOMISSAOCODREC.AsInteger;
dm_Dados.zqry_VDCOMISSAO.close;
dm_Dados.zqry_VDCOMISSAO.SQL.Clear;
dm_Dados.zqry_VDCOMISSAO.SQL.Add('update vdcomissao set vlrcomi=:valor where codrec=:reccod');
dm_Dados.zqry_VDCOMISSAO.ParamByName('reccod').AsInteger:=rec;
dm_Dados.zqry_VDCOMISSAO.ParamByName('valor').value:=strtofloat(edt_VLRAPAGAR.Text);
dm_Dados.zqry_VDCOMISSAO.execsql;
edt_CODPED.Clear;
dm_Dados.zqry_VDCOMISSAO.Close;
edt_CODVENDEDOR.Clear;
edt_DATAVENDA.Clear;
edt_VLRVENDA.Clear;
edt_VLRAPAGAR.Clear;
showmessage('Valores Gravados com sucesso');
 zqry_comissao.Params.Clear;
  zqry_comissao.SQL.Clear;
  zqry_comissao.SQL.add('select comi.codcomi,comi.codvend, comi.statuscomi,comi.codrec,comi.VLRPAGOCOMI, comi.dtpagtocomi,comi.datacomi,comi.nparcitrec,comi.vlrvendacomi,comi.vlrcomi,vend.nomevend,rec.codvenda,cli.razcli from vdcomissao comi');
  zqry_comissao.SQL.Add('inner join vdvendedor   vend    on comi.codvend=vend.codvend');
  zqry_comissao.SQL.Add('inner join fnreceber    rec     on comi.codrec=rec.codrec');
  zqry_comissao.SQL.Add('inner join vdcliente    cli     on rec.codcli=cli.codcli');
  zqry_comissao.SQL.Add('where comi.codemp=:empcod and comi.codemp=vend.codemp and comi.codemp=rec.codemp and rec.codemp=cli.codemp and comi.codvend=:vendedor and comi.datacomi between :inicio and :fim order by comi.codrec, comi.nparcitrec, comi.codvend');
  zqry_COMISSAO.ParamByName('inicio').asdate:=strtodate(msk_INICIO.text);
  zqry_COMISSAO.ParamByName('fim').asdate:=strtodate(msk_FIM.text);
  zqRY_COMISSAO.ParamByName('vendedor').AsInteger:=STRTOINT(edt_CODVENDE.Text);
  zqry_comissao.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_comissao.Open;  zqry_COMISSAO.Open;
  if zqry_COMISSAO.IsEmpty then
  begin
    showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: vdcomissao');
  end
  else
  begin
    begin
    with zqry_comissao do
    begin
      first;
      vrtotalcomi:= 0;
      vlrapagar:=0;
      while not eof do
      begin
        vrtotalcomi:= vrtotalcomi+zqry_comissaovlrvendacomi.AsFloat;
        vlrapagar:=vlrapagar+zqry_COMISSAOVLRCOMI.AsFloat;
        next;
      end;
      first;
    end;
    edt_VLRTOTALCOMI.Text:=formatfloat('##0.00',vrtotalcomi);
    edt_VLRPAGARCOMI.Text:=formatfloat('##0.0000',vlrapagar);
  end;
  end;
end;

procedure Tfrm_DLG_COMISSAO.BitBtn1Click(Sender: TObject);
begin
frm_rel_comis_vendedor.rlreport1.preview();
end;

procedure Tfrm_DLG_COMISSAO.BitBtn2Click(Sender: TObject);
begin
frm_rel_comis_atendente.rlreport1.preview();
end;

procedure Tfrm_DLG_COMISSAO.btn_BUSCAATENDEClick(Sender: TObject);
begin
if edt_codatende.Text='' then
begin
  showmessage('Atenção'#13'Não foram informados valores para a busca');
  edt_codatende.Clear;
  edt_codatende.SetFocus;
  lbl_nomeatende.Caption:='';
end
else
begin
  DM_dADOS.zqry_ATATENDENTE.CLOSE;
  DM_DADOS.zqry_ATATENDENTE.SQL.CLEAR;
  DM_DADOS.zqry_ATATENDENTE.SQL.ADD('SELECT * FROM ATATENDENTE WHERE CODATEND=:ATENDCOD AND CODEMP=:EMPCOD');
  DM_DADOS.zqry_ATATENDENTE.PARAMBYNAME('ATENDCOD').ASINTEGER:=STRTOINT(EDT_CODATENDE.Text);
  dm_DADOS.zqry_ATATENDENTE.PARAMBYNAME('EMPCOD').ASINTEGER:=dm_DADOS.CODEMP;
  DM_DADOS.zQRY_ATATENDENTE.OPEN;
  if dm_dados.zqry_ATATENDENTE.IsEmpty then
  begin
    showmessage('Atenção!!!'#13'Não foram localizadas informações para esse parâmetro'#13'tab: ATATENDENTE');
    edt_codatende.Clear;
    edt_codatende.setfocus;
    lbl_nomeatende.Caption:='';
  end
  else
  begin
    LBL_NOMEATENDE.Caption:=DM_DADOS.zqry_ATATENDENTENOMEATEND.AsString;
  end;
end;
end;

procedure Tfrm_DLG_COMISSAO.btn_BUSCACOMISSAOClick(Sender: TObject);
begin
dm_Dados.zqry_VDCOMISSAO.close;
dm_Dados.zqry_vdcomissao.open;
DBGrid2.Canvas.Brush.Color:= clwindow;
dbgrid2.Canvas.Font.Color:=clblack;
DBGrid2.Canvas.Font.Style := [];
mostratelaaguarde('Consultando Comissões');
if LBL_NOMEVENDE.Caption='' then
begin
  zqry_comissao.Params.Clear;
  zqry_comissao.SQL.Clear;
  zqry_comissao.SQL.add('select comi.codcomi,comi.codvend, comi.statuscomi,comi.codrec,comi.VLRPAGOCOMI, comi.dtpagtocomi,comi.datacomi,comi.nparcitrec,comi.vlrvendacomi,comi.vlrcomi,vend.nomevend,rec.codvenda,cli.razcli, rec.vlrpagorec, rec.vlrapagrec from vdcomissao comi');
  zqry_comissao.SQL.Add('inner join vdvendedor   vend    on comi.codvend=vend.codvend');
  zqry_comissao.SQL.Add('inner join fnreceber    rec     on comi.codrec=rec.codrec');
  zqry_comissao.SQL.Add('inner join vdcliente    cli     on rec.codcli=cli.codcli');
  zqry_comissao.SQL.Add('where comi.codemp=:empcod and comi.codemp=vend.codemp and comi.codemp=rec.codemp and rec.codemp=cli.codemp and comi.datacomi between :inicio and :fim order by comi.codrec, comi.nparcitrec, comi.codvend');
  zqry_COMISSAO.ParamByName('inicio').asdate:=strtodate(msk_INICIO.text);
  zqry_COMISSAO.ParamByName('fim').asdate:=strtodate(msk_FIM.text);
  zqry_comissao.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_comissao.Open;
  if zqry_COMISSAO.IsEmpty then
  begin
    showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: vdcomissao');
  end
  else
  begin
    begin
    with zqry_comissao do
    begin
      first;
      vrtotalcomi:= 0;
      vlrapagar:=0;
      vlrpagas:=0;
      vlrtotalcomidesc:=0;
      while not eof do
      begin
        vrtotalcomi:= vrtotalcomi+zqry_comissaovlrvendacomi.AsFloat;
        vlrapagar:=vlrapagar+zqry_COMISSAOVLRCOMI.AsFloat;
        if zqry_COMISSAOVLRAPAGREC.ASFLOAT=0 then
        begin
          vlrpagas:=vlrpagas+zqry_COMISSAOVLRPAGOREC.asfloat;
        end;
        if zqry_comissaovlrapagrec.ASFLOAT=0 then
        begin
          vlrtotalcomidesc:=vlrtotalcomidesc++zqry_comissaovlrvendacomi.AsFloat;
        end;
        next;
      end;
      first;
    end;
    edt_VLRTOTALCOMI.Text:=formatfloat('##0.00',vrtotalcomi);
    edt_VLRPAGARCOMI.Text:=formatfloat('##0.0000',vlrapagar);
    edt_PAGAS.Text:=formatfloat('##0.0000',vlrpagas);
    edt_DISPONIVEL.Text:=formatfloat('##0.0000',vlrtotalcomidesc);
  end;
  end;
end
else
begin
  zqry_comissao.Params.Clear;
  zqry_comissao.SQL.Clear;
  zqry_comissao.SQL.add('select comi.codcomi,comi.codvend, comi.statuscomi,comi.codrec,comi.VLRPAGOCOMI, comi.dtpagtocomi,comi.datacomi,comi.nparcitrec,comi.vlrvendacomi,comi.vlrcomi,vend.nomevend,rec.codvenda,cli.razcli, rec.vlrpagorec, rec.vlrapagrec from vdcomissao comi');
  zqry_comissao.SQL.Add('inner join vdvendedor   vend    on comi.codvend=vend.codvend');
  zqry_comissao.SQL.Add('inner join fnreceber    rec     on comi.codrec=rec.codrec');
  zqry_comissao.SQL.Add('inner join vdcliente    cli     on rec.codcli=cli.codcli');
  zqry_comissao.SQL.Add('where comi.codemp=:empcod and comi.codemp=vend.codemp and comi.codemp=rec.codemp and rec.codemp=cli.codemp and comi.codvend=:vendedor and comi.datacomi between :inicio and :fim order by comi.codrec, comi.nparcitrec, comi.codvend');
  zqry_COMISSAO.ParamByName('inicio').asdate:=strtodate(msk_INICIO.text);
  zqry_COMISSAO.ParamByName('fim').asdate:=strtodate(msk_FIM.text);
  zqRY_COMISSAO.ParamByName('vendedor').AsInteger:=STRTOINT(edt_CODVENDE.Text);
  zqry_comissao.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_comissao.Open;  zqry_COMISSAO.Open;
  if zqry_COMISSAO.IsEmpty then
  begin
    showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: vdcomissao');
  end
  else
  begin
    begin
    with zqry_comissao do
    begin
      first;
      vrtotalcomi:= 0;
      vlrapagar:=0;
      vlrpagas:=0;
      vlrtotalcomidesc:=0;
      while not eof do
      begin
        vrtotalcomi:= vrtotalcomi+zqry_comissaovlrvendacomi.AsFloat;
        vlrapagar:=vlrapagar+zqry_COMISSAOVLRCOMI.AsFloat;
        if zqry_COMISSAOVLRAPAGREC.ASFLOAT=0 then
        begin
          vlrpagas:=vlrpagas+zqry_COMISSAOVLRPAGOREC.asfloat;
        end;
        if zqry_comissaovlrapagrec.ASFLOAT=0 then
        begin
          vlrtotalcomidesc:=vlrtotalcomidesc++zqry_comissaovlrvendacomi.AsFloat;
        end;
        next;
      end;
      first;
    end;
    edt_VLRTOTALCOMI.Text:=formatfloat('##0.00',vrtotalcomi);
    edt_VLRPAGARCOMI.Text:=formatfloat('##0.0000',vlrapagar);
    edt_PAGAS.Text:=formatfloat('##0.0000',vlrpagas);
    edt_DISPONIVEL.Text:=formatfloat('##0.0000',vlrtotalcomidesc);
  end;
end;
end;
fechatelaaguarde;
dblook_CONTAS.ListSource:=dm_DADOS.zdts_FNCONTA;
dblook_CENTROCUSTO.ListSource:=dm_DADOS.zdts_FNCC;
dblook_PLANOCONTA.ListSource:=dm_DADOS.zdts_FNPLANEJAMENTO;
end;

procedure Tfrm_DLG_COMISSAO.btn_BUSCASEMATENDEClick(Sender: TObject);
begin
mostratelaaguarde('Consultando Vendas');
dm_dados.zqry_VDVENDA.Close;
dm_dados.zqry_VDVENDA.SQL.Clear;
dm_Dados.zqry_VDVENDA.SQL.Add('select * from vdvenda where dtsaidavenda between :dtinicio and :dtfim and codemp=:empcod and codtipomov=601 and vlrliqvenda>0 and codatend.isnull');
dm_Dados.zqry_VDVENDA.ParamByName('dtinicio').value:=msk_DTINICIO.Text;
dm_Dados.zqry_VDVENDA.ParamByName('dtfim').value:=msk_DTFIM.Text;
dm_Dados.zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_dados.zqry_VDVENDA.Open;
if dm_dados.zqry_VDVENDA.IsEmpty then
begin
  showmessage('Atenção'#13'Não existem que coincidem com a busca'#13'tab: vdvenda');
end
else
begin
  with dm_Dados.zqry_VDVENDA do
  begin
    first;
    vrtotal:= 0;
    while not eof do
    begin
      vrtotal:= vrtotal+dm_dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
      next;
    end;
    first;
  end;
  edt_VLRTOTAL.Text:=formatfloat('##0.00',vrtotal);
  edt_VLRPAGAR.Text:='0.00';
end;
fechatelaaguarde;
end;

procedure Tfrm_DLG_COMISSAO.btn_BUSCAVENDAClick(Sender: TObject);
begin
if LBL_NOMEATENDE.Caption='' then
begin
  mostratelaaguarde('Consultando Vendas');
  dm_dados.zqry_VDVENDA.Close;
  dm_dados.Zqry_VDVENDA.SQL.Clear;
  dm_Dados.Zqry_VDVENDA.SQL.Add('select * from vdvenda where dtsaidavenda between :dtinicio and :dtfim and codemp=:empcod and codtipomov in(601,605) and vdcomercial= :comercial and vlrliqvenda>0');
  dm_Dados.Zqry_VDVENDA.ParamByName('dtinicio').AsDate:=strtodate(msk_DTINICIO.Text);
  dm_Dados.Zqry_VDVENDA.ParamByName('dtfim').asdate:=strtodate(msk_DTFIM.Text);
  dm_Dados.Zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.Zqry_VDVENDA.ParamByName('comercial').AsString:='S';
  dm_dados.zqry_VDVENDA.Open;
  if dm_dados.zqry_VDVENDA.IsEmpty then
  begin
    showmessage('Atenção'#13'Não existem que coincidem com a busca'#13'tab: vdvenda');
  end
  else
  begin
    with dm_Dados.zqry_VDVENDA do
    begin
      first;
      vrtotal:= 0;
      while not eof do
      begin
        vrtotal:= vrtotal+dm_dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
        next;
      end;
      first;
    end;
    edt_VLRTOTAL.Text:=formatfloat('##0.00',vrtotal);
    edt_VLRPAGAR.Text:='0.00';
  end;
  fechatelaaguarde;
end
else
begin
  mostratelaaguarde('Consultando Vendas por Atendente');
  dm_dados.zqry_VDVENDA.Close;
  dm_dados.Zqry_VDVENDA.SQL.Clear;
  dm_Dados.Zqry_VDVENDA.SQL.Add('select * from vdvenda where dtsaidavenda between :dtinicio and :dtfim and codemp=:empcod and codatend=:atendcod and codtipomov in(601,605) and vlrliqvenda>0 and vdcomercial= :comercial');
  dm_Dados.Zqry_VDVENDA.ParamByName('dtinicio').asdate:=strtodate(msk_DTINICIO.Text);
  dm_Dados.Zqry_VDVENDA.ParamByName('dtfim').asdate:=strtodate(msk_DTFIM.Text);
  dm_Dados.Zqry_VDVENDA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.Zqry_VDVENDA.ParamByName('atendcod').AsInteger:=dm_Dados.zqry_ATATENDENTECODATEND.AsInteger;
  dm_dados.Zqry_VDVENDA.ParamByName('comercial').AsString:='S';
  dm_dados.zqry_VDVENDA.Open;
  if dm_dados.zqry_VDVENDA.IsEmpty then
  begin
    showmessage('Atenção'#13'Não existem que coincidem com a busca'#13'tab: vdvenda');
  end
  else
  begin
    with dm_Dados.zqry_VDVENDA do
    begin
      first;
      vrtotal:= 0;
      while not eof do
      begin
        vrtotal:= vrtotal+dm_dados.zqry_VDVENDAVLRLIQVENDA.AsFloat;
        next;
      end;
      first;
    end;
    edt_VLRTOTAL.Text:=formatfloat('##0.00',vrtotal);
    edt_VLRPAGAR.Text:=formatfloat('##0.00',((vrtotal*0.5)/100));
  end;
  fechatelaaguarde;
end;

end;

procedure Tfrm_DLG_COMISSAO.btn_IMPRIMIRClick(Sender: TObject);
begin
frm_rel_comis_atendente.rlreport1.preview();
end;

procedure Tfrm_DLG_COMISSAO.btn_PROCESSAPAGTOClick(Sender: TObject);
var
  seqci,codvend,codlanca:integer;
  codplaneja,codconta,codcentro:string;
begin
codplaneja:=dm_Dados.zqry_FNPLANEJAMENTOCODPLAN.AsString;
//codvend:=zqry_COMISSAOCODVEND.asinteger;
codconta:=dm_DADOS.zqry_FNCONTANUMCONTA.AsString;
codcentro:=dm_Dados.zqry_FNCCCODCC.AsString;
if (codplaneja='') or (codconta='') or (codcentro='') then
begin
  showmessage('Atenção'#13'Há valores não informados'#13'Verifique Conta, Plano de Contas e Centro de Custos');
end
else
begin
  zqry_seqci.Close;
  zqry_seqci.SQL.Clear;
  zqry_seqci.SQL.Add('select * from sgsequencia where sgtab=''CI'' and codemp=:empcod');
  zqry_seqci.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_seqci.Open;
  seqci:=zqry_SEQCINROSEQ.AsInteger;
  //Consulta Conexao
  dm_Dados.EXECUTASGINICONSP;
  //Grava no Pagto de Comissao
  dm_dados.zqry_FNPAGTOCOMI.Close;
  dm_dados.zqry_FNPAGTOCOMI.Open;
  dm_Dados.zqry_FNPAGTOCOMI.append;
  dm_Dados.zqry_FNPAGTOCOMIcodemp.asinteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_FNPAGTOCOMICODEMPPN.AsInteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_FNPAGTOCOMICODEMPCA.AsInteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_FNPAGTOCOMICODEMPCC.ASINTEGER:=dm_DADOS.CODEMP;
  dm_Dados.zqry_FNPAGTOCOMICODFILIAL.AsInteger:=1;
  dm_DADOS.zqry_FNPAGTOCOMICODFILIALPN.AsInteger:=1;
  DM_dADOS.zqry_FNPAGTOCOMICODFILIALCA.AsInteger:=1;
  dm_Dados.zqry_FNPAGTOCOMICODFILIALCC.AsInteger:=1;
  dm_Dados.zqry_FNPAGTOCOMICODPCOMI.AsInteger:=seqci;
  dm_Dados.zqry_FNPAGTOCOMICODPLAN.AsString:=codplaneja;
  dm_Dados.zqry_FNPAGTOCOMINUMCONTA.AsString:=codconta;
  dm_Dados.zqry_FNPAGTOCOMICODCC.AsString:=codcentro;
  dm_Dados.zqry_FNPAGTOCOMIVLRPCOMI.AsFloat:=strtofloat(edt_VLRPAGARCOMI.Text);
  dm_dados.zqry_FNPAGTOCOMIDOCPCOMI.AsInteger:=strtoint(edt_DOCPAGTO.Text);
  dm_DADOS.zqry_FNPAGTOCOMIOBSPCOMI.AsString:='Pagto de Comissões Vendedor n.º: '+inttostr(codvend);
  dm_Dados.zqry_FNPAGTOCOMIDTCOMPPCOMI.AsDateTime:=date;
  dm_Dados.zqry_FNPAGTOCOMIDATAPCOMI.AsDateTime:=date;
  dm_Dados.zqry_FNPAGTOCOMIDTINS.AsDateTime:=date;
  dm_Dados.zqry_FNPAGTOCOMIDTALT.AsDateTime:=date;
  dm_Dados.zqry_FNPAGTOCOMIEMMANUT.AsString:='N';
  dm_dados.zqry_FNPAGTOCOMIHINS.AsDateTime:=time;
  dm_Dados.zqry_FNPAGTOCOMIIDUSUINS.AsString:='SYSDBA';
  DM_DADOS.zqry_FNPAGTOCOMIFLAG.AsString:='N';
  DM_DADOS.zqry_FNPAGTOCOMIIDUSUALT.AsString:='SYSDBA';
  DM_DADOS.zqry_FNPAGTOCOMIDTALT.AsDateTime:=DATE;
  DM_dADOS.zqry_FNPAGTOCOMIHALT.AsDateTime:=TIME;
  dm_Dados.zqry_FNPAGTOCOMI.Post;
  dm_Dados.zqry_FNPAGTOCOMI.ApplyUpdates();
  zqry_seqci.Close;
  zqry_Seqci.sql.clear;
  zqry_seqci.sql.add('update sgsequencia set nroseq=:seq where sgtab=:tabsg and codemp=:empcod');
  zqry_seqci.ParamByName('seq').asinteger:=seqci+1;
  zqry_seqci.ParamByName('tabsg').asstring:='CI';
  zqry_seqci.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_seqci.execsql;
  showmessage('Dados do Pagamento lançados com sucesso');


  zqry_comissao.first;
  while not zqry_COMISSAO.eof do
  begin
    zqry_comissao.edit;
    dm_dados.zqry_VDCOMISSAO.Close;
    dm_Dados.zqry_VDCOMISSAO.SQL.Clear;
    dm_Dados.zqry_VDCOMISSAO.SQL.Add('select * from vdcomissao where codcomi=:comicod and codemp=:empcod');
    dm_dados.zqry_VDCOMISSAO.ParamByName('comicod').AsInteger:=zqry_comissaocodcomi.asinteger;
    dm_Dados.zqry_VDCOMISSAO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_VDCOMISSAO.Open;
    dm_Dados.zqry_VDCOMISSAO.Edit;
    DM_DADOS.zqry_VDCOMISSAOVLRPAGOCOMI.AsFloat:=zqry_COMISSAOVLRCOMI.AsFloat;
    dm_Dados.zqry_VDCOMISSAODTPAGTOCOMI.AsDateTime:=date;
    dm_Dados.zqry_VDCOMISSAOSTATUSCOMI.AsString:='CP';
    DM_dADOS.zqry_VDCOMISSAOCODEMPCI.AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_VDCOMISSAOCODFILIALCI.AsInteger:=1;
    DM_daDOS.zqry_VDCOMISSAOCODFILIAL.AsInteger:=1;
    dm_dados.zqry_VDCOMISSAOCODPCOMI.asinteger:=seqci;
    dm_dados.zqry_VDCOMISSAO.Post;
    dm_DAdos.zqry_VDCOMISSAO.ApplyUpdates();
    showmessage('Dados Gravados para o Recebimento N.º: '+inttostr(zqry_COMISSAOCODREC.AsInteger));
    //  cds_COMISSAOVLRPAGOCOMI.AsFloat:=cds_COMISSAOVLRCOMI.AsFloat;
    //  cds_COMISSAODTPAGTOCOMI.AsDateTime:=date;
    // cds_comissao.Post;
    zqry_comissao.Next;
  end;

  //Consulta Conexao
  dm_Dados.EXECUTASGINICONSP;
  dm_dados.zqry_FNSUBLANCA.close;
  dm_Dados.zqry_FNSUBLANCA.SQL.Clear;
  dm_DAdos.zqry_FNSUBLANCA.sql.add('select * from fnsublanca where codplan=:plancod and datasublanca=:data and codemp=:empcod and vlrsublanca=:valor');
  dm_Dados.zqry_FNSUBLANCA.ParamByName('plancod').AsString:=codplaneja;
  dm_Dados.zqry_FNSUBLANCA.ParamByName('data').AsDate:=date;
  dm_Dados.zqry_FNSUBLANCA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_FNSUBLANCA.ParamByName('valor').asfloat:=strtofloat(edt_VLRPAGARCOMI.Text);
  dm_Dados.zqry_fnsublanca.Open;
  if dm_Dados.zqry_FNSUBLANCA.IsEmpty then
  begin
    showmessage('Valores do Lançamento Financeiro não localizados');
  end
  else
  begin
  codlanca:=dm_Dados.zqry_FNSUBLANCACODLANCA.AsInteger;
  showmessage('Lançamento no Financeiro com código '+inttostr(codlanca));
///
///  busca para eof
///
  dm_dados.zqry_FNSUBLANCA.close;
  dm_Dados.zqry_FNSUBLANCA.SQL.Clear;
  dm_DAdos.zqry_FNSUBLANCA.sql.add('select * from fnsublanca where codlanca=:lancacod and codemp=:empcod');
  dm_Dados.zqry_FNSUBLANCA.ParamByName('lancacod').asinteger:=codlanca;
  dm_Dados.zqry_FNSUBLANCA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_Dados.zqry_fnsublanca.Open;
  //showmessage('vai fazer');
  dm_Dados.zqry_fnsublanca.first;
  while not dm_Dados.zqry_fnsublanca.eof do
  begin
    dm_Dados.zqry_FNSUBLANCA.Edit;
    dm_dados.zqry_FNSUBLANCACODEMPCC.AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_FNSUBLANCACODFILIALCC.AsInteger:=1;
    dm_Dados.zqry_FNSUBLANCACODCC.AsString:=codcentro;
    dm_dados.zqry_FNSUBLANCA.Post;
    dm_dados.zqry_FNSUBLANCA.ApplyUpdates();
    dm_Dados.zqry_FNSUBLANCA.Next;
  end;
  dm_dados.zqry_FNSUBLANCA.ApplyUpdates();
  dm_Dados.zqry_FNSUBLANCA.Close;
  dm_Dados.zqry_FNSUBLANCA.Close;
  dm_Dados.zqry_FNSUBLANCA.Open;
  showmessage('Dados Financeiros, Centro de Custos e Planejamento, gravados com sucesso');
//ZERANDO CAMPOS
  edt_CODVENDE.Clear;
  lbl_NOMEVENDE.Caption:='';
  zqry_COMISSAO.Close;
  edt_VLRTOTALCOMI.Clear;
  edt_VLRPAGARCOMI.Clear;
  dblook_CONTAS.listSource:=nil;
  dblook_CENTROCUSTO.listSource:=nil;
  dblook_PLANOCONTA.listSource:=nil;
  edt_DOCPAGTO.Clear;
  edt_codvende.SetFocus;
end;
end;
end;

procedure Tfrm_DLG_COMISSAO.btn_VENDEDOR_LIMPARClick(Sender: TObject);
begin
dm_dados.zqry_ATATENDENTE.Close;
dm_Dados.zqry_VDVENDA.Close;
zqry_COMISSAO.Close;
edt_CODVENDE.Clear;
lbl_NOMEVENDE.Caption:='';
edt_VLRTOTALCOMI.Clear;
edt_VLRPAGARCOMI.Clear;
dblook_CONTAS.listSource:=nil;
dblook_CENTROCUSTO.listSource:=nil;
dblook_PLANOCONTA.listSource:=nil;
edt_DOCPAGTO.Clear;
edt_codvende.SetFocus;
dm_Dados.zqry_FNPLANEJAMENTO.Close;
dm_Dados.zqry_FNCC.Close;
dm_Dados.zqry_FNCONTA.Close;
end;

procedure Tfrm_DLG_COMISSAO.DBGrid2DblClick(Sender: TObject);
var
 codexcluir : integer;
begin
codexcluir:=zqry_COMISSAOCODCOMI.AsInteger;
if MessageBox(HANDLE, 'Deseja Excluir esse Registro de Comissão?'#13'Confirme com Sim'#13'Para NÃO EXCLUIR clique em Não', 'AVISO', MB_YESNO + MB_ICONQUESTION) = idyes then
begin
  showmessage('Excluindo Registro de Comissão N.º '+inttostr(codexcluir));
  dm_dados.zqry_VDCOMISSAO.Close;
  dm_dados.zqry_VDCOMISSAO.SQL.clear;
  dm_Dados.zqry_VDCOMISSAO.SQL.Add('delete from vdcomissao where codcomi=:exclui');
  dm_dados.zqry_VDCOMISSAO.ParamByName('exclui').AsInteger:=codexcluir;
  dm_dados.zqry_VDCOMISSAO.ExecSQL;
  dm_dados.zqry_VDCOMISSAO.close;
end
else
 begin
  //
 end;
if LBL_NOMEVENDE.Caption='' then
begin
  zqry_comissao.Params.Clear;
  zqry_comissao.SQL.Clear;
  zqry_comissao.SQL.add('select comi.codcomi,comi.codvend, comi.statuscomi,comi.codrec,comi.VLRPAGOCOMI, comi.dtpagtocomi,comi.datacomi,comi.nparcitrec,comi.vlrvendacomi,comi.vlrcomi,vend.nomevend,rec.codvenda,cli.razcli from vdcomissao comi');
  zqry_comissao.SQL.Add('inner join vdvendedor   vend    on comi.codvend=vend.codvend');
  zqry_comissao.SQL.Add('inner join fnreceber    rec     on comi.codrec=rec.codrec');
  zqry_comissao.SQL.Add('inner join vdcliente    cli     on rec.codcli=cli.codcli');
  zqry_comissao.SQL.Add('where comi.codemp=:empcod and comi.codemp=vend.codemp and comi.codemp=rec.codemp and rec.codemp=cli.codemp and comi.datacomi between :inicio and :fim order by comi.codrec, comi.nparcitrec, comi.codvend');
  zqry_COMISSAO.ParamByName('inicio').asdate:=strtodate(msk_INICIO.text);
  zqry_COMISSAO.ParamByName('fim').asdate:=strtodate(msk_FIM.text);
  zqry_comissao.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_comissao.Open;
  if zqry_COMISSAO.IsEmpty then
  begin
    showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: vdcomissao');
  end
  else
  begin
    begin
    with zqry_comissao do
    begin
      first;
      vrtotalcomi:= 0;
      vlrapagar:=0;
      while not eof do
      begin
        vrtotalcomi:= vrtotalcomi+zqry_comissaovlrvendacomi.AsFloat;
        vlrapagar:=vlrapagar+zqry_COMISSAOVLRCOMI.AsFloat;
        next;
      end;
      first;
    end;
    edt_VLRTOTALCOMI.Text:=formatfloat('##0.00',vrtotalcomi);
    edt_VLRPAGARCOMI.Text:=formatfloat('##0.0000',vlrapagar);
  end;
  end;
end
else
begin
  zqry_comissao.Params.Clear;
  zqry_comissao.SQL.Clear;
  zqry_comissao.SQL.add('select comi.codcomi,comi.codvend, comi.statuscomi,comi.codrec,comi.VLRPAGOCOMI, comi.dtpagtocomi,comi.datacomi,comi.nparcitrec,comi.vlrvendacomi,comi.vlrcomi,vend.nomevend,rec.codvenda,cli.razcli from vdcomissao comi');
  zqry_comissao.SQL.Add('inner join vdvendedor   vend    on comi.codvend=vend.codvend');
  zqry_comissao.SQL.Add('inner join fnreceber    rec     on comi.codrec=rec.codrec');
  zqry_comissao.SQL.Add('inner join vdcliente    cli     on rec.codcli=cli.codcli');
  zqry_comissao.SQL.Add('where comi.codemp=:empcod and comi.codemp=vend.codemp and comi.codemp=rec.codemp and rec.codemp=cli.codemp and comi.codvend=:vendedor and comi.datacomi between :inicio and :fim order by comi.codrec, comi.nparcitrec, comi.codvend');
  zqry_COMISSAO.ParamByName('inicio').asdate:=strtodate(msk_INICIO.text);
  zqry_COMISSAO.ParamByName('fim').asdate:=strtodate(msk_FIM.text);
  zqRY_COMISSAO.ParamByName('vendedor').AsInteger:=STRTOINT(edt_CODVENDE.Text);
  zqry_comissao.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  zqry_comissao.Open;  zqry_COMISSAO.Open;
  if zqry_COMISSAO.IsEmpty then
  begin
    showmessage('Não foram encontradas comissões dentro da data especificada com este vendedor'#13'tab.: vdcomissao');
  end
  else
  begin
    begin
    with zqry_comissao do
    begin
      first;
      vrtotalcomi:= 0;
      vlrapagar:=0;
      while not eof do
      begin
        vrtotalcomi:= vrtotalcomi+zqry_comissaovlrvendacomi.AsFloat;
        vlrapagar:=vlrapagar+zqry_COMISSAOVLRCOMI.AsFloat;
        next;
      end;
      first;
    end;
    edt_VLRTOTALCOMI.Text:=formatfloat('##0.00',vrtotalcomi);
    edt_VLRPAGARCOMI.Text:=formatfloat('##0.0000',vlrapagar);
  end;
end;
end;
end;

procedure Tfrm_DLG_COMISSAO.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if label12.caption='' then//( zqry_COMISSAOSTATUSCOMI.asstring='CP') then
begin
  DBGrid2.Canvas.Brush.Color:= clred;
  dbgrid2.Canvas.Font.Color:=clwhite;
  DBGrid2.Canvas.Font.Style := [fsBold];
  DBGrid2.Canvas.FillRect(Rect);
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end
else
begin
  DBGrid2.Canvas.Brush.Color:= clwindow;
  dbgrid2.Canvas.Font.Color:=clblack;
  DBGrid2.Canvas.Font.Style := [];
//  DBGrid2.Canvas.FillRect(Rect);
//  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

{if (Sender as TDBGrid).datasource.DataSet.FieldByName('VLRVENDACOMI').asfloat <> 0   then
    begin
     (Sender as TDBGrid).Canvas.Font.Color := clBlue;
     (Sender as TDBGrid).Canvas.Font.Style:= [fsbold];
     (Sender as TDBGrid).Canvas.Brush.Color:=clred;
    end
   else
    begin
     (Sender as TDBGrid).Canvas.Font.Color := clBlack;
     (Sender as TDBGrid).Canvas.Font.Style:= [];
    end;^}

end;

procedure Tfrm_DLG_COMISSAO.edt_CODATENDEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    btn_BUSCAATENDEClick(Self);
  end;

end;

procedure Tfrm_DLG_COMISSAO.edt_CODVENDEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    btn_BUSCAVENDEClick(Sender);
  end;
end;

procedure Tfrm_DLG_COMISSAO.FormActivate(Sender: TObject);
begin
//Consulta Conta
DM_DADOS.zqry_FNCONTA.Close;
dm_dados.zqry_FNCONTA.SQL.Clear;
dm_Dados.zqry_FNCONTA.SQL.Add('select * from fnconta where ativaconta=''S'' and codemp=:empcod order by descconta');
DM_DADOS.zqry_FNCONTA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_FNCONTA.Open;
//Consulta Planejamento
dm_Dados.zqry_FNPLANEJAMENTO.Close;
dm_Dados.zqry_FNPLANEJAMENTO.SQL.Clear;
dm_Dados.zqry_FNPLANEJAMENTO.SQL.Add('select codemp,codfilial, codplan, descplan, tipoplan, nivelplan from fnplanejamento where tipoplan=''D'' and nivelplan=6 and codemp=:empcod order by descplan');
dm_dados.zqry_FNPLANEJAMENTO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_FNPLANEJAMENTO.Open;
//Consulta Centro de Custos
dm_dados.zqry_FNCC.Close;
dm_Dados.zqry_FNCC.SQL.Clear;
dm_Dados.zqry_FNCC.SQL.Add('select * from fncc where nivelcc=10 and codemp=:empcod');
dm_Dados.zqry_fncc.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
dm_Dados.zqry_FNCC.Open;
// Data do Pagamento
edt_DATAPAGTO.Text:=datetostr(date);

end;

procedure Tfrm_DLG_COMISSAO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_dados.zqry_ATATENDENTE.Close;
dm_Dados.zqry_VDVENDA.Close;
zqry_COMISSAO.Close;
edt_CODVENDE.Clear;
lbl_NOMEVENDE.Caption:='';
edt_VLRTOTALCOMI.Clear;
edt_VLRPAGARCOMI.Clear;
dblook_CONTAS.listSource:=nil;
dblook_CENTROCUSTO.listSource:=nil;
dblook_PLANOCONTA.listSource:=nil;
edt_DOCPAGTO.Clear;
dm_Dados.zqry_FNPLANEJAMENTO.Close;
dm_Dados.zqry_FNCC.Close;
dm_Dados.zqry_FNCONTA.Close;
end;

procedure Tfrm_DLG_COMISSAO.FormShow(Sender: TObject);
begin
pagecontrol1.ActivePage:=ts_ATENDENTE;
end;

procedure Tfrm_DLG_COMISSAO.msk_FIMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if msk_FIM.Text='  /  /    ' then
    begin
      msk_FIM.SetFocus;
    end
    else
    begin
      btn_BUSCACOMISSAOClick(Sender);
    end;
  end;
end;

procedure Tfrm_DLG_COMISSAO.msk_INICIOKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if msk_INICIO.Text='  /  /    ' then
    begin
      msk_inicio.SetFocus;
    end
    else
    begin
      msk_fim.SetFocus;
    end;
  end;
end;

procedure Tfrm_DLG_COMISSAO.PageControl1Enter(Sender: TObject);
begin
msk_DTINICIO.Text:=datetostr(now);
msk_DTFIM.Text:=datetostr(now);
end;

procedure Tfrm_DLG_COMISSAO.ts_ATENDENTEEnter(Sender: TObject);
begin
lbl_nomeatende.Caption:='';
end;

procedure Tfrm_DLG_COMISSAO.ts_VENDEDOREnter(Sender: TObject);
begin
lbl_nomeatende.Caption:='';
msk_inicio.Text:=datetostr(now);
msk_FIM.Text:=datetostr(now);
edt_CODVENDE.SetFocus;
edt_codvende.Clear;
end;

end.
