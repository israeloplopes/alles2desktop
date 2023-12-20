object frm_DLG_ADMINISTRATIVO: Tfrm_DLG_ADMINISTRATIVO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'F9 - Administrativo'
  ClientHeight = 461
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 678
    Height = 399
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'GERAL - F9'
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 664
        Height = 145
        Align = alTop
        Color = clCream
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 656
          Height = 14
          Align = alTop
          Caption = 'INFORME O PRODUTO A SER ALTERADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ExplicitWidth = 242
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 63
          Width = 656
          Height = 19
          Align = alTop
          Caption = 'PRODUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 82
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 88
          Width = 22
          Height = 53
          Align = alLeft
          Caption = 'R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 19
        end
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 4
          Top = 24
          Width = 656
          Height = 33
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 516
          Top = 88
          Width = 144
          Height = 53
          Align = alRight
          Caption = 'Gravar altera'#231#245'es'
          TabOrder = 1
        end
        object Edit2: TEdit
          AlignWithMargins = True
          Left = 32
          Top = 88
          Width = 213
          Height = 53
          Align = alLeft
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitHeight = 43
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 154
        Width = 664
        Height = 214
        Align = alClient
        Color = 11796479
        ParentBackground = False
        TabOrder = 1
        object Label4: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 656
          Height = 14
          Align = alTop
          Caption = 'LISTAGEM DAS VENDAS EFETUADAS NO DIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ExplicitWidth = 267
        end
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 4
          Top = 24
          Width = 656
          Height = 186
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'EVOLU'#199#195'O/IMPRESSOES - F10'
      ImageIndex = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 664
        Height = 50
        Align = alTop
        Caption = 'INSTANT'#194'NEO DO CAIXA'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 59
        Width = 664
        Height = 50
        Align = alTop
        Caption = 'FECHAMENTO DO CAIXA'
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'RAIO X - F11'
      ImageIndex = 2
    end
  end
  object BitBtn2: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 408
    Width = 678
    Height = 50
    Align = alBottom
    Caption = 'Fechar - F12'
    TabOrder = 1
  end
end
