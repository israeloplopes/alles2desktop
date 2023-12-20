object frm_REL_COMIS_VENDEDOR: Tfrm_REL_COMIS_VENDEDOR
  Left = 0
  Top = 0
  Caption = 'frm_REL_COMIS_VENDEDOR'
  ClientHeight = 560
  ClientWidth = 1145
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
    DataSource = frm_DLG_COMISSAO.zdts_COMISSAO
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
      Height = 126
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 45
        Width = 1041
        Height = 75
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 50
        Width = 390
        Height = 29
        Caption = 'Espelho de Comiss'#227'o - Vendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 523
        Height = 16
        Alignment = taCenter
        DataField = 'RAZFILIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 532
        Top = 0
        Width = 500
        Height = 16
        Alignment = taCenter
        DataField = 'NOMEFILIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object rl_endereco: TRLLabel
        Left = 3
        Top = 16
        Width = 1079
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_endereco1: TRLLabel
        Left = 3
        Top = 30
        Width = 1078
        Height = 14
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 928
        Top = 70
        Width = 113
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'gina : '
      end
      object rl_datas: TRLLabel
        Left = 3
        Top = 80
        Width = 50
        Height = 16
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 928
        Top = 50
        Width = 93
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itNow
        ParentFont = False
        Text = 'Gerado em: '
      end
      object rl_status: TRLLabel
        Left = 3
        Top = 102
        Width = 37
        Height = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 1055
        Top = 68
        Width = 30
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
        Text = '/'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 164
      Width = 1047
      Height = 20
      BandType = btHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 1
        Width = 65
        Height = 15
        Caption = 'C'#243'd. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 74
        Top = 2
        Width = 65
        Height = 15
        Caption = 'Cod. Rec'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 145
        Top = 2
        Width = 80
        Height = 15
        Caption = 'Dt. Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 231
        Top = 2
        Width = 65
        Height = 15
        Caption = 'N.'#186' Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 302
        Top = 2
        Width = 42
        Height = 15
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 588
        Top = 2
        Width = 61
        Height = 15
        Caption = 'Vlr. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 674
        Top = 2
        Width = 80
        Height = 15
        Caption = 'Comiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 760
        Top = 2
        Width = 84
        Height = 15
        Caption = 'Comissionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 986
        Top = 2
        Width = 32
        Height = 15
        Caption = 'Conf.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 184
      Width = 1047
      Height = 23
      object RLDBText4: TRLDBText
        Left = 74
        Top = 2
        Width = 59
        Height = 16
        DataField = 'CODREC'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 145
        Top = 2
        Width = 71
        Height = 16
        DataField = 'DATACOMI'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 231
        Top = 2
        Width = 86
        Height = 16
        DataField = 'NPARCITREC'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 302
        Top = 2
        Width = 280
        Height = 16
        AutoSize = False
        DataField = 'RAZCLI'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 561
        Top = 2
        Width = 107
        Height = 16
        Alignment = taRightJustify
        DataField = 'VLRVENDACOMI'
        DataSource = DataSource1
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 18
        Width = 1000
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDashDot
      end
      object RLDBText11: TRLDBText
        Left = 674
        Top = 1
        Width = 62
        Height = 16
        DataField = 'VLRCOMI'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 3
        Top = 1
        Width = 77
        Height = 16
        DataField = 'CODVENDA'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 760
        Top = 1
        Width = 220
        Height = 16
        AutoSize = False
        DataField = 'NOMEVEND'
        DataSource = DataSource1
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 986
        Top = 1
        Width = 20
        Height = 18
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 207
      Width = 1047
      Height = 40
      BandType = btSummary
      object RLLabel9: TRLLabel
        Left = 0
        Top = 6
        Width = 60
        Height = 16
        Caption = 'Sum'#225'rio: '
      end
      object RLDBResult1: TRLDBResult
        Left = 673
        Top = 6
        Width = 109
        Height = 16
        DataFormula = 'VLRCOMI'
        DisplayMask = 'R$ ###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object rl_pretotal: TRLLabel
        Left = 144
        Top = 6
        Width = 61
        Height = 16
      end
      object rl_prepagar: TRLLabel
        Left = 144
        Top = 21
        Width = 68
        Height = 16
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 247
      Width = 1047
      Height = 20
      BandType = btFooter
      object RLLabel13: TRLLabel
        Left = 8
        Top = 2
        Width = 259
        Height = 14
        Caption = 'http://www.nonoelemento.com.br - IntegraERP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = frm_DLG_COMISSAO.zqry_COMISSAO
    Left = 552
    Top = 344
  end
end
