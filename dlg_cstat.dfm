object frm_DLG_CSTAT: Tfrm_DLG_CSTAT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_DLG_CSTAT'
  ClientHeight = 251
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 50
    Height = 19
    Caption = 'CSTAT'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 66
    Width = 84
    Height = 19
    Caption = 'MENSAGEM'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 63
    Height = 19
    Caption = 'RESUMO'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 33
    Width = 134
    Height = 27
    DataField = 'CSTAT'
    DataSource = zdts_SGNFCSTAT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 87
    Width = 528
    Height = 27
    DataField = 'MENSAGEM'
    DataSource = zdts_SGNFCSTAT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 145
    Width = 528
    Height = 27
    DataField = 'RESUMO'
    DataSource = zdts_SGNFCSTAT
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btn_FECHAR: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 216
    Width = 538
    Height = 32
    Align = alBottom
    Caption = '&FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn_FECHARClick
  end
  object zqry_SGNFCSTAT: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from sgnfcstat')
    Params = <>
    Left = 352
    Top = 56
    object zqry_SGNFCSTATCSTAT: TIntegerField
      FieldName = 'CSTAT'
      Required = True
    end
    object zqry_SGNFCSTATMENSAGEM: TWideStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object zqry_SGNFCSTATRESUMO: TWideStringField
      FieldName = 'RESUMO'
      Size = 1000
    end
  end
  object zdts_SGNFCSTAT: TDataSource
    DataSet = zqry_SGNFCSTAT
    Left = 416
    Top = 56
  end
end