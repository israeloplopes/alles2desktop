unit u_registro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  Tfrm_REGISTRO = class(TForm)
    btn_REGISTRO: TBitBtn;
    btn_SAIR: TBitBtn;
    Label1: TLabel;
    edt_SERIAL: TEdit;
    btn_BUSCAR: TBitBtn;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    zqry_REGISTRO: TZQuery;
    zdts_REGISTRO: TDataSource;
    zqry_REGISTROWEB: TZQuery;
    zdts_REGISTROWEB: TDataSource;
    Label2: TLabel;
    Image1: TImage;
    procedure btn_BUSCARClick(Sender: TObject);
    procedure btn_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_REGISTROClick(Sender: TObject);
  private
    { Private declarations }
      estaregistrado:string;
      empresa,revenda:integer;
  public
    { Public declarations }
  end;

var
  frm_REGISTRO: Tfrm_REGISTRO;

implementation

{$R *.dfm}

uses u_dados, u_funcoes, u_principal;

procedure Tfrm_REGISTRO.btn_BUSCARClick(Sender: TObject);
begin
  estaregistrado:=EmptyStr;
  if edt_serial.text='' then
  begin
    edt_serial.SetFocus;
    edt_serial.Clear;
  end
  else
  begin
    dm_dados.ConectaWeb.Connected:=false;
    dm_dados.ConectaWeb.Connected:=true;
    dm_dados.zqry_SGLICENCAWEB.Params.Clear;
    dm_dados.zqry_SGLICENCAWEB.Close;
    dm_dados.zqry_SGLICENCAWEB.SQL.Clear;
    if dm_dados.nativo='S' then dm_dados.zqry_SGLICENCAWEB.SQL.Add('select * from sglicenca where codlicenca=:p1');
    if dm_dados.nativo='N' then dm_dados.zqry_SGLICENCAWEB.SQL.Add('select * from sglicenca where numeroserie=:p1');
    if dm_dados.nativo='S' then dm_dados.zqry_SGLICENCAWEB.ParamByName('p1').Asstring:=edt_serial.text;
    if dm_dados.nativo='N' then dm_dados.zqry_SGLICENCAWEB.ParamByName('p1').Asstring:=edt_serial.Text;
    dm_dados.zqry_SGLICENCAWEB.Open;
    if dm_dados.zqry_SGLICENCAWEB.IsEmpty then
    begin
      mostratelaaviso('NÃO LOCALIZADO A LICENÇA','Não existe essa licença em nosso registro.'#13'Verifique se Nativo ou entre em contato com o Suporte.');
      edt_serial.Clear;
      edt_serial.SetFocus;
    end
    else
    begin
      estaregistrado:=dm_dados.zqry_SGLICENCAWEBregistrado.AsString;
      empresa:=dm_dados.zqry_SGLICENCAWEBcodemp.AsInteger;
      revenda:=dm_dados.zqry_SGLICENCAWEBcodrev.AsInteger;
      if estaregistrado='S' then
      begin
        mostratelaaviso('LICENÇA LOCALIZADA','Porém essa licença já está em uso'#13'Favor entrar em contato com suporte');
        edt_serial.Clear;
        edt_serial.SetFocus;
      end
      else
      begin
        dm_dados.zqry_WEB_SGFILIAL.Params.Clear;
        dm_dados.zqry_WEB_SGFILIAL.Close;
        dm_Dados.zqry_WEB_SGFILIAL.sql.Clear;
        dm_dados.zqry_WEB_SGFILIAL.SQL.Add('select * from sgfilial where codemp=:p1');
        dm_dados.zqry_WEB_SGFILIAL.ParamByName('p1').AsInteger:=empresa;
        dm_dados.zqry_web_sgfilial.open;
        if dm_dados.zqry_WEB_SGFILIAL.IsEmpty then
        begin
          mostratelaaviso('DADOS NÃO LOCALIZADOS','Dados da Empresa não localizados nos registros de Empresa do Painel Alles'#13'Favor entrar em contato com suporte');
          edt_serial.Clear;
          edt_serial.SetFocus;
        end
        else
        begin
          btn_REGISTRO.Enabled:=true;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_REGISTRO.btn_REGISTROClick(Sender: TObject);
begin
  mostratelaaguarde('Registrando Sistema');
  zqry_registro.Params.Clear;
  zqry_registro.close;
  zqry_registro.SQL.Clear;
  if dm_dados.nativo='S' then zqry_registro.SQL.Add('update sglicenca set licencaalles=:p1, codrev=:p2, codempalles=:p3');
  if dm_dados.nativo='N' then zqry_registro.SQL.Add('update sglicenca set licencaa=:p1, codrev=:p2, codempalles=:p3');
  zqry_registro.ParamByName('p1').Asstring:=edt_SERIAL.text;
  zqry_registro.ParamByName('p2').AsInteger:=revenda;
  zqry_registro.ParamByName('p3').AsInteger:=empresa;
  zqry_registro.ExecSQL;
  //
  DM_DADOS.ConectaWeb.Connected:=false;
  dm_Dados.ConectaWeb.Connected:=true;
  zqry_registroweb.Params.Clear;
  zqry_registroweb.Close;
  zqry_registroweb.sql.Clear;
  zqry_registroweb.SQL.Add('update sglicenca set registrado=:p1 where codemp=:p2');
  zqry_registroweb.ParamByName('p1').AsString:='S';
  zqry_registroweb.ParamByName('p2').AsInteger:=empresa;
  zqry_registroweb.ExecSQL;
  //
  dm_dados.ConectaWeb.Connected:=false;
  dm_dados.ConectaWeb.Connected:=true;
  dm_dados.zqry_SGREVENDA.Params.Clear;
  dm_dados.zqry_SGREVENDAWEB.Close;
  dm_dados.zqry_SGREVENDAWEB.sql.Clear;
  dm_dados.zqry_SGREVENDAWEB.SQL.Add('select * from sgrevenda where codrev=:p1');
  dm_dados.zqry_SGREVENDAWEB.ParamByName('p1').AsInteger:=revenda;
  dm_dados.zqry_SGREVENDAWEB.Open;
  dm_dados.zqry_SGREVENDA.Close;
  dm_dados.zqry_SGREVENDA.Open;
  dm_dados.zqry_SGREVENDA.Insert;
  dm_dados.zqry_SGREVENDACODREV.AsInteger:=dm_dados.zqry_SGREVENDAWEBcodrev.AsInteger;
  dm_dados.zqry_sgrevendarazsocial.AsString:=dm_dados.zqry_SGREVENDAWEBrazsocial.AsString;
  dm_Dados.zqry_SGREVENDANOMEREV.AsString:=dm_dados.zqry_sgrevendawebnomerev.AsString;
  dm_dados.zqry_SGREVENDACNPJREV.AsString:=dm_dados.zqry_SGREVENDAWEBcnpjrev.AsString;
  dm_dados.zqry_SGREVENDACPFREV.AsString:=dm_dados.zqry_SGREVENDAWEBcpfrev.AsString;
  dm_dados.zqry_SGREVENDAINSCREV.AsString:=dm_dados.zqry_SGREVENDAWEBinscrev.AsString;
  dm_Dados.zqry_SGREVENDAENDREV.AsString:=dm_dados.zqry_SGREVENDAwebENDREV.AsString;
  dm_dados.zqry_SGREVENDANUMREV.AsInteger:=dm_dados.zqry_SGREVENDAWEBnumrev.AsInteger;
  dm_dados.zqry_SGREVENDACOMPLREV.asstring:=dm_dados.zqry_SGREVENDAwebCOMPLREV.AsString;
  dm_dados.zqry_SGREVENDABAIRREV.asstring:=dm_dados.zqry_SGREVENDAWEBbairrev.AsString;
  dm_dados.zqry_SGREVENDACEPREV.AsString:=dm_dados.zqry_SGREVENDAwebCEPREV.AsString;
  dm_dados.zqry_SGREVENDACIDREV.AsString:=dm_dados.zqry_SGREVENDAWEBcidrev.AsString;
  dm_dados.zqry_SGREVENDAUFREV.asstring:=dm_dados.zqry_sgrevendawebufrev.AsString;
  dm_dados.zqry_SGREVENDADDDREV.AsString:=dm_dados.zqry_sgrevendawebdddrev.AsString;
  dm_dados.zqry_SGREVENDAFONEREV.AsString:=dm_dados.zqry_sgrevendawebfonerev.AsString;
  dm_dados.zqry_SGREVENDAOUTROFONEREV.AsString:=dm_dados.zqry_SGREVENDAWEBoutrofonerev.AsString;
  dm_dados.zqry_SGREVENDAEMAILREV.AsString:=dm_dados.zqry_SGREVENDAWEBwwwrev.AsString;
  dm_dados.zqry_SGREVENDAWWWREV.AsString:=dm_dados.zqry_SGREVENDAWEBwwwrev.AsString;
  dm_dados.zqry_SGREVENDACODMUNIC.AsString:=dm_dados.zqry_sgrevendawebcodmunic.AsString;
  dm_dados.zqry_SGREVENDACODPAIS.AsInteger:=dm_dados.zqry_SGREVENDAWEBcodpais.AsInteger;
  dm_dados.zqry_SGREVENDALOGOREV.AsString:=dm_dados.zqry_SGREVENDAWEBlogorev.AsString;
  dm_dados.zqry_SGREVENDADTINS.AsDateTime:=NOW;
  dm_dados.zqry_SGREVENDAHINS.AsDateTime:=now;
  dm_dados.zqry_SGREVENDAIDUSUINS.AsString:='viaregistro';
  dm_dados.zqry_SGREVENDA.Post;
  //
  fechatelaaguarde;
  mostratelaaviso('REGISTRO REALIZADO COM SUCESSO','O sistema será finalizado para que as alterações entre em vigor');
  frm_principal.Close;
  close;
end;

procedure Tfrm_REGISTRO.btn_SAIRClick(Sender: TObject);
begin
  FRM_principal.close;
  close;
  close;
end;

procedure Tfrm_REGISTRO.FormShow(Sender: TObject);
begin
  btn_REGISTRO.Enabled:=FALSE;
end;

end.
