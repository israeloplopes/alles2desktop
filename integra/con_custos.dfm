object frm_CON_CUSTOS: Tfrm_CON_CUSTOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'CUSTOS e SALDOS DIVERGENTES'
  ClientHeight = 368
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
    Left = 5
    Top = 5
    Width = 675
    Height = 356
    ActivePage = TabSheet4
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'CUSTO INFORMADO'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 262
        DataSource = dm_DADOS.zdts_EQPRODUTO
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn_busc_custoinfo: TBitBtn
        Left = 0
        Top = 268
        Width = 665
        Height = 25
        Caption = 'BUSCA CUSTO INFORMADO ZERADO'
        TabOrder = 1
        OnClick = btn_busc_custoinfoClick
      end
      object btn_proc_custoinfo: TBitBtn
        Left = 0
        Top = 292
        Width = 664
        Height = 25
        Caption = 'PROCESSO CUSTO INFORMADO'
        TabOrder = 2
        OnClick = btn_proc_custoinfoClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CUSTO M'#201'DIO'
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 3
        Top = 302
        Width = 70
        Height = 13
        Caption = 'CUSTO MEDIO'
      end
      object DBText1: TDBText
        Left = 3
        Top = 278
        Width = 431
        Height = 16
        DataField = 'DESCPROD'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 456
        Top = 278
        Width = 65
        Height = 17
        DataField = 'CODPROD'
        DataSource = DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 271
        Top = 302
        Width = 79
        Height = 13
        Caption = 'CUSTO GERADO'
      end
      object DBText4: TDBText
        Left = 240
        Top = 280
        Width = 65
        Height = 17
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 241
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPROD'
            Title.Caption = 'C'#211'D. PROD.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCPROD'
            Title.Caption = 'DESC. PROD'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMPMMOVPROD'
            Title.Caption = 'CUSTO MPM'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPROD'
            Title.Caption = 'TIPO'
            Visible = True
          end>
      end
      object btn_busc_custompm: TBitBtn
        Left = 0
        Top = 247
        Width = 665
        Height = 25
        Caption = 'BUSCA CUSTO MEDIO ZERADO'
        TabOrder = 1
        OnClick = btn_busc_custompmClick
      end
      object BitBtn1: TBitBtn
        Left = 467
        Top = 302
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object DBEdit24: TDBEdit
        Left = 559
        Top = 278
        Width = 49
        Height = 21
        DataField = 'CODEMP'
        TabOrder = 3
        Visible = False
      end
      object DBEdit22: TDBEdit
        Left = 558
        Top = 296
        Width = 50
        Height = 21
        DataField = 'USER'
        TabOrder = 4
        Visible = False
      end
      object DBEdit25: TDBEdit
        Left = 614
        Top = 278
        Width = 50
        Height = 21
        DataField = 'CODFILIAL'
        TabOrder = 5
        Visible = False
      end
      object DBEdit23: TDBEdit
        Left = 614
        Top = 294
        Width = 50
        Height = 21
        DataField = 'CURRENT_CONNECTION'
        TabOrder = 6
        Visible = False
      end
      object BitBtn4: TBitBtn
        Left = 190
        Top = 302
        Width = 75
        Height = 25
        Caption = 'Gerar Custo'
        TabOrder = 7
        OnClick = BitBtn4Click
      end
      object DBGrid5: TDBGrid
        Left = 328
        Top = 88
        Width = 320
        Height = 120
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Edit1: TEdit
        Left = 356
        Top = 302
        Width = 105
        Height = 21
        TabOrder = 9
      end
      object DBEdit1: TDBEdit
        Left = 548
        Top = 305
        Width = 32
        Height = 21
        DataField = 'CUSTOMPMMOVPROD'
        DataSource = dm_DADOS.dts_EQMOVPROD
        TabOrder = 10
        Visible = False
      end
      object Edit2: TEdit
        Left = 568
        Top = 320
        Width = 121
        Height = 21
        TabOrder = 11
        Text = 'Edit2'
        Visible = False
      end
      object Edit3: TEdit
        Left = 79
        Top = 300
        Width = 105
        Height = 21
        TabOrder = 12
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CUSTO PEPS'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 262
        DataSource = dm_DADOS.zdts_EQPRODUTO
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn_busc_custopeps: TBitBtn
        Left = 0
        Top = 268
        Width = 665
        Height = 25
        Caption = 'BUSCA CUSTO PEPS ZERADO'
        TabOrder = 1
        OnClick = btn_busc_custopepsClick
      end
      object btn_proc_custopeps: TBitBtn
        Left = 0
        Top = 292
        Width = 664
        Height = 25
        Caption = 'PROCESSA CUSTO PEPS'
        TabOrder = 2
        OnClick = btn_proc_custopepsClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'SALDO INICIAL'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBText2: TDBText
        Left = 3
        Top = 278
        Width = 366
        Height = 17
        DataField = 'PRODUTO'
        DataSource = dm_DADOS.dts_EQMOVPROD
      end
      object Label2: TLabel
        Left = 3
        Top = 301
        Width = 89
        Height = 13
        Caption = 'QTD. MOV. PROD.'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 189
        Top = 301
        Width = 86
        Height = 13
        Caption = 'SLD. MOV. PROD.'
        FocusControl = DBEdit3
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 241
        DataSource = dm_DADOS.dts_EQMOVPROD
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODTIPOMOV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SLDMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMPMMOVPROD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDUSUINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HALT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDUSUALT'
            Visible = True
          end>
      end
      object BitBtn2: TBitBtn
        Left = 0
        Top = 247
        Width = 664
        Height = 25
        Caption = 'BUSCA SALDO DE MOVIMENTO DO PRODUTO NEGATIVO'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object DBEdit2: TDBEdit
        Left = 94
        Top = 296
        Width = 89
        Height = 21
        DataField = 'QTDMOVPROD'
        DataSource = dm_DADOS.dts_EQMOVPROD
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 280
        Top = 296
        Width = 89
        Height = 21
        DataField = 'SLDMOVPROD'
        DataSource = dm_DADOS.dts_EQMOVPROD
        TabOrder = 3
      end
      object BitBtn3: TBitBtn
        Left = 375
        Top = 296
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 4
        OnClick = BitBtn3Click
      end
    end
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 112
  end
  object DataSource2: TDataSource
    Left = 232
    Top = 168
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 145
    Top = 109
  end
  object ZQuery2: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 145
    Top = 165
  end
end
