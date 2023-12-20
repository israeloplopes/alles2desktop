inherited frm_CAD_MARCAS: Tfrm_CAD_MARCAS
  Caption = 'MARCAS'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 96
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 416
    Top = 96
    Width = 22
    Height = 13
    Caption = 'Sigla'
    FocusControl = DBEdit3
  end
  inherited pn_CABECALHO: TPanel
    inherited lbl_TITULO_FORM: TLabel
      Width = 401
      ExplicitWidth = 401
      ExplicitHeight = 31
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 8
    Top = 112
    Width = 82
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CODMARCA'
    DataSource = zdts_CADASTRO
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [6]
    Left = 96
    Top = 112
    Width = 312
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCMARCA'
    DataSource = zdts_CADASTRO
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [7]
    Left = 416
    Top = 112
    Width = 130
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SIGLAMARCA'
    DataSource = zdts_CADASTRO
    TabOrder = 4
  end
  inherited DBGrid2: TDBGrid
    TabOrder = 6
    Columns = <
      item
        Expanded = False
        FieldName = 'CODMARCA'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCMARCA'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGLAMARCA'
        Title.Caption = 'Sigla'
        Visible = True
      end>
  end
  inherited zqry_CADASTRO: TZQuery
    SQL.Strings = (
      'select * from eqmarca')
    object zqry_CADASTROCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CADASTROCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CADASTROCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_CADASTRODESCMARCA: TWideStringField
      FieldName = 'DESCMARCA'
      Required = True
      Size = 40
    end
    object zqry_CADASTROSIGLAMARCA: TWideStringField
      FieldName = 'SIGLAMARCA'
    end
    object zqry_CADASTRODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CADASTROHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CADASTROIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CADASTRODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CADASTROHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CADASTROIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  inherited zupt_CADASTRO: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM eqmarca'
      'WHERE'
      '  eqmarca.CODEMP = :OLD_CODEMP AND'
      '  eqmarca.CODFILIAL = :OLD_CODFILIAL')
    InsertSQL.Strings = (
      'INSERT INTO eqmarca'
      
        '  (CODEMP, CODFILIAL, CODMARCA, DESCMARCA, SIGLAMARCA, DTINS, HI' +
        'NS, IDUSUINS, '
      '   DTALT, HALT, IDUSUALT)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :CODMARCA, :DESCMARCA, :SIGLAMARCA, :DTI' +
        'NS, :HINS, '
      '   :IDUSUINS, :DTALT, :HALT, :IDUSUALT)')
    ModifySQL.Strings = (
      'UPDATE eqmarca SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CODMARCA = :CODMARCA,'
      '  DESCMARCA = :DESCMARCA,'
      '  SIGLAMARCA = :SIGLAMARCA,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT'
      'WHERE'
      '  eqmarca.CODEMP = :OLD_CODEMP AND'
      '  eqmarca.CODFILIAL = :OLD_CODFILIAL')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLAMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSUINS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTALT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HALT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSUALT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODEMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODFILIAL'
        ParamType = ptUnknown
      end>
  end
end
