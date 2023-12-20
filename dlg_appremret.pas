unit dlg_appremret;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Winapi.ShellAPI,
  Vcl.Grids, Vcl.DBGrids, Data.DB, printers,ACBrBase, ACBrBoleto, typinfo,
  ACBrBoletoFCFortesFr, Vcl.Mask, u_funcoes, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfrm_DLG_APPREMRET = class(TForm)
    Label1: TLabel;
    edt_CODCONTA: TEdit;
    btn_BUSCABANCO: TBitBtn;
    btn_REMESSA: TBitBtn;
    btn_RETORNO: TBitBtn;
    DBText1: TDBText;
    OpenDialog1: TOpenDialog;
    btn_TRATARRETORNO: TBitBtn;
    edtArquivo: TEdit;
    gb_DADOS: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    lbl_DATAOCORRENCIA: TLabel;
    Label6: TLabel;
    lbl_QTDOCORRENCIA: TLabel;
    Label7: TLabel;
    lbl_VALORRECEBIDO: TLabel;
    btn_IMPRIME_MEMO: TBitBtn;
    DataSource1: TDataSource;
    gb_IMPRIMEESPELHO: TGroupBox;
    msk_OCORRE: TMaskEdit;
    Label8: TLabel;
    btn_IMPRIME_ESPELHO: TBitBtn;
    ACBrBoleto1: TACBrBoleto;
    zqry_SGINICONSP: TZQuery;
    ZQuery1: TZQuery;
    gb_APPBANCO: TGroupBox;
    gb_TRATARETORNO: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo2: TMemo;
    gb_BUSCACONTA: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Memo3: TMemo;
    btn_IMPRIME_RECEBIMENTO: TBitBtn;
    btn_REVERSO: TBitBtn;
    zqry_sgseqrec: TZQuery;
    zdts_sgseqrec: TDataSource;
    zqry_sgseqrecCODEMP: TIntegerField;
    zqry_sgseqrecCODFILIAL: TSmallintField;
    zqry_sgseqrecSGTAB: TWideStringField;
    zqry_sgseqrecNROSEQ: TIntegerField;
    zqry_sgseqrecDTINS: TDateField;
    zqry_sgseqrecHINS: TTimeField;
    zqry_sgseqrecIDUSUINS: TWideStringField;
    zqry_sgseqrecDTALT: TDateField;
    zqry_sgseqrecHALT: TTimeField;
    zqry_sgseqrecIDUSUALT: TWideStringField;
    procedure btn_BUSCABANCOClick(Sender: TObject);
    procedure btn_REMESSAClick(Sender: TObject);
    procedure btn_RETORNOClick(Sender: TObject);
    procedure edt_CODCONTAKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_TRATARRETORNOClick(Sender: TObject);
    procedure btn_IMPRIME_MEMOClick(Sender: TObject);
    procedure btn_IMPRIME_ESPELHOClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_IMPRIME_RECEBIMENTOClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_REVERSOClick(Sender: TObject);
    procedure gravaboleto;
  private
    { Private declarations }
  public
    { Public declarations }
    nomebanco,numerobanco:string;
    tipocobranca:integer;

  linhasarq, texto, line, linha1, dtgerado, dtvence, nosso,ecpf,dia,mes,ano,codvenda,vlrdoboleto, nomecliente: String;
  arquivo : TextFile;
  nrec,ncli,codcli,seqsequencia,seqrec: integer;
  cpf, cnpj:string;
  milhar,centavo:double;
  primeiralinha:TStringList;

  end;

var
  frm_DLG_APPREMRET: Tfrm_DLG_APPREMRET;

implementation

{$R *.dfm}

uses u_dados, con_receber, rel_retboletos;

FUNCTION RemoveZeros(S: string): string;
var
I, J : Integer;
begin
I := Length(S);
while (I > 0) and (S[I] <= ' ') do
      begin
      Dec(I);
      end;
J := 1;
while (J < I) and ((S[J] <= ' ') or (S[J] = '0')) do
      begin
      Inc(J);
      end;
Result := Copy(S, J, (I-J)+1);
end;

procedure Tfrm_DLG_APPREMRET.btn_IMPRIME_ESPELHOClick(Sender: TObject);
begin
 if msk_ocorre.Text='' then
  begin
    dm_Dados.zqry_FNRETBOLETO.Close;
    dm_dados.zqry_FNRETBOLETO.SQL.Clear;
    dm_Dados.zqry_FNRETBOLETO.SQL.Add('select * from fnretboleto order by dtocorrencia desc, codretbanco');
    dm_Dados.zqry_FNRETBOLETO.Open;
    if dm_Dados.zqry_FNRETBOLETO.IsEmpty then
    begin
      showmessage('Busca n�o encontrada');
    end
    else
    begin
      frm_rel_retboletos.RLReport1.Preview();
    end;
  end
  else
  begin
    dm_Dados.zqry_FNRETBOLETO.Close;
    dm_dados.zqry_FNRETBOLETO.SQL.Clear;
    dm_Dados.zqry_FNRETBOLETO.SQL.Add('select * from fnretboleto where dtocorrencia=:data order by codretbanco, nossonumero');
    dm_Dados.zqry_FNRETBOLETO.ParamByName('data').AsDate:=strtodate(msk_ocorre.Text);
    dm_Dados.zqry_FNRETBOLETO.Open;
   if dm_Dados.zqry_FNRETBOLETO.IsEmpty then
    begin
      showmessage('Busca n�o encontrada');
    end
    else
    begin
      frm_rel_retboletos.RLReport1.Preview();
    end;
  end;
  MEMORIA;
end;

procedure Tfrm_DLG_APPREMRET.btn_IMPRIME_MEMOClick(Sender: TObject);
//begin
//PrintStrings(Memo1.Lines);
var
i, altura : Integer;
sMemo : String;
begin
With Printer do
begin
Title:= 'Imprimindo...';
BeginDoc;
With Canvas do
begin
altura := TextHeight('A');
for i := 1 to Memo1.Lines.Count do
begin
sMemo := Memo1.Lines[I];
TextOut(1, (i - 1) * Altura, sMemo);
end;
end;
EndDoc;
end;
end;

procedure Tfrm_DLG_APPREMRET.btn_IMPRIME_RECEBIMENTOClick(Sender: TObject);
begin
 if msk_ocorre.Text='' then
  begin
    dm_Dados.zqry_FNRETBOLETO.Close;
    dm_dados.zqry_FNRETBOLETO.SQL.Clear;
    dm_Dados.zqry_FNRETBOLETO.SQL.Add('select * from fnretboleto where codretbanco=:retbanco order by dtocorrencia desc');
    if dm_dados.zqry_FNBANCOCODBANCO.AsString='004' then dm_dados.zqry_FNRETBOLETO.ParamByName('retbanco').AsString:='06';

    dm_Dados.zqry_FNRETBOLETO.Open;
    if dm_Dados.zqry_FNRETBOLETO.IsEmpty then
    begin
      showmessage('Busca n�o encontrada');
    end
    else
    begin
      frm_rel_retboletos.RLReport1.Preview();
    end;
  end
  else
  begin
    dm_Dados.zqry_FNRETBOLETO.Close;
    dm_dados.zqry_FNRETBOLETO.SQL.Clear;
    dm_Dados.zqry_FNRETBOLETO.SQL.Add('select * from fnretboleto where dtocorrencia=:data and codretbanco=:retbanco order by nossonumero');
    dm_Dados.zqry_FNRETBOLETO.ParamByName('data').AsDate:=strtodate(msk_ocorre.Text);
    if dm_dados.zqry_FNBANCOCODBANCO.AsString='004' then dm_dados.zqry_FNRETBOLETO.ParamByName('retbanco').AsString:='06';
    dm_Dados.zqry_FNRETBOLETO.Open;
   if dm_Dados.zqry_FNRETBOLETO.IsEmpty then
    begin
      showmessage('Busca n�o encontrada');
    end
    else
    begin
      frm_rel_retboletos.RLReport1.Preview();
    end;
  end;

end;

procedure Tfrm_DLG_APPREMRET.btn_RETORNOClick(Sender: TObject);
begin
if dm_dados.zqry_FNBANCOAPPRETORNO.AsString='' then
begin
    showmessage('Aten��o'#13'Nao foi localizado instru��o do Aplicativo de Retorno'#13'Prime/Financeiro/Banco');
end
else
begin
//  winexec(PAnsiChar(dm_Dados.cds_FNBANCOAPPREMESSA.asstring),sw_shownormal);
  ShellExecute(Handle, 'open', pwidechar(dm_Dados.zqry_FNBANCOAPPRETORNO.asstring),  '', '', 1);
end;
end;

procedure Tfrm_DLG_APPREMRET.btn_REVERSOClick(Sender: TObject);
var
 I:integer;
begin
  linhasarq:=EmptyStr;
  texto:=emptystr;
  line:=emptystr;
  linha1:=emptystr;
  dtgerado:=emptystr;
  dtvence:=emptystr;
  nosso:=emptystr;
  dia:=emptystr;
  mes:=emptystr;
  ano:=emptystr;
  codvenda:=emptystr;
  vlrdoboleto:=emptystr;
  memo2.Clear;
  memo3.Clear;
  memo1.ReadOnly:=true;
  Memo1.Clear;
  OpenDialog1.Title := 'Selecione o Arquivo de Remessa';
  OpenDialog1.DefaultExt := '*.ret';
  OpenDialog1.Filter := 'Arquivos REMESSA (*.TXT)|*.txt|Todos os Arquivos (*.*)|*.*';
  //  OpenDialog1.InitialDir := frm_principal.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then
  begin
    edtArquivo.Text:= OpenDialog1.FileName;
    AssignFile(arquivo,OpenDialog1.FileName);
    Reset(arquivo);
    primeiralinha:=Tstringlist.Create;
    primeiralinha.LoadFromFile(edtArquivo.Text);
    linha1:=(primeiralinha.Strings[0]);
    dia:=copy(linha1,95,2)+'/';
    mes:=copy(linha1,97,2)+'/';
    ano:='20'+copy(linha1,99,2);
    dtgerado:=dia+mes+ano;
   // showmessage(dtgerado);
   mostratelaaguarde('Gravando Registro gerados em '+dtgerado);
    for I := 1 to primeiralinha.Count -2 do
    begin
      cnpj:=copy(primeiralinha[i],221,14);
      ecpf:=copy(primeiralinha[i],221,3);
      cpf:=copy(primeiralinha[i],224,11);
      nomecliente:=copy(primeiralinha[i],235,40);
      milhar:=strtofloat(copy(primeiralinha[i],135,3));
      centavo:=strtofloat(copy(primeiralinha[i],138,2));
      vlrdoboleto:=floattostr(milhar)+','+floattostr(centavo);
      codvenda:=copy(primeiralinha[i],111,5);
      dtvence:=copy(primeiralinha[i],121,2)+'/'+copy(primeiralinha[i],123,2)+'/20'+copy(primeiralinha[i],125,2);
      nosso:=copy(primeiralinha[i],63,7);
      if ecpf='000' then
      begin
       dm_dados.zqry_VDCLIENTE.close;
       dm_dados.zqry_vdcliente.sql.clear;
       dm_dados.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where cpfcli=:clicnpj');
       dm_Dados.zqry_VDCLIENTE.ParamByName('clicnpj').AsString:=cpf;
       dm_Dados.zqry_VDCLIENTE.Open;
       dm_Dados.zqry_VDCLIENTE.Open;
       if dm_dados.zqry_VDCLIENTE.IsEmpty then
       begin
         showmessage('O CPF '+cpf+' com o nome '+nomecliente+' n�o foi localizado no clientes cadastrados');
       end
       else
       begin
         gravaboleto;
       end;
      end
      else
      begin
        dm_dados.zqry_VDCLIENTE.close;
        dm_dados.zqry_vdcliente.sql.clear;
        dm_dados.zqry_VDCLIENTE.SQL.Add('select * from vdcliente where cnpjcli=:clicnpj');
        dm_Dados.zqry_VDCLIENTE.ParamByName('clicnpj').AsString:=cnpj;
        dm_Dados.zqry_VDCLIENTE.Open;
        if dm_dados.zqry_VDCLIENTE.IsEmpty then
        begin
          showmessage('O CNPJ '+cnpj+' n�o foi localizado no clientes cadastrados');
        end
        else
        begin
          gravaboleto;
        end;

      end;
    end;
    fechatelaaguarde;
  CloseFile(arquivo);
  end;
end;

procedure Tfrm_DLG_APPREMRET.gravaboleto;
begin
  codcli:=dm_dados.zqry_VDCLIENTECODCLI.AsInteger;
        //showmessage('Cliente localizado '+inttostr(codcli));
        zqry_sgseqrec.Close;
        zqry_sgseqrec.sql.Clear;
        zqry_sgseqrec.sql.add('select * from sgsequencia where sgtab=:buscarec and codemp=:empcod');
        zqry_sgseqrec.ParamByName('buscarec').Value:='RC';
        zqry_sgseqrec.ParamByName('empcod').asinteger:=dm_Dados.codemp;
        zqry_sgseqrec.open;
        seqsequencia:=zqry_SGSEQRECNROSEQ.Value;
        if seqsequencia<=seqrec then seqsequencia:=seqrec+1;
        executasginiconsp;
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
        dm_dados.zqry_FNRECEBERCODCLI.AsInteger:=codcli;
        dm_Dados.zqry_FNRECEBERVLRREC.AsFloat:=strtofloat(vlrdoboleto);
        dm_dados.zqry_FNRECEBERVLRDEVREC.AsFloat:=0.00;
        dm_Dados.zqry_FNRECEBERVLRPARCREC.AsFloat:=strtofloat(vlrdoboleto);//FormatFloat('###,##,##0.00',strtocurr(vlrdoboleto));
        dm_dados.zqry_FNRECEBERVLRAPAGREC.AsFloat:=strtofloat(vlrdoboleto);//FormatFloat('###,##,##0.00',strtocurr(vlrdoboleto));
        //BUSCA TIPO DE COBRANCA
        dm_dados.Zqry_FNTIPOCOB.Close;
        dm_dados.Zqry_FNTIPOCOB.SQL.Clear;
        dm_Dados.Zqry_FNTIPOCOB.SQL.Add('select * from fntipocob where desctipocob=:tipocob and codemp=:empcod');
        dm_Dados.Zqry_FNTIPOCOB.ParamByName('tipocob').AsString:='BOLETO';
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
        dm_dados.zqry_FNRECEBERCODEMPCB.AsInteger:=99;
        dm_dados.zqry_FNRECEBERCODFILIALCB.AsInteger:=1;
        dm_dados.zqry_FNRECEBERCODCARTCOB.AsString:='21';
        dm_dados.zqry_FNRECEBERCODEMPCA.AsInteger:=99;
        dm_dados.zqry_FNRECEBERCODFILIALCA.AsInteger:=1;
        dm_dados.zqry_FNRECEBERNUMCONTA.AsString:='64058';
        dm_Dados.zqry_FNRECEBERCODEMPBO.AsInteger:=99;
        dm_dados.zqry_FNRECEBERCODFILIALBO.AsInteger:=1;
        dm_dados.zqry_FNRECEBERCODBANCO.AsString:='004';
        dm_dados.zqry_FNRECEBERDTCOMPREC.AsDateTime:=strtodate(dtgerado);
        dm_Dados.zqry_FNRECEBERDATAREC.AsDateTime:=strtodate(dtgerado);
        dm_Dados.zqry_FNRECEBERDOCREC.AsInteger:=strtoint(codvenda);
        dm_dados.zqry_fnrecebercodvenda.AsInteger:=strtoint(codvenda);
        dm_Dados.zqry_FNRECEBERSTATUSREC.AsString:='R1';
        dm_dados.zqry_FNRECEBEREMMANUT.AsString:='N';
        dm_Dados.zqry_FNRECEBERDTINS.AsDateTime:=date;
        dm_Dados.zqry_FNRECEBERHINS.AsDateTime:=time;
        dm_Dados.zqry_FNRECEBERIDUSUINS.AsString:='sysdba';
        dm_dados.zqry_FNRECEBEROBSREC.AsString:='BOLETO IMPORTADO PERDA DADOS COM N. NF '+codvenda;
        DM_DADOS.zqry_FNRECEBER.post;
        dm_dados.zqry_FNRECEBER.ApplyUpdates;
        EXECUTASGINICONSP;

        dm_Dados.Zqry_FNITRECEBER.Close;
        dm_Dados.Zqry_FNITRECEBER.SQL.Clear;
        dm_Dados.Zqry_FNITRECEBER.SQL.Add('update fnitreceber set dtvencitrec=:dtvenc, dtprevitrec=:dtprev, nossonumero=:nnum where codrec=:reccod and codemp=:empcod');
        dm_Dados.Zqry_fnitreceber.ParamByName('dtvenc').AsDate:=strtodate(dtvence);
        dm_Dados.Zqry_fnitreceber.ParamByName('dtprev').AsDate:=strtodate(dtvence)+1;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('nnum').Asstring:=nosso;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('reccod').AsInteger:=seqsequencia;
        dm_Dados.Zqry_FNITRECEBER.ExecSQL;

        EXECUTASGINICONSP;

        zqry_sgseqrec.Close;
        zqry_sgseqrec.sql.Clear;
        zqry_sgseqrec.sql.add('update sgsequencia set nroseq=:seq where sgtab=:venda and codemp=:empcod');
        zqry_sgseqrec.ParamByName('venda').asstring:='RC';
        zqry_sgseqrec.ParamByName('empcod').asinteger:=dm_Dados.codemp;
        zqry_SGSEQrec.ParamByName('seq').AsInteger:=seqsequencia+1;
        zqry_sgseqrec.execsql;
end;

procedure Tfrm_DLG_APPREMRET.btn_BUSCABANCOClick(Sender: TObject);
begin
if edt_codconta.Text='' then
begin
  edt_codconta.setfocus;
  edt_codconta.Clear;
end
else
begin
  dm_dados.zqry_FNCONTA.Close;
  dm_Dados.zqry_FNCONTA.SQL.Clear;
  dm_Dados.zqry_FNCONTA.SQL.Add('select * from fnconta where numconta=:conta and codemp=:empcod');
  dm_Dados.zqry_FNCONTA.ParamByName('conta').Value:=edt_codconta.text;
  dm_Dados.zqry_FNCONTA.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
  dm_dados.zqry_FNCONTA.Open;
  if dm_dados.zqry_FNCONTA.IsEmpty then
  begin
    showmessage('Aten��o'#13'N�o foram encontrados dados com base na busca'#13'tab.: FNCONTA');
    edt_codconta.SetFocus;
    edt_codconta.Clear;
  end
  else
  begin
    dm_Dados.zqry_fnbanco.close;
    dm_Dados.zqry_fnbanco.sql.clear;
    dm_dados.zqry_fnbanco.sql.add('select * from fnbanco where codbanco=:bancocod and codemp=:empcod');
    dm_Dados.zqry_FNBANCO.ParamByName('bancocod').asstring:=dm_Dados.zqry_FNCONTACODBANCO.asstring;
    dm_Dados.zqry_FNBANCO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_dados.zqry_FNBANCO.Open;
    nomebanco:=dm_dados.zqry_FNBANCONOMEBANCO.AsString;
//    showmessage(nomebanco);
    numerobanco:=RemoveZeros(dm_dados.zqry_FNBANCOCODBANCO.AsString);
 //   showmessage(numerobanco);
    if numerobanco='4'    then tipocobranca:=13;
    if numerobanco='748'  then tipocobranca:=8;
    if numerobanco='237'  then tipocobranca:=5;
    if numerobanco='341'  then tipocobranca:=6;



    //
    dm_dados.zqry_FNITMODBOLETO.Close;
    dm_Dados.zqry_FNITMODBOLETO.SQL.Clear;
    dm_Dados.zqry_FNITMODBOLETO.SQL.Add('select * from fnitmodboleto where numconta=:conta and codemp=:empcod and codbanco=:bancocod');
    dm_Dados.zqry_FNITMODBOLETO.ParamByName('conta').Value:=dm_dados.zqry_FNCONTANUMCONTA.AsString;
    dm_Dados.zqry_FNITMODBOLETO.ParamByName('bancocod').Value:=dm_dados.zqry_FNBANCOCODBANCO.AsString;
    dm_Dados.zqry_FNITMODBOLETO.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
    dm_Dados.zqry_FNITMODBOLETO.Open;
  end;

end;

end;

procedure Tfrm_DLG_APPREMRET.btn_REMESSAClick(Sender: TObject);
begin
if dm_dados.zqry_FNBANCOAPPREMESSA.AsString='' then
begin
    showmessage('Aten��o'#13'Nao foi localizado instru��o do Aplicativo de Remessa'#13'Prime/Financeiro/Banco');
end
else
begin
  ShellExecute(Handle, 'open', pwidechar(dm_Dados.zqry_FNBANCOAPPREMESSA.asstring),  '', '', 1);
end;
end;

procedure Tfrm_DLG_APPREMRET.btn_TRATARRETORNOClick(Sender: TObject);
var
  linhasarq : String;
  arquivo : TextFile;
  i,nrec,ncli: integer;
  valorrecebido:double;
  cpfcnpj:string;
begin
  memo2.Clear;
  memo3.Clear;
  if (dbtext3.Caption='') or (edt_CODCONTA.Text='') then
  begin
    showmessage('Aten��o Usu�rio'#13'N�o foram localizadas informa��es sobre a conta banc�ria');
    edt_codconta.SetFocus;
    edt_codconta.Clear;
  end
  else
  begin
    valorrecebido:=0;
    memo1.ReadOnly:=true;
    Memo1.Clear;
    OpenDialog1.Title := 'Selecione o Arquivo Retorno';
    OpenDialog1.DefaultExt := '*.ret';
    OpenDialog1.Filter := 'Arquivos RET (*.RET)|*.ret|Todos os Arquivos (*.*)|*.*';
  //  OpenDialog1.InitialDir := frm_principal.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
    if OpenDialog1.Execute then
    begin
      SHOWMESSAGE('PROCESSANDO ARQUIVO DE RETORNO...');
      edtArquivo.Text:= OpenDialog1.FileName;
      AssignFile(arquivo,OpenDialog1.FileName);
      Reset(arquivo);
      while not (eof(arquivo)) do
      begin
        Readln(arquivo,linhasarq);
        Memo1.Lines.add(linhasarq);
      end;
    CloseFile(arquivo);

    frm_con_receber.acbrboleto1.dirArqRetorno:= ExtractFilePath(edtArquivo.Text);
    frm_con_Receber.ACBrBoleto1.NomeArqRetorno := ExtractFileName(edtArquivo.Text);
    frm_con_receber.ACBrBoleto1.Banco.Numero:=dm_dados.zqry_FNBANCOCODBANCO.asinteger;//strtoint(frm_dlg_appremret.numerobanco);
    frm_con_Receber.acbrboleto1.Banco.Nome:=frm_DLG_APPREMRET.nomebanco;
    if numerobanco='4'    then frm_con_Receber.acbrboleto1.Banco.TipoCobranca:=cobBancoDoNordeste;
    if numerobanco='748'  then frm_con_Receber.acbrboleto1.Banco.TipoCobranca:=cobSicred;
    if numerobanco='237'  then frm_con_Receber.acbrboleto1.Banco.TipoCobranca:=cobBradesco;
    if numerobanco='341'  then frm_con_Receber.acbrboleto1.Banco.TipoCobranca:=cobItau;
    frm_con_Receber.ACBrBoleto1.Cedente.Agencia:=dm_Dados.zqry_FNCONTAAGENCIACONTABOL.Value;
    frm_con_Receber.ACBrBoleto1.Cedente.AgenciaDigito:=dm_dados.zqry_FNCONTADVAGENCIA.value;
    frm_con_Receber.ACBrBoleto1.Cedente.Conta:=dm_Dados.zqry_FNCONTANUMCONTABOL.Value;
    frm_con_receber.ACBrBoleto1.Cedente.ContaDigito:=dm_dados.zqry_FNCONTADVCONTA.Value;
    frm_con_receber.ACBrBoleto1.Cedente.CodigoCedente:=dm_dados.zqry_FNITMODBOLETOCONVCOB.AsString;
    frm_con_receber.ACBrBoleto1.Cedente.CNPJCPF:=dm_Dados.zqry_SGFILIALCNPJFILIAL.Value;
    frm_con_Receber.acbrboleto1.LeCedenteRetorno:=true;
    frm_con_receber.acbrboleto1.lerretorno;

    for i := 0 to frm_con_Receber.ACBrBoleto1.ListadeBoletos.Count-1 do
    begin
      dm_Dados.zqry_FNITRECEBER.Close;
      dm_Dados.zqry_FNITRECEBER.SQL.Clear;
      dm_DAdos.zqry_FNITRECEBER.SQL.Add('select * from fnitreceber where nossonumero=:nnum and codemp=:empcod');
      dm_Dados.zqry_FNITRECEBER.ParamByName('nnum').Asstring:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
      dm_Dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_Dados.zqry_FNITRECEBER.Open;
      if dm_Dados.zqry_fnitreceber.IsEmpty then
      begin
        nrec:=0;
        //showmessage('Aten��o Usu�rio'#13'T�tulo n�o localizado na base');
        lbl_DATAOCORRENCIA.Caption:=datetostr(frm_con_receber.acbrboleto1.ListadeBoletos.Objects[i].DataOcorrencia);
        lbl_QTDOCORRENCIA.Caption:=inttostr(i);
        valorrecebido:=valorrecebido+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;

        lbl_VALORRECEBIDO.Caption:=formatfloat('##0.0000',valorrecebido);
        memo3.Lines.Add('-----------------------------------------------------------------------------------------');
        memo3.Lines.Add('N.� Doc. '+frm_con_receber.acbrboleto1.ListadeBoletos.Objects[i].NumeroDocumento+' Nosso N�mero '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero+' |Ocor.: '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao);
      //showmessage('Doc: '+frm_con_receber.acbrboleto1.ListadeBoletos.Objects[i].NumeroDocumento+' |Nosso N.�: '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero+' |Ocor.: '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao);
        if frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.CodigoBanco='06' then
        memo3.Lines.Add('Vlr. Recebido: '+formatfloat('##0.00',frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido)+' |Vlr. T�tulo: '+formatfloat('##0.00', frm_con_Receber.acbrboleto1.ListadeBoletos.Objects[i].ValorDocumento)+' |Vlr. Multa/Juros: '+formatfloat('##0.00',frm_CON_RECEBER.ACBrBoleto1.ListadeBoletos.Objects[i].ValorMoraJuros));
      //  showmessage('Valor Recebido '+formatfloat('##0.0000',frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido)+'  Valor T�tulo '+formatfloat('##0.0000', frm_con_Receber.acbrboleto1.ListadeBoletos.Objects[i].ValorDocumento)+' Valor de Multa/Juros '+formatfloat('##0.0000',frm_CON_RECEBER.ACBrBoleto1.ListadeBoletos.Objects[i].ValorMoraJuros));
      // showmessage('Ocorr�ncia '+frm_con_receber.ACBrBoleto1.ListadeBoletos.objects[i].OcorrenciaOriginal.CodigoBanco);
      // INCLUIR O REGISTRO DE TITULO N�O LOCALIZADO
      end
      else
      begin
        EXECUTASGINICONSP;
        nrec:=dm_Dados.zqry_FNITRECEBERCODREC.AsInteger;
//        showmessage(inttostr(nrec));
        //DATA DE PROCESSAMENTO

        dm_Dados.Zqry_FNITRECEBER.Close;
        dm_Dados.Zqry_FNITRECEBER.SQL.Clear;
        dm_Dados.Zqry_FNITRECEBER.SQL.Add('update fnitreceber set dtproces=:data where nossonumero=:nnum and codemp=:empcod');
        dm_Dados.Zqry_fnitreceber.ParamByName('data').AsDate:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].DataOcorrencia;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('nnum').Asstring:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.Zqry_FNITRECEBER.ExecSQL;

        EXECUTASGINICONSP;

        //OCORRENCIA
        dm_Dados.ZQry_FNITRECEBER.Close;
        dm_Dados.Zqry_FNITRECEBER.SQL.Clear;
        dm_Dados.Zqry_FNITRECEBER.SQL.Add('update fnitreceber set ocor_ret=:ocorrencia where nossonumero=:nnum and codemp=:empcod');
        dm_Dados.Zqry_fnitreceber.ParamByName('ocorrencia').asstring:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('nnum').Asstring:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
        dm_Dados.Zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.Zqry_FNITRECEBER.ExecSQL;
        //
        EXECUTASGINICONSP;
        //RECEBIMENTO
        dm_Dados.Zqry_FNITRECEBER.Close;
        dm_Dados.zqry_FNITRECEBER.SQL.Clear;
        dm_Dados.zqry_FNITRECEBER.SQL.Add('update fnitreceber set vlrpagoitrec=:valorpago, codemppn=:empcod, codfilialpn=1, codplan=2010000000001, vlrjurositrec=:juros, dtpagoitrec=:data  where nossonumero=:nnum and codemp=:empcod');
        dm_Dados.zqry_fnitreceber.ParamByName('valorpago').asfloat:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
        dm_Dados.zqry_fnitreceber.ParamByName('data').AsDate:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].DataOcorrencia;
        dm_Dados.zqry_fnitreceber.ParamByName('juros').asfloat:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorMoraJuros;
        dm_Dados.zqry_FNITRECEBER.ParamByName('nnum').Asstring:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
        dm_Dados.zqry_FNITRECEBER.ParamByName('empcod').AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.zqry_FNITRECEBER.ExecSQL;
        valorrecebido:=valorrecebido+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
        memo2.Lines.Add('Doc: '+ frm_con_receber.acbrboleto1.ListadeBoletos.Objects[i].NumeroDocumento+' |Nosso N.�: '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero+' |Ocor.: '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao);
        memo2.Lines.Add('Vlr. Recebido: '+formatfloat('##0.00',frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido)+' |Vlr. T�tulo: '+formatfloat('##0.00', frm_con_Receber.acbrboleto1.ListadeBoletos.Objects[i].ValorDocumento)+' |Vlr. Multa/Juros: '+formatfloat('##0.00',frm_CON_RECEBER.ACBrBoleto1.ListadeBoletos.Objects[i].ValorMoraJuros));
        memo2.Lines.Add('-----------------------------------------------------------------------------------------');

//        showmessage('T�TULO ENCONTRADO!!!'#13'N.� Doc. '+frm_con_receber.acbrboleto1.ListadeBoletos.Objects[i].NumeroDocumento+' Nosso N�mero '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero+' Ocorrencia '+frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao);
         // INCLUIR REGISTRO DE TITULO LOCALIZADO
      end;
      if nrec=0 then ncli:=0;
      if nrec>0 then
      begin
      dm_Dados.zqry_FNRECEBER.Params.Clear;
      dm_Dados.zqry_fnreceber.close;
      dm_Dados.zqry_FNRECEBER.SQL.Clear;
      dm_Dados.zqry_FNRECEBER.SQL.Add('select * from fnreceber where codemp=:empcod and codrec=:reccod');
      dm_Dados.zqry_FNRECEBER.parambyname('empcod').AsInteger:=dm_DADOS.CODEMP;
      dm_dados.zqry_FNRECEBER.ParamByName('reccod').AsInteger:=nrec;
      dm_Dados.zqry_FNRECEBER.Open;
      ncli:=dm_Dados.zqry_FNRECEBERCODCLI.AsInteger;
      end;

      dm_dados.zqry_FNRETBOLETO.Close;
      dm_Dados.zqry_FNRETBOLETO.SQL.Clear;
      dm_Dados.zqry_FNRETBOLETO.SQL.Add('select * from fnretboleto where numdocumento=:ndoc and nossonumero=:nnum');
      dm_Dados.zqry_FNRETBOLETO.ParamByName('ndoc').Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NumeroDocumento;
      dm_Dados.zqry_FNRETBOLETO.ParamByName('nnum').Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
      dm_Dados.zqry_FNRETBOLETO.Open;
      if dm_dados.zqry_FNRETBOLETO.IsEmpty then
      begin
        zquery1.Close;
        zquery1.SQL.Clear;
        zquery1.sql.add('SELECT MAX(CODRETORNO) as SEQ FROM FNRETBOLETO');
        zquery1.Open;
        dm_dados.zqry_FNRETBOLETO.close;
        dm_Dados.zqry_FNRETBOLETO.Open;
        dm_dados.zqry_FNRETBOLETO.append;
        dm_dados.zqry_FNRETBOLETOCODRETORNO.AsInteger:=1+zquery1.FieldByname('SEQ').asInteger;
        dm_dados.zqry_FNRETBOLETOCODEMP.AsInteger:=dm_DADOS.CODEMP;
        dm_Dados.zqry_FNRETBOLETOCODFILIAL.AsInteger:=1;
        dm_DADOS.zqry_FNRETBOLETODTPROCESSA.AsDateTime:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].DataProcessamento;
        dm_DADOS.zqry_FNRETBOLETOCONTA.value:=dm_Dados.zqry_FNCONTANUMCONTABOL.Value;
        dm_Dados.zqry_FNRETBOLETOCODCEDENTE.Value:=dm_dados.zqry_FNITMODBOLETOCONVCOB.value;
        dm_Dados.zqry_FNRETBOLETONUMDOCUMENTO.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NumeroDocumento;
        dm_Dados.zqry_FNRETBOLETONOSSONUMERO.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].NossoNumero;
        dm_dados.zqry_FNRETBOLETODTOCORRENCIA.AsDateTime:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].DataOcorrencia;
        dm_dados.zqry_FNRETBOLETOVLRRECEBIDO.value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorRecebido;
        dm_Dados.zqry_FNRETBOLETOVLRDOCUMENTO.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorDocumento;
        dm_dados.zqry_FNRETBOLETOVLRPAGO.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorPago;
        dm_Dados.zqry_FNRETBOLETOVLRDESP.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].ValorDespesaCobranca;
        dm_Dados.zqry_FNRETBOLETOCODRETBANCO.Value:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.CodigoBanco;
        dm_Dados.zqry_FNRETBOLETODESCRETBANCO.Value:=frm_con_Receber.ACBrBoleto1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao;
        dm_Dados.zqry_FNRETBOLETODTCREDITO.AsDateTime:=frm_con_receber.ACBrBoleto1.ListadeBoletos.Objects[i].DataCredito;
        dm_dados.zqry_FNRETBOLETOCODREC.AsInteger:=NREC;
        DM_DADOS.zqry_FNRETBOLETOCODCLI.AsInteger:=NCLI;
        dm_dados.zqry_FNRETBOLETO.Post;
        dm_dados.zqry_FNRETBOLETO.ApplyUpdates();
      end;
    end;
  end;
end;
mostratelaaviso('ARQUIVO DE RETORNO TRATADO','');
dm_Dados.zqry_FNCONTA.Close;
dm_Dados.zqry_FNBANCO.Close;
dm_dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNRETBOLETO.Close;
MEMORIA;
end;

procedure Tfrm_DLG_APPREMRET.edt_CODCONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = #13 then
  begin
    btn_BUSCABANCOClick(Sender);
  end;
end;

procedure Tfrm_DLG_APPREMRET.FormActivate(Sender: TObject);
begin
dm_Dados.zqry_FNCONTA.Close;
dm_dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNRETBOLETO.Close;
MEMORIA;
edt_CODCONTA.SetFocus;
EDT_CODCONTA.Clear;
end;

procedure Tfrm_DLG_APPREMRET.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
edt_CODCONTA.Clear;
dm_Dados.zqry_FNCONTA.Close;
dm_Dados.zqry_FNCONTA.Close;
dm_dados.zqry_FNRECEBER.Close;
dm_Dados.zqry_FNITRECEBER.Close;
dm_Dados.zqry_FNRETBOLETO.Close;
MEMORIA;
action:=caFree;
release;
frm_DLG_APPREMRET:=nil;
end;


procedure Tfrm_DLG_APPREMRET.FormShow(Sender: TObject);
begin
  if dm_dados.zqry_SGFILIALCNPJFILIAL.AsString='12410720000104' then btn_reverso.Visible:=true else btn_reverso.Visible:=false;
end;

end.
