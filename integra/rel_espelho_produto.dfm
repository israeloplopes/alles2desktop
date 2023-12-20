object frm_REL_ESPELHO_PRODUTO: Tfrm_REL_ESPELHO_PRODUTO
  Left = 0
  Top = 0
  Caption = 'frm_REL_ESPELHO_PRODUTO'
  ClientHeight = 410
  ClientWidth = 1178
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
    Left = -16
    Top = -8
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 1085
      Height = 126
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 45
        Width = 1079
        Height = 75
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 50
        Width = 219
        Height = 29
        Caption = 'Espelho do Movimento'
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
        Width = 550
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
        Left = 940
        Top = 68
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
        Left = 989
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
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
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
      Left = 19
      Top = 145
      Width = 1085
      Height = 25
      BandType = btHeader
      object RLLabel3: TRLLabel
        Left = 3
        Top = 0
        Width = 161
        Height = 16
        Caption = 'C'#243'digo      NCM           Produto'
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
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 170
      Width = 1085
      Height = 60
      DataFields = 'CODPROD'
      object RLDBText3: TRLDBText
        Left = 3
        Top = 2
        Width = 59
        Height = 14
        DataField = 'CODPROD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 63
        Top = 2
        Width = 52
        Height = 14
        Alignment = taCenter
        DataField = 'CODFISC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 117
        Top = 0
        Width = 483
        Height = 16
        AutoSize = False
        DataField = 'DESCPROD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 0
        Width = 1100
        Height = 3
        DrawKind = dkLine
        Pen.Width = 2
      end
      object TRLBand
        Left = 0
        Top = 0
        Width = 1085
        Height = 60
        object RLDraw8: TRLDraw
          Left = 491
          Top = 20
          Width = 202
          Height = 40
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 20
          Width = 485
          Height = 40
        end
        object RLDraw12: TRLDraw
          Left = 900
          Top = 20
          Width = 182
          Height = 40
        end
        object RLDraw9: TRLDraw
          Left = 695
          Top = 20
          Width = 202
          Height = 40
        end
        object RLDBText6: TRLDBText
          Left = 275
          Top = 36
          Width = 60
          Height = 14
          DataField = 'DTMOVPROD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 355
          Top = 36
          Width = 77
          Height = 14
          DataField = 'TIPOMOVPROD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 340
          Top = 36
          Width = 49
          Height = 14
          DataField = 'TIPOMOV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 380
          Top = 36
          Width = 46
          Height = 14
          DataField = 'CODNAT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 435
          Top = 36
          Width = 50
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DOCMOVPROD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 491
          Top = 36
          Width = 54
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTDMOVPRODENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd :'
        end
        object RLDBText12: TRLDBText
          Left = 959
          Top = 22
          Width = 115
          Height = 15
          Alignment = taRightJustify
          DataField = 'SLDMOVPROD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd : '
        end
        object RLDBText14: TRLDBText
          Left = 5
          Top = 36
          Width = 268
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 1039
          Top = 41
          Width = 41
          Height = 16
          Alignment = taRightJustify
          DataField = 'SALDO'
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 903
          Top = 43
          Width = 90
          Height = 14
          DataField = 'CUSTOMPMMOVPROD'
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'mpm: '
        end
        object RLDBText19: TRLDBText
          Left = 903
          Top = 23
          Width = 49
          Height = 15
          DataField = 'INSERIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = ''
        end
        object RLDBText20: TRLDBText
          Left = 410
          Top = 36
          Width = 49
          Height = 14
          DataField = 'CODMOV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 576
          Top = 36
          Width = 88
          Height = 14
          DataField = 'PRECOMOVPRODENT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 754
          Top = 36
          Width = 70
          Height = 14
          Alignment = taRightJustify
          DataField = 'PRECOMOVPRODSAI'
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText24: TRLDBText
          Left = 637
          Top = 36
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTALENT'
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText25: TRLDBText
          Left = 841
          Top = 36
          Width = 54
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTALSAI'
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 698
          Top = 36
          Width = 50
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTDMOVPRODSAI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd :'
        end
        object RLLabel12: TRLLabel
          Left = 699
          Top = 21
          Width = 42
          Height = 15
          Caption = 'Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 495
          Top = 21
          Width = 54
          Height = 15
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 265
      Width = 1085
      Height = 24
      BandType = btFooter
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 245
        Height = 14
        Caption = 'NonoElemento | Integra - www.nonoelemento.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 19
      Top = 230
      Width = 1085
      Height = 35
      BandType = btSummary
      object RLLabel7: TRLLabel
        Left = 3
        Top = 3
        Width = 87
        Height = 14
        Caption = 'Totais de Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 18
        Width = 77
        Height = 14
        Caption = 'Totais de Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
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
      object RLLabel11: TRLLabel
        Left = 512
        Top = 18
        Width = 88
        Height = 14
        Caption = 'Valor em Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 653
        Top = 18
        Width = 108
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SALDO'
        DisplayMask = '###,###,##0.00'
        Text = ''
      end
      object RLDBResult1: TRLDBResult
        Left = 634
        Top = 3
        Width = 127
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'ESTOQUE'
        DisplayMask = '###,###,##0.00'
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 96
        Top = 4
        Width = 116
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'TOTALENT'
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 100
        Top = 18
        Width = 112
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'TOTALSAI'
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 440
    Top = 64
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 632
    Top = 64
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 368
    Top = 80
  end
  object RLPreviewSetup1: TRLPreviewSetup
    Left = 736
    Top = 96
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 296
    Top = 72
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 368
    Top = 16
  end
  object RLExpressionParser2: TRLExpressionParser
    Left = 584
    Top = 208
  end
end
