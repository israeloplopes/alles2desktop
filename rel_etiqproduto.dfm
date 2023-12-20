object frm_REL_ETIQPRODUTO: Tfrm_REL_ETIQPRODUTO
  Left = 0
  Top = 0
  Caption = 'frm_REL_ETIQPRODUTO'
  ClientHeight = 420
  ClientWidth = 605
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
    Width = 227
    Height = 113
    Margins.LeftMargin = 2.000000000000000000
    Margins.TopMargin = 0.000000000000000000
    Margins.RightMargin = 2.000000000000000000
    Margins.BottomMargin = 2.000000000000000000
    DataSource = dm_DADOS.zdts_EQPRODUTO
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 60.000000000000000000
    PageSetup.PaperHeight = 30.000000000000000000
    object RLBand1: TRLBand
      Left = 8
      Top = 0
      Width = 211
      Height = 102
      Margins.TopMargin = 10.000000000000000000
      object RLDBText5: TRLDBText
        Left = 110
        Top = 61
        Width = 98
        Height = 41
        AutoSize = False
        DataField = 'REFPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
      object RLDBBarcode1: TRLDBBarcode
        Left = 1
        Top = 60
        Width = 100
        Height = 34
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        AutoSize = False
        DataField = 'CODBARPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        ShowText = boCode
      end
      object RLDBText1: TRLDBText
        Left = 0
        Top = 30
        Width = 210
        Height = 22
        AutoSize = False
        DataField = 'DESCPROD'
        DataSource = dm_DADOS.zdts_EQPRODUTO
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        Text = ''
      end
    end
  end
end
