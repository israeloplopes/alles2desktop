object frm_REL_ESPELHO: Tfrm_REL_ESPELHO
  Left = 0
  Top = 0
  Caption = 'frm_REL_ESPELHO'
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
    DataSource = dm_DADOS.dts_ESPELHO
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
      object RLLabel4: TRLLabel
        Left = 275
        Top = 0
        Width = 786
        Height = 16
        Caption = 
          'Data Mov      Tipo     Nat.   Mov.       Doc.     Quant.        ' +
          '     M'#233'dio            Total Ent.    Quant.            M'#233'dio     ' +
          '        Total Sai      Usu'#225'rio/MPM       -  Qtd/Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 170
      Width = 1085
      Height = 100
      DataFields = 'CODPROD'
      object RLDBText3: TRLDBText
        Left = 3
        Top = 2
        Width = 59
        Height = 14
        DataField = 'CODPROD'
        DataSource = dm_DADOS.dts_ESPELHO
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
        DataSource = dm_DADOS.dts_ESPELHO
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
        DataSource = dm_DADOS.dts_ESPELHO
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
        Height = 95
        object RLDraw8: TRLDraw
          Left = 491
          Top = 20
          Width = 202
          Height = 45
        end
        object RLDraw13: TRLDraw
          Left = 0
          Top = 20
          Width = 485
          Height = 45
        end
        object RLDraw12: TRLDraw
          Left = 900
          Top = 20
          Width = 182
          Height = 45
        end
        object RLDraw9: TRLDraw
          Left = 695
          Top = 20
          Width = 202
          Height = 45
        end
        object RLDBText6: TRLDBText
          Left = 275
          Top = 36
          Width = 60
          Height = 14
          DataField = 'DTMOVPROD'
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          Top = 34
          Width = 54
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTDMOVPRODENT'
          DataSource = dm_DADOS.dts_ESPELHO
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
          Top = 21
          Width = 115
          Height = 15
          Alignment = taRightJustify
          DataField = 'SLDMOVPROD'
          DataSource = dm_DADOS.dts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd : '
        end
        object RLDBText14: TRLDBText
          Left = 40
          Top = 36
          Width = 233
          Height = 14
          AutoSize = False
          DataField = 'NOME'
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
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
          Top = 21
          Width = 49
          Height = 15
          DataField = 'INSERIDO'
          DataSource = dm_DADOS.dts_ESPELHO
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
          DataSource = dm_DADOS.dts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 565
          Top = 34
          Width = 125
          Height = 14
          AutoSize = False
          DataField = 'PRECOMOVPRODSAI'
          DataSource = dm_DADOS.dts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'M.: '
        end
        object RLDBText23: TRLDBText
          Left = 754
          Top = 34
          Width = 70
          Height = 14
          AutoSize = False
          DataField = 'PRECOMOVPRODSAI'
          DataSource = dm_DADOS.dts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'M.: '
        end
        object RLDBText24: TRLDBText
          Left = 637
          Top = 34
          Width = 56
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTALENT'
          DataSource = dm_DADOS.dts_ESPELHO
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
          Top = 34
          Width = 54
          Height = 14
          Alignment = taRightJustify
          DataField = 'TOTALSAI'
          DataSource = dm_DADOS.dts_ESPELHO
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
          Top = 34
          Width = 50
          Height = 14
          Alignment = taRightJustify
          DataField = 'QTDMOVPRODSAI'
          DataSource = dm_DADOS.dts_ESPELHO
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
          Width = 39
          Height = 14
          Caption = 'Saidas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 495
          Top = 21
          Width = 51
          Height = 14
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 2
          Top = 36
          Width = 35
          Height = 15
          AutoSize = False
          DataField = 'CODIGO'
          DataSource = dm_DADOS.dts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 700
          Top = 65
          Width = 87
          Height = 14
          Caption = 'Acumulado Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 491
          Top = 65
          Width = 97
          Height = 14
          Caption = 'Acumulado Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 565
          Top = 48
          Width = 69
          Height = 14
          AutoSize = False
          DataField = 'PRECOMOVPRODENT'
          DataSource = dm_DADOS.dts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'C.: '
        end
        object RLDBText22: TRLDBText
          Left = 637
          Top = 48
          Width = 55
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALCUSTOENT'
          DataSource = dm_DADOS.dts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText26: TRLDBText
          Left = 754
          Top = 48
          Width = 70
          Height = 14
          AutoSize = False
          DataField = 'QTDMOVPROD'
          DataSource = dm_DADOS.dts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'C.: '
        end
        object RLDBText27: TRLDBText
          Left = 840
          Top = 48
          Width = 57
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALCUSTOSAI'
          DataSource = dm_DADOS.dts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 305
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
      Top = 270
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
        Left = 450
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
        Left = 450
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
        Left = 550
        Top = 18
        Width = 95
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SALDO'
        DataSource = dm_DADOS.dts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult1: TRLDBResult
        Left = 550
        Top = 3
        Width = 114
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'ESTOQUE'
        DataSource = dm_DADOS.dts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 96
        Top = 4
        Width = 116
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'TOTALENT'
        DataSource = dm_DADOS.dts_ESPELHO
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
        DataSource = dm_DADOS.dts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult7: TRLDBResult
        Left = 891
        Top = 3
        Width = 115
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'SOMAENT'
        DataSource = dm_DADOS.dts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLDBResult8: TRLDBResult
        Left = 891
        Top = 18
        Width = 111
        Height = 16
        DataFormula = 'SOMASAI'
        DataSource = dm_DADOS.dts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLLabel8: TRLLabel
        Left = 767
        Top = 3
        Width = 97
        Height = 14
        Caption = 'Acumulado Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 767
        Top = 18
        Width = 87
        Height = 14
        Caption = 'Acumulado Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
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
    Options = []
    Left = 368
    Top = 8
  end
end
