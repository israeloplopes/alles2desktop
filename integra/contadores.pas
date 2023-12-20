unit contadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.Buttons;

type
  Tfrm_CONTADORES = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    zqry_SOMATOTAL: TZQuery;
    zqry_SOMATOTALTOTALNOTAS: TFloatField;
    zdts_SOMATOTAL: TDataSource;
    zqry_SOMANFE: TZQuery;
    zqry_SOMANFETOTALNFE: TFloatField;
    zdts_SOMANFE: TDataSource;
    zqry_SOMANFCE: TZQuery;
    zqry_SOMANFCETOTALNFCE: TFloatField;
    zdts_SOMANFCE: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    zqry_SOMAPAGTO: TZQuery;
    zqry_SOMAPAGTOVALORPAGTO: TExtendedField;
    zdts_SOMAPAGTO: TDataSource;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    edt_DTINICIAL: TEdit;
    Label6: TLabel;
    edt_DTFINAL: TEdit;
    btn_BUSCA: TBitBtn;
    btn_IMPRIME: TBitBtn;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    msk_INICIO: TMaskEdit;
    msk_FIM: TMaskEdit;
    btn_BUSCAR: TBitBtn;
    Label9: TLabel;
    edt_SOMA: TEdit;
    zqry_SOMAFINALIZADOR: TZQuery;
    zdts_SOMAFINALIZADOR: TDataSource;
    lbl_FINALIZADOR1: TLabel;
    vlr_FINALIZADOR1: TLabel;
    lbl_FINALIZADOR2: TLabel;
    vlr_FINALIZADOR2: TLabel;
    vlr_FINALIZADOR3: TLabel;
    vlr_FINALIZADOR4: TLabel;
    vlr_FINALIZADOR5: TLabel;
    lbl_FINALIZADOR3: TLabel;
    lbl_FINALIZADOR4: TLabel;
    lbl_FINALIZADOR5: TLabel;
    zqry_SOMAFINALIZADORVLRTOTAL: TExtendedField;
    procedure FormShow(Sender: TObject);
    procedure btn_BUSCAClick(Sender: TObject);
    procedure edt_DTINICIALKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DTFINALKeyPress(Sender: TObject; var Key: Char);
    procedure btn_IMPRIMEClick(Sender: TObject);
    procedure btn_BUSCARClick(Sender: TObject);
    procedure TabSheet5Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CONTADORES: Tfrm_CONTADORES;

implementation

{$R *.dfm}

uses dados, rel_vendas, checkout;

procedure Tfrm_CONTADORES.btn_BUSCAClick(Sender: TObject);
begin
if (edt_DTINICIAL.Text='') and (edt_DTFINAL.Text='') then
begin
  dm_dados.zqry_vdvenda.Params.Clear;
  dm_dados.zqry_VDVENDA.Close;
  dm_dados.zqry_VDVENDA.SQL.Clear;
  dm_dados.zqry_VDVENDA.sql.Add('SELECT * FROM VDVENDA WHERE CODEMP=:EMPCOD AND Vlrprodvenda>0 order by codvenda');//quotedstr(script);
  dm_dados.zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_VDVENDA.Open;
end
else
begin
  dm_dados.zqry_vdvenda.Params.Clear;
  dm_dados.zqry_VDVENDA.Close;
  dm_dados.zqry_VDVENDA.SQL.Clear;
  dm_dados.zqry_VDVENDA.sql.Add('SELECT * FROM VDVENDA WHERE CODEMP=:EMPCOD AND DTEMITVENDA BETWEEN :DTINI AND :DTFIM and vlrprodvenda>0 order by codvenda');//quotedstr(script);
  dm_dados.zqry_VDVENDA.ParamByName('DTINI').AsDate:=strtodate(edt_DTINICIAL.Text);
  dm_dados.zqry_VDVENDA.ParamByName('DTFIM').asdate:=strtodate(edt_DTFINAL.Text);
  dm_dados.zqry_VDVENDA.ParamByName('empcod').asinteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_VDVENDA.Open;
end;
end;

procedure Tfrm_CONTADORES.btn_BUSCARClick(Sender: TObject);
begin
frm_checkout.zqry_TIPOSPAGTO.Params.Clear;
frm_checkout.zqry_TIPOSPAGTO.Close;
frm_checkout.zqry_TIPOSPAGTO.SQL.Clear;
frm_checkout.ZQRY_TIPOSPAGTO.SQL.Add('select * from TIPOSPAGTO where data BETWEEN :DTINI AND :DTFIM group by data, tipocob, valor, tiponfe, desccob');
frm_checkout.zqry_TIPOSPAGTO.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
frm_checkout.zqry_TIPOSPAGTO.ParamByName('dtfim').AsDate:=strtodate(msk_fim.Text);
frm_checkout.zqry_TIPOSPAGTO.Open;
//
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_Somafinalizador.Open;
edt_soma.Text:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
//1
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=1;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR1.Visible:=true;
  vlr_FINALIZADOR1.Visible:=false;
end
else
begin
  vlr_FINALIZADOR1.Visible:=true;
  vlr_finalizador1.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//2
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=2;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR2.Visible:=true;
  vlr_FINALIZADOR2.Visible:=false;
end
else
begin
  vlr_FINALIZADOR2.Visible:=true;
  vlr_finalizador2.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//3
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=3;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR3.Visible:=true;
  vlr_FINALIZADOR3.Visible:=false;
end
else
begin
  vlr_FINALIZADOR3.Visible:=true;
  vlr_finalizador3.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//4
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=4;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR4.Visible:=true;
  vlr_FINALIZADOR4.Visible:=false;
end
else
begin
  vlr_FINALIZADOR4.Visible:=true;
  vlr_finalizador4.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//5
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=5;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR5.Visible:=true;
  vlr_FINALIZADOR5.Visible:=false;
end
else
begin
  vlr_FINALIZADOR5.Visible:=true;
  vlr_finalizador5.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
{//6
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=6;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR6.Visible:=true;
  lbl_FINALIZADOR6.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR6.Visible:=false;
end
else
begin
  lbl_FINALIZADOR6.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR6.Visible:=true;
  vlr_finalizador6.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//7
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=7;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR7.Visible:=true;
  lbl_FINALIZADOR7.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR7.Visible:=false;
end
else
begin
  lbl_FINALIZADOR7.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR7.Visible:=true;
  vlr_finalizador7.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end;
//8
zqry_SOMAFINALIZADOR.params.clear;
zqry_SOMAFINALIZADOR.Close;
zqry_SOMAFINALIZADOR.SQL.Clear;
zqry_SOMAFINALIZADOR.SQL.Add('select sum(valor) as vlrtotal from tipospagto where data between :dtini and :dtfim and tipocob=:cobtipo');
zqry_somafinalizador.ParamByName('dtini').asdate:=strtodate(msk_inicio.Text);
zqry_somafinalizador.paramByName('dtfim').AsDate:=strtodate(msk_fim.Text);
zqry_somafinalizador.paramByName('cobtipo').asinteger:=8;
zqry_Somafinalizador.Open;
if zqry_somafinalizador.IsEmpty then
begin
  lbl_FINALIZADOR8.Visible:=true;
  lbl_FINALIZADOR8.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR8.Visible:=false;
end
else
begin
  lbl_FINALIZADOR8.Caption:=zqry_SOMAFINALIZADORDESCCOB.AsString;
  vlr_FINALIZADOR8.Visible:=true;
  vlr_finalizador8.Caption:=floattostr(zqry_SOMAFINALIZADORVLRTOTAL.AsFloat);
end; }
end;

procedure Tfrm_CONTADORES.btn_IMPRIMEClick(Sender: TObject);
begin
frm_rel_vendas.rlreport1.preview();
end;

procedure Tfrm_CONTADORES.edt_DTFINALKeyPress(Sender: TObject; var Key: Char);
begin
if (key= #13) then  btn_BUSCAClick(Self);
end;

procedure Tfrm_CONTADORES.edt_DTINICIALKeyPress(Sender: TObject; var Key: Char);
begin
if (key= #13) then  edt_dtFINAL.SETFOCUS;

end;

procedure Tfrm_CONTADORES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zqry_SOMAFINALIZADOR.Close;
msk_inicio.Clear;
msk_FIM.Clear;
edt_soma.Clear;
vlr_FINALIZADOR1.Visible:=false;
vlr_FINALIZADOR2.Visible:=false;
vlr_FINALIZADOR3.Visible:=false;
vlr_FINALIZADOR4.Visible:=false;
vlr_FINALIZADOR5.Visible:=false;
end;


procedure Tfrm_CONTADORES.FormShow(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheet1;
dm_Dados.zqry_SGNF.Close;
dm_dados.zqry_sgnf.SQL.Clear;
dm_dados.zqry_sgnf.SQL.Add('select * from sgnf');
dm_Dados.zqry_sgnf.SQL.Add('where data between :dtini and :dtfim order by numero, nfce');
dm_dados.zqry_sgnf.ParamByName('dtini').AsDate:=now;
dm_Dados.zqry_sgnf.ParamByName('dtfim').asdate:=now;
dm_dados.zqry_SGNF.Open;
// SOMA TOTAL
zqry_SOMATOTAL.Params.Clear;
zqry_somatotal.Close;
zqry_somatotal.SQL.Clear;
zqry_somatotal.SQL.Add('select sum(valor) as totalnotas from sgnf where data between :data1 and :data2');
zqry_somatotal.ParamByName('data1').AsDate:=now;
zqry_somatotal.ParamByName('data2').asdate:=now;
zqry_somatotal.Open;
// SOMA NFE
zqry_SOMANFE.Params.Clear;
zqry_somaNFE.Close;
zqry_somaNFE.SQL.Clear;
zqry_somaNFE.SQL.Add('select sum(valor) as totalnfe from sgnf where data between :data1 and :data2 and nfce=:nftipo');
zqry_somaNFE.ParamByName('data1').AsDate:=now;
zqry_somaNFE.ParamByName('data2').asdate:=now;
zqry_somaNFE.ParamByName('nftipo').asstring:='N';
zqry_somaNFE.Open;
// SOMA NFCE
zqry_SOMANFcE.Params.Clear;
zqry_somaNFcE.Close;
zqry_somaNFcE.SQL.Clear;
zqry_somaNFcE.SQL.Add('select sum(valor) as totalnfce from sgnf where data between :data1 and :data2 and nfce=:nftipo');
zqry_somaNFcE.ParamByName('data1').AsDate:=now;
zqry_somaNFcE.ParamByName('data2').asdate:=now;
zqry_somaNFcE.ParamByName('nftipo').asstring:='S';
zqry_somaNFcE.Open;
//
zqry_SOMAPAGTO.Params.Clear;
ZQRY_SOMAPAGTO.Close;
ZQRY_SOMAPAGTO.SQL.Clear;
ZQRY_SOMAPAGTO.SQL.Add('select sum(valor) as valorpagto from TIPOSPAGTO where data BETWEEN :DTINI AND :DTFIM ');
zqry_somapagto.ParamByName('dtini').asdate:=now;
zqry_somapagto.ParamByName('dtfim').AsDate:=now;
zqry_somapagto.Open;

end;


procedure Tfrm_CONTADORES.TabSheet5Enter(Sender: TObject);
begin
msk_INICIO.Clear;
msk_inicio.SetFocus;
end;

end.
