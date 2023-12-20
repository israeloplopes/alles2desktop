object frm_CHECKOUT: Tfrm_CHECKOUT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  ClientHeight = 614
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_CUPOM: TPanel
    Left = 0
    Top = 118
    Width = 500
    Height = 496
    Align = alLeft
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    StyleElements = [seFont]
    object lbl_STATUS: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 353
      Width = 492
      Height = 39
      Align = alBottom
      Alignment = taCenter
      Caption = 'CAIXA DISPONIVEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 277
    end
    object pn_LERCODIGO: TPanel
      Left = 1
      Top = 395
      Width = 498
      Height = 100
      Align = alBottom
      BorderWidth = 1
      Color = 16763541
      ParentBackground = False
      TabOrder = 0
      object Label3: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 488
        Height = 14
        Align = alTop
        Alignment = taCenter
        Caption = 'GTIN/C'#243'd. Produto/C'#243'd. Balan'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 203
      end
      object edt_BUSCAEAN: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 25
        Width = 488
        Height = 70
        Align = alClient
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edt_BUSCAEANKeyPress
        ExplicitHeight = 50
      end
    end
    object dbgrid_ITENS: TDBGrid
      Left = 1
      Top = 1
      Width = 498
      Height = 300
      Align = alTop
      BorderStyle = bsNone
      DataSource = dts_VDITVENDA
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = dbgrid_ITENSCellClick
      OnColEnter = dbgrid_ITENSColEnter
      OnDrawColumnCell = dbgrid_ITENSDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODITVENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Id.:'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDITVENDA'
          Title.Caption = 'Qtd.:'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prod_DESCPROD'
          Title.Caption = 'PRODUTO'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOITVENDA'
          Title.Caption = 'Pre'#231'o'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPROD'
          Title.Caption = 'C'#243'd.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRPRODITVENDA'
          Title.Caption = 'A Pagar'
          Width = 60
          Visible = True
        end>
    end
    object MemoCancela: TMemo
      Left = 5
      Top = 238
      Width = 475
      Height = 90
      TabOrder = 2
    end
  end
  object pn_TOP: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 59
    Align = alTop
    Color = 10772493
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont]
    object sp_FECHACAIXA: TSpeedButton
      AlignWithMargins = True
      Left = 662
      Top = 4
      Width = 100
      Height = 51
      Align = alRight
      Caption = 'Fechar Caixa'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 499
      ExplicitHeight = 47
    end
    object sp_VENDASDIA: TSpeedButton
      AlignWithMargins = True
      Left = 556
      Top = 4
      Width = 100
      Height = 51
      Align = alRight
      Caption = 'Vendas do Dia'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 445
      ExplicitHeight = 47
    end
    object sp_FINALIZADORES: TSpeedButton
      AlignWithMargins = True
      Left = 450
      Top = 4
      Width = 100
      Height = 51
      Align = alRight
      Caption = 'Finalizadores'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = sp_FINALIZADORESClick
      ExplicitLeft = 264
      ExplicitTop = 16
      ExplicitHeight = 22
    end
    object lbl_QTDITENS: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 120
      Height = 51
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 2
    end
    object lbl_QTDCANCELADA: TLabel
      AlignWithMargins = True
      Left = 130
      Top = 4
      Width = 120
      Height = 51
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 6
    end
    object pn_USUARIO: TPanel
      Left = 765
      Top = 1
      Width = 130
      Height = 57
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object lbl_USUARIO: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 124
        Height = 19
        Align = alTop
        Alignment = taRightJustify
        Caption = 'lbl_USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 31
        ExplicitWidth = 96
      end
      object lbl_HORASISTEMA: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 28
        Width = 124
        Height = 14
        Align = alTop
        Alignment = taRightJustify
        Caption = 'lbl_HORASISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 27
        ExplicitWidth = 100
      end
    end
    object btn_SAIR: TBitBtn
      AlignWithMargins = True
      Left = 898
      Top = 4
      Width = 55
      Height = 51
      Align = alRight
      Caption = 'Finalizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002E2E2E5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000D0D0D41414106
        0606000000292929000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000004444445A5A5A4C
        4C4C080808000000000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000B0B0B4F4F4F5A
        5A5A4A4A4A060606000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000909094D
        4D4D5A5A5A4A4A4A060606000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000808085A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A4C4C4C080808000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000808085A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A494949060606000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000005050547
        47475A5A5A4C4C4C080808000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000606064B4B4B5A
        5A5A4C4C4C080808000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        000000000000000000000000000000000000000000000000004444445A5A5A4B
        4B4B070707000000000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000012121248484809
        09090000002E2E2E000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003030305A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000005A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 1
      OnClick = btn_SAIRClick
    end
  end
  object pn_CENTRO: TPanel
    Left = 500
    Top = 118
    Width = 457
    Height = 496
    Align = alClient
    Color = 16772829
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seFont]
    object img_LOGOEMPRESA: TImage
      Left = 48
      Top = 193
      Width = 200
      Height = 200
      Stretch = True
    end
    object pn_BOTOES: TPanel
      Left = 1
      Top = 395
      Width = 455
      Height = 100
      Align = alBottom
      Color = 15461355
      ParentBackground = False
      TabOrder = 0
      object sp_CANCELACUPOM: TSpeedButton
        Left = 105
        Top = 0
        Width = 101
        Height = 25
        Caption = 'F7 - Cancela Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_CANCELACUPOMClick
      end
      object sp_CANCELAITEM: TSpeedButton
        Left = 1
        Top = 75
        Width = 101
        Height = 25
        Caption = 'F6 - Cancela Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_CANCELAITEMClick
      end
      object sp_ABRECUPOM: TSpeedButton
        Left = 1
        Top = 50
        Width = 101
        Height = 25
        Caption = 'F5 - Abre Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_ABRECUPOMClick
      end
      object sp_FECHACUPOM: TSpeedButton
        Left = 105
        Top = 25
        Width = 101
        Height = 25
        Caption = 'F8 - Fecha Cupom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_FECHACUPOMClick
      end
      object sp_BUSCAS: TSpeedButton
        Left = 1
        Top = 0
        Width = 101
        Height = 25
        Caption = 'F2 - Buscas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_BUSCASClick
      end
      object sp_ADMINISTRATIVO: TSpeedButton
        Left = 105
        Top = 50
        Width = 101
        Height = 25
        Caption = 'F9 - Administrativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = sp_ADMINISTRATIVOClick
      end
      object sp_IDENTIFICACLIENTE: TSpeedButton
        Left = 1
        Top = 25
        Width = 101
        Height = 25
        Caption = 'F3 - Cliente'
        OnClick = sp_IDENTIFICACLIENTEClick
      end
    end
    object pn_CENTRO_CLIVEND: TPanel
      Left = 1
      Top = 42
      Width = 455
      Height = 30
      Align = alTop
      TabOrder = 1
      object Label10: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 40
        Height = 22
        Align = alLeft
        Caption = 'Cliente: '
        ExplicitHeight = 13
      end
      object lbl_CLIENTE: TLabel
        AlignWithMargins = True
        Left = 50
        Top = 4
        Width = 300
        Height = 22
        Align = alLeft
        AutoSize = False
      end
    end
    object pn_CENTRO_VLRUNITARIO: TPanel
      Left = 1
      Top = 72
      Width = 455
      Height = 51
      Align = alTop
      TabOrder = 2
      object lbl_PRECO: TLabel
        AlignWithMargins = True
        Left = 130
        Top = 4
        Width = 321
        Height = 43
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 441
        ExplicitWidth = 10
        ExplicitHeight = 40
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 120
        Height = 43
        Align = alLeft
        Caption = 'Valor Unit'#225'rio do Produto'
        ExplicitHeight = 13
      end
    end
    object pn_CENTRO_VLRTOTAL: TPanel
      Left = 1
      Top = 123
      Width = 455
      Height = 61
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 3
      object lbl_VALORTOTAL: TLabel
        AlignWithMargins = True
        Left = 116
        Top = 4
        Width = 331
        Height = 49
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -47
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 432
        ExplicitWidth = 15
        ExplicitHeight = 57
      end
      object Label9: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 106
        Height = 49
        Align = alLeft
        Caption = 'Valor Total da Compra'
        ExplicitHeight = 13
      end
    end
    object pn_CENTRO_INFO: TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 41
      Align = alTop
      TabOrder = 4
      object Label4: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 64
        Height = 33
        Align = alLeft
        Caption = 'N.'#186' da Venda'
        ExplicitHeight = 13
      end
      object Label6: TLabel
        AlignWithMargins = True
        Left = 74
        Top = 4
        Width = 100
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = 'N.'#186' do Cupom'
        ExplicitLeft = 110
      end
      object Label7: TLabel
        AlignWithMargins = True
        Left = 180
        Top = 4
        Width = 100
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = 'N.'#186' NFCe'
        ExplicitLeft = 216
      end
      object Label11: TLabel
        AlignWithMargins = True
        Left = 286
        Top = 4
        Width = 100
        Height = 33
        Align = alLeft
        AutoSize = False
        Caption = 'CSTAT'
        ExplicitLeft = 319
        ExplicitTop = 1
        ExplicitHeight = 39
      end
      object DBText4: TDBText
        Left = 5
        Top = 22
        Width = 65
        Height = 17
        DataField = 'CODVENDA'
        DataSource = dts_VDVENDA
      end
      object DBText5: TDBText
        Left = 76
        Top = 22
        Width = 65
        Height = 17
        DataField = 'DOCVENDA'
        DataSource = dts_VDVENDA
      end
      object lbl_NUMNFCE: TLabel
        Left = 180
        Top = 22
        Width = 50
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
      end
    end
  end
  object pn_PRODUTO: TPanel
    Left = 0
    Top = 59
    Width = 957
    Height = 59
    Align = alTop
    Color = 4194304
    ParentBackground = False
    TabOrder = 3
    object lbl_PRODUTO: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 949
      Height = 51
      Align = alClient
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 11
      ExplicitHeight = 42
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 124
    Top = 207
  end
  object PopupMenu1: TPopupMenu
    Left = 59
    Top = 206
    object BuscaProdutos1: TMenuItem
      Caption = 'Buscas'
      ShortCut = 113
      OnClick = BuscaProdutos1Click
    end
    object BuscaVendedorCaixa1: TMenuItem
      Caption = 'Busca Vendedor/Caixa'
      ShortCut = 8306
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object IdentificaCliente1: TMenuItem
      Caption = 'Identifica Cliente'
      ShortCut = 114
      OnClick = IdentificaCliente1Click
    end
    object MudaPreo1: TMenuItem
      Caption = 'Muda Pre'#231'o'
      ShortCut = 115
      Visible = False
      OnClick = MudaPreo1Click
    end
    object AbreCupom1: TMenuItem
      Caption = 'Abre Cupom'
      ShortCut = 116
      OnClick = AbreCupom1Click
    end
    object CancelaItem1: TMenuItem
      Caption = 'Cancela Item'
      ShortCut = 117
      OnClick = CancelaItem1Click
    end
    object CancelaCupom1: TMenuItem
      Caption = 'Cancela Cupom'
      ShortCut = 118
      OnClick = CancelaCupom1Click
    end
    object FechaCupom1: TMenuItem
      Caption = 'Fecha Cupom'
      ShortCut = 119
      OnClick = FechaCupom1Click
    end
    object MudaQuantidade1: TMenuItem
      Caption = 'Muda Quantidade'
      ShortCut = 122
      Visible = False
      OnClick = MudaQuantidade1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Administrativo1: TMenuItem
      Caption = 'Administrativo'
      ShortCut = 120
      OnClick = Administrativo1Click
    end
  end
  object zqry_EQPRODUTO_CHECKOUT: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select codemp,codprod, descprod,codfisc,sldprod,precobaseprod,co' +
        'dbarprod,codbalanca from eqproduto')
    Params = <>
    Left = 53
    Top = 259
    object zqry_EQPRODUTO_CHECKOUTCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQPRODUTO_CHECKOUTCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQPRODUTO_CHECKOUTDESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_EQPRODUTO_CHECKOUTCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_EQPRODUTO_CHECKOUTSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_EQPRODUTO_CHECKOUTPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
    end
    object zqry_EQPRODUTO_CHECKOUTCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_EQPRODUTO_CHECKOUTCODBALANCA: TIntegerField
      FieldName = 'CODBALANCA'
    end
  end
  object dts_EQPRODUTO_CHECKOUT: TDataSource
    DataSet = zqry_EQPRODUTO_CHECKOUT
    Left = 116
    Top = 262
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 53
    Top = 323
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 120
    Top = 318
  end
  object zqry_ITREGRAFISCAL: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select * from lfitregrafiscal where codtipomov=:tipomov and code' +
        'mp=:empcod and cvitrf=:mov and noufitrf=:estado')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipomov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empcod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end>
    Left = 52
    Top = 374
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipomov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empcod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end>
    object zqry_ITREGRAFISCALCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_ITREGRAFISCALCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
    end
    object zqry_ITREGRAFISCALCODREGRA: TWideStringField
      FieldName = 'CODREGRA'
      Size = 4
    end
    object zqry_ITREGRAFISCALCODNAT: TWideStringField
      FieldName = 'CODNAT'
      Size = 4
    end
    object zqry_ITREGRAFISCALNOUFITRF: TWideStringField
      FieldName = 'NOUFITRF'
      Size = 1
    end
    object zqry_ITREGRAFISCALCVITRF: TWideStringField
      FieldName = 'CVITRF'
      Size = 1
    end
    object zqry_ITREGRAFISCALCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
    end
    object zqry_ITREGRAFISCALDTINS: TDateField
      FieldName = 'DTINS'
    end
    object zqry_ITREGRAFISCALHINS: TTimeField
      FieldName = 'HINS'
    end
    object zqry_ITREGRAFISCALIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Size = 8
    end
    object zqry_ITREGRAFISCALDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_ITREGRAFISCALHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_ITREGRAFISCALIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object dts_ITREGRAFISCAL: TDataSource
    DataSet = zqry_ITREGRAFISCAL
    Left = 116
    Top = 374
  end
  object zqry_VDITVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select it.* from vditvenda as it')
    Params = <>
    Left = 48
    Top = 422
    object zqry_VDITVENDACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDITVENDACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDITVENDATIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDITVENDACODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDITVENDACODITVENDA: TIntegerField
      FieldName = 'CODITVENDA'
      Required = True
    end
    object zqry_VDITVENDACODEMPNT: TIntegerField
      FieldName = 'CODEMPNT'
      Required = True
    end
    object zqry_VDITVENDACODFILIALNT: TSmallintField
      FieldName = 'CODFILIALNT'
      Required = True
    end
    object zqry_VDITVENDACODNAT: TWideStringField
      FieldName = 'CODNAT'
      Required = True
      Size = 4
    end
    object zqry_VDITVENDACODEMPPD: TIntegerField
      FieldName = 'CODEMPPD'
      Required = True
    end
    object zqry_VDITVENDACODFILIALPD: TSmallintField
      FieldName = 'CODFILIALPD'
      Required = True
    end
    object zqry_VDITVENDACODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_VDITVENDACODEMPLE: TIntegerField
      FieldName = 'CODEMPLE'
    end
    object zqry_VDITVENDACODFILIALLE: TSmallintField
      FieldName = 'CODFILIALLE'
    end
    object zqry_VDITVENDACODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_VDITVENDACODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_VDITVENDACODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_VDITVENDACODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_VDITVENDAQTDITVENDA: TFloatField
      FieldName = 'QTDITVENDA'
      Required = True
    end
    object zqry_VDITVENDAQTDITVENDACANC: TFloatField
      FieldName = 'QTDITVENDACANC'
    end
    object zqry_VDITVENDAPRECOITVENDA: TFloatField
      FieldName = 'PRECOITVENDA'
      Required = True
      currency = True
    end
    object zqry_VDITVENDAPERCDESCITVENDA: TFloatField
      FieldName = 'PERCDESCITVENDA'
    end
    object zqry_VDITVENDAVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
      currency = True
    end
    object zqry_VDITVENDAPERCICMSITVENDA: TFloatField
      FieldName = 'PERCICMSITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSITVENDA: TFloatField
      FieldName = 'VLRBASEICMSITVENDA'
    end
    object zqry_VDITVENDAVLRICMSITVENDA: TFloatField
      FieldName = 'VLRICMSITVENDA'
    end
    object zqry_VDITVENDAPERCIPIITVENDA: TFloatField
      FieldName = 'PERCIPIITVENDA'
    end
    object zqry_VDITVENDAVLRBASEIPIITVENDA: TFloatField
      FieldName = 'VLRBASEIPIITVENDA'
    end
    object zqry_VDITVENDAVLRIPIITVENDA: TFloatField
      FieldName = 'VLRIPIITVENDA'
    end
    object zqry_VDITVENDAVLRLIQITVENDA: TFloatField
      FieldName = 'VLRLIQITVENDA'
      currency = True
    end
    object zqry_VDITVENDAPERCCOMISITVENDA: TFloatField
      FieldName = 'PERCCOMISITVENDA'
    end
    object zqry_VDITVENDAVLRCOMISITVENDA: TFloatField
      FieldName = 'VLRCOMISITVENDA'
    end
    object zqry_VDITVENDAVLRADICITVENDA: TFloatField
      FieldName = 'VLRADICITVENDA'
    end
    object zqry_VDITVENDAPERCISSITVENDA: TFloatField
      FieldName = 'PERCISSITVENDA'
    end
    object zqry_VDITVENDAVLRISSITVENDA: TFloatField
      FieldName = 'VLRISSITVENDA'
    end
    object zqry_VDITVENDAVLRFRETEITVENDA: TFloatField
      FieldName = 'VLRFRETEITVENDA'
    end
    object zqry_VDITVENDAVLRPRODITVENDA: TFloatField
      FieldName = 'VLRPRODITVENDA'
      currency = True
    end
    object zqry_VDITVENDAVLRISENTASITVENDA: TFloatField
      FieldName = 'VLRISENTASITVENDA'
    end
    object zqry_VDITVENDAVLROUTRASITVENDA: TFloatField
      FieldName = 'VLROUTRASITVENDA'
    end
    object zqry_VDITVENDAREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_VDITVENDAVLRBASEISSITVENDA: TFloatField
      FieldName = 'VLRBASEISSITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSBRUTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSBRUTITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSSTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTITVENDA'
    end
    object zqry_VDITVENDAVLRICMSSTITVENDA: TFloatField
      FieldName = 'VLRICMSSTITVENDA'
    end
    object zqry_VDITVENDAVLRBASECOMISITVENDA: TFloatField
      FieldName = 'VLRBASECOMISITVENDA'
    end
    object zqry_VDITVENDAMARGEMVLAGRITVENDA: TFloatField
      FieldName = 'MARGEMVLAGRITVENDA'
    end
    object zqry_VDITVENDAOBSITVENDA: TWideStringField
      FieldName = 'OBSITVENDA'
      Size = 10000
    end
    object zqry_VDITVENDAORIGFISC: TWideStringField
      FieldName = 'ORIGFISC'
      Size = 1
    end
    object zqry_VDITVENDACODEMPTT: TIntegerField
      FieldName = 'CODEMPTT'
    end
    object zqry_VDITVENDACODFILIALTT: TIntegerField
      FieldName = 'CODFILIALTT'
    end
    object zqry_VDITVENDACODTRATTRIB: TWideStringField
      FieldName = 'CODTRATTRIB'
      Size = 2
    end
    object zqry_VDITVENDATIPOFISC: TWideStringField
      FieldName = 'TIPOFISC'
      Size = 2
    end
    object zqry_VDITVENDATIPOST: TWideStringField
      FieldName = 'TIPOST'
      Size = 2
    end
    object zqry_VDITVENDACODEMPME: TIntegerField
      FieldName = 'CODEMPME'
    end
    object zqry_VDITVENDACODFILIALME: TSmallintField
      FieldName = 'CODFILIALME'
    end
    object zqry_VDITVENDACODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_VDITVENDASTRDESCITVENDA: TWideStringField
      FieldName = 'STRDESCITVENDA'
      Size = 50
    end
    object zqry_VDITVENDAQTDDEVITVENDA: TFloatField
      FieldName = 'QTDDEVITVENDA'
    end
    object zqry_VDITVENDACODEMPLG: TIntegerField
      FieldName = 'CODEMPLG'
    end
    object zqry_VDITVENDACODFILIALLG: TSmallintField
      FieldName = 'CODFILIALLG'
    end
    object zqry_VDITVENDACODLOG: TIntegerField
      FieldName = 'CODLOG'
    end
    object zqry_VDITVENDACANCITVENDA: TWideStringField
      FieldName = 'CANCITVENDA'
      Size = 1
    end
    object zqry_VDITVENDACODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_VDITVENDACODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_VDITVENDACODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_VDITVENDADIASPE: TSmallintField
      FieldName = 'DIASPE'
    end
    object zqry_VDITVENDACODEMPCV: TIntegerField
      FieldName = 'CODEMPCV'
    end
    object zqry_VDITVENDACODFILIALCV: TSmallintField
      FieldName = 'CODFILIALCV'
    end
    object zqry_VDITVENDACODCONV: TIntegerField
      FieldName = 'CODCONV'
    end
    object zqry_VDITVENDACODEMPIF: TIntegerField
      FieldName = 'CODEMPIF'
    end
    object zqry_VDITVENDACODFILIALIF: TIntegerField
      FieldName = 'CODFILIALIF'
    end
    object zqry_VDITVENDACODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
    object zqry_VDITVENDACODITFISC: TIntegerField
      FieldName = 'CODITFISC'
    end
    object zqry_VDITVENDACODEMPCP: TIntegerField
      FieldName = 'CODEMPCP'
    end
    object zqry_VDITVENDACODFILIALCP: TSmallintField
      FieldName = 'CODFILIALCP'
    end
    object zqry_VDITVENDACODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_VDITVENDACODITCOMPRA: TIntegerField
      FieldName = 'CODITCOMPRA'
    end
    object zqry_VDITVENDACODEMPVR: TIntegerField
      FieldName = 'CODEMPVR'
    end
    object zqry_VDITVENDACODFILIALVR: TSmallintField
      FieldName = 'CODFILIALVR'
    end
    object zqry_VDITVENDATIPOVENDAVR: TWideStringField
      FieldName = 'TIPOVENDAVR'
      Size = 1
    end
    object zqry_VDITVENDACODVENDAVR: TIntegerField
      FieldName = 'CODVENDAVR'
    end
    object zqry_VDITVENDACODITVENDAVR: TIntegerField
      FieldName = 'CODITVENDAVR'
    end
    object zqry_VDITVENDACODEMPNS: TIntegerField
      FieldName = 'CODEMPNS'
    end
    object zqry_VDITVENDACODFILIALNS: TSmallintField
      FieldName = 'CODFILIALNS'
    end
    object zqry_VDITVENDANUMSERIETMP: TWideStringField
      FieldName = 'NUMSERIETMP'
      Size = 30
    end
    object zqry_VDITVENDAVLRBASEICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTRETITVENDA'
    end
    object zqry_VDITVENDAVLRICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRICMSSTRETITVENDA'
    end
    object zqry_VDITVENDACALCSTCM: TWideStringField
      FieldName = 'CALCSTCM'
      Size = 1
    end
    object zqry_VDITVENDAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_VDITVENDADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDITVENDAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDITVENDAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDITVENDADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDITVENDAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDITVENDAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDITVENDATXTDESCITEM: TWideStringField
      FieldName = 'TXTDESCITEM'
      Size = 100
    end
    object zqry_VDITVENDADESCITEM: TWideStringField
      FieldName = 'DESCITEM'
      Size = 100
    end
    object zqry_VDITVENDASOLICITANTE: TWideStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object zqry_VDITVENDAprod_DESCPROD: TStringField
      FieldKind = fkLookup
      FieldName = 'prod_DESCPROD'
      LookupDataSet = zqry_EQPRODUTO_CHECKOUT
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
  end
  object dts_VDITVENDA: TDataSource
    DataSet = zqry_VDITVENDA
    Left = 120
    Top = 422
  end
  object zqry_VDCLIENTE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp,codfilial,codcli,nomecli,siglauf from vdcliente')
    Params = <>
    Left = 192
    Top = 318
    object zqry_VDCLIENTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDCLIENTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDCLIENTECODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDCLIENTENOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Required = True
      Size = 50
    end
    object zqry_VDCLIENTESIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
  end
  object dts_VDCLIENTE: TDataSource
    DataSet = zqry_VDCLIENTE
    Left = 256
    Top = 318
  end
  object zqry_SGSEQUENCIA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp,codfilial, nroseq, sgtab from sgsequencia')
    Params = <>
    Left = 192
    Top = 374
    object zqry_SGSEQUENCIACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGSEQUENCIACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGSEQUENCIANROSEQ: TIntegerField
      FieldName = 'NROSEQ'
    end
    object zqry_SGSEQUENCIASGTAB: TWideStringField
      FieldName = 'SGTAB'
      Required = True
      Size = 2
    end
  end
  object dts_SGSEQUENCIA: TDataSource
    DataSet = zqry_SGSEQUENCIA
    Left = 256
    Top = 374
  end
  object zqry_VDVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select codemp, codempcl, codfilialcl, codempcm, codfilialcm, cod' +
        'emppg, codfilialpg, codempcx, codfilialcx, codempse, codfilialse' +
        ', codemptm, codfilialtm, codempvd, codfilialvd, codemptc, codfil' +
        'ialtc, codfilial, codcaixa, codclcomis, codvend,codclascomis,tip' +
        'ovenda,serie, subtipovenda,codvenda,  PERCCOMISVENDA, VLRDESCVEN' +
        'DA, vlrprodvenda,codcli,codplanopag, codtipomov, DOCVENDA,DTSAID' +
        'AVENDA,DTEMITVENDA,DTCOMPVENDA,STATUSVENDA,bloqvenda,localserv,n' +
        'roatualizado,sitcomplvenda,dtins,hins,idusuins, codtipocob, idec' +
        'lidoc, ideclitel from vdvenda')
    Params = <>
    Left = 392
    Top = 262
    object zqry_VDVENDACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDVENDACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDVENDACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
    end
    object zqry_VDVENDACODCLCOMIS: TIntegerField
      FieldName = 'CODCLCOMIS'
    end
    object zqry_VDVENDACODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDVENDACODCLASCOMIS: TWideStringField
      FieldName = 'CODCLASCOMIS'
      Size = 1
    end
    object zqry_VDVENDATIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDASERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_VDVENDASUBTIPOVENDA: TWideStringField
      FieldName = 'SUBTIPOVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDACODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDVENDAPERCCOMISVENDA: TFloatField
      FieldName = 'PERCCOMISVENDA'
    end
    object zqry_VDVENDAVLRDESCVENDA: TFloatField
      FieldName = 'VLRDESCVENDA'
    end
    object zqry_VDVENDAVLRPRODVENDA: TFloatField
      FieldName = 'VLRPRODVENDA'
    end
    object zqry_VDVENDACODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDVENDACODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_VDVENDACODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_VDVENDADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
      Required = True
    end
    object zqry_VDVENDADTSAIDAVENDA: TDateField
      FieldName = 'DTSAIDAVENDA'
      Required = True
    end
    object zqry_VDVENDADTEMITVENDA: TDateField
      FieldName = 'DTEMITVENDA'
      Required = True
    end
    object zqry_VDVENDADTCOMPVENDA: TDateField
      FieldName = 'DTCOMPVENDA'
      Required = True
    end
    object zqry_VDVENDASTATUSVENDA: TWideStringField
      FieldName = 'STATUSVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDABLOQVENDA: TWideStringField
      FieldName = 'BLOQVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDALOCALSERV: TWideStringField
      FieldName = 'LOCALSERV'
      Required = True
      Size = 1
    end
    object zqry_VDVENDANROATUALIZADO: TWideStringField
      FieldName = 'NROATUALIZADO'
      Required = True
      Size = 1
    end
    object zqry_VDVENDASITCOMPLVENDA: TWideStringField
      FieldName = 'SITCOMPLVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDVENDAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDVENDAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDVENDACODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
      Required = True
    end
    object zqry_VDVENDACODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
      Required = True
    end
    object zqry_VDVENDACODEMPCM: TIntegerField
      FieldName = 'CODEMPCM'
    end
    object zqry_VDVENDACODFILIALCM: TIntegerField
      FieldName = 'CODFILIALCM'
    end
    object zqry_VDVENDACODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_VDVENDACODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_VDVENDACODEMPCX: TIntegerField
      FieldName = 'CODEMPCX'
    end
    object zqry_VDVENDACODFILIALCX: TSmallintField
      FieldName = 'CODFILIALCX'
    end
    object zqry_VDVENDACODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_VDVENDACODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_VDVENDACODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_VDVENDACODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_VDVENDACODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDVENDACODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDVENDACODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_VDVENDACODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_VDVENDACODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_VDVENDAIDECLIDOC: TWideStringField
      FieldName = 'IDECLIDOC'
      Size = 14
    end
    object zqry_VDVENDAIDECLITEL: TWideStringField
      FieldName = 'IDECLITEL'
      ReadOnly = True
      Size = 11
    end
  end
  object dts_VDVENDA: TDataSource
    DataSet = zqry_VDVENDA
    Left = 464
    Top = 262
  end
  object zqry_VDFRETEVD: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select codemp, codfilial, tipovenda,codvenda,tipofretevd,placafr' +
        'etevd,uffretevd,vlrfretevd,vlrsegfretevd, qtdfretevd,pesobrutvd,' +
        'pesoliqvd,espfretevd,marcafretevd,adicfretevd,adicfretebaseicm,d' +
        'tins,hins,idusuins from vdfretevd')
    Params = <>
    Left = 392
    Top = 310
    object zqry_VDFRETEVDCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDFRETEVDCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDFRETEVDTIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDFRETEVDCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDFRETEVDTIPOFRETEVD: TWideStringField
      FieldName = 'TIPOFRETEVD'
      Required = True
      Size = 1
    end
    object zqry_VDFRETEVDPLACAFRETEVD: TWideStringField
      FieldName = 'PLACAFRETEVD'
      Required = True
      Size = 10
    end
    object zqry_VDFRETEVDUFFRETEVD: TWideStringField
      FieldName = 'UFFRETEVD'
      Required = True
      Size = 2
    end
    object zqry_VDFRETEVDVLRFRETEVD: TFloatField
      FieldName = 'VLRFRETEVD'
      Required = True
    end
    object zqry_VDFRETEVDVLRSEGFRETEVD: TFloatField
      FieldName = 'VLRSEGFRETEVD'
    end
    object zqry_VDFRETEVDQTDFRETEVD: TFloatField
      FieldName = 'QTDFRETEVD'
      Required = True
    end
    object zqry_VDFRETEVDPESOBRUTVD: TFloatField
      FieldName = 'PESOBRUTVD'
      Required = True
    end
    object zqry_VDFRETEVDPESOLIQVD: TFloatField
      FieldName = 'PESOLIQVD'
      Required = True
    end
    object zqry_VDFRETEVDESPFRETEVD: TWideStringField
      FieldName = 'ESPFRETEVD'
      Required = True
      Size = 10
    end
    object zqry_VDFRETEVDMARCAFRETEVD: TWideStringField
      FieldName = 'MARCAFRETEVD'
      Required = True
      Size = 10
    end
    object zqry_VDFRETEVDADICFRETEVD: TWideStringField
      FieldName = 'ADICFRETEVD'
      Required = True
      Size = 1
    end
    object zqry_VDFRETEVDADICFRETEBASEICM: TWideStringField
      FieldName = 'ADICFRETEBASEICM'
      Required = True
      Size = 1
    end
    object zqry_VDFRETEVDDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDFRETEVDHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDFRETEVDIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
  end
  object dts_VDFRETEVD: TDataSource
    DataSet = zqry_VDFRETEVD
    Left = 464
    Top = 310
  end
  object zqry_VDVENDEDOR: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp,codfilial,codvend,nomevend from vdvendedor')
    Params = <>
    Left = 392
    Top = 358
    object zqry_VDVENDEDORCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDVENDEDORCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDVENDEDORCODVEND: TIntegerField
      FieldName = 'CODVEND'
      Required = True
    end
    object zqry_VDVENDEDORNOMEVEND: TWideStringField
      FieldName = 'NOMEVEND'
      Size = 40
    end
  end
  object dts_VDVENDEDOR: TDataSource
    DataSet = zqry_VDVENDEDOR
    Left = 464
    Top = 358
  end
  object zqry_EXCLUIVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 392
    Top = 214
  end
  object zqry_SGPREFERE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select codemp, estneg from sgprefere1')
    Params = <>
    Left = 392
    Top = 406
    object zqry_SGPREFERECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGPREFEREESTNEG: TWideStringField
      FieldName = 'ESTNEG'
      Size = 1
    end
  end
  object zdts_SGPREFERE1: TDataSource
    Left = 464
    Top = 406
  end
  object zqry_EXCLUIITEM: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 392
    Top = 454
  end
  object zdts_EXCLUIITEM: TDataSource
    DataSet = zqry_EXCLUIITEM
    Left = 464
    Top = 454
  end
  object zqry_ATUALIZAVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 200
    Top = 206
  end
  object zdts_ATUALIZAVENDA: TDataSource
    DataSet = zqry_ATUALIZAVENDA
    Left = 256
    Top = 206
  end
  object zqry_INSERT: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 596
    Top = 382
  end
  object zdts_INSERT: TDataSource
    DataSet = zqry_INSERT
    Left = 660
    Top = 382
  end
  object zdts_TIPOSPAGTO: TDataSource
    DataSet = zqry_TIPOSPAGTO
    Left = 697
    Top = 203
  end
  object zqry_TIPOSPAGTO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from tipospagto')
    Params = <>
    Left = 609
    Top = 203
    object zqry_TIPOSPAGTOTIPOCOB: TIntegerField
      FieldName = 'TIPOCOB'
    end
    object zqry_TIPOSPAGTOVALOR: TFloatField
      FieldName = 'VALOR'
      currency = True
    end
    object zqry_TIPOSPAGTODATA: TDateField
      FieldName = 'DATA'
    end
    object zqry_TIPOSPAGTODESCCOB: TWideStringField
      FieldName = 'DESCCOB'
      Size = 40
    end
    object zqry_TIPOSPAGTOTIPONFE: TIntegerField
      FieldName = 'TIPONFE'
    end
    object zqry_TIPOSPAGTOTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
    end
  end
end
