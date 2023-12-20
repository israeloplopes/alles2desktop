object frm_REL_PEDIDO50: Tfrm_REL_PEDIDO50
  Left = 0
  Top = 0
  Caption = 'Pedido/Or'#231'amento'
  ClientHeight = 745
  ClientWidth = 705
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
    Width = 189
    Height = 718
    Margins.LeftMargin = 4.000000000000000000
    Margins.TopMargin = 2.000000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dm_DADOS.zdts_ITFASTSALE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 50.000000000000000000
    PageSetup.PaperHeight = 190.000000000000000000
    PrintDialog = False
    Title = 'Pedido Expresso'
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 15
      Top = 8
      Width = 166
      Height = 95
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 20
        Width = 180
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = 'V2 ... Em :'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 35
        Width = 180
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'P'#225'g '
      end
      object RLDraw3: TRLDraw
        Left = -1
        Top = 50
        Width = 165
        Height = 5
        DrawHeight = 1
        DrawKind = dkLine
        DrawWidth = 0
        Pen.Width = 2
      end
      object RLDBText5: TRLDBText
        Left = 0
        Top = 55
        Width = 168
        Height = 23
        Alignment = taCenter
        AutoSize = False
        DataField = 'NOMEREDUZIDO'
        DataSource = dm_DADOS.zdts_SGFILIAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 0
        Top = 75
        Width = 165
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'FONEFILIAL'
        DataSource = dm_DADOS.zdts_SGFILIAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Tel.: '
      end
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 168
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = 'Pedido Expresso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 15
      Top = 278
      Width = 166
      Height = 57
      object RLDBText1: TRLDBText
        Left = 0
        Top = 18
        Width = 167
        Height = 16
        AutoSize = False
        DataField = '_NOMEPRODUTO'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 58
        Top = 35
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRVENDA'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 1
        Width = 72
        Height = 15
        DataField = 'QUANT'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Qtd.: '
      end
      object RLDBText4: TRLDBText
        Left = 92
        Top = 1
        Width = 75
        Height = 16
        AutoSize = False
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'C'#243'd.:'
      end
      object RLDraw4: TRLDraw
        Left = 3
        Top = 55
        Width = 188
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
    object RLBand3: TRLBand
      Left = 15
      Top = 103
      Width = 166
      Height = 175
      BandType = btTitle
      object RLDraw1: TRLDraw
        Left = -1
        Top = 0
        Width = 169
        Height = 105
        Pen.Width = 2
      end
      object RLDBText6: TRLDBText
        Left = 1
        Top = 68
        Width = 72
        Height = 14
        DataField = 'IDFASTSALE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Cupom: '
      end
      object RLDBText7: TRLDBText
        Left = 79
        Top = 68
        Width = 87
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORTOTAL'
        DataSource = dm_DADOS.zdts_FASTSALE
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object rl_NOMECLI: TRLLabel
        Left = 1
        Top = 2
        Width = 165
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object rl_VDVENDA: TRLLabel
        Left = 1
        Top = 84
        Width = 74
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 79
        Top = 84
        Width = 85
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itHour
        ParentFont = False
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 14
        Top = 107
        Width = 138
        Height = 15
        Alignment = taCenter
        Caption = 'Observa'#231#245'es do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object rl_NOMEAVULSO: TRLLabel
        Left = 0
        Top = 128
        Width = 168
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object rl_OBSVENDA: TRLLabel
        Left = 0
        Top = 148
        Width = 168
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
      object RLDBText10: TRLDBText
        Left = 1
        Top = 22
        Width = 165
        Height = 16
        AutoSize = False
        DataField = '_ENDCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 1
        Top = 36
        Width = 46
        Height = 14
        DataField = '_NUMCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 82
        Top = 36
        Width = 86
        Height = 15
        AutoSize = False
        DataField = '_BAIRROCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 1
        Top = 51
        Width = 165
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = '_CIDCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 15
      Top = 335
      Width = 166
      Height = 170
      BandType = btSummary
      object RLMemo1: TRLMemo
        Left = 0
        Top = 128
        Width = 167
        Height = 23
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_forma_pagto: TRLLabel
        Left = 5
        Top = 43
        Width = 75
        Height = 14
        Caption = 'Forma Pagto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 2
        Top = 18
        Width = 165
        Height = 9
        DrawKind = dkLine
      end
      object RLDBText8: TRLDBText
        Left = 0
        Top = 23
        Width = 166
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = '_NOMECLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object rl_valorpago: TRLLabel
        Left = 5
        Top = 57
        Width = 71
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_valortroco: TRLLabel
        Left = 5
        Top = 85
        Width = 73
        Height = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 105
        Width = 165
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sugest'#227'o de Troco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object rl_valordesconto: TRLLabel
        Left = 5
        Top = 71
        Width = 96
        Height = 14
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
