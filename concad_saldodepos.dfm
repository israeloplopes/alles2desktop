object frm_CONCAD_SALDODEPOS: Tfrm_CONCAD_SALDODEPOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Saldo no Dep'#243'sito'
  ClientHeight = 451
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 628
    Height = 445
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consulta'
      object rg_BUSCA: TRadioGroup
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 614
        Height = 35
        Align = alTop
        Caption = 'Sua busca'
        Columns = 4
        Items.Strings = (
          'Todos'
          'C'#243'digo'
          'Dep'#243'sito'
          'Lote')
        TabOrder = 0
        OnClick = rg_BUSCAClick
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 90
        Width = 614
        Height = 324
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = '_DEPOSITO'
            Title.Caption = 'DEPOSITO'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_PRODUTO'
            Title.Caption = 'PRODUTO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODLOTE'
            Title.Caption = 'LOTE'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCLOTE'
            Title.Caption = 'DT. VENC.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDPROD'
            Title.Caption = 'SALDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDLOTE'
            Title.Caption = 'SLD.LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTINS'
            Title.Caption = 'DT. INS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HINS'
            Title.Caption = 'H. INS'
            Visible = True
          end>
      end
      object gb_PARAMETROS: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 614
        Height = 40
        Align = alTop
        Caption = 'Par'#226'metros'
        TabOrder = 2
        object lbl_PESQUISA: TLabel
          Left = 8
          Top = 20
          Width = 150
          Height = 13
          AutoSize = False
        end
        object sp_BUSCA: TSpeedButton
          Left = 291
          Top = 15
          Width = 23
          Height = 22
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF6F6F6D9D9D9BEBEBEB8B8B8C8C8C8EAEAEAFEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDA6A6A68080806464646363635E5E5E
            7A7A7ADADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EFEF
            EFEDEDEDF5F5F5FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEC0C0C07474744E4D4C86
            6E5BA78562A5846474655B6A6A6AF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
            D3D3D3ACACAC9B9B9B989898A5A5A5D1D1D1FBFBFBFFFFFFFFFFFFFEFEFEC7C7
            C7444443A1784BE6CD79E9D87FE5D179D7B1607F5F45AFAFAFFFFFFFFFFFFFFF
            FFFFFFFFFFDBDBDB9898987A7A7A6868686767678080809B9B9BD8D8D8F9F9F9
            CFCFCFA6A6A67F7F7F614A39E4CD8AE7D78AE2CE79DFC973E0CC82B8946D6A6A
            6AFEFEFEFFFFFFFFFFFFFFFFFFB1B1B151515166646388776D8E7A6B7069656C
            6C6CB0B0B09A9A9A616161A7A7A7AAAAAA755844E7D5A4E9DDAFEBDEB6ECE0BD
            EBDDBF776657313131C9C9C9FFFFFFFFFFFFFAFAFA5050506D5542CCA260E4C8
            75E3C975D4AA5E8A70588D8D8D474747B6B6B67171714B4B4B3B36349A7D62D5
            C0A1DECFB6BFB4A17B746B4747462C2C2B424242DCDCDCFFFFFFD9D9D94C3F37
            DBB874E6D57DE3D074E0CB6FE0CC7BBA9A5E5E5E5E868686818181CECECEFCFC
            FC9A9A9A2E2E2D4141405454546C6C6B7474735454542F2F2E3F3F3F515151E5
            E5E5CECECE755C4AE6D49AE8D9A3E6D8A1E8DAABEADDB599804E373736B6B6B6
            D3D3D3F2F2F2F7F7F7E0E0E02C2C2B3838375353526C6C6C7575755E5E5D3636
            35555555939393C0C0C0F5F5F562534CE1C79FEBDFBCEDE2C3EDE1C4BEA46E5B
            5249363636858585CACACAC2C2C2B9B9B9B8B8B84949483232314A4A49666665
            7474746767673F3F3F6D6D6D696969F4F4F4FFFFFFB2B2B15C4736A08460A98E
            6688724D6A66606161614141414A4A4AC2C2C26A6A6A919191A1A1A18383832C
            2C2B4141415E5E5E7272716D6D6D4A4A49525252CECECEFFFFFFFFFFFFFFFFFF
            6161613131314E4E4E6868687777776A6A6A4B4B4B2D2D2DA1A1A17E7E7E9D9D
            9D60606074747430302F3A3A395656556E6E6E727272545454505050F5F5F5FF
            FFFFFFFFFFFFFFFFE8E8E83333334141415E5E5E7474746F6F6F555555333333
            6E6E6E5F5F5F6D6D6DBCBCBC3E3E3E2121203232314D4D4C6767677272725A5A
            5A323232CECECEFFFFFFFFFFFFFFFFFFFFFFFFA9A9A93535355353536E6E6E73
            73735E5E5E3E3E3E2525252323235555556161612F2F2F303030343434434343
            5A5A595C5C5C474747474747BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6363
            634646466363637272726666664646463434343737374B4B4B45454545454545
            45454A4A4A4D4D4D5050505454545D5D5D292929A0A0A0FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFC4C4C43C3C3C5555556D6D6D6464644A4A4A4848484D4D4D5151
            515858585D5D5D5252526262626F6F6F5F5F5F4848481F1F1F040404B1B1B1FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA5E5E5E5353535959595B5B5B606060
            6A6A6A5353535151515454543C3C3C2E2E2E5C5C5C6B6B6B5454543434342121
            21161616F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C24F4F4F6B
            6B6B6F6F6F7272726363634848482E2E2E4D4D4D484848414141DEDEDEFFFFFF
            E6E6E6585858424242393939F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7474741E1E1E3535355656566363637373738F8F8F9D9D9DB8B8B8FE
            FEFEFFFFFFFFFFFFFFFFFFD8D8D8B8B8B8E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9B9B9B3636364E4E4E5D5D5DB7B7B7FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8585855C5C5C
            858585F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Visible = False
          OnClick = sp_BUSCAClick
        end
        object msk_PESQUISA: TMaskEdit
          Left = 164
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
          Text = ''
          Visible = False
          OnKeyPress = msk_PESQUISAKeyPress
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Invent'#225'rio'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 33
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object Label2: TLabel
        Left = 3
        Top = 6
        Width = 66
        Height = 13
        Caption = 'Almoxarifado '
      end
      object lbl_ALMOX: TLabel
        Left = 185
        Top = 9
        Width = 335
        Height = 13
        AutoSize = False
      end
      object lbl_PRODUTO: TLabel
        Left = 184
        Top = 32
        Width = 335
        Height = 13
        AutoSize = False
      end
      object Label3: TLabel
        Left = 3
        Top = 212
        Width = 26
        Height = 13
        Caption = 'Qtd.:'
      end
      object DBText1: TDBText
        Left = 525
        Top = 9
        Width = 85
        Height = 17
        Alignment = taRightJustify
        DataField = 'SLDPROD'
      end
      object Label4: TLabel
        Left = 3
        Top = 239
        Width = 42
        Height = 13
        Caption = 'Dep'#243'sito'
      end
      object Label5: TLabel
        Left = 3
        Top = 185
        Width = 24
        Height = 13
        Caption = 'Lote '
      end
      object lbl_DEPOSITO: TLabel
        Left = 185
        Top = 239
        Width = 335
        Height = 13
        AutoSize = False
      end
      object DBText2: TDBText
        Left = 525
        Top = 32
        Width = 85
        Height = 17
        Alignment = taRightJustify
        DataField = 'SLDPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
      end
      object Label6: TLabel
        Left = 472
        Top = 9
        Width = 33
        Height = 13
        Caption = 'Saldo :'
      end
      object Label7: TLabel
        Left = 472
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Saldo :'
      end
      object Label8: TLabel
        Left = 472
        Top = 185
        Width = 33
        Height = 13
        Caption = 'Saldo :'
      end
      object DBText3: TDBText
        Left = 525
        Top = 185
        Width = 85
        Height = 17
        Alignment = taRightJustify
        DataField = 'SLDLOTE'
        DataSource = zdts_SLDEQLOTE
      end
      object edt_BUSCAPROD: TEdit
        Left = 75
        Top = 30
        Width = 70
        Height = 21
        TabOrder = 2
        OnKeyPress = edt_BUSCAPRODKeyPress
      end
      object btn_BUSCAPROD: TBitBtn
        Left = 151
        Top = 28
        Width = 25
        Height = 25
        Caption = '...'
        TabOrder = 3
        OnClick = btn_BUSCAPRODClick
      end
      object edt_BUSCAALMOX: TEdit
        Left = 75
        Top = 3
        Width = 70
        Height = 21
        TabOrder = 0
        OnKeyPress = edt_BUSCAALMOXKeyPress
      end
      object btn_BUSCAALMOX: TBitBtn
        Left = 151
        Top = 3
        Width = 25
        Height = 25
        Caption = '...'
        TabOrder = 1
        OnClick = btn_BUSCAALMOXClick
      end
      object edt_QTD: TEdit
        Left = 75
        Top = 209
        Width = 70
        Height = 21
        TabOrder = 5
        OnExit = edt_QTDExit
        OnKeyPress = edt_QTDKeyPress
      end
      object dbgrid_LOTE: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 59
        Width = 614
        Height = 120
        DataSource = zdts_SLDEQLOTE
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = dbgrid_LOTECellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODLOTE'
            Title.Caption = 'LOTE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCTOLOTE'
            Title.Caption = 'VENCTO. DO LOTE'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDLOTE'
            Title.Caption = 'SALDO DO LOTE'
            Width = 90
            Visible = True
          end>
      end
      object btn_PROCESSAR: TBitBtn
        Left = 3
        Top = 359
        Width = 55
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
        TabOrder = 8
        OnClick = btn_PROCESSARClick
      end
      object edt_LOTE: TEdit
        Left = 75
        Top = 182
        Width = 70
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
      object edt_BUSCADEPOS: TEdit
        Left = 75
        Top = 236
        Width = 70
        Height = 21
        TabOrder = 6
        OnKeyPress = edt_BUSCADEPOSKeyPress
      end
      object btn_BUSCADEPOS: TBitBtn
        Left = 151
        Top = 234
        Width = 25
        Height = 25
        Caption = '...'
        TabOrder = 7
        OnClick = btn_BUSCADEPOSClick
      end
    end
  end
  object zqry_SLDEQLOTE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from eqlote')
    Params = <>
    Left = 375
    Top = 251
    object zqry_SLDEQLOTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SLDEQLOTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SLDEQLOTECODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_SLDEQLOTECODLOTE: TWideStringField
      FieldName = 'CODLOTE'
      Required = True
    end
    object zqry_SLDEQLOTEVENCTOLOTE: TDateField
      FieldName = 'VENCTOLOTE'
      Required = True
    end
    object zqry_SLDEQLOTESLDLOTE: TFloatField
      FieldName = 'SLDLOTE'
    end
    object zqry_SLDEQLOTESLDRESLOTE: TFloatField
      FieldName = 'SLDRESLOTE'
    end
    object zqry_SLDEQLOTESLDCONSIGLOTE: TFloatField
      FieldName = 'SLDCONSIGLOTE'
    end
    object zqry_SLDEQLOTESLDLIQLOTE: TFloatField
      FieldName = 'SLDLIQLOTE'
    end
    object zqry_SLDEQLOTEQTDPRODLOTE: TFloatField
      FieldName = 'QTDPRODLOTE'
    end
    object zqry_SLDEQLOTEDINILOTE: TDateField
      FieldName = 'DINILOTE'
    end
    object zqry_SLDEQLOTEDIASAVISOLOTE: TSmallintField
      FieldName = 'DIASAVISOLOTE'
      Required = True
    end
    object zqry_SLDEQLOTEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SLDEQLOTEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SLDEQLOTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SLDEQLOTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SLDEQLOTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SLDEQLOTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_SLDEQLOTE: TDataSource
    DataSet = zqry_SLDEQLOTE
    Left = 431
    Top = 251
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 375
    Top = 299
  end
  object zqry_UPTLOTE: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 375
    Top = 347
  end
  object zdts_UPTLOTE: TDataSource
    DataSet = zqry_UPTLOTE
    Left = 431
    Top = 347
  end
end