unit dlg_inventario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.CheckLst, Vcl.Grids, Vcl.DBGrids, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, CFOP ;

type
  Tfrm_DLG_INVENTARIO = class(TForm)
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    CheckListBox4: TCheckListBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    lbl_nomestatus: TLabel;
    btn_MARCAR: TBitBtn;
    btn_DESMARCAR: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label3: TLabel;
    edt_cod: TEdit;
    CheckListBox1: TCheckListBox;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    btn_indcom_compra: TBitBtn;
    btn_devolucao_compra: TBitBtn;
    btn_trans_compra: TBitBtn;
    btn_ativo_compra: TBitBtn;
    btn_outros_compra: TBitBtn;
    btn_indcom_venda: TBitBtn;
    btn_devolucao_venda: TBitBtn;
    btn_trans_venda: TBitBtn;
    btn_ativo_venda: TBitBtn;
    btn_outros_venda: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn_MARCARClick(Sender: TObject);
    procedure btn_DESMARCARClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btn_indcom_compraClick(Sender: TObject);
    procedure btn_devolucao_compraClick(Sender: TObject);
    procedure btn_trans_compraClick(Sender: TObject);
    procedure btn_ativo_compraClick(Sender: TObject);
    procedure btn_outros_compraClick(Sender: TObject);
    procedure btn_indcom_vendaClick(Sender: TObject);
    procedure btn_devolucao_vendaClick(Sender: TObject);
    procedure btn_trans_vendaClick(Sender: TObject);
    procedure btn_ativo_vendaClick(Sender: TObject);
    procedure btn_outros_vendaClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_INVENTARIO: Tfrm_DLG_INVENTARIO;
  inicfop, fimcfop, inicfopforauf, fimcfopforauf:string;
  enttotal, saitotal:real;
  cfop : TCFOP;


implementation

{$R *.dfm}

uses rel_espelho, dados, con_espmovprod, con_custos, rel_espelho99;

procedure Tfrm_DLG_INVENTARIO.BitBtn10Click(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
//DM_dADOS.zqry_LFNATOPER.CommandText:='select * from lfnatoper where codnat in(1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126) and codemp=:empresa order by codnat';
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
    cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
    CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    dm_dados.zqry_LFNATOPER.Next;
  end;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn11Click(Sender: TObject);
begin
DM_DADOS.zqry_ESPELHO.Close;
dm_Dados.zqry_ESPELHO.sql.clear;
DM_dADOS.zqry_ESPELHO.sql.Add('select * from espelho');
dm_dados.zqry_espelho.open;
frm_REL_ESPELHO.RLReport1.Print;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn1Click(Sender: TObject);
var i,tamanho : integer;
     valor : Currency;
     texto, cfop,sql: string;
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
sql:='select * from espelho where codnat in(';
for i := 0 to CheckListBox1.Count-1 do
     if CheckListBox1.Checked[i] then
        begin
        texto := Copy(CheckListBox1.Items[i],1,4) + ' ';
         cfop:=cfop+texto+',';
        end;
        tamanho:=length(cfop);
        cfop:=copy(cfop,1,tamanho-1);
        lbl_nomestatus.Caption:=cfop;


        sql:=sql+cfop+') and dtmovprod between :dtini and :dtfim order by descprod, dtmovprod,docmovprod asc;';
DM_DADOS.zqry_ESPELHO.Close;
dm_Dados.zqry_ESPELHO.sql.clear;
DM_dADOS.zqry_ESPELHO.sql.Add(sql);
DM_DADOS.zqry_ESPELHO.parambyname('dtini').AsDateTime:=strtodate(maskedit1.text);
DM_DADOS.zqry_ESPELHO.parambyname('dtfim').AsDateTime:=strtodate(maskedit2.Text);
dm_dados.zqry_ESPELHO.open;
Application.ProcessMessages;
      if dm_dados.zqry_ESPELHO.IsEmpty then
      begin
         Showmessage('Não existem valores que coincidem com a busca');
      end;
      frm_rel_espelho99.rlreport1.preview;
    end;
  end;
dm_Dados.zqry_ESPELHO.Close;
dm_dados.zqry_ESPELHO.Open;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn2Click(Sender: TObject);
var i,tamanho : integer;
     valor : Currency;
     texto, cfop,sql: string;
begin
sql:='select * from espelho where codnat in(';
for i := 0 to CheckListBox1.Count-1 do
     if CheckListBox1.Checked[i] then
        begin
        texto := CheckListBox1.Items[i] + ' ';
        //table1.Locate(´Lastname´, texto, [loPartialKey, loCaseInsensitive]);
        //valor := Valor + Table1.FieldByName(´Salary´).AsCurrency;
        //Label1.Caption := texto + currtostr(valor);
 //       showmessage(texto);
        cfop:=cfop+texto+',';
        end;
//        showmessage('select * from espelho where codnat in ('+cfop+')');
//        delete(cfop,length(cfop),-1);
        tamanho:=length(cfop);
        cfop:=copy(cfop,1,tamanho-1);


        sql:=sql+cfop+') and dtmovprod between :dtini and :dtfim order by codprod;';
DM_DADOS.zqry_ESPELHO.Close;
dm_Dados.zqry_ESPELHO.sql.clear;
//DM_dADOS.zqry_ESPELHO.CommandText:='select * from espelho where codnat in (:cfopini);';
DM_dADOS.zqry_ESPELHO.sql.Add(sql);
DM_DADOS.zqry_ESPELHO.parambyname('dtini').AsDateTime:=strtodate(maskedit1.text);
DM_DADOS.zqry_ESPELHO.parambyname('dtfim').AsDateTime:=strtodate(maskedit2.Text);

//DM_DADOS.zqry_ESPELHO.parambyname('cfopini').asstring:=trim(cfop);
//dM_Dados.zqry_ESPELHO.Execute;
dm_dados.zqry_ESPELHO.open;
Application.ProcessMessages;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn3Click(Sender: TObject);
var
sq:string;
cntr:integer ;
begin
with CheckListBox1 do begin
for cntr:=0 to count-1 do begin
if checked[cntr] then Begin
if sq <>'' then sq := sq+ ' or ';
sq := sq+ ' somefield = '+quotedStr(items[cntr]);
end;//if
end;//for
end;//with
sq := 'Select * from yourTable where '+sq
//AdoQuery1.sql.text := sq;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn5Click(Sender: TObject);
begin
frm_con_espmovprod.show;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn6Click(Sender: TObject);
var i,tamanho : integer;
     valor : Currency;
     texto, cfop,sql: string;
begin
if edt_cod.Text='' then
  begin
    showmessage('Não há códigos informados');
    edt_cod.SetFocus;
    edt_cod.Clear
  end;
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
sql:='select * from espelho where codnat in(';
for i := 0 to CheckListBox1.Count-1 do
     if CheckListBox1.Checked[i] then
        begin
        texto := Copy(CheckListBox1.Items[i],1,4) + ' ';
         cfop:=cfop+texto+',';
        end;
        tamanho:=length(cfop);
        cfop:=copy(cfop,1,tamanho-1);
        lbl_nomestatus.Caption:=cfop;


        sql:=sql+cfop+') and dtmovprod between :dtini and :dtfim and codprod=:produto order by dtmovprod, docmovprod;';
DM_DADOS.zqry_ESPELHO.Close;
dm_Dados.zqry_ESPELHO.sql.clear;
DM_dADOS.zqry_ESPELHO.sql.Add(sql);
DM_DADOS.zqry_ESPELHO.parambyname('dtini').AsDateTime:=strtodate(maskedit1.text);
DM_DADOS.zqry_ESPELHO.parambyname('dtfim').AsDateTime:=strtodate(maskedit2.Text);
DM_DADOS.zqry_ESPELHO.parambyname('produto').asinteger:=strtoint(edt_cod.text);
dm_dados.zqry_ESPELHO.open;
Application.ProcessMessages;
      if dm_dados.zqry_ESPELHO.IsEmpty then
      begin
         Showmessage('Não existem valores que coincidem com a busca');
      end;
      //frm_rel_espelho.RLReport1.PreviewClosed:=true;
      frm_Rel_espelho99.rlreport1.Print;
    end;
  end;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn7Click(Sender: TObject);
begin
dm_dados.zqry_LFNATOPER.First;
CheckListBox1.Items.Clear;
  while not dm_dados.zqry_LFNATOPER.Eof do

  begin

    cfop := TCFOP.Create;
    if dm_Dados.zqry_LFNATOPER.FieldByName('codnat').VALUE <='4999' THEN
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
         cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;

    CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);

    END;
     dm_dados.zqry_LFNATOPER.Next;

  end;

end;

procedure Tfrm_DLG_INVENTARIO.BitBtn8Click(Sender: TObject);
begin
dm_dados.zqry_LFNATOPER.First;
CheckListBox1.Items.Clear;
  while not dm_dados.zqry_LFNATOPER.Eof do

  begin

    cfop := TCFOP.Create;
    if dm_Dados.zqry_LFNATOPER.FieldByName('codnat').VALUE >='5000' THEN
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
         cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;

    CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);

    END;
     dm_dados.zqry_LFNATOPER.Next;

  end;
end;

procedure Tfrm_DLG_INVENTARIO.BitBtn9Click(Sender: TObject);
begin
frm_con_Custos.show;
end;

procedure Tfrm_DLG_INVENTARIO.btn_MARCARClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to CheckListBox1.Items.Count -1 do begin CheckListBox1.Checked[i]:=true;
  end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_outros_compraClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(1900,1901,1902,1903,1904,1905,1906,1907,1908,1909,1910,1911,1912,1913,1914,1915,1916,1917,1918,1919,1920,1921,1922,1923,1924,1925,1926,1931,1932,1933,1949,'+'2900,2901,2902,2903,2904,2905,2906,2907,2908,2909,2910,2911,2912,2913,2914,2915,2916,2917,2918,2929,2920,2921,2922,2923,2924,2925,2926,2931,2932,2933,2949) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
  end;

end;

procedure Tfrm_DLG_INVENTARIO.btn_outros_vendaClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(5900,5901,5902,5903,5904,5905,5906,5907,5908,5909,5910,5911,5912,5913,5914,5915,5916,5917,5918,5919,5920,5921,5922,5923,5924,5925,5926,5927,5928,5929,5931,5932,5933,5949,'+'6900,6901,6902,6903,6904,6905,6906,6907,6908,6909,6910,6911,6912,6913,6914,6915,6916,6917,6918,6919,6920,6921,6922,6923,6924,6925,6926,6927,6928,6929,6931,6932,6933,6949) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;

end;

procedure Tfrm_DLG_INVENTARIO.btn_trans_compraClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(1150,1151,1152,1153,1154,'+'2150,2151,2152,2153,2154) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
  end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_trans_vendaClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(5150,5151,5152,5153,5155,5156,'+'6150,6151,6152,6153,6155,6156) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;

end;

procedure Tfrm_DLG_INVENTARIO.btn_ativo_compraClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(1550,1551,1552,1553,1554,1555,1556,1557,'+'2550,2551,2552,2553,2554,2555,2556,2557) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
  end;

end;

procedure Tfrm_DLG_INVENTARIO.btn_ativo_vendaClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(5550,5551,5552,5553,5554,5555,5556,5557,'+'6550,6551,6552,6553,6554,6555,6556,6557) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_DESMARCARClick(Sender: TObject);
var i: integer;
begin
  for i := 0 to CheckListBox1.Items.Count -1 do begin CheckListBox1.Checked[i]:=false;
  end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_devolucao_compraClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(1200,1201,1203,1204,1205,1206,1207,1208,1209,'+'2200,2201,2203,2204,2205,2206,2207,2208,2209) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_devolucao_vendaClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(5200,5201,5203,5204,5205,5206,5207,5208,5209,5210,'+'6200,6201,6203,6204,6205,6206,6207,6208,6209,6210) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;

end;

procedure Tfrm_DLG_INVENTARIO.btn_indcom_compraClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
//DM_dADOS.zqry_LFNATOPER.CommandText:='select * from lfnatoper where codnat in(1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126) and codemp=:empresa order by codnat';
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,'+'2100,2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2121,2112,2113,2114,2115,2116,2117,2118,2119,2120,2121,2122,2123,2124,2125,2126) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;
end;

procedure Tfrm_DLG_INVENTARIO.btn_indcom_vendaClick(Sender: TObject);
begin
CheckListBox1.Items.Clear;
DM_DADOS.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.sql.clear;
//DM_dADOS.zqry_LFNATOPER.CommandText:='select * from lfnatoper where codnat in(1100,1101,1102,1103,1104,1105,1106,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126) and codemp=:empresa order by codnat';
DM_dADOS.zqry_LFNATOPER.sql.Add('select * from lfnatoper where codnat in(5000,5100,5101,5102,5103,5104,5105,5106,5109,5110,5111,5112,5113,5114,5115,5116,5117,5118,5119,5120,5122,5123,5124,5125,'+'6000,6100,6101,6102,6103,6104,6105,6106,6109,6110,6111,6112,6113,6114,6115,6116,6117,6118,6119,6120,6122,6123,6124,6125) and codemp=:empresa order by codnat');
DM_DADOS.zqry_LFNATOPER.parambyname('empresa').value:=dm_DADOS.zqry_SGFILIALCODEMP.asinteger;
dm_dados.zqry_LFNATOPER.open;
Application.ProcessMessages;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    BEGIN
      cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
      cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
      CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    END;
  dm_dados.zqry_LFNATOPER.Next;
end;

end;

procedure Tfrm_DLG_INVENTARIO.FormActivate(Sender: TObject);
begin
enttotal:=enttotal+dm_dados.zqry_ESPELHOTOTALENT.value;
saitotal:=saitotal+dm_dados.zqry_ESPELHOTOTALSAI.value;
btn_indcom_compra.Caption:='Industria'+#13+'Comércio';
btn_devolucao_compra.Caption:='Devolução';
btn_trans_compra.Caption:='Transferê'+#13+'ncias';
btn_ativo_compra.Caption:='Ativo'+#13+'Imobilizado';
btn_outros_compra.Caption:='Outras'+#13+'Entradas';
btn_indcom_venda.Caption:='Saídas'+#13+'Prest. Serv.';
btn_devolucao_venda.Caption:='Devolução';
btn_trans_venda.Caption:='Transferê'+#13+'ncias';
btn_ativo_venda.Caption:='Ativo'+#13+'Imobilizado';
btn_outros_venda.Caption:='Outras'+#13+'Saídas';
dm_dados.zqry_LFNATOPER.Params.Clear;
dm_dados.zqry_LFNATOPER.Close;
dm_Dados.zqry_LFNATOPER.SQL.Clear;
dm_dados.zqry_LFNATOPER.SQL.Add('select * from lfnatoper');
dm_dados.zqry_LFNATOPER.Open;
dm_dados.zqry_LFNATOPER.First;
CheckListBox1.Items.Clear;
while not dm_dados.zqry_LFNATOPER.Eof do
  begin
    cfop := TCFOP.Create;
    cfop.codnat := dm_dados.zqry_LFNATOPER.FieldByName('CODNAT').AsString;
    cfop.descnat := dm_dados.zqry_LFNATOPER.FieldByName('DESCNAT').AsString;
    CheckListBox1.Items.AddObject(cfop.codnat + ' - ' + cfop.descnat, cfop);
    dm_dados.zqry_LFNATOPER.Next;
  end;
end;

end.
