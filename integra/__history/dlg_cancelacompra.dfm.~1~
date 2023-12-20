object frm_DLG_CANCELACOMPRA: Tfrm_DLG_CANCELACOMPRA
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancela Compra'
  ClientHeight = 371
  ClientWidth = 434
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
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 428
    Height = 78
    Align = alTop
    Caption = 'Par'#226'metros de Busca'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 67
      Height = 13
      Caption = 'N.'#186' da NF-e : '
    end
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 64
      Height = 13
      Caption = 'Data Entrada'
    end
    object edt_BUSCANFE: TEdit
      Left = 89
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object msk_DATA: TMaskEdit
      Left = 89
      Top = 48
      Width = 120
      Height = 21
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object BitBtn1: TBitBtn
      Left = 215
      Top = 21
      Width = 120
      Height = 48
      Caption = '&Buscar...'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 87
    Width = 428
    Height = 210
    Align = alTop
    DataSource = dm_DADOS.zdts_CPCOMPRA
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCOMPRA'
        Title.Caption = 'C'#211'D COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCCOMPRA'
        Title.Caption = 'DOC COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTCOMPRA'
        Title.Caption = 'ENTRADA COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPRODCOMPRA'
        Title.Caption = 'VLR. COMPRA'
        Visible = True
      end>
  end
  object ZQuery1: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 296
    Top = 304
  end
  object ZQuery2: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 336
    Top = 304
  end
  object ZQuery3: TZQuery
    Connection = dm_DADOS.zCONECTA
    Params = <>
    Left = 376
    Top = 304
  end
end
