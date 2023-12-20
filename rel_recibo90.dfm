object frm_REL_RECIBO90: Tfrm_REL_RECIBO90
  Left = 0
  Top = 0
  Caption = 'Recibo Comercial 90'
  ClientHeight = 523
  ClientWidth = 683
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
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
    Width = 321
    Height = 529
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 85.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 283
      Height = 485
      BandType = btHeader
      CarbonCopies = 2
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 265
        Height = 42
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 2
        Top = 2
        Width = 69
        Height = 22
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 150
        Top = 3
        Width = 78
        Height = 16
        Text = 'Data : '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 150
        Top = 20
        Width = 78
        Height = 16
        Info = itHour
        Text = 'Hora : '
      end
      object rl_numero: TRLLabel
        Left = 2
        Top = 20
        Width = 82
        Height = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 1
        Top = 134
        Width = 95
        Height = 16
        Caption = 'Recebemos de '
      end
      object rl_nome: TRLLabel
        Left = 1
        Top = 156
        Width = 265
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_valor: TRLLabel
        Left = 2
        Top = 65
        Width = 265
        Height = 22
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_parcela: TRLLabel
        Left = 2
        Top = 45
        Width = 265
        Height = 16
        Alignment = taCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        AlignWithMargins = True
        Left = 1
        Top = 214
        Width = 265
        Height = 16
        Alignment = taCenter
        Caption = 'Por ser express'#227'o da verdade, datamos'
      end
      object rl_cidade: TRLLabel
        Left = 111
        Top = 270
        Width = 56
        Height = 16
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 0
        Top = 290
        Width = 265
        Height = 16
        Alignment = taCenter
        Info = itFullDate
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 1
        Top = 340
        Width = 265
        Height = 16
        DrawKind = dkLine
      end
      object RLLabel7: TRLLabel
        Left = 1
        Top = 230
        Width = 265
        Height = 16
        Alignment = taCenter
        Caption = ' e assinamos o respectivo recibo em '
      end
      object RLLabel8: TRLLabel
        Left = 1
        Top = 246
        Width = 265
        Height = 16
        Alignment = taCenter
        Caption = 'duas vias de igual teor e forma.'
      end
      object rl_valorparcial: TRLLabel
        Left = 2
        Top = 85
        Width = 265
        Height = 22
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_valorpagar: TRLLabel
        Left = 2
        Top = 105
        Width = 265
        Height = 22
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 1
        Top = 175
        Width = 265
        Height = 38
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 1
        Top = 350
        Width = 265
        Height = 41
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw3: TRLDraw
        Left = 1
        Top = 397
        Width = 265
        Height = 55
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 398
        Width = 99
        Height = 16
        Caption = 'Saldo Devedor Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 3
        Top = 435
        Width = 262
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Para simples informa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object rl_SLDDEVEDOR: TRLLabel
        Left = 3
        Top = 418
        Width = 262
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 472
    Top = 160
  end
end
