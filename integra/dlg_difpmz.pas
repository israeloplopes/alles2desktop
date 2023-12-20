unit dlg_difpmz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  Tfrm_DLG_DIFPMZ = class(TForm)
    btn_IMPRIMIR: TBitBtn;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    procedure btn_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_DIFPMZ: Tfrm_DLG_DIFPMZ;

implementation

{$R *.dfm}

uses dados, rel_espelho, rel_difpmz;

procedure Tfrm_DLG_DIFPMZ.btn_IMPRIMIRClick(Sender: TObject);
begin
if maskedit1.Text='  /  /    ' then
  begin
      showmessage('Data Inicial não foi Informada');
      maskedit1.SetFocus;
  end
else
  begin
      if maskedit2.Text='  /  /    ' then
      begin
      showmessage('Data Final não foi Informada');
      maskedit2.SetFocus;
      end
  else
    begin
DM_DADOS.zqry_markup.Close;
dm_dados.zqry_MARKUP.SQL.Clear;
dm_dados.zqry_MARKUP.SQL.Add('SELECT P.CODPROD,P.CODBARPROD,P.DESCPROD,(((P.CUSTOINFOPROD*S.PERCPRECOCUSTO)/100+P.CUSTOINFOPROD)*SUM(IT.QTDITVENDA)) AS VLRCUSTO,');
dm_dados.zqry_MARKUP.SQL.Add('SUM(IT.QTDITVENDA) AS QTDITVENDA,SUM(IT.VLRLIQITVENDA) AS VLRLIQITVENDA, SUM(IT.VLRLIQITVENDA)-(((P.CUSTOINFOPROD*S.PERCPRECOCUSTO)/100+P.CUSTOINFOPROD)*SUM(IT.QTDITVENDA)) AS DIFERENCA');
dm_dados.zqry_MARKUP.SQL.Add('FROM VDVENDA V,EQTIPOMOV TM,VDITVENDA IT, EQPRODUTO P, SGPREFERE1 S');
dm_dados.zqry_MARKUP.SQL.Add('WHERE P.CODEMP=:EMPCOD AND P.CODFILIAL=1  AND IT.CODPROD=P.CODPROD AND V.CODVENDA=IT.CODVENDA AND S.CODEMP=P.CODEMP');
dm_dados.zqry_MARKUP.SQL.Add('AND V.DTEMITVENDA BETWEEN :DTINI AND :DTFIM AND V.FLAG IN (''S'',''N'')');
dm_dados.zqry_MARKUP.SQL.Add('AND TM.FISCALTIPOMOV IN (''S'',''N'') AND TM.SOMAVDTIPOMOV IN (''S'',''N'') AND NOT SUBSTR(V.STATUSVENDA,1,1)=''C''');
dm_dados.zqry_MARKUP.SQL.Add('AND TM.CODEMP=V.CODEMPTM AND TM.CODFILIAL=V.CODFILIALTM AND TM.CODTIPOMOV=V.CODTIPOMOV');
dm_dados.zqry_MARKUP.SQL.Add('AND TM.TIPOMOV IN (''VD'',''VE'',''PV'')');
dm_dados.zqry_MARKUP.SQL.Add('GROUP BY P.CODPROD,P.DESCPROD,P.CODBARPROD,P.CUSTOINFOPROD,S.PERCPRECOCUSTO');
dm_dados.zqry_MARKUP.SQL.Add('ORDER BY vlrliqitvenda desc, P.CODPROD,P.DESCPROD');
//select * from markup where datamovimento between :dtini and :dtfim ');
DM_DADOS.zqry_MARKUP.parambyname('dtini').AsDateTime:=strtodate(maskedit1.text);
DM_DADOS.zqry_MARKUP.parambyname('dtfim').AsDateTime:=strtodate(maskedit2.Text);
DM_DADOS.zqry_MARKUP.parambyname('empcod').asinteger:=dm_Dados.codemp;
//dm_Dados.zqry_MARKUP.ParamByName('empcod').AsInteger:=dm_Dados.codemp;

//DM_DADOS.cds_ESPELHO.params.parambyname('cfopini').asstring:=trim(cfop);
//dM_Dados.cds_espelho.Execute;
dm_dados.zqry_markup.open;
//Application.ProcessMessages;
  if dm_dados.zqry_markup.IsEmpty then
      begin
         Showmessage('Não existem valores que coincidem com a busca');
      end;
      frm_Rel_difpmz.rlreport1.preview;
    end;
  end;
end;


end.
