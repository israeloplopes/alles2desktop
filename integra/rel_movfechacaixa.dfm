object frm_REL_MOVFECHACAIXA: Tfrm_REL_MOVFECHACAIXA
  Left = 0
  Top = 0
  Caption = 'frm_REL_MOVFECHACAIXA'
  ClientHeight = 640
  ClientWidth = 576
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
    Height = 378
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
    PageSetup.PaperHeight = 100.000000000000000000
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
        DataField = 'DTAMOV'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
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
        Width = 245
        Height = 15
        Caption = 'N.'#186'  | Tipo |     Valor do Movimento         |         Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 191
        Top = 25
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
    object RLBand2: TRLBand
      Left = 19
      Top = 105
      Width = 264
      Height = 40
      object RLDBText1: TRLDBText
        Left = 0
        Top = 3
        Width = 25
        Height = 14
        AutoSize = False
        DataField = 'NROMOV'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 28
        Top = 3
        Width = 25
        Height = 14
        DataField = 'TIPOMOV'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 67
        Top = 3
        Width = 60
        Height = 14
        Alignment = taRightJustify
        DataField = 'VLRMOV'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 193
        Top = 3
        Width = 68
        Height = 14
        Alignment = taRightJustify
        DataField = 'VLRSLDMOV'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 191
        Top = 21
        Width = 70
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'IDUSU'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 117
        Top = 21
        Width = 68
        Height = 12
        AutoSize = False
        DataField = 'HINS'
        DataSource = dm_DADOS.zdts_PVMOVCAIXA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
end
