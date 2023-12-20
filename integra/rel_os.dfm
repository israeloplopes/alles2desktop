object frm_REL_OS: Tfrm_REL_OS
  Left = 0
  Top = 0
  Caption = 'frm_REL_OS'
  ClientHeight = 431
  ClientWidth = 1148
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlreport1: TRLReport
    Left = 8
    Top = 0
    Width = 1123
    Height = 794
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.dts_EQRECMERC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = rlreport1BeforePrint
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
        Width = 282
        Height = 29
        Caption = 'Espelho da Ordem de Servi'#231'o'
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
        Left = 969
        Top = 65
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
      object rl_nomestatus: TRLLabel
        Left = 3
        Top = 102
        Width = 86
        Height = 16
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
        Width = 335
        Height = 16
        Caption = 'Data Abertura |Data Atendimento   Nome Fantasia/Nome Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 499
        Top = 3
        Width = 34
        Height = 16
        Caption = 'Ticket'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 3
        Top = 22
        Width = 1085
        Height = 5
        DrawKind = dkLine
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel5: TRLLabel
        Left = 556
        Top = 3
        Width = 60
        Height = 16
        Caption = 'Solicitante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 735
        Top = 3
        Width = 86
        Height = 16
        Caption = 'T'#233'cnico/Auxiliar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 1044
        Top = 3
        Width = 38
        Height = 16
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 170
      Width = 1085
      Height = 25
      object RLDraw9: TRLDraw
        Left = 1044
        Top = -3
        Width = 40
        Height = 25
        Transparent = False
      end
      object RLDraw8: TRLDraw
        Left = 728
        Top = -3
        Width = 316
        Height = 25
        Transparent = False
      end
      object RLDraw7: TRLDraw
        Left = 549
        Top = -3
        Width = 180
        Height = 25
        Transparent = False
      end
      object RLDraw6: TRLDraw
        Left = 490
        Top = -3
        Width = 60
        Height = 25
        Transparent = False
      end
      object RLDraw5: TRLDraw
        Left = 183
        Top = -3
        Width = 310
        Height = 25
        Transparent = False
      end
      object RLDraw4: TRLDraw
        Left = 78
        Top = -3
        Width = 106
        Height = 25
        Transparent = False
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = -3
        Width = 79
        Height = 25
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 0
        Top = 3
        Width = 73
        Height = 16
        Alignment = taRightJustify
        DataField = 'DTENT'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 85
        Top = 3
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'DTATENDE'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 184
        Top = 3
        Width = 300
        Height = 16
        AutoSize = False
        DataField = 'NOMECLIENTE'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 499
        Top = 3
        Width = 48
        Height = 16
        DataField = 'TICKET'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 553
        Top = 3
        Width = 170
        Height = 16
        AutoSize = False
        DataField = 'SOLICITANTE'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 898
        Top = 3
        Width = 145
        Height = 16
        AutoSize = False
        DataField = 'NOMETECNICO'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 1044
        Top = 3
        Width = 50
        Height = 16
        AutoSize = False
        DataField = 'STATUS'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 732
        Top = 3
        Width = 150
        Height = 16
        AutoSize = False
        DataField = 'NOMEATENDENTE'
        DataSource = dm_DADOS.dts_EQRECMERC
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 195
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
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 352
    Top = 40
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 352
    Top = 88
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 360
    Top = 136
  end
end
