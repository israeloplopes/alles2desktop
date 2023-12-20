object frm_REL_VENDAS: Tfrm_REL_VENDAS
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Vendas'
  ClientHeight = 434
  ClientWidth = 1262
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
    DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
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
        Width = 238
        Height = 29
        Caption = 'Relat'#243'rio de Vendas'
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
      Height = 88
      DataFields = 'CODVENDA'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 49
        BandType = btHeader
        object RLDBText3: TRLDBText
          Left = 3
          Top = 3
          Width = 130
          Height = 16
          DataField = 'DTEMITVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = 'Data: '
        end
        object RLDBText4: TRLDBText
          Left = 152
          Top = 3
          Width = 113
          Height = 16
          DataField = 'CODTIPOMOV'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = 'Movimento: '
        end
        object RLDBText5: TRLDBText
          Left = 280
          Top = 3
          Width = 156
          Height = 16
          DataField = 'DESCTIPOCOB'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = 'Tipo Cob: '
        end
        object RLDBText6: TRLDBText
          Left = 456
          Top = 3
          Width = 153
          Height = 16
          DataField = 'CODVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = 'C'#243'd. Venda: '
        end
        object RLDBText7: TRLDBText
          Left = 624
          Top = 3
          Width = 153
          Height = 16
          DataField = 'DOCVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = 'Doc. Venda: '
        end
        object RLDBText8: TRLDBText
          Left = 3
          Top = 25
          Width = 51
          Height = 16
          DataField = 'CODCLI'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 60
          Top = 25
          Width = 376
          Height = 16
          DataField = 'NOMECLI'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 456
          Top = 25
          Width = 153
          Height = 16
          AutoSize = False
          DataField = 'VLRVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          DisplayMask = '###,###,##0.00'
          Text = 'Vlr. Venda: '
        end
        object RLDBText11: TRLDBText
          Left = 624
          Top = 25
          Width = 153
          Height = 16
          AutoSize = False
          DataField = 'VLRDESCVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          DisplayMask = '###,###,##0.00'
          Text = 'Vlr. Desc.: '
        end
        object RLDBText12: TRLDBText
          Left = 792
          Top = 25
          Width = 153
          Height = 16
          AutoSize = False
          DataField = 'VLRLIQVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          DisplayMask = '###,###,##0.00'
          Text = 'Vlr. Liq.: '
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 49
        Width = 1047
        Height = 32
        object RLDBText13: TRLDBText
          Left = 24
          Top = 6
          Width = 69
          Height = 16
          DataField = 'CODPROD'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 99
          Top = 6
          Width = 337
          Height = 16
          AutoSize = False
          DataField = 'DESCPROD'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 456
          Top = 6
          Width = 62
          Height = 16
          DataField = 'CODUNID'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 524
          Top = 6
          Width = 85
          Height = 16
          Alignment = taRightJustify
          DataField = 'QTDITVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 656
          Top = 6
          Width = 121
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPRODITVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 824
          Top = 6
          Width = 121
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRLIQITVENDA'
          DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
          Text = ''
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 225
      Width = 1047
      Height = 40
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 728
        Top = 6
        Width = 217
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'VLRLIQVENDA'
        DataSource = frm_DLG_VENDAS.zdts_MOVIMENTO
        Info = riSum
        Text = 'Vlr. Apurado '
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 352
    Top = 296
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 464
    Top = 304
  end
end
