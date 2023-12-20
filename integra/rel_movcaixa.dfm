object frm_REL_MOVCAIXA: Tfrm_REL_MOVCAIXA
  Left = 0
  Top = 0
  Caption = 'frm_REL_MOVCAIXA'
  ClientHeight = 510
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
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 302
    Height = 265
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.zdts_PVMOVCAIXA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 80.000000000000000000
    PageSetup.PaperHeight = 70.000000000000000000
    PrintDialog = False
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 264
      Height = 190
      object rl_TITULO: TRLLabel
        Left = 0
        Top = 0
        Width = 264
        Height = 23
        Align = faTop
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
      object rl_VALOR: TRLLabel
        Left = 0
        Top = 67
        Width = 260
        Height = 22
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object rl_DESCREVE: TRLLabel
        Left = 0
        Top = 95
        Width = 261
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLDraw2: TRLDraw
        Left = 40
        Top = 140
        Width = 180
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 142
        Width = 261
        Height = 14
        Alignment = taCenter
        Caption = 'Visto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLDBText6: TRLDBText
    Left = 210
    Top = 44
    Width = 69
    Height = 31
    AutoSize = False
    DataField = 'CODCAIXA'
    DataSource = dm_DADOS.zdts_PVMOVCAIXA
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    Text = ''
  end
end
