object frm_REL_ULTTITULOS: Tfrm_REL_ULTTITULOS
  Left = 0
  Top = 0
  Caption = 'RELATORIO ULTIMOS TITULOS'
  ClientHeight = 721
  ClientWidth = 827
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
    Width = 794
    Height = 1123
    DataSource = dm_DADOS.dts_ULTTITULO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 95
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 22
        Width = 700
        Height = 70
        Margins.Left = 5
      end
      object RLLabel1: TRLLabel
        Left = 1
        Top = 25
        Width = 332
        Height = 29
        Caption = #218'ltimos Recebimentos por Per'#237'odo'
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
        Width = 700
        Height = 16
        Alignment = taCenter
        DataField = 'RAZFILIAL'
        DataSource = dm_DADOS.dts_SGFILIAL
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 516
        Top = 40
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 516
        Top = 24
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 643
        Top = 40
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
      object rl_datas: TRLLabel
        Left = 3
        Top = 60
        Width = 50
        Height = 16
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 75
        Width = 54
        Height = 14
        Caption = 'C'#243'd. Rec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 133
        Top = 75
        Width = 70
        Height = 14
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 392
        Top = 75
        Width = 71
        Height = 14
        Caption = 'Data M'#225'xima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 505
        Top = 75
        Width = 66
        Height = 14
        Caption = 'Valor T'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 133
      Width = 718
      Height = 18
      object RLDBText2: TRLDBText
        Left = 3
        Top = 0
        Width = 59
        Height = 16
        DataField = 'CODREC'
        DataSource = dm_DADOS.dts_ULTTITULO
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 133
        Top = 0
        Width = 253
        Height = 16
        AutoSize = False
        DataField = 'RAZCLI'
        DataSource = dm_DADOS.dts_ULTTITULO
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 392
        Top = 0
        Width = 89
        Height = 16
        AutoSize = False
        DataField = 'MAX'
        DataSource = dm_DADOS.dts_ULTTITULO
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 505
        Top = 0
        Width = 102
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRREC'
        DataSource = dm_DADOS.dts_ULTTITULO
        Text = ''
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 656
    Top = 328
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'IntegraERP - Documento PDF'
    Left = 568
    Top = 464
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 640
    Top = 464
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 568
    Top = 424
  end
end
