object frm_DLG_INSTANTANEO: Tfrm_DLG_INSTANTANEO
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  BorderStyle = bsSingle
  Caption = 'Instantaneo do Caixa'
  ClientHeight = 367
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 54
    Height = 13
    Caption = 'Saldo Atual'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 121
    Height = 13
    Caption = 'Hist'#243'rico dos Movimentos'
  end
  object Label3: TLabel
    Left = 8
    Top = 177
    Width = 103
    Height = 13
    Caption = 'Disposi'#231#227'o de Valores'
  end
  object lbl_ULTSALDO: TLabel
    Left = 88
    Top = 8
    Width = 150
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 51
    Width = 458
    Height = 120
    DataSource = zdts_PVMOVCAIXA
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NROMOV'
        Title.Caption = 'N.'#186' Mov.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOMOV'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRMOV'
        Title.Caption = 'Valor Movimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLDSLDMOV'
        Title.Caption = 'Saldo Movimento'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 196
    Width = 458
    Height = 120
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn_FECHAR: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 324
    Width = 468
    Height = 40
    Align = alBottom
    Caption = 'FECHAR'
    TabOrder = 2
    OnClick = btn_FECHARClick
    ExplicitTop = 335
  end
  object zqry_PVMOVCAIXA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from pvmovcaixa')
    Params = <>
    Left = 288
    Top = 96
    object zqry_PVMOVCAIXACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_PVMOVCAIXACODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_PVMOVCAIXACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Required = True
    end
    object zqry_PVMOVCAIXANROMOV: TIntegerField
      FieldName = 'NROMOV'
      Required = True
    end
    object zqry_PVMOVCAIXAITEM: TSmallintField
      FieldName = 'ITEM'
      Required = True
    end
    object zqry_PVMOVCAIXADATAMOV: TDateField
      FieldName = 'DATAMOV'
      Required = True
    end
    object zqry_PVMOVCAIXADATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object zqry_PVMOVCAIXAHORACADASTRO: TTimeField
      FieldName = 'HORACADASTRO'
    end
    object zqry_PVMOVCAIXATIPOMOV: TWideStringField
      FieldName = 'TIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_PVMOVCAIXAVLRMOV: TSingleField
      FieldName = 'VLRMOV'
      Required = True
    end
    object zqry_PVMOVCAIXAVLDSLDMOV: TSingleField
      FieldName = 'VLDSLDMOV'
      Required = True
    end
    object zqry_PVMOVCAIXACODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Required = True
    end
    object zqry_PVMOVCAIXAISYNC: TWideStringField
      FieldName = 'ISYNC'
      Size = 1
    end
    object zqry_PVMOVCAIXAESYNC: TWideStringField
      FieldName = 'ESYNC'
      Size = 1
    end
  end
  object zdts_PVMOVCAIXA: TDataSource
    DataSet = zqry_PVMOVCAIXA
    Left = 360
    Top = 96
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select max(vldsldmov) as ultsaldo from pvmovcaixa')
    Params = <>
    Left = 288
    Top = 144
    object ZQuery1ULTSALDO: TSingleField
      FieldName = 'ULTSALDO'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 360
    Top = 144
  end
end
