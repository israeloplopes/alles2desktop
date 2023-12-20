object frm_REL_ETIQUETA: Tfrm_REL_ETIQUETA
  Left = 0
  Top = 0
  Caption = 'frm_REL_ETIQUETA'
  ClientHeight = 420
  ClientWidth = 605
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
    Width = 416
    Height = 227
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 2.000000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 110.000000000000000000
    PageSetup.PaperHeight = 60.000000000000000000
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 8
      Width = 389
      Height = 208
      object RLDraw2: TRLDraw
        Left = 1
        Top = 120
        Width = 385
        Height = 2
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLDBText3: TRLDBText
        Left = 150
        Top = 175
        Width = 49
        Height = 23
        AutoSize = False
        DataField = 'QTDFRETEVD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = '/'
      end
      object RLDBText4: TRLDBText
        Left = 3
        Top = 90
        Width = 138
        Height = 27
        AutoSize = False
        DataField = 'CODVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'NP: '
      end
      object RLDBText5: TRLDBText
        Left = 160
        Top = 90
        Width = 217
        Height = 27
        AutoSize = False
        DataField = 'DOCVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'NF: '
      end
      object RLDBText8: TRLDBText
        Left = 81
        Top = 59
        Width = 216
        Height = 18
        DataField = '_CIDADECLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Text = 'Destino: '
      end
      object RLDraw4: TRLDraw
        Left = 1
        Top = 80
        Width = 385
        Height = 2
        DrawKind = dkLine
        Pen.Width = 2
        Visible = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 100
        Top = 175
        Width = 51
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itCarbonCopy
        ParentFont = False
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 347
        Top = 59
        Width = 106
        Height = 18
        DataField = '_UFCLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 3
        Top = 3
        Width = 383
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'CODCLI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'Raz'#227'o: '
      end
      object RLLabel1: TRLLabel
        Left = 21
        Top = 175
        Width = 73
        Height = 18
        Caption = 'Volumes: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rl_lbl_TRANSP: TRLLabel
        Left = 3
        Top = 145
        Width = 384
        Height = 24
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 20
        Width = 385
        Height = 38
      end
      object rl_lbl_NOME: TRLLabel
        Left = 3
        Top = 29
        Width = 383
        Height = 24
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 123
        Width = 382
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end
