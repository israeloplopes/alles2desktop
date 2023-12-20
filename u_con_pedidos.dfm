object frm_CON_PEDIDOS: Tfrm_CON_PEDIDOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PEDIDOS'
  ClientHeight = 766
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_TOP: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 60
    Align = alTop
    Color = 10772493
    ParentBackground = False
    TabOrder = 0
    object LBL_NUMNF: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 28
      Width = 80
      Height = 28
      Align = alLeft
      AutoSize = False
      Caption = '999999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 4
      ExplicitHeight = 52
    end
    object Label7: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 949
      Height = 18
      Align = alTop
      Caption = 'N.'#186' NF        N.'#186' Itens     N.'#186' Volumes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 253
    end
    object lbl_ITENS_LINHA: TLabel
      AlignWithMargins = True
      Left = 90
      Top = 28
      Width = 80
      Height = 28
      Align = alLeft
      AutoSize = False
      Caption = '999999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 87
      ExplicitTop = 25
      ExplicitHeight = 34
    end
    object lbl_VOLUMES: TLabel
      AlignWithMargins = True
      Left = 176
      Top = 28
      Width = 80
      Height = 28
      Align = alLeft
      AutoSize = False
      Caption = '999999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 262
      ExplicitTop = 30
    end
  end
  object pn_BOTTON: TPanel
    Left = 0
    Top = 706
    Width = 957
    Height = 60
    Align = alBottom
    Color = 16763541
    ParentBackground = False
    TabOrder = 1
  end
  object pn_DIR: TPanel
    AlignWithMargins = True
    Left = 754
    Top = 63
    Width = 200
    Height = 640
    Align = alRight
    Color = 16772829
    ParentBackground = False
    TabOrder = 2
  end
  object pn_CENTRO: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 63
    Width = 745
    Height = 640
    Align = alClient
    TabOrder = 3
    object pg_PEDIDOS: TPageControl
      Left = 1
      Top = 1
      Width = 743
      Height = 638
      ActivePage = ts_VENDAS
      Align = alClient
      TabOrder = 0
      OnDrawTab = pg_PEDIDOSDrawTab
      object ts_VENDAS: TTabSheet
        Caption = 'PEDIDOS DE SAIDA'
        object lbl_chavenfce: TLabel
          Left = 465
          Top = 674
          Width = 209
          Height = 13
          AutoSize = False
          Visible = False
        end
        object lbl_SITUACAO: TLabel
          Left = 462
          Top = 693
          Width = 212
          Height = 13
          AutoSize = False
        end
        object rg_SAIDAS: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 729
          Height = 32
          Align = alTop
          Caption = 'TIPO DE BUSCA'
          Color = clMoneyGreen
          Columns = 5
          Items.Strings = (
            'Todos por C'#243'digo'
            'Por Datas'
            'Por Pedido'
            'De Devolu'#231#227'o'
            'Por Movimento')
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
        end
        object gb_PARAM_SAIDAS: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 729
          Height = 35
          Align = alTop
          Caption = 'PAR'#194'METROS'
          TabOrder = 1
          object lbl_PESQUISA: TLabel
            Left = 16
            Top = 15
            Width = 150
            Height = 13
            AutoSize = False
          end
          object lbl_ATE: TLabel
            Left = 280
            Top = 15
            Width = 40
            Height = 13
            AutoSize = False
          end
          object sp_BUSCA: TSpeedButton
            Left = 432
            Top = 10
            Width = 25
            Height = 25
            Hint = 
              'Clique Aqui para Fazer a Busca | Selecione o Pedido clicando na ' +
              'linha abaixo | 1'
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
          end
          object msk_PESQUISA1: TMaskEdit
            Left = 172
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 0
            Text = ''
            Visible = False
          end
          object msk_PESQUISA2: TMaskEdit
            Left = 326
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 1
            Text = ''
            Visible = False
          end
          object btn_BUSCASAIDA_DATA: TBitBtn
            Left = 484
            Top = 9
            Width = 75
            Height = 25
            Caption = 'btn_BUSCASAIDA_DATA'
            TabOrder = 2
            Visible = False
          end
        end
        object gb_TRANSPORTE_SAIDAS: TGroupBox
          Left = 3
          Top = 374
          Width = 518
          Height = 99
          Caption = 'TRANSPORTE'
          TabOrder = 2
          object Label59: TLabel
            Left = 3
            Top = 16
            Width = 48
            Height = 13
            Caption = 'CPF/CNPJ'
          end
          object Label60: TLabel
            Left = 95
            Top = 16
            Width = 139
            Height = 13
            Caption = 'Raz'#227'o Social/Nome Completo'
          end
          object Label61: TLabel
            Left = 338
            Top = 16
            Width = 10
            Height = 13
            Caption = 'IE'
          end
          object Label62: TLabel
            Left = 5
            Top = 52
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object Label63: TLabel
            Left = 245
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label64: TLabel
            Left = 363
            Top = 52
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object Label65: TLabel
            Left = 425
            Top = 17
            Width = 26
            Height = 13
            Caption = 'ANTT'
          end
          object Label66: TLabel
            Left = 401
            Top = 52
            Width = 25
            Height = 13
            Caption = 'Placa'
          end
          object Label67: TLabel
            Left = 450
            Top = 52
            Width = 41
            Height = 13
            Caption = 'UF Placa'
          end
          object edt_CPFCNPJ_TRANSP: TEdit
            Left = 3
            Top = 30
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object edt_NOMERAZ_TRANSP: TEdit
            Left = 95
            Top = 30
            Width = 240
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object edt_IE_TRANSP: TEdit
            Left = 338
            Top = 30
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object edt_END_TRANSP: TEdit
            Left = 3
            Top = 65
            Width = 240
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object edt_CID_TRANSP: TEdit
            Left = 245
            Top = 65
            Width = 115
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object edt_UF_TRANSP: TEdit
            Left = 362
            Top = 65
            Width = 35
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
          end
          object edt_ANTT_TRANSP: TEdit
            Left = 425
            Top = 30
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edt_PLACA_TRANSP: TEdit
            Left = 400
            Top = 65
            Width = 55
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object edt_PLACAUF_TRANSP: TEdit
            Left = 457
            Top = 65
            Width = 36
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 8
          end
        end
        object gb_VOLUME_SAIDAS: TGroupBox
          Left = 527
          Top = 285
          Width = 205
          Height = 122
          Caption = 'VOLUMES E PESO'
          TabOrder = 3
          object Label52: TLabel
            Left = 5
            Top = 16
            Width = 39
            Height = 13
            Caption = 'Volumes'
          end
          object Label57: TLabel
            Left = 5
            Top = 52
            Width = 52
            Height = 13
            Caption = 'Peso Bruto'
          end
          object Label58: TLabel
            Left = 81
            Top = 52
            Width = 59
            Height = 13
            Caption = 'Peso L'#237'quido'
          end
          object Label53: TLabel
            Left = 84
            Top = 16
            Width = 36
            Height = 13
            Caption = 'Esp'#233'cie'
          end
          object Label54: TLabel
            Left = 5
            Top = 85
            Width = 29
            Height = 13
            Caption = 'Marca'
          end
          object edt_VOLUMES: TEdit
            Left = 5
            Top = 30
            Width = 70
            Height = 21
            TabOrder = 0
          end
          object edt_PESOBRUTO: TEdit
            Left = 5
            Top = 65
            Width = 70
            Height = 21
            TabOrder = 1
          end
          object edt_PESOLIQUIDO: TEdit
            Left = 80
            Top = 65
            Width = 76
            Height = 21
            TabOrder = 2
          end
          object edt_especie: TEdit
            Left = 80
            Top = 30
            Width = 76
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edt_MARCA: TEdit
            Left = 5
            Top = 98
            Width = 150
            Height = 21
            TabOrder = 4
          end
        end
        object gb_OBSERVACAO_SAIDA: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 479
          Width = 518
          Height = 50
          Caption = 'OBSERVA'#199#195'O'
          TabOrder = 4
          object edt_OBS: TEdit
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 508
            Height = 21
            Align = alTop
            TabOrder = 0
          end
        end
        object gb_PEDIDOS_SAIDAS: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 82
          Width = 729
          Height = 200
          Align = alTop
          Caption = 
            'PEDIDOS E SEUS ITENS | Selecione um pedido o clicando na linha d' +
            'esejada'
          TabOrder = 5
          object Label10: TLabel
            Left = 524
            Top = 112
            Width = 141
            Height = 14
            Alignment = taRightJustify
            Caption = 'Itens que compoem o pedido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 719
            Height = 85
            Align = alTop
            DataSource = zdts_VDVENDA
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
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMITVENDA'
                Title.Caption = 'EMISS'#195'O'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODTIPOMOV'
                Title.Caption = 'MOV.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCVENDA'
                Title.Caption = 'DOC. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SIGLAUF'
                Title.Caption = 'UF'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_PESSOACLIENTE'
                Title.Caption = 'F/J'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCLI'
                Title.Caption = 'COD.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_RAZCLIENTE'
                Title.Caption = 'CLIENTE'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLIQVENDA'
                Title.Caption = 'VLR. LIQ. VENDA'
                Width = 85
                Visible = True
              end>
          end
          object DBGrid2: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 109
            Width = 719
            Height = 85
            Align = alTop
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODITVENDA'
                Title.Caption = 'ID'
                Width = 17
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPROD'
                Title.Caption = 'COD'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODLOTE'
                Title.Caption = 'LOTE'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODNAT'
                Title.Caption = 'CFOP'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_DESCPRODUTO'
                Title.Caption = 'DESCRICAO'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDITVENDA'
                Title.Caption = 'QTD'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODALMOX'
                Title.Caption = 'ALX'
                Width = 23
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOITVENDA'
                Title.Caption = 'PRE'#199'O'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCITVENDA'
                Title.Caption = 'DESCONTO'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRODITVENDA'
                Title.Caption = 'TOTAL'
                Width = 80
                Visible = True
              end>
          end
        end
        object gb_ARECEBER_SAIDAS: TGroupBox
          Left = 3
          Top = 285
          Width = 518
          Height = 83
          Caption = 'CONTAS A RECEBER'
          TabOrder = 6
          object DBGrid5: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 508
            Height = 60
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODREC'
                Title.Caption = 'C'#211'D.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NPARCITREC'
                Title.Caption = 'PARC.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTVENCITREC'
                Title.Caption = 'VENC.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRITREC'
                Title.Caption = 'VALOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_TIPOCOBRANCA'
                Title.Caption = 'TP. COB.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODBANCO'
                Title.Caption = 'BCO'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCARTCOB'
                Title.Caption = 'CART'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOSSONUMERO'
                Title.Caption = 'N. N.'#186
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SEQNOSSONUMERO'
                Title.Caption = 'SEQ'
                Width = 30
                Visible = True
              end>
          end
        end
        object gb_CANCELA_SAIDAS: TGroupBox
          Left = 3
          Top = 535
          Width = 518
          Height = 65
          Caption = 'CANCELAMENTO E JUSTIFICATIVA'
          TabOrder = 7
          object Label51: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 508
            Height = 13
            Align = alTop
            Caption = 'Chave Referencia'
            ExplicitWidth = 86
          end
          object Label38: TLabel
            AlignWithMargins = True
            Left = 207
            Top = 18
            Width = 57
            Height = 13
            Caption = 'Justificativa'
          end
          object edt_CHAVE: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 37
            Width = 198
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object edt_JUSTIFICATIVA: TEdit
            AlignWithMargins = True
            Left = 207
            Top = 37
            Width = 305
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            TabOrder = 1
          end
        end
        object gb_IMPOSTOS_SAIDA: TGroupBox
          Left = 527
          Top = 413
          Width = 205
          Height = 188
          Caption = 'IMPOSTOS E TRIBUTOS'
          TabOrder = 8
        end
      end
      object ts_COMPRAS: TTabSheet
        Caption = 'PEDIDOS DE ENTRADA'
        ImageIndex = 1
        object rg_ENTRADA: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 729
          Height = 32
          Align = alTop
          Caption = 'TIPO DE BUSCA'
          Color = clMoneyGreen
          Columns = 4
          Items.Strings = (
            'Todos por C'#243'digo'
            'Por Datas'
            'Por Pedido'
            'De Devolu'#231#227'o')
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 377
          Top = 617
          Width = 48
          Height = 63
          Caption = 'Emite'
          Glyph.Data = {
            361B0000424D361B000000000000360000002800000030000000300000000100
            180000000000001B000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F8F6F6F6FEFAFBFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F4F4E0DFDED8D8D8E5E3E0F4F4F2FEFDFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFADEDEDEC4C4C4C1C1C2C1C2C1D2
            D1D0E2E2E1F6F6F6FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F2F2F2D5D5D5D7D3CFE1DCD8CFCECCBDBDBEC4C3C3D3D3D3E7E6E6F7F7F7FEFE
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAE3E4E4DAD8D6ECE7E1EBE6DFEBE5DFE1
            DDD7CCC9C7BDBEBEC4C5C5D7D7D7EBEAE9FCFAF9FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FC
            E4DCE0E6DCD9EBE6E0F2EEEAF7F2F0F3EEEAEBE6DFDBD8D4C5C5C3BEBDBEC8C8
            C7DEDBD9EFECEBFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEFAF2C9F2D6A1E9
            B883E2A17AE09B7AE09B81E19F92DFAAADD7B7E5E2DBFEEFF3FFFBFEFEFAFBFB
            F8F9F5F0EFF0EAE5E9E4DDDAD6D2C6C5C4C0BFBECDCCCAE1E0E0F1F2F2FAFDFB
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE7F9EC9BE7B361D88748D37447D47349D47549D47549D47549D47548D474
            47D67459D580A5E6B8FCFAFBFFFAFFFCF8F9FDFAFBFCF8F9F4F0EDEFE9E3E9E4
            DDD4D0CCC2C0BFBEBFBFCDCDCEE2E0DFF4F4F3FFFEFEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5EDC75BD88243D2704AD57651D67B51D6
            7B51D67B51D67B51D67B51D67B51D67B50D67B48D5743ED36D70DC92E7F5EAFF
            FBFFFCF8F9FDF9FAFDF9FBFAF6F6F1EEEAEEE9E3E3DFD9CFCECCBFC0C0C2C1C1
            D5D4D2E5E3E3F8F5F4FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFA91E5AC46
            D3714AD37351D67B51D67B51D67B51D67B51D67B51D67B51D67B51D67B4FD67A
            50D67A52D67C51D67B3FD36E59D981E8F6EDFFFAFFFCF8F9FCF8F9FDF9FAFEFA
            FCF9F6F6F0EBE8EEE7E1E0DCD6CCCAC6BDBDBDC5C4C3D7D5D4ECECEAF8FAF9FE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFBFEFC85E2A340D16D4CD47559DC8D56DB894ED67851D67B51D6
            7B51D67B51D67B52D67B4DD57845D37242D3704ED67952D67C52D67C3FD36E76
            DD97FAF9FAFDF8FBFCF8F9FCF8F9FCF8F9FDF9FAFDF9FAF7F3F2F0EBE6ECE6DF
            DEDBD6C8C6C5BEBEBEC8C8C9DADADAECECECF9FAFAFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98E6B040D16C51D67B67
            E6AB67E7AC51D77B4FD57A50D67A51D67B51D67B51D67B49D4755ED983C4F0D2
            A1E7B647D47442D37051D67C52D67C3ED36CB3EBC4FFFBFFFCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FDF9FBFCF8FAF6F2F1EFEBE5EAE5DFD8D4CFC3C3C2BEBEBFC9
            C9C9DEDDDCEEEEEEFEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC5F2D448D3714ED77C6BE8B270ECBC53D8804ED47747D47340D36D4CD5
            7652D67C52D67C40D26EB8EFC9FFFFFFFFFFFFD2F4DD6EDD914BD57652D67B44
            D4726ADB8DF8F8F8FFF9FCFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDFAFB
            FCF8F9F4F0EEEDE9E3E8E3DDD4D1CEC3C1C0C0C0C0CFCDCDE3E1DFF5F4F3FCFE
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDF96BDB8C45D3726AE8B075F0C95C
            DF934BD36F4AD474A7E9BBADEBC054D77D41D36F3DD26C76E097FEFFFEFFFFFF
            FFFFFFFFFFFFF4FDF65BD88248D4744DD57849D575D6F0DEFFFBFFFCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDF9FAFAF7F7F2EFECEDE7E2E4
            E0DAD1CFCDBFBEBDC2C2C2D4D4D4ECEBE9FDFBFAFFFFFFFFFFFFFFFFFFFFFFFF
            BEF0CE42D26C61E29D74EFC76CE9B551D67B41D26C7DDF9CFFFFFFFFFFFFE3F8
            EA82E19F49D374D4F5DFFFFFFFFFFFFFFFFFFFFFFFFFE1F8E950D77A4BD57651
            D67B42D36FB1ECC3FFFBFFFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FDF9FAFDFAFBF9F4F4F3EEE9EDE8E2E3DDD8CBC9C6C1C0BFD2D1
            D1F4F2F1FFFFFFFFFFFFFFFFFFFFFFFF7EE19B4AD77B6FEBBB73EFC45FE19B4A
            D37043D471C6F2D4FFFFFFFFFFFFFFFFFFFFFFFFE1F7E8FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF8CE3A840D36E52D67C52D67C3DD36DA6E8BBFFFBFFFCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDF9FAFD
            F9FBF9F5F5F1EDE8EBE6E0DDD9D4D5D4D3F2F2F3FFFFFFFFFFFFFFFFFFF2FCF5
            5ED88158DE9270EDC06FECBE56DA8644D26C6EDC8EFBFEFBFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF7E74DD5774ED57951D67B52
            D67C3DD36DA7E8BBFFFBFFFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDF9FBFBF8FAF5F3F2EFEBE6E7E2
            DBFBFAF9FFFFFFFFFFFFFFFFFFDAF5E253D57960E4A273EEC36BE9B352D67C40
            D26CB2EDC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8DE4A930CF634ED57952D67C52D67B42D36FADE9C0FFFBFFFCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FDF9FBFCF7F9F5F0EEFCFDFBFFFFFFFFFFFFFFFFFFD6F4DE
            53D67A65E7AA75F0C868E7AD4FD67642D26C90E5AAEDFBF2FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5F5DF81E19F47D5734CD5784F
            D57945D472CAEFD5FFFBFFFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9F9FB
            FBFEFFFFFFFFFFFFFFFFFFFFFFD2F4DB52D67A66E7AB75F0C867E6AC4ED5764D
            D57449D4705EDA848EE4A9C5F1D2EEFBF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFC9F0D354D67B45D47255D77EEAF4EDFFF9FEFCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9F8F7F7FDFBFCFFFFFFFFFFFFFFFFFFFFFFFFD9F6E2
            53D67861E4A374F0C668E6AB4FD57751D67A51D67A48D47442D26F39D168B7EE
            C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF60D98437
            D2688BE1A5FFFAFFFDF8FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FBF8F9F9F8F8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFB62D88355DE9072EEC26AE8B150D77A51
            D57A51D67B53D67C41D36F76DF97F8FDFAFFFFFFFFFFFFFFFFFFFDFEFEE8F9ED
            FEFEFEFFFFFFFFFFFF9EE8B63ED26C46D473D8F1DFFFFAFFFCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9F8F6F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            92E4AA45D5766EEBBA6FECBD53D8814FD57951D67B4AD47654D77DE3F8E9FFFF
            FFFFFFFFFFFFFFFFFFFFDFF7E751D57A74DE95C1F1D0B7EEC84ED57837D16792
            E3ABFFFBFFFDF8FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FBF8F9F8F8F8FEFEFEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF7E64AD4725ADF9574EFC75BDE934D
            D47453D67D41D36FADECC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99E7B13DD26C
            48D47444D37046D4723CD26B67DB8BF6F7F6FFF9FDFCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FBF7F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9DE7B341D26E66E6AC6EEAB84FD67850D57843D36F94E5AEEEFAF2FFFF
            FFFFFFFFFFFFFFF1FCF555D87E4BD57753D67D51D67B41D26E59D980DEF4E6FF
            FAFFFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9F9F8F8FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFA80E19D3ED36E65E6AB63
            E3A14DD4734FD5764BD4765AD88279E0999CE8B4BFF0CF89E3A546D47253D67C
            4DD5783CD26B64DA88E1F5E8FFFAFFFCF8F8FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FAF7F8FCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF5FDF88AE3A443D37058DF9459DD8C51D57A50D67B48D47445D3
            7240D26E43D47247D4734FD57942D37045D4728FE2A7F3F7F4FFFAFFFCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9F9F8F9FEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCEFCB67
            D98948D57742D57042D36F45D37244D47245D47242D36F44D47052D67B7DDF9C
            D1EFD9FFFAFFFFF9FEFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FB
            F7F8FAFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFE7EBE9B1D6B995DCA778DB966EDD916FDD
            9173DD938CE2A5ADE9C0E1F3E7FFF9FFFFFBFFFEF8FAFCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9F8F8F8FCFFFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4F4DA
            D8D9EDDFDFFAE5E9FEF5F9FDFAFCFDF9FBFEF9FCFFFBFFFFFBFFFFF9FFFDF8FA
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FAF7F8F9
            FBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFDFDE5E5E5D6D4D3E7E2DBEFECE8FFFAFDFFF9FCFFF9
            FCFFF9FCFDF8FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9F8F8F8FDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5F4DDDDDCDE
            DAD6EBE6E0F6F3F2FDF9FBFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FBF7F8F9FAF9FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFCFCEAE8E8D4D3D1EBE4DEEFECE8FCF9FBFCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9F8F7F7FEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F6F6DBDAD8E0DBD6EB
            E5DFF5F2F0FDF9FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FAF7F8FBF9F9FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFFFEEBECEBD5D3D2E7E2DCEEE8E4FCF8F9FCF9FAFCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9F7F6F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9F9DDDDDED9D6D2EAE5DEF5
            F1EEFDFAFBFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FBF7F8F8F8F8FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5F8F7E0DDDCE6E1DBEDE8E3FBF7F8FDF9FAFCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FCF8F9FCF8F9FDF9FAFDF9FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FAF7F8FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEAE6E1E6E2DBF3EFEDFD
            F9FBFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDF9FAF9F5F4F9F5F4FDF9
            FBFDF9FBFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9F9F9F9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFEEEE8E3E8E4DFF9F7F7FDF9FAFCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9FEFAFBF5F1EFE8E3DDE9E5DFEFEBE8F6F3F2FCF9FAFDF9FAFCF8F9FCF8F9
            F9F7F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F3F3F4F0EEFCF9FAFC
            F7F8FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8FAFCF8F9ECE9E3E6E2DBE8E4DEE6E2
            DCE7E4DEEDEAE6F6F2F0FCF9FAFCF8F9FAF9FAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFCFCFDFBFCFCF8F9FCF8F9FCF8F9FCF8F9FCF8
            F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FD
            F9FBF9F4F4E8E4DEE8E4DEE8E4DEE8E4DEE8E4DDE7E3DCE7E3DCECE8E3F6F2F1
            FFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFEFEFEFEFEFEFCFAFAFCF9FAFCF8F9FCF7F8FCF8F9FCF8F9FCF8F9FCF8F9
            FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FDF9FAF3EFECE7E2DCE8E4DEE8E4DEE8E4
            DEE7E3DDE6E2DCEAE6E0F2EFECFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
            FCFDFBFCFCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FCF8F9FC
            F8F9EDE9E3E7E3DDE8E4DEE7E3DDE7E2DCECE7E2F3EFEDFDFBFBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFBFDFCF9FAFCF8FA
            FCF7F8FCF8F9FCF8F9FCF8F9FDF9FAF8F5F4E8E4DEE6E2DCE7E3DCEDE8E3F6F3
            F1FEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDFBFCFDF9FBFCF8F9FCF8F9FDF9FBF2
            EDEAE6E1DAEDE9E4F7F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFEFBFDFCF9F9F3F1EDF7F6F4FEFEFEFFFFFFFFFFFFFFFF
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
          TabOrder = 1
          Visible = False
        end
        object gb_PARAM_ENTRADA: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 729
          Height = 35
          Align = alTop
          Caption = 'PAR'#194'METROS'
          TabOrder = 2
          object lbl_PESQUISA_ENT: TLabel
            Left = 15
            Top = 15
            Width = 150
            Height = 13
            AutoSize = False
          end
          object lbl_ATE_ENT: TLabel
            Left = 280
            Top = 15
            Width = 40
            Height = 13
            AutoSize = False
          end
          object sp_BUSCA_ENT: TSpeedButton
            Left = 432
            Top = 8
            Width = 25
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
            Visible = False
          end
          object msk_PESQUISA1_ENT: TMaskEdit
            Left = 172
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 0
            Text = ''
            Visible = False
          end
          object msk_PESQUISA2_ENT: TMaskEdit
            Left = 326
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 1
            Text = ''
            Visible = False
          end
          object btn_BUSCAENTRADA_DATA: TBitBtn
            Left = 463
            Top = 4
            Width = 59
            Height = 25
            Caption = 'btn_BUSCAENTRADA_DATA'
            TabOrder = 2
            Visible = False
          end
        end
        object btn_BUSCAENTRADA: TBitBtn
          Left = 533
          Top = 38
          Width = 75
          Height = 25
          Caption = 'btn_BUSCAENTRADA'
          TabOrder = 3
          Visible = False
        end
        object gb_PED_ENT: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 82
          Width = 729
          Height = 200
          Align = alTop
          Caption = 'PEDIDOS DE ENTRADA E SEUS ITENS'
          TabOrder = 4
          object DBGrid3: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 719
            Height = 85
            Align = alTop
            DataSource = dm_DADOS.zdts_CPCOMPRA
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODCOMPRA'
                Title.Caption = 'COD. COMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMITCOMPRA'
                Title.Caption = 'DT. EMITE COMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODTIPOMOV'
                Title.Caption = 'TIPO MOV.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCCOMPRA'
                Title.Caption = 'DOC. COMPRA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_NOMEFOR'
                Title.Caption = 'FORNECEDOR'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLIQCOMPRA'
                Title.Caption = 'VLR. LIQ. '
                Visible = True
              end>
          end
          object DBGrid4: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 109
            Width = 719
            Height = 85
            Align = alTop
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODITCOMPRA'
                Title.Caption = 'ITEM'
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPROD'
                Title.Caption = 'COD'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODNAT'
                Title.Caption = 'CFOP'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_PRODUTO'
                Title.Caption = 'DESCRICAO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDITCOMPRA'
                Title.Caption = 'QTD'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODALMOX'
                Title.Caption = 'ALX'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOITCOMPRA'
                Title.Caption = 'PRE'#199'O'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCITCOMPRA'
                Title.Caption = 'DESCONTO'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRODITCOMPRA'
                Title.Caption = 'TOTAL'
                Width = 80
                Visible = True
              end>
          end
        end
        object gb_APAGAR: TGroupBox
          Left = 3
          Top = 285
          Width = 518
          Height = 83
          Caption = 'CONTAS A PAGAR'
          TabOrder = 5
          object DBGrid8: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 508
            Height = 60
            Align = alClient
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODPAG'
                Title.Caption = 'C'#211'D.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NPARCPAG'
                Title.Caption = 'PARC.'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTVENCITPAG'
                Title.Caption = 'VENC.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRITPAG'
                Title.Caption = 'VALOR'
                Visible = True
              end>
          end
        end
        object gb_TRANSP_ENT: TGroupBox
          Left = 3
          Top = 388
          Width = 500
          Height = 122
          Caption = 'TRANSPORTE'
          TabOrder = 6
          object Label6: TLabel
            Left = 3
            Top = 16
            Width = 48
            Height = 13
            Caption = 'CPF/CNPJ'
          end
          object Label11: TLabel
            Left = 95
            Top = 16
            Width = 139
            Height = 13
            Caption = 'Raz'#227'o Social/Nome Completo'
          end
          object Label12: TLabel
            Left = 338
            Top = 16
            Width = 10
            Height = 13
            Caption = 'IE'
          end
          object Label13: TLabel
            Left = 5
            Top = 52
            Width = 45
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object Label14: TLabel
            Left = 245
            Top = 52
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label15: TLabel
            Left = 363
            Top = 52
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object Label16: TLabel
            Left = 425
            Top = 17
            Width = 26
            Height = 13
            Caption = 'ANTT'
          end
          object Label17: TLabel
            Left = 401
            Top = 52
            Width = 25
            Height = 13
            Caption = 'Placa'
          end
          object Label18: TLabel
            Left = 450
            Top = 52
            Width = 41
            Height = 13
            Caption = 'UF Placa'
          end
          object edt_CPFCNPJ_TRANSP_ENT: TEdit
            Left = 3
            Top = 30
            Width = 90
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object edt_NOMERAZ_TRANSP_ENT: TEdit
            Left = 95
            Top = 30
            Width = 240
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object edt_IE_TRANSP_ENT: TEdit
            Left = 338
            Top = 30
            Width = 84
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 2
          end
          object edt_END_TRANSP_ENT: TEdit
            Left = 3
            Top = 65
            Width = 240
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
          end
          object edt_CID_TRANSP_ENT: TEdit
            Left = 245
            Top = 65
            Width = 115
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
          end
          object edt_UF_TRANSP_ENT: TEdit
            Left = 362
            Top = 65
            Width = 35
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
          end
          object edt_ANTT_TRANSP_ENT: TEdit
            Left = 425
            Top = 30
            Width = 70
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edt_PLACA_TRANSP_ENT: TEdit
            Left = 400
            Top = 65
            Width = 55
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object edt_PLACAUF_TRANSP_ENT: TEdit
            Left = 457
            Top = 65
            Width = 36
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 8
          end
        end
        object gb_VOLUME_ENT: TGroupBox
          Left = 506
          Top = 388
          Width = 168
          Height = 122
          Caption = 'VOLUMES E PESO'
          TabOrder = 7
          object Label19: TLabel
            Left = 5
            Top = 16
            Width = 39
            Height = 13
            Caption = 'Volumes'
          end
          object Label20: TLabel
            Left = 5
            Top = 52
            Width = 52
            Height = 13
            Caption = 'Peso Bruto'
          end
          object Label21: TLabel
            Left = 81
            Top = 52
            Width = 59
            Height = 13
            Caption = 'Peso L'#237'quido'
          end
          object Label22: TLabel
            Left = 60
            Top = 16
            Width = 36
            Height = 13
            Caption = 'Esp'#233'cie'
          end
          object Label23: TLabel
            Left = 5
            Top = 85
            Width = 29
            Height = 13
            Caption = 'Marca'
          end
          object edt_VOLUMES_ENT: TEdit
            Left = 5
            Top = 30
            Width = 50
            Height = 21
            TabOrder = 0
          end
          object edt_PESOBRUTO_ENT: TEdit
            Left = 5
            Top = 65
            Width = 70
            Height = 21
            TabOrder = 1
          end
          object edt_PESOLIQUIDO_ENT: TEdit
            Left = 79
            Top = 65
            Width = 76
            Height = 21
            TabOrder = 2
          end
          object edt_ESPECIE_ENT: TEdit
            Left = 60
            Top = 30
            Width = 95
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edt_MARCA_ENT: TEdit
            Left = 5
            Top = 98
            Width = 150
            Height = 21
            TabOrder = 4
          end
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 511
          Width = 670
          Height = 39
          Caption = 'OBSERVA'#199#195'O'
          TabOrder = 8
          object edt_OBS_ENT: TEdit
            Left = 8
            Top = 15
            Width = 659
            Height = 21
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 5
          Top = 550
          Width = 670
          Height = 39
          Caption = 'CANCELAMENTO E JUSTIFICATIVA'
          TabOrder = 9
          object Label24: TLabel
            Left = 8
            Top = 15
            Width = 86
            Height = 13
            Caption = 'Chave Referencia'
          end
          object Label25: TLabel
            Left = 300
            Top = 15
            Width = 57
            Height = 13
            Caption = 'Justificativa'
          end
          object edt_CHAVE_ENT: TEdit
            Left = 95
            Top = 15
            Width = 202
            Height = 21
            Enabled = False
            TabOrder = 0
          end
          object edt_JUSTIFICATIVA_ENT: TEdit
            Left = 367
            Top = 15
            Width = 300
            Height = 21
            CharCase = ecUpperCase
            Enabled = False
            TabOrder = 1
          end
        end
        object btn_EMITENOTA_COMPRA: TBitBtn
          Left = 3
          Top = 592
          Width = 48
          Height = 52
          Hint = 'Emite NFE - Documento Fiscal'
          Caption = 'NF-e'
          Glyph.Data = {
            FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
            180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFEFFFFBDEDFF21C6FF0FC0FF18C3FF17C3FF17C3FF17C3FF17C3FF17
            C3FF17C3FF17C3FF17C3FF16C3FF1CC4FF20C6FF1AC4FF17C3FF17C3FF17C3FF
            13C1FF18C4FFB0EAFFFDFEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F3FCFF74D7FF4ACBFFBDEDFFB1E9FFB1EAFFB1E9FFB1E9FFB1E9FFB1E9FFB1E9
            FFB1E9FFB1E9FFBDEDFF75D8FF48CAFF99E2FFB7EBFFB1E9FFB1E9FFBDECFF53
            CFFF72D7FFF2FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF0FAFF66
            CFFF70D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFA6E3FF65CEFFDEF4FFFFFFFFFFFFFFFFFFFFFFFFFF81D7FF6CD1
            FFF0FAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1FAFF6ACBFF6ECC
            FFFFFFFFE1F4FFB9E6FFE8F7FFC4EAFFDAF1FFD0EEFFD3EFFFDEF4FFD7F1FFFF
            FFFFA4E0FF67CAFFCEEEFFC1E8FFE5F5FFFFFFFFFFFFFF7CD2FF6FCDFFF1FAFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1FAFF6BC7FF71C8FFFFFFFF
            ABDFFF3EB6FFBFE6FF5EC1FF98D8FF7FCFFF85D0FFA5DDFF8ED4FFFFFFFFA6DC
            FF77CAFFC2E9FF42B8FF7BCBFFF2F9FFFFFFFF7ECEFF70C8FFF1FAFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1F9FF6EC3FF71C5FFFFFFFFC5E7FF79
            C7FFD2EDFF8ED0FFB8E1FFA6DAFFAADCFFBFE4FFB0DFFFFFFFFFA4D9FF67C0FF
            F1FAFFACDEFF4BB7FFD2EDFFFFFFFF84CDFF71C5FFF1F9FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF1F9FF70BFFF73C1FFFFFFFFFDFFFFFAFDFFFDFE
            FFFAFDFFFDFEFFFCFEFFFCFDFFFCFDFFFBFDFFFFFFFFAADAFF54B2FFB8DEFFE9
            F4FFD6EBFFD4ECFFDBEEFF6EBEFF75C1FFF2F9FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF1F9FF70BAFF75BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEFFF63B5FF4BA8FF5EB2FF65B5
            FF5DB1FF65B5FF2D9AFF7ABFFFF4FAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF2F8FF73B6FF77B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F8FFCCE5FFCAE4FFCCE5FFC8E3FF
            D4E9FF6AB2FF79B9FFF2F9FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F2F8FF76B2FF78B5FFFFFFFFFCFEFFF5FAFFF5FAFFF5FAFFF6FAFFF6FAFFF5FA
            FFF5FAFFFAFDFFFFFFFFFCFDFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
            C1FF78B4FFF1F8FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF77
            AEFF7AB1FFFFFFFFDCEAFF7DB1FF7FB2FF84B5FF84B5FF84B5FF80B3FF7AB0FF
            C6DDFFFFFFFFD8E8FF86B7FF7CB0FF7FB2FF7DB0FFDBEAFFFFFFFF87B9FF7AB0
            FFF2F7FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF79AAFF7DAC
            FFFFFFFFDEEBFF86B6FF87B6FF8DBAFF8CBAFF8CBAFF89B7FF84B4FFCBDFFFFF
            FFFFD8E7FF83B2FF79ACFF7BAEFF7AACFFDAE8FFFFFFFF8AB5FF7DADFFF2F7FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF7AA7FF7EA9FFFFFFFF
            EBF0FFB3C9FFB3C9FFB7CCFFB7CCFFB7CCFFB5CAFFB2C8FFDEE7FFFFFFFFFFFF
            FFF6FFFFF3FFFFF3FFFFF5FFFFFEFFFFFFFFFF8AB2FF7FA9FFF2F7FFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F6FF7CA3FF7FA5FFFFFFFFDBE6FF7A
            A5FF7BA5FF80A9FF80A9FF80A9FF7CA7FF77A3FFC5D7FFFFFFFFEAF4FFB4D6FF
            ACD3FFADD3FFAED3FFEBF3FFFFFFFF8CAEFF7FA5FFF2F6FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF3F6FF7E9EFF81A0FFFFFFFFF4F6FFD5DEFFD5DE
            FFD6DFFFD7DFFFD7DFFFD5DFFFD3DEFFEDF1FFFFFFFFE6EAFFB1BDFFADB8FFAE
            B9FFABB8FFE8EBFFFFFFFF8EAAFF81A1FFF2F6FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF3F5FF809AFF849CFFFFFFFFD8E0FF728EFF7490FF7A95FF
            7A94FF7A94FF7591FF6F8CFFC2CEFFFFFFFFEAE5FFBBAEFFB6A7FFB8A8FFB6A7
            FFEBE8FFFFFFFF90A6FF849DFFF3F5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF3F5FF8196FF8499FFFFFFFFF0F3FFC6D2FFC7D3FFCBD6FFCAD6FFCA
            D6FFC9D5FFC6D2FFE6ECFFFFFFFFE9DBFFBC95FFB78FFFB991FFB78CFFEADFFF
            FFFFFF91A4FF8599FFF3F5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F3F4FF8392FF8696FFFFFFFFE0E2FF8D98FF8F99FF939DFF939CFF939CFF919A
            FF8C96FFCFD5FFFFFFFFEFDBFFC481FFBD71FFBE73FFBF75FFEEDDFFFFFFFF92
            A0FF8796FFF3F4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF3F4FF85
            8EFF8791FFFFFFFFEAEBFFB0BBFFB1BBFFB4BEFFB4BEFFB4BEFFB1BBFFADB7FF
            E6ECFFFFFFFFFFFFFFFCDDFFF8D1FFF8D2FFFCDAFFFFF9FFFFFFFF939CFF8891
            FFF3F4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F4FF868AFF8A8D
            FFFFFFFFE5E4FF9F9EFFA09FFFA4A4FFA4A3FFA4A3FFA4A4FFA4A4FF9D9DFF98
            9AFF9A9DFF9CA1FF9DA3FF989DFF979CFFE3E5FFFFFFFF9699FF8A8DFFF3F4FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F3FF8886FF8C8AFFFFFFFF
            DCDCFF8382FF8584FF8A89FF8988FF8988FF8A89FF8A89FF8786FF8584FF8585
            FF8788FF8789FF8284FF7F80FFDBDCFFFFFFFF9895FF8C8AFFF4F3FFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F3FF8A81FF8D85FFFFFFFFF9F9FFEB
            EBFFECEBFFECECFFECECFFECECFFEDECFFF2F3FFF4F4FFEEEEFFEDECFFEDECFF
            EDECFFECEBFFECEBFFF9F9FFFFFFFF9891FF8D85FFF4F3FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF4F2FF8D7DFF8E80FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF3F1FFEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9A8CFF9081FFF4F2FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF4F2FF8D7AFF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB5A8FF6649FF6144FFA595FFFCFBFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9B8AFF917EFFF4F2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF4F2FF9077FF9279FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
            B1FF6946FFBFB0FFCBC0FF6D4CFFB4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9C87FF937AFFF4F2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F4F1FF8C69FF987AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C80FF9677
            FFFEFDFFFFFFFF9B7EFF9274FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4
            8AFF906FFFF4F1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF9F7FFA5
            86FF6129FF9974FFA383FFA484FFA383FFA687FF9C78FF7241FFB39AFFFFFFFF
            FFFFFFB399FF6D3CFF9976FFA687FFA383FFA483FFA483FF9A76FF642CFFA07F
            FFF8F6FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFEFFF1EBFFBEA6
            FF966BFF560FFF5008FF530DFF540EFF4C02FF5610FFC3ABFFFFFFFFFFFFFFC3
            AAFF5712FF4D04FF540DFF530DFF5209FF5109FF9367FFBCA1FFEEE8FFFFFEFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFF2ECFF
            B999FF9D71FFA57CFFA77EFFA278FF8045FF9360FFC8ACFFC8ADFF9360FF7C40
            FFA075FFA77FFFA57CFF9F71FFB492FFF0EAFFFDFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFD
            FCFFFDFCFFFDFCFFFDFCFFD8C2FF6A1DFF5204FF5304FF6517FFD4BEFFFDFCFF
            FDFCFFFDFCFFFDFCFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          Layout = blGlyphTop
          TabOrder = 10
        end
        object btn_IMPRIME_COMPRA: TBitBtn
          Left = 51
          Top = 592
          Width = 48
          Height = 52
          Hint = 'Imprimir|Selecione a Nota pela chave para Imprimir|1'
          Caption = 'Imprimir'
          Glyph.Data = {
            FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
            180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9CA90F9CA90FDD39CFDD39DFDD39DFDD3
            9DFDD39DFDD39DFDD39DFDD39DFED49EFCD19AF9C98FF9CA90F9CA90F9CA90F9
            CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFBDBB4F9CA90F9CA90F9CA90E8A55CE6A257E7A358E7A358E7A358
            E7A358E7A358E7A358E5A054EBAD67FBCE95F9CA90F9CA90F9CA90F9CA90FBDB
            B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCDCB4F9CA90F9CA90F9CA90CF6E0ECA6602CB6704CB6704CB6704CB6704CB
            6704CB6704C86000D7812AFED39DF9CA90F9CA90F9CA90F9CA90FCDCB4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF5F5F5F4F4F4F3F3F3F7D7B0
            F9CB90F9CA90F9CA90F6C386F5C285F6C385F6C385F6C385F6C385F6C385F6C3
            85F5C284F7C68AFCD098FBCF97FBCD95F9CA8FF9CB90F7D7B0F3F3F3F4F4F4F5
            F5F5FFFFFFFFFFFF0000FDFDFDAFAFAF51515143434332363CBF9F78FFD596F9
            CA90F9CA90F3BC7CF2BB7AF2BB7BF2BB7BF2BB7BF2BB7BF2BB7BF2BB7BF2BB7B
            F2BA7AF1B876F0B775F3BD7EFACC93FFD596BF9F7832363C434343515151B0B0
            B0FFFFFF0000ABABAB42424242424242424230343ABF9F77FFD596F9CA90F9CA
            90CD6C0AC96300CA6400CA6400CA6400CA6400CA6400CA6400CA6400CA6400CA
            6400C65D00D7812AFED49FFFD596BF9F7730343A424242424242424242B2B2B2
            000050505042424242424242424230343ABF9F77FFD596F9CA90F9CA90EBAD66
            EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63E9A8
            60EEB371FBCD95FFD596BF9F7730343A42424242424242424252525200004242
            4242424242424242424230343ABF9E75FFD494F9C98EF9C98EFCD199FDD19AFD
            D199FDD199FDD199FDD199FDD199FDD199FDD199FDD199FDD199FDD29AFCCF96
            F9C88DFFD494BF9E7530343A4242424242424242424242420000424242424242
            434343404040131C26BE843CFFBE4AFFB248FFB248FFB248FFB248FFB248FFB2
            48FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FF
            BE4ABE843C141C2740404043434342424242424200004242424242424343433F
            3F3F151A207C592DAF7B35A97433A97433A97433A97433A97433A97433A97433
            A97433A97433A97433A97433A97433A97433A97433A97433A97433AF7B357C59
            2D151A213F3F3F43434342424242424200004242424242424242424242423B3A
            39232A321B24311C25311C25311C25311C25311C25311C25311C25311C25311C
            25311C25311C25311C25311C25311C25311C25311C25311B2431232A323C3B3A
            4242424242424242424242420000424242424242424242424242444444454545
            4545454545454545454545454545454545454545454545454545454545454545
            4545454545454545454545454545454545454545454545454544444442424242
            4242424242424242000040404040404040404040404040404040404040404040
            4040404040404040404040404040404040404040404040404040404040404040
            4040404040404040404040404040404040404040404040404040404040404040
            4040404000004B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
            4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
            4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
            0000646464646464646464646464646464646464646464646464646464646464
            6464646464646464646464646464646464646464646464646464646464646464
            6464646464646464646464646464646464646464646464646464646400006161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161616161616161616161616161616161610000616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161605B65605D64616261616161000061616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            61616062657850647255615F6361616100006161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161605B66
            73D40E6EB5245F556A61616100007C7C7C616161616161616161616161616161
            6161616161616161616161616161616161616161616161616161616161616161
            61616161616161616161616161616161616161616161616161615F6266814964
            7850605D637D7D7D0000D3D3D36A6A6A6161616161616363635D5E605A5C5F5A
            5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F
            5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5D5E60636462605967605B65696A
            68D4D4D40000FFFFFFD7D7D78C8C8C7A7A7A58595A736D657F776B7E756A7E75
            6A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E
            756A7E756A7E756A7E756A7F776B736D6558595A7A7A7A8C8C8CD5D5D5FFFFFF
            0000FFFFFFFFFFFFFFFFFFEFEFEF2D3238C6A479FFDE9AFFD294FFD294FFD294
            FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD2
            94FFD294FFD294FFDE9AC6A4792D3238EFEFEFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFE1E1E131353BBC9D76FFD697F9CA90F9CA90F9CA90F9CA90F9
            CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
            F9CA90FFD697BC9D7631353BE1E1E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFAFAFAD3D4D5EECFA7FACC91F9CA90F9CA90F9CA90F9CA90F9CA90F9CA
            90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FA
            CC91EECFA7D3D4D5FAFAFAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEDFB7F9C990F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
            F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9C990FEDF
            B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBDBB4F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
            CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4
            F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA
            90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9
            CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
            F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9CA90F9CA
            90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
            CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object btn_ENVIAEMAIL_COMPRA: TBitBtn
          Left = 99
          Top = 592
          Width = 48
          Height = 52
          Hint = 
            'Enviar via e-mail|Selecione a NF pela chave para proceder o envi' +
            'o. Deve estar cadastrado os par'#226'metros SMTP|1'
          Caption = 'Email'
          Glyph.Data = {
            FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
            180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFEF8F0FAD4A4F9CB91F9CC93F9CC93F9CC93F9
            CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93
            F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CC93F9CB90FAD2A0FEF5
            EAFFFFFF0000FDEFDCF5A94BF28E10F28C0BF28C0CF28C0CF28C0CF28C0CF28C
            0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF2
            8C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0BF28D0FF5A642FCE9D1
            0000F7B564F39218F39520F39621F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39620F39219F5AA4C0000F39A
            28F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F39621F39621F3951E0000F3951FF39621
            F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F39621F39621F39621F39621F396200000F39621F39621F39621F3
            9621F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621
            F59822F59822F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F396210000F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39621F39621F89A22EF9220EE
            911FF89B22F39621F39621F39621F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F396210000F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F39621F99C22E6891EAC520FA94E0EE386
            1DF99C23F49721F39621F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F396210000F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F39621F69922F89B22D5791A9F450DA74C0EA84E0F9C420CD07419
            F79922F79922F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F396210000F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F89B22F29521C06515973D0AB55B12ED9020EF9321B95F13963C0ABB6013F0
            9320F89B22F39621F39621F39621F39621F39621F39621F39621F39621F39621
            0000F39621F39621F39621F39621F39621F39621F39621F49721F99C22E4871D
            AB5110993F0CCA6E16F59821F79A22F79922F79922CE73189B420CA74D0EE084
            1DF99C22F49721F39621F39621F39621F39621F39621F39621F396210000F396
            21F39621F39621F39621F39621F39621F69922F89B23D277199C420CA44A0EDD
            811BFA9C22F59821F39621F39621F49721F99C23E1851DA84D0E9A410CCD7218
            F79A22F79A22F39621F39621F39621F39621F39621F396210000F39621F39621
            F39621F39621F39621F89B22F0931FBE6214973D0BB85D13ED901FF99B22F396
            21F39621F39621F39621F39621F39621F89B22F09220BC6214963E0BB95E13EE
            9020F89B22F39621F39621F39621F39621F396210000F39621F39621F39621F4
            9721FA9D23E3861DA84E0F9A400BCD7117F69922F79A22F39621F39621F39621
            F39621F39621F39621F39621F39621F69922F89A22D175199C420BA44A0EDF83
            1CFA9D23F59821F39621F39621F396210000F39621F39621F69922F79A22D073
            189C420CA64C0FDF831DF99C22F49721F39621F39621F39621F39621F39621F3
            9621F39621F39621F39621F39621F49721F99C23E3871DAA50109A410BCB7017
            F69822F69922F39621F396210000F39621F89B23EF9220BA5F13963D0ABB6014
            F09220F89B22F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F39621F89B22F39521C06514963C0AB55A13EC
            8F1FF99C23F396210000FA9C23E2841DA74D0F9B420BCE7318F69A22F79922F3
            9621F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F69922F79A22D3771A9E440CA44A0DDE81
            1CF99C220000C66B169E440CAA4F0FE3861DF99C22F49721F39621F39621F396
            21F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F39621F39621F39621F39621F99C23E68A1EAD53109C420CC36815
            00009F4308BC6213F09320F89B22F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621F396
            21F39621F39621F39621F39621F39621F89A22F29621C066159C40060000E5A2
            59F49217F69820F39621F39621F39621F39621F39621F39621F39621F39621F3
            9621F39621F39621F39621F39621F39621F39621F39621F39621F39621F39621
            F39621F39621F39621F39621F39621F59720F59418E399460000FFF7E9F7AF56
            F29015F28C0DF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C
            0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF28C0CF2
            8C0CF28C0CF28C0CF28C0CF39014F6AB4DFFF2DE0000FFFFFFFEFCF9FBDCB3F9
            CC93F9CB91F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92
            F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC92F9CC
            92F9CB91F9CC92FBDAAFFEFAF3FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          Layout = blGlyphTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object btn_FECHAR_ENTRADA: TBitBtn
          Left = 147
          Top = 592
          Width = 48
          Height = 52
          Caption = 'Fecha&r'
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
          TabOrder = 13
        end
      end
      object ts_AGRUPASAIDAS: TTabSheet
        Caption = 'AGRUPAR PEDIDOS DE SA'#205'DA'
        ImageIndex = 2
        object lbl_AGRUPADOS: TLabel
          Left = 350
          Top = 49
          Width = 27
          Height = 21
          AutoSize = False
          Visible = False
        end
        object Label1: TLabel
          Left = 3
          Top = 24
          Width = 59
          Height = 13
          Caption = 'C'#243'd. Cliente'
        end
        object Label2: TLabel
          Left = 168
          Top = 24
          Width = 13
          Height = 13
          Caption = 'De'
        end
        object Label3: TLabel
          Left = 257
          Top = 24
          Width = 17
          Height = 13
          Caption = 'At'#233
        end
        object Label4: TLabel
          Left = 3
          Top = 2
          Width = 43
          Height = 13
          Caption = 'Cliente : '
        end
        object lbl_NOME: TLabel
          Left = 68
          Top = 5
          Width = 276
          Height = 13
          AutoSize = False
        end
        object Label5: TLabel
          Left = 3
          Top = 52
          Width = 51
          Height = 13
          Caption = 'Valor Total'
        end
        object lbl_RAZAO: TLabel
          Left = 350
          Top = 5
          Width = 276
          Height = 13
          AutoSize = False
        end
        object Edit2: TEdit
          Left = 65
          Top = 49
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object mkdata1: TMaskEdit
          Left = 187
          Top = 22
          Width = 64
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
        end
        object mkdata2: TMaskEdit
          Left = 280
          Top = 22
          Width = 64
          Height = 21
          EditMask = '99/99/9999'
          MaxLength = 10
          TabOrder = 2
          Text = '  /  /    '
        end
        object BitBtn1: TBitBtn
          Left = 616
          Top = 50
          Width = 29
          Height = 25
          Caption = 'BitBtn1'
          TabOrder = 3
          Visible = False
        end
        object btn_BUSCAR: TBitBtn
          Left = 350
          Top = 18
          Width = 27
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
          TabOrder = 4
        end
        object Edit3: TEdit
          Left = 383
          Top = 49
          Width = 290
          Height = 21
          Enabled = False
          TabOrder = 5
          Visible = False
        end
        object edt_BUSCACLI: TEdit
          Left = 65
          Top = 22
          Width = 64
          Height = 21
          TabOrder = 6
        end
        object btn_BUSCACLI: TBitBtn
          Left = 135
          Top = 19
          Width = 27
          Height = 25
          Caption = '...'
          TabOrder = 7
        end
        object btn_AGRUPAR: TBitBtn
          Left = 184
          Top = 48
          Width = 160
          Height = 25
          Caption = 'Agrupar Pedidos'
          TabOrder = 8
        end
        object btn_EMITEAGRUPA: TBitBtn
          Left = 3
          Top = 592
          Width = 48
          Height = 52
          Caption = 'NFe'
          Glyph.Data = {
            FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
            180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFEFFFFBDEDFF21C6FF0FC0FF18C3FF17C3FF17C3FF17C3FF17C3FF17
            C3FF17C3FF17C3FF17C3FF16C3FF1CC4FF20C6FF1AC4FF17C3FF17C3FF17C3FF
            13C1FF18C4FFB0EAFFFDFEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F3FCFF74D7FF4ACBFFBDEDFFB1E9FFB1EAFFB1E9FFB1E9FFB1E9FFB1E9FFB1E9
            FFB1E9FFB1E9FFBDEDFF75D8FF48CAFF99E2FFB7EBFFB1E9FFB1E9FFBDECFF53
            CFFF72D7FFF2FBFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF0FAFF66
            CFFF70D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFA6E3FF65CEFFDEF4FFFFFFFFFFFFFFFFFFFFFFFFFF81D7FF6CD1
            FFF0FAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1FAFF6ACBFF6ECC
            FFFFFFFFE1F4FFB9E6FFE8F7FFC4EAFFDAF1FFD0EEFFD3EFFFDEF4FFD7F1FFFF
            FFFFA4E0FF67CAFFCEEEFFC1E8FFE5F5FFFFFFFFFFFFFF7CD2FF6FCDFFF1FAFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1FAFF6BC7FF71C8FFFFFFFF
            ABDFFF3EB6FFBFE6FF5EC1FF98D8FF7FCFFF85D0FFA5DDFF8ED4FFFFFFFFA6DC
            FF77CAFFC2E9FF42B8FF7BCBFFF2F9FFFFFFFF7ECEFF70C8FFF1FAFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF1F9FF6EC3FF71C5FFFFFFFFC5E7FF79
            C7FFD2EDFF8ED0FFB8E1FFA6DAFFAADCFFBFE4FFB0DFFFFFFFFFA4D9FF67C0FF
            F1FAFFACDEFF4BB7FFD2EDFFFFFFFF84CDFF71C5FFF1F9FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF1F9FF70BFFF73C1FFFFFFFFFDFFFFFAFDFFFDFE
            FFFAFDFFFDFEFFFCFEFFFCFDFFFCFDFFFBFDFFFFFFFFAADAFF54B2FFB8DEFFE9
            F4FFD6EBFFD4ECFFDBEEFF6EBEFF75C1FFF2F9FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF1F9FF70BAFF75BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDEFFF63B5FF4BA8FF5EB2FF65B5
            FF5DB1FF65B5FF2D9AFF7ABFFFF4FAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF2F8FF73B6FF77B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F8FFCCE5FFCAE4FFCCE5FFC8E3FF
            D4E9FF6AB2FF79B9FFF2F9FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F2F8FF76B2FF78B5FFFFFFFFFCFEFFF5FAFFF5FAFFF5FAFFF6FAFFF6FAFFF5FA
            FFF5FAFFFAFDFFFFFFFFFCFDFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
            C1FF78B4FFF1F8FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF77
            AEFF7AB1FFFFFFFFDCEAFF7DB1FF7FB2FF84B5FF84B5FF84B5FF80B3FF7AB0FF
            C6DDFFFFFFFFD8E8FF86B7FF7CB0FF7FB2FF7DB0FFDBEAFFFFFFFF87B9FF7AB0
            FFF2F7FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF79AAFF7DAC
            FFFFFFFFDEEBFF86B6FF87B6FF8DBAFF8CBAFF8CBAFF89B7FF84B4FFCBDFFFFF
            FFFFD8E7FF83B2FF79ACFF7BAEFF7AACFFDAE8FFFFFFFF8AB5FF7DADFFF2F7FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F7FF7AA7FF7EA9FFFFFFFF
            EBF0FFB3C9FFB3C9FFB7CCFFB7CCFFB7CCFFB5CAFFB2C8FFDEE7FFFFFFFFFFFF
            FFF6FFFFF3FFFFF3FFFFF5FFFFFEFFFFFFFFFF8AB2FF7FA9FFF2F7FFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF2F6FF7CA3FF7FA5FFFFFFFFDBE6FF7A
            A5FF7BA5FF80A9FF80A9FF80A9FF7CA7FF77A3FFC5D7FFFFFFFFEAF4FFB4D6FF
            ACD3FFADD3FFAED3FFEBF3FFFFFFFF8CAEFF7FA5FFF2F6FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF3F6FF7E9EFF81A0FFFFFFFFF4F6FFD5DEFFD5DE
            FFD6DFFFD7DFFFD7DFFFD5DFFFD3DEFFEDF1FFFFFFFFE6EAFFB1BDFFADB8FFAE
            B9FFABB8FFE8EBFFFFFFFF8EAAFF81A1FFF2F6FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF3F5FF809AFF849CFFFFFFFFD8E0FF728EFF7490FF7A95FF
            7A94FF7A94FF7591FF6F8CFFC2CEFFFFFFFFEAE5FFBBAEFFB6A7FFB8A8FFB6A7
            FFEBE8FFFFFFFF90A6FF849DFFF3F5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF3F5FF8196FF8499FFFFFFFFF0F3FFC6D2FFC7D3FFCBD6FFCAD6FFCA
            D6FFC9D5FFC6D2FFE6ECFFFFFFFFE9DBFFBC95FFB78FFFB991FFB78CFFEADFFF
            FFFFFF91A4FF8599FFF3F5FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F3F4FF8392FF8696FFFFFFFFE0E2FF8D98FF8F99FF939DFF939CFF939CFF919A
            FF8C96FFCFD5FFFFFFFFEFDBFFC481FFBD71FFBE73FFBF75FFEEDDFFFFFFFF92
            A0FF8796FFF3F4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF3F4FF85
            8EFF8791FFFFFFFFEAEBFFB0BBFFB1BBFFB4BEFFB4BEFFB4BEFFB1BBFFADB7FF
            E6ECFFFFFFFFFFFFFFFCDDFFF8D1FFF8D2FFFCDAFFFFF9FFFFFFFF939CFF8891
            FFF3F4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F4FF868AFF8A8D
            FFFFFFFFE5E4FF9F9EFFA09FFFA4A4FFA4A3FFA4A3FFA4A4FFA4A4FF9D9DFF98
            9AFF9A9DFF9CA1FF9DA3FF989DFF979CFFE3E5FFFFFFFF9699FF8A8DFFF3F4FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F3FF8886FF8C8AFFFFFFFF
            DCDCFF8382FF8584FF8A89FF8988FF8988FF8A89FF8A89FF8786FF8584FF8585
            FF8788FF8789FF8284FF7F80FFDBDCFFFFFFFF9895FF8C8AFFF4F3FFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF4F3FF8A81FF8D85FFFFFFFFF9F9FFEB
            EBFFECEBFFECECFFECECFFECECFFEDECFFF2F3FFF4F4FFEEEEFFEDECFFEDECFF
            EDECFFECEBFFECEBFFF9F9FFFFFFFF9891FF8D85FFF4F3FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFF4F2FF8D7DFF8E80FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF3F1FFEBE8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9A8CFF9081FFF4F2FFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFF4F2FF8D7AFF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB5A8FF6649FF6144FFA595FFFCFBFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF9B8AFF917EFFF4F2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFF4F2FF9077FF9279FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
            B1FF6946FFBFB0FFCBC0FF6D4CFFB4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9C87FF937AFFF4F2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
            F4F1FF8C69FF987AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C80FF9677
            FFFEFDFFFFFFFF9B7EFF9274FFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4
            8AFF906FFFF4F1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFF9F7FFA5
            86FF6129FF9974FFA383FFA484FFA383FFA687FF9C78FF7241FFB39AFFFFFFFF
            FFFFFFB399FF6D3CFF9976FFA687FFA383FFA483FFA483FF9A76FF642CFFA07F
            FFF8F6FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFEFFF1EBFFBEA6
            FF966BFF560FFF5008FF530DFF540EFF4C02FF5610FFC3ABFFFFFFFFFFFFFFC3
            AAFF5712FF4D04FF540DFF530DFF5209FF5109FF9367FFBCA1FFEEE8FFFFFEFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFF2ECFF
            B999FF9D71FFA57CFFA77EFFA278FF8045FF9360FFC8ACFFC8ADFF9360FF7C40
            FFA075FFA77FFFA57CFF9F71FFB492FFF0EAFFFDFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFD
            FCFFFDFCFFFDFCFFFDFCFFD8C2FF6A1DFF5204FF5304FF6517FFD4BEFFFDFCFF
            FDFCFFFDFCFFFDFCFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          Layout = blGlyphTop
          TabOrder = 9
        end
        object gp_PED_AGRUPA: TGroupBox
          Left = 3
          Top = 75
          Width = 670
          Height = 450
          Caption = 'PEDIDOS E SEUS ITENS'
          TabOrder = 10
          object Label26: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 660
            Height = 14
            Align = alTop
            Alignment = taRightJustify
            Caption = 'Selecione um pedido clicando na linha abaixo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            ExplicitLeft = 438
            ExplicitWidth = 227
          end
          object Label27: TLabel
            Left = 524
            Top = 118
            Width = 141
            Height = 14
            Alignment = taRightJustify
            Caption = 'Itens que compoem o pedido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object DBGrid9: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 38
            Width = 660
            Height = 100
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
                Title.Caption = 'COD. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMITVENDA'
                Title.Caption = 'DT EMIT. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODTIPOMOV'
                Title.Caption = 'TIPO MOV.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCVENDA'
                Title.Caption = 'DOC. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCLI'
                Title.Caption = 'COD.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_RAZCLIENTE'
                Title.Caption = 'CLIENTE'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLIQVENDA'
                Title.Caption = 'VLR. LIQ. VENDA'
                Width = 85
                Visible = True
              end>
          end
          object DBGrid10: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 144
            Width = 660
            Height = 300
            Align = alTop
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODITVENDA'
                Title.Caption = 'ITEM'
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPROD'
                Title.Caption = 'COD'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODLOTE'
                Title.Caption = 'LOTE'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODNAT'
                Title.Caption = 'CFOP'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_DESCPRODUTO'
                Title.Caption = 'DESCRICAO'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDITVENDA'
                Title.Caption = 'QTD'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODALMOX'
                Title.Caption = 'ALX'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOITVENDA'
                Title.Caption = 'PRE'#199'O'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCITVENDA'
                Title.Caption = 'DESCONTO'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRODITVENDA'
                Title.Caption = 'TOTAL'
                Width = 80
                Visible = True
              end>
          end
        end
        object btn_FECHAR_AGRUPA: TBitBtn
          Left = 51
          Top = 592
          Width = 48
          Height = 52
          Caption = 'Fecha&r'
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
          TabOrder = 11
        end
      end
      object pg_VENDAFUTURA: TTabSheet
        Caption = 'PEDIDO VENDA FUTURA'
        ImageIndex = 3
        object rg_FUTURA: TRadioGroup
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 729
          Height = 32
          Align = alTop
          Caption = 'TIPO DE BUSCA'
          Color = clMoneyGreen
          Columns = 5
          Items.Strings = (
            'Todos por C'#243'digo'
            'Por Datas'
            'Por Pedido'
            'Por Cliente')
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 729
          Height = 35
          Align = alTop
          Caption = 'PAR'#194'METROS'
          TabOrder = 1
          object lbl_PESQUISAFUTURA: TLabel
            Left = 16
            Top = 15
            Width = 150
            Height = 13
            AutoSize = False
          end
          object lbl_ATEFUTURA: TLabel
            Left = 280
            Top = 15
            Width = 40
            Height = 13
            AutoSize = False
          end
          object sp_FUTURA: TSpeedButton
            Left = 432
            Top = 10
            Width = 25
            Height = 25
            Hint = 
              'Clique Aqui para Fazer a Busca | Selecione o Pedido clicando na ' +
              'linha abaixo | 1'
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
          end
          object msk_PESQUISAFUTURA1: TMaskEdit
            Left = 172
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 0
            Text = ''
            Visible = False
          end
          object msk_PESQUISAFUTURA2: TMaskEdit
            Left = 326
            Top = 12
            Width = 100
            Height = 21
            TabOrder = 1
            Text = ''
            Visible = False
          end
          object btn_BUSCAVDFUTURA: TBitBtn
            Left = 484
            Top = 9
            Width = 75
            Height = 25
            Caption = 'btn_BUSCAVDFUTURA'
            TabOrder = 2
            Visible = False
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 82
          Width = 729
          Height = 238
          Align = alTop
          Caption = 'PEDIDOS E SEUS ITENS'
          TabOrder = 2
          object Label30: TLabel
            Left = 440
            Top = 6
            Width = 227
            Height = 14
            Alignment = taRightJustify
            Caption = 'Selecione um pedido clicando na linha abaixo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 524
            Top = 112
            Width = 141
            Height = 14
            Alignment = taRightJustify
            Caption = 'Itens que compoem o pedido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object DBGrid6: TDBGrid
            Left = 8
            Top = 20
            Width = 656
            Height = 95
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
                Title.Caption = 'ID VENDA'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTEMITVENDA'
                Title.Caption = 'EMISS'#195'O'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODTIPOMOV'
                Title.Caption = 'MOV.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCVENDA'
                Title.Caption = 'DOC. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_SIGLAUF'
                Title.Caption = 'UF'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_PESSOACLIENTE'
                Title.Caption = 'F/J'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODCLI'
                Title.Caption = 'COD.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_RAZCLIENTE'
                Title.Caption = 'CLIENTE'
                Width = 190
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRLIQVENDA'
                Title.Caption = 'VLR. LIQ. VENDA'
                Width = 85
                Visible = True
              end>
          end
          object DBGrid7: TDBGrid
            Left = 12
            Top = 125
            Width = 656
            Height = 110
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODITVENDA'
                Title.Caption = 'ID'
                Width = 17
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPROD'
                Title.Caption = 'COD'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODLOTE'
                Title.Caption = 'LOTE'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODNAT'
                Title.Caption = 'CFOP'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_DESCPRODUTO'
                Title.Caption = 'DESCRICAO'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDITVENDA'
                Title.Caption = 'QTD'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODALMOX'
                Title.Caption = 'ALX'
                Width = 23
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECOITVENDA'
                Title.Caption = 'PRE'#199'O'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCITVENDA'
                Title.Caption = 'DESCONTO'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRODITVENDA'
                Title.Caption = 'TOTAL'
                Width = 80
                Visible = True
              end>
          end
        end
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 326
          Width = 729
          Height = 60
          Align = alTop
          Caption = 'GERA VENDA FUTURA'
          TabOrder = 3
          object btn_VDXFUTURA: TBitBtn
            AlignWithMargins = True
            Left = 7
            Top = 20
            Width = 325
            Height = 30
            Caption = 'Venda => Venda Futura'
            TabOrder = 0
          end
          object BitBtn6: TBitBtn
            Left = 338
            Top = 20
            Width = 325
            Height = 30
            Caption = 'Gera Documento'
            TabOrder = 1
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 392
          Width = 729
          Height = 190
          Align = alTop
          Caption = 'MOVIMENTO VENDA FUTURA x SALDO DISPON'#205'VEL'
          TabOrder = 4
          object Label32: TLabel
            Left = 5
            Top = 107
            Width = 77
            Height = 13
            Caption = 'Saldo Dispon'#237'vel'
          end
          object Label33: TLabel
            Left = 96
            Top = 107
            Width = 62
            Height = 13
            Caption = 'Saldo Cliente'
          end
          object Label34: TLabel
            Left = 184
            Top = 107
            Width = 38
            Height = 13
            Caption = 'Entrega'
          end
          object edt_SLDDISPONIVEL: TEdit
            Left = 5
            Top = 127
            Width = 82
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_SLDCLIENTE: TEdit
            Left = 96
            Top = 127
            Width = 82
            Height = 21
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_QTDENTREGA: TEdit
            Left = 184
            Top = 127
            Width = 82
            Height = 21
            TabOrder = 2
          end
          object btn_PROCESSAENTREGA: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 155
            Width = 719
            Height = 30
            Align = alBottom
            Caption = 'Processa Entrega +Termo de Entrega'
            Enabled = False
            TabOrder = 3
          end
          object DBGrid11: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 719
            Height = 87
            Align = alTop
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
                FieldName = '_PRODUTO'
                Title.Caption = 'PRODUTO'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOCVENDA'
                Title.Caption = 'DOC. VENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SLDCONSIG'
                Title.Caption = 'SLD. CONSIG.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SLDRESID'
                Title.Caption = 'SLD. RESID.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDULTRETIRADA'
                Title.Caption = 'QTD. ULT. RETIRADA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTULTRETIRADA'
                Title.Caption = 'DT. ULT. RETIRADA'
                Visible = True
              end>
          end
        end
        object BitBtn4: TBitBtn
          Left = 618
          Top = 588
          Width = 48
          Height = 52
          Caption = 'Fecha&r'
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
          TabOrder = 5
        end
      end
    end
  end
  object zqry_VDVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'SELECT codvenda, dtemitvenda, codtipomov, docvenda, codcli, vlrl' +
        'iqvenda from vdvenda')
    Params = <>
    Left = 603
    Top = 218
    object zqry_VDVENDACODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDVENDADTEMITVENDA: TDateField
      FieldName = 'DTEMITVENDA'
      Required = True
    end
    object zqry_VDVENDACODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_VDVENDADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
      Required = True
    end
    object zqry_VDVENDACODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDVENDAVLRLIQVENDA: TFloatField
      FieldName = 'VLRLIQVENDA'
    end
  end
  object zdts_VDVENDA: TDataSource
    DataSet = zqry_VDVENDA
    Left = 667
    Top = 218
  end
end
