object frmACBrNFe: TfrmACBrNFe
  Left = 236
  Top = 118
  Caption = 'Alles - Par'#226'metros do Emissor'
  ClientHeight = 612
  ClientWidth = 866
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnlMenus: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 612
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 611
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 295
      Height = 544
      ActivePage = TabSheet14
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Configura'#231#245'es'
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 287
          Height = 516
          ActivePage = TabSheet13
          Align = alClient
          MultiLine = True
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'Certificado'
            object lSSLLib: TLabel
              Left = 39
              Top = 16
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'SSLLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lCryptLib: TLabel
              Left = 29
              Top = 43
              Width = 40
              Height = 13
              Alignment = taRightJustify
              Caption = 'CryptLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lHttpLib: TLabel
              Left = 35
              Top = 70
              Width = 34
              Height = 13
              Alignment = taRightJustify
              Caption = 'HttpLib'
              Color = clBtnFace
              ParentColor = False
            end
            object lXmlSign: TLabel
              Left = 17
              Top = 97
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Caption = 'XMLSignLib'
              Color = clBtnFace
              ParentColor = False
            end
            object gbCertificado: TGroupBox
              Left = 2
              Top = 118
              Width = 263
              Height = 184
              Caption = 'Certificado'
              TabOrder = 0
              object Label1: TLabel
                Left = 7
                Top = 60
                Width = 41
                Height = 13
                Caption = 'Caminho'
              end
              object Label2: TLabel
                Left = 7
                Top = 100
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object sbtnCaminhoCert: TSpeedButton
                Left = 234
                Top = 76
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnCaminhoCertClick
              end
              object Label25: TLabel
                Left = 7
                Top = 140
                Width = 79
                Height = 13
                Caption = 'N'#250'mero de S'#233'rie'
              end
              object sbtnGetCert: TSpeedButton
                Left = 234
                Top = 154
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnGetCertClick
              end
              object sbtnNumSerie: TSpeedButton
                Left = 205
                Top = 154
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnNumSerieClick
              end
              object Label51: TLabel
                Left = 7
                Top = 17
                Width = 65
                Height = 13
                Caption = 'URL para PFX'
              end
              object edtCaminho: TEdit
                Left = 7
                Top = 76
                Width = 225
                Height = 21
                TabOrder = 1
              end
              object edtSenha: TEdit
                Left = 7
                Top = 116
                Width = 249
                Height = 21
                PasswordChar = '*'
                TabOrder = 2
              end
              object edtNumSerie: TEdit
                Left = 7
                Top = 156
                Width = 193
                Height = 21
                TabOrder = 3
              end
              object edtURLPFX: TEdit
                Left = 7
                Top = 33
                Width = 249
                Height = 21
                TabOrder = 0
              end
            end
            object btnDataValidade: TButton
              Left = 7
              Top = 305
              Width = 99
              Height = 25
              Caption = 'Data de Validade'
              TabOrder = 1
              OnClick = btnDataValidadeClick
            end
            object btnNumSerie: TButton
              Left = 111
              Top = 305
              Width = 73
              Height = 25
              Caption = 'Num.S'#233'rie'
              TabOrder = 2
              OnClick = btnNumSerieClick
            end
            object btnSubName: TButton
              Left = 7
              Top = 337
              Width = 99
              Height = 25
              Caption = 'Subject Name'
              TabOrder = 4
              OnClick = btnSubNameClick
            end
            object btnCNPJ: TButton
              Left = 112
              Top = 337
              Width = 73
              Height = 25
              Caption = 'CNPJ'
              TabOrder = 5
              OnClick = btnCNPJClick
            end
            object btnIssuerName: TButton
              Left = 190
              Top = 306
              Width = 76
              Height = 25
              Caption = 'Issuer Name'
              TabOrder = 3
              OnClick = btnIssuerNameClick
            end
            object GroupBox1: TGroupBox
              Left = 3
              Top = 367
              Width = 263
              Height = 69
              Caption = 'Calculo de Hash e assinatura'
              TabOrder = 7
              object Edit1: TEdit
                Left = 3
                Top = 14
                Width = 249
                Height = 21
                TabOrder = 0
                Text = '0548133600013704583493000190'
              end
              object btnSha256: TButton
                Left = 8
                Top = 41
                Width = 99
                Height = 25
                Caption = 'SHA256+RSA'
                TabOrder = 1
                OnClick = btnSha256Click
              end
              object cbAssinar: TCheckBox
                Left = 144
                Top = 41
                Width = 54
                Height = 19
                Caption = 'Assinar'
                Checked = True
                State = cbChecked
                TabOrder = 2
              end
            end
            object btnHTTPS: TButton
              Left = 9
              Top = 442
              Width = 128
              Height = 25
              Caption = 'HTTPS sem Certificado'
              TabOrder = 8
              OnClick = btnHTTPSClick
            end
            object btnLeituraX509: TButton
              Left = 145
              Top = 442
              Width = 115
              Height = 25
              Caption = 'Leitura de X509'
              TabOrder = 9
              OnClick = btnLeituraX509Click
            end
            object cbSSLLib: TComboBox
              Left = 80
              Top = 8
              Width = 160
              Height = 21
              Style = csDropDownList
              TabOrder = 10
              OnChange = cbSSLLibChange
            end
            object cbCryptLib: TComboBox
              Left = 80
              Top = 35
              Width = 160
              Height = 21
              Style = csDropDownList
              TabOrder = 11
              OnChange = cbCryptLibChange
            end
            object cbHttpLib: TComboBox
              Left = 80
              Top = 62
              Width = 160
              Height = 21
              Style = csDropDownList
              TabOrder = 12
              OnChange = cbHttpLibChange
            end
            object cbXmlSignLib: TComboBox
              Left = 80
              Top = 89
              Width = 160
              Height = 21
              Style = csDropDownList
              TabOrder = 13
              OnChange = cbXmlSignLibChange
            end
            object btVersao: TButton
              Left = 190
              Top = 336
              Width = 76
              Height = 25
              Caption = 'Ver.SSL Lib'
              TabOrder = 6
              OnClick = btVersaoClick
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Geral'
            ImageIndex = 1
            object GroupBox3: TGroupBox
              Left = 3
              Top = 12
              Width = 265
              Height = 389
              Caption = 'Geral'
              TabOrder = 0
              object sbtnPathSalvar: TSpeedButton
                Left = 238
                Top = 236
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = sbtnPathSalvarClick
              end
              object Label29: TLabel
                Left = 8
                Top = 88
                Width = 86
                Height = 13
                Caption = 'Forma de Emiss'#227'o'
              end
              object Label31: TLabel
                Left = 8
                Top = 50
                Width = 72
                Height = 13
                Caption = 'Formato Alerta'
              end
              object Label30: TLabel
                Left = 8
                Top = 126
                Width = 120
                Height = 13
                Caption = 'Modelo Documento Fiscal'
              end
              object Label32: TLabel
                Left = 8
                Top = 165
                Width = 119
                Height = 13
                Caption = 'Vers'#227'o Documento Fiscal'
              end
              object Label33: TLabel
                Left = 8
                Top = 299
                Width = 184
                Height = 13
                Caption = 'IdToken/IdCSC (Somente para NFC-e)'
              end
              object Label34: TLabel
                Left = 7
                Top = 339
                Width = 164
                Height = 13
                Caption = 'Token/CSC (Somente para NFC-e)'
              end
              object Label42: TLabel
                Left = 8
                Top = 260
                Width = 198
                Height = 13
                Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
              end
              object spPathSchemas: TSpeedButton
                Left = 238
                Top = 276
                Width = 23
                Height = 24
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
                OnClick = spPathSchemasClick
              end
              object edtPathLogs: TEdit
                Left = 8
                Top = 239
                Width = 228
                Height = 21
                TabOrder = 0
              end
              object ckSalvar: TCheckBox
                Left = 8
                Top = 223
                Width = 209
                Height = 15
                Caption = 'Salvar Arquivos de Envio e Resposta'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cbFormaEmissao: TComboBox
                Left = 8
                Top = 104
                Width = 248
                Height = 21
                TabOrder = 2
              end
              object cbxAtualizarXML: TCheckBox
                Left = 8
                Top = 16
                Width = 97
                Height = 17
                Caption = 'Atualizar XML'
                TabOrder = 3
              end
              object cbxExibirErroSchema: TCheckBox
                Left = 8
                Top = 32
                Width = 129
                Height = 17
                Caption = 'Exibir Erro Schema'
                TabOrder = 4
              end
              object edtFormatoAlerta: TEdit
                Left = 8
                Top = 66
                Width = 248
                Height = 21
                TabOrder = 5
              end
              object cbModeloDF: TComboBox
                Left = 8
                Top = 142
                Width = 248
                Height = 21
                TabOrder = 6
              end
              object cbxRetirarAcentos: TCheckBox
                Left = 8
                Top = 205
                Width = 193
                Height = 17
                Caption = 'Retirar Acentos dos XMLs enviados'
                TabOrder = 7
              end
              object cbVersaoDF: TComboBox
                Left = 8
                Top = 181
                Width = 248
                Height = 21
                TabOrder = 8
              end
              object edtIdToken: TEdit
                Left = 8
                Top = 315
                Width = 248
                Height = 21
                TabOrder = 9
              end
              object edtToken: TEdit
                Left = 7
                Top = 355
                Width = 248
                Height = 21
                TabOrder = 10
              end
              object edtPathSchemas: TEdit
                Left = 8
                Top = 276
                Width = 228
                Height = 21
                TabOrder = 11
              end
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'WebService'
            ImageIndex = 2
            object GroupBox4: TGroupBox
              Left = 5
              Top = 4
              Width = 265
              Height = 190
              Caption = 'WebService'
              TabOrder = 0
              object Label6: TLabel
                Left = 8
                Top = 16
                Width = 126
                Height = 13
                Caption = 'Selecione UF do Emitente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lTimeOut: TLabel
                Left = 167
                Top = 116
                Width = 40
                Height = 13
                Caption = 'TimeOut'
                Color = clBtnFace
                ParentColor = False
              end
              object lSSLLib1: TLabel
                Left = 19
                Top = 168
                Width = 41
                Height = 13
                Alignment = taRightJustify
                Caption = 'SSLType'
                Color = clBtnFace
                ParentColor = False
              end
              object cbxVisualizar: TCheckBox
                Left = 8
                Top = 118
                Width = 153
                Height = 17
                Caption = 'Visualizar Mensagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object cbUF: TComboBox
                Left = 8
                Top = 32
                Width = 249
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ItemIndex = 24
                ParentFont = False
                TabOrder = 1
                Text = 'SP'
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SC'
                  'SP'
                  'SE'
                  'TO')
              end
              object rgTipoAmb: TRadioGroup
                Left = 8
                Top = 61
                Width = 249
                Height = 52
                Caption = 'Selecione o Ambiente de Destino'
                Columns = 2
                ItemIndex = 0
                Items.Strings = (
                  'Produ'#231#227'o'
                  'Homologa'#231#227'o')
                TabOrder = 2
              end
              object cbxSalvarSOAP: TCheckBox
                Left = 8
                Top = 136
                Width = 153
                Height = 17
                Caption = 'Salvar envelope SOAP'
                TabOrder = 3
              end
              object seTimeOut: TSpinEdit
                Left = 167
                Top = 132
                Width = 66
                Height = 22
                Increment = 10
                MaxValue = 999999
                MinValue = 1000
                TabOrder = 4
                Value = 5000
              end
              object cbSSLType: TComboBox
                Left = 72
                Top = 160
                Width = 160
                Height = 21
                Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
                Style = csDropDownList
                TabOrder = 5
                OnChange = cbSSLTypeChange
              end
            end
            object gbProxy: TGroupBox
              Left = 5
              Top = 283
              Width = 265
              Height = 104
              Caption = 'Proxy'
              TabOrder = 1
              object Label8: TLabel
                Left = 8
                Top = 16
                Width = 22
                Height = 13
                Caption = 'Host'
              end
              object Label9: TLabel
                Left = 208
                Top = 16
                Width = 26
                Height = 13
                Caption = 'Porta'
              end
              object Label10: TLabel
                Left = 8
                Top = 56
                Width = 36
                Height = 13
                Caption = 'Usu'#225'rio'
              end
              object Label11: TLabel
                Left = 138
                Top = 56
                Width = 30
                Height = 13
                Caption = 'Senha'
              end
              object edtProxyHost: TEdit
                Left = 8
                Top = 32
                Width = 193
                Height = 21
                TabOrder = 0
              end
              object edtProxyPorta: TEdit
                Left = 208
                Top = 32
                Width = 50
                Height = 21
                TabOrder = 1
              end
              object edtProxyUser: TEdit
                Left = 8
                Top = 72
                Width = 123
                Height = 21
                TabOrder = 2
              end
              object edtProxySenha: TEdit
                Left = 135
                Top = 72
                Width = 123
                Height = 21
                PasswordChar = '*'
                TabOrder = 3
              end
            end
            object gbxRetornoEnvio: TGroupBox
              Left = 5
              Top = 200
              Width = 265
              Height = 77
              Caption = 'Retorno de Envio'
              TabOrder = 2
              object Label36: TLabel
                Left = 93
                Top = 27
                Width = 51
                Height = 13
                Caption = 'Tentativas'
              end
              object Label37: TLabel
                Left = 176
                Top = 27
                Width = 44
                Height = 13
                Caption = 'Intervalo'
              end
              object Label38: TLabel
                Left = 8
                Top = 27
                Width = 45
                Height = 13
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                Caption = 'Aguardar'
              end
              object cbxAjustarAut: TCheckBox
                Left = 8
                Top = 12
                Width = 234
                Height = 17
                Caption = 'Ajustar Automaticamente prop. "Aguardar"'
                TabOrder = 0
              end
              object edtTentativas: TEdit
                Left = 93
                Top = 43
                Width = 57
                Height = 21
                TabOrder = 2
              end
              object edtIntervalo: TEdit
                Left = 176
                Top = 43
                Width = 57
                Height = 21
                TabOrder = 3
              end
              object edtAguardar: TEdit
                Left = 8
                Top = 43
                Width = 57
                Height = 21
                Hint = 
                  'Aguardar quantos segundos para primeira consulta de retorno de e' +
                  'nvio'
                TabOrder = 1
              end
            end
          end
          object TabSheet12: TTabSheet
            Caption = 'Emitente'
            ImageIndex = 3
            object Label12: TLabel
              Left = 8
              Top = 4
              Width = 25
              Height = 13
              Caption = 'CNPJ'
            end
            object Label13: TLabel
              Left = 136
              Top = 4
              Width = 43
              Height = 13
              Caption = 'Insc.Est.'
            end
            object Label14: TLabel
              Left = 8
              Top = 44
              Width = 60
              Height = 13
              Caption = 'Raz'#227'o Social'
            end
            object Label15: TLabel
              Left = 8
              Top = 84
              Width = 41
              Height = 13
              Caption = 'Fantasia'
            end
            object Label16: TLabel
              Left = 8
              Top = 164
              Width = 55
              Height = 13
              Caption = 'Logradouro'
            end
            object Label17: TLabel
              Left = 208
              Top = 164
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
            end
            object Label18: TLabel
              Left = 8
              Top = 204
              Width = 65
              Height = 13
              Caption = 'Complemento'
            end
            object Label19: TLabel
              Left = 136
              Top = 204
              Width = 28
              Height = 13
              Caption = 'Bairro'
            end
            object Label20: TLabel
              Left = 8
              Top = 244
              Width = 62
              Height = 13
              Caption = 'C'#243'd. Cidade '
            end
            object Label21: TLabel
              Left = 76
              Top = 244
              Width = 33
              Height = 13
              Caption = 'Cidade'
            end
            object Label22: TLabel
              Left = 225
              Top = 244
              Width = 13
              Height = 13
              Caption = 'UF'
            end
            object Label23: TLabel
              Left = 136
              Top = 124
              Width = 19
              Height = 13
              Caption = 'CEP'
            end
            object Label24: TLabel
              Left = 8
              Top = 124
              Width = 24
              Height = 13
              Caption = 'Fone'
            end
            object Label52: TLabel
              Left = 8
              Top = 289
              Width = 83
              Height = 13
              Caption = 'Tipo de Empresa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edtEmitCNPJ: TEdit
              Left = 8
              Top = 20
              Width = 123
              Height = 21
              TabOrder = 0
            end
            object edtEmitIE: TEdit
              Left = 137
              Top = 20
              Width = 123
              Height = 21
              TabOrder = 1
            end
            object edtEmitRazao: TEdit
              Left = 8
              Top = 60
              Width = 252
              Height = 21
              TabOrder = 2
            end
            object edtEmitFantasia: TEdit
              Left = 8
              Top = 100
              Width = 252
              Height = 21
              TabOrder = 3
            end
            object edtEmitFone: TEdit
              Left = 8
              Top = 140
              Width = 125
              Height = 21
              TabOrder = 4
            end
            object edtEmitCEP: TEdit
              Left = 137
              Top = 140
              Width = 123
              Height = 21
              TabOrder = 5
            end
            object edtEmitLogradouro: TEdit
              Left = 8
              Top = 180
              Width = 196
              Height = 21
              TabOrder = 6
            end
            object edtEmitNumero: TEdit
              Left = 210
              Top = 180
              Width = 50
              Height = 21
              TabOrder = 7
            end
            object edtEmitComp: TEdit
              Left = 8
              Top = 220
              Width = 123
              Height = 21
              TabOrder = 8
            end
            object edtEmitBairro: TEdit
              Left = 137
              Top = 220
              Width = 123
              Height = 21
              TabOrder = 9
            end
            object edtEmitCodCidade: TEdit
              Left = 8
              Top = 260
              Width = 61
              Height = 21
              TabOrder = 10
            end
            object edtEmitCidade: TEdit
              Left = 76
              Top = 260
              Width = 142
              Height = 21
              TabOrder = 11
            end
            object edtEmitUF: TEdit
              Left = 225
              Top = 260
              Width = 35
              Height = 21
              TabOrder = 12
            end
            object cbTipoEmpresa: TComboBox
              Left = 8
              Top = 305
              Width = 249
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              Items.Strings = (
                'Simples Nacional'
                'Simples Nacional, excesso sublimite de receita bruta'
                'Regime Normal')
            end
          end
          object TabSheet13: TTabSheet
            Caption = 'Arquivos'
            ImageIndex = 4
            object sbPathNFe: TSpeedButton
              Left = 247
              Top = 131
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathNFeClick
            end
            object Label35: TLabel
              Left = 6
              Top = 116
              Width = 94
              Height = 13
              Caption = 'Pasta Arquivos NFe'
            end
            object Label39: TLabel
              Left = 6
              Top = 154
              Width = 143
              Height = 13
              Caption = 'Pasta Arquivos Cancelamento'
            end
            object sbPathCan: TSpeedButton
              Left = 247
              Top = 169
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathCanClick
            end
            object Label46: TLabel
              Left = 6
              Top = 192
              Width = 198
              Height = 13
              Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
            end
            object sbPathCCe: TSpeedButton
              Left = 247
              Top = 207
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathCCeClick
            end
            object Label40: TLabel
              Left = 6
              Top = 230
              Width = 129
              Height = 13
              Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
            end
            object sbPathInu: TSpeedButton
              Left = 247
              Top = 245
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathInuClick
            end
            object Label41: TLabel
              Left = 6
              Top = 268
              Width = 101
              Height = 13
              Caption = 'Pasta Arquivos DPEC'
            end
            object sbPathDPEC: TSpeedButton
              Left = 247
              Top = 283
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathDPECClick
            end
            object Label47: TLabel
              Left = 6
              Top = 306
              Width = 109
              Height = 13
              Caption = 'Pasta Arquivos Evento'
            end
            object sbPathEvento: TSpeedButton
              Left = 247
              Top = 321
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              OnClick = sbPathEventoClick
            end
            object cbxSalvarArqs: TCheckBox
              Left = 6
              Top = 0
              Width = 210
              Height = 17
              Caption = 'Salvar Arquivos em Pastas Separadas'
              TabOrder = 0
            end
            object cbxPastaMensal: TCheckBox
              Left = 6
              Top = 16
              Width = 210
              Height = 17
              Caption = 'Criar Pastas Mensalmente'
              TabOrder = 1
            end
            object cbxAdicionaLiteral: TCheckBox
              Left = 6
              Top = 32
              Width = 210
              Height = 17
              Caption = 'Adicionar Literal no nome das pastas'
              TabOrder = 2
            end
            object cbxEmissaoPathNFe: TCheckBox
              Left = 6
              Top = 48
              Width = 251
              Height = 17
              Caption = 'Salvar Documento pelo campo Data de Emiss'#227'o'
              TabOrder = 3
            end
            object cbxSalvaPathEvento: TCheckBox
              Left = 6
              Top = 64
              Width = 233
              Height = 17
              Caption = 'Salvar Arquivos de Eventos'
              TabOrder = 4
            end
            object cbxSepararPorCNPJ: TCheckBox
              Left = 6
              Top = 80
              Width = 233
              Height = 17
              Caption = 'Separar Arqs pelo CNPJ do Certificado'
              TabOrder = 5
            end
            object edtPathCCe: TEdit
              Left = 6
              Top = 208
              Width = 235
              Height = 21
              TabOrder = 6
            end
            object edtPathNFe: TEdit
              Left = 6
              Top = 132
              Width = 235
              Height = 21
              TabOrder = 7
            end
            object edtPathCan: TEdit
              Left = 6
              Top = 170
              Width = 235
              Height = 21
              TabOrder = 8
            end
            object edtPathInu: TEdit
              Left = 6
              Top = 246
              Width = 235
              Height = 21
              TabOrder = 9
            end
            object edtPathDPEC: TEdit
              Left = 6
              Top = 284
              Width = 235
              Height = 21
              TabOrder = 10
            end
            object edtPathEvento: TEdit
              Left = 6
              Top = 322
              Width = 235
              Height = 21
              TabOrder = 11
            end
            object cbxSepararPorModelo: TCheckBox
              Left = 6
              Top = 96
              Width = 251
              Height = 17
              Caption = 'Separar Arqs pelo Modelo do Documento'
              TabOrder = 12
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Documento Auxiliar'
        ImageIndex = 1
        object Label7: TLabel
          Left = 8
          Top = 8
          Width = 55
          Height = 13
          Caption = 'Logo Marca'
        end
        object sbtnLogoMarca: TSpeedButton
          Left = 238
          Top = 22
          Width = 23
          Height = 24
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          NumGlyphs = 2
          OnClick = sbtnLogoMarcaClick
        end
        object edtLogoMarca: TEdit
          Left = 8
          Top = 24
          Width = 228
          Height = 21
          TabOrder = 0
        end
        object rgTipoDanfe: TRadioGroup
          Left = 8
          Top = 56
          Width = 257
          Height = 49
          Caption = 'DANFE'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Retrato'
            'Paisagem')
          TabOrder = 1
        end
        object gbEscPos: TGroupBox
          Left = 8
          Top = 120
          Width = 257
          Height = 233
          Caption = 'EscPos'
          TabOrder = 2
          object Label43: TLabel
            Left = 8
            Top = 24
            Width = 34
            Height = 13
            Caption = 'Modelo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label44: TLabel
            Left = 8
            Top = 72
            Width = 26
            Height = 13
            Caption = 'Porta'
            Color = clBtnFace
            ParentColor = False
          end
          object Label45: TLabel
            Left = 8
            Top = 184
            Width = 55
            Height = 13
            Caption = 'Pag.Codigo'
            Color = clBtnFace
            ParentColor = False
          end
          object Label48: TLabel
            Left = 8
            Top = 136
            Width = 38
            Height = 13
            Caption = 'Colunas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label49: TLabel
            Left = 80
            Top = 120
            Width = 39
            Height = 26
            Caption = 'Espa'#231'os'#13#10'Linhas'
            Color = clBtnFace
            ParentColor = False
          end
          object Label50: TLabel
            Left = 144
            Top = 120
            Width = 30
            Height = 26
            Caption = 'Linhas'#13#10'Pular'
            Color = clBtnFace
            ParentColor = False
          end
          object btSerial: TBitBtn
            Left = 216
            Top = 88
            Width = 22
            Height = 22
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
              3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
              000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
              6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
              56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
              008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
              6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
              008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
              3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
              00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
            ModalResult = 1
            TabOrder = 0
            OnClick = btSerialClick
          end
          object cbxModeloPosPrinter: TComboBox
            Left = 8
            Top = 40
            Width = 233
            Height = 21
            Style = csDropDownList
            TabOrder = 1
          end
          object cbxPorta: TComboBox
            Left = 8
            Top = 88
            Width = 201
            Height = 21
            TabOrder = 2
          end
          object cbxPagCodigo: TComboBox
            Left = 8
            Top = 200
            Width = 101
            Height = 21
            Style = csDropDownList
            TabOrder = 3
          end
          object seColunas: TSpinEdit
            Left = 8
            Top = 152
            Width = 49
            Height = 22
            MaxValue = 9999
            MinValue = 0
            TabOrder = 4
            Value = 0
          end
          object seEspLinhas: TSpinEdit
            Left = 80
            Top = 152
            Width = 49
            Height = 22
            MaxValue = 9999
            MinValue = 0
            TabOrder = 5
            Value = 0
          end
          object seLinhasPular: TSpinEdit
            Left = 144
            Top = 152
            Width = 49
            Height = 22
            MaxValue = 9999
            MinValue = 0
            TabOrder = 6
            Value = 0
          end
          object cbCortarPapel: TCheckBox
            Left = 143
            Top = 196
            Width = 85
            Height = 19
            Hint = 
              'Conecta a Porta Serial a cada comando enviado'#13#10'Desconecta da Por' +
              'ta Serial ap'#243's o envio'
            Caption = 'Cortar Papel'
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
        end
        object rgDANFCE: TRadioGroup
          Left = 8
          Top = 361
          Width = 257
          Height = 49
          Caption = 'DANFCE'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'Fortes'
            'EscPos'
            'A4')
          TabOrder = 3
        end
      end
      object TabSheet14: TTabSheet
        Caption = 'Email'
        ImageIndex = 2
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 69
          Height = 13
          Caption = 'Servidor SMTP'
        end
        object Label4: TLabel
          Left = 206
          Top = 8
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label26: TLabel
          Left = 137
          Top = 48
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label27: TLabel
          Left = 8
          Top = 88
          Width = 122
          Height = 13
          Caption = 'Assunto do email enviado'
        end
        object Label28: TLabel
          Left = 10
          Top = 181
          Width = 93
          Height = 13
          Caption = 'Mensagem do Email'
        end
        object edtSmtpHost: TEdit
          Left = 8
          Top = 24
          Width = 193
          Height = 21
          TabOrder = 0
        end
        object edtSmtpPort: TEdit
          Left = 206
          Top = 24
          Width = 51
          Height = 21
          TabOrder = 1
        end
        object edtSmtpUser: TEdit
          Left = 8
          Top = 64
          Width = 120
          Height = 21
          TabOrder = 2
        end
        object edtSmtpPass: TEdit
          Left = 137
          Top = 64
          Width = 120
          Height = 21
          PasswordChar = '*'
          TabOrder = 3
        end
        object edtEmailAssunto: TEdit
          Left = 8
          Top = 104
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object cbEmailSSL: TCheckBox
          Left = 10
          Top = 136
          Width = 167
          Height = 17
          Caption = 'SMTP - Autentica'#231#227'o SSL'
          TabOrder = 5
        end
        object mmEmailMsg: TMemo
          Left = 10
          Top = 197
          Width = 249
          Height = 130
          TabOrder = 6
        end
        object cbEmailTLS: TCheckBox
          Left = 10
          Top = 158
          Width = 167
          Height = 17
          Caption = 'SMTP - Autentica'#231#227'o TLS'
          TabOrder = 7
        end
      end
    end
    object btnSalvarConfig: TBitBtn
      Left = 74
      Top = 560
      Width = 153
      Height = 36
      Caption = 'Salvar Configura'#231#245'es'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnSalvarConfigClick
    end
  end
  object pnlCentral: TPanel
    Left = 297
    Top = 0
    Width = 569
    Height = 612
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 565
    ExplicitHeight = 611
    object pgcBotoes: TPageControl
      Left = 1
      Top = 1
      Width = 567
      Height = 197
      ActivePage = tsEnvios
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 563
      object tsEnvios: TTabSheet
        Caption = 'Envios'
        ImageIndex = 2
        object btnCriarEnviar: TButton
          Left = 376
          Top = 8
          Width = 177
          Height = 25
          Caption = 'Criar e Enviar'
          TabOrder = 0
          OnClick = btnCriarEnviarClick
        end
        object btnValidarRegrasNegocio: TButton
          Left = 9
          Top = 71
          Width = 177
          Height = 25
          Caption = 'Validar Regras de Neg'#243'cio'
          TabOrder = 1
          OnClick = btnValidarRegrasNegocioClick
        end
        object btnGerarTXT: TButton
          Left = 190
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Gerar TXT'
          TabOrder = 2
          OnClick = btnGerarTXTClick
        end
        object btnGerarXML: TButton
          Left = 7
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Gerar NFe'
          TabOrder = 3
          OnClick = btnGerarXMLClick
        end
        object btnImportarXML: TButton
          Left = 191
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Importar TXT/XML'
          TabOrder = 4
          OnClick = btnImportarXMLClick
        end
        object btnGerarPDF: TButton
          Left = 375
          Top = 102
          Width = 177
          Height = 25
          Caption = 'Gerar PDF'
          TabOrder = 5
          OnClick = btnGerarPDFClick
        end
        object btnValidarXML: TButton
          Left = 192
          Top = 71
          Width = 177
          Height = 25
          Caption = 'Validar XML'
          TabOrder = 6
          OnClick = btnValidarXMLClick
        end
        object btnImprimir: TButton
          Left = 192
          Top = 102
          Width = 177
          Height = 25
          Caption = 'Imprimir DANFE'
          TabOrder = 7
          OnClick = btnImprimirClick
        end
        object btnEnviarEmail: TButton
          Left = 9
          Top = 133
          Width = 177
          Height = 25
          Caption = 'Enviar NFe Email'
          TabOrder = 8
          OnClick = btnEnviarEmailClick
        end
        object btnAdicionarProtocolo: TButton
          Left = 9
          Top = 102
          Width = 177
          Height = 25
          Caption = 'Adicionar Protocolo ao XML'
          TabOrder = 9
          OnClick = btnAdicionarProtocoloClick
        end
        object btnCarregarXMLEnviar: TButton
          Left = 8
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Carregar XML e Enviar'
          TabOrder = 10
          OnClick = btnCarregarXMLEnviarClick
        end
        object btnValidarAssinatura: TButton
          Left = 375
          Top = 71
          Width = 177
          Height = 25
          Caption = 'Validar Assinatura'
          TabOrder = 11
          OnClick = btnValidarAssinaturaClick
        end
        object btnImprimirDANFCE: TButton
          Left = 192
          Top = 133
          Width = 177
          Height = 25
          Caption = 'Imprimir DANFCE'
          TabOrder = 12
          OnClick = btnImprimirDANFCEClick
        end
        object btnImprimirDANFCEOffline: TButton
          Left = 375
          Top = 133
          Width = 177
          Height = 25
          Caption = 'Imprimir DANFCE Offline'
          TabOrder = 13
          OnClick = btnImprimirDANFCEOfflineClick
        end
      end
      object tsConsultas: TTabSheet
        Caption = 'Consultas'
        ImageIndex = 3
        object btnConsultar: TButton
          Left = 191
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Consultar carregando XML'
          TabOrder = 0
          OnClick = btnConsultarClick
        end
        object btnConsultarChave: TButton
          Left = 8
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Consultar pela Chave'
          TabOrder = 1
          OnClick = btnConsultarChaveClick
        end
        object btnConsCad: TButton
          Left = 192
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Consulta Cadastro'
          TabOrder = 2
          OnClick = btnConsCadClick
        end
        object btnConsultarRecibo: TButton
          Left = 376
          Top = 8
          Width = 177
          Height = 25
          Caption = 'Consultar Recibo Lote'
          TabOrder = 3
          OnClick = btnConsultarReciboClick
        end
        object btnStatusServ: TButton
          Left = 8
          Top = 9
          Width = 177
          Height = 25
          Caption = ' Status de Servi'#231'o'
          TabOrder = 4
          OnClick = btnStatusServClick
        end
      end
      object tsEventos: TTabSheet
        Caption = 'Eventos'
        ImageIndex = 4
        object btnCancelarXML: TButton
          Left = 8
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Cancelamento com XML'
          TabOrder = 0
          OnClick = btnCancelarXMLClick
        end
        object btnCancelarChave: TButton
          Left = 191
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Cancelamento pela Chave'
          TabOrder = 1
          OnClick = btnCancelarChaveClick
        end
        object btnCartadeCorrecao: TButton
          Left = 374
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Carta de Corre'#231#227'o'
          TabOrder = 2
          OnClick = btnCartadeCorrecaoClick
        end
        object btnImprimirEvento: TButton
          Left = 8
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Imprimir Evento'
          TabOrder = 3
          OnClick = btnImprimirEventoClick
        end
        object btnEnviarEventoEmail: TButton
          Left = 191
          Top = 40
          Width = 177
          Height = 25
          Caption = 'Enviar Evento Email'
          TabOrder = 4
          OnClick = btnEnviarEventoEmailClick
        end
      end
      object tsInutilizacao: TTabSheet
        Caption = 'Inutiliza'#231#227'o'
        ImageIndex = 5
        object btnInutilizar: TButton
          Left = 8
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Inutilizar Numera'#231#227'o'
          TabOrder = 0
          OnClick = btnInutilizarClick
        end
        object btnInutilizarImprimir: TButton
          Left = 191
          Top = 9
          Width = 177
          Height = 25
          Caption = 'Inutilizar Imprimir'
          TabOrder = 1
          OnClick = btnInutilizarImprimirClick
        end
      end
      object tsDistribuicao: TTabSheet
        Caption = 'Distribui'#231#227'o DFe'
        ImageIndex = 5
        object btnManifDestConfirmacao: TButton
          Left = 192
          Top = 9
          Width = 178
          Height = 25
          Caption = 'Manif. Dest. - Conf. Opera'#231#227'o'
          TabOrder = 0
          OnClick = btnManifDestConfirmacaoClick
        end
        object btnDistribuicaoDFe: TButton
          Left = 8
          Top = 9
          Width = 178
          Height = 25
          Caption = 'Distribui'#231#227'o Documentos Fiscais'
          TabOrder = 1
          OnClick = btnDistribuicaoDFeClick
        end
      end
    end
    object pgRespostas: TPageControl
      Left = 1
      Top = 198
      Width = 567
      Height = 413
      ActivePage = pgNOTAS
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 563
      ExplicitHeight = 412
      object TabSheet5: TTabSheet
        Caption = 'Respostas'
        object MemoResp: TMemo
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'XML Resposta'
        ImageIndex = 1
        object WBResposta: TWebBrowser
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C000000C6390000CA2700000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Log'
        ImageIndex = 2
        object memoLog: TMemo
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Documento'
        ImageIndex = 3
        object trvwDocumento: TTreeView
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          Indent = 19
          TabOrder = 0
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Retorno Completo WS'
        ImageIndex = 4
        object memoRespWS: TMemo
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Dados: TTabSheet
        Caption = 'Dados'
        ImageIndex = 5
        object MemoDados: TMemo
          Left = 0
          Top = 0
          Width = 559
          Height = 385
          Align = alClient
          Lines.Strings = (
            '')
          ScrollBars = ssVertical
          TabOrder = 0
          WordWrap = False
        end
      end
      object pgNOTAS: TTabSheet
        Caption = 'Relat'#243'rio Gerencial'
        ImageIndex = 6
        object Label53: TLabel
          Left = 162
          Top = 231
          Width = 107
          Height = 13
          Caption = 'De                         ate '
        end
        object Label59: TLabel
          Left = 1
          Top = 231
          Width = 32
          Height = 13
          Caption = 'N.'#186' NF'
        end
        object btn_GERARELATORIO: TBitBtn
          Left = 468
          Top = 231
          Width = 89
          Height = 25
          Caption = 'Todas as Notas'
          TabOrder = 6
          OnClick = btn_GERARELATORIOClick
        end
        object btn_GERARELATORIONFe: TBitBtn
          Left = 424
          Top = 231
          Width = 48
          Height = 25
          Caption = 'S'#243' NFe'
          TabOrder = 5
          OnClick = btn_GERARELATORIONFeClick
        end
        object btn_GERARELATORIONFCe: TBitBtn
          Left = 375
          Top = 231
          Width = 48
          Height = 25
          Caption = 'S'#243' NFCe'
          TabOrder = 4
          OnClick = btn_GERARELATORIONFCeClick
        end
        object MaskEdit2: TMaskEdit
          Left = 275
          Top = 231
          Width = 60
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 3
          Text = '  /  /    '
        end
        object MaskEdit1: TMaskEdit
          Left = 181
          Top = 231
          Width = 61
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object btn_REIMPRIME_NFE: TBitBtn
          Left = 110
          Top = 231
          Width = 25
          Height = 25
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF6F6F6BFBFC09E958F979798A9A9AAB6B6B7F2F2F2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
            FCFCE4E4E4C3C3C3DBDBDBF8F8F8CDCECEA09590E1C7B7FFFBF4E1CAB8695951
            665558787777C3C3C3FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBFBFBDBDADAA89B9BD4A59FDE9A8B857574867E7BC6A191FFF1E6FEE4D8FD
            E2D7FDD8CCFFFBF2C0A694836764816E70CECECEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFAFAFAD7D6D6A89898D7B9B8FDF2F0FDCBBAFDAB8FBF7964EEC6B6FFEF
            DEFDD2BDFDDBC9FBCFBCFDDFD2FCE5DBFFFFFFFDEBDCB898887D7D7EEBEBEBFF
            FFFFFFFFFFF9F9F9D0CFCFA89596DEC2C2FFF5F3FFF5F3FFF0EDFDD0C3FDB39D
            B99A88A48372CC9F89FAC7ADFED3BCFBCDB7FDDBCBFBD1BFFEE8DFFFFCFAFFFF
            FFFFD9BCE3E3E3FFFFFFFEFEFEAD9999E4CBCAFFFAF8FFF6F4FFF0EDFFEBE9FF
            E9E4FED8CEFDBEADD09E88A38975A37F6CAB8D7DDBAD95FECCB2FCD0B8FDD8C6
            FFEADEFFEFE4D2B9ADEDECECFFFFFFFFFFFFF6F0F0F6E7E8FFF7F5FFF1EFFFEC
            EAFFEAE4FFE6E1FFE1DBFDDED7FCC8BAFFBCABE5AC98B2917CA58C78A58E7EB4
            9D8BEBC2ACFFEDDFDBB4A5D7D0CEFFFFFFFFFFFFFFFFFFFFFFFFF5EEEEF5E5E2
            FFEEEBFFEBE7FFE7E2FFE2DCFFDED8FFDCD5FFE1DCFDCDC2FEC8BBFDC1B2FEBB
            A9D6A390A98C77A694868B726AE88D708D7C7CF0F0F0FFFFFFFFFFFFFFFFFFFF
            FFFFF5EEEFF5DEDAFFE8E3FFE3DFFFDFD9FFDDD6FFD8D0FFDDD6FFE0DAFFCEC5
            FFCEC6FFCBC0FEC6B8FEBFAFF9B9A7BC81765F494CEC9D848C7674EFEFEFFFFF
            FFFFFFFFFFFFFFFFFFFFF5EFEFF5D8D3FFE1DBFFDED7FFDAD1FFD5CDFFD4CBFF
            EAE5FFDED6DCC9B1719D5BE7C5B2FFCFC6FECABEFDC4B6FFC0AEEDAB9AFCB19A
            8B7675EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF5EFEFF5D1CBFFDBD3FFD6CFFFD2
            C9FFCFC5FFECE8FFEEE9FFE0DE2BA62E008A09017B077CA062FFCEC6FFCDC3FE
            C9BCFDC2B3FFBFAD8C7776EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE2B9B4
            FFD6CDFFCFC5FFD7CFFFF7F4E8DFEDF4DCE97FD6840CB72107A9150598100086
            09157F15A7AE82FFD1CAFFCCC2FFCBBD8E7B7AF1F1F1FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFCFACABEBCAC5FFEBE6FEEFEDDCE8D8F9ECF579CDA83FE36930D451
            1DC4370EB41E06A31405940F00810536892EDCC1ABFFD1C69A8B8BF8F8F8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD7B3AFEBB5A6D8B0AED8C7B078CF8371F0935E
            FC9261FB9552EE813FDF652BCE4A19C02F0BB01A06A012008D0A6AA358F7C3BE
            B9B3B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8BAB9FFF1EAF2B197DEC6
            BB6EA35E2ECD4D45E66E59F38962FC975EF9924DEB793ADB5E26CB4313BA2809
            AB18EAD8C4CAA4A1EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5
            C3A7A1F5B699FFF0E3FFDBC4CCAE9955AB542DD8534BEA775CF78D63FD975BF6
            8C48E6722CD650BFE0B4F3CDCBBEB8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFDED5D0F9C3A6FFF5EBFFE7D4FFE4CDFAD3BFAFA78540B74C
            37DD5E50ED7E5CF99060FC95C5F9D2F8DFE0B9A8A8FCFCFCFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED6D2FECFB1FFFBF7FFF0E5FFEADBFF
            E6D2FFE4CBF3CBC08E9E6D5ACA648FE499EDEFDEE8CBCDC0B2B2FDFDFDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9D4FFE0C5FDF5
            ECFFFBF9FFF5EDFFEEE2FFE9D8FFF1E2A0847BBEB3B4DEBEBFB3A6A7E8E7E7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F8F8F7DCCABCFFE3C8FEE5D3FDF9F6FFFAF6FFF2E9FFF6EE9D877CF0F0F0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E5E2FFE8CFFFE0C6FEECDFFDFCFAFFFFFC
            9F8C80EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEADFD5FF
            E4C9FFE0C9FFF7EEA59589F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFDFDFDDFD1C4FCD9BDD2D0CEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 1
          OnClick = btn_REIMPRIME_NFEClick
        end
        object edt_NUM_NF: TEdit
          Left = 39
          Top = 231
          Width = 61
          Height = 21
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = -6
          Top = 0
          Width = 565
          Height = 225
          Hint = 
            'Informe o N.'#186' da Esta'#231#227'o caso o Caixa seja Centralizado | Manten' +
            'ha 0 caso o caixa seja nessa esta'#231#227'o'
          DataSource = dm_DADOS.zdts_SGNF
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAVE'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UPLOAD'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITUACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO'
              Visible = True
            end>
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 411
    Top = 343
  end
  object IdFTP1: TIdFTP
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 656
    Top = 344
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.SepararPorCNPJ = True
    Configuracoes.Arquivos.SepararPorModelo = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorAno = True
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.SalvarApenasNFeProcessadas = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 334
    Top = 294
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    Left = 598
    Top = 286
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 454
    Top = 286
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    PesquisarIBGE = True
    Left = 518
    Top = 153
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    PathPDF = '..\pdf\'
    Logo = 'c:\alles\img\logo.jpg'
    Sistema = 'NonoElemento'
    Email = 'fiscal.nonoelemento@gmail.com'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = False
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ImprimeXPedNItemPed = True
    Left = 518
    Top = 342
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    Impressora = 'default'
    MostraPreview = False
    PathPDF = '..\PDF\'
    Sistema = 'Alles - Multiconectados'
    Site = 'http://www.nonoelemento.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ExibeTotalTributosItem = True
    ImprimeQRCodeLateral = True
    ImprimeLogoLateral = True
    DescricaoPagamentos = [icaTipo, icaBandeira, icaAutorizacao]
    ImprimeEmDuasLinhas = True
    FonteLinhaItem.Charset = DEFAULT_CHARSET
    FonteLinhaItem.Color = clWindowText
    FonteLinhaItem.Height = -9
    FonteLinhaItem.Name = 'Lucida Console'
    FonteLinhaItem.Style = []
    Left = 470
    Top = 97
  end
  object ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4
    Sistema = 'Projeto ACBr - www.projetoacbr.com.br'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.100000000000000000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    Left = 558
    Top = 113
  end
  object ACBrIntegrador1: TACBrIntegrador
    PastaInput = 'C:\Integrador\Input\'
    PastaOutput = 'C:\Integrador\Output\'
    Left = 686
    Top = 121
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 627
    Top = 387
  end
end