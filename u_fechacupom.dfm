object frm_FECHACUPOM: Tfrm_FECHACUPOM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fecha Cupom N.'#186' '
  ClientHeight = 533
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object pn_ESQUERDA: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 69
    Width = 332
    Height = 395
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 396
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 151
      Width = 324
      Height = 234
      Align = alTop
      Caption = 'Forma de Pagamento'
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 57
        Width = 51
        Height = 13
        Align = alTop
        Caption = 'Valor Pago'
      end
      object cb_FORMAPAGTO: TComboBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 314
        Height = 33
        Align = alTop
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'SELECIONE'
        OnKeyPress = cb_FORMAPAGTOKeyPress
      end
      object edt_VALORPAGO: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 76
        Width = 314
        Height = 33
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edt_VALORPAGOKeyPress
      end
      object btn_CONFIRMAR: TBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 115
        Width = 314
        Height = 50
        Align = alTop
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btn_CONFIRMARClick
      end
    end
    object BitBtn2: TBitBtn
      Left = 192
      Top = 240
      Width = 75
      Height = 25
      Caption = 'BitBtn2'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 324
      Height = 141
      Align = alTop
      Caption = 'Adicional/Desconto e Identifica'#231#227'o'
      TabOrder = 2
      object Label2: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 76
        Width = 75
        Height = 13
        Align = alTop
        Caption = 'Valor Acr'#233'scimo'
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 72
        Height = 13
        Align = alTop
        Caption = 'Valor Desconto'
      end
      object edt_VALORACRESCIMO: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 95
        Width = 314
        Height = 33
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edt_VALORACRESCIMOKeyPress
      end
      object edt_VALORDESCONTO: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 37
        Width = 314
        Height = 33
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edt_VALORDESCONTOKeyPress
      end
    end
  end
  object pn_DIREITA: TPanel
    AlignWithMargins = True
    Left = 341
    Top = 69
    Width = 332
    Height = 395
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 396
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 324
      Height = 381
      Align = alTop
      Caption = 'Descritivo'
      TabOrder = 0
      object pn_SUBTOTAL: TPanel
        Left = 2
        Top = 15
        Width = 320
        Height = 50
        Align = alTop
        TabOrder = 0
        object lbl_PAGTOPARCIAL: TLabel
          AlignWithMargins = True
          Left = 159
          Top = 4
          Width = 150
          Height = 42
          Margins.Right = 10
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 287
          ExplicitTop = 1
          ExplicitHeight = 48
        end
        object Label5: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 50
          Height = 24
          Align = alLeft
          Caption = 'Pagamento Parcial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
      object pn_FIDELIDADE: TPanel
        Left = 2
        Top = 225
        Width = 320
        Height = 50
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 42
          Height = 24
          Align = alLeft
          Caption = 'Pontos Fidelidade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
      object pn_TROCO: TPanel
        Left = 2
        Top = 275
        Width = 320
        Height = 50
        Align = alTop
        TabOrder = 2
        object lbl_VALORTROCO: TLabel
          AlignWithMargins = True
          Left = 307
          Top = 4
          Width = 9
          Height = 35
          Align = alClient
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 36
          Height = 24
          Align = alLeft
          Caption = 'Valor do Troco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
      object pn_TOTALPAGAR: TPanel
        Left = 2
        Top = 325
        Width = 320
        Height = 50
        Align = alTop
        TabOrder = 3
        object lbl_TOTALGERALPAGAR: TLabel
          AlignWithMargins = True
          Left = 307
          Top = 4
          Width = 9
          Height = 35
          Align = alClient
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 41
          Height = 24
          Align = alLeft
          Caption = 'Valor das Compras'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
      object pn_FALTA: TPanel
        Left = 2
        Top = 65
        Width = 320
        Height = 50
        Align = alTop
        TabOrder = 4
        object lbl_FALTA: TLabel
          AlignWithMargins = True
          Left = 159
          Top = 4
          Width = 150
          Height = 42
          Margins.Right = 10
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 167
          ExplicitTop = 8
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 69
          Height = 12
          Align = alLeft
          Caption = 'Restante/Parcial'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial Narrow'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 115
        Width = 320
        Height = 110
        Align = alTop
        Enabled = False
        ReadOnly = True
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SEQMULTIPAGTO'
            Title.Caption = 'Item'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Como foi pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Pago'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TROCO'
            Title.Caption = 'Valor Troco'
            Visible = True
          end>
      end
    end
  end
  object pn_BOTTON: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 470
    Width = 666
    Height = 60
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 471
    ExplicitWidth = 670
    object lbl_AVISO: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 9
      Height = 35
      Align = alTop
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pn_TOP: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 666
    Height = 60
    Align = alTop
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 670
    object lbl_VALORTOTAL: TLabel
      AlignWithMargins = True
      Left = 258
      Top = 4
      Width = 408
      Height = 58
      Align = alRight
      Alignment = taRightJustify
      Caption = 'lbl_VALORTOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -48
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 156
      Height = 24
      Align = alLeft
      Caption = 'Valor das Compras + Acrescimento - Descontos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
end
