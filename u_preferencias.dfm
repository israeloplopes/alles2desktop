object frm_PREFERENCIAS: Tfrm_PREFERENCIAS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Prefer'#234'ncias do Sistema'
  ClientHeight = 471
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 728
    Height = 465
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 724
    ExplicitHeight = 464
    object TabSheet2: TTabSheet
      Caption = 'Da Emiss'#227'o Fiscal'
      ImageIndex = 1
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 714
        Height = 134
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 710
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 185
          Height = 126
          Align = alLeft
          Caption = 'Pr'#243'xima NFe para Emitir'
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 49
            Width = 175
            Height = 13
            Align = alTop
            Caption = 'N.'#186' Pr'#243'xima NFe'
            FocusControl = DBEdit1
            ExplicitWidth = 79
          end
          object btn_EDITANFE: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 175
            Height = 25
            Align = alTop
            Caption = 'Editar Numera'#231#227'o &NFe'
            TabOrder = 0
            OnClick = btn_EDITANFEClick
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 5
            Top = 68
            Width = 175
            Height = 21
            Align = alTop
            DataField = 'NROSEQ'
            DataSource = zdts_SEQNFE
            TabOrder = 1
          end
          object btn_SALVANFE: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 96
            Width = 175
            Height = 25
            Align = alBottom
            Caption = 'Gravar Numera'#231#227'o &N&Fe'
            Enabled = False
            TabOrder = 2
            OnClick = btn_SALVANFEClick
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 195
          Top = 4
          Width = 185
          Height = 126
          Align = alLeft
          Caption = 'Pr'#243'xima NFCe para Emitir'
          TabOrder = 1
          object Label2: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 49
            Width = 175
            Height = 13
            Align = alTop
            Caption = 'N.'#186' Pr'#243'xima NFCe'
            FocusControl = DBEdit2
            ExplicitWidth = 86
          end
          object btn_EDITANFCE: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 175
            Height = 25
            Align = alTop
            Caption = '&Editar Numera'#231#227'o NFCe'
            TabOrder = 0
            OnClick = btn_EDITANFCEClick
          end
          object btn_SALVANFCE: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 96
            Width = 175
            Height = 25
            Align = alBottom
            Caption = '&Gravar Numera'#231#227'o NFCe'
            Enabled = False
            TabOrder = 1
            OnClick = btn_SALVANFCEClick
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 5
            Top = 68
            Width = 175
            Height = 21
            Align = alTop
            DataField = 'NROSEQ'
            DataSource = zdts_SEQNFCE
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 386
          Top = 4
          Width = 185
          Height = 126
          Align = alLeft
          Caption = 'Pr'#243'ximo MDFe para Emitir'
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 49
            Width = 175
            Height = 13
            Align = alTop
            Caption = 'N.'#186' Pr'#243'xima MDFe'
            FocusControl = DBEdit2
            ExplicitWidth = 87
          end
          object BitBtn2: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 175
            Height = 25
            Align = alTop
            Caption = 'Editar N&umera'#231#227'o MDFe'
            TabOrder = 0
            OnClick = BitBtn2Click
          end
          object btn_SALVAMDFE: TBitBtn
            AlignWithMargins = True
            Left = 5
            Top = 96
            Width = 175
            Height = 25
            Align = alBottom
            Caption = 'Gra&var Numera'#231#227'o MDFe'
            Enabled = False
            TabOrder = 1
            OnClick = btn_SALVAMDFEClick
          end
          object DBEdit3: TDBEdit
            AlignWithMargins = True
            Left = 5
            Top = 68
            Width = 175
            Height = 21
            Align = alTop
            DataField = 'ULTMDFE'
            DataSource = zdts_SEQMDFE
            TabOrder = 2
          end
        end
      end
    end
  end
  object zqry_SEQNFE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from sgsequencia')
    Params = <>
    Left = 575
    Top = 187
    object zqry_SEQNFECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SEQNFECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SEQNFESGTAB: TWideStringField
      FieldName = 'SGTAB'
      Required = True
      Size = 2
    end
    object zqry_SEQNFENROSEQ: TIntegerField
      FieldName = 'NROSEQ'
    end
    object zqry_SEQNFEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SEQNFEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SEQNFEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SEQNFEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SEQNFEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SEQNFEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_SEQNFE: TDataSource
    DataSet = zqry_SEQNFE
    Left = 655
    Top = 187
  end
  object zqry_SEQNFCE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from sgsequencia'
      '')
    Params = <>
    Left = 575
    Top = 235
    object zqry_SEQNFCECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SEQNFCECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SEQNFCESGTAB: TWideStringField
      FieldName = 'SGTAB'
      Required = True
      Size = 2
    end
    object zqry_SEQNFCENROSEQ: TIntegerField
      FieldName = 'NROSEQ'
    end
    object zqry_SEQNFCEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SEQNFCEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SEQNFCEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SEQNFCEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SEQNFCEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SEQNFCEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_SEQNFCE: TDataSource
    DataSet = zqry_SEQNFCE
    Left = 655
    Top = 235
  end
  object zqry_SEQMDFE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select max(nroseq) as ultmdfe from sgsequencia')
    Params = <>
    Left = 575
    Top = 291
    object zqry_SEQMDFEULTMDFE: TIntegerField
      FieldName = 'ULTMDFE'
      ReadOnly = True
    end
  end
  object zdts_SEQMDFE: TDataSource
    DataSet = zqry_SEQMDFE
    Left = 655
    Top = 291
  end
  object zqry_MAX: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 427
    Top = 192
  end
  object zdts_MAX: TDataSource
    DataSet = zqry_MAX
    Left = 491
    Top = 192
  end
end
