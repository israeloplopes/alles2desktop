object frm_REL_CLIENTES: Tfrm_REL_CLIENTES
  Left = 0
  Top = 0
  Caption = 'RELAT'#211'RIO DE CLIENTES'
  ClientHeight = 511
  ClientWidth = 1238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.dts_VDCLIENTE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 46
      BandType = btHeader
      object RLDraw3: TRLDraw
        Left = 1
        Top = 1
        Width = 1080
        Height = 45
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 182
        Height = 25
        Caption = 'Relat'#243'rio de Clientes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 24
        Width = 186
        Height = 16
        Caption = 'Completo por Ordem de C'#243'digo'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 1004
        Top = 24
        Width = 35
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 1039
        Top = 24
        Width = 35
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
        Text = '/'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 955
        Top = 3
        Width = 118
        Height = 16
        Alignment = taRightJustify
        Text = 'Impresso em '
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 65
      Width = 1085
      Height = 130
      object RLDBText1: TRLDBText
        Left = 1
        Top = 1
        Width = 86
        Height = 16
        AutoSize = False
        DataField = 'CODCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'C'#243'd.: '
      end
      object RLDBText2: TRLDBText
        Left = 110
        Top = 1
        Width = 350
        Height = 16
        AutoSize = False
        DataField = 'RAZCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Raz'#227'o: '
      end
      object RLDBText3: TRLDBText
        Left = 470
        Top = 1
        Width = 350
        Height = 16
        AutoSize = False
        DataField = 'NOMECLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Nome: '
      end
      object RLDBText4: TRLDBText
        Left = 830
        Top = 1
        Width = 110
        Height = 16
        AutoSize = False
        DataField = 'PESSOACLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Tipo :'
      end
      object RLDBText5: TRLDBText
        Left = 1
        Top = 20
        Width = 150
        Height = 16
        AutoSize = False
        DataField = 'CNPJCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'CNPJ: '
      end
      object RLDBText6: TRLDBText
        Left = 160
        Top = 20
        Width = 170
        Height = 16
        AutoSize = False
        DataField = 'INSCCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Insc. Est.: '
      end
      object RLDBText7: TRLDBText
        Left = 340
        Top = 20
        Width = 161
        Height = 16
        AutoSize = False
        DataField = 'INSCMUNCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Insc. Munic.: '
      end
      object RLDBText8: TRLDBText
        Left = 510
        Top = 20
        Width = 130
        Height = 16
        AutoSize = False
        DataField = 'CPFCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'CPF: '
      end
      object RLDBText9: TRLDBText
        Left = 650
        Top = 20
        Width = 130
        Height = 16
        AutoSize = False
        DataField = 'RGCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'RG: '
      end
      object RLDBText10: TRLDBText
        Left = 1
        Top = 40
        Width = 350
        Height = 16
        AutoSize = False
        DataField = 'ENDCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'End.: '
      end
      object RLDBText11: TRLDBText
        Left = 360
        Top = 40
        Width = 80
        Height = 16
        AutoSize = False
        DataField = 'NUMCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'N.'#186': '
      end
      object RLDBText12: TRLDBText
        Left = 450
        Top = 40
        Width = 80
        Height = 16
        AutoSize = False
        DataField = 'COMPLCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Comp.: '
      end
      object RLDBText13: TRLDBText
        Left = 535
        Top = 40
        Width = 140
        Height = 16
        AutoSize = False
        DataField = 'BAIRCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Bairro: '
      end
      object RLDBText14: TRLDBText
        Left = 680
        Top = 40
        Width = 150
        Height = 16
        AutoSize = False
        DataField = 'CIDCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Cid.: '
      end
      object RLDBText15: TRLDBText
        Left = 835
        Top = 40
        Width = 65
        Height = 16
        AutoSize = False
        DataField = 'UFCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'UF: '
      end
      object RLDraw1: TRLDraw
        Left = 106
        Top = 60
        Width = 868
        Height = 2
        DrawKind = dkLine
      end
      object RLDBText16: TRLDBText
        Left = 1
        Top = 62
        Width = 350
        Height = 16
        AutoSize = False
        DataField = 'ENDENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'End.: '
      end
      object RLDBText17: TRLDBText
        Left = 360
        Top = 62
        Width = 80
        Height = 16
        AutoSize = False
        DataField = 'NUMENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'N.'#186': '
      end
      object RLDBText18: TRLDBText
        Left = 450
        Top = 62
        Width = 80
        Height = 16
        AutoSize = False
        DataField = 'COMPLENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Comp.: '
      end
      object RLDBText19: TRLDBText
        Left = 535
        Top = 62
        Width = 140
        Height = 16
        AutoSize = False
        DataField = 'BAIRENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Bairro: '
      end
      object RLDBText20: TRLDBText
        Left = 680
        Top = 62
        Width = 150
        Height = 16
        AutoSize = False
        DataField = 'CIDENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Cid.: '
      end
      object RLDBText21: TRLDBText
        Left = 835
        Top = 62
        Width = 65
        Height = 16
        AutoSize = False
        DataField = 'UFENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'UF: '
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 80
        Width = 1080
        Height = 48
        Pen.Width = 2
      end
      object RLDBText22: TRLDBText
        Left = 10
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'FONECLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Tel.: '
      end
      object RLDBText23: TRLDBText
        Left = 120
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'CELCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Cel.: '
      end
      object RLDBText24: TRLDBText
        Left = 230
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'CELCLIOPERADORA'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Op.: '
      end
      object RLDBText25: TRLDBText
        Left = 340
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'FONEENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Tel.: '
      end
      object RLDBText26: TRLDBText
        Left = 450
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'CELENT'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Cel.: '
      end
      object RLDBText27: TRLDBText
        Left = 560
        Top = 85
        Width = 100
        Height = 16
        AutoSize = False
        DataField = 'CELENTOPERADORA'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Op.: '
      end
      object RLDBText28: TRLDBText
        Left = 10
        Top = 105
        Width = 340
        Height = 16
        AutoSize = False
        DataField = 'SITECLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'Site: '
      end
      object RLDBText29: TRLDBText
        Left = 360
        Top = 105
        Width = 340
        Height = 16
        AutoSize = False
        DataField = 'EMAILCLI'
        DataSource = dm_DADOS.dts_VDCLIENTE
        Text = 'E-mail: '
      end
    end
  end
end
