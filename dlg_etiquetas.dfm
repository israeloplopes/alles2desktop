object frm_DLG_ETIQUETAS: Tfrm_DLG_ETIQUETAS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Etiquetas de Produtos - Transporte'
  ClientHeight = 391
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 133
    Height = 13
    Caption = 'Informe o Codigo do Pedido'
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 35
    Width = 420
    Height = 150
    DataSource = dm_DADOS.zdts_VDVENDA
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCVENDA'
        Title.Caption = 'DOC.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA'
        Title.Caption = 'COD.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTEMITVENDA'
        Title.Caption = 'DT. EMITE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_RAZCLIENTE'
        Title.Caption = 'CLIENTE'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPRODVENDA'
        Title.Caption = 'VLR. VENDA'
        Width = 75
        Visible = True
      end>
  end
  object edt_BUSCAPEDIDO: TEdit
    Left = 147
    Top = 8
    Width = 70
    Height = 21
    TabOrder = 1
  end
  object btn_BUSCAR: TBitBtn
    Left = 223
    Top = 8
    Width = 27
    Height = 25
    Hint = 'Buscar...'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD7F4FF9FE5FFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F0FF98DCFFE4
      F6FF83D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2F3FF6EC4FFB8E2FFFDFEFF84CEFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EC1FF86C5FFABD7FF70
      BBFFDEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9EC9FF93C3FF6FAEFFCFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFEDF3FFA2C2FFA1C2FF9FC1FFA2C3FFBCD3FF93BAFFDDE9FFCFE0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F4FF8DAAFFABC0FF9FB7FF9DB7FF
      9AB5FFAFC4FFABC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFA3B1FFAFBCFFD7DDFFFFFFFFFFFFFFFBFCFF9BADFFA4B5FFEAEDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6ABFFA7ACFFFFFFFFFFFFFFFFFFFF
      FFFFFFE4E6FFB6BCFFB8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFABA7FFABA7FFC9E2FFC4DFFFF0F7FFFFFFFFF4F3FFB3B1FFB0AEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99AFFA89AFFD6CBFFBAA6FFEEE9FF
      FFFFFFC2B9FFBFB7FFD1CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFCBBCFFBDAAFFA389FFD3BAFFEADEFFC3B3FFB6A2FF9C83FFFDFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA5FFB394FFBFA4FFB79BFF
      C1AAFFA17CFFEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFEDE3FFC09EFFBA95FFD3BBFFFDFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 2
    OnClick = btn_BUSCARClick
  end
  object btn_IMPRIMIR: TBitBtn
    Left = 5
    Top = 330
    Width = 50
    Height = 55
    Caption = 'Imprimir'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7CDFBDBB5FBDBB5FBDBB5FBDBB5FBDB
      B5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FB
      DBB5FCE7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F0B875DF9240DF92
      40DF9240DF9240DF9240DF9240DF9240DF9240F0B875F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F0B875DF9240DF92
      40DF9240DF9240DF9240DF9240DF9240DF9240F0B875F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF5F5F5A5A5A5828282818181D1B18BF9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90D1B18B818181828282A6A6A6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FCFCFC686868424242424242424242BD9D77F9CA90F9CA90ECAE68D27619D276
      19D27619D27619D27619D27619D27619D27619D27619D27619D27619F9CA90F9
      CA90BD9D774242424242424242426A6A6AFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
      D3D3D3424242424242424242424242BD9D77F9CA90F9CA90F5C183ECAE68ECAE
      68ECAE68ECAE68ECAE68ECAE68ECAE68ECAE68ECAE68ECAE68ECAE68F9CA90F9
      CA90BD9D77424242424242424242424242D3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C04242424242424242423D3D3DA68359CE9E63CE9E63CE9E63CE9E63CE9E
      63CE9E63CE9E63CE9E63CE9E63CE9E63CE9E63CE9E63CE9E63CE9E63CE9E63CE
      9E63A683593D3D3D424242424242424242C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C0424242424242424242262626B07B38F5A542F5A542F5A542F5A542F5A5
      42F5A542F5A542F5A542F5A542F5A542F5A542F5A542F5A542F5A542F5A542F5
      A542B07B38262626424242424242424242C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C04242424242424242423535352C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
      2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
      2C2C2C2C2C353535424242424242424242C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
      C0C0C04242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
      B7B7B74242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242424242424242424242424242424242
      4242424242424242424242424242424242B7B7B7FFFFFFFFFFFFFFFFFFFFFFFF
      BABABA5757575757575757575757575757575757575757575757575757575757
      5757575757575757575757575757575757575757575757575757575757575757
      5757575757575757575757575757575757BABABAFFFFFFFFFFFFFFFFFFFFFFFF
      CACACA6161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161CACACAFFFFFFFFFFFFFFFFFFFFFFFF
      CACACA6161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161CACACAFFFFFFFFFFFFFFFFFFFFFFFF
      CACACA6161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161667C4E62655E616161CACACAFFFFFFFFFFFFFFFFFFFFFFFF
      D2D2D26161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      616161616161616172CE11667D4D616161D2D2D2FFFFFFFFFFFFFFFFFFFFFFFF
      F4F4F46B6B6B6161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      61616161616161616161616161616C6C6CF4F4F4FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFD8D8D88282826565656161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161656565838383D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF424242BD9D77F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90BD9D77424242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF424242BD9D77F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90BD9D77424242FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB5F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90FBDBB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE7CDFBDBB5FBDBB5FBDBB5FBDBB5FBDB
      B5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FBDBB5FB
      DBB5FCE7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    TabOrder = 3
    OnClick = btn_IMPRIMIRClick
  end
  object DBGrid2: TDBGrid
    Left = 5
    Top = 187
    Width = 420
    Height = 70
    DataSource = dm_DADOS.zdts_VDITVENDA
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPROD'
        Title.Caption = 'C'#211'D. PROD.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_DESCPRODUTO'
        Title.Caption = 'PRODUTO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDITVENDA'
        Title.Caption = 'QTD.'
        Width = 60
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 5
    Top = 259
    Width = 220
    Height = 70
    DataSource = dm_DADOS.zdts_VDFRETEVD
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDFRETEVD'
        Title.Caption = 'VOL.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESOBRUTVD'
        Title.Caption = 'PESO BRUTO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESOLIQVD'
        Title.Caption = 'PESO LIQ.'
        Width = 70
        Visible = True
      end>
  end
  object btn_TODOS: TBitBtn
    Left = 256
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Todos'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF8CDDFF8ADCFF8BDCFFFFFFFF92DEFF92DEFF92DEFF92DEFFFFFFFF8BDCFF8A
      DCFF8DDDFFFFFFFFFFFFFFFFFFFFFFFFFF94D7FFC6E9FFD3EEFFD3EEFFD3EEFF
      D3EEFFD3EEFFD3EEFFD3EEFFD3EEFFC6E9FF94D7FFFFFFFFFFFFFFFFFFFFFFFF
      FF98D0FFD7E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
      E9FF98D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E3FFE6F2FFCDE4FFCDE4FF
      CDE4FFCDE4FFCDE4FFCDE4FFFFFFFFD8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF9FC2FFDADDFFD2E3FFABCAFFABCAFFABCAFFABCAFFBDD6FFCFE1FFFFFFFFDA
      DDFF9FC2FFFFFFFFFFFFFFFFFFFFFFFFFFA2BBFFDBD7FFD4DFFFADC3FFADC3FF
      ADC3FFADC3FFBFD0FFD0DDFFFFFFFFDBD7FFA2BBFFFFFFFFFFFFFFFFFFFFFFFF
      FFA5B4FFDDD1FFD4DBFFB0BEFFB0BEFFB0BEFFB0BEFFC1CCFFD2DAFFFFFFFFDD
      D1FFA5B4FFFFFFFFFFFFFFFFFFFFFFFFFFA8ADFFDECAFFD6D8FFB2B7FFB2B7FF
      B2B7FFB2B7FFC2C6FFD3D6FFFFFFFFDECAFFA8ADFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFDFC4FFEAE9FFD5D2FFD5D2FFD5D2FFD5D2FFD5D2FFD5D2FFFFFFFFDF
      C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE9FFFE1BEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1BEFFAE9FFFFFFFFFFFFFFFFFFFFFFFFF
      FFB097FFDAA3FFE4BDFFE4BDFFE4BDFFE4BDFFE4BDFFE4BDFFE4BDFFE4BDFFDA
      A4FFB097FFFFFFFFFFFFFFFFFFFFFFFFFFB08BFFB897FFB998FFFFFFFFB491FF
      B491FFB491FFB491FFFFFFFFB998FFB897FFB08BFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 6
    OnClick = btn_TODOSClick
  end
  object DBGrid4: TDBGrid
    Left = 231
    Top = 259
    Width = 195
    Height = 70
    DataSource = dm_DADOS.zdts_VDTRANSP
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMETRAN'
        Title.Caption = 'TRANSP'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONETRAN'
        Title.Caption = 'FONE'
        Width = 60
        Visible = True
      end>
  end
  object btn_SAIR: TBitBtn
    Left = 55
    Top = 330
    Width = 50
    Height = 55
    Caption = 'Sair'
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F4FFD3DDFFB5C7
      FF98B1FF7A9AFF5D84FF3F6DFFB8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6482DE3361F42559FD2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF6F86CC969EB3969EB3969EB3969EB3969EB396
      9EB3B9BECCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF375DD72257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF1645DC2053F72257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF0C36BF1B4CEA2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF0C36BF1B4CEA2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF0C36BF1B4CEA2257FF4D66B3636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF0C36BF1B4CEA2257FF4B64B2636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF1645DC1F53F72257FF3E57A4636E8D636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E576282636E8D636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E444E6F606B8A636E8D636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D4A5576636E8C636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D556080636E8D636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D434E6E5E6A89636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D414C6D495475636E8D63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D414C6D414C6D545F7E63
      6E8D969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D414C6D414C6D424D6E5D
      6888969EB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF365CD62257FF2257FF2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF36509E414C6D414C6D414C6D414C6D414C6D48
      5373959DB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF506ECE2A59EB2458FC2257FF2257FF2257
      FF2257FF2257FF2257FF2257FF465FAA58627F58627F58627F58627F58627F58
      627F9399AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFE8EEFFCCD8FFB0C3
      FF94AEFF7999FF5D84FF406EFFBBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    TabOrder = 8
    OnClick = btn_IMPRIMIRClick
  end
end
