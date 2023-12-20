object frm_REL_PEDIDO: Tfrm_REL_PEDIDO
  Left = 0
  Top = 0
  Caption = 'Pedido/Or'#231'amento'
  ClientHeight = 628
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
    Width = 268
    Height = 435
    Margins.LeftMargin = 2.000000000000000000
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
    PageSetup.PaperWidth = 71.000000000000000000
    PageSetup.PaperHeight = 115.000000000000000000
    PrintDialog = False
    Title = 'Pedido Expresso'
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 8
      Top = 8
      Width = 252
      Height = 82
      BandType = btHeader
      object RLSystemInfo1: TRLSystemInfo
        Left = 2
        Top = 20
        Width = 200
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object rl_DESENVOLVEDOR: TRLLabel
        Left = 1
        Top = 0
        Width = 250
        Height = 12
        Alignment = taCenter
        AutoSize = False
        Caption = 'IntegraERP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 208
        Top = 20
        Width = 43
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
        Left = 1
        Top = 36
        Width = 282
        Height = 5
        DrawHeight = 1
        DrawKind = dkLine
        DrawWidth = 0
        Pen.Width = 2
      end
      object RLDBText5: TRLDBText
        Left = 1
        Top = 40
        Width = 250
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
        Left = 1
        Top = 63
        Width = 250
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'FONEFILIAL'
        DataSource = dm_DADOS.zdts_SGFILIAL
        Text = 'Tel.: '
      end
      object RLLabel1: TRLLabel
        Left = 1
        Top = 0
        Width = 250
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
      Left = 8
      Top = 257
      Width = 252
      Height = 36
      object RLDBText1: TRLDBText
        Left = 3
        Top = 17
        Width = 245
        Height = 12
        AutoSize = False
        DataField = '_NOMEPRODUTO'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 162
        Top = 1
        Width = 89
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRVENDA'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 3
        Top = 1
        Width = 65
        Height = 12
        DataField = 'QUANT'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Qtd.: '
      end
      object RLDBText4: TRLDBText
        Left = 82
        Top = 1
        Width = 75
        Height = 12
        AutoSize = False
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_ITFASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'C'#243'd.:'
      end
      object RLDraw4: TRLDraw
        Left = 0
        Top = 35
        Width = 285
        Height = 2
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
    object RLBand3: TRLBand
      Left = 8
      Top = 90
      Width = 252
      Height = 167
      BandType = btTitle
      object RLDraw1: TRLDraw
        Left = 1
        Top = 0
        Width = 250
        Height = 122
        Pen.Width = 2
      end
      object RLDBText6: TRLDBText
        Left = 3
        Top = 68
        Width = 121
        Height = 15
        DataField = 'IDFASTSALE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Cupom: '
      end
      object RLDBText7: TRLDBText
        Left = 141
        Top = 68
        Width = 108
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALORTOTAL'
        DataSource = dm_DADOS.zdts_FASTSALE
        DisplayMask = 'R$ ###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object rl_NOMECLI: TRLLabel
        Left = 3
        Top = 2
        Width = 245
        Height = 19
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object rl_VDVENDA: TRLLabel
        Left = 2
        Top = 103
        Width = 119
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 48
        Top = 125
        Width = 154
        Height = 16
        Alignment = taCenter
        Caption = 'Observa'#231#245'es do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object rl_OBSVENDA: TRLLabel
        Left = 1
        Top = 145
        Width = 250
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 3
        Top = 21
        Width = 245
        Height = 16
        AutoSize = False
        DataField = '_ENDCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 3
        Top = 36
        Width = 56
        Height = 15
        DataField = '_NUMCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 129
        Top = 36
        Width = 119
        Height = 15
        AutoSize = False
        DataField = '_BAIRROCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 3
        Top = 52
        Width = 245
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = '_CIDCLI'
        DataSource = dm_DADOS.zdts_FASTSALE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rl_ADICIONAL: TRLLabel
        Left = 141
        Top = 84
        Width = 108
        Height = 15
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_SOMA: TRLLabel
        Left = 141
        Top = 103
        Width = 108
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_DESCONTO: TRLLabel
        Left = 3
        Top = 84
        Width = 121
        Height = 15
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 8
      Top = 293
      Width = 252
      Height = 135
      BandType = btSummary
      object RLMemo1: TRLMemo
        Left = 3
        Top = 122
        Width = 245
        Height = 10
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbl_forma_pagto: TRLLabel
        Left = 3
        Top = 52
        Width = 93
        Height = 16
        Caption = 'Forma Pagto.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 20
        Top = 18
        Width = 210
        Height = 9
        DrawKind = dkLine
      end
      object rl_valorpago: TRLLabel
        Left = 3
        Top = 68
        Width = 93
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_valortroco: TRLLabel
        Left = 3
        Top = 84
        Width = 93
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 3
        Top = 102
        Width = 250
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sugest'#227'o do Troco a ser devolvido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object rl_valordesconto: TRLLabel
        Left = 155
        Top = 68
        Width = 93
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_nomerodape: TRLLabel
        Left = 3
        Top = 23
        Width = 240
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object rl_doccli: TRLLabel
        Left = 3
        Top = 37
        Width = 240
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
