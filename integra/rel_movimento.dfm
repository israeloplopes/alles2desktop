object frm_REL_MOVIMENTO: Tfrm_REL_MOVIMENTO
  Left = 0
  Top = 0
  Caption = 'frm_REL_MOVIMENTO'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLREPORT1: TRLReport
    Left = 0
    Top = 0
    Width = 302
    Height = 378
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 80.000000000000000000
    PageSetup.PaperHeight = 100.000000000000000000
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 264
      Height = 86
      BandType = btHeader
      object rl_TITULO: TRLLabel
        Left = 0
        Top = 0
        Width = 172
        Height = 23
        Alignment = taCenter
        Caption = 'CheckOut'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 20
        Width = 260
        Height = 5
        DrawKind = dkLine
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 25
        Width = 99
        Height = 16
        Info = itFullDate
        Text = 'Data : '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 45
        Width = 78
        Height = 16
        Info = itHour
        Text = 'Hora : '
      end
      object RLDBText2: TRLDBText
        Left = 184
        Top = 3
        Width = 77
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DATA'
        DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 62
        Width = 260
        Height = 22
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 64
        Width = 182
        Height = 15
        Caption = 'Tipo |     Valor do Movimento         |     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 105
      Width = 264
      Height = 24
      object RLDBText3: TRLDBText
        Left = 1
        Top = 1
        Width = 24
        Height = 16
        DataField = 'TIPOCOB'
        DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 213
        Top = 1
        Width = 48
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 31
        Top = 1
        Width = 154
        Height = 16
        DataField = 'DESCCOB'
        DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 129
      Width = 264
      Height = 24
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 68
        Top = 3
        Width = 193
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = frm_CHECKOUT.zdts_TIPOSPAGTO
        Info = riSum
        Text = 'Total Movimento : '
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 179
    Top = 51
  end
end
