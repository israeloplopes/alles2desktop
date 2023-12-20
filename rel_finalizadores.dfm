object frm_REL_FINALIZADORES: Tfrm_REL_FINALIZADORES
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Finalizadores'
  ClientHeight = 363
  ClientWidth = 1184
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
    Width = 1123
    Height = 794
    DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
    DefaultFilter = RLPDFFilter1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 99
      BandType = btHeader
      object rl_datas: TRLLabel
        Left = 3
        Top = 80
        Width = 50
        Height = 16
      end
      object rl_endereco: TRLLabel
        Left = -32
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
        Left = -31
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
        Left = 497
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
      object RLDraw1: TRLDraw
        Left = 0
        Top = 45
        Width = 1044
        Height = 51
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 50
        Width = 307
        Height = 29
        Caption = 'Relat'#243'rio de Finalizadores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 927
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
      object RLSystemInfo3: TRLSystemInfo
        Left = 947
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
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 137
      Width = 1047
      Height = 64
      DataFields = 'DATA'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 27
        object RLDBText3: TRLDBText
          Left = 16
          Top = 3
          Width = 38
          Height = 16
          DataField = 'DATA'
          DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 96
          Top = 3
          Width = 137
          Height = 16
          DataField = 'DESCCOB'
          DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 304
          Top = 3
          Width = 48
          Height = 16
          DataField = 'VALOR'
          DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
          Text = ''
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 27
        Width = 1047
        Height = 28
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 164
          Top = 6
          Width = 188
          Height = 16
          Alignment = taRightJustify
          DataFormula = 'VALOR'
          DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = 'Total Parcial '
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 201
      Width = 1047
      Height = 24
      BandType = btSummary
      object RLDBResult2: TRLDBResult
        Left = 164
        Top = 2
        Width = 188
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'VALOR'
        DataSource = frm_DLG_VENDAS.zdts_TIPOSPAGTO
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = 'Total Geral '
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 225
      Width = 1047
      Height = 24
      BandType = btFooter
      object RLLabel2: TRLLabel
        Left = 3
        Top = 6
        Width = 250
        Height = 14
        Caption = 'Alles | NonoElemento |  www.nonoelemento.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 464
    Top = 288
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 256
    Top = 280
  end
end
