unit u_dlg_atualizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, IdHTTP, WinSock, WinInet,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Vcl.ComCtrls;

type
  Tfrm_DLG_ATUALIZACAO = class(TForm)
    Label1: TLabel;
    pn_BOTTOM: TPanel;
    btn_FECHA: TBitBtn;
    btn_GRAVA: TBitBtn;
    Image1: TImage;
    DBGrid1: TDBGrid;
    IdHTTP1: TIdHTTP;
    ProgressBar1: TProgressBar;
    procedure btn_FECHAClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_GRAVAClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure IdHTTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdHTTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ATUALIZACAO: Tfrm_DLG_ATUALIZACAO;

implementation

uses u_dados, u_Aguarde, u_funcoes;

{$R *.dfm}

procedure Tfrm_DLG_ATUALIZACAO.btn_FECHAClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_DLG_ATUALIZACAO.btn_GRAVAClick(Sender: TObject);
var
  nomelink, linkscript,caminho : string;
  conectado:integer;
  filedownload:TfileStream;
begin
nomelink:=dm_dados.zqry_SGATUALIZAWEBlink.asstring+'.rar';
linkscript:=dm_Dados.zqry_SGATUALIZAWEBLINK.AsString+'.sql';
caminho:=nomelink;
 fileDownload := TFileStream.Create(caminho, fmCreate);
  //showmessage('FazendVersão esperada para Atualização '+nomearquivo);
  try
  //  frm_aguarde.progressbar1.Visible := True;
  //lbl_Status.Visible   := True;

    mostratelaaguarde('Baixando Atualização '+nomelink);
  IdHTTP1.Get('http://www.nonoelemento.com.br/updates/'+nomelink, fileDownload);
  finally
    FreeAndNil(fileDownload);
  end;
fechatelaaguarde;
end;

procedure Tfrm_DLG_ATUALIZACAO.DBGrid1CellClick(Column: TColumn);
begin
showmessage('Versão de '+dm_dados.zqry_SGATUALIZAWEBdatalancamento.AsString+' do Módulo '+dm_dados.zqry_SGATUALIZAWEBmodulo.AsString+' selecionado');

end;

procedure Tfrm_DLG_ATUALIZACAO.FormActivate(Sender: TObject);
begin
  dm_Dados.zqry_SGATUALIZAWEB.close;
  dm_Dados.zqry_SGATUALIZAWEB.SQL.Clear;
  dm_Dados.zqry_SGATUALIZAWEB.SQL.Add('select * from sgatualizacao where atual=:atual');
  dm_Dados.zqry_SGATUALIZAWEB.ParamByName('atual').AsString:='S';
  dm_Dados.zqry_SGATUALIZAWEB.Open;
end;

procedure Tfrm_DLG_ATUALIZACAO.IdHTTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
ProgressBar1.Position := AWorkCount;
frm_aguarde.Label1.Caption    := RetornaKiloBytes(AWorkCount);
end;

procedure Tfrm_DLG_ATUALIZACAO.IdHTTP1WorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
progressbar1.visible:=true;
ProgressBar1.Max := AWorkCountMax;
end;

procedure Tfrm_DLG_ATUALIZACAO.IdHTTP1WorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
ProgressBar1.Position := 0;
showmessage('Download concluido');
progressbar1.visible:=false;
end;

end.
