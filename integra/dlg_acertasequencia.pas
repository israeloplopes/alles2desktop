unit dlg_acertasequencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons,ZAbstractRODataset, ZAbstractDataset,  ZDataset,  Data.DB,
  Vcl.Menus;

type
  Tfrm_DLG_ACERTASEQUENCIA = class(TForm)
    btn_EDITASEQ: TBitBtn;
    GroupBox1: TGroupBox;
    DBEdit2: TDBEdit;
    edt_NUM_NFE: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    edt_NUM_MDFE: TEdit;
    btn_GRAVASEQ: TBitBtn;
    PopupMenu1: TPopupMenu;
    Editar1: TMenuItem;
    Gravar1: TMenuItem;
    procedure btn_EDITASEQClick(Sender: TObject);
    procedure btn_GRAVASEQClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Editar1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_DLG_ACERTASEQUENCIA: Tfrm_DLG_ACERTASEQUENCIA;

implementation

{$R *.dfm}

uses dados, uFuncoes, principal;

procedure Tfrm_DLG_ACERTASEQUENCIA.btn_EDITASEQClick(Sender: TObject);
begin
if frm_principal.id_seq=1 then
begin
  dbedit2.Enabled:=false;
  edt_NUM_NFE.Enabled:=true;
  edt_NUM_NFE.SetFocus;
  dm_Dados.zqry_sgsequencia_NF.Close;
  dm_dados.zqry_sgsequencia_NF.sql.Clear;
  dm_Dados.zqry_sgsequencia_NF.sql.add('select * from sgsequencia');
  dm_dados.zqry_sgsequencia_NF.sql.add('where sgtab=:tab and codemp=:empresa');
  dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
  dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencia_NF.open;
  if dm_Dados.zqry_SGSEQUENCIA_NF.IsEmpty then SHOWMESSAGE('Dados não localizados') else EDT_NUM_NFE.Text:=inttostr(dm_Dados.zqry_SGSEQUENCIA_NFNROSEQ.AsInteger);
end;
if frm_principal.id_seq=2 then
begin
  edt_num_nfe.Enabled:=false;
  DBEDIT2.Enabled:=TRUE;
  dbedit2.SetFocus;
  dm_Dados.zqry_sgsequencianfce.Close;
  dm_dados.zqry_sgsequencianfce.sql.Clear;
  dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
  dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
  dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').asinteger:=dm_dados.codemp;
  dm_dados.zqry_sgsequencianfce.open;
  dm_dados.zqry_SGSEQUENCIAnfce.Edit;
end;
end;

procedure Tfrm_DLG_ACERTASEQUENCIA.btn_GRAVASEQClick(Sender: TObject);
begin
if frm_principal.id_seq=1 then
begin
  dm_dados.zqry_SGSEQUENCIA_NF.Params.Clear;
  dm_Dados.zqry_sgsequencia_NF.Close;
  dm_dados.zqry_sgsequencia_NF.sql.Clear;
  dm_Dados.zqry_sgsequencia_NF.sql.add('update sgsequencia set nroseq=:numero where sgtab=:tab and codemp=:empresa');
  dm_Dados.zqry_sgsequencia_NF.ParamByName('numero').asinteger:=strtoint(edt_num_nfe.Text);
  dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
  dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencia_NF.ExecSQL;
  sleep(1000);
  dm_Dados.zqry_sgsequencia_NF.Close;
  dm_dados.zqry_sgsequencia_NF.sql.Clear;
  dm_Dados.zqry_sgsequencia_NF.sql.add('select * from sgsequencia');
  dm_dados.zqry_sgsequencia_NF.sql.add('where sgtab=:tab and codemp=:empresa');
  dm_Dados.zqry_sgsequencia_NF.ParamByName('tab').value:='NF';
  dm_Dados.zqry_sgsequencia_NF.ParamByName('empresa').asinteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencia_NF.open;
end;
// LÊ BANCO NOVAMENTE
//
if frm_principal.id_seq=2 then
begin
  {dm_dados.zqry_SGSEQUENCIANFCE.Post;
  dm_Dados.zqry_SGSEQUENCIANFCE.ApplyUpdates;
  dm_Dados.zqry_SGSEQUENCIANFCE.Refresh;}
  dm_dados.zqry_SGSEQUENCIANFCECONTADOR.AsInteger:=strtoint(dbedit2.text);
  if dm_dados.zqry_SGSEQUENCIANFCE.State in [dsedit, dsinsert] then DM_DADOS.zqry_SGSEQUENCIANFCE.Post;
  dm_Dados.zqry_SGSEQUENCIANFCE.ApplyUpdates();
  showmessage('Alteração de Sequência Salva');
  dm_Dados.zqry_sgsequencianfce.Close;
  dm_dados.zqry_sgsequencianfce.sql.Clear;
  dm_Dados.zqry_sgsequencianfce.sql.add('select * from sgsequencianfce');
  dm_dados.zqry_sgsequencianfce.sql.add('where codemp=:empresa');
  dm_Dados.zqry_sgsequencianfce.ParamByName('empresa').asinteger:=dm_Dados.codemp;
  dm_dados.zqry_sgsequencianfce.open;
end;
//
frm_principal.id_seq:=0;
close;
end;

procedure Tfrm_DLG_ACERTASEQUENCIA.Editar1Click(Sender: TObject);
begin
btn_EDITASEQClick(Sender);
end;

procedure Tfrm_DLG_ACERTASEQUENCIA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ufuncoes.MEMORIA;
end;

procedure Tfrm_DLG_ACERTASEQUENCIA.FormShow(Sender: TObject);
begin
frm_DLG_ACERTASEQUENCIA.Left:=(Screen.Width-190)-frm_DLG_ACERTASEQUENCIA.Width;
frm_DLG_ACERTASEQUENCIA.Top:=round(screen.height/2)+50;
end;

procedure Tfrm_DLG_ACERTASEQUENCIA.Gravar1Click(Sender: TObject);
begin
btn_GRAVASEQClick(Sender);
end;

end.
