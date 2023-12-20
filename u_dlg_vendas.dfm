object frm_DLG_VENDAS: Tfrm_DLG_VENDAS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 370
  ClientWidth = 590
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 584
    Height = 364
    ActivePage = ts_MOVIMENTO
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 588
    ExplicitHeight = 365
    object ts_FINALIZA: TTabSheet
      Caption = 'Por Finalizadores'
      OnEnter = ts_FINALIZAEnter
      object Label1: TLabel
        Left = 3
        Top = 19
        Width = 106
        Height = 25
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 296
        Top = 19
        Width = 94
        Height = 25
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object msK_INI: TMaskEdit
        Left = 136
        Top = 16
        Width = 121
        Height = 33
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object msk_FIM: TMaskEdit
        Left = 416
        Top = 16
        Width = 121
        Height = 33
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 136
        Width = 574
        Height = 167
        Align = alBottom
        DataSource = zdts_TIPOSPAGTO
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn_BUSCAR: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 74
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn_BUSCARClick
      end
      object btn_CANCELAR: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 105
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Cancelar'
        TabOrder = 3
        OnClick = btn_CANCELARClick
      end
      object btn_IMP_FINALIZADOR: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 309
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Imprimir'
        Enabled = False
        TabOrder = 5
        OnClick = btn_IMP_FINALIZADORClick
      end
    end
    object ts_MOVIMENTO: TTabSheet
      Caption = 'Por Movimento'
      ImageIndex = 1
      OnEnter = ts_MOVIMENTOEnter
      object Label3: TLabel
        Left = 3
        Top = 19
        Width = 106
        Height = 25
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 304
        Top = 19
        Width = 94
        Height = 25
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object msk_MOV_FIM: TMaskEdit
        Left = 424
        Top = 16
        Width = 120
        Height = 33
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
      end
      object msk_MOV_INI: TMaskEdit
        Left = 144
        Top = 16
        Width = 121
        Height = 33
        EditMask = '99/99/9999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
      end
      object btn_BUSCAR_MOV: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 74
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btn_BUSCAR_MOVClick
      end
      object btn_CANCELAR_MOV: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 105
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Cancelar'
        TabOrder = 3
        OnClick = btn_CANCELARClick
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 136
        Width = 574
        Height = 167
        Align = alBottom
        DataSource = zdts_MOVIMENTO
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object btn_IMP_MOV: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 309
        Width = 574
        Height = 25
        Align = alBottom
        Caption = '&Imprimir'
        Enabled = False
        TabOrder = 5
        OnClick = btn_IMP_MOVClick
      end
    end
  end
  object zqry_TIPOSPAGTO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from TIPOSPAGTO')
    Params = <>
    Left = 412
    Top = 202
    object zqry_TIPOSPAGTOTIPOCOB: TIntegerField
      FieldName = 'TIPOCOB'
    end
    object zqry_TIPOSPAGTOTIPONFE: TIntegerField
      FieldName = 'TIPONFE'
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
    object zqry_TIPOSPAGTOTERMINAL: TIntegerField
      FieldName = 'TERMINAL'
    end
  end
  object zdts_TIPOSPAGTO: TDataSource
    DataSet = zqry_TIPOSPAGTO
    Left = 476
    Top = 202
  end
  object zqry_MOVIMENTO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select it.codvenda, it.codemp,it.coditvenda, vd.codvenda, vd.doc' +
        'venda, vd.codtipomov, vd.codcli, cl.nomecli, it.codprod, eq.desc' +
        'prod, eq.codunid,'
      
        'it.qtditvenda, it.vlrliqitvenda, it.vlrproditvenda,vd.codtipocob' +
        ',fn.desctipocob,'
      
        'vd.dtemitvenda, vd.vlrvenda, vd.vlrliqvenda, vd.vlrdescvenda  fr' +
        'om vditvenda as it'
      'inner join vdvenda   as vd on it.codvenda=vd.codvenda'
      'inner join eqproduto as eq on it.codprod=eq.codprod'
      'inner join vdcliente as cl on vd.codcli=cl.codcli'
      'inner join fntipocob as fn on vd.codtipocob=fn.codtipocob')
    Params = <>
    Left = 407
    Top = 259
    object zqry_MOVIMENTOCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_MOVIMENTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_MOVIMENTOCODITVENDA: TIntegerField
      FieldName = 'CODITVENDA'
      Required = True
    end
    object zqry_MOVIMENTOCODVENDA_1: TIntegerField
      FieldName = 'CODVENDA_1'
      Required = True
    end
    object zqry_MOVIMENTODOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
      Required = True
    end
    object zqry_MOVIMENTOCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_MOVIMENTOCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_MOVIMENTONOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Required = True
      Size = 50
    end
    object zqry_MOVIMENTOCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_MOVIMENTODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_MOVIMENTOCODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_MOVIMENTOQTDITVENDA: TFloatField
      FieldName = 'QTDITVENDA'
      Required = True
    end
    object zqry_MOVIMENTOVLRLIQITVENDA: TFloatField
      FieldName = 'VLRLIQITVENDA'
    end
    object zqry_MOVIMENTOVLRPRODITVENDA: TFloatField
      FieldName = 'VLRPRODITVENDA'
    end
    object zqry_MOVIMENTOCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_MOVIMENTODESCTIPOCOB: TWideStringField
      FieldName = 'DESCTIPOCOB'
      Required = True
      Size = 40
    end
    object zqry_MOVIMENTODTEMITVENDA: TDateField
      FieldName = 'DTEMITVENDA'
      Required = True
    end
    object zqry_MOVIMENTOVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object zqry_MOVIMENTOVLRLIQVENDA: TFloatField
      FieldName = 'VLRLIQVENDA'
    end
    object zqry_MOVIMENTOVLRDESCVENDA: TFloatField
      FieldName = 'VLRDESCVENDA'
    end
  end
  object zdts_MOVIMENTO: TDataSource
    DataSet = zqry_MOVIMENTO
    Left = 479
    Top = 259
  end
end
