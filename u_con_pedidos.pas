unit u_con_pedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_CON_PEDIDOS = class(TForm)
    pn_TOP: TPanel;
    pn_BOTTON: TPanel;
    pn_DIR: TPanel;
    pn_CENTRO: TPanel;
    pg_PEDIDOS: TPageControl;
    ts_VENDAS: TTabSheet;
    lbl_chavenfce: TLabel;
    lbl_SITUACAO: TLabel;
    rg_SAIDAS: TRadioGroup;
    gb_PARAM_SAIDAS: TGroupBox;
    lbl_PESQUISA: TLabel;
    lbl_ATE: TLabel;
    sp_BUSCA: TSpeedButton;
    msk_PESQUISA1: TMaskEdit;
    msk_PESQUISA2: TMaskEdit;
    btn_BUSCASAIDA_DATA: TBitBtn;
    gb_TRANSPORTE_SAIDAS: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    edt_CPFCNPJ_TRANSP: TEdit;
    edt_NOMERAZ_TRANSP: TEdit;
    edt_IE_TRANSP: TEdit;
    edt_END_TRANSP: TEdit;
    edt_CID_TRANSP: TEdit;
    edt_UF_TRANSP: TEdit;
    edt_ANTT_TRANSP: TEdit;
    edt_PLACA_TRANSP: TEdit;
    edt_PLACAUF_TRANSP: TEdit;
    gb_VOLUME_SAIDAS: TGroupBox;
    Label52: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    edt_VOLUMES: TEdit;
    edt_PESOBRUTO: TEdit;
    edt_PESOLIQUIDO: TEdit;
    edt_especie: TEdit;
    edt_MARCA: TEdit;
    gb_OBSERVACAO_SAIDA: TGroupBox;
    edt_OBS: TEdit;
    gb_PEDIDOS_SAIDAS: TGroupBox;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    gb_ARECEBER_SAIDAS: TGroupBox;
    DBGrid5: TDBGrid;
    gb_CANCELA_SAIDAS: TGroupBox;
    Label51: TLabel;
    Label38: TLabel;
    edt_CHAVE: TEdit;
    edt_JUSTIFICATIVA: TEdit;
    ts_COMPRAS: TTabSheet;
    rg_ENTRADA: TRadioGroup;
    BitBtn2: TBitBtn;
    gb_PARAM_ENTRADA: TGroupBox;
    lbl_PESQUISA_ENT: TLabel;
    lbl_ATE_ENT: TLabel;
    sp_BUSCA_ENT: TSpeedButton;
    msk_PESQUISA1_ENT: TMaskEdit;
    msk_PESQUISA2_ENT: TMaskEdit;
    btn_BUSCAENTRADA_DATA: TBitBtn;
    btn_BUSCAENTRADA: TBitBtn;
    gb_PED_ENT: TGroupBox;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    gb_APAGAR: TGroupBox;
    DBGrid8: TDBGrid;
    gb_TRANSP_ENT: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edt_CPFCNPJ_TRANSP_ENT: TEdit;
    edt_NOMERAZ_TRANSP_ENT: TEdit;
    edt_IE_TRANSP_ENT: TEdit;
    edt_END_TRANSP_ENT: TEdit;
    edt_CID_TRANSP_ENT: TEdit;
    edt_UF_TRANSP_ENT: TEdit;
    edt_ANTT_TRANSP_ENT: TEdit;
    edt_PLACA_TRANSP_ENT: TEdit;
    edt_PLACAUF_TRANSP_ENT: TEdit;
    gb_VOLUME_ENT: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edt_VOLUMES_ENT: TEdit;
    edt_PESOBRUTO_ENT: TEdit;
    edt_PESOLIQUIDO_ENT: TEdit;
    edt_ESPECIE_ENT: TEdit;
    edt_MARCA_ENT: TEdit;
    GroupBox1: TGroupBox;
    edt_OBS_ENT: TEdit;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    edt_CHAVE_ENT: TEdit;
    edt_JUSTIFICATIVA_ENT: TEdit;
    btn_EMITENOTA_COMPRA: TBitBtn;
    btn_IMPRIME_COMPRA: TBitBtn;
    btn_ENVIAEMAIL_COMPRA: TBitBtn;
    btn_FECHAR_ENTRADA: TBitBtn;
    ts_AGRUPASAIDAS: TTabSheet;
    lbl_AGRUPADOS: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_NOME: TLabel;
    Label5: TLabel;
    lbl_RAZAO: TLabel;
    Edit2: TEdit;
    mkdata1: TMaskEdit;
    mkdata2: TMaskEdit;
    BitBtn1: TBitBtn;
    btn_BUSCAR: TBitBtn;
    Edit3: TEdit;
    edt_BUSCACLI: TEdit;
    btn_BUSCACLI: TBitBtn;
    btn_AGRUPAR: TBitBtn;
    btn_EMITEAGRUPA: TBitBtn;
    gp_PED_AGRUPA: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBGrid9: TDBGrid;
    DBGrid10: TDBGrid;
    btn_FECHAR_AGRUPA: TBitBtn;
    pg_VENDAFUTURA: TTabSheet;
    rg_FUTURA: TRadioGroup;
    GroupBox3: TGroupBox;
    lbl_PESQUISAFUTURA: TLabel;
    lbl_ATEFUTURA: TLabel;
    sp_FUTURA: TSpeedButton;
    msk_PESQUISAFUTURA1: TMaskEdit;
    msk_PESQUISAFUTURA2: TMaskEdit;
    btn_BUSCAVDFUTURA: TBitBtn;
    GroupBox4: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    GroupBox5: TGroupBox;
    btn_VDXFUTURA: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox6: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edt_SLDDISPONIVEL: TEdit;
    edt_SLDCLIENTE: TEdit;
    edt_QTDENTREGA: TEdit;
    btn_PROCESSAENTREGA: TBitBtn;
    DBGrid11: TDBGrid;
    BitBtn4: TBitBtn;
    gb_IMPOSTOS_SAIDA: TGroupBox;
    LBL_NUMNF: TLabel;
    Label7: TLabel;
    lbl_ITENS_LINHA: TLabel;
    lbl_VOLUMES: TLabel;
    zqry_VDVENDA: TZQuery;
    zqry_VDVENDACODVENDA: TIntegerField;
    zqry_VDVENDADTEMITVENDA: TDateField;
    zqry_VDVENDACODTIPOMOV: TIntegerField;
    zqry_VDVENDADOCVENDA: TIntegerField;
    zqry_VDVENDACODCLI: TIntegerField;
    zqry_VDVENDAVLRLIQVENDA: TFloatField;
    zdts_VDVENDA: TDataSource;
    procedure pg_PEDIDOSDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fechaconexoes;
    //procedure rg_SAIDASClick(Sender: TObject);
    //procedure LBL_NUMNFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CON_PEDIDOS: Tfrm_CON_PEDIDOS;

implementation

{$R *.dfm}

uses u_dados;

procedure Tfrm_CON_PEDIDOS.FECHACONEXOES;
begin
dm_dados.zqry_EQTIPOMOV.Cancel;
dm_dados.zqry_eqtipomov.Params.Clear;
dm_dados.zqry_EQTIPOMOV.Close;
//
dm_dados.zqry_LFMENSAGEM.Cancel;
dm_dados.zqry_LFMENSAGEM.Params.Clear;
dm_dados.zqry_LFMENSAGEM.Close;
//
dm_dados.zqry_FNPLANOPAG.Cancel;
dm_Dados.zqry_FNPLANOPAG.Params.Clear;
dm_Dados.zqry_FNPLANOPAG.Close;
//
dm_Dados.zqry_FNTIPOCOB.Cancel;
dm_dados.zqry_FNTIPOCOB.Params.Clear;
dm_dados.zqry_FNTIPOCOB.Close;
//
zqry_VDVENDA.Cancel;
zqry_VDVENDA.Params.Clear;
zqry_VDVENDA.Close;
//
dm_Dados.zqry_VDITVENDA.Cancel;
dm_dados.zqry_VDITVENDA.Params.clear;
dm_Dados.zqry_VDITVENDA.Close;
//
dm_dados.zqry_FNRECEBER.Cancel;
dm_dados.zqry_FNRECEBER.Params.Clear;
dm_dados.zqry_FNRECEBER.Close;
//
dm_dados.zqry_FNITRECEBER.Cancel;
dm_dados.zqry_FNITRECEBER.Params.Clear;
dm_dados.zqry_FNITRECEBER.Close;
//
{zqry_ITFISCAL.Cancel;
zqry_ITFISCAL.Params.Clear;
zqry_ITFISCAL.Close;}
//

edt_CPFCNPJ_TRANSP.Clear;
edt_NOMERAZ_TRANSP.Clear;
edt_IE_TRANSP.Clear;
edt_ANTT_TRANSP.Clear;
edt_END_TRANSP.Clear;
edt_CID_TRANSP.Clear;
edt_UF_TRANSP.Clear;
edt_PLACA_TRANSP.Clear;
edt_PLACAUF_TRANSP.Clear;
edt_volumes.Clear;
edt_especie.Clear;
edt_PESOBRUTO.Clear;
edt_PESOLIQUIDO.Clear;
edt_MARCA.Clear;
edt_OBS.Clear;
edt_CHAVE.Clear;
edt_JUSTIFICATIVA.Clear;
lbl_NUMNF.Caption:='';
//lbl_ITENS_LINHAS.Caption:='';
//
{dm_dados.zqry_sgsequencia_nf.Params.Clear;
dm_Dados.zqry_sgsequencia_nf.Close;
dm_dados.zqry_sgsequencia_nf.sql.Clear;
dm_Dados.zqry_sgsequencia_nf.sql.add('select * from sgsequencia');
dm_dados.zqry_sgsequencia_nf.sql.add('where sgtab=:tab and codemp=:empresa');
dm_Dados.zqry_sgsequencia_nf.ParamByName('tab').value:='NF';
dm_Dados.zqry_sgsequencia_nf.ParamByName('empresa').asinteger:=dm_Dados.codemp;
dm_dados.zqry_sgsequencia_nf.open;}
//
dm_dados.zqry_MAX_NFCE.Close;
dm_dados.zqry_MAX_NFCE.SQL.Clear;
dm_dados.zqry_MAX_NFCE.SQL.Add('select max(nroseq) as ultnfce from sgsequencia where sgtab=:p1 and codemp=:p2');
dm_dados.zqry_MAX_NFCE.ParamByName('p1').AsString:='NC';
dm_dados.zqry_MAX_NFCE.ParamByName('p2').AsInteger:=dm_dados.codemp;
dm_dados.zqry_MAX_NFCE.Open;
//MEMORIA;
rg_SAIDAS.ItemIndex:= -1;
rg_ENTRADA.ItemIndex:= -1;
end;


procedure Tfrm_CON_PEDIDOS.FormActivate(Sender: TObject);
begin
rg_SAIDAS.ItemIndex:= -1;
rg_ENTRADA.ItemIndex:= -1;
end;

procedure Tfrm_CON_PEDIDOS.FormShow(Sender: TObject);
begin
if (screen.Width<1280) or (screen.Height<768) then
begin
  showmessage('Resolução Mínima de 1280x768');
  close;
end;

end;

procedure Tfrm_CON_PEDIDOS.pg_PEDIDOSDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
{case TabIndex of

  0: Control.Canvas.Brush.Color:=clMoneyGreen;
  1: Control.Canvas.Brush.Color:=clRed;
  2: Control.Canvas.Brush.Color:=clMaroon;
end;
control.Canvas.Font.Style:=[fsbold];
control.Canvas.TextOut(rect.Left+5,rect.Top+3,PG_pedidos.pages[tabindex].caption);
pg_pedidos.pages[tabindex].Brush.Color:=Control.Canvas.Brush.Color; }
end;

end.
