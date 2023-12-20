program Alles;











uses
  Vcl.Forms,
  u_principal in 'u_principal.pas' {frm_PRINCIPAL},
  u_dlg_atualizacao in 'u_dlg_atualizacao.pas' {frm_DLG_ATUALIZACAO},
  u_dlg_datacom in 'u_dlg_datacom.pas' {frm_DLG_DATACOM},
  u_dados in 'u_dados.pas' {dm_DADOS: TDataModule},
  u_aguarde in 'u_aguarde.pas' {frm_AGUARDE},
  u_cadastropai in 'u_cadastropai.pas' {frm_CADASTROPAI},
  u_consultapai in 'u_consultapai.pas' {frm_CONSULTAPAI},
  u_dlg_abrecaixa in 'u_dlg_abrecaixa.pas' {frm_DLG_ABRECAIXA},
  u_dlg_inspetor in 'u_dlg_inspetor.pas' {frm_DLG_INSPETOR},
  u_fechacupom in 'u_fechacupom.pas' {frm_FECHACUPOM},
  u_funcoes in 'u_funcoes.pas',
  u_notifica in 'u_notifica.pas' {frm_NOTIFICA},
  u_verificainternet in 'u_verificainternet.pas',
  rel_movcaixa in 'rel_movcaixa.pas' {frm_REL_MOVCAIXA},
  rel_movcaixa50 in 'rel_movcaixa50.pas' {frm_REL_MOVCAIXA50},
  u_dlg_administrativo in 'u_dlg_administrativo.pas' {frm_DLG_ADMINISTRATIVO},
  u_preferencias in 'u_preferencias.pas' {frm_PREFERENCIAS},
  u_dlg_instantaneo in 'u_dlg_instantaneo.pas' {frm_DLG_INSTANTANEO},
  u_con_buscas in 'u_con_buscas.pas' {frm_CON_BUSCAS},
  Frm_ACBrNFe in 'Frm_ACBrNFe.pas' {frmACBrNFe},
  Frm_ConfiguraSerial in 'Frm_ConfiguraSerial.pas' {frmConfiguraSerial},
  Frm_SelecionarCertificado in 'Frm_SelecionarCertificado.pas' {frmSelecionarCertificado},
  Frm_Status in 'Frm_Status.pas' {frmStatus},
  u_login in 'u_login.pas' {frm_LOGIN},
  con_pedido in 'integra\con_pedido.pas' {frm_CON_PEDIDOS},
  rel_etiquetas in 'integra\rel_etiquetas.pas' {frm_REL_ETIQUETA},
  con_clientes in 'integra\con_clientes.pas' {frm_CON_CLIENTES},
  rel_clientes in 'integra\rel_clientes.pas' {frm_REL_CLIENTES},
  uNFE in 'integra\uNFE.pas',
  u_Aviso in 'u_Aviso.pas' {frm_AVISO},
  u_nfce in 'u_nfce.pas',
  u_monitor in 'u_monitor.pas' {frm_MONITOR},
  u_dadoscheckout in 'u_dadoscheckout.pas' {dm_CHECKOUT: TDataModule},
  dlg_associaprodutoreverso in 'integra\dlg_associaprodutoreverso.pas' {frm_DLG_ASSOCIAPRODUTOREVERSO},
  dlg_cancelacompra in 'integra\dlg_cancelacompra.pas' {frm_DLG_CANCELACOMPRA},
  u_gestaonotas in 'u_gestaonotas.pas' {frm_GESTAONOTAS},
  dlg_cstat in 'dlg_cstat.pas' {frm_DLG_CSTAT},
  uNFCE in 'integra\uNFCE.pas',
  u_registro in 'u_registro.pas' {frm_REGISTRO},
  u_recado in 'u_recado.pas' {frm_RECADO},
  u_entregue in 'integra\u_entregue.pas' {frm_ENTREGUE},
  u_checkout in '..\AllesCheckOut\u_checkout.pas' {frm_CHECKOUT},
  u_identificacliente in '..\AllesCheckOut\u_identificacliente.pas' {frm_DLG_IDENTIFICA},
  dlg_etiquetas in 'integra\dlg_etiquetas.pas' {frm_DLG_ETIQUETAS},
  rel_notas in 'integra\rel_notas.pas' {frm_REL_NOTAS},
  u_dlg_vendas in 'u_dlg_vendas.pas' {frm_DLG_VENDAS},
  rel_finalizadores in 'rel_finalizadores.pas' {frm_REL_FINALIZADORES},
  rel_vendas in 'rel_vendas.pas' {frm_REL_VENDAS},
  frm_cargabalanca in 'frm_cargabalanca.pas' {frm_DLG_CARGABALANCA},
  dlg_acertalote in 'dlg_acertalote.pas' {frm_DLG_ACERTALOTE},
  concad_depositos in 'concad_depositos.pas' {frm_CONCAD_DEPOSITOS},
  concad_saldodepos in 'concad_saldodepos.pas' {frm_CONCAD_SALDODEPOS},
  trans_almox in 'trans_almox.pas' {frm_TRANS_ALMOX},
  rel_almox_origem in 'rel_almox_origem.pas' {frm_REL_ALMOX_ORIGEM},
  dlg_etiqproduto in 'dlg_etiqproduto.pas' {frm_DLG_ETIQPRODUTO},
  rel_etiqproduto in 'rel_etiqproduto.pas' {frm_REL_ETIQPRODUTO},
  con_receber in 'con_receber.pas' {frm_CON_RECEBER},
  dlg_appremret in 'dlg_appremret.pas' {frm_DLG_APPREMRET},
  rel_retboletos in 'rel_retboletos.pas' {frm_REL_RETBOLETOS},
  rel_recibo in 'rel_recibo.pas' {frm_REL_RECIBO},
  rel_recibo90 in 'rel_recibo90.pas' {frm_REL_RECIBO90},
  rel_ulttitulos in 'rel_ulttitulos.pas' {frm_REL_ULTTITULOS},
  rel_ultitulos2 in 'rel_ultitulos2.pas' {frm_RELULTTITULOS2},
  uImportaUmaNFe in 'uImportaUmaNFe.pas' {frm_IMPORTANOTA},
  dlg_associaproduto in 'dlg_associaproduto.pas' {frm_DLG_ASSOCIAPRODUTO};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_PRINCIPAL, frm_PRINCIPAL);
  Application.CreateForm(Tdm_DADOS, dm_DADOS);
  Application.CreateForm(TfrmACBrNFe, frmACBrNFe);
  Application.CreateForm(TfrmConfiguraSerial, frmConfiguraSerial);
  Application.CreateForm(TfrmSelecionarCertificado, frmSelecionarCertificado);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(Tfrm_LOGIN, frm_LOGIN);
  Application.CreateForm(Tdm_CHECKOUT, dm_CHECKOUT);
  Application.CreateForm(Tfrm_REGISTRO, frm_REGISTRO);
  Application.CreateForm(Tfrm_RECADO, frm_RECADO);
  Application.CreateForm(Tfrm_CON_RECEBER, frm_CON_RECEBER);
  Application.CreateForm(Tfrm_DLG_APPREMRET, frm_DLG_APPREMRET);
  Application.CreateForm(Tfrm_REL_RETBOLETOS, frm_REL_RETBOLETOS);
  Application.CreateForm(Tfrm_REL_RECIBO, frm_REL_RECIBO);
  Application.CreateForm(Tfrm_REL_RECIBO90, frm_REL_RECIBO90);
  Application.CreateForm(Tfrm_REL_ULTTITULOS, frm_REL_ULTTITULOS);
  Application.CreateForm(Tfrm_RELULTTITULOS2, frm_RELULTTITULOS2);
  Application.CreateForm(Tfrm_DLG_ASSOCIAPRODUTOREVERSO, frm_DLG_ASSOCIAPRODUTOREVERSO);
  Application.CreateForm(Tfrm_DLG_CANCELACOMPRA, frm_DLG_CANCELACOMPRA);
  Application.CreateForm(Tfrm_IMPORTANOTA, frm_IMPORTANOTA);
  Application.CreateForm(Tfrm_DLG_ASSOCIAPRODUTO, frm_DLG_ASSOCIAPRODUTO);
  //Application.CreateForm(Tfrm_INS_CLFISCAL, frm_INS_CLFISCAL);
  Application.CreateForm(Tfrm_REL_NOTAS, frm_REL_NOTAS);
  Application.Run;
end.
