object frm_REL_RETBOLETOS: Tfrm_REL_RETBOLETOS
  Left = 0
  Top = 0
  Caption = 'RELAT'#211'RIO RETORNO BOLETOS'
  ClientHeight = 546
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
    DataSource = dm_DADOS.zdts_FNRETBOLETO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 67
      BandType = btHeader
      object RLDraw3: TRLDraw
        Left = 4
        Top = 0
        Width = 1040
        Height = 45
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 150
        Height = 23
        Caption = 'Retorno de Boletos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 935
        Top = 27
        Width = 35
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
        Text = '/'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 900
        Top = 27
        Width = 35
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 851
        Top = 6
        Width = 118
        Height = 16
        Alignment = taRightJustify
        Text = 'Impresso em '
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 24
        Width = 233
        Height = 16
        Caption = 'Espelho do Arquivo Enviado pelo Banco'
      end
      object RLDBText1: TRLDBText
        Left = 242
        Top = 24
        Width = 217
        Height = 16
        DataField = 'DTPROCESSA'
        DataSource = DataSource1
        Text = 'Dt. Processamento : '
      end
      object RLDBText2: TRLDBText
        Left = 472
        Top = 24
        Width = 116
        Height = 16
        DataField = 'CONTA'
        DataSource = DataSource1
        Text = 'N.'#186' Conta : '
      end
      object RLDBText3: TRLDBText
        Left = 608
        Top = 24
        Width = 153
        Height = 16
        DataField = 'CODCEDENTE'
        DataSource = DataSource1
        Text = 'Cedente : '
      end
      object RLLabel3: TRLLabel
        Left = 198
        Top = 48
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'Vlr. Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 6
        Top = 48
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'N.'#186' Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 102
        Top = 48
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'Nosso N'#250'mero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 294
        Top = 48
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'Vlr. Recebido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 390
        Top = 48
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'Vlr. Desp. Cob.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 486
        Top = 48
        Width = 227
        Height = 16
        AutoSize = False
        Caption = 'C'#243'd. Retorno e Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 715
        Top = 48
        Width = 68
        Height = 16
        AutoSize = False
        Caption = 'Dt. Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 788
        Top = 48
        Width = 59
        Height = 16
        AutoSize = False
        Caption = 'C'#243'd. Rec.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 178
        Top = 2
        Width = 235
        Height = 23
        DataField = 'DTOCORRENCIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = '- Ocorr'#234'ncia : '
      end
      object RLLabel6: TRLLabel
        Left = 855
        Top = 48
        Width = 77
        Height = 16
        AutoSize = False
        Caption = 'C'#243'd. Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 105
      Width = 1047
      Height = 24
      object RLDBText4: TRLDBText
        Left = 3
        Top = 0
        Width = 90
        Height = 16
        AutoSize = False
        DataField = 'NUMDOCUMENTO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 102
        Top = 0
        Width = 90
        Height = 16
        AutoSize = False
        DataField = 'NOSSONUMERO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 198
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRDOCUMENTO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 294
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRRECEBIDO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 390
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRDESP'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 486
        Top = 0
        Width = 43
        Height = 16
        AutoSize = False
        DataField = 'CODRETBANCO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 715
        Top = 0
        Width = 68
        Height = 16
        AutoSize = False
        DataField = 'DTCREDITO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 535
        Top = 0
        Width = 178
        Height = 16
        AutoSize = False
        DataField = 'DESCRETBANCO'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 788
        Top = 0
        Width = 59
        Height = 16
        AutoSize = False
        DataField = 'CODREC'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 855
        Top = 0
        Width = 51
        Height = 16
        DataField = 'CODCLI'
        DataSource = DataSource1
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 912
        Top = 0
        Width = 78
        Height = 14
        DataField = '_NOMECLIENTE'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 129
      Width = 1047
      Height = 30
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 294
        Top = 3
        Width = 90
        Height = 16
        AutoSize = False
        DataField = 'VLRRECEBIDO'
        DataSource = DataSource1
        Info = riSum
        Text = ''
      end
      object RLDBResult2: TRLDBResult
        Left = 198
        Top = 3
        Width = 90
        Height = 16
        AutoSize = False
        DataField = 'VLRDOCUMENTO'
        DataSource = DataSource1
        Info = riSum
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 390
        Top = 3
        Width = 90
        Height = 16
        AutoSize = False
        DataField = 'VLRDESP'
        DataSource = DataSource1
        Info = riSum
        Text = ''
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = dm_DADOS.zqry_FNRETBOLETO
    Left = 792
    Top = 192
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 880
    Top = 192
  end
end
