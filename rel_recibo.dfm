object frm_REL_RECIBO: Tfrm_REL_RECIBO
  Left = 0
  Top = 0
  Caption = 'Recibo Comercial'
  ClientHeight = 621
  ClientWidth = 813
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
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 363
      BandType = btHeader
      CarbonCopies = 2
      object RLDraw1: TRLDraw
        Left = 0
        Top = 0
        Width = 710
        Height = 45
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 2
        Top = 2
        Width = 89
        Height = 29
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 580
        Top = 3
        Width = 78
        Height = 16
        Text = 'Data : '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 580
        Top = 25
        Width = 78
        Height = 16
        Info = itHour
        Text = 'Hora : '
      end
      object rl_numero: TRLLabel
        Left = 192
        Top = 3
        Width = 124
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 28
        Top = 88
        Width = 95
        Height = 16
        Caption = 'Recebemos de '
      end
      object RLLabel3: TRLLabel
        Left = 535
        Top = 88
        Width = 79
        Height = 16
        Caption = 'a quantia de '
      end
      object RLLabel4: TRLLabel
        Left = 11
        Top = 110
        Width = 414
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 431
        Top = 110
        Width = 156
        Height = 16
        Caption = 'referente a compra de N.'#186' '
      end
      object rl_nome: TRLLabel
        Left = 129
        Top = 88
        Width = 400
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_valor: TRLLabel
        Left = 400
        Top = 51
        Width = 289
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_parcela: TRLLabel
        Left = 593
        Top = 110
        Width = 54
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 28
        Top = 152
        Width = 630
        Height = 16
        Caption = 
          'Por ser express'#227'o da verdade, datamos e assinamos o respectivo r' +
          'ecibo em duas vias de igual teor e forma.'
      end
      object rl_cidade: TRLLabel
        Left = 129
        Top = 216
        Width = 56
        Height = 16
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 235
        Top = 216
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 200
        Top = 272
        Width = 310
        Height = 16
        DrawKind = dkLine
      end
      object rl_empresa: TRLLabel
        Left = 176
        Top = 294
        Width = 361
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 416
    Top = 192
  end
end
