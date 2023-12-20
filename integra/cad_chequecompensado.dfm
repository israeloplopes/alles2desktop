object frm_CAD_CHEQUECOMPENSADO: Tfrm_CAD_CHEQUECOMPENSADO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'INTEGRA - CHEQUE COMPENSADO'
  ClientHeight = 331
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gb_IDENTIFICACHEQUE: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 628
    Height = 156
    Align = alTop
    Caption = 'Identifica Cheque'
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 20
      Width = 48
      Height = 14
      Caption = 'Cta. Dep.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 86
      Top = 20
      Width = 60
      Height = 14
      Caption = 'N.'#186' Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 162
      Top = 20
      Width = 64
      Height = 14
      Caption = 'Vlr. Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 10
      Top = 72
      Width = 70
      Height = 17
      DataField = 'SEQCHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object Label4: TLabel
      Left = 10
      Top = 59
      Width = 56
      Height = 14
      Caption = 'Seq. Cheq'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 86
      Top = 59
      Width = 44
      Height = 14
      Caption = 'Ag'#234'ncia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 88
      Width = 84
      Height = 14
      Caption = 'Nome Emitente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 86
      Top = 72
      Width = 65
      Height = 17
      DataField = 'AGENCIACHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object DBText3: TDBText
      Left = 10
      Top = 102
      Width = 270
      Height = 17
      DataField = 'NOMEEMITCHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object DBText4: TDBText
      Left = 290
      Top = 102
      Width = 270
      Height = 17
      DataField = 'NOMEFAVCHEQ'
    end
    object Label7: TLabel
      Left = 290
      Top = 88
      Width = 95
      Height = 14
      Caption = 'Nome Favorecido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 120
      Width = 67
      Height = 14
      Caption = 'Dt. Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 86
      Top = 120
      Width = 64
      Height = 14
      Caption = 'Dt. Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 162
      Top = 120
      Width = 58
      Height = 14
      Caption = 'Dt. Vencto.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 514
      Top = 20
      Width = 91
      Height = 14
      Caption = 'Valor do Cheque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 480
      Top = 39
      Width = 119
      Height = 17
      Alignment = taRightJustify
      DataField = 'VLRCHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 10
      Top = 134
      Width = 65
      Height = 17
      DataField = 'DTINS'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object DBText7: TDBText
      Left = 86
      Top = 134
      Width = 65
      Height = 17
      DataField = 'DTEMITCHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object DBText8: TDBText
      Left = 162
      Top = 134
      Width = 65
      Height = 17
      DataField = 'DTVENCTOCHEQ'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object Label12: TLabel
      Left = 290
      Top = 120
      Width = 79
      Height = 14
      Caption = 'C'#243'd. de Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 290
      Top = 134
      Width = 65
      Height = 17
      DataField = 'CODVENDA'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object Label13: TLabel
      Left = 408
      Top = 120
      Width = 67
      Height = 14
      Caption = 'C'#243'd. Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 410
      Top = 134
      Width = 65
      Height = 17
      DataField = 'CODCLI'
      DataSource = dm_DADOS.zdts_FNCHEQUE
    end
    object edt_BUSCACONTA: TEdit
      Left = 10
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 0
    end
    object edt_BUSCACHEQUE: TEdit
      Left = 86
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 1
    end
    object edt_BUSCAVALOR: TEdit
      Left = 162
      Top = 32
      Width = 70
      Height = 21
      TabOrder = 2
    end
    object btn_BUSCAR: TBitBtn
      Left = 238
      Top = 30
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
      TabOrder = 3
      OnClick = btn_BUSCARClick
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 165
    Width = 628
    Height = 140
    Align = alTop
    Caption = 'Dados do Cheque Compensado'
    TabOrder = 1
    object db_CONTA: TDBLookupComboBox
      Left = 280
      Top = 35
      Width = 120
      Height = 21
      KeyField = 'NUMCONTA'
      ListField = 'NUMCONTA'
      ListSource = dm_DADOS.zdts_FNCONTA
      TabOrder = 0
      Visible = False
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 618
      Height = 117
      Align = alClient
      DataSource = dm_DADOS.zdts_FNCHEQUE
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CONTACHEQ'
          Title.Caption = 'CONTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTCOMPCHEQ'
          Title.Caption = 'DT. COMP.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITCHEQ'
          Title.Caption = 'SITUA'#199#195'O'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTALT'
          Title.Caption = 'DT. LANC.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HALT'
          Title.Caption = 'HR. LANC.'
          Visible = True
        end>
    end
  end
  object zqry_SGINICONSP: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 491
    Top = 91
  end
end
