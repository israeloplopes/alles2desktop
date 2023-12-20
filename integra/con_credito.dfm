object frm_CON_NOTACREDITO: Tfrm_CON_NOTACREDITO
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'NOTAS DE CR'#201'DITO'
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
    Left = 8
    Top = 8
    Width = 668
    Height = 375
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'GERAL'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 654
        Height = 341
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RAZCLI'
            Title.Caption = 'RAZ'#195'O'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLI'
            Title.Caption = 'NOME CLIENTE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDCLI'
            Title.Caption = 'CIDADE'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELCLI'
            Title.Caption = 'FONE'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPONTOS'
            Title.Caption = 'PTS'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDOCREDITO'
            Title.Caption = 'SLD CREDITO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'POR NOME'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 3
        Top = 13
        Width = 128
        Height = 13
        Caption = 'Informe o Nome do Cliente'
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 32
        Width = 654
        Height = 312
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RAZCLI'
            Title.Caption = 'RAZ'#195'O'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLI'
            Title.Caption = 'NOME CLIENTE'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDCLI'
            Title.Caption = 'CIDADE'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONECLI'
            Title.Caption = 'FONE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPONTOS'
            Title.Caption = 'PTS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDOCREDITO'
            Title.Caption = 'SLD. CREDITO'
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 137
        Top = 5
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 432
        Top = 5
        Width = 75
        Height = 21
        Caption = 'BUSCAR'
        Kind = bkIgnore
        NumGlyphs = 2
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn1: TBitBtn
        Left = 513
        Top = 5
        Width = 75
        Height = 21
        Caption = 'TODOS'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 389
    Width = 668
    Height = 64
    Caption = 'Espelho das Notas de Cr'#233'dito'
    TabOrder = 1
  end
end
