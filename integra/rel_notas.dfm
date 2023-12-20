object frm_REL_NOTAS: Tfrm_REL_NOTAS
  Left = 0
  Top = 0
  Caption = 'frm_REL_NOTAS'
  ClientHeight = 404
  ClientWidth = 1280
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
    DataSource = dm_DADOS.zdts_SGNF
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
        Left = -32
        Top = 45
        Width = 1079
        Height = 51
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 50
        Width = 343
        Height = 29
        Caption = 'Relat'#243'rio Gerencial de Notas Fiscais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 934
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
        Left = 954
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
    object RLBand2: TRLBand
      Left = 38
      Top = 137
      Width = 1047
      Height = 24
      BandType = btHeader
      object RLDraw2: TRLDraw
        Left = -38
        Top = 18
        Width = 1085
        Height = 5
        DrawKind = dkLine
        Pen.Mode = pmMask
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel3: TRLLabel
        Left = 11
        Top = 0
        Width = 161
        Height = 16
        Caption = 'C'#243'digo           Chave/Cod Mov.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 470
        Top = 0
        Width = 127
        Height = 16
        Caption = 'Data e Hora da Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 650
        Top = 0
        Width = 45
        Height = 16
        Caption = 'Valor     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 730
        Top = 2
        Width = 89
        Height = 16
        Caption = 'Situa'#231#227'o/Motivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 968
        Top = 2
        Width = 18
        Height = 16
        Caption = 'N.'#186
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 161
      Width = 1047
      Height = 55
      object RLDBText3: TRLDBText
        Left = 3
        Top = 1
        Width = 55
        Height = 16
        DataField = 'CODIGO'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 85
        Top = 1
        Width = 379
        Height = 16
        AutoSize = False
        DataField = 'CHAVE'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 470
        Top = 36
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 540
        Top = 36
        Width = 41
        Height = 16
        DataField = 'HORA'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 650
        Top = 36
        Width = 87
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 750
        Top = 36
        Width = 294
        Height = 16
        AutoSize = False
        DataField = 'SITUACAO'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 968
        Top = 1
        Width = 61
        Height = 16
        DataField = 'NUMERO'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 85
        Top = 18
        Width = 163
        Height = 16
        AutoSize = False
        DataField = 'CODMOV'
        DataSource = dm_DADOS.zdts_SGNF
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 254
        Top = 18
        Width = 87
        Height = 16
        DataField = 'NFCE'
        DataSource = dm_DADOS.zdts_SGNF
        Text = 'NFCe ? '
      end
      object RLDBText12: TRLDBText
        Left = 470
        Top = 18
        Width = 574
        Height = 16
        AutoSize = False
        DataField = 'REFDEVOLUCAO'
        DataSource = dm_DADOS.zdts_SGNF
        Text = 'Ref. Devolu'#231#227'o: '
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 240
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
    object RLBand5: TRLBand
      Left = 38
      Top = 216
      Width = 1047
      Height = 24
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 603
        Top = 2
        Width = 95
        Height = 16
        Alignment = taRightJustify
        DataFormula = 'VALOR'
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLLabel7: TRLLabel
        Left = 468
        Top = 2
        Width = 122
        Height = 16
        Caption = 'Valor Total de Notas'
      end
    end
  end
  object RLSubDetail1: TRLSubDetail
    Left = 648
    Top = 128
    Width = 1
    Height = 64
    Transparent = False
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 384
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2015 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 448
    Top = 8
  end
end
