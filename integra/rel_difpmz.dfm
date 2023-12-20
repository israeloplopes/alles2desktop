object frm_REL_DIFPMZ: Tfrm_REL_DIFPMZ
  Left = 0
  Top = 0
  Caption = 'frm_REL_DIFPMZ'
  ClientHeight = 590
  ClientWidth = 1280
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
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    AdjustableMargins = True
    DataSource = dm_DADOS.zdts_MARKUP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand3: TRLBand
      Left = 38
      Top = 206
      Width = 1047
      Height = 23
      object RLDBText3: TRLDBText
        Left = 176
        Top = 3
        Width = 350
        Height = 16
        AutoSize = False
        DataField = 'DESCPROD'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 0
        Top = 4
        Width = 69
        Height = 16
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 532
        Top = 3
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRCUSTO'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 626
        Top = 3
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDITVENDA'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 920
        Top = 3
        Width = 78
        Height = 16
        Alignment = taRightJustify
        DataField = 'DIFERENCA'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 807
        Top = 4
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRLIQITVENDA'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 75
        Top = 3
        Width = 96
        Height = 16
        AutoSize = False
        DataField = 'CODBARPROD'
        DataSource = dm_DADOS.zdts_MARKUP
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 229
      Width = 1047
      Height = 24
      BandType = btSummary
      object RLLabel10: TRLLabel
        Left = 512
        Top = 3
        Width = 30
        Height = 14
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 650
        Top = 2
        Width = 125
        Height = 16
        DataFormula = 'DIFERENCA'
        DataSource = dm_DADOS.zdts_MARKUP
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 126
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 45
        Width = 1030
        Height = 75
      end
      object RLLabel1: TRLLabel
        Left = 14
        Top = 50
        Width = 280
        Height = 29
        Caption = 'Espelho do Diferen'#231'a do PMZ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 233
        Top = 0
        Width = 62
        Height = 16
        Alignment = taCenter
        DataField = 'RAZFILIAL'
        DataSource = dm_DADOS.zdts_SGFILIAL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 771
        Top = 0
        Width = 72
        Height = 16
        Alignment = taCenter
        DataField = 'NOMEFILIAL'
        DataSource = dm_DADOS.zdts_SGFILIAL
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
        Left = 731
        Top = 65
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
        Left = 14
        Top = 80
        Width = 50
        Height = 16
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 751
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
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 164
      Width = 1047
      Height = 42
      BandType = btHeader
      object RLLabel3: TRLLabel
        Left = 3
        Top = 2
        Width = 216
        Height = 16
        Caption = 'C'#243'digo            C'#243'd. Barras           Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 807
        Top = 2
        Width = 79
        Height = 16
        Caption = 'Vlr. Liq. Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 18
        Width = 1085
        Height = 5
        DrawKind = dkLine
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel8: TRLLabel
        Left = 918
        Top = 2
        Width = 78
        Height = 16
        Caption = 'Diferen'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 635
        Top = 0
        Width = 71
        Height = 16
        Caption = 'Qtd. Vendida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 532
        Top = 3
        Width = 80
        Height = 16
        Caption = 'Vlr. Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 353
        Top = 25
        Width = 259
        Height = 12
        Caption = 'Vlr. Custo = Qtd. Vendida * Custo Informado + Perc. Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 918
        Top = 24
        Width = 115
        Height = 12
        Caption = 'Vlr. Liq. Venda - Vlr. Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 717
        Top = 24
        Width = 170
        Height = 12
        Caption = 'Soma dos Valores vendidos para o item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 253
      Width = 1047
      Height = 24
      BandType = btFooter
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 258
        Height = 14
        Caption = 'NonoElemento | Integra - www.nonoelemento.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'IntegraERP'
    DisplayName = 'Documento PDF'
    Left = 712
    Top = 40
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 448
    Top = 336
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 488
    Top = 64
  end
  object RLXLSFilter2: TRLXLSFilter
    Options = [foOneSheetOnly]
    PageSetup.PrintGridLines = True
    PageSetup.LeftMargin = 1.000000000000000000
    PageSetup.TopMargin = 1.000000000000000000
    PageSetup.RightMargin = 1.000000000000000000
    PageSetup.BottomMargin = 1.000000000000000000
    DisplayName = 'IntegraERP - Planilha Excel 97-2013'
    Left = 872
    Top = 304
  end
end
