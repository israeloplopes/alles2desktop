object frm_REL_INVENTARIO: Tfrm_REL_INVENTARIO
  Left = 0
  Top = 0
  Caption = 'frm_REL_INVENTARIO'
  ClientHeight = 463
  ClientWidth = 1099
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
    Width = 1123
    Height = 794
    DataSource = frm_TRANS_ALMOX.dts_EQSALDOPROD_ORIGEM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 115
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 416
        Top = 0
        Width = 214
        Height = 22
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Invent'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 24
        Width = 1041
        Height = 16
        Alignment = taCenter
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 88
        Width = 1044
        Height = 27
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 93
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel4: TRLLabel
        Left = 86
        Top = 93
        Width = 33
        Height = 16
        Caption = 'NCM'
      end
      object RLLabel5: TRLLabel
        Left = 174
        Top = 93
        Width = 62
        Height = 16
        Caption = 'Descri'#231#227'o'
      end
      object RLLabel6: TRLLabel
        Left = 528
        Top = 93
        Width = 51
        Height = 16
        Caption = 'Unidade'
      end
      object RLLabel7: TRLLabel
        Left = 608
        Top = 93
        Width = 106
        Height = 16
        Caption = 'Vlr. Unit'#225'rio Base'
      end
      object RLLabel8: TRLLabel
        Left = 743
        Top = 93
        Width = 86
        Height = 16
        Caption = 'Saldo Produto'
      end
      object RLLabel9: TRLLabel
        Left = 864
        Top = 93
        Width = 32
        Height = 16
        Caption = 'Total'
      end
      object RLDraw2: TRLDraw
        Left = 78
        Top = 88
        Width = 2
        Height = 28
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw4: TRLDraw
        Left = 166
        Top = 88
        Width = 2
        Height = 28
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 520
        Top = 88
        Width = 2
        Height = 48
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw6: TRLDraw
        Left = 595
        Top = 88
        Width = 2
        Height = 28
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw7: TRLDraw
        Left = 735
        Top = 88
        Width = 2
        Height = 48
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
      object RLDraw8: TRLDraw
        Left = 856
        Top = 88
        Width = 2
        Height = 28
        Angle = 90.000000000000000000
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 153
      Width = 1047
      Height = 26
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 69
        Height = 16
        DataField = 'CODPROD'
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 174
        Top = 6
        Width = 77
        Height = 16
        DataField = 'DESCPROD'
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 86
        Top = 6
        Width = 61
        Height = 16
        DataField = 'CODFISC'
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 528
        Top = 6
        Width = 62
        Height = 16
        DataField = 'CODUNID'
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 608
        Top = 6
        Width = 123
        Height = 16
        Alignment = taRightJustify
        DataField = 'PRECOBASEPROD'
        DisplayMask = '###,###,###.##.00'
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 764
        Top = 6
        Width = 86
        Height = 16
        Alignment = taRightJustify
        DataField = 'SLDLIQPROD'
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 901
        Top = 6
        Width = 44
        Height = 16
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DisplayMask = '###,###,###.##.00'
        Text = ''
      end
      object RLDraw3: TRLDraw
        Left = 272
        Top = 136
        Width = 80
        Height = 48
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 179
      Width = 1047
      Height = 40
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLDBResult1: TRLDBResult
        Left = 507
        Top = 21
        Width = 83
        Height = 16
        DataField = 'TOTAL'
        Info = riSum
        Text = ''
        Visible = False
        OnCompute = RLDBResult1Compute
      end
      object RLLabel10: TRLLabel
        Left = 864
        Top = 6
        Width = 65
        Height = 16
      end
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 528
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 568
    Top = 16
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 480
    Top = 16
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 416
    Top = 16
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 768
    Top = 304
  end
end
