object frm_DLG_ACERTALOTE: Tfrm_DLG_ACERTALOTE
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Acerto Saldo X Lote'
  ClientHeight = 493
  ClientWidth = 634
  Color = clBtnFace
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
  object pn_TOP: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 628
    Height = 55
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 5
      Width = 89
      Height = 13
      Caption = 'C'#243'digo do Produto'
    end
    object lbl_PRODUTO: TLabel
      Left = 8
      Top = 30
      Width = 593
      Height = 22
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt_CODPROD: TEdit
      Left = 103
      Top = 5
      Width = 90
      Height = 21
      TabOrder = 0
      OnKeyPress = edt_CODPRODKeyPress
    end
    object btn_BUSCAPROD: TBitBtn
      Left = 199
      Top = 5
      Width = 30
      Height = 25
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
      TabOrder = 1
      OnClick = btn_BUSCAPRODClick
    end
  end
  object pn_CENTRAL: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 628
    Height = 250
    Align = alClient
    TabOrder = 1
    object pn_LEFT: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 305
      Height = 242
      Align = alLeft
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 297
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'SALDO PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 106
      end
      object Label5: TLabel
        Left = 4
        Top = 80
        Width = 123
        Height = 13
        Caption = 'Soma SLD Almoxarifado : '
      end
      object Label6: TLabel
        Left = 4
        Top = 106
        Width = 103
        Height = 13
        Caption = 'Soma SLD dos Lotes :'
      end
      object DBEdit1: TDBEdit
        Left = 91
        Top = 26
        Width = 134
        Height = 27
        DataField = 'SLDPROD'
        DataSource = zdts_SLDEQPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btn_GRAVARSALDO: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 200
        Width = 297
        Height = 38
        Align = alBottom
        Caption = 'Gravar Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000120B0000120B00000000000000000000DB9834DB9936
          DA952ED88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F
          23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D88F23D8
          8F23D9932ADB9935DB9834FAF2E6FFFFFFFFFFFFFFFFFFFFFFFFDB9834DA962F
          DEA146F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DE
          B5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3DEB5F3
          DEB5E0A751DA9631DB9834FAF2E6FFFFFFFFFFFFFFFFFFFFFFFFDB9834D78C1D
          EDCA97FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FEFDEDD88F22DB9834FAF2E6FFFFFFFFFFFFFFFFFFFFFFFFDB9834D78C1C
          EFCFA0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FFFEEFD88E20DB9834FDF7ECFFFFFFFFFFFFFFFFFFFFFFFFDB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FCFBEDFDFDEEFDFDEEFDFDEEFDFDEEFDFDEEFDFD
          EEFDFDEEFDFDEEFDFDEEFDFDEEFDFDEEFDFDEEFDFDEEFCFBEDFFFFF0FFFFF0FF
          FFF0FEFDEED88E21DB9834EFDFCAF3EBDFF7EEDFF7EEDFF7EEDFDB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FEFEF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FEFEF0FFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFEFE
          EFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FDFDEEFDFDEFFDFDEFFDFDEFFDFDEFFDFDEFFDFD
          EFFDFDEFFDFDEFFDFDEFFDFDEFFDFDEFFDFDEFFDFDEFFDFDEEFFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EECD9DFFFFF0FFFFF0FFFFF0FBFAECFCFCEDFCFCEDFCFCEDFCFCEDFCFCEDFCFC
          EDFCFCEDFCFCEDFCFCEDFCFCEDFCFCEDFCFCEDFCFCEDFBFAECFFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1C
          EFCFA0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FFFEEFD88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834D78C1D
          EDCB9AFFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFF
          F0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FFFFF0FF
          FFF0FEFDEED88E21DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DA952E
          DFA54DE9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C1
          85E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9C185E9
          C185E3AD5CDA962FDE9B36A15D07A25D00C07A02BD7702BD7702DB9834DB9936
          DA942DD78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E
          20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D78E20D7
          8E20D99229DB9935DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DB9834
          DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB98
          34DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DB9834
          DB9834DE9A35DF9B35DF9B35DF9B36DF9932DE9427DE9325DE9425DE9425DE94
          25DE9425DE9425DE9425DE9425DE9425DE9425DD9427DC9731DB9834DB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DB9934
          DA9734CB8D2EC5882DC6892DC6882BC7903CCCAC77CDB183CDB082CDB082CDB0
          82CDB082CEB183CEB183CEB183CEB183CDB083CFAD79D89D42DC9833DB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DF9A35
          CD8E30B57D28B67D28B67E28B5791EBDA57DC4C3BDC3C2BCC3C2BCC3C2BCC3C2
          BCC4C2BCC0BEB8BDBCB6BDBCB6C0BEB8C4C2BDC3C2BCCDB084DD952CDB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DF9B35
          C88C2EB57D28B98029B98029B87A1CC2B092C6C2B9C5BEB0C5BEB0C5BEB0C5BE
          B0D1CABD8C83715C523C5C523C8C8371D1CABDC4C0B8CAB797DD9529DB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B98029B87A1CC2AF90C6C2B8C5BEB0C5BEB0C5BEB0C5BE
          B0D1CABD8B82705A503A5A503A8B8270D1CABDC4C0B7CAB695DD9529DB9834DB
          9834DB9834DB9834DE9B36A15D07A25D00C07A02BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B98029B87A1CC2AF90C6C2B8C5BEB0C5BEB0C5BEB0C5BE
          B0D1CABD8B82705A503A5A503A8B8270D1CABDC4C0B7CAB695DD9529DB9834DB
          9834DB9834DB9834E09D38A15D07A25D00C07A02BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B98029B87A1CC2AF90C6C2B8C5BEB0C5BEB0C5BEB0C5BE
          B0D1CABD8B82705A503A5A503A8B8270D1CABDC4C0B7CAB695DD9529DB9834DB
          9834DC9833E19C35C27E1D985401A45F01C07A02BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B98029B87A1CC2AF90C6C2B8C5BEB0C5BEB0C5BEB0C5BE
          B0D2CBBE857B694E442D4E442D857B69D2CBBEC4C0B7CAB695DD9529DB9834DC
          9933E09C37C181259A55009D5900B77101BE7802BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B98029B87A1CC2AF90C6C2B8C5BEB0C5BEB0C5BEB0C5BE
          B0CCC5B7A59D8D8B82708B8270A59D8DCCC5B7C4C0B7CAB695DD9529DB9834E0
          992FBC9354946E3C9D5300B77102BE7802BD7702BD7702BD7702DB9834DF9B35
          C98C2EB57D28B98029B9812AB97C1DC4B396C8C7C0C7C2B8C7C2B8C7C2B7C7C0
          B3C5BFB1CEC7BAD3CDC0D3CDC0CEC7BAC5BEB1C9C5BDD0BC9AE59A2AE29A31B9
          8C489690829F7C45B76A00C07902BD7702BD7702BD7702BD7702FAF2E6FBF2E6
          F8F1E5F6EFE4F6EFE4DAC09F9C59049E60139E62189E62179E62179E6319A092
          78A0957EA0947DA0947DA0947DA0947DA69A82575143453E3041341C867455A0
          947B99907FAF8239C17600BD7702BD7702BD7702BD7702BD7803FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE4D0B5A35E00A35D00A35C00A35C00A35C00A35D00A091
          769F957E9F947D9F947D9F947D9F947DA69A824B4435362F242D29207C7463A9
          9C83A69B88B69252BF7200BD7702BD7702BD7702BF7B0AE4C797FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEBD5B0C07A02C07A02C07A02C07A02C07A02C07B04B1A4
          8BB0A693B0A692B0A692B0A692B0A692B6AD99595140433B2B3B33248B8370B9
          AF9CADABA3B5904FBF7200BD7702BD7702BF7B09E8D1A9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEAD4B0BD7702BD7702BD7702BD7702BD7702BD7804AFA2
          89AEA491AEA490AEA490AEA490AEA490B0A692988E7B928976908774A59B87B0
          A692ACA9A0B5904FBF7200BD7702C07E0FE7CEA5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFEAD4B0BD7702BD7702BD7702BD7702BD7702BD7804AFA2
          89AEA491AEA490AEA490AEA490AEA490ADA38FB5AB96B6AC98B7AD98B1A793AD
          A38FACA9A0B5904FBF7200BE7906E5CA9BFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 1
        OnClick = btn_GRAVARSALDOClick
      end
      object DBEdit2: TDBEdit
        Left = 133
        Top = 77
        Width = 92
        Height = 21
        DataField = 'SLDTOTAL'
        DataSource = zdts_SOMAALMOX
        Enabled = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 133
        Top = 104
        Width = 92
        Height = 21
        DataField = 'SLDTOTAL'
        DataSource = zdts_SOMALOTE
        Enabled = False
        TabOrder = 3
      end
    end
    object pn_RIGHT: TPanel
      AlignWithMargins = True
      Left = 319
      Top = 4
      Width = 305
      Height = 242
      Align = alRight
      TabOrder = 1
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 297
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'SALDO ALMOXARIFADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 159
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 26
        Width = 297
        Height = 168
        Align = alClient
        DataSource = zdts_SLDEQSLD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODALMOX'
            Title.Caption = 'ALMOX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDPROD'
            Title.Caption = 'SALDO'
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 4
        Top = 200
        Width = 297
        Height = 38
        DataSource = zdts_SLDEQSLD
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alBottom
        TabOrder = 1
        OnClick = DBNavigator1Click
      end
    end
  end
  object pn_BOTTON: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 320
    Width = 628
    Height = 170
    Align = alBottom
    TabOrder = 2
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 620
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'SALDO DOS LOTES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 115
    end
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 26
      Width = 620
      Height = 96
      Align = alTop
      DataSource = zdts_SLDEQLOTE
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODLOTE'
          Title.Caption = 'LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCTOLOTE'
          Title.Caption = 'VENCTO.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLDLOTE'
          Title.Caption = 'SALDO LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SLDLIQLOTE'
          Title.Caption = 'SALDO LIQ'
          Visible = True
        end>
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 128
      Width = 620
      Height = 38
      DataSource = zdts_SLDEQLOTE
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alBottom
      TabOrder = 1
      OnClick = DBNavigator2Click
    end
  end
  object zqry_SLDEQPROD: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'select * from eqproduto')
    Params = <>
    Left = 23
    Top = 91
    object zqry_SLDEQPRODCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SLDEQPRODCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_SLDEQPRODDESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_SLDEQPRODREFPROD: TWideStringField
      FieldName = 'REFPROD'
      Required = True
    end
    object sld: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_SLDEQPRODCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_SLDEQPRODCODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_SLDEQPRODCODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_SLDEQPRODCODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALUD: TSmallintField
      FieldName = 'CODFILIALUD'
      Required = True
    end
    object zqry_SLDEQPRODCODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_SLDEQPRODCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALFC: TSmallintField
      FieldName = 'CODFILIALFC'
      Required = True
    end
    object zqry_SLDEQPRODCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_SLDEQPRODCODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
      Required = True
    end
    object zqry_SLDEQPRODCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_SLDEQPRODDESCAUXPROD: TWideStringField
      FieldName = 'DESCAUXPROD'
      Size = 40
    end
    object zqry_SLDEQPRODTIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Required = True
      Size = 2
    end
    object zqry_SLDEQPRODCVPROD: TWideStringField
      FieldName = 'CVPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODCODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
      Required = True
    end
    object zqry_SLDEQPRODCODFILIALGP: TSmallintField
      FieldName = 'CODFILIALGP'
      Required = True
    end
    object zqry_SLDEQPRODCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_SLDEQPRODCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_SLDEQPRODCLOTEPROD: TWideStringField
      FieldName = 'CLOTEPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODSERIEPROD: TWideStringField
      FieldName = 'SERIEPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODCODFABPROD: TWideStringField
      FieldName = 'CODFABPROD'
      Size = 15
    end
    object zqry_SLDEQPRODCOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_SLDEQPRODPESOLIQPROD: TFloatField
      FieldName = 'PESOLIQPROD'
    end
    object zqry_SLDEQPRODPESOBRUTPROD: TFloatField
      FieldName = 'PESOBRUTPROD'
    end
    object zqry_SLDEQPRODQTDMINPROD: TFloatField
      FieldName = 'QTDMINPROD'
    end
    object zqry_SLDEQPRODQTDMAXPROD: TFloatField
      FieldName = 'QTDMAXPROD'
    end
    object zqry_SLDEQPRODDTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_SLDEQPRODCUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
    end
    object zqry_SLDEQPRODCUSTOPEPSPROD: TFloatField
      FieldName = 'CUSTOPEPSPROD'
    end
    object zqry_SLDEQPRODCUSTOINFOPROD: TFloatField
      FieldName = 'CUSTOINFOPROD'
    end
    object zqry_SLDEQPRODPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
    end
    object zqry_SLDEQPRODPRECOCOMISPROD: TFloatField
      FieldName = 'PRECOCOMISPROD'
    end
    object zqry_SLDEQPRODSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_SLDEQPRODSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
    end
    object zqry_SLDEQPRODSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
    end
    object zqry_SLDEQPRODSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
    end
    object zqry_SLDEQPRODATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_SLDEQPRODDTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_SLDEQPRODQTDULTCPPROD: TFloatField
      FieldName = 'QTDULTCPPROD'
    end
    object zqry_SLDEQPRODDESCCOMPPROD: TWideStringField
      FieldName = 'DESCCOMPPROD'
      Size = 500
    end
    object zqry_SLDEQPRODOBSPROD: TWideStringField
      FieldName = 'OBSPROD'
      Size = 10000
    end
    object zqry_SLDEQPRODVERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_SLDEQPRODLOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
      Size = 15
    end
    object zqry_SLDEQPRODRMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODCODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_SLDEQPRODCODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_SLDEQPRODCODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_SLDEQPRODCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_SLDEQPRODCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_SLDEQPRODANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_SLDEQPRODCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_SLDEQPRODUSARECEITAPROD: TWideStringField
      FieldName = 'USARECEITAPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODUSATELAADICPDV: TWideStringField
      FieldName = 'USATELAADICPDV'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODVLRDENSIDADE: TFloatField
      FieldName = 'VLRDENSIDADE'
    end
    object zqry_SLDEQPRODVLRCONCENT: TFloatField
      FieldName = 'VLRCONCENT'
    end
    object zqry_SLDEQPRODCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object zqry_SLDEQPRODLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object zqry_SLDEQPRODESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object zqry_SLDEQPRODGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Required = True
    end
    object zqry_SLDEQPRODCODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_SLDEQPRODCUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
    end
    object zqry_SLDEQPRODCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_SLDEQPRODCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_SLDEQPRODCODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_SLDEQPRODCODEMPTC: TSmallintField
      FieldName = 'CODEMPTC'
    end
    object zqry_SLDEQPRODCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_SLDEQPRODCODTPCHAMADO: TIntegerField
      FieldName = 'CODTPCHAMADO'
    end
    object zqry_SLDEQPRODQTDHORASSERV: TFloatField
      FieldName = 'QTDHORASSERV'
    end
    object zqry_SLDEQPRODNRODIASVALID: TSmallintField
      FieldName = 'NRODIASVALID'
    end
    object zqry_SLDEQPRODDESCCLI: TWideStringField
      FieldName = 'DESCCLI'
      Size = 1
    end
    object zqry_SLDEQPRODQTDPORPLANO: TSmallintField
      FieldName = 'QTDPORPLANO'
    end
    object zqry_SLDEQPRODNROPLANOS: TSmallintField
      FieldName = 'NROPLANOS'
    end
    object zqry_SLDEQPRODCERTFSC: TWideStringField
      FieldName = 'CERTFSC'
      Size = 1
    end
    object zqry_SLDEQPRODFATORFSC: TFloatField
      FieldName = 'FATORFSC'
    end
    object zqry_SLDEQPRODCODEMPOG: TIntegerField
      FieldName = 'CODEMPOG'
    end
    object zqry_SLDEQPRODCODFILIALOG: TSmallintField
      FieldName = 'CODFILIALOG'
    end
    object zqry_SLDEQPRODCODPRODOG: TIntegerField
      FieldName = 'CODPRODOG'
    end
    object zqry_SLDEQPRODCODEMPMG: TIntegerField
      FieldName = 'CODEMPMG'
    end
    object zqry_SLDEQPRODCODFILIALMG: TSmallintField
      FieldName = 'CODFILIALMG'
    end
    object zqry_SLDEQPRODCODMODG: TIntegerField
      FieldName = 'CODMODG'
    end
    object zqry_SLDEQPRODPRAZOREPO: TIntegerField
      FieldName = 'PRAZOREPO'
    end
    object zqry_SLDEQPRODMEDIAVENDA: TFloatField
      FieldName = 'MEDIAVENDA'
    end
    object zqry_SLDEQPRODEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_SLDEQPRODDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SLDEQPRODHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SLDEQPRODIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SLDEQPRODDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SLDEQPRODHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SLDEQPRODIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SLDEQPRODFINAME: TWideStringField
      FieldName = 'FINAME'
      Size = 10
    end
    object zqry_SLDEQPRODMDA: TWideStringField
      FieldName = 'MDA'
      Size = 10
    end
    object zqry_SLDEQPRODPTSFIDELIDADE: TIntegerField
      FieldName = 'PTSFIDELIDADE'
    end
    object zqry_SLDEQPRODCURVA: TWideStringField
      FieldName = 'CURVA'
      Size = 1
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA'
      Size = 10
    end
    object zqry_SLDEQPRODPROD_ORIGEM: TWideStringField
      FieldName = 'PROD_ORIGEM'
      Size = 10
    end
    object zqry_SLDEQPRODPROD_IAT: TWideStringField
      FieldName = 'PROD_IAT'
      Size = 3
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_OUTRO_EST'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_ENTRADA'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_SAIDA'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_PIS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_PIS'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_COFINS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_COFINS'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_SITRIBUTARIA_ISSQN: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_ISSQN'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_ICMS: TWideStringField
      FieldName = 'PROD_ICMS'
      Size = 11
    end
    object zqry_SLDEQPRODPROD_COD_SERVICO_ISSQN: TWideStringField
      FieldName = 'PROD_COD_SERVICO_ISSQN'
      Size = 7
    end
    object zqry_SLDEQPRODPROD_BLOQUEIO: TWideStringField
      FieldName = 'PROD_BLOQUEIO'
      Size = 3
    end
    object zqry_SLDEQPRODPROD_USA_PROMO: TWideStringField
      FieldName = 'PROD_USA_PROMO'
      Size = 3
    end
    object zqry_SLDEQPRODPROD_PBALANCA: TWideStringField
      FieldName = 'PROD_PBALANCA'
      Size = 3
    end
    object zqry_SLDEQPRODPROD_ATIVO: TWideStringField
      FieldName = 'PROD_ATIVO'
      Size = 3
    end
    object zqry_SLDEQPRODCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 10
    end
    object zqry_SLDEQPRODMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object zqry_SLDEQPRODICRE: TWideStringField
      FieldName = 'ICRE'
      Size = 15
    end
    object zqry_SLDEQPRODCEST: TWideStringField
      FieldName = 'CEST'
      Size = 7
    end
    object zqry_SLDEQPRODPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object zqry_SLDEQPRODCODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_SLDEQPRODINTERVSEGUR: TIntegerField
      FieldName = 'INTERVSEGUR'
    end
    object zqry_SLDEQPRODCLASSETOXICO: TWideStringField
      FieldName = 'CLASSETOXICO'
      Size = 2
    end
    object zqry_SLDEQPRODGRUPOQUIMICO: TWideStringField
      FieldName = 'GRUPOQUIMICO'
      Size = 50
    end
    object zqry_SLDEQPRODNOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_SLDEQPRODPRINCIPIOATIVO: TWideStringField
      FieldName = 'PRINCIPIOATIVO'
      Size = 50
    end
    object zqry_SLDEQPRODCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 1
    end
    object zqry_SLDEQPRODCLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 50
    end
    object zqry_SLDEQPRODCONCENTRACAO: TWideStringField
      FieldName = 'CONCENTRACAO'
      Size = 15
    end
    object zqry_SLDEQPRODFORMULACAO: TWideStringField
      FieldName = 'FORMULACAO'
      Size = 50
    end
    object zqry_SLDEQPRODANTIDOTO: TWideStringField
      FieldName = 'ANTIDOTO'
      Size = 10000
    end
  end
  object zdts_SLDEQPROD: TDataSource
    DataSet = zqry_SLDEQPROD
    Left = 71
    Top = 91
  end
  object zqry_SLDEQSLD: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'SELECT * FROM EQSALDOPROD')
    Params = <>
    Left = 459
    Top = 216
    object zqry_SLDEQSLDCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SLDEQSLDCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SLDEQSLDCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_SLDEQSLDCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_SLDEQSLDCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_SLDEQSLDCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_SLDEQSLDSLDPROD: TFloatField
      FieldName = 'SLDPROD'
      Required = True
    end
    object zqry_SLDEQSLDSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
      Required = True
    end
    object zqry_SLDEQSLDSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
      Required = True
    end
    object zqry_SLDEQSLDSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
      Required = True
    end
    object zqry_SLDEQSLDDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SLDEQSLDHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SLDEQSLDIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SLDEQSLDDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SLDEQSLDHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SLDEQSLDIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_SLDEQSLD: TDataSource
    DataSet = zqry_SLDEQSLD
    Left = 531
    Top = 216
  end
  object zqry_SLDEQLOTE: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'SELECT * FROM EQLOTE')
    Params = <>
    Left = 331
    Top = 382
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
    Left = 387
    Top = 382
  end
  object zqry_SOMAALMOX: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'select sum(sldprod) as sldtotal from eqsaldoprod')
    Params = <>
    Left = 39
    Top = 203
    object zqry_SOMAALMOXSLDTOTAL: TExtendedField
      FieldName = 'SLDTOTAL'
      ReadOnly = True
      Precision = 19
    end
  end
  object zdts_SOMAALMOX: TDataSource
    DataSet = zqry_SOMAALMOX
    Left = 103
    Top = 203
  end
  object zqry_SOMALOTE: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'SELECT SUM (SLDLOTE) AS SLDTOTAL FROM EQLOTE')
    Params = <>
    Left = 191
    Top = 203
    object zqry_SOMALOTESLDTOTAL: TExtendedField
      FieldName = 'SLDTOTAL'
      ReadOnly = True
      Precision = 19
    end
  end
  object zdts_SOMALOTE: TDataSource
    DataSet = zqry_SOMALOTE
    Left = 247
    Top = 203
  end
end