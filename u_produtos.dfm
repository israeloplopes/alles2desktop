inherited frm_CAD_PRODUTOS: Tfrm_CAD_PRODUTOS
  Caption = 'CADASTRA'
  ClientHeight = 671
  ClientWidth = 929
  OnDestroy = FormDestroy
  ExplicitWidth = 935
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  object Label23: TLabel [0]
    Left = 584
    Top = 72
    Width = 37
    Height = 13
    Caption = 'Label23'
  end
  inherited pn_CABECALHO: TPanel
    Width = 929
    ExplicitWidth = 929
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 161
      Top = 5
      Width = 450
      Height = 31
      Align = alLeft
      Alignment = taCenter
      DataField = 'DESCPROD'
      DataSource = zdts_CADASTRO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited pn_BOTOES: TPanel
    Width = 929
    ExplicitWidth = 929
    inherited lbl_STATUS_DADOS: TLabel
      Left = 850
      ExplicitLeft = 850
    end
    inherited btn_SAI: TBitBtn
      Left = 890
      ExplicitLeft = 890
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 652
    Width = 929
    ExplicitTop = 652
    ExplicitWidth = 929
  end
  inherited DBGrid2: TDBGrid
    Top = 529
    Width = 923
    Columns = <
      item
        Expanded = False
        FieldName = 'CODPROD'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFPROD'
        Title.Caption = 'Refer'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBARPROD'
        Title.Caption = 'EAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFABPROD'
        Title.Caption = 'C'#243'd. Fabricante'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODBALANCA'
        Title.Caption = 'C'#243'd. Balan'#231'a'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCPROD'
        Title.Caption = 'Descri'#231#227'o'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTOINFOPROD'
        Title.Caption = 'Custo Informado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECOBASEPROD'
        Title.Caption = 'Pre'#231'o Base'
        Visible = True
      end>
  end
  object PageControl1: TPageControl [5]
    AlignWithMargins = True
    Left = 3
    Top = 90
    Width = 923
    Height = 433
    ActivePage = ts_BASICO
    Align = alClient
    TabOrder = 4
    object ts_BASICO: TTabSheet
      Caption = 'B'#193'SICO'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 3
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 91
        Top = 3
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 215
        Top = 3
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 541
        Top = 3
        Width = 87
        Height = 13
        Caption = 'C'#243'digo Fabricante'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 665
        Top = 3
        Width = 91
        Height = 13
        Caption = 'C'#243'digo Barras/EAN'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 789
        Top = 3
        Width = 73
        Height = 13
        Caption = 'C'#243'digo Balan'#231'a'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 3
        Top = 49
        Width = 81
        Height = 13
        Caption = 'Custo Informado'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 3
        Top = 94
        Width = 53
        Height = 13
        Caption = 'Pre'#231'o Base'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 91
        Top = 94
        Width = 75
        Height = 13
        Caption = 'Pre'#231'o Comiss'#227'o'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 88
        Top = 48
        Width = 75
        Height = 13
        Caption = 'Dt. Ult. Compra'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 176
        Top = 48
        Width = 82
        Height = 13
        Caption = 'Qtd. Ult. Compra'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 264
        Top = 48
        Width = 59
        Height = 13
        Caption = 'Custo M'#233'dio'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 355
        Top = 48
        Width = 49
        Height = 13
        Caption = 'Custo PES'
        FocusControl = DBEdit13
      end
      object Label14: TLabel
        Left = 179
        Top = 94
        Width = 59
        Height = 13
        Caption = '% Comiss'#227'o'
        FocusControl = DBEdit14
      end
      object Label24: TLabel
        Left = 1
        Top = 224
        Width = 63
        Height = 13
        Caption = 'Almoxarifado'
      end
      object sp_ALMOXARIFADO: TSpeedButton
        Left = 152
        Top = 240
        Width = 23
        Height = 22
        Caption = '+'
        OnClick = sp_ALMOXARIFADOClick
      end
      object Label25: TLabel
        Left = 181
        Top = 224
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object sp_MARCA: TSpeedButton
        Left = 332
        Top = 240
        Width = 23
        Height = 22
        Caption = '+'
        OnClick = sp_MARCAClick
      end
      object sp_GRUPO: TSpeedButton
        Left = 512
        Top = 240
        Width = 23
        Height = 22
        Caption = '+'
      end
      object Label26: TLabel
        Left = 361
        Top = 224
        Width = 34
        Height = 13
        Caption = 'Grupos'
      end
      object sp_UNIDADE: TSpeedButton
        Left = 694
        Top = 240
        Width = 23
        Height = 22
        Caption = '+'
        OnClick = sp_UNIDADEClick
      end
      object Label27: TLabel
        Left = 541
        Top = 224
        Width = 39
        Height = 13
        Caption = 'Unidade'
      end
      object Label28: TLabel
        Left = 1
        Top = 267
        Width = 22
        Height = 13
        Caption = 'NCM'
      end
      object sp_NCM: TSpeedButton
        Left = 152
        Top = 286
        Width = 23
        Height = 22
        Caption = '+'
      end
      object DBEdit1: TDBEdit
        Left = 3
        Top = 22
        Width = 82
        Height = 21
        DataField = 'CODPROD'
        DataSource = zdts_CADASTRO
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 91
        Top = 22
        Width = 118
        Height = 21
        DataField = 'REFPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 1
        OnExit = DBEdit2Exit
      end
      object DBEdit3: TDBEdit
        Left = 215
        Top = 22
        Width = 320
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 541
        Top = 22
        Width = 118
        Height = 21
        DataField = 'CODFABPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 3
        OnExit = DBEdit4Exit
      end
      object DBEdit5: TDBEdit
        Left = 665
        Top = 22
        Width = 118
        Height = 21
        DataField = 'CODBARPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 789
        Top = 22
        Width = 118
        Height = 21
        DataField = 'CODBALANCA'
        DataSource = zdts_CADASTRO
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 3
        Top = 68
        Width = 82
        Height = 21
        DataField = 'CUSTOINFOPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 3
        Top = 113
        Width = 82
        Height = 21
        DataField = 'PRECOBASEPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 91
        Top = 113
        Width = 82
        Height = 21
        DataField = 'PRECOCOMISPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 8
        OnExit = DBEdit9Exit
      end
      object DBEdit10: TDBEdit
        Left = 91
        Top = 68
        Width = 82
        Height = 21
        DataField = 'DTULTCPPROD'
        DataSource = zdts_CADASTRO
        ParentColor = True
        ReadOnly = True
        TabOrder = 16
      end
      object DBEdit11: TDBEdit
        Left = 179
        Top = 67
        Width = 82
        Height = 21
        DataField = 'QTDULTCPPROD'
        DataSource = zdts_CADASTRO
        ParentColor = True
        ReadOnly = True
        TabOrder = 17
      end
      object DBEdit12: TDBEdit
        Left = 267
        Top = 67
        Width = 82
        Height = 21
        DataField = 'CUSTOMPMPROD'
        DataSource = zdts_CADASTRO
        ParentColor = True
        ReadOnly = True
        TabOrder = 18
      end
      object DBEdit13: TDBEdit
        Left = 355
        Top = 67
        Width = 82
        Height = 21
        DataField = 'CUSTOPEPSPROD'
        DataSource = zdts_CADASTRO
        ParentColor = True
        ReadOnly = True
        TabOrder = 19
      end
      object DBEdit14: TDBEdit
        Left = 179
        Top = 113
        Width = 82
        Height = 21
        DataField = 'COMISPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 9
        OnExit = DBEdit14Exit
      end
      object GroupBox1: TGroupBox
        Left = 443
        Top = 49
        Width = 464
        Height = 85
        Caption = 'SALDOS'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        object Label15: TLabel
          Left = 11
          Top = 21
          Width = 26
          Height = 13
          Caption = 'Saldo'
          FocusControl = DBEdit15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 104
          Top = 24
          Width = 73
          Height = 13
          Caption = 'Sld. Reservado'
          FocusControl = DBEdit16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 192
          Top = 24
          Width = 77
          Height = 13
          Caption = 'Sld. Consignado'
          FocusControl = DBEdit17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 280
          Top = 24
          Width = 54
          Height = 13
          Caption = 'Sld. L'#237'quido'
          FocusControl = DBEdit18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 368
          Top = 24
          Width = 78
          Height = 13
          Caption = 'Sld. Indispon'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit15: TDBEdit
          Left = 11
          Top = 40
          Width = 86
          Height = 33
          DataField = 'SLDPROD'
          DataSource = zdts_CADASTRO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 104
          Top = 40
          Width = 82
          Height = 21
          DataField = 'SLDRESPROD'
          DataSource = zdts_CADASTRO
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 192
          Top = 40
          Width = 82
          Height = 21
          DataField = 'SLDCONSIGPROD'
          DataSource = zdts_CADASTRO
          ParentColor = True
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 280
          Top = 40
          Width = 82
          Height = 21
          DataField = 'SLDLIQPROD'
          DataSource = zdts_CADASTRO
          ParentColor = True
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit19: TDBEdit
          Left = 368
          Top = 40
          Width = 82
          Height = 21
          DataField = 'SLDINDISPONIVEL'
          DataSource = zdts_CADASTRO
          ParentColor = True
          TabOrder = 4
        end
      end
      object pn_CLASSIFICACAO: TPanel
        Left = 0
        Top = 140
        Width = 915
        Height = 69
        Color = clSilver
        ParentBackground = False
        TabOrder = 10
        object Label19: TLabel
          Left = 15
          Top = 15
          Width = 81
          Height = 13
          Caption = 'Produto/Servi'#231'o:'
        end
        object Label21: TLabel
          Left = 330
          Top = 15
          Width = 76
          Height = 13
          Caption = 'Cadastro para: '
        end
        object Label22: TLabel
          Left = 595
          Top = 15
          Width = 75
          Height = 13
          Caption = 'Sobre o Custo: '
        end
        object cb_CLASSPRODUTO: TComboBox
          Left = 115
          Top = 10
          Width = 200
          Height = 21
          TabOrder = 0
        end
        object cb_CADASTROPARA: TComboBox
          Left = 430
          Top = 10
          Width = 150
          Height = 21
          TabOrder = 1
        end
        object cb_SOBRECUSTO: TComboBox
          Left = 695
          Top = 10
          Width = 150
          Height = 21
          TabOrder = 2
        end
        object ch_ATIVOPROD: TCheckBox
          Left = 15
          Top = 40
          Width = 110
          Height = 17
          Caption = 'Ativo?'
          TabOrder = 3
        end
        object ch_PROMOCAO: TCheckBox
          Left = 125
          Top = 40
          Width = 110
          Height = 17
          Caption = 'Promo'#231#227'o?'
          TabOrder = 4
        end
        object ch_LOTE: TCheckBox
          Left = 235
          Top = 40
          Width = 110
          Height = 17
          Caption = 'Tem Lote?'
          TabOrder = 5
        end
        object ch_RECAGRO: TCheckBox
          Left = 345
          Top = 40
          Width = 110
          Height = 17
          Caption = 'Rec. Agron'#244'mico?'
          TabOrder = 6
          OnClick = ch_RECAGROClick
        end
        object ch_RASTREIO: TCheckBox
          Left = 455
          Top = 40
          Width = 110
          Height = 17
          Caption = 'Rastrear?'
          TabOrder = 7
        end
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 1
        Top = 240
        Width = 145
        Height = 21
        DataField = 'CODALMOX'
        DataSource = zdts_CADASTRO
        KeyField = 'CODALMOX'
        ListField = 'DESCALMOX'
        ListSource = zdts_EQALMOX
        TabOrder = 11
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 181
        Top = 240
        Width = 145
        Height = 21
        DataField = 'CODMARCA'
        DataSource = zdts_CADASTRO
        KeyField = 'CODMARCA'
        ListField = 'DESCMARCA'
        ListSource = zdts_EQMARCA
        TabOrder = 12
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 361
        Top = 240
        Width = 145
        Height = 21
        DataField = 'CODGRUP'
        DataSource = zdts_CADASTRO
        KeyField = 'CODGRUP'
        ListField = 'DESCGRUP'
        ListSource = zdts_EQGRUPO
        TabOrder = 13
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 541
        Top = 240
        Width = 145
        Height = 21
        DataField = 'CODUNID'
        DataSource = zdts_CADASTRO
        KeyField = 'CODUNID'
        ListField = 'DESCUNID'
        ListSource = zdts_EQUNIDADE
        TabOrder = 14
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 1
        Top = 286
        Width = 145
        Height = 21
        DataField = 'CODFISC'
        DataSource = zdts_CADASTRO
        KeyField = 'CODFISC'
        ListField = 'CODFISC'
        ListSource = zdts_NCM
        TabOrder = 15
      end
    end
    object ts_AVANCADO: TTabSheet
      Caption = 'AVAN'#199'ADO'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 70
        Align = alTop
        Caption = 'GERAIS'
        TabOrder = 0
        object Label29: TLabel
          Left = 11
          Top = 19
          Width = 24
          Height = 13
          Caption = 'RFID'
          FocusControl = DBEdit20
        end
        object Label30: TLabel
          Left = 99
          Top = 19
          Width = 38
          Height = 13
          Caption = 'FINAME'
          FocusControl = DBEdit21
        end
        object Label31: TLabel
          Left = 187
          Top = 19
          Width = 22
          Height = 13
          Caption = 'MDA'
          FocusControl = DBEdit22
        end
        object Label32: TLabel
          Left = 277
          Top = 19
          Width = 70
          Height = 13
          Caption = 'Pts. Fidelidade'
          FocusControl = DBEdit23
        end
        object Label33: TLabel
          Left = 363
          Top = 19
          Width = 29
          Height = 13
          Caption = 'Curva'
          FocusControl = DBEdit24
        end
        object Label34: TLabel
          Left = 400
          Top = 19
          Width = 59
          Height = 13
          Caption = 'Multiplicador'
          FocusControl = DBEdit25
        end
        object Label37: TLabel
          Left = 489
          Top = 19
          Width = 51
          Height = 13
          Caption = 'Qt. M'#237'nima'
          FocusControl = DBEdit28
        end
        object Label38: TLabel
          Left = 578
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Qt. M'#225'xima'
          FocusControl = DBEdit29
        end
        object Label52: TLabel
          Left = 667
          Top = 19
          Width = 98
          Height = 13
          Caption = 'C'#243'd. Mix de Produto'
          FocusControl = DBEdit43
        end
        object DBEdit20: TDBEdit
          Left = 10
          Top = 38
          Width = 82
          Height = 21
          DataField = 'CODRFIDPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 0
        end
        object DBEdit21: TDBEdit
          Left = 99
          Top = 38
          Width = 82
          Height = 21
          DataField = 'FINAME'
          DataSource = zdts_CADASTRO
          TabOrder = 1
        end
        object DBEdit22: TDBEdit
          Left = 188
          Top = 38
          Width = 82
          Height = 21
          DataField = 'MDA'
          DataSource = zdts_CADASTRO
          TabOrder = 2
        end
        object DBEdit23: TDBEdit
          Left = 277
          Top = 38
          Width = 82
          Height = 21
          DataField = 'PTSFIDELIDADE'
          DataSource = zdts_CADASTRO
          TabOrder = 3
        end
        object DBEdit24: TDBEdit
          Left = 366
          Top = 38
          Width = 17
          Height = 21
          DataField = 'CURVA'
          DataSource = zdts_CADASTRO
          TabOrder = 4
        end
        object DBEdit25: TDBEdit
          Left = 400
          Top = 38
          Width = 82
          Height = 21
          DataField = 'MULTIPLICADOR'
          DataSource = zdts_CADASTRO
          TabOrder = 5
        end
        object DBEdit28: TDBEdit
          Left = 489
          Top = 38
          Width = 82
          Height = 21
          DataField = 'QTDMINPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 6
        end
        object DBEdit29: TDBEdit
          Left = 578
          Top = 38
          Width = 82
          Height = 21
          DataField = 'QTDMAXPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 7
        end
        object DBEdit43: TDBEdit
          Left = 667
          Top = 38
          Width = 82
          Height = 21
          DataField = 'CODMIX'
          DataSource = zdts_CADASTRO
          TabOrder = 8
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 79
        Width = 909
        Height = 70
        Align = alTop
        Caption = 'MEDIDAS'
        TabOrder = 1
        object Label35: TLabel
          Left = 10
          Top = 19
          Width = 59
          Height = 13
          Caption = 'Peso L'#237'quido'
          FocusControl = DBEdit26
        end
        object Label36: TLabel
          Left = 101
          Top = 19
          Width = 52
          Height = 13
          Caption = 'Peso Bruto'
          FocusControl = DBEdit27
        end
        object Label39: TLabel
          Left = 184
          Top = 19
          Width = 50
          Height = 13
          Caption = 'Densidade'
          FocusControl = DBEdit30
        end
        object Label40: TLabel
          Left = 272
          Top = 19
          Width = 67
          Height = 13
          Caption = 'Concentra'#231#227'o'
          FocusControl = DBEdit31
        end
        object Label41: TLabel
          Left = 360
          Top = 19
          Width = 63
          Height = 13
          Caption = 'Comprimento'
          FocusControl = DBEdit32
        end
        object Label42: TLabel
          Left = 448
          Top = 19
          Width = 37
          Height = 13
          Caption = 'Largura'
          FocusControl = DBEdit33
        end
        object Label43: TLabel
          Left = 536
          Top = 19
          Width = 49
          Height = 13
          Caption = 'Espessura'
          FocusControl = DBEdit34
        end
        object Label49: TLabel
          Left = 624
          Top = 19
          Width = 45
          Height = 13
          Caption = 'Cubagem'
          FocusControl = DBEdit40
        end
        object Label50: TLabel
          Left = 712
          Top = 19
          Width = 79
          Height = 13
          Caption = 'Qtd. Embalagem'
          FocusControl = DBEdit41
        end
        object DBEdit26: TDBEdit
          Left = 10
          Top = 38
          Width = 82
          Height = 21
          DataField = 'PESOLIQPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 0
        end
        object DBEdit27: TDBEdit
          Left = 99
          Top = 38
          Width = 82
          Height = 21
          DataField = 'PESOBRUTPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 1
        end
        object DBEdit30: TDBEdit
          Left = 187
          Top = 38
          Width = 82
          Height = 21
          DataField = 'VLRDENSIDADE'
          DataSource = zdts_CADASTRO
          TabOrder = 2
        end
        object DBEdit31: TDBEdit
          Left = 272
          Top = 38
          Width = 82
          Height = 21
          DataField = 'VLRCONCENT'
          DataSource = zdts_CADASTRO
          TabOrder = 3
        end
        object DBEdit32: TDBEdit
          Left = 360
          Top = 38
          Width = 82
          Height = 21
          DataField = 'COMPRIMENTO'
          DataSource = zdts_CADASTRO
          TabOrder = 4
        end
        object DBEdit33: TDBEdit
          Left = 448
          Top = 38
          Width = 82
          Height = 21
          DataField = 'LARGURA'
          DataSource = zdts_CADASTRO
          TabOrder = 5
        end
        object DBEdit34: TDBEdit
          Left = 536
          Top = 38
          Width = 82
          Height = 21
          DataField = 'ESPESSURA'
          DataSource = zdts_CADASTRO
          TabOrder = 6
        end
        object DBEdit40: TDBEdit
          Left = 624
          Top = 38
          Width = 82
          Height = 21
          DataField = 'CUBAGEM'
          DataSource = zdts_CADASTRO
          TabOrder = 7
        end
        object DBEdit41: TDBEdit
          Left = 711
          Top = 38
          Width = 82
          Height = 21
          DataField = 'QTDEMBALAGEM'
          DataSource = zdts_CADASTRO
          TabOrder = 8
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 155
        Width = 909
        Height = 70
        Align = alTop
        Caption = 'OUTROS'
        TabOrder = 2
        object Label48: TLabel
          Left = 10
          Top = 19
          Width = 80
          Height = 13
          Caption = 'Local do Produto'
          FocusControl = DBEdit39
        end
        object DBEdit39: TDBEdit
          Left = 10
          Top = 38
          Width = 171
          Height = 21
          DataField = 'LOCALPROD'
          DataSource = zdts_CADASTRO
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 231
        Width = 909
        Height = 70
        Align = alTop
        Caption = 
          'CERTIFICA'#199#195'O FSC (Forest Stewardship Council) - Certifica'#231#227'o Flo' +
          'restal'
        TabOrder = 3
        object Label44: TLabel
          Left = 465
          Top = 11
          Width = 45
          Height = 13
          Caption = 'CERTFSC'
          FocusControl = DBEdit35
          Visible = False
        end
        object Label45: TLabel
          Left = 115
          Top = 19
          Width = 50
          Height = 13
          Caption = 'N.'#186' Planos'
          FocusControl = DBEdit36
        end
        object Label46: TLabel
          Left = 202
          Top = 19
          Width = 64
          Height = 13
          Caption = 'Qt. por Plano'
          FocusControl = DBEdit37
        end
        object Label47: TLabel
          Left = 289
          Top = 19
          Width = 48
          Height = 13
          Caption = 'Fator FSC'
          FocusControl = DBEdit38
        end
        object DBEdit35: TDBEdit
          Left = 465
          Top = 30
          Width = 17
          Height = 21
          DataField = 'CERTFSC'
          DataSource = zdts_CADASTRO
          TabOrder = 0
          Visible = False
        end
        object DBEdit36: TDBEdit
          Left = 115
          Top = 38
          Width = 82
          Height = 21
          DataField = 'NROPLANOS'
          DataSource = zdts_CADASTRO
          TabOrder = 1
        end
        object DBEdit37: TDBEdit
          Left = 202
          Top = 38
          Width = 82
          Height = 21
          DataField = 'QTDPORPLANO'
          DataSource = zdts_CADASTRO
          TabOrder = 2
        end
        object DBEdit38: TDBEdit
          Left = 289
          Top = 38
          Width = 82
          Height = 21
          DataField = 'FATORFSC'
          DataSource = zdts_CADASTRO
          TabOrder = 3
        end
        object CheckBox1: TCheckBox
          Left = 10
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Certifica'#231#227'o FSC'
          TabOrder = 4
        end
      end
    end
    object ts_RECAGRO: TTabSheet
      Caption = 'REC. AGRON'#212'MICO'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label51: TLabel
        Left = 3
        Top = 3
        Width = 59
        Height = 13
        Caption = 'Interv. Seg.'
        FocusControl = DBEdit42
      end
      object Label53: TLabel
        Left = 91
        Top = 3
        Width = 65
        Height = 13
        Caption = 'Classe T'#243'xico'
        FocusControl = DBEdit44
      end
      object Label54: TLabel
        Left = 179
        Top = 3
        Width = 69
        Height = 13
        Caption = 'Grupo Qu'#237'mico'
        FocusControl = DBEdit45
      end
      object Label55: TLabel
        Left = 3
        Top = 49
        Width = 66
        Height = 13
        Caption = 'Nome T'#233'cnico'
        FocusControl = DBEdit46
      end
      object Label56: TLabel
        Left = 255
        Top = 49
        Width = 67
        Height = 13
        Caption = 'Princ'#237'pio Ativo'
        FocusControl = DBEdit47
      end
      object Label57: TLabel
        Left = 3
        Top = 95
        Width = 57
        Height = 13
        Caption = 'C'#243'd. Classe'
        FocusControl = DBEdit48
      end
      object Label58: TLabel
        Left = 91
        Top = 95
        Width = 31
        Height = 13
        Caption = 'Classe'
        FocusControl = DBEdit49
      end
      object Label60: TLabel
        Left = 255
        Top = 95
        Width = 67
        Height = 13
        Caption = 'Concentra'#231#227'o'
        FocusControl = DBEdit50
      end
      object Label61: TLabel
        Left = 507
        Top = 49
        Width = 55
        Height = 13
        Caption = 'Formula'#231#227'o'
        FocusControl = DBEdit51
      end
      object Label62: TLabel
        Left = 3
        Top = 141
        Width = 41
        Height = 13
        Caption = 'Ant'#237'doto'
      end
      object DBEdit42: TDBEdit
        Left = 3
        Top = 22
        Width = 82
        Height = 21
        DataField = 'INTERVSEGUR'
        DataSource = zdts_CADASTRO
        TabOrder = 0
      end
      object DBEdit44: TDBEdit
        Left = 91
        Top = 22
        Width = 82
        Height = 21
        DataField = 'CLASSETOXICO'
        DataSource = zdts_CADASTRO
        TabOrder = 1
      end
      object DBEdit45: TDBEdit
        Left = 179
        Top = 22
        Width = 164
        Height = 21
        DataField = 'GRUPOQUIMICO'
        DataSource = zdts_CADASTRO
        TabOrder = 2
      end
      object DBEdit46: TDBEdit
        Left = 3
        Top = 68
        Width = 246
        Height = 21
        DataField = 'NOMETECNICO'
        DataSource = zdts_CADASTRO
        TabOrder = 3
      end
      object DBEdit47: TDBEdit
        Left = 255
        Top = 68
        Width = 246
        Height = 21
        DataField = 'PRINCIPIOATIVO'
        DataSource = zdts_CADASTRO
        TabOrder = 4
      end
      object DBEdit48: TDBEdit
        Left = 3
        Top = 114
        Width = 17
        Height = 21
        DataField = 'CODCLASSE'
        DataSource = zdts_CADASTRO
        TabOrder = 5
      end
      object DBEdit49: TDBEdit
        Left = 91
        Top = 114
        Width = 158
        Height = 21
        DataField = 'CLASSE'
        DataSource = zdts_CADASTRO
        TabOrder = 6
      end
      object DBEdit50: TDBEdit
        Left = 255
        Top = 114
        Width = 246
        Height = 21
        DataField = 'CONCENTRACAO'
        DataSource = zdts_CADASTRO
        TabOrder = 7
      end
      object DBEdit51: TDBEdit
        Left = 507
        Top = 68
        Width = 246
        Height = 21
        DataField = 'FORMULACAO'
        DataSource = zdts_CADASTRO
        TabOrder = 8
      end
      object DBEdit52: TDBEdit
        Left = 3
        Top = 160
        Width = 750
        Height = 21
        DataField = 'ANTIDOTO'
        DataSource = zdts_CADASTRO
        TabOrder = 9
      end
    end
    object ts_PRECOS: TTabSheet
      Caption = 'PRE'#199'OS'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 300
        Align = alTop
        DataSource = zdts_PRECO
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRECOPROD'
            Title.Caption = 'C'#211'D.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_CLASSCLI'
            Title.Caption = 'CLASS. CLIENTE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_TABPRECO'
            Title.Caption = 'TABELA PRE'#199'O'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_PLANOPAG'
            Title.Caption = 'PLANO PAG.'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVOPRECOPROD'
            Title.Caption = 'ATIVO?'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPRECOPROD'
            Title.Caption = 'TIPO PRE'#199'O'
            Visible = True
          end>
      end
    end
    object ts_FORNEC: TTabSheet
      Caption = 'FORNECEDORES'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 300
        Align = alTop
        DataSource = zdts_PRODFOR
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RAZAO FORNECEDOR'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFPRODFOR'
            Title.Caption = 'REF. PRODUTO'
            Visible = True
          end>
      end
    end
    object ts_FOTOS: TTabSheet
      Caption = 'FOTOS'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object ts_WMS: TTabSheet
      Caption = 'WMS'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label65: TLabel
        Left = 3
        Top = 3
        Width = 24
        Height = 13
        Caption = 'RFID'
        FocusControl = DBEdit56
      end
      object Label64: TLabel
        Left = 143
        Top = 3
        Width = 79
        Height = 13
        Caption = 'Prazo Reposi'#231#227'o'
        FocusControl = DBEdit55
      end
      object DBEdit56: TDBEdit
        Left = 3
        Top = 22
        Width = 134
        Height = 21
        DataField = 'CODRFIDPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 0
      end
      object btn_ETIQUETA: TBitBtn
        Left = 3
        Top = 49
        Width = 134
        Height = 34
        Caption = 'Etiqueta Produto'
        TabOrder = 1
      end
      object btn_SYNC: TBitBtn
        Left = 143
        Top = 49
        Width = 134
        Height = 34
        Caption = 'Sync Coletor'
        TabOrder = 2
      end
      object DBEdit55: TDBEdit
        Left = 143
        Top = 22
        Width = 134
        Height = 21
        DataField = 'PRAZOREPO'
        DataSource = zdts_CADASTRO
        TabOrder = 3
      end
    end
    object ts_WEB: TTabSheet
      Caption = 'e-COMMERCE'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label59: TLabel
        Left = 3
        Top = 3
        Width = 84
        Height = 13
        Caption = 'Descri'#231#227'o Auxiliar'
        FocusControl = DBEdit53
      end
      object Label63: TLabel
        Left = 3
        Top = 49
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit54
      end
      object DBEdit53: TDBEdit
        Left = 3
        Top = 22
        Width = 524
        Height = 21
        DataField = 'DESCAUXPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 0
      end
      object DBEdit54: TDBEdit
        Left = 3
        Top = 68
        Width = 902
        Height = 21
        DataField = 'OBSPROD'
        DataSource = zdts_CADASTRO
        TabOrder = 1
      end
    end
    object ts_LOTESERIE: TTabSheet
      Caption = 'LOTE/S'#201'RIE'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid4: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 300
        Align = alTop
        DataSource = zdts_LOTE
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODLOTE'
            Title.Caption = 'C'#211'D. LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPRODLOTE'
            Title.Caption = 'QTD.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDCONSIGLOTE'
            Title.Caption = 'SLD. CONSIG.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDLIQLOTE'
            Title.Caption = 'SLD. LIQ.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDLOTE'
            Title.Caption = 'SLD. LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDRESLOTE'
            Title.Caption = 'SLD. RESID.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCTOLOTE'
            Title.Caption = 'VENCTO. LOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DINILOTE'
            Title.Caption = 'DT. INICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIASAVISOLOTE'
            Title.Caption = 'DIAS AVISO'
            Visible = True
          end>
      end
    end
    object ts_FISCAL: TTabSheet
      Caption = 'FISCAL'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid5: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 909
        Height = 300
        Align = alTop
        DataSource = zdts_FISCAL
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited BalloonHint1: TBalloonHint
    Left = 456
    Top = 48
  end
  inherited ImageList1: TImageList
    Left = 504
    Top = 48
    Bitmap = {
      494C010103000800100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000797979D10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E4E4E42800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5BFF5B5B5BFFFAFAFA07000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C8C8C8555B5B5BFF5B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFFF1F1F116000000000000000000000000DEDEDE315B5B5BFF5B5B
      5BFF6D6D6DE20000000000000000000000000000000000000000000000000000
      0000D9D9D9395B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5BFFE2E2E22D5B5B5BFF5C5C5CFC6D6D6DE39A9A9A9DE3E3E32A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E12E5B5B5BFEFEFEFE010000000000000000FEFE
      FE025B5B5BFFEAEAEA20000000000000000000000000828282C3C8C8C8548282
      82C3C9C9C9520000000000000000000000000000000000000000FBFBFB066565
      65EF5E5E5EFA5B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7BCD5B5B5BFF0000000000000000FEFEFE01F0F0F017BCBCBC68646464F15B5B
      5BFFDCDCDC360000000000000000000000000000000000000000606060F6BBBB
      BB69F1F1F116898989B65B5B5BFFE7E7E7260000000000000000000000000000
      0000E7E7E7266C6C6CE40000000000000000000000005B5B5BFF000000005B5B
      5BFF00000000000000000000000000000000E2E2E22D696969EA5B5B5BFFCFCF
      CF4A000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5BFFA8A8
      A88600000000000000000000000000000000000000000000000000000000F9F9
      F9095B5B5BFEB3B3B37400000000000000000000000000000000898989B67272
      72DC5C5C5CFDC6C6C658707070DEE0E0E02FC1C1C15F0000000000000000C0C0
      C061DFDFDF32727272DB0000000000000000000000005B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF646464F1D9D9D93B000000000000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6BE6B3B3B3760000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5BFFFBFBFB060000000000000000000000007D7D7DCAACAC
      AC7F0000000000000000EDEDED1B5B5B5BFFBEBEBE630000000000000000BEBE
      BE665B5B5BFFEFEFEF190000000000000000000000005B5B5BFF000000000000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000005B5B5BFFFCFCFC05000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C0618B8B8BB40000000000000000000000005B5B5BFF0000
      0000000000000000000000000000DDDDDD345B5B5BFF5B5B5BFF5B5B5BFF5B5B
      5BFFDEDEDE33000000000000000000000000000000005B5B5BFF000000000000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000005B5B5BFF6B6B6BE6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F909606060F60000000000000000000000005B5B5BFF0000
      0000000000000000000000000000000000000000000000000000FAFAFA075E5E
      5EF800000000000000000000000000000000000000005B5B5BFF000000000000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000005B5B5BFFA8A8A885000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF628B8B8BB50000000000000000000000005B5B5BFF0000
      0000BABABA6BA8A8A88600000000FDFDFD036A6A6AE700000000B7B7B76E8F8F
      8FAD00000000000000000000000000000000000000005B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF767676D4AFAFAF7DF9F9F90900000000000000000000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6C6CE4B2B2B2770000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005B5B5BFFFBFBFB060000000000000000000000007F7F7FC78D8D
      8DB1CDCDCD4EBEBEBE630000000000000000848484BEFAFAFA075B5B5BFFFEFE
      FE02000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E4E429A3A3A38F5B5B5BFF5B5B5BFFC3C3C35C0000
      0000000000005B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5BFFA8A8
      A88500000000000000000000000000000000000000000000000000000000F9F9
      F9095B5B5BFEB4B4B47500000000000000000000000000000000000000007070
      70DD5C5C5CFDC5C5C55AF1F1F114EFEFEF19929292AA5B5B5BFFE4E4E4280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA07727272DB5B5B
      5BFFE4E4E4295B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7BCE5B5B5BFF969696A3E0E0E02FF4F4F411ECECEC1EBCBCBC68646464F15B5B
      5BFFDCDCDC360000000000000000000000000000000000000000000000000000
      0000F0F0F0178B8B8BB3656565EE707070DDB6B6B67200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3F3
      F3135D5D5DFB5B5B5BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBBB697E7E7EC8666666ED727272DA9A9A9A9DE3E3E32A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9A9A9D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      F7FFFFFBFFFF0000F1FFFE0387F30000F01FFC6387C30000E607C0F3AF0B0000
      CFE3C063803B00009FF9CC63BBF90000BFF9DE07BBF90000BFF9DFCFBBF90000
      BFF9D24F807B00009FF9C30FFC1B0000CFE3E01FFF830000E007F07FFFE30000
      F81FFFFFFFFB0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  inherited zqry_CADASTRO: TZQuery
    UpdateObject = nil
    SQL.Strings = (
      'select * from eqproduto')
    Left = 560
    Top = 48
    object zqry_CADASTROCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CADASTROCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CADASTROCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_CADASTRODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_CADASTROREFPROD: TWideStringField
      FieldName = 'REFPROD'
      Required = True
    end
    object zqry_CADASTROCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_CADASTROCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_CADASTROCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_CADASTROCODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_CADASTROCODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_CADASTROCODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_CADASTROCODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
      Required = True
    end
    object zqry_CADASTROCODFILIALUD: TSmallintField
      FieldName = 'CODFILIALUD'
      Required = True
    end
    object zqry_CADASTROCODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_CADASTROCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
      Required = True
    end
    object zqry_CADASTROCODFILIALFC: TSmallintField
      FieldName = 'CODFILIALFC'
      Required = True
    end
    object zqry_CADASTROCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_CADASTROCODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
      Required = True
    end
    object zqry_CADASTROCODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
      Required = True
    end
    object zqry_CADASTROCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_CADASTRODESCAUXPROD: TWideStringField
      FieldName = 'DESCAUXPROD'
      Size = 40
    end
    object zqry_CADASTROTIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Required = True
      Size = 2
    end
    object zqry_CADASTROCVPROD: TWideStringField
      FieldName = 'CVPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROCODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
      Required = True
    end
    object zqry_CADASTROCODFILIALGP: TSmallintField
      FieldName = 'CODFILIALGP'
      Required = True
    end
    object zqry_CADASTROCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_CADASTROCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_CADASTROCLOTEPROD: TWideStringField
      FieldName = 'CLOTEPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROSERIEPROD: TWideStringField
      FieldName = 'SERIEPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROCODFABPROD: TWideStringField
      FieldName = 'CODFABPROD'
      Size = 15
    end
    object zqry_CADASTROCOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_CADASTROPESOLIQPROD: TFloatField
      FieldName = 'PESOLIQPROD'
    end
    object zqry_CADASTROPESOBRUTPROD: TFloatField
      FieldName = 'PESOBRUTPROD'
    end
    object zqry_CADASTROQTDMINPROD: TFloatField
      FieldName = 'QTDMINPROD'
    end
    object zqry_CADASTROQTDMAXPROD: TFloatField
      FieldName = 'QTDMAXPROD'
    end
    object zqry_CADASTRODTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_CADASTROCUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
      currency = True
    end
    object zqry_CADASTROCUSTOPEPSPROD: TFloatField
      FieldName = 'CUSTOPEPSPROD'
      currency = True
    end
    object zqry_CADASTROCUSTOINFOPROD: TFloatField
      FieldName = 'CUSTOINFOPROD'
      currency = True
    end
    object zqry_CADASTROPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
      currency = True
    end
    object zqry_CADASTROPRECOCOMISPROD: TFloatField
      FieldName = 'PRECOCOMISPROD'
      currency = True
    end
    object zqry_CADASTROSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_CADASTROSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
    end
    object zqry_CADASTROSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
    end
    object zqry_CADASTROSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
    end
    object zqry_CADASTROATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_CADASTRODTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_CADASTROQTDULTCPPROD: TFloatField
      FieldName = 'QTDULTCPPROD'
    end
    object zqry_CADASTRODESCCOMPPROD: TWideStringField
      FieldName = 'DESCCOMPPROD'
      Size = 500
    end
    object zqry_CADASTROOBSPROD: TWideStringField
      FieldName = 'OBSPROD'
      Size = 10000
    end
    object zqry_CADASTROVERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_CADASTROLOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
      Size = 15
    end
    object zqry_CADASTRORMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROCODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_CADASTROCODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_CADASTROCODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_CADASTROCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_CADASTROCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_CADASTROANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_CADASTROCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_CADASTROUSARECEITAPROD: TWideStringField
      FieldName = 'USARECEITAPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROUSATELAADICPDV: TWideStringField
      FieldName = 'USATELAADICPDV'
      Required = True
      Size = 1
    end
    object zqry_CADASTROVLRDENSIDADE: TFloatField
      FieldName = 'VLRDENSIDADE'
    end
    object zqry_CADASTROVLRCONCENT: TFloatField
      FieldName = 'VLRCONCENT'
    end
    object zqry_CADASTROCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object zqry_CADASTROLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object zqry_CADASTROESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object zqry_CADASTROGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_CADASTROQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Required = True
    end
    object zqry_CADASTROCODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_CADASTROCUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
    end
    object zqry_CADASTROCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_CADASTROCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_CADASTROCODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_CADASTROCODEMPTC: TSmallintField
      FieldName = 'CODEMPTC'
    end
    object zqry_CADASTROCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_CADASTROCODTPCHAMADO: TIntegerField
      FieldName = 'CODTPCHAMADO'
    end
    object zqry_CADASTROQTDHORASSERV: TFloatField
      FieldName = 'QTDHORASSERV'
    end
    object zqry_CADASTRONRODIASVALID: TSmallintField
      FieldName = 'NRODIASVALID'
    end
    object zqry_CADASTRODESCCLI: TWideStringField
      FieldName = 'DESCCLI'
      Size = 1
    end
    object zqry_CADASTROQTDPORPLANO: TSmallintField
      FieldName = 'QTDPORPLANO'
    end
    object zqry_CADASTRONROPLANOS: TSmallintField
      FieldName = 'NROPLANOS'
    end
    object zqry_CADASTROCERTFSC: TWideStringField
      FieldName = 'CERTFSC'
      Size = 1
    end
    object zqry_CADASTROFATORFSC: TFloatField
      FieldName = 'FATORFSC'
    end
    object zqry_CADASTROCODEMPOG: TIntegerField
      FieldName = 'CODEMPOG'
    end
    object zqry_CADASTROCODFILIALOG: TSmallintField
      FieldName = 'CODFILIALOG'
    end
    object zqry_CADASTROCODPRODOG: TIntegerField
      FieldName = 'CODPRODOG'
    end
    object zqry_CADASTROCODEMPMG: TIntegerField
      FieldName = 'CODEMPMG'
    end
    object zqry_CADASTROCODFILIALMG: TSmallintField
      FieldName = 'CODFILIALMG'
    end
    object zqry_CADASTROCODMODG: TIntegerField
      FieldName = 'CODMODG'
    end
    object zqry_CADASTROPRAZOREPO: TIntegerField
      FieldName = 'PRAZOREPO'
    end
    object zqry_CADASTROMEDIAVENDA: TFloatField
      FieldName = 'MEDIAVENDA'
    end
    object zqry_CADASTROEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_CADASTRODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CADASTROHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CADASTROIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CADASTRODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CADASTROHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CADASTROIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_CADASTROPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object zqry_CADASTROCODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_CADASTROINTERVSEGUR: TIntegerField
      FieldName = 'INTERVSEGUR'
    end
    object zqry_CADASTROCLASSETOXICO: TWideStringField
      FieldName = 'CLASSETOXICO'
      Size = 2
    end
    object zqry_CADASTROGRUPOQUIMICO: TWideStringField
      FieldName = 'GRUPOQUIMICO'
      Size = 50
    end
    object zqry_CADASTRONOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_CADASTROPRINCIPIOATIVO: TWideStringField
      FieldName = 'PRINCIPIOATIVO'
      Size = 50
    end
    object zqry_CADASTROCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 1
    end
    object zqry_CADASTROCLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 50
    end
    object zqry_CADASTROCONCENTRACAO: TWideStringField
      FieldName = 'CONCENTRACAO'
      Size = 15
    end
    object zqry_CADASTROFORMULACAO: TWideStringField
      FieldName = 'FORMULACAO'
      Size = 50
    end
    object zqry_CADASTROANTIDOTO: TWideStringField
      FieldName = 'ANTIDOTO'
      Size = 10000
    end
    object zqry_CADASTROMULTIPLICADOR: TSingleField
      FieldName = 'MULTIPLICADOR'
    end
    object zqry_CADASTROCODBALANCA: TIntegerField
      FieldName = 'CODBALANCA'
    end
    object zqry_CADASTROFINAME: TWideStringField
      FieldName = 'FINAME'
      Size = 10
    end
    object zqry_CADASTROCODRFIDPROD: TIntegerField
      FieldName = 'CODRFIDPROD'
    end
    object zqry_CADASTROMDA: TWideStringField
      FieldName = 'MDA'
      Size = 10
    end
    object zqry_CADASTROPTSFIDELIDADE: TIntegerField
      FieldName = 'PTSFIDELIDADE'
    end
    object zqry_CADASTROCURVA: TWideStringField
      FieldName = 'CURVA'
      Size = 1
    end
    object zqry_CADASTROSLDINDISPONIVEL: TFloatField
      FieldName = 'SLDINDISPONIVEL'
    end
  end
  inherited zdts_CADASTRO: TDataSource
    Left = 608
    Top = 48
  end
  inherited zupt_CADASTRO: TZUpdateSQL
    Left = 656
    Top = 48
  end
  inherited PopupMenu1: TPopupMenu
    Left = 712
    Top = 48
  end
  inherited Timer1: TTimer
    Left = 584
    Top = 328
  end
  object zqry_EQALMOX: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp, codalmox,descalmox from eqalmox')
    Params = <>
    Left = 647
    Top = 442
    object zqry_EQALMOXCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQALMOXCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_EQALMOXDESCALMOX: TWideStringField
      FieldName = 'DESCALMOX'
      Required = True
      Size = 40
    end
  end
  object zdts_EQALMOX: TDataSource
    DataSet = zqry_EQALMOX
    Left = 703
    Top = 442
  end
  object zqry_EQMARCA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'SELECT CODEMP, CODMARCA, DESCMARCA FROM EQMARCA')
    Params = <>
    Left = 647
    Top = 490
    object zqry_EQMARCACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQMARCACODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_EQMARCADESCMARCA: TWideStringField
      FieldName = 'DESCMARCA'
      Required = True
      Size = 40
    end
  end
  object zdts_EQMARCA: TDataSource
    DataSet = zqry_EQMARCA
    Left = 703
    Top = 490
  end
  object zqry_EQGRUPO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp, codgrup,descgrup from eqgrupo')
    Params = <>
    Left = 647
    Top = 538
    object zqry_EQGRUPOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQGRUPOCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_EQGRUPODESCGRUP: TWideStringField
      FieldName = 'DESCGRUP'
      Required = True
      Size = 50
    end
  end
  object zdts_EQGRUPO: TDataSource
    DataSet = zqry_EQGRUPO
    Left = 703
    Top = 538
  end
  object zqry_EQUNIDADE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp, codunid, descunid from equnidade')
    Params = <>
    Left = 648
    Top = 592
    object zqry_EQUNIDADECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQUNIDADECODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_EQUNIDADEDESCUNID: TWideStringField
      FieldName = 'DESCUNID'
      Required = True
      Size = 60
    end
  end
  object zdts_EQUNIDADE: TDataSource
    DataSet = zqry_EQUNIDADE
    Left = 704
    Top = 592
  end
  object zqry_NCM: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp, codfisc, descfisc from lfclfiscal')
    Params = <>
    Left = 503
    Top = 442
    object zqry_NCMCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_NCMCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_NCMDESCFISC: TWideStringField
      FieldName = 'DESCFISC'
      Required = True
      Size = 50
    end
  end
  object zdts_NCM: TDataSource
    DataSet = zqry_NCM
    Left = 559
    Top = 442
  end
  object zqry_PRECO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from vdprecoprod')
    Params = <>
    MasterFields = 'CODPROD'
    Left = 79
    Top = 426
    object zqry_PRECOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_PRECOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_PRECOCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_PRECOCODPRECOPROD: TIntegerField
      FieldName = 'CODPRECOPROD'
      Required = True
    end
    object zqry_PRECOCODEMPTB: TIntegerField
      FieldName = 'CODEMPTB'
      Required = True
    end
    object zqry_PRECOCODFILIALTB: TSmallintField
      FieldName = 'CODFILIALTB'
      Required = True
    end
    object zqry_PRECOCODTAB: TIntegerField
      FieldName = 'CODTAB'
      Required = True
    end
    object zqry_PRECOCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_PRECOCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_PRECOCODCLASCLI: TIntegerField
      FieldName = 'CODCLASCLI'
    end
    object zqry_PRECOCODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_PRECOCODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_PRECOCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_PRECOPRECOPROD: TFloatField
      FieldName = 'PRECOPROD'
      Required = True
    end
    object zqry_PRECOTIPOPRECOPROD: TWideStringField
      FieldName = 'TIPOPRECOPROD'
      Size = 1
    end
    object zqry_PRECODTALTPRECO: TDateField
      FieldName = 'DTALTPRECO'
    end
    object zqry_PRECOHALTPRECO: TTimeField
      FieldName = 'HALTPRECO'
    end
    object zqry_PRECOPRECOANT: TFloatField
      FieldName = 'PRECOANT'
    end
    object zqry_PRECOIDUSUALTPRECO: TWideStringField
      FieldName = 'IDUSUALTPRECO'
      Size = 8
    end
    object zqry_PRECOATIVOPRECOPROD: TWideStringField
      FieldName = 'ATIVOPRECOPROD'
      Required = True
      Size = 1
    end
    object zqry_PRECODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_PRECOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_PRECOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_PRECODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_PRECOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_PRECOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_PRECO: TDataSource
    DataSet = zqry_PRECO
    Left = 135
    Top = 426
  end
  object zqry_LOTE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from eqlote')
    Params = <>
    Left = 79
    Top = 474
    object zqry_LOTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LOTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LOTECODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_LOTECODLOTE: TWideStringField
      FieldName = 'CODLOTE'
      Required = True
    end
    object zqry_LOTEVENCTOLOTE: TDateField
      FieldName = 'VENCTOLOTE'
      Required = True
    end
    object zqry_LOTESLDLOTE: TFloatField
      FieldName = 'SLDLOTE'
    end
    object zqry_LOTESLDRESLOTE: TFloatField
      FieldName = 'SLDRESLOTE'
    end
    object zqry_LOTESLDCONSIGLOTE: TFloatField
      FieldName = 'SLDCONSIGLOTE'
    end
    object zqry_LOTESLDLIQLOTE: TFloatField
      FieldName = 'SLDLIQLOTE'
    end
    object zqry_LOTEQTDPRODLOTE: TFloatField
      FieldName = 'QTDPRODLOTE'
    end
    object zqry_LOTEDINILOTE: TDateField
      FieldName = 'DINILOTE'
    end
    object zqry_LOTEDIASAVISOLOTE: TSmallintField
      FieldName = 'DIASAVISOLOTE'
      Required = True
    end
    object zqry_LOTEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LOTEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LOTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LOTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LOTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LOTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_LOTE: TDataSource
    DataSet = zqry_LOTE
    Left = 135
    Top = 474
  end
  object zqry_PRODFOR: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from cpprodfor')
    Params = <>
    Left = 79
    Top = 378
    object zqry_PRODFORCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_PRODFORCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_PRODFORCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_PRODFORCODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
      Required = True
    end
    object zqry_PRODFORCODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
      Required = True
    end
    object zqry_PRODFORCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_PRODFORREFPRODFOR: TWideStringField
      FieldName = 'REFPRODFOR'
      Size = 21
    end
    object zqry_PRODFORDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_PRODFORHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_PRODFORIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_PRODFORDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_PRODFORHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_PRODFORIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_PRODFOR: TDataSource
    DataSet = zqry_PRODFOR
    Left = 135
    Top = 378
  end
  object zqry_FISCAL: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from eqprodutofiscal')
    Params = <>
    Left = 80
    Top = 528
    object zqry_FISCALCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FISCALCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FISCALCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_FISCALCODFISC: TIntegerField
      FieldName = 'CODFISC'
      Required = True
    end
    object zqry_FISCALCFOPVDUF: TIntegerField
      FieldName = 'CFOPVDUF'
    end
    object zqry_FISCALCFOPVDUFEXT: TIntegerField
      FieldName = 'CFOPVDUFEXT'
    end
    object zqry_FISCALCFOPCPUF: TIntegerField
      FieldName = 'CFOPCPUF'
    end
    object zqry_FISCALCFOPCPUFEXT: TIntegerField
      FieldName = 'CFOPCPUFEXT'
    end
    object zqry_FISCALCSTCSOSN: TWideStringField
      FieldName = 'CSTCSOSN'
      Size = 3
    end
  end
  object zdts_FISCAL: TDataSource
    DataSet = zqry_FISCAL
    Left = 136
    Top = 528
  end
  object zqry_MAX: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 647
    Top = 310
  end
  object zdts_MAX: TDataSource
    Left = 703
    Top = 310
  end
end
