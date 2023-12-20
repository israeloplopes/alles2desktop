unit rel_ultitulos2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Vcl.Grids, Vcl.DBGrids, u_Funcoes,
  Data.DB;

type
  Tfrm_RELULTTITULOS2 = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_RELULTTITULOS2: Tfrm_RELULTTITULOS2;

implementation

{$R *.dfm}

uses con_receber, u_dados;

procedure Tfrm_RELULTTITULOS2.FormShow(Sender: TObject);
begin
{if frm_con_receber.dt_INICIO.Text = '' Then
begin
  DM_DADOS.qry_ULTTITULO.Close;
  DM_DADOS.cds_ULTTITULO.CLOSE;
  DM_DADOS.qry_ULTTITULO.SQL.Clear;
  DM_DADOS.qry_ulttitulo.SQL.Add('select fn.codrec,max(it.dtvencitrec),vd.razcli, it.vlrparcitrec from fnreceber fn');
  DM_DADOS.qry_ulttitulo.SQL.Add('inner join fnitreceber it on fn.codrec=it.codrec');
  DM_DADOS.qry_ulttitulo.SQL.Add('inner join vdcliente vd on fn.codcli=vd.codcli');
  DM_DADOS.qry_ulttitulo.SQL.Add('where it.vlrpagoitrec=0.00');
  DM_DADOS.qry_ulttitulo.SQL.Add('group by fn.codrec,vd.razcli, it.vlrparcitrec');
  DM_DADOS.cds_ULTTITULO.Open;
  if DM_DADOS.cds_ULTTITULO.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: fnitreceber');
end
else
begin
  DM_DADOS.qry_ULTTITULO.Close;
  DM_DADOS.cds_ULTTITULO.CLOSE;
  DM_DADOS.qry_ULTTITULO.SQL.Clear;
  DM_DADOS.qry_ulttitulo.SQL.Add('select fn.codrec,max(it.dtvencitrec),vd.razcli, it.vlrparcitrec from fnreceber fn');
  DM_DADOS.qry_ulttitulo.SQL.Add('inner join fnitreceber it on fn.codrec=it.codrec');
  DM_DADOS.qry_ulttitulo.SQL.Add('inner join vdcliente vd on fn.codcli=vd.codcli');
  DM_DADOS.qry_ulttitulo.SQL.Add('where it.vlrpagoitrec=0.00 and it.dtvencitrec between :DTINICIO and :DTFIM');
  DM_DADOS.qry_ulttitulo.SQL.Add('group by fn.codrec,vd.razcli, it.vlrparcitrec');
  DM_DADOS.qry_ULTTITULO.ParamByName('DTINICIO').AsDate:=strtodate(frm_con_receber.dt_INICIO.Text);
  DM_DADOS.qry_ULTTITULO.ParamByName('DTFIM').AsDate:=strtodate(frm_con_receber.dt_FIM.Text);
  DM_DADOS.cds_ULTTITULO.Open;
  if DM_DADOS.cds_ULTTITULO.IsEmpty then mostratelaaviso('Nada localizado com base nas informações','tab.: fnitreceber');
end;}
end;

end.
