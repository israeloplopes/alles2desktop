inherited frm_CAD_SETOR: Tfrm_CAD_SETOR
  Caption = 'SETORES'
  PixelsPerInch = 96
  TextHeight = 13
  inherited zqry_CADASTRO: TZQuery
    SQL.Strings = (
      'select * from vdsetor')
    object zqry_CADASTROCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CADASTROCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CADASTROCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Required = True
    end
    object zqry_CADASTRODESCSETOR: TWideStringField
      FieldName = 'DESCSETOR'
      Required = True
      Size = 40
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
end
