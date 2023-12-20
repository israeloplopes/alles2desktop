unit cad_chequedevolvido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, ufuncoes, Vcl.DBCtrls, Vcl.Mask, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_CAD_CHEQUEDEVOLVIDO = class(TForm)
    gb_IDENTIFICACHEQUE: TGroupBox;
    edt_BUSCABANCO: TEdit;
    edt_BUSCACONTA: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_BUSCACHEQUE: TEdit;
    Label3: TLabel;
    btn_BUSCAR: TBitBtn;
    DBText1: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label12: TLabel;
    DBText9: TDBText;
    Label13: TLabel;
    DBText10: TDBText;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    edt_CODALINEA: TEdit;
    DBText11: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    msk_DTDEP: TMaskEdit;
    msk_DTDEV: TMaskEdit;
    cb_REAPRESENTA: TComboBox;
    edt_AUTORIZAREAPRESENTAR: TEdit;
    Label19: TLabel;
    msk_DTREAPRESENTA: TMaskEdit;
    btn_CADASTRA: TBitBtn;
    btn_GERANOVORECEBER: TBitBtn;
    DataSource1: TDataSource;
    dts_SGSEQREC: TDataSource;
    zqry_SGINICONSP: TZQuery;
    zqry_SGSEQREC: TZQuery;
    zqry_SGSEQRECCODEMP: TIntegerField;
    zqry_SGSEQRECCODFILIAL: TSmallintField;
    zqry_SGSEQRECSGTAB: TWideStringField;
    zqry_SGSEQRECNROSEQ: TIntegerField;
    zqry_SGSEQRECDTINS: TDateField;
    zqry_SGSEQRECHINS: TTimeField;
    zqry_SGSEQRECIDUSUINS: TWideStringField;
    zqry_SGSEQRECDTALT: TDateField;
    zqry_SGSEQRECHALT: TTimeField;
    zqry_SGSEQRECIDUSUALT: TWideStringField;
    ibquery1: TZQuery;
    procedure btn_BUSCARClick(Sender: TObject);
    procedure edt_CODALINEAKeyPress(Sender: TObject; var Key: Char);
    procedure msk_DTDEPKeyPress(Sender: TObject; var Key: Char);
    procedure msk_DTDEVKeyPress(Sender: TObject; var Key: Char);
    procedure cb_REAPRESENTAKeyPress(Sender: TObject; var Key: Char);
    procedure msk_DTREAPRESENTAExit(Sender: TObject);
    procedure btn_CADASTRAClick(Sender: TObject);
    procedure edt_BUSCABANCOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_BUSCACONTAKeyPress(Sender: TObject; var Key: Char);
    procedure edt_BUSCACHEQUEKeyPress(Sender: TObject; var Key: Char);
    procedure msk_DTREAPRESENTAEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_GERANOVORECEBERClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CAD_CHEQUEDEVOLVIDO: Tfrm_CAD_CHEQUEDEVOLVIDO;
  cod_motivo,seqrec,seqsequencia:integer;

implementation

{$R *.dfm}

uses dados, principal;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.btn_CADASTRAClick(Sender: TObject);
begin
dm_Dados.EXECUTASGINICONSP;
dm_Dados.zqry_fncheque.close;
dm_dados.zqry_fncheque.SQL.Clear;
dm_Dados.zqry_FNCHEQUE.SQL.Add('update fncheque set codalinea=:alinea,sitcheq=''DV'', ');
dm_dados.zqry_FNCHEQUE.SQL.Add('dtdepcheq=:dtdep,dtdevolcheq=:dtdev,reapresentar=:denovo,AUTREAPRESENTAR=:autoriza,DTREAPRESENTAR=:dtdenovo');
dm_dados.zqry_FNCHEQUE.SQL.Add('where codbanc=:banccod and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
dm_dados.zqry_FNCHEQUE.ParamByName('banccod').AsInteger:=strtoint(edt_buscabanco.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('emiteconta').AsString:=trim(edt_buscaconta.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_buscacheque.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.zqry_FNCHEQUE.ParamByName('alinea').AsInteger:=cod_motivo;
dm_dados.zqry_FNCHEQUE.ParamByName('dtdep').AsDate:=strtodate(msk_DTDEP.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('dtdev').AsDate:=strtodate(msk_DTDEV.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('denovo').AsString:=cb_REAPRESENTA.Text;
dm_dados.zqry_FNCHEQUE.ParamByName('autoriza').AsString:=edt_AUTORIZAREAPRESENTAR.Text;
dm_dados.zqry_FNCHEQUE.ParamByName('dtdenovo').value:=msk_DTREAPRESENTA.text;
dm_Dados.zqry_FNCHEQUE.execsql;
//dm_Dados.zqry_FNCHEQUE.ApplyUpdates(1);
mostratelaaviso('DADOS GRAVADOS COM SUCESSO','');
btn_BUSCARClick(Self);
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.btn_GERANOVORECEBERClick(Sender: TObject);
begin
if edt_BUSCACHEQUE.Text<>'' then
begin
ibquery1.Close;
ibquery1.SQL.Clear;
ibquery1.sql.add('SELECT MAX(codrec) as Sequencia FROM fnreceber');
ibquery1.Open;
seqrec:=ibquery1.FieldByname('sequencia').asInteger;
// Sequencia SGSEQUENCIA
zqry_sgseqrec.Close;
zqry_sgseqrec.sql.Clear;
zqry_sgseqrec.sql.add('select * from sgsequencia where sgtab=:buscarec and codemp=:empcod');
zqry_sgseqrec.ParamByName('buscarec').Value:='RC';
zqry_sgseqrec.ParamByName('empcod').asinteger:=dm_Dados.codemp;
zqry_sgseqrec.open;
seqsequencia:=zqry_SGSEQRECNROSEQ.Value;
if seqsequencia<=seqrec then seqsequencia:=seqrec+1;
dm_Dados.executasginiconsp;
dm_Dados.Zqry_FNRECEBER.Close;
dm_dados.ZQRY_FNRECEBER.Open;
dm_dados.ZQRY_FNRECEBER.Insert;
// CAMPOS DE CONTAS A RECEBER
dm_Dados.zqry_FNRECEBERCODEMP.AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNRECEBERCODFILIAL.AsInteger:=1;
dm_dados.zqry_FNRECEBERCODREC.AsInteger:=seqsequencia;
dm_Dados.zqry_FNRECEBERCODEMPPG.AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNRECEBERCODFILIALPG.AsInteger:=1;
dm_Dados.zqry_FNRECEBERCODEMPCL.AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNRECEBERCODFILIALCL.AsInteger:=1;
dm_Dados.zqry_FNRECEBERCODEMPTC.AsInteger:=dm_Dados.codemp;
dm_dados.zqry_FNRECEBERCODFILIALTC.AsInteger:=1;
dm_Dados.zqry_FNRECEBERCODPLANOPAG.AsInteger:=1;
dm_dados.zqry_FNRECEBERCODCLI.AsInteger:=dm_dados.zqry_FNCHEQUECODCLI.AsInteger;
dm_Dados.zqry_FNRECEBERVLRREC.AsFloat:=dm_Dados.zqry_FNCHEQUEVLRCHEQ.AsFloat;
dm_dados.zqry_FNRECEBERVLRDEVREC.AsFloat:=0.00;
dm_Dados.zqry_FNRECEBERVLRPARCREC.AsFloat:=dm_Dados.zqry_FNCHEQUEVLRCHEQ.AsFloat;
dm_dados.zqry_FNRECEBERVLRAPAGREC.AsFloat:=dm_dados.zqry_FNCHEQUEVLRCHEQ.AsFloat;
//BUSCA TIPO DE COBRANCA
dm_dados.Zqry_FNTIPOCOB.Close;
dm_dados.Zqry_FNTIPOCOB.SQL.Clear;
dm_Dados.Zqry_FNTIPOCOB.SQL.Add('select * from fntipocob where desctipocob=:tipocob and codemp=:empcod');
dm_Dados.Zqry_FNTIPOCOB.ParamByName('tipocob').AsString:='CHEQUE';
dm_Dados.Zqry_FNTIPOCOB.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_dados.ZQRY_FNTIPOCOB.Open;
if dm_dados.ZQRY_FNTIPOCOB.IsEmpty then
begin
  //
end
else
begin
  dm_Dados.zqry_FNRECEBERCODTIPOCOB.AsInteger:=dm_dados.zqry_FNTIPOCOBCODTIPOCOB.AsInteger;
end;
//
dm_dados.zqry_FNRECEBERDTCOMPREC.AsDateTime:=date;
dm_Dados.zqry_FNRECEBERDATAREC.AsDateTime:=date;
dm_Dados.zqry_FNRECEBERDOCREC.AsInteger:=dm_Dados.zqry_FNCHEQUENUMCHEQ.AsInteger;
dm_Dados.zqry_FNRECEBERSTATUSREC.AsString:='R1';
dm_dados.zqry_FNRECEBEREMMANUT.AsString:='N';
dm_Dados.zqry_FNRECEBERDTINS.AsDateTime:=date;
dm_Dados.zqry_FNRECEBERHINS.AsDateTime:=time;
dm_Dados.zqry_FNRECEBERIDUSUINS.AsString:='sysdba';
dm_dados.zqry_FNRECEBEROBSREC.AsString:='CHEQUE DEVOLVIDO NUMERO '+DM_DADOS.zqry_FNCHEQUENUMCHEQ.AsString;
DM_DADOS.zqry_FNRECEBER.post;
dm_dados.zqry_FNRECEBER.ApplyUpdates;
zqry_sgseqrec.Close;
zqry_sgseqrec.sql.Clear;
zqry_sgseqrec.sql.add('update sgsequencia set nroseq=:seq where sgtab=:venda and codemp=:empcod');
zqry_sgseqrec.ParamByName('venda').asstring:='RC';
zqry_sgseqrec.ParamByName('empcod').asinteger:=dm_Dados.codemp;
zqry_SGSEQrec.ParamByName('seq').AsInteger:=seqsequencia+1;
zqry_sgseqrec.execsql;
mostratelaaviso('DADOS GRAVADOS COM SUCESSO','');
end;

end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.btn_BUSCARClick(Sender: TObject);
begin
dm_dados.zqry_FNCHEQUE.close;
dm_dados.zqry_fncheque.SQL.Clear;
dm_Dados.zqry_FNCHEQUE.SQL.Add('select * from fncheque where codbanc=:banccod and contaemite=:emiteconta and numcheq=:cheqnum and codemp=:empcod');
dm_dados.zqry_FNCHEQUE.ParamByName('banccod').AsInteger:=strtoint(edt_buscabanco.Text);
dm_dados.zqry_FNCHEQUE.ParamByName('emiteconta').AsString:=trim(edt_buscaconta.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('cheqnum').asinteger:=strtoint(edt_buscacheque.Text);
dm_Dados.zqry_FNCHEQUE.ParamByName('empcod').AsInteger:=dm_Dados.codemp;
dm_Dados.zqry_FNCHEQUE.Open;
if dm_Dados.zqry_FNCHEQUE.IsEmpty then
begin
  mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque');
end
else
begin
  edt_CODALINEA.Text:=inttostr(dm_Dados.zqry_FNCHEQUECODALINEA.AsInteger);
  dm_dados.zqry_FNCHEQUE_ALINEA.Close;
  dm_Dados.Zqry_FNCHEQUE_ALINEA.SQL.Clear;
  dm_dados.Zqry_FNCHEQUE_ALINEA.SQL.Add('select * from fncheque_alinea where codalinea=:cod');
  dm_Dados.Zqry_FNCHEQUE_ALINEA.ParamByName('cod').AsInteger:=strtoint(edt_codalinea.Text);
  dm_dados.zqry_FNCHEQUE_ALINEA.Open;
  msk_DTDEP.Text:=datetostr(dm_dados.zqry_FNCHEQUEDTDEPCHEQ.AsDateTime);
  msk_DTDEV.Text:=datetostr(dm_dados.zqry_FNCHEQUEDTDEVOLCHEQ.AsDateTime);
  cb_REAPRESENTA.Text:=dm_dados.zqry_FNCHEQUEREAPRESENTAR.AsString;
  edt_AUTORIZAREAPRESENTAR.Text:=dm_dados.zqry_FNCHEQUEAUTREAPRESENTAR.AsString;
  msk_DTREAPRESENTA.Text:=datetostr(dm_Dados.zqry_FNCHEQUEDTREAPRESENTAR.AsDateTime);
end;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.cb_REAPRESENTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (cb_REAPRESENTA.Text='S') and (key=#13) then edt_AUTORIZAREAPRESENTAR.SetFocus;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.edt_BUSCABANCOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (edt_BUSCABANCO.Text<>'') then edt_BUSCACONTA.SetFocus;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.edt_BUSCACHEQUEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (edt_BUSCABANCO.Text<>'') then btn_BUSCARClick(Sender);
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.edt_BUSCACONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (edt_BUSCACONTA.Text<>'') then edt_BUSCACHEQUE.SetFocus;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.edt_CODALINEAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
begin
  if edt_CODALINEA.Text='' then
  begin
    mostratelaaviso('Informe uma valor para realizar a busca','Campo sem preenchimento');
    edt_CODALINEA.Clear;
    edt_CODALINEA.setfocus;
  end
  else
  begin
    dm_dados.zqry_FNCHEQUE_ALINEA.Close;
    dm_Dados.zqry_FNCHEQUE_ALINEA.SQL.Clear;
    dm_dados.zqry_FNCHEQUE_ALINEA.SQL.Add('select * from fncheque_alinea where codalinea=:cod');
    dm_Dados.zqry_FNCHEQUE_ALINEA.ParamByName('cod').AsInteger:=strtoint(edt_codalinea.Text);
    dm_dados.zqry_FNCHEQUE_ALINEA.Open;
    if dm_Dados.zqry_FNCHEQUE_ALINEA.IsEmpty then
    begin
        mostratelaaviso('Nada localizado com base nas informações','tab.: fncheque_alinea');
        edt_codalinea.Clear;
        edt_codalinea.SetFocus;
    end
    else
    begin
      cod_motivo:=strtoint(edt_CODALINEA.Text);
      msk_DTDEP.SetFocus;
    end;
  end;
end;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm_Dados.zqry_FNCHEQUE.Close;
dm_Dados.MEMORIA;
edt_BUSCABANCO.Clear;
edt_BUSCACONTA.Clear;
edt_BUSCACHEQUE.Clear;
msk_DTDEP.Clear;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.msk_DTDEPKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key=#13) then msk_DTDEV.setfocus;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.msk_DTDEVKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key =#13) then cb_REAPRESENTA.SetFocus;

end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.msk_DTREAPRESENTAEnter(Sender: TObject);
begin
if cb_REAPRESENTA.Text='S' then
begin
  msk_DTREAPRESENTA.Clear;
  msk_DTREAPRESENTA.EditMask:='99/99/9999';
end
else
begin
  msk_DTREAPRESENTA.EditMask:='';
end;
end;

procedure Tfrm_CAD_CHEQUEDEVOLVIDO.msk_DTREAPRESENTAExit(Sender: TObject);
begin
if cb_REAPRESENTA.Text<>'S' then msk_DTREAPRESENTA.Clear;
end;

end.
