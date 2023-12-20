object frm_REL_CHEQUES: Tfrm_REL_CHEQUES
  Left = 0
  Top = 0
  Caption = 'frm_REL_CHEQUES'
  ClientHeight = 412
  ClientWidth = 1154
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
    DataSource = dm_DADOS.zdts_FNCHEQUE
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
      Height = 85
      BandType = btHeader
      object RLDraw1: TRLDraw
        Left = 3
        Top = 45
        Width = 1041
        Height = 36
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 50
        Width = 209
        Height = 27
        Caption = 'Espelho dos Cheques'
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
        Width = 500
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
        Left = 928
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
        Left = 928
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
      object RLSystemInfo1: TRLSystemInfo
        Left = 1055
        Top = 68
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
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 123
      Width = 1047
      Height = 60
      object RLDBText3: TRLDBText
        Left = 3
        Top = 3
        Width = 134
        Height = 16
        DataField = 'SEQCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Seq. Cheq.: '
      end
      object RLDBText4: TRLDBText
        Left = 143
        Top = 3
        Width = 80
        Height = 16
        DataField = 'CODBANC'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Banco: '
      end
      object RLDBText5: TRLDBText
        Left = 229
        Top = 3
        Width = 76
        Height = 16
        DataField = 'AGENCIACHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Ag.: '
      end
      object RLDBText6: TRLDBText
        Left = 311
        Top = 3
        Width = 103
        Height = 16
        DataField = 'CONTAEMITE'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Conta: '
      end
      object RLDBText7: TRLDBText
        Left = 420
        Top = 3
        Width = 134
        Height = 16
        DataField = 'NUMCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'N.'#186' Cheq.: '
      end
      object RLDBText8: TRLDBText
        Left = 560
        Top = 3
        Width = 154
        Height = 16
        DataField = 'DTVENCTOCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Dt. Vencto.: '
      end
      object RLDBText9: TRLDBText
        Left = 720
        Top = 3
        Width = 88
        Height = 16
        DataField = 'SITCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Sit.: '
      end
      object RLDBText10: TRLDBText
        Left = 3
        Top = 20
        Width = 302
        Height = 16
        AutoSize = False
        DataField = 'NOMEEMITCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Emit.: '
      end
      object RLDBText11: TRLDBText
        Left = 311
        Top = 20
        Width = 302
        Height = 16
        AutoSize = False
        DataField = 'HISTCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Hist.: '
      end
      object RLDBText12: TRLDBText
        Left = 615
        Top = 20
        Width = 302
        Height = 16
        AutoSize = False
        DataField = 'NOMEFAVCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Fav.: '
      end
      object RLDBText13: TRLDBText
        Left = 3
        Top = 38
        Width = 134
        Height = 16
        DataField = 'CODVENDA'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'C'#243'd. Venda: '
      end
      object RLDBText14: TRLDBText
        Left = 143
        Top = 38
        Width = 134
        Height = 16
        AutoSize = False
        DataField = 'CODCLI'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'C'#243'd. Cli.: '
      end
      object RLDBText15: TRLDBText
        Left = 283
        Top = 38
        Width = 154
        Height = 16
        AutoSize = False
        DataField = 'DTDEPCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Dt. Depto.: '
      end
      object RLDBText16: TRLDBText
        Left = 443
        Top = 38
        Width = 154
        Height = 16
        AutoSize = False
        DataField = 'DTDEVOLCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Dt. Dev. Ch.: '
      end
      object RLDBText17: TRLDBText
        Left = 603
        Top = 38
        Width = 54
        Height = 16
        AutoSize = False
        DataField = 'CODALINEA'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Al.: '
      end
      object RLDBText18: TRLDBText
        Left = 663
        Top = 38
        Width = 163
        Height = 16
        DataField = 'DTCOMPCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Text = 'Dt. Comp.: '
      end
      object RLDBText19: TRLDBText
        Left = 923
        Top = 20
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VLRCHEQ'
        DataSource = dm_DADOS.zdts_FNCHEQUE
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 183
      Width = 1047
      Height = 20
      BandType = btFooter
      object RLLabel13: TRLLabel
        Left = 8
        Top = 2
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
    Left = 440
    Top = 256
  end
end
