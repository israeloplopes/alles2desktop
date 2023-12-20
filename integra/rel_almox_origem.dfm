object frm_REL_ALMOX_ORIGEM: Tfrm_REL_ALMOX_ORIGEM
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Estoque Origem Almoxarifado'
  ClientHeight = 657
  ClientWidth = 1092
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
    DataSource = dm_DADOS.zdts_EQSALDOPROD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 70
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 1047
        Height = 30
        Align = faTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Almoxarifado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 30
        Width = 1044
        Height = 19
        Alignment = taCenter
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 52
        Width = 42
        Height = 14
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 76
        Top = 52
        Width = 57
        Height = 14
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 470
        Top = 52
        Width = 33
        Height = 14
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 546
        Top = 51
        Width = 68
        Height = 15
        Caption = 'Sld. L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 624
        Top = 51
        Width = 66
        Height = 15
        Caption = 'Sld. Consig'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 705
        Top = 51
        Width = 60
        Height = 15
        Caption = 'Custo Info'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 800
        Top = 51
        Width = 69
        Height = 15
        Caption = 'Pre'#231'o Base'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 881
        Top = 51
        Width = 68
        Height = 15
        Caption = 'Dt. Ult. Mov.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 108
      Width = 1047
      Height = 20
      object RLDBText2: TRLDBText
        Left = 427
        Top = 224
        Width = 414
        Height = 16
        AutoSize = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 76
        Top = 0
        Width = 388
        Height = 16
        AutoSize = False
        DataField = '_PRODUTO'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 470
        Top = 0
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'SLDPROD'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 546
        Top = 0
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SLDLIQPROD'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 624
        Top = 0
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'SLDCONSIGPROD'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 16
        Width = 1040
        Height = 3
        DrawKind = dkLine
        Pen.Color = clSilver
        Pen.Style = psDot
      end
      object RLDBText7: TRLDBText
        Left = 705
        Top = 0
        Width = 80
        Height = 15
        Alignment = taRightJustify
        DataField = '_CUSTOINFO'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 791
        Top = 0
        Width = 84
        Height = 15
        Alignment = taRightJustify
        DataField = '_PRECOBASE'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 881
        Top = 0
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'DTALT'
        DataSource = dm_DADOS.zdts_EQSALDOPROD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
end
