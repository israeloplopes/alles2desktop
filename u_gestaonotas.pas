unit u_gestaonotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.DBCtrls;

type
  Tfrm_GESTAONOTAS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label59: TLabel;
    edt_NUM_NF: TEdit;
    btn_REIMPRIME_NFE: TBitBtn;
    MaskEdit1: TMaskEdit;
    Label49: TLabel;
    MaskEdit2: TMaskEdit;
    btn_GERARELATORIONFCe: TBitBtn;
    btn_GERARELATORIONFe: TBitBtn;
    btn_GERARELATORIO: TBitBtn;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    zqry_SOMAFINALIZADOR: TZQuery;
    zqry_SOMAFINALIZADORVLRTOTAL: TExtendedField;
    zdts_SOMAFINALIZADOR: TDataSource;
    zqry_SOMAPAGTO: TZQuery;
    zqry_SOMAPAGTOVALORPAGTO: TExtendedField;
    zdts_SOMAPAGTO: TDataSource;
    zqry_SOMATOTAL: TZQuery;
    zqry_SOMATOTALTOTALNOTAS: TFloatField;
    zdts_SOMATOTAL: TDataSource;
    zqry_SOMANFE: TZQuery;
    zqry_SOMANFETOTALNFE: TFloatField;
    zdts_SOMANFE: TDataSource;
    zqry_SOMANFCE: TZQuery;
    zqry_SOMANFCETOTALNFCE: TFloatField;
    zdts_SOMANFCE: TDataSource;
    TabSheet4: TTabSheet;
    edt_DTINICIAL: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edt_DTFINAL: TEdit;
    btn_BUSCA: TBitBtn;
    btn_IMPRIME: TBitBtn;
    DBGrid4: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    TabSheet6: TTabSheet;
    DBGrid6: TDBGrid;
    Label7: TLabel;
    msk_INICIO: TMaskEdit;
    Label8: TLabel;
    msk_FIM: TMaskEdit;
    Label9: TLabel;
    edt_SOMA: TEdit;
    lbl_FINALIZADOR1: TLabel;
    btn_BUSCAR: TBitBtn;
    lbl_FINALIZADOR2: TLabel;
    lbl_FINALIZADOR3: TLabel;
    lbl_FINALIZADOR4: TLabel;
    lbl_FINALIZADOR5: TLabel;
    vlr_FINALIZADOR5: TLabel;
    vlr_FINALIZADOR4: TLabel;
    vlr_FINALIZADOR3: TLabel;
    vlr_FINALIZADOR2: TLabel;
    vlr_FINALIZADOR1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_GESTAONOTAS: Tfrm_GESTAONOTAS;

implementation

{$R *.dfm}

end.
