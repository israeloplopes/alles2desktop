unit u_dlg_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrm_DLG_VENDAS = class(TForm)
    PageControl1: TPageControl;
    ts_FINALIZA: TTabSheet;
    ts_MOVIMENTO: TTabSheet;
    Label1: TLabel;
    msK_INI: TMaskEdit;
    msk_FIM: TMaskEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    btn_BUSCAR: TBitBtn;
    btn_CANCELAR: TBitBtn;
    zqry_TIPOSPAGTO: TZQuery;
    zqry_TIPOSPAGTOTIPOCOB: TIntegerField;
    zqry_TIPOSPAGTOTIPONFE: TIntegerField;
    zqry_TIPOSPAGTOVALOR: TFloatField;
    zqry_TIPOSPAGTODATA: TDateField;
    zqry_TIPOSPAGTODESCCOB: TWideStringField;
    zqry_TIPOSPAGTOTERMINAL: TIntegerField;
    zdts_TIPOSPAGTO: TDataSource;
    btn_IMP_FINALIZADOR: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    msk_MOV_FIM: TMaskEdit;
    msk_MOV_INI: TMaskEdit;
    btn_BUSCAR_MOV: TBitBtn;
    btn_CANCELAR_MOV: TBitBtn;
    DBGrid2: TDBGrid;
    btn_IMP_MOV: TBitBtn;
    zqry_MOVIMENTO: TZQuery;
    zdts_MOVIMENTO: TDataSource;
    zqry_MOVIMENTOCODVENDA: TIntegerField;
    zqry_MOVIMENTOCODEMP: TIntegerField;
    zqry_MOVIMENTOCODITVENDA: TIntegerField;
    zqry_MOVIMENTOCODVENDA_1: TIntegerField;
    zqry_MOVIMENTODOCVENDA: TIntegerField;
    zqry_MOVIMENTOCODTIPOMOV: TIntegerField;
    zqry_MOVIMENTOCODCLI: TIntegerField;
    zqry_MOVIMENTONOMECLI: TWideStringField;
    zqry_MOVIMENTOCODPROD: TIntegerField;
    zqry_MOVIMENTODESCPROD: TWideStringField;
    zqry_MOVIMENTOCODUNID: TWideStringField;
    zqry_MOVIMENTOQTDITVENDA: TFloatField;
    zqry_MOVIMENTOVLRLIQITVENDA: TFloatField;
    zqry_MOVIMENTOVLRPRODITVENDA: TFloatField;
    zqry_MOVIMENTOCODTIPOCOB: TIntegerField;
    zqry_MOVIMENTODESCTIPOCOB: TWideStringField;
    zqry_MOVIMENTODTEMITVENDA: TDateField;
    zqry_MOVIMENTOVLRVENDA: TFloatField;
    zqry_MOVIMENTOVLRLIQVENDA: TFloatField;
    zqry_MOVIMENTOVLRDESCVENDA: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure ts_FINALIZAEnter(Sender: TObject);
    procedure btn_CANCELARClick(Sender: TObject);
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_IMP_FINALIZADORClick(Sender: TObject);
    procedure ts_MOVIMENTOEnter(Sender: TObject);
    procedure btn_BUSCAR_MOVClick(Sender: TObject);
    procedure btn_IMP_MOVClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_VENDAS: Tfrm_DLG_VENDAS;

implementation

{$R *.dfm}

uses u_dados, rel_finalizadores, rel_vendas;

procedure Tfrm_DLG_VENDAS.btn_IMP_FINALIZADORClick(Sender: TObject);
begin
  frm_rel_finalizadores.rlreport1.preview;
end;

procedure Tfrm_DLG_VENDAS.btn_IMP_MOVClick(Sender: TObject);
begin
  frm_rel_vendas.rlreport1.preview;
end;

procedure Tfrm_DLG_VENDAS.btn_BUSCARClick(Sender: TObject);
begin
  zqry_TIPOSPAGTO.Params.Clear;
  zqry_TIPOSPAGTO.Close;
  zqry_TIPOSPAGTO.SQL.Clear;
  ZQRY_TIPOSPAGTO.SQL.Add('select data, tipocob, desccob, terminal, valor, tiponfe from TIPOSPAGTO where terminal=:maquina and data BETWEEN :DTINI AND :DTFIM group by data, tipocob, desccob, terminal, valor, tiponfe order by data');
  zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=strtodate(msk_ini.text);
  zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=strtodate(msk_fim.text);
  zqry_tipospagto.ParamByName('maquina').AsInteger:=dm_dados.terminal;
  zqry_TIPOSPAGTO.Open;
  if zqry_TIPOSPAGTO.IsEmpty then
  begin
    Showmessage('Não existem valores que coincidem com a busca');
    btn_imp_finalizador.enabled:=false;
  end
  else
  begin
    btn_imp_finalizador.enabled:=true;
  end;
end;

procedure Tfrm_DLG_VENDAS.btn_BUSCAR_MOVClick(Sender: TObject);
begin
  zqry_MOVIMENTO.Params.Clear;
  zqry_MOVIMENTO.Close;
  zqry_MOVIMENTO.SQL.Clear;
  ZQRY_MOVIMENTO.SQL.Add('select it.codvenda, it.codemp,it.coditvenda, vd.codvenda, vd.docvenda, vd.codtipomov, vd.codcli, cl.nomecli, it.codprod, eq.descprod, eq.codunid,');
  ZQRY_MOVIMENTO.SQL.Add('it.qtditvenda, it.vlrliqitvenda, it.vlrproditvenda, vd.codtipocob,fn.desctipocob,');
  ZQRY_MOVIMENTO.SQL.Add('vd.dtemitvenda, vd.vlrvenda, vd.vlrliqvenda, vd.vlrdescvenda  from vditvenda as it');
  ZQRY_MOVIMENTO.SQL.Add('inner join vdvenda   as vd on it.codvenda=vd.codvenda');
  ZQRY_MOVIMENTO.SQL.Add('inner join eqproduto as eq on it.codprod=eq.codprod');
  ZQRY_MOVIMENTO.SQL.Add('inner join vdcliente as cl on vd.codcli=cl.codcli');
  ZQRY_MOVIMENTO.SQL.Add('inner join fntipocob as fn on vd.codtipocob=fn.codtipocob');
  zqry_movimento.sql.add('where it.codemp=:p1 and vd.codemp=it.codemp and it.codvenda=vd.codvenda and eq.codemp=it.codemp and cl.codemp=it.codemp and vd.dtemitvenda between :p2 and :p3');
  zqry_movimento.sql.add('order by vd.codvenda, it.coditvenda, vd.dtemitvenda');
  zqry_MOVIMENTO.ParamByName('p3').asdate:=strtodate(msk_MOV_FIM.text);
  zqry_MOVIMENTO.ParamByName('p2').AsDate:=strtodate(msk_MOV_INI.text);
  zqry_MOVIMENTO.ParamByName('p1').AsInteger:=dm_dados.codemp;
  zqry_MOVIMENTO.Open;
  if zqry_MOVIMENTO.IsEmpty then
  begin
    Showmessage('Não existem valores que coincidem com a busca');
    btn_imp_MOV.enabled:=false;
  end
  else
  begin
    btn_imp_MOV.enabled:=true;
  end;
end;

procedure Tfrm_DLG_VENDAS.btn_CANCELARClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_DLG_VENDAS.FormShow(Sender: TObject);
begin
  msk_INI.text:=datetostr(now);
  msk_FIM.text:=datetostr(now);
  msk_MOV_INI.text:=datetostr(now);
  msk_MOV_FIM.text:=DATETOSTR(NOW);
  PageControl1.ActivePage:=ts_FINALIZA;
end;

procedure Tfrm_DLG_VENDAS.ts_FINALIZAEnter(Sender: TObject);
begin
  msk_ini.setfocus;
end;

procedure Tfrm_DLG_VENDAS.ts_MOVIMENTOEnter(Sender: TObject);
begin
  msk_mov_ini.setfocus;
end;

end.
