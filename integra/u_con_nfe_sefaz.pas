unit u_con_nfe_sefaz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw;

type
  Tfrm_CON_NFE_SEFAZ = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CON_NFE_SEFAZ: Tfrm_CON_NFE_SEFAZ;

implementation

{$R *.dfm}

procedure Tfrm_CON_NFE_SEFAZ.FormActivate(Sender: TObject);
begin
//WebBrowser1.Navigate('https://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
WebBrowser1.Navigate('http://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
end;

end.
