unit u_empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u_cadastropai, Data.DB, Vcl.ExtCtrls,
  Vcl.Menus, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, ACBrBase, ACBrSocket,
  ACBrCEP;

type
  Tfrm_EMPRESA = class(Tfrm_CADASTROPAI)
    zqry_CADASTROCODEMP: TIntegerField;
    zqry_CADASTROCODFILIAL: TSmallintField;
    zqry_CADASTRORAZFILIAL: TWideStringField;
    zqry_CADASTRONOMEFILIAL: TWideStringField;
    zqry_CADASTROMZFILIAL: TWideStringField;
    zqry_CADASTROCNPJFILIAL: TWideStringField;
    zqry_CADASTROINSCFILIAL: TWideStringField;
    zqry_CADASTROENDFILIAL: TWideStringField;
    zqry_CADASTRONUMFILIAL: TIntegerField;
    zqry_CADASTROCOMPLFILIAL: TWideStringField;
    zqry_CADASTROBAIRFILIAL: TWideStringField;
    zqry_CADASTROCEPFILIAL: TWideStringField;
    zqry_CADASTROCIDFILIAL: TWideStringField;
    zqry_CADASTROUFFILIAL: TWideStringField;
    zqry_CADASTRODDDFILIAL: TWideStringField;
    zqry_CADASTROFONEFILIAL: TWideStringField;
    zqry_CADASTROFAXFILIAL: TWideStringField;
    zqry_CADASTROEMAILFILIAL: TWideStringField;
    zqry_CADASTROWWWFILIAL: TWideStringField;
    zqry_CADASTROCODDISTFILIAL: TIntegerField;
    zqry_CADASTROPERCPISFILIAL: TFloatField;
    zqry_CADASTROPERCCOFINSFILIAL: TFloatField;
    zqry_CADASTROPERCIRFILIAL: TFloatField;
    zqry_CADASTROPERCCSOCIALFILIAL: TFloatField;
    zqry_CADASTROSIMPLESFILIAL: TWideStringField;
    zqry_CADASTROPERCSIMPLESFILIAL: TFloatField;
    zqry_CADASTROCODMUNIC: TWideStringField;
    zqry_CADASTROSIGLAUF: TWideStringField;
    zqry_CADASTROCODPAIS: TSmallintField;
    zqry_CADASTROCODEMPUC: TIntegerField;
    zqry_CADASTROCODFILIALUC: TSmallintField;
    zqry_CADASTROCODUNIFCOD: TIntegerField;
    zqry_CADASTROINSCMUNFILIAL: TWideStringField;
    zqry_CADASTROCNAEFILIAL: TWideStringField;
    zqry_CADASTROPERCISSFILIAL: TFloatField;
    zqry_CADASTROCONTRIBIPIFILIAL: TWideStringField;
    zqry_CADASTROTIMBREFILIAL: TBlobField;
    zqry_CADASTROPERFILFILIAL: TWideStringField;
    zqry_CADASTROINDATIVFILIAL: TWideStringField;
    zqry_CADASTROINDNATPJFILIAL: TWideStringField;
    zqry_CADASTROCODEMPCO: TIntegerField;
    zqry_CADASTROCODFILIALCO: TSmallintField;
    zqry_CADASTROCODFOR: TIntegerField;
    zqry_CADASTROSUFRAMA: TWideStringField;
    zqry_CADASTROCODINCTRIB: TWideStringField;
    zqry_CADASTROINDAPROCRED: TWideStringField;
    zqry_CADASTROCODTIPOCONT: TWideStringField;
    zqry_CADASTROINDREGCUM: TWideStringField;
    zqry_CADASTROUNIDFRANQUEADA: TWideStringField;
    zqry_CADASTROMARCAFRANQUEADORA: TWideStringField;
    zqry_CADASTROWWWFRANQUEADORA: TWideStringField;
    zqry_CADASTROCODRECEITA: TWideStringField;
    zqry_CADASTRODTINS: TDateField;
    zqry_CADASTROHINS: TTimeField;
    zqry_CADASTROIDUSUINS: TWideStringField;
    zqry_CADASTRODTALT: TDateField;
    zqry_CADASTROHALT: TTimeField;
    zqry_CADASTROIDUSUALT: TWideStringField;
    zqry_CADASTROPERFILEPC: TWideStringField;
    zqry_CADASTROINDATIVEPC: TWideStringField;
    zqry_CADASTROLOGOPREFEITURA: TBlobField;
    zqry_CADASTROCODUF: TIntegerField;
    zqry_CADASTRONOMERESP: TWideStringField;
    zqry_CADASTROCPFRESP: TWideStringField;
    zqry_CADASTROCEPRESP: TWideStringField;
    zqry_CADASTROENDRESP: TWideStringField;
    zqry_CADASTRONUMRESP: TWideStringField;
    zqry_CADASTROCOMPLRESP: TWideStringField;
    zqry_CADASTROBAIRRORESP: TWideStringField;
    zqry_CADASTROFONERESP: TWideStringField;
    zqry_CADASTROFAXRESP: TWideStringField;
    zqry_CADASTROEMAILRESP: TWideStringField;
    zqry_CADASTROFOTO: TWideMemoField;
    zqry_CADASTRODESATIVADO: TWideStringField;
    zqry_CADASTRONOMEREDUZIDO: TWideStringField;
    zqry_CADASTROTX_JUROS_BOLETO: TSingleField;
    zqry_CADASTROTX_MULTA_BOLETO: TSingleField;
    zqry_CADASTRODIAS_ATRASO_BOLETO: TSmallintField;
    zqry_CADASTRODIAS_PROTESTO_BOLETO: TSmallintField;
    zqry_CADASTROMSG_BOLETO: TWideStringField;
    zqry_CADASTROPATH_COPIA_NFE: TWideStringField;
    zqry_CADASTROMARCAUNICA: TWideStringField;
    zqry_CADASTROTEF_CAPPTA: TWideStringField;
    zqry_CADASTROTEF_TROCA: TWideStringField;
    zqry_CADASTRONUMCONTA: TWideStringField;
    zqry_CADASTROCODPLAN: TWideStringField;
    zqry_CADASTROCAIXA_FINALIZA: TIntegerField;
    zqry_CADASTROCODFORN_REC: TIntegerField;
    zqry_CADASTROCODATEND: TIntegerField;
    zqry_CADASTRORECAGRO: TWideStringField;
    zqry_CADASTROCODEMPREC: TIntegerField;
    zqry_CADASTROCODFILIALREC: TIntegerField;
    zqry_CADASTROCODEMPRECAT: TIntegerField;
    zqry_CADASTROCODFILIALRECAT: TIntegerField;
    zqry_CADASTRODESTICMS: TSingleField;
    zqry_CADASTROTIPO_PARC_TEF: TWideStringField;
    zqry_CADASTROSATCFE: TWideStringField;
    zqry_CADASTROESCOLA: TWideStringField;
    zqry_CADASTROCODREV: TIntegerField;
    zqry_CADASTROCRCCONTADOR: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    edt_RAZAO: TEdit;
    edt_NOMEFANTASIA: TEdit;
    edt_INSCRICAO: TEdit;
    edt_NOMEREDUZIDO: TEdit;
    edt_ENDERECO: TEdit;
    edt_NUM: TEdit;
    edt_COMPL: TEdit;
    edt_BAIRRO: TEdit;
    edt_CEP: TEdit;
    ACBrCEP1: TACBrCEP;
    edt_UF: TEdit;
    edt_CIDADE: TEdit;
    edt_CNPJ: TEdit;
    Label12: TLabel;
    edt_CODMUNIC: TEdit;
    zqry_UPT: TZQuery;
    zdts_UPT: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure edt_CEPExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_EMPRESA: Tfrm_EMPRESA;

implementation

{$R *.dfm}

uses u_dados, u_funcoes;

procedure Tfrm_EMPRESA.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
   i : integer;
begin
 for I := 0 to ACBrCEP1.Enderecos.Count -1 do
    begiN
         {msk_cepcli.Text         	:= ACBrCEP1.Enderecos[i].CEP;}
      edt_ENDERECO.text          := ACBrCEP1.Enderecos[i].Logradouro;
{         edt_complcli.Text      := ACBrCEP1.Enderecos[i].Complemento;
         edt_cidcli.Text      	    := ACBrCEP1.Enderecos[i].Municipio;
         edt_coduf.Text          	    := ACBrCEP1.Enderecos[i].IBGE_UF;
         edt_codmun.text              := ACBrCEP1.Enderecos[i].IBGE_Municipio;
         edt_baircli.Text      	    := ACBrCEP1.Enderecos[i].Bairro;
         uf :=acbrcep1.Enderecos[i].UF;}

        // msk_cepcli.Text     := ACBrCEP1.Enderecos[i].CEP;
        // edt_endcli.Text     := ACBrCEP1.Enderecos[i].Logradouro;
        // edt_complcli.Text   := ACBrCEP1.Enderecos[i].Complemento;
      edt_CIDADE.TEXT    := ACBrCEP1.Enderecos[i].Municipio;
      //   edt_coduf.Text      := ACBrCEP1.Enderecos[i].IBGE_UF;
       //  edt_codmun.text     := ACBrCEP1.Enderecos[i].IBGE_Municipio;
      edt_BAIRRO.TEXT    := ACBrCEP1.Enderecos[i].Bairro;
      edt_UF.text        := acbrcep1.Enderecos[i].UF;
//         edtTipo.Text        	    := ACBrCEP1.Enderecos[i].Tipo_Logradouro;
      edt_CODMUNIC.text := ACBrCEP1.Enderecos[i].IBGE_Municipio;
    end;
end;

procedure Tfrm_EMPRESA.btn_GRAVAClick(Sender: TObject);
begin
 // inherited;
  executasginiconsp;
  zqry_UPT.Params.Clear;
  zqry_UPT.Close;
  zqry_UPT.SQL.Clear;
  zqry_UPT.SQL.Add('update sgfilial set razfilial=:p1, nomefilial=:p2, cnpjfilial=:p3, inscfilial=:p4, nomereduzido=:p5,');
  zqry_UPT.SQL.Add('endfilial=:p6, numfilial=:p7, complfilial=:p8, bairfilial=:p9, cepfilial=:p10,');
  zqry_UPT.SQL.Add('uffilial=:p11, siglauf=:p11, cidfilial=:p12, codmunic=:p13 where codemp=:empcod' );
  zqry_upt.ParamByName('p1').AsString:=edt_RAZAO.Text;
  zqry_upt.ParamByName('p2').AsString:=edt_NOMEFANTASIA.Text;
  zqry_upt.ParamByName('p3').AsString:=edt_CNPJ.Text;
  zqry_upt.ParamByName('p4').AsString:=edt_INSCRICAO.Text;
  zqry_upt.ParamByName('p5').AsString:=edt_NOMEREDUZIDO.text;
  zqry_upt.ParamByName('p6').AsString:=edt_ENDERECO.Text;
  zqry_upt.ParamByName('p7').AsString:=edt_NUM.Text;
  zqry_upt.ParamByName('p8').AsString:=edt_COMPL.Text;
  zqry_upt.ParamByName('p9').AsString:=edt_BAIRRO.Text;
  zqry_upt.ParamByName('p10').AsString:=edt_CEP.Text;
  zqry_upt.ParamByName('p11').AsString:=edt_UF.Text;
  zqry_upt.ParamByName('p12').AsString:=edt_CIDADE.Text;
  zqry_upt.ParamByName('p13').AsString:=edt_CODMUNIC.Text;
  zqry_UPt.ParamByName('empcod').AsInteger:=dm_dados.codemp;
  zqry_upt.ExecSQL;
end;

procedure Tfrm_EMPRESA.edt_CEPExit(Sender: TObject);
begin
MostraTelaAguarde('Buscando CEP '+edt_CEP.Text+' nos Correios');
ACBrCEP1.BuscarPorCEP(edt_cep.Text);
fechatelaaguarde;
end;

procedure Tfrm_EMPRESA.FormDestroy(Sender: TObject);
begin
  inherited;
  frm_empresa:=nil;
end;

procedure Tfrm_EMPRESA.FormShow(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:='Usuário : '+dm_dados.meuusuario;
  zqry_CADASTRO.Params.Clear;
  zqry_cadastro.Close;
  zqry_cadastro.SQL.Clear;
  zqry_cadastro.SQL.Add('select * from sgfilial where codemp=:p1');
  zqry_cadastro.ParamByName('p1').AsInteger:=dm_dados.codemp;
  zqry_cadastro.Open;
  lbl_titulo_form.caption:=zqry_CADASTRORAZFILIAL.AsString;
  edt_RAZAO.Text:=zqry_CADASTRORAZFILIAL.AsString;
  edt_NOMEFANTASIA.Text:=zqry_CADASTRONOMEFILIAL.AsString;
  edt_CNPJ.Text:=zqry_CADASTROCNPJFILIAL.AsString;
  edt_INSCRICAO.Text:=zqry_CADASTROINSCFILIAL.AsString;
  edt_NOMEREDUZIDO.Text:=zqry_CADASTRONOMEREDUZIDO.AsString;
  edt_ENDERECO.Text:=zqry_CADASTROENDFILIAL.AsString;
  edt_NUM.Text:=zqry_CADASTRONUMFILIAL.AsString;
  edt_COMPL.Text:=zqry_CADASTROCOMPLFILIAL.AsString;
  edt_BAIRRO.Text:=zqry_CADASTROBAIRFILIAL.asstring;
  edt_CEP.Text:=zqry_CADASTROCEPFILIAL.AsString;
  edt_UF.Text:=zqry_CADASTROUFFILIAL.AsString;
  edt_CIDADE.Text:=zqry_CADASTROCIDFILIAL.AsString;
  edt_CODMUNIC.Text:=zqry_CADASTROCODMUNIC.AsString;
end;

end.
