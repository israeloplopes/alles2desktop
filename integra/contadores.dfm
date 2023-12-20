object frm_CONTADORES: Tfrm_CONTADORES
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ESPELHO DO MOVIMENTO'
  ClientHeight = 532
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 532
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Mais Vendidos'
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 620
        Height = 350
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
            FieldName = 'CODPROD'
            Title.Caption = 'C'#211'D. PROD.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODBARPROD'
            Title.Caption = 'C'#211'D. BARRAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPROD'
            Title.Caption = 'DESCRICAO'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDITVENDA'
            Title.Caption = 'QTD.VENDIDA'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipos de Pagamento'
      ImageIndex = 1
      object Label4: TLabel
        Left = 3
        Top = 296
        Width = 74
        Height = 13
        Caption = 'TOTAIS PAGTO'
        FocusControl = DBEdit4
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 620
        Height = 278
        Align = alTop
        DataSource = zdts_SOMAPAGTO
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCCOB'
            Title.Caption = 'DESC. COB.'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOCOB'
            Title.Caption = 'TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPONFE'
            Title.Caption = 'TIPO NFE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object DBEdit4: TDBEdit
        Left = 159
        Top = 293
        Width = 134
        Height = 21
        DataField = 'VALORPAGTO'
        DataSource = zdts_SOMAPAGTO
        ReadOnly = True
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'P-N-E'
      ImageIndex = 2
      object Label5: TLabel
        Left = 3
        Top = 360
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label6: TLabel
        Left = 99
        Top = 360
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 620
        Height = 350
        Align = alTop
        DataSource = dm_DADOS.zdts_VDVENDA
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODVENDA'
            Title.Caption = 'C'#211'D. VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_NOMECLIENTE'
            Title.Caption = 'NOME CLIENTE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLI'
            Title.Caption = 'CLIENTE AVULSO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRODVENDA'
            Title.Caption = 'VLR. VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRLIQVENDA'
            Title.Caption = 'VLR. LIQ. VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODVEND'
            Title.Caption = 'C'#211'D. VENDEDOR'
            Visible = True
          end>
      end
      object edt_DTINICIAL: TEdit
        Left = 3
        Top = 379
        Width = 90
        Height = 21
        TabOrder = 1
        OnKeyPress = edt_DTINICIALKeyPress
      end
      object edt_DTFINAL: TEdit
        Left = 99
        Top = 379
        Width = 90
        Height = 21
        TabOrder = 2
        OnKeyPress = edt_DTFINALKeyPress
      end
      object btn_BUSCA: TBitBtn
        Left = 195
        Top = 377
        Width = 28
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
        OnClick = btn_BUSCAClick
      end
      object btn_IMPRIME: TBitBtn
        Left = 229
        Top = 377
        Width = 28
        Height = 25
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
        TabOrder = 4
        OnClick = btn_IMPRIMEClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'D-F-E'
      ImageIndex = 3
      object Label1: TLabel
        Left = 3
        Top = 271
        Width = 150
        Height = 13
        Caption = 'Total Geral de Notas Emitidas : '
      end
      object Label2: TLabel
        Left = 3
        Top = 304
        Width = 141
        Height = 13
        Caption = 'Total Geral de NFe Emitidas : '
      end
      object Label3: TLabel
        Left = 3
        Top = 336
        Width = 148
        Height = 13
        Caption = 'Total Geral de NFCe Emitidas : '
      end
      object DBGrid4: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 620
        Height = 262
        Align = alTop
        DataSource = dm_DADOS.zdts_SGNF
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit1: TDBEdit
        Left = 159
        Top = 271
        Width = 114
        Height = 21
        DataField = 'TOTALNOTAS'
        DataSource = zdts_SOMATOTAL
        Enabled = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 159
        Top = 301
        Width = 114
        Height = 21
        DataField = 'TOTALNFE'
        DataSource = zdts_SOMANFE
        Enabled = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 159
        Top = 333
        Width = 114
        Height = 21
        DataField = 'TOTALNFCE'
        DataSource = zdts_SOMANFCE
        Enabled = False
        TabOrder = 3
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Finalizadores'
      ImageIndex = 4
      OnEnter = TabSheet5Enter
      object Label7: TLabel
        Left = 3
        Top = 319
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label8: TLabel
        Left = 3
        Top = 349
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object Label9: TLabel
        Left = 158
        Top = 319
        Width = 51
        Height = 13
        Caption = 'Valor Total'
      end
      object lbl_FINALIZADOR1: TLabel
        Left = 158
        Top = 349
        Width = 50
        Height = 13
        Caption = 'DINHEIRO'
      end
      object vlr_FINALIZADOR1: TLabel
        Left = 239
        Top = 349
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'vlr_FINALIZADOR1'
        Visible = False
      end
      object lbl_FINALIZADOR2: TLabel
        Left = 158
        Top = 368
        Width = 41
        Height = 13
        Caption = 'CHEQUE'
      end
      object vlr_FINALIZADOR2: TLabel
        Left = 237
        Top = 368
        Width = 92
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'vlr_FINALIZADOR2'
        Visible = False
      end
      object vlr_FINALIZADOR3: TLabel
        Left = 239
        Top = 387
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'vlr_FINALIZADOR3'
        Visible = False
      end
      object vlr_FINALIZADOR4: TLabel
        Left = 239
        Top = 406
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'vlr_FINALIZADOR3'
        Visible = False
      end
      object vlr_FINALIZADOR5: TLabel
        Left = 239
        Top = 425
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'vlr_FINALIZADOR3'
        Visible = False
      end
      object lbl_FINALIZADOR3: TLabel
        Left = 158
        Top = 387
        Width = 90
        Height = 13
        Caption = 'CARTAO CREDITO'
      end
      object lbl_FINALIZADOR4: TLabel
        Left = 158
        Top = 406
        Width = 82
        Height = 13
        Caption = 'CARTAO DEBITO'
      end
      object lbl_FINALIZADOR5: TLabel
        Left = 158
        Top = 425
        Width = 73
        Height = 13
        Caption = 'CREDITO LOJA'
      end
      object DBGrid5: TDBGrid
        Left = 3
        Top = 0
        Width = 620
        Height = 313
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOCOB'
            Title.Caption = 'TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCCOB'
            Title.Caption = 'DESCRITIVO'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end>
      end
      object msk_INICIO: TMaskEdit
        Left = 62
        Top = 319
        Width = 90
        Height = 21
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object msk_FIM: TMaskEdit
        Left = 62
        Top = 346
        Width = 90
        Height = 21
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object btn_BUSCAR: TBitBtn
        Left = 62
        Top = 373
        Width = 90
        Height = 25
        Caption = 'Buscar'
        TabOrder = 3
        OnClick = btn_BUSCARClick
      end
      object edt_SOMA: TEdit
        Left = 239
        Top = 319
        Width = 90
        Height = 21
        Alignment = taRightJustify
        TabOrder = 4
      end
    end
  end
  object zqry_SOMATOTAL: TZQuery
    SQL.Strings = (
      'select sum(valor) as totalnotas from sgnf')
    Params = <>
    Left = 364
    Top = 304
    object zqry_SOMATOTALTOTALNOTAS: TFloatField
      FieldName = 'TOTALNOTAS'
      ReadOnly = True
      currency = True
    end
  end
  object zdts_SOMATOTAL: TDataSource
    DataSet = zqry_SOMATOTAL
    Left = 444
    Top = 304
  end
  object zqry_SOMANFE: TZQuery
    SQL.Strings = (
      'select sum(valor) as totalnfe from sgnf')
    Params = <>
    Left = 364
    Top = 352
    object zqry_SOMANFETOTALNFE: TFloatField
      FieldName = 'TOTALNFE'
      ReadOnly = True
      currency = True
    end
  end
  object zdts_SOMANFE: TDataSource
    DataSet = zqry_SOMANFE
    Left = 444
    Top = 352
  end
  object zqry_SOMANFCE: TZQuery
    SQL.Strings = (
      'select sum(valor) as totalnfce from sgnf')
    Params = <>
    Left = 364
    Top = 400
    object zqry_SOMANFCETOTALNFCE: TFloatField
      FieldName = 'TOTALNFCE'
      ReadOnly = True
      currency = True
    end
  end
  object zdts_SOMANFCE: TDataSource
    DataSet = zqry_SOMANFCE
    Left = 444
    Top = 400
  end
  object zqry_SOMAPAGTO: TZQuery
    SQL.Strings = (
      'select sum(valor) as valorpagto from tipospagto')
    Params = <>
    Left = 364
    Top = 256
    object zqry_SOMAPAGTOVALORPAGTO: TExtendedField
      FieldName = 'VALORPAGTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object zdts_SOMAPAGTO: TDataSource
    DataSet = zqry_SOMAPAGTO
    Left = 444
    Top = 256
  end
  object zqry_SOMAFINALIZADOR: TZQuery
    SQL.Strings = (
      'select sum(valor) as vlrtotal from tipospagto')
    Params = <>
    Left = 364
    Top = 208
    object zqry_SOMAFINALIZADORVLRTOTAL: TExtendedField
      FieldName = 'VLRTOTAL'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object zdts_SOMAFINALIZADOR: TDataSource
    DataSet = zqry_SOMAFINALIZADOR
    Left = 444
    Top = 208
  end
end