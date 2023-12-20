object frm_REL_VENDASTRANSP: Tfrm_REL_VENDASTRANSP
  Left = 0
  Top = 0
  Caption = 'frm_REL_VENDASTRANSP'
  ClientHeight = 401
  ClientWidth = 1160
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
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    DataSource = frm_DLG_VENDASTRANSP.dts_TRANSP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 19
      Top = 38
      Width = 1085
      Height = 75
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 22
        Width = 1079
        Height = 35
        Margins.Left = 5
      end
      object RLLabel1: TRLLabel
        Left = 1
        Top = 25
        Width = 200
        Height = 29
        Caption = 'Vendas x Transporte'
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
        Width = 1079
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
      object RLSystemInfo2: TRLSystemInfo
        Left = 916
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
        Left = 916
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
        Left = 1043
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
      object RLLabel2: TRLLabel
        Left = 0
        Top = 58
        Width = 59
        Height = 14
        Caption = 'C'#243'd. Tran.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 60
        Top = 58
        Width = 140
        Height = 14
        Caption = 'Nome da Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 297
        Top = 58
        Width = 66
        Height = 14
        Caption = 'C'#243'd. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 367
        Top = 58
        Width = 64
        Height = 14
        Caption = 'Doc. Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 437
        Top = 58
        Width = 73
        Height = 14
        Caption = 'Vlr. Cheio NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 515
        Top = 58
        Width = 64
        Height = 14
        Caption = 'Peso Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 583
        Top = 58
        Width = 25
        Height = 14
        Caption = 'Qtd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 631
        Top = 58
        Width = 47
        Height = 14
        Caption = 'Data Alt.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 709
        Top = 58
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
      object RLLabel11: TRLLabel
        Left = 917
        Top = 58
        Width = 57
        Height = 14
        Caption = 'Cidade/UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 153
      Width = 1085
      Height = 22
      BandType = btSummary
      object RLDBResult1: TRLDBResult
        Left = 330
        Top = 3
        Width = 182
        Height = 18
        Alignment = taRightJustify
        DataFormula = 'VLRPRODVENDA'
        DataSource = DataSource1
        DisplayMask = 'R$ ##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 177
        Top = 3
        Width = 133
        Height = 18
        Caption = 'Vlr. Total das NF'#180's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 19
      Top = 113
      Width = 1085
      Height = 40
      DataFields = 'CODTRAN'
      object Detalhe_Grupo: TRLBand
        Left = 0
        Top = 0
        Width = 1085
        Height = 20
        object RLDBText4: TRLDBText
          Left = 296
          Top = 2
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CODVENDA'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText5: TRLDBText
          Left = 366
          Top = 2
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DOCVENDA'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 437
          Top = 2
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPRODVENDA'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 515
          Top = 2
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'PESOBRUTVD'
          DataSource = DataSource1
          DisplayMask = '##0.000'
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 583
          Top = 2
          Width = 45
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDFRETEVD'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 631
          Top = 2
          Width = 75
          Height = 16
          AutoSize = False
          DataField = 'DTALT'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 709
          Top = 2
          Width = 205
          Height = 16
          AutoSize = False
          DataField = 'RAZCLI'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 917
          Top = 2
          Width = 142
          Height = 16
          AutoSize = False
          DataField = 'CIDCLI'
          DataSource = DataSource1
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 1060
          Top = 2
          Width = 25
          Height = 16
          AutoSize = False
          DataField = 'UFCLI'
          DataSource = DataSource1
          Text = ''
        end
      end
      object RLDBText3: TRLDBText
        Left = 60
        Top = 2
        Width = 230
        Height = 16
        AutoSize = False
        DataField = '_NOMETRANS'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 1
        Top = 2
        Width = 60
        Height = 16
        AutoSize = False
        DataField = 'CODTRAN'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 1090
        Height = 2
        DrawKind = dkLine
        Pen.Width = 2
      end
      object Sumario_Grupo: TRLBand
        Left = 0
        Top = 20
        Width = 1085
        Height = 21
        BandType = btSummary
        object RLSystemInfo4: TRLSystemInfo
          Left = 541
          Top = 248
          Width = 39
          Height = 16
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 338
          Top = 2
          Width = 174
          Height = 17
          Alignment = taRightJustify
          DataField = 'VLRPRODVENDA'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLLabel14: TRLLabel
          Left = 177
          Top = 1
          Width = 179
          Height = 17
          Caption = 'Vlr. Total por Agrupamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
      end
    end
    object RLBand4: TRLBand
      Left = 19
      Top = 175
      Width = 1085
      Height = 22
      BandType = btFooter
      object RLLabel13: TRLLabel
        Left = 0
        Top = 0
        Width = 259
        Height = 14
        Caption = 'http://www.nonoelemento.com.br - IntegraERP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 448
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = frm_DLG_VENDASTRANSP.zqry_TRANSP
    Left = 208
    Top = 272
  end
end
