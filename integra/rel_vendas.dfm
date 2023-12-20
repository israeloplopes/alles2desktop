object frm_REL_VENDAS: Tfrm_REL_VENDAS
  Left = 0
  Top = 0
  Caption = 'RELAT'#211'RIO DE VENDAS'
  ClientHeight = 332
  ClientWidth = 883
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
    DataSource = dm_DADOS.zdts_VDVENDA
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 57
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 3
        Top = 0
        Width = 196
        Height = 24
        Caption = 'Relat'#243'rio de Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 41
        Width = 56
        Height = 15
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 101
        Top = 41
        Width = 42
        Height = 15
        Caption = 'VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 184
        Top = 41
        Width = 133
        Height = 15
        Caption = 'CLIENTE CADASTRADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 399
        Top = 41
        Width = 159
        Height = 15
        Caption = 'CLIENTE N'#195'O IDENTIFICADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 614
        Top = 41
        Width = 67
        Height = 15
        Caption = 'L'#205'Q. VENDA'
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
      Top = 95
      Width = 718
      Height = 50
      object RLDBText1: TRLDBText
        Left = 0
        Top = 6
        Width = 95
        Height = 16
        DataField = 'DTEMITVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 101
        Top = 6
        Width = 77
        Height = 16
        DataField = 'CODVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 184
        Top = 6
        Width = 209
        Height = 16
        AutoSize = False
        DataField = '_NOMECLIENTE'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 399
        Top = 6
        Width = 209
        Height = 16
        AutoSize = False
        DataField = 'NOMECLI'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 614
        Top = 6
        Width = 94
        Height = 16
        AutoSize = False
        DataField = 'VLRLIQVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 184
        Top = 28
        Width = 424
        Height = 16
        AutoSize = False
        DataField = 'OBSVENDA'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 101
        Top = 28
        Width = 77
        Height = 16
        DataField = '_PLANOPAGTO'
        DataSource = dm_DADOS.zdts_VDVENDA
        Text = ''
      end
    end
  end
end
