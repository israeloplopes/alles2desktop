object frm_TRANS_ALMOX: Tfrm_TRANS_ALMOX
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Transfer'#234'ncia entre Almoxarifados'
  ClientHeight = 599
  ClientWidth = 634
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 666
    Top = 395
    Width = 65
    Height = 17
    DataField = 'SLDPROD'
  end
  object lbl_SLD_ORIGEM: TLabel
    Left = 490
    Top = 27
    Width = 3
    Height = 13
  end
  object lbl_SLD_DEST: TLabel
    Left = 490
    Top = 70
    Width = 3
    Height = 13
  end
  object Label11: TLabel
    Left = 10
    Top = 440
    Width = 117
    Height = 13
    Caption = 'Soma dos Almoxarifados'
  end
  object lbl_SLD_ALMOX: TLabel
    Left = 318
    Top = 544
    Width = 3
    Height = 13
    Alignment = taRightJustify
  end
  object btn_PROCESSAR: TBitBtn
    Left = 8
    Top = 524
    Width = 50
    Height = 55
    Caption = 'Processar'
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAF8E3F1E9AAF1E9AAF1E9AAF1E9AAF1E9AAF1E9AAFAF8E3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E9FFB080FF
      904EFF904EFFB081FFF2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE2FF9250FF8A44FF
      8A44FF8A44FF8A44FF9251FFF2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE7EFF8A44FF8A44FF
      8A44FF8A44FF8A44FF8A44FFB182FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF904DFF8A44FF8A44FF
      8A44FF8A44FF8A44FF8A44FF904EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF904EFF8A44FF8A44FF
      8A44FF8A44FF8A44FF8A44FF914FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB080FF8A44FF8A44FF
      8A44FF8A44FF8A44FF8A44FFB182FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E9AAD4BC00D4BC00D4BC00D4BC00D4BC00D4BC00F1E9AAFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E9FF9250FF8A44FF
      8A44FF8A44FF8A44FF9250FFF2EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAF8E3F1E9AAF1E9AAF1E9AAF1E9AAF1E9AAF1E9AAFAF8E3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E9FFB080FF
      9353FF9353FFAF7FFFEEE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEBE7EDEBE7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      FCFBFCFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C2B5C9C2B5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF
      C9BDCFC9BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C2B5C9C2B5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DFD8AE
      A490AEA490E3E0D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD8D3C9B7AE9CB7AE9CD8D3C9FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E4DEC0
      B8A9C0B8A9E7E4DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF1F0ECB1A895B1A895F1F0ECFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9
      C2B5C9C2B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DFD8E3DFD8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9
      C2B5C9C2B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEE5C3BDD19489D2958AE5C2BCFEFEFDFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBEFDD
      CA37DDCA37FCFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCF9F8CA8275B5513FB5513FB5513FB5513FC97F72FEFCFBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCF5DFCD40D4
      BC00D4BC00DFCD40FDFCF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD7A298B5513FB5513FB5513FB5513FB5513FB5513FDBAAA1FFFF
      FFFFFFFFFFFFFFFFFFFFE5E1DBFFFFFFFFFFFFFFFFFFFDFCF5DFCD41D4BC00D4
      BC00D4BC00D4BC00DFCD42FDFCF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBD6353B5513FB5513FB5513FB5513FB5513FB5513FBD6555FFFF
      FFEDEBE7E4E1DAE4E1DAAFA591D6D1C7FEFEFDFDFCF4DECC3CD4BC00D4BC00D4
      BC00D4BC00D4BC00D4BC00DECC3DFDFCF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB75544B5513FB5513FB5513FB5513FB5513FB5513FB75645FFFF
      FFC9C2B5AEA490AEA490AEA490B0A693E6E3DDF3ECB8D4BC00D4BC00D4BC00D4
      BC00D4BC00D4BC00D4BC00D4BC00F3EDB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC37162B5513FB5513FB5513FB5513FB5513FB5513FC47365FFFF
      FFFFFFFFFFFFFFFFFFFFB7AE9CECEAE5FFFFFFFFFFFEE7D96FD4BC00D4BC00D4
      BC00D4BC00D4BC00D4BC00E7D970FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE7C6C1B5513FB5513FB5513FB5513FB5513FB5513FE7C8C2FFFF
      FFFFFFFFFFFFFFFFFFFFFAFAF8FFFFFFFFFFFFFFFFFFFFFFFEE7D96FD4BC00D4
      BC00D4BC00D4BC00E7D970FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE3BCB5B95A49B5513FB5513FB85947E1B8B1FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEE7D96FD4
      BC00D4BC00E7D970FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFAF4F3ECD3CEECD3CEFBF5F4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB
      DF87EBDF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
    TabOrder = 0
    OnClick = btn_PROCESSARClick
  end
  object btn_ATUALIZA_ALMOX: TBitBtn
    Left = 99
    Top = 459
    Width = 102
    Height = 25
    Caption = 'Atualiza'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FBFF92E2FFBDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFE6F7FFD4F1FFFFFFFFCBEDFF8AD8FFEAF8FF7FD4FFD4F1FFD4F1FFE6
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6F5FF87CFFFC8E9FFFFFFFFCDEBFF
      8DD1FFEBF7FF7BCAFFC8E9FFC8E9FF87CFFFE7F5FFFFFFFFFFFFFFFFFFFFFFFF
      FFCCE7FFCCE7FFFFFFFFFFFFFFFFFFFFF1F9FF9ACFFFC2E2FFFFFFFFFFFFFFCC
      E7FFCCE7FFFFFFFFFFFFFFFFFFFFFFFFFFCEE3FFCEE3FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADD
      FF8CB6FF8CB6FFCADEFFFFFFFFBAD3FF99BEFF99BEFFBAD3FFFFFFFFFFFFFFD4
      E4FFD4E4FFFFFFFFFFFFFFFFFFFFA7BFFFEEF3FFEFF3FFA8C1FFFFFFFFA1BBFF
      D6E3FFD6E3FFA1BBFFFFFFFFF4F7FFA3BCFFA2BCFFF5F8FFFFFFFFFFFFFFF4F6
      FFA3B4FFA3B4FFF5F7FFFFFFFFA4B5FFDBC0FFDBC0FFA4B5FFFFFFFFADBDFFF2
      F4FFF1F3FFADBDFFFFFFFFFFFFFFFFFFFFD4D7FFD4D8FFFFFFFFFFFFFFC0C5FF
      A1AAFFA1AAFFC0C5FFFFFFFFCBD0FF8C97FF8C97FFCBD0FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4
      D4FFD4D4FFFFFFFFFFFFFFFFFFFFFFFFFFD6D1FFD6D1FFFFFFFFFFFFFFCDC7FF
      ADA3FFF5F3FFFFFFFFFFFFFFFFFFFFD6D1FFD6D1FFFFFFFFFFFFFFFFFFFFFFFF
      FFECE8FFA28BFFDFD7FFDFD7FFA088FFEFECFFA893FFD9D0FFFFFFFFDFD7FFA2
      8BFFEDE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE6FFD6C7FFD6C7FF9D79FF
      F0EAFFAA8BFFDBCDFFFFFFFFD6C7FFEDE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD2BCFFB590FFF6F1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    Visible = False
    OnClick = btn_ATUALIZA_ALMOXClick
  end
  object edt_SLD_NOVO: TEdit
    Left = 8
    Top = 459
    Width = 85
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 432
    Top = 536
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
    Visible = False
    OnClick = BitBtn1Click
  end
  object btn_SAIR: TBitBtn
    Left = 64
    Top = 524
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
    TabOrder = 4
    OnClick = btn_SAIRClick
  end
  object gb_ALMOX_ORIGEM: TGroupBox
    Left = 10
    Top = 10
    Width = 305
    Height = 100
    Caption = 'Almoxarifado de Origem'
    TabOrder = 5
    object Label9: TLabel
      Left = 10
      Top = 50
      Width = 26
      Height = 13
      Caption = 'Saldo'
    end
    object edt_ALMOX_ORIGEM: TEdit
      Left = 10
      Top = 20
      Width = 73
      Height = 21
      TabOrder = 0
      OnKeyPress = edt_ALMOX_ORIGEMKeyPress
    end
  end
  object gb_ALMOX_DESTINO: TGroupBox
    Left = 321
    Top = 10
    Width = 305
    Height = 100
    Caption = 'Almoxarifado de Destino'
    TabOrder = 6
    object Label8: TLabel
      Left = 10
      Top = 50
      Width = 26
      Height = 13
      Caption = 'Saldo'
    end
    object edt_ALMOX_DEST: TEdit
      Left = 10
      Top = 17
      Width = 73
      Height = 21
      TabOrder = 0
      OnKeyPress = edt_ALMOX_DESTKeyPress
    end
  end
  object gb_PRODUTO: TGroupBox
    Left = 8
    Top = 116
    Width = 620
    Height = 105
    Caption = 'Produto e Quantidade'
    TabOrder = 7
    object lbl_PRODUTO: TLabel
      Left = 184
      Top = 39
      Width = 420
      Height = 18
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 41
      Width = 66
      Height = 13
      Caption = 'C'#243'dl. Produto'
    end
    object Label2: TLabel
      Left = 184
      Top = 20
      Width = 102
      Height = 13
      Caption = 'Descri'#231#227'o do Produto'
    end
    object Label5: TLabel
      Left = 10
      Top = 63
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object edt_PRODUTO: TEdit
      Left = 93
      Top = 36
      Width = 73
      Height = 21
      TabOrder = 0
      OnKeyPress = edt_PRODUTOKeyPress
    end
    object edt_QTD: TEdit
      Left = 93
      Top = 63
      Width = 73
      Height = 21
      TabOrder = 1
      OnKeyPress = edt_QTDKeyPress
    end
  end
  object gb_ALMOXARIFADO: TGroupBox
    Left = 8
    Top = 227
    Width = 620
    Height = 105
    Caption = 'Produto no Almoxarifado'
    TabOrder = 8
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 616
      Height = 80
      Align = alTop
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODALMOX'
          Title.Caption = 'ALMOX.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLDPROD'
          Title.Caption = 'SALDO'
          Width = 100
          Visible = True
        end>
    end
  end
  object gb_KARDEX: TGroupBox
    Left = 10
    Top = 338
    Width = 620
    Height = 105
    Caption = 'Kardex'
    TabOrder = 9
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 616
      Height = 80
      Align = alTop
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODMOVPROD'
          Title.Caption = 'MOV.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODTIPOMOV'
          Title.Caption = 'COD. TIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOMOVPROD'
          Title.Caption = 'TIPO MOV.'
          Visible = True
        end>
    end
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 544
    Top = 536
  end
end
