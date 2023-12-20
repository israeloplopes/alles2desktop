unit trans_almox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.Mask,
  Datasnap.Provider, Datasnap.DBClient, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfrm_TRANS_ALMOX = class(TForm)
    edt_ALMOX_ORIGEM: TEdit;
    edt_ALMOX_DEST: TEdit;
    edt_PRODUTO: TEdit;
    lbl_PRODUTO: TLabel;
    DBText1: TDBText;
    edt_QTD: TEdit;
    Label5: TLabel;
    btn_PROCESSAR: TBitBtn;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    lbl_SLD_ORIGEM: TLabel;
    lbl_SLD_DEST: TLabel;
    DBGrid2: TDBGrid;
    Label11: TLabel;
    lbl_SLD_ALMOX: TLabel;
    btn_ATUALIZA_ALMOX: TBitBtn;
    edt_SLD_NOVO: TEdit;
    BitBtn1: TBitBtn;
    ZQuery1: TZQuery;
    btn_SAIR: TBitBtn;
    gb_ALMOX_ORIGEM: TGroupBox;
    gb_ALMOX_DESTINO: TGroupBox;
    gb_PRODUTO: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    gb_ALMOXARIFADO: TGroupBox;
    gb_KARDEX: TGroupBox;
    procedure edt_ALMOX_ORIGEMKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ALMOX_DESTKeyPress(Sender: TObject; var Key: Char);
    procedure edt_PRODUTOKeyPress(Sender: TObject; var Key: Char);
    procedure btn_PROCESSARClick(Sender: TObject);
    procedure edt_QTDKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_ATUALIZA_ALMOXClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_EST_DESTClick(Sender: TObject);
    procedure EXECUTASGINICONSP;
    procedure btn_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    key :char;
    qtd_atual, qtd_nova, qtd_almox, sld_estoque, sld_origem, sld_destino, sld_almox, sld_almox_origem, sld_almox_destino : double;
    inv, mov, almox:integer;
  end;

var
  frm_TRANS_ALMOX: Tfrm_TRANS_ALMOX;

implementation

{$R *.dfm}

uses u_dados, rel_almox_origem, u_funcoes;

procedure Tfrm_TRANS_ALMOX.ExecutaSGINICONSP;
begin
  dm_dados.zqry_sgconexao.close;
  dm_Dados.zqry_sgconexao.open;
  executasginiconsp;
end;

procedure Tfrm_TRANS_ALMOX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
frm_trans_almox:=nil;
end;

procedure Tfrm_TRANS_ALMOX.BitBtn1Click(Sender: TObject);
begin
  executasginiconsp;
  dm_Dados.Zqry_sgsequencia.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='MP';
  dm_dados.zqry_SGSEQUENCIA.Open;
  mov:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;
  dm_Dados.zqry_Sgsequencia.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='IV';
  dm_dados.zqry_SGSEQUENCIA.Open;
  inv:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;

end;

procedure Tfrm_TRANS_ALMOX.btn_ATUALIZA_ALMOXClick(Sender: TObject);
begin
dm_dados.zqry_eqsaldoprod.close;
dm_Dados.zqry_EQSALDOPROD.sql.clear;
dm_dados.zqry_eqsaldoprod.sql.add('update eqsaldoprod set sldprod=:prodsld where codalmox=:almoxcod');
dm_dados.zqry_EQSALDOPROD.ParamByName('prodsld').AsFloat:=strtofloat(edt_sld_novo.text);
dm_dados.zqry_eqsaldoprod.params.parambyname('almoxcod').asinteger:=almox;
dm_Dados.zqry_eqsaldoprod.execsql;
SHOWMESSAGE('Processado');
btn_atualiza_almox.Visible:=false;
EDT_SLD_NOVO.Visible:=FALSE;
dm_dados.zqry_eqsaldoprod.close;
dm_Dados.zqry_eqproduto.close;
EDT_ALMOX_ORIGEM.Clear;
EDT_ALMOX_DEST.Clear;
EDT_PRODUTO.CLEAR;
EDT_QTD.Clear;
gb_ALMOX_ORIGEM.caption:='Almoxarifado de Origem';
gb_ALMOX_DESTINO.caption:='Almoxarifado de Destino';
LBL_SLD_ORIGEM.Caption:='';
LBL_SLD_dEST.CAPTION:='';
EDT_ALMOX_ORIGEM.SETFOCUS;
end;

procedure Tfrm_TRANS_ALMOX.btn_EST_DESTClick(Sender: TObject);
begin
if LBL_PRODUTO.Caption='' then
begin
  showmessage('Não há produtos selecionados');
  edt_produto.SetFocus;
end
else
begin

end
end;

procedure Tfrm_TRANS_ALMOX.btn_PROCESSARClick(Sender: TObject);
begin
qtd_nova:=strtofloat(edt_qtd.Text);
if strtofloat(edt_qtd.Text)>dm_dados.zqry_EQPRODUTOSLDPROD.asfloat then
begin
  //
end
else
begin
  dm_Dados.zqry_Eqsaldoprod.close;
  dm_Dados.zqry_EQSALDOPROD.sql.clear;
  dm_Dados.zqry_EQSALDOPROD.sql.add('update eqsaldoprod set sldprod=:prodsld where codalmox=:almoxcod');
  dm_dados.zqry_EQSALDOPROD.ParamByName('prodsld').asfloat:=qtd_atual-qtd_nova;
  dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_origem.Text);
  dm_dados.zqry_EQSALDOPROD.execsql;
// SEGUNDO CAMPO
  dm_Dados.zqry_eqsaldoprod.close;
  dm_Dados.zqry_EQSALDOPROD.sql.clear;
  dm_Dados.zqry_EQSALDOPROD.sql.add('update eqsaldoprod set sldliqprod=:prodsldliq where codalmox=:almoxcod');
  dm_dados.zqry_EQSALDOPROD.ParamByName('prodsldliq').asfloat:=qtd_atual-qtd_nova;
  dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_origem.Text);
  dm_dados.zqry_EQSALDOPROD.execsql;
// LANÇANDO MOVIMENTO DO ALMOXARIFADO ORIGEM
  executasginiconsp;
  dm_dados.zqry_SGSEQUENCIA.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='MP';
  dm_dados.zqry_SGSEQUENCIA.Open;
  mov:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;
  //INSERINDO
  dm_Dados.zqry_EQMOVPROD.close;
  dm_Dados.zqry_EQMOVPROD.open;
  dm_dados.zqry_EQMOVPROD.append;
  dm_dados.zqry_EQMOVPRODCODEMP.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIAL.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODcodmovprod.asinteger:=mov;
  dm_dados.zqry_EQMOVPRODCODEMPPD.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALPD.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODPROD.AsInteger:=strtoint(edt_produto.Text);
  dm_dados.zqry_EQMOVPRODCODEMPTM.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALTM.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODTIPOMOV.AsInteger:=101;
  //busca inventario
  dm_dados.zqry_sgsequencia.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='IV';
  dm_dados.zqry_SGSEQUENCIA.Open;
  inv:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;
  dm_dados.zqry_EQMOVPRODDTMOVPROD.AsDateTime:=date;
  dm_dados.zqry_EQMOVPRODTIPOMOVPROD.AsString:='I';
  dm_dados.zqry_EQMOVPRODESTOQMOVPROD.AsString:='N';
  dm_Dados.zqry_EQMOVPRODCODEMPAX.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALAX.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODALMOX.AsInteger:=strtoint(edt_almox_origem.Text);
  dm_dados.zqry_EQMOVPRODQTDMOVPROD.AsFloat:=qtd_nova;
  dm_dados.zqry_EQMOVPRODSLDMOVPROD.AsFloat:=sld_estoque;
  dm_dados.zqry_EQMOVPRODSLDMOVPRODAX.AsFloat:=qtd_nova;
  dm_dados.zqry_EQMOVPRODDOCMOVPROD.AsInteger:=inv;
  dm_dados.zqry_EQMOVPRODDTINS.AsDateTime:=date;
  dm_dados.zqry_EQMOVPRODHINS.AsDateTime:=time;
  dm_Dados.zqry_EQMOVPRODIDUSUINS.AsString:='sysdba';
  dm_dados.zqry_EQMOVPROD.Post;
  dm_dados.zqry_EQMOVPROD.ApplyUpdates();
  //ajuste de sequencia
  dm_dados.zqry_SGSEQUENCIA.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('update sgsequencia set nroseq=:seqnro where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='MP';
  dm_dados.zqry_SGSEQUENCIA.ParamByName('seqnro').asinteger:=mov+1;
  dm_dados.zqry_SGSEQUENCIA.execsql;
  executasginiconsp;
  dm_dados.zqry_SGSEQUENCIA.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='MP';
  dm_dados.zqry_SGSEQUENCIA.Open;
  mov:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;
  //INSERINDO
  dm_dados.zqry_EQMOVPROD.close;
  dm_dados.zqry_EQMOVPROD.close;
  dm_dados.zqry_EQMOVPROD.open;
  dm_dados.zqry_EQMOVPROD.append;
  dm_dados.zqry_EQMOVPRODCODEMP.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIAL.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODcodmovprod.asinteger:=mov;
  dm_dados.zqry_EQMOVPRODCODEMPPD.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALPD.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODPROD.AsInteger:=strtoint(edt_produto.Text);
  dm_dados.zqry_EQMOVPRODCODEMPTM.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALTM.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODTIPOMOV.AsInteger:=101;
  //busca inventario
  dm_dados.zqry_sgsequencia.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('select * from sgsequencia where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='IV';
  dm_dados.zqry_SGSEQUENCIA.Open;
  inv:=dm_Dados.zqry_SGSEQUENCIANROSEQ.AsInteger;
  dm_dados.zqry_EQMOVPRODDTMOVPROD.AsDateTime:=date;
  dm_dados.zqry_EQMOVPRODTIPOMOVPROD.AsString:='I';
  dm_dados.zqry_EQMOVPRODESTOQMOVPROD.AsString:='N';
  dm_Dados.zqry_EQMOVPRODCODEMPAX.AsInteger:=99;
  dm_dados.zqry_EQMOVPRODCODFILIALAX.AsInteger:=1;
  dm_dados.zqry_EQMOVPRODCODALMOX.AsInteger:=strtoint(edt_almox_dest.Text);
  dm_dados.zqry_EQMOVPRODQTDMOVPROD.AsFloat:=qtd_nova;
  dm_dados.zqry_EQMOVPRODSLDMOVPROD.AsFloat:=sld_estoque;
  dm_dados.zqry_EQMOVPRODSLDMOVPRODAX.AsFloat:=qtd_nova;
  dm_dados.zqry_EQMOVPRODDOCMOVPROD.AsInteger:=inv;
  dm_dados.zqry_EQMOVPRODDTINS.AsDateTime:=date;
  dm_dados.zqry_EQMOVPRODHINS.AsDateTime:=time;
  dm_Dados.zqry_EQMOVPRODIDUSUINS.AsString:='sysdba';
  dm_dados.zqry_EQMOVPROD.Post;
  dm_dados.zqry_EQMOVPROD.ApplyUpdates();
  //ajuste de sequencia
  dm_dados.zqry_SGSEQUENCIA.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('update sgsequencia set nroseq=:seqnro where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='MP';
  dm_dados.zqry_SGSEQUENCIA.Params.ParamByName('seqnro').asinteger:=mov+1;
  dm_dados.zqry_SGSEQUENCIA.execsql;
  //
  dm_dados.zqry_SGSEQUENCIA.close;
  dm_dados.zqry_SGSEQUENCIA.sql.clear;
  dm_dados.zqry_SGSEQUENCIA.sql.add('update sgsequencia set nroseq=:seqnro where sgtab=:tabsg and codemp=99');
  dm_dados.zqry_SGSEQUENCIA.ParamByName('tabsg').AsString:='IV';
  dm_dados.zqry_SGSEQUENCIA.ParamByName('seqnro').asinteger:=inv+1;
  dm_dados.zqry_SGSEQUENCIA.execsql;
end;
dm_dados.zqry_Eqsaldoprod.close;
dm_dados.zqry_EQSALDOPROD.sql.clear;
dm_dados.zqry_EQSALDOPROD.sql.add('select * from eqsaldoprod where codprod=:prodcod and codalmox=:almoxcod');
dm_dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_dest.text);
dm_dados.zqry_EQSALDOPROD.Open;
if dm_dados.zqry_EQSALDOPROD.IsEmpty then
begin
  dm_dados.zqry_EQSALDOPROD.Insert;
  dm_dados.zqry_EQSALDOPRODCODEMP.AsInteger:=99;
  dm_dados.zqry_EQSALDOPRODCODFILIAL.AsInteger:=1;
  dm_dados.zqry_EQSALDOPRODCODPROD.AsInteger:=strtoint(edt_produto.Text);
  dm_dados.zqry_EQSALDOPRODCODEMPAX.AsInteger:=99;
  dm_Dados.zqry_EQSALDOPRODCODFILIALAX.AsInteger:=1;
  dm_dados.zqry_EQSALDOPRODCODALMOX.AsInteger:=strtoint(edt_almox_dest.Text);
  dm_dados.zqry_EQSALDOPRODSLDPROD.AsFloat:=qtd_nova;
  dm_dados.zqry_EQSALDOPRODSLDRESPROD.AsFloat:=0;
  dm_dados.zqry_EQSALDOPRODSLDCONSIGPROD.AsFloat:=0;
  dm_dados.zqry_EQSALDOPRODSLDLIQPROD.AsFloat:=qtd_nova;
  dm_dados.zqry_EQSALDOPRODDTINS.AsDateTime:=date;
  dm_dados.zqry_EQSALDOPRODHINS.AsDateTime:=time;
  dm_dados.zqry_EQSALDOPRODIDUSUINS.AsString:='SYSDBA';
  dm_Dados.zqry_EQSALDOPROD.Post;
  dm_dados.zqry_EQSALDOPROD.ApplyUpdates();
end
else
begin
  qtd_almox:=dm_dados.zqry_EQSALDOPRODSLDPROD.AsFloat;
  dm_Dados.zqry_EQSALDOPROD.Close;
  dm_Dados.zqry_EQSALDOPROD.sql.clear;
  dm_Dados.zqry_EQSALDOPROD.sql.add('update eqsaldoprod set sldprod=:prodsld where codalmox=:almoxcod');
  dm_dados.zqry_EQSALDOPROD.ParamByName('prodsld').asfloat:=qtd_almox+qtd_nova;
  dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_dest.Text);
  dm_dados.zqry_EQSALDOPROD.execsql;
// SEGUNDO CAMPO
  dm_Dados.zqry_EQSALDOPROD.Close;
  dm_Dados.zqry_EQSALDOPROD.sql.clear;
  dm_Dados.zqry_EQSALDOPROD.sql.add('update eqsaldoprod set sldliqprod=:prodsldliq where codalmox=:almoxcod');
  dm_dados.zqry_EQSALDOPROD.ParamByName('prodsldliq').asfloat:=qtd_almox+qtd_nova;
  dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_dest.Text);
  dm_dados.zqry_EQSALDOPROD.execsql;
end;

showmessage('Transferencia executada');
DM_DADOS.zqry_EQSALDOPROD.Close;
dm_Dados.zqry_eqproduto.close;
EDT_ALMOX_ORIGEM.Clear;
EDT_ALMOX_DEST.Clear;
EDT_PRODUTO.CLEAR;
EDT_QTD.Clear;
gb_ALMOX_ORIGEM.CAPTION:='Almoxarifado de Origem';
gb_ALMOX_DESTINO.CAPTION:='Almoxarifado de Destino';
LBL_PRODUTO.Caption:='';
LBL_SLD_ORIGEM.Caption:='';
LBL_SLD_dEST.CAPTION:='';
EDT_ALMOX_ORIGEM.SETFOCUS;
end;

procedure Tfrm_TRANS_ALMOX.btn_SAIRClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_TRANS_ALMOX.DBGrid1DblClick(Sender: TObject);
begin
BTN_ATUALIZA_ALMOX.Visible:=true;
EDT_SLD_NOVO.Visible:=TRUE;
almox:=dm_dados.zqry_EQSALDOPRODcodalmox.AsInteger;
EDT_SLD_NOVO.SetFocus;
end;

procedure Tfrm_TRANS_ALMOX.edt_ALMOX_DESTKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key= #13)  or (key= #9)  then
begin
  if edt_almox_dest.Text='' then
  begin
    showmessage('Atenção o preenchimento do campo é requerido');
    edt_almox_dest.Clear;
    edt_almox_dest.SetFocus;
  end
  else
  begin
    dm_Dados.zqry_eqalmox.close;
    dm_Dados.zqry_eqalmox.sql.clear;
    dm_dados.zqry_eqalmox.sql.add('select * from eqalmox where codalmox=:almoxcod1 and codemp=99');
    dm_dados.zqry_EQALMOX.ParamByName('almoxcod1').AsInteger:=strtoint(edt_almox_dest.Text);
    dm_dados.zqry_EQALMOX.Open;
    if dm_dados.zqry_EQALMOX.IsEmpty then
    begin
      showmessage('Atenção não foi localizada Almoxarifado com esse código'#13'Tab: EQALMOX');
      edt_almox_dest.Clear;
      edt_almox_dest.SetFocus;
    end
    else
    begin
      gb_ALMOX_DESTINO.caption:='Almoxarifado de Destino - '+dm_dados.zqry_EQALMOXDESCALMOX.AsString;
      EDT_PRODUTO.Clear;
      EDT_PRODUTO.SetFocus;
    end;
  end;
end;

end;

procedure Tfrm_TRANS_ALMOX.edt_ALMOX_ORIGEMKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key= #13) or (key= #9) then
begin
  if edt_almox_origem.Text='' then
  begin
    showmessage('Atenção o preenchimento do campo é requerido');
    edt_almox_origem.Clear;
    edt_almox_origem.SetFocus;
  end
  else
  begin
    dm_dados.zqry_eqalmox.close;
    dm_Dados.zqry_eqalmox.sql.clear;
    dm_dados.zqry_eqalmox.sql.add('select * from eqalmox where codalmox=:almoxcod and codemp=99');
    dm_dados.zqry_EQALMOX.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_origem.Text);
    dm_dados.zqry_EQALMOX.Open;
    if dm_dados.zqry_EQALMOX.IsEmpty then
    begin
      showmessage('Atenção não foi localizada Almoxarifado com esse código'#13'Tab: EQALMOX');
      edt_almox_origem.Clear;
      edt_almox_origem.SetFocus;
    end
    else
    begin
      gb_ALMOX_ORIGEM.caption:='Almoxarifado de Origem - '+ dm_dados.zqry_EQALMOXDESCALMOX.AsString;
      edt_almox_dest.Clear;
      edt_almox_dest.SetFocus;
    end;
  end;
end;
end;

procedure Tfrm_TRANS_ALMOX.edt_PRODUTOKeyPress(Sender: TObject; var Key: Char);
begin
if (key= #13)  or (key= #9)  then
begin
  if edt_produto.Text='' then
  begin
    showmessage('Atenção o preenchimento do campo é requerido');
    edt_produto.Clear;
    edt_produto.SetFocus;
  end
  else
  begin
    dm_Dados.zqry_eqproduto.close;
    dm_Dados.zqry_eqproduto.sql.clear;
    dm_dados.zqry_eqproduto.sql.add('select * from eqproduto where codprod=:prodcod and codemp=99');
    dm_dados.zqry_EQproduto.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
    dm_dados.zqry_EQproduto.Open;
    sld_estoque:=dm_dados.zqry_EQPRODUTOSLDPROD.AsFloat;
    if dm_dados.zqry_EQproduto.IsEmpty then
    begin
      showmessage('Atenção não foi localizado Produto com esse código'#13'Tab: EQPRODUTO');
      edt_PRODUTO.Clear;
      edt_PRODUTO.SetFocus;
    end
    else
    begin
      dm_dados.zqry_EQSALDOPROD.Close;
      dm_dados.zqry_EQSALDOPROD.sql.clear;
      dm_dados.zqry_EQSALDOPROD.sql.add('select * from eqsaldoprod where codprod=:prodcod and codalmox=:almoxcod');
      dm_dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
      dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_origem.text);
      dm_dados.zqry_EQSALDOPROD.Open;
      if dm_dados.zqry_EQSALDOPROD.IsEmpty then
      begin
        showmessage('Não existe movimento desse produto no almoxarifado informado');
        close;
      end
      else
      begin
        edt_Qtd.Clear;
        edt_qtd.SetFocus;
        qtd_atual:=dm_dados.zqry_EQSALDOPRODSLDPROD.AsFloat;
        lbl_sld_origem.caption:=floattostr(qtd_atual);
        lbl_PRODUTO.Caption:=dm_dados.zqry_EQPRODUTODESCPROD.AsString;
        dm_dados.zqry_EQSALDOPROD.Close;
        dm_dados.zqry_EQSALDOPROD.sql.clear;
        dm_dados.zqry_EQSALDOPROD.sql.add('select * from eqsaldoprod where codprod=:prodcod and codalmox=:almoxcod');
        dm_Dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
        dm_dados.zqry_EQSALDOPROD.ParamByName('almoxcod').AsInteger:=strtoint(edt_almox_dest.text);
        dm_dados.zqry_EQSALDOPROD.Open;
        if dm_dados.zqry_EQSALDOPROD.IsEmpty then
        begin
          lbl_sld_dest.Caption:='0';
        end
        else
        begin
          sld_destino:=dm_dados.zqry_EQSALDOPRODSLDPROD.AsFloat;
          lbl_sld_dest.Caption:=floattostr(sld_Destino);
        end;
      end;
    end;
  end;
end;
end;

procedure Tfrm_TRANS_ALMOX.edt_QTDKeyPress(Sender: TObject; var Key: Char);
begin
if (KEY = #13) THEN
BEGIN
dm_dados.zqry_EQSALDOPROD.Close;
dm_dados.zqry_EQSALDOPROD.sql.clear;
dm_dados.zqry_EQSALDOPROD.sql.Add('select * from eqsaldoprod where codprod=:prodcod');
dm_dados.zqry_EQSALDOPROD.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
dm_dados.zqry_EQSALDOPROD.Open;

zquery1.Close;
zquery1.SQL.Clear;
zquery1.sql.add('SELECT SUM(sldprod) as sldalmox FROM eqsaldoprod where codprod=:prodcod');
zquery1.ParamByName('prodcod').AsInteger:=strtoint(edt_produto.Text);
zquery1.Open;
sld_almox:=zquery1.FieldByName('sldalmox').AsFloat;
lbl_sld_almox.Caption:=floattostr(sld_almox);
showmessage('Saldo em Estoque '+floattostr(sld_estoque)+' | Saldo Almoxarifados '+floattostr(sld_almox));
END;

end;

end.
