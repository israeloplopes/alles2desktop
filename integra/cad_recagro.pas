unit cad_recagro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Data.DB, Vcl.Mask, Vcl.Buttons, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_CAD_RECAGRO = class(TForm)
    Label1: TLabel;
    pn_DECORATIVO: TPanel;
    pn_DADOS: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBText2: TDBText;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    btn_NOVO: TBitBtn;
    btn_GRAVAR: TBitBtn;
    ZQuery1: TZQuery;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    ZQuery2: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure btn_GRAVARClick(Sender: TObject);
    procedure btn_NOVOClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODIGORECEITA : INTEGER;
  end;

var
  frm_CAD_RECAGRO: Tfrm_CAD_RECAGRO;

implementation

{$R *.dfm}

uses u_dados, u_Funcoes, rel_receituario;

procedure Tfrm_CAD_RECAGRO.btn_GRAVARClick(Sender: TObject);
begin
dm_dados.zqry_vdreceita.Post;
dm_Dados.zqry_VDRECEITA.ApplyUpdates;
MOSTRATELANOTIFICA('Receita Cadastrada','Produto: '+dm_Dados.zqry_VDITVENDA_DESCPRODUTO.asstring);
mostratelaaguarde('Gerando Impress�o');
  DM_DADOS.zqry_VDRECEITA.Params.Clear;
  DM_DADOS.zqry_VDRECEITA.Close;
  DM_dADOS.zqry_VDRECEITA.SQL.Clear;
  DM_DADOS.zqry_VDRECEITA.SQL.Add('SELECT * FROM VDRECEITA WHERE CODRECEITA=:RECEITA');
  dm_Dados.zqry_VDreceita.ParamByName('receita').AsInteger:=CODIGORECEITA;
  dm_Dados.zqry_VDreceita.Open;
frm_rel_receituario.rlreport1.preview;
fechatelaaguarde;
CODIGORECEITA:=0;
close;

end;

procedure Tfrm_CAD_RECAGRO.btn_NOVOClick(Sender: TObject);
begin
// CONTA RECEITA
zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT MAX(codreceita) as Sequencia FROM vdreceita');
zquery1.Open;
// CONTA ART
zquery2.Close;
zquery2.SQL.Clear;
zquery2.sql.add('SELECT MAX(codart) as seqart FROM vdreceita');
zquery2.Open;
//
dm_dados.zqry_vdreceita.Close;
dm_dados.zqry_vdreceita.Open;
dm_dados.zqry_vdreceita.Insert;
dm_dados.zqry_vdreceitacodreceita.AsInteger:=(1+zquery1.FieldByname('sequencia').asInteger);
dbedit1.text:=inttostr(1+zquery1.FieldByname('sequencia').asInteger);
dbedit2.Text:=datetostr(now);
dbedit17.Text:=inttostr(dm_dados.zqry_VDVENDADOCVENDA.AsInteger);
dbedit18.Text:=inttostr(1+zquery2.FieldByname('seqart').asInteger);
dbedit4.Text:=inttostr(dm_dados.zqry_VDVENDACODCLI.AsInteger);
dbedit5.Text:=inttostr(dm_dados.zqry_VDITVENDACODPROD.AsInteger);
dbedit8.Text:=floattostr(dm_dados.zqry_VDITVENDAQTDITVENDA.AsFloat);
dbtext1.visible:=true;
dbtext2.visible:=true;
dbedit3.setfocus;
CODIGORECEITA:=1+zquery1.FieldByname('sequencia').asInteger;
end;

procedure Tfrm_CAD_RECAGRO.FormShow(Sender: TObject);
begin
{dm_dados.zqry_vdCLIENTE_REC.Params.Clear;
dm_dados.ZQRY_vdCLIENTE_REC.Close;
dm_dados.ZQRY_vdCLIENTE_REC.SQL.Clear;
dm_dados.ZQRY_vdCLIENTE_REC.SQL.Add('SELECT * FROM VDCLIENTE WHERE CODEMP=:EMPCOD');
dm_dados.ZQRY_vdCLIENTE_REC.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_vdCLIENTE_rec.Open;}
dbtext1.visible:=false;
dbtext2.visible:=false;
end;

end.
