object frm_REL_ESPELHO99: Tfrm_REL_ESPELHO99
  Left = 0
  Top = 0
  Caption = 'frm_REL_ESPELHO99'
  ClientHeight = 570
  ClientWidth = 1195
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
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.zdts_ESPELHO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 8
      Top = 19
      Width = 1096
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
      Left = 8
      Top = 145
      Width = 1096
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
      Left = 8
      Top = 170
      Width = 1096
      Height = 82
      DataFields = 'CODPROD'
      object RLDBText3: TRLDBText
        Left = 3
        Top = 3
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
        Top = 3
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
        Top = 3
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
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 1096
        Height = 78
        object RLDBText6: TRLDBText
          Left = 103
          Top = 22
          Width = 308
          Height = 16
          AutoSize = False
          DataField = 'DESCPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw4: TRLDraw
          Left = 415
          Top = 0
          Width = 666
          Height = 55
          Pen.Width = 2
        end
        object RLDraw5: TRLDraw
          Left = 637
          Top = 0
          Width = 5
          Height = 75
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel2: TRLLabel
          Left = 416
          Top = 1
          Width = 54
          Height = 15
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 416
          Top = 18
          Width = 60
          Height = 15
          AutoSize = False
          DataField = 'QTDMOVPRODENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd. : '
        end
        object RLDBText8: TRLDBText
          Left = 485
          Top = 18
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECOMOVPRODENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Text = 'C. : '
        end
        object RLDBText9: TRLDBText
          Left = 485
          Top = 36
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECOMEDIOMOVENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Text = 'M. : '
        end
        object RLDBText10: TRLDBText
          Left = 565
          Top = 18
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 565
          Top = 36
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALCUSTOENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 640
          Top = 1
          Width = 42
          Height = 15
          Caption = 'Sa'#237'das'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 640
          Top = 18
          Width = 60
          Height = 15
          AutoSize = False
          DataField = 'QTDMOVPRODSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd. : '
        end
        object RLDBText13: TRLDBText
          Left = 709
          Top = 18
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECOMOVPRODSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Text = 'C. : '
        end
        object RLDBText14: TRLDBText
          Left = 709
          Top = 36
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PRECOMEDIOMOVSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Text = 'M. : '
        end
        object RLDBText15: TRLDBText
          Left = 788
          Top = 36
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALCUSTOSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 788
          Top = 18
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTALSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDraw6: TRLDraw
          Left = 859
          Top = 0
          Width = 5
          Height = 75
          Angle = 90.000000000000000000
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLDBText17: TRLDBText
          Left = 862
          Top = 1
          Width = 88
          Height = 15
          DataField = 'INSERIDO'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Text = 'Por :'
        end
        object RLDBText18: TRLDBText
          Left = 1010
          Top = 35
          Width = 65
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SALDO'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 1010
          Top = 1
          Width = 65
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SLDMOVPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = 'Qtd . :'
        end
        object RLDBText20: TRLDBText
          Left = 1010
          Top = 17
          Width = 65
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CUSTOMPMMOVPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 203
          Top = 40
          Width = 68
          Height = 14
          DataField = 'DTMOVPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 268
          Top = 40
          Width = 49
          Height = 14
          DataField = 'TIPOMOV'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText23: TRLDBText
          Left = 308
          Top = 40
          Width = 46
          Height = 14
          DataField = 'CODNAT'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText24: TRLDBText
          Left = 338
          Top = 40
          Width = 49
          Height = 14
          DataField = 'CODMOV'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText25: TRLDBText
          Left = 363
          Top = 40
          Width = 50
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'DOCMOVPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText26: TRLDBText
          Left = 26
          Top = 22
          Width = 69
          Height = 16
          Alignment = taRightJustify
          DataField = 'CODPROD'
          DataSource = dm_DADOS.zdts_ESPELHO
          Text = ''
        end
        object RLDBResult6: TRLDBResult
          Left = 419
          Top = 58
          Width = 85
          Height = 14
          AutoSize = False
          DataField = 'TOTALENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult5: TRLDBResult
          Left = 550
          Top = 58
          Width = 85
          Height = 14
          AutoSize = False
          DataField = 'SOMAENT'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult7: TRLDBResult
          Left = 642
          Top = 58
          Width = 85
          Height = 14
          AutoSize = False
          DataFormula = '-1*TOTALCUSTOSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult8: TRLDBResult
          Left = 773
          Top = 58
          Width = 85
          Height = 14
          AutoSize = False
          DataFormula = '0-SOMASAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult9: TRLDBResult
          Left = 864
          Top = 58
          Width = 85
          Height = 14
          AutoSize = False
          DataFormula = 'TOTALENT-TOTALCUSTOSAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = 'R$ ###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult10: TRLDBResult
          Left = 992
          Top = 56
          Width = 85
          Height = 16
          AutoSize = False
          DataFormula = 'SOMAENT-SOMASAI'
          DataSource = dm_DADOS.zdts_ESPELHO
          DisplayMask = '###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw7: TRLDraw
          Left = 50
          Top = 73
          Width = 1047
          Height = 4
          Brush.Style = bsFDiagonal
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
    object RLBand4: TRLBand
      Left = 8
      Top = 252
      Width = 1096
      Height = 42
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 193
        Top = 4
        Width = 101
        Height = 15
        DataField = 'TOTALENT'
        DataSource = dm_DADOS.zdts_ESPELHO
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object Sumário: TRLLabel
        Left = 0
        Top = 0
        Width = 57
        Height = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 103
        Top = 4
        Width = 84
        Height = 16
        Caption = 'Totais Entradas : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 103
        Top = 21
        Width = 74
        Height = 16
        Caption = 'Totais Sa'#237'das : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 193
        Top = 21
        Width = 145
        Height = 15
        DataFormula = 'TOTALCUSTOSAI'
        DataSource = dm_DADOS.zdts_ESPELHO
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 340
        Top = 4
        Width = 77
        Height = 16
        Caption = 'Saldo em QTD: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 340
        Top = 21
        Width = 86
        Height = 16
        Caption = 'Valor em Estoque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 435
        Top = 4
        Width = 160
        Height = 15
        DataFormula = 'SOMAENT-SOMASAI'
        DataSource = dm_DADOS.zdts_ESPELHO
        DisplayMask = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 435
        Top = 21
        Width = 80
        Height = 15
        DataField = 'SALDO'
        DataSource = dm_DADOS.zdts_ESPELHO
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLDBResult11: TRLDBResult
        Left = 883
        Top = 4
        Width = 129
        Height = 15
        DataField = 'SOMASAI'
        DisplayMask = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = 'Sa'#237'da: '
      end
      object RLDBResult12: TRLDBResult
        Left = 883
        Top = 20
        Width = 146
        Height = 15
        DataField = 'SOMAENT'
        DisplayMask = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = 'Entrada: '
      end
      object RLLabel11: TRLLabel
        Left = 617
        Top = 4
        Width = 67
        Height = 16
        Caption = 'Saldo em RS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 700
        Top = 4
        Width = 140
        Height = 16
        AutoSize = False
        DataFormula = 'TOTALENT-TOTALCUSTOSAI'
        DataSource = dm_DADOS.zdts_ESPELHO
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Info = riSum
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 8
      Top = 294
      Width = 1096
      Height = 18
      BandType = btFooter
      object RLLabel9: TRLLabel
        Left = 0
        Top = 0
        Width = 132
        Height = 16
        Caption = 'NonoElemento | IntegraERP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 312
    Top = 288
  end
end
