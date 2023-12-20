unit dlg_os;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.CheckLst, Vcl.DBCtrls, Data.DB;

type
  Tfrm_DLG_OS = class(TForm)
    BitBtn1: TBitBtn;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    lbl_nomestatus: TLabel;
    BitBtn2: TBitBtn;
    CheckListBox1: TCheckListBox;
    Label3: TLabel;
    Edit1: TEdit;
    DBText1: TDBText;
    DBGrid2: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_OS: Tfrm_DLG_OS;

implementation

{$R *.dfm}

uses dados, rel_espelho, rel_os;

procedure Tfrm_DLG_OS.BitBtn1Click(Sender: TObject);
{var
  status, nomestatus:string;
begin
if RadioGroup1.ItemIndex=0 then
  begin
    status:='PE';
    nomestatus:='PENDENTE';
  end;
if RadioGroup1.ItemIndex=1 then
  begin
    status:='PC';
    nomestatus:='COMPRA EMITIDA';
  end;
if RadioGroup1.ItemIndex=2 then
  begin
    status:='AN';
    nomestatus:='EM ANÁLISE';
  end;
if RadioGroup1.ItemIndex=3 then
  begin
    status:='EO';
    nomestatus:='EM ORÇAMENTO';
  end;
if RadioGroup1.ItemIndex=4 then
  begin
    status:='OA';
    nomestatus:='APROVADA';
  end;
if RadioGroup1.ItemIndex=5 then
  begin
    status:='CA';
    nomestatus:='CANCELADA';
  end;
if RadioGroup1.ItemIndex=6 then
  begin
    status:='EC';
    nomestatus:='ENCAMINHADA';
  end;
if RadioGroup1.ItemIndex=7 then
  begin
    status:='EA';
    nomestatus:='EM ANDAMENTO';
  end;
if RadioGroup1.ItemIndex=8 then
  begin
    status:='PT';
    nomestatus:='PRONTO';
  end;
if RadioGroup1.ItemIndex=9 then
  begin
    status:='FN';
    nomestatus:='FINALIZADA';
  end;
if maskedit1.Text='' then maskedit1.Text:=datetostr(date);
if maskedit2.Text='' then maskedit2.Text:=datetostr(date);
lbl_nomestatus.Caption:=nomestatus;
dm_dados.qry_eqrecmerc.close;
dm_dados.qry_eqrecmerc.SQL.Clear;
dm_dados.qry_eqrecmerc.SQL.Add('select * from eqrecmerc');
dm_Dados.qry_eqrecmerc.SQL.Add('where status=:situacao and dtent between :dtini and :dtfim');
dm_dados.qry_eqrecmerc.ParamByName('dtini').Value:=strtodate(maskedit1.Text);
dm_Dados.qry_eqrecmerc.ParamByName('dtfim').Value:=strtodate(maskedit2.Text);
dm_Dados.qry_eqrecmerc.ParamByName('situacao').Value:=status;
dm_dados.qry_eqrecmerc.Open;
if dm_dados.qry_eqrecmerc.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end;
 frm_Rel_os.rlreport1.preview;}
var
  i, tamanho :integer;
  texto,sqlos, status,txtcompleto, status1 : string;
begin
for i := 0 to CheckListBox1.Count-1 do
     if CheckListBox1.Checked[i] then
        begin
        texto :=Copy(CheckListBox1.Items[i],1,2);
        txtcompleto:=checklistbox1.Items[i];
        status:=status+#39+texto+#39+',';
        status1:=status1+#39+txtcompleto+#39+',';
        end;
        tamanho:=length(status);
        status:=copy(status,1,tamanho-1);
        lbl_nomestatus.Caption:=status1;

   if maskedit1.Text='' then maskedit1.Text:=datetostr(date);
   if maskedit2.Text='' then maskedit2.Text:=datetostr(date);
   sqlos:='select * from eqrecmerc where status in ('+status+') and codcli like :cli and dtent between :dtini and :dtfim';
dm_dados.zqry_eqrecmerc.close;
dm_dados.zqry_eqrecmerc.SQL.Clear;
dm_dados.zqry_eqrecmerc.SQL.Add(sqlos);
//dm_Dados.qry_eqrecmerc.SQL.Add('where status in ('texto'):situacao and dtent between :dtini and :dtfim');
dm_dados.zqry_eqrecmerc.ParamByName('dtini').asdatetime:=strtodate(maskedit1.Text);
dm_Dados.zqry_eqrecmerc.ParamByName('dtfim').asdatetime:=strtodate(maskedit2.Text);
if edit1.text='' then
begin
dm_Dados.zqry_eqrecmerc.ParamByName('cli').Value:='%';
end
else
begin
dm_Dados.zqry_eqrecmerc.ParamByName('cli').Value:=DBText1.Caption;
end;
dm_dados.zqry_eqrecmerc.Open;
if dm_dados.zqry_eqrecmerc.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end;
 frm_Rel_os.rlreport1.preview;
//        showmessage('select * from espelho where codnat in ('+cfop+')');
//        delete(cfop,length(cfop),-1);^}
end;

procedure Tfrm_DLG_OS.BitBtn2Click(Sender: TObject);
begin
maskedit1.Clear;
maskedit2.Clear;
dm_dados.zqry_EQRECMERC.Close;
dm_dados.zqry_EQRECMERC.Open;
dm_Dados.zqry_EQRECMERC.Refresh;
end;

procedure Tfrm_DLG_OS.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dm_dados.zqry_vdcliente.close;
dm_dados.zqry_vdcliente.sql.clear;
dm_dados.zqry_vdcliente.sql.Add('select * from vdcliente where nomecli like :nomep');
dm_dados.zqry_vdcliente.params.ParamByName('nomep').Value:=edit1.Text+'%';
dm_dados.zqry_vdcliente.Open;
if dm_dados.zqry_vdcliente.IsEmpty then
 begin
   Showmessage('Não existem valores que coincidem com a busca');
 end;
end;

end.
