object frmCalculadora: TfrmCalculadora
  Left = 236
  Top = 185
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 368
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 349
    Width = 450
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 450
    Height = 349
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabCalculadora: TTabSheet
      Caption = 'Calculadora'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel3: TPanel
          Left = 201
          Top = 5
          Width = 235
          Height = 308
          BevelInner = bvLowered
          TabOrder = 1
          object edtResultado: TRichEdit
            Left = 4
            Top = 5
            Width = 227
            Height = 298
            Hint = 'Hist'#243'rico das opera'#231#245'es'
            Alignment = taRightJustify
            Color = clSkyBlue
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 0
            Zoom = 100
          end
        end
        object Panel4: TPanel
          Left = 6
          Top = 7
          Width = 192
          Height = 307
          BevelInner = bvLowered
          TabOrder = 0
          object Label7: TLabel
            Left = 59
            Top = 265
            Width = 76
            Height = 13
            Caption = 'Casas decimais:'
          end
          object Panel6: TPanel
            Left = 8
            Top = 7
            Width = 175
            Height = 34
            BevelInner = bvLowered
            TabOrder = 0
            object Edit1: TEdit
              Left = 7
              Top = 7
              Width = 160
              Height = 21
              Hint = 'Valor para opera'#231#245'es'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel1: TPanel
            Left = 8
            Top = 44
            Width = 174
            Height = 210
            BevelOuter = bvLowered
            TabOrder = 1
            object Button1: TButton
              Left = 7
              Top = 5
              Width = 39
              Height = 25
              Caption = '7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 47
              Top = 5
              Width = 39
              Height = 25
              Caption = '8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Button2Click
            end
            object Button3: TButton
              Left = 87
              Top = 5
              Width = 39
              Height = 25
              Caption = '9'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 7
              Top = 30
              Width = 39
              Height = 25
              Caption = '4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 47
              Top = 30
              Width = 39
              Height = 25
              Caption = '5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 87
              Top = 30
              Width = 39
              Height = 25
              Caption = '6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              OnClick = Button6Click
            end
            object Button7: TButton
              Left = 7
              Top = 55
              Width = 39
              Height = 25
              Caption = '1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              OnClick = Button7Click
            end
            object Button8: TButton
              Left = 47
              Top = 55
              Width = 39
              Height = 25
              Caption = '2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              OnClick = Button8Click
            end
            object Button9: TButton
              Left = 87
              Top = 55
              Width = 39
              Height = 25
              Caption = '3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = Button9Click
            end
            object Button10: TButton
              Left = 7
              Top = 80
              Width = 79
              Height = 25
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              OnClick = Button10Click
            end
            object Button12: TButton
              Left = 87
              Top = 80
              Width = 39
              Height = 25
              Caption = ','
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 10
              OnClick = Button12Click
            end
            object btnSoma: TButton
              Left = 127
              Top = 5
              Width = 41
              Height = 25
              Hint = 'Adi'#231#227'o (Soma)'
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              OnClick = btnSomaClick
            end
            object btnSubtrai: TButton
              Left = 127
              Top = 30
              Width = 41
              Height = 25
              Hint = 'Subtra'#231#227'o'
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 12
              OnClick = btnSubtraiClick
            end
            object btnMultiplica: TButton
              Left = 127
              Top = 55
              Width = 41
              Height = 25
              Hint = 'Multiplica'#231#227'o'
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 13
              OnClick = btnMultiplicaClick
            end
            object btnDivide: TButton
              Left = 127
              Top = 80
              Width = 41
              Height = 25
              Hint = 'Divis'#227'o'
              Caption = '/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              OnClick = btnDivideClick
            end
            object Button14: TButton
              Left = 7
              Top = 130
              Width = 161
              Height = 25
              Hint = 'Zera a soma'
              Caption = 'Zerar soma'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              OnClick = Button14Click
            end
            object btnLimpar_Historico: TButton
              Left = 7
              Top = 155
              Width = 161
              Height = 25
              Hint = 'Limpa o hist'#243'rico'
              Caption = 'Limpar Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 16
              OnClick = btnLimpar_HistoricoClick
            end
            object Button16: TButton
              Left = 7
              Top = 180
              Width = 161
              Height = 25
              Hint = 'Imprime o Hist'#243'rico'
              Caption = 'Imprimir Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 17
              OnClick = Button16Click
            end
            object btnPercentual: TButton
              Left = 7
              Top = 105
              Width = 39
              Height = 25
              Hint = 'Calcula um percentual sobre um valor'
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 18
              OnClick = btnPercentualClick
            end
            object btnDiv: TButton
              Left = 47
              Top = 105
              Width = 39
              Height = 25
              Hint = 
                'Retorna o inteiro de uma divis'#227'o - S'#243' '#233' calculado com valores in' +
                'teiros.'
              Caption = 'Div'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 19
              OnClick = btnDivClick
            end
            object btnMod: TButton
              Left = 87
              Top = 105
              Width = 81
              Height = 25
              Hint = 
                'Retorna o resto de uma divis'#227'o - S'#243' '#233' calculado com valores inte' +
                'iros.'
              Caption = 'Mod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 20
              OnClick = btnModClick
            end
          end
          object pnlVl_Final: TPanel
            Left = 7
            Top = 279
            Width = 175
            Height = 22
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 5
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object txtCasas_Decimais: TSpinEdit
            Left = 137
            Top = 256
            Width = 45
            Height = 22
            MaxValue = 10
            MinValue = 0
            TabOrder = 3
            Value = 2
            OnChange = txtCasas_DecimaisChange
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Calculos Especiais'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 2
          Top = 2
          Width = 438
          Height = 317
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          TabPosition = tpBottom
          object TabPotencia: TTabSheet
            Caption = 'Potencia'
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label1: TLabel
                Left = 125
                Top = 100
                Width = 54
                Height = 13
                Caption = 'Valor Base:'
              end
              object Label2: TLabel
                Left = 134
                Top = 125
                Width = 45
                Height = 13
                Caption = 'Pot'#234'ncia:'
              end
              object Button11: TButton
                Left = 222
                Top = 141
                Width = 81
                Height = 25
                Caption = 'Calcular'
                TabOrder = 2
                OnClick = Button11Click
              end
              object edtVl_Base: TSpinEdit
                Left = 182
                Top = 91
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object edtVl_Potencia: TSpinEdit
                Left = 182
                Top = 116
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 1
                Value = 0
              end
              object pnlVl_Potencia: TPanel
                Left = 139
                Top = 171
                Width = 164
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Media'
            ImageIndex = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label3: TLabel
                Left = 8
                Top = 23
                Width = 93
                Height = 13
                Caption = 'Valores para m'#233'dia:'
              end
              object Label4: TLabel
                Left = 283
                Top = 201
                Width = 30
                Height = 13
                Caption = 'Soma:'
              end
              object Label5: TLabel
                Left = 255
                Top = 231
                Width = 58
                Height = 13
                Caption = 'Quantidade:'
              end
              object Label6: TLabel
                Left = 286
                Top = 261
                Width = 27
                Height = 13
                Alignment = taRightJustify
                Caption = 'Total:'
              end
              object edtVl_Media: TSpinEdit
                Left = 105
                Top = 14
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object StringGrid1: TStringGrid
                Left = 106
                Top = 39
                Width = 119
                Height = 236
                ColCount = 1
                DefaultRowHeight = 18
                FixedCols = 0
                RowCount = 1
                FixedRows = 0
                TabOrder = 2
              end
              object Button13: TButton
                Left = 233
                Top = 14
                Width = 66
                Height = 22
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = Button13Click
              end
              object pnlVl_Soma_Media: TPanel
                Left = 316
                Top = 188
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object pnlQt_Media: TPanel
                Left = 316
                Top = 218
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object pnlVl_Total_Media: TPanel
                Left = 316
                Top = 248
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Datas'
            ImageIndex = 2
            OnShow = TabSheet3Show
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblQt_Difer: TLabel
                Left = 284
                Top = 270
                Width = 30
                Height = 13
                Alignment = taRightJustify
                Caption = 'Soma:'
                Visible = False
              end
              object cmbDatas: TComboBox
                Left = 100
                Top = 10
                Width = 325
                Height = 21
                TabOrder = 1
                OnClick = cmbDatasClick
                Items.Strings = (
                  'SOMA DIAS A UMA DATA'
                  'SUBTRAI DIAS DE UMA DATA'
                  'SOMA MESES A UMA DATA'
                  'SUBTRAI MESES DE UMA DATA'
                  'SOMA ANOS A UMA DATA'
                  'SUBTRAI ANOS DE UMA DATA'
                  'SOMA SEMANAS A UMA DATA'
                  'SUBTRAI SEMANAS DE UMA DATA'
                  'DIFEREN'#199'A DE DIAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE SEMANAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE MESES ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE ANOS ENTRE DUAS DATAS'
                  'CALCULA IDADE'
                  'DIFEREN'#199'A REAL ENTRE DUAS DATAS (ANOS/MESES/DIAS)')
              end
              object edtQt_Dias_Datas: TSpinEdit
                Left = 5
                Top = 34
                Width = 69
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpDt_Calculo: TDateTimePicker
                Left = 5
                Top = 10
                Width = 90
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                TabOrder = 0
              end
              object dtpDt_Calculo_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 90
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                TabOrder = 3
                Visible = False
              end
              object MonthCalendar1: TMonthCalendar
                Left = 82
                Top = 69
                Width = 247
                Height = 160
                AutoSize = True
                Date = 38460.754725150470000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                Visible = False
                WeekNumbers = True
              end
              object Button15: TButton
                Left = 101
                Top = 32
                Width = 82
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button15Click
              end
              object edtDt_Calculo_1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 6
                Text = '  /  /    '
                Visible = False
              end
              object pnlQt_Difer_Datas: TPanel
                Left = 95
                Top = 257
                Width = 330
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Horas'
            ImageIndex = 3
            OnShow = TabSheet4Show
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblTotal_Hora: TLabel
                Left = 251
                Top = 270
                Width = 63
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblTotal_Hora'
                Visible = False
              end
              object cmbCalcula_Hora: TComboBox
                Left = 100
                Top = 10
                Width = 324
                Height = 21
                TabOrder = 1
                OnClick = cmbCalcula_HoraClick
                Items.Strings = (
                  'SOMA SEGUNDOS A UMA HORA'
                  'SUBTRAI SEGUNDOS DE UMA HORA'
                  'SOMA MINUTOS A UMA HORA'
                  'SUBTRAI MINUTOS DE UMA HORA'
                  'SOMA HORAS A UMA HORA'
                  'SUBTRAI HORAS DE UMA HORA'
                  'DIFEREN'#199'A DE SEGUNDOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE MINUTOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE HORAS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A ENTRE DUAS HORAS')
              end
              object edtSoma_Horas: TSpinEdit
                Left = 5
                Top = 34
                Width = 68
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpHoras: TDateTimePicker
                Left = 5
                Top = 10
                Width = 89
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Kind = dtkTime
                TabOrder = 0
              end
              object dtpHoras_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 89
                Height = 21
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Kind = dtkTime
                TabOrder = 3
                Visible = False
              end
              object Button17: TButton
                Left = 100
                Top = 32
                Width = 73
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button17Click
              end
              object MaskEdit1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 5
                Text = '  /  /    '
                Visible = False
              end
              object dtpResultado_Horas: TDateTimePicker
                Left = 320
                Top = 257
                Width = 104
                Height = 27
                Date = 38460.564268900460000000
                Time = 38460.564268900460000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Kind = dtkTime
                ParentFont = False
                TabOrder = 6
                Visible = False
              end
              object pnlTotal_Hora: TPanel
                Left = 318
                Top = 258
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
              object ckbTimer_Ativado: TCheckBox
                Left = 179
                Top = 37
                Width = 234
                Height = 17
                Caption = 'Timer Ativado (Calculo a partir da hora atual)'
                TabOrder = 8
                Visible = False
                OnClick = ckbTimer_AtivadoClick
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Cron'#244'metro'
            ImageIndex = 4
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object pnlCronometro: TPanel
                Left = 12
                Top = 10
                Width = 406
                Height = 41
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -27
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object btnInicia_Cronometro: TButton
                Left = 138
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Iniciar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = btnInicia_CronometroClick
              end
              object btnZerar: TButton
                Left = 218
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Zerar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = btnZerarClick
              end
            end
          end
        end
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 333
    Top = 104
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 293
    Top = 104
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 305
    Top = 210
  end
end
