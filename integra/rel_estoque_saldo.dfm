object frm_REL_ESTOQUESALDO: Tfrm_REL_ESTOQUESALDO
  Left = 0
  Top = 0
  Caption = 'ESTOQUE SALDO'
  ClientHeight = 526
  ClientWidth = 842
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
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.zdts_EQPRODUTO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 756
      Height = 70
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 334
        Height = 25
        Caption = 'Relat'#243'rio Estoque Produtos com Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 24
        Width = 220
        Height = 16
        Caption = 'Simples Confer'#234'ncia Produto x Saldo'
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 43
        Width = 750
        Height = 22
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 46
        Width = 728
        Height = 16
        Caption = 
          'C'#243'digo        EAN                            Descri'#231#227'o do Produt' +
          'o                                                               ' +
          '     Custo Informado      Pre'#231'o Base              Saldo Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 536
        Top = 2
        Width = 215
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itNow
        Text = 'Impresso em: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 666
        Top = 21
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Info = itPageNumber
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 19
      Top = 89
      Width = 756
      Height = 30
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 54
        Height = 16
        AutoSize = False
        DataField = 'CODPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 63
        Top = 0
        Width = 96
        Height = 16
        AutoSize = False
        DataField = 'CODBARPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 165
        Top = 0
        Width = 300
        Height = 16
        AutoSize = False
        DataField = 'DESCPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 471
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'CUSTOINFOPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 567
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECOBASEPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 663
        Top = 0
        Width = 90
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SLDPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Text = ''
      end
      object RLDraw2: TRLDraw
        Left = 9
        Top = 18
        Width = 744
        Height = 11
        DrawKind = dkLine
        Pen.Style = psDot
      end
    end
  end
end
