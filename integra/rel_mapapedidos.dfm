object frm_REL_MAPAPEDIDOS: Tfrm_REL_MAPAPEDIDOS
  Left = 0
  Top = 0
  Caption = 'frm_REL_MAPAPEDIDOS'
  ClientHeight = 531
  ClientWidth = 1191
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
    Left = 1
    Top = 0
    Width = 794
    Height = 1123
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.zdts_VDITVENDA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 130
      BandType = btHeader
      object RLDraw5: TRLDraw
        Left = 696
        Top = 92
        Width = 57
        Height = 38
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 22
        Width = 750
        Height = 70
        Margins.Left = 5
      end
      object RLLabel1: TRLLabel
        Left = 1
        Top = 25
        Width = 192
        Height = 29
        Caption = 'Mapa de Pedido'
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
        Width = 750
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
        Left = 588
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
        Left = 588
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
        Left = 715
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
      object RLDBText7: TRLDBText
        Left = 1
        Top = 56
        Width = 160
        Height = 16
        DataField = 'CODVENDA'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = 'C'#243'd. Pedido : '
      end
      object RLDBText8: TRLDBText
        Left = 1
        Top = 72
        Width = 157
        Height = 16
        DataField = 'DOCVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'C'#243'd. Venda : '
      end
      object RLDBText9: TRLDBText
        Left = 216
        Top = 56
        Width = 134
        Height = 16
        DataField = 'CODCLI'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'C'#243'd. Cliente : '
      end
      object RLDBText10: TRLDBText
        Left = 216
        Top = 72
        Width = 145
        Height = 16
        DataField = 'CODVEND'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'C'#243'd. Vend. : '
      end
      object RLDBText14: TRLDBText
        Left = 416
        Top = 56
        Width = 178
        Height = 16
        DataField = 'DTEMITVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Data Pedido : '
      end
      object RLDBBarcode1: TRLDBBarcode
        Left = 199
        Top = 25
        Width = 162
        Height = 34
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        AutoSize = False
        BarcodeType = bcCode2OF5Matrix
        DataField = 'CODVENDA'
        Ratio = 2.250000000000000000
      end
      object RLDBText17: TRLDBText
        Left = 1
        Top = 92
        Width = 300
        Height = 16
        AutoSize = False
        DataField = '_RAZCLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Raz'#227'o: '
      end
      object RLDBText18: TRLDBText
        Left = 309
        Top = 92
        Width = 300
        Height = 16
        AutoSize = False
        DataField = '_NOMECLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 416
        Top = 72
        Width = 178
        Height = 16
        AutoSize = False
        DataField = '_NOMEVENDEDOR'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText20: TRLDBText
        Left = 1
        Top = 110
        Width = 300
        Height = 16
        AutoSize = False
        DataField = '_CIDADECLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Cidade : '
      end
      object RLDBText21: TRLDBText
        Left = 704
        Top = 92
        Width = 49
        Height = 35
        Alignment = taRightJustify
        DataField = '_SIGLAUF'
        DataSource = dm_DADOS.zdts_VDVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 149
      Width = 756
      Height = 115
      BandType = btHeader
      object rl_numlinhas: TRLLabel
        Left = 3
        Top = 1
        Width = 148
        Height = 16
        Caption = 'N.'#186' de Linhas Digitadas :'
      end
      object rl_numitens: TRLLabel
        Left = 3
        Top = 16
        Width = 145
        Height = 16
        Caption = 'Quant. de Itens Pedido :'
      end
      object RLLabel4: TRLLabel
        Left = 416
        Top = 1
        Width = 125
        Height = 16
        Caption = 'Pedido Digitado por :'
      end
      object RLLabel5: TRLLabel
        Left = 320
        Top = 16
        Width = 81
        Height = 16
        Caption = 'Digitado em :'
      end
      object RLDBText2: TRLDBText
        Left = 407
        Top = 16
        Width = 78
        Height = 16
        AutoSize = False
        DataField = 'DTINS'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 491
        Top = 16
        Width = 78
        Height = 16
        AutoSize = False
        DataField = 'HINS'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 547
        Top = 1
        Width = 190
        Height = 16
        AutoSize = False
        DataField = 'IDUSUINS'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 575
        Top = 16
        Width = 78
        Height = 16
        AutoSize = False
        DataField = 'DTALT'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 659
        Top = 16
        Width = 78
        Height = 16
        AutoSize = False
        DataField = 'HALT'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = ''
      end
      object RLDBText22: TRLDBText
        Left = 3
        Top = 37
        Width = 219
        Height = 16
        DataField = 'VLRPRODVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Vlr. Prod. Venda : '
      end
      object RLDBText23: TRLDBText
        Left = 3
        Top = 54
        Width = 231
        Height = 16
        DataField = 'VLRDESCITVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Vlr. Desc. Venda : '
      end
      object RLDBText24: TRLDBText
        Left = 248
        Top = 37
        Width = 192
        Height = 16
        DataField = 'VLRLIQVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Vlr. Liq. Venda : '
      end
      object rl_tributos: TRLLabel
        Left = 248
        Top = 54
        Width = 104
        Height = 16
        Caption = 'Valor + Tributos :'
      end
      object RLDraw6: TRLDraw
        Left = 0
        Top = 32
        Width = 753
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDBText25: TRLDBText
        Left = 464
        Top = 37
        Width = 187
        Height = 16
        DataField = '_PLANOPAGTO'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Plano Pagto. : '
      end
      object RLDBText26: TRLDBText
        Left = 464
        Top = 54
        Width = 163
        Height = 16
        DataField = '_TIPOCOB'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = 'Tipo Cobran'#231'a : '
      end
      object RLDraw7: TRLDraw
        Left = 3
        Top = 70
        Width = 753
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object RLDBMemo1: TRLDBMemo
        Left = 3
        Top = 76
        Width = 750
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'OBSVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
      end
      object RLDBText27: TRLDBText
        Left = 3
        Top = 95
        Width = 78
        Height = 16
        AutoSize = False
        DataField = 'TIPOFRETEVD'
        DataSource = dm_DADOS.zdts_VDFRETEVD
        Text = 'Frete : '
      end
      object rl_TRANSPORTADORA: TRLLabel
        Left = 100
        Top = 95
        Width = 527
        Height = 16
        AutoSize = False
      end
    end
    object RLDetailGrid1: TRLDetailGrid
      Left = 19
      Top = 264
      Width = 756
      Height = 77
      ColCount = 3
      object RLDraw4: TRLDraw
        Left = 0
        Top = 0
        Width = 252
        Height = 74
      end
      object RLDBText11: TRLDBText
        Left = 1
        Top = 1
        Width = 248
        Height = 16
        AutoSize = False
        DataField = '_DESCPRODUTO'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 1
        Top = 18
        Width = 106
        Height = 15
        DataField = 'QTDITVENDA'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Qtd.: '
      end
      object RLDraw2: TRLDraw
        Left = 224
        Top = 18
        Width = 25
        Height = 21
      end
      object RLDBText13: TRLDBText
        Left = 1
        Top = 33
        Width = 217
        Height = 15
        AutoSize = False
        DataField = '_LOCALPROD'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Local : '
      end
      object RLDraw3: TRLDraw
        Left = 0
        Top = 68
        Width = 250
        Height = 5
        DrawKind = dkLine
        Pen.Style = psDashDot
      end
      object RLDBText15: TRLDBText
        Left = 113
        Top = 18
        Width = 97
        Height = 15
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'C'#243'd. :'
      end
      object RLDBText16: TRLDBText
        Left = 1
        Top = 51
        Width = 128
        Height = 16
        AutoSize = False
        DataField = 'CODLOTE'
        DataSource = dm_DADOS.zdts_VDITVENDA
        Text = 'Lote : '
      end
    end
    object RLBand3: TRLBand
      Left = 19
      Top = 341
      Width = 756
      Height = 116
      BandType = btSummary
      object RLImage1: TRLImage
        Left = 3
        Top = 3
        Width = 105
        Height = 105
      end
    end
  end
end
