object dm_CHECKOUT: Tdm_CHECKOUT
  OldCreateOrder = False
  Height = 446
  Width = 550
  object zqry_VDVENDA_NFCE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from vdvenda')
    Params = <>
    Left = 48
    Top = 24
    object zqry_VDVENDA_NFCE_FONECLI: TStringField
      FieldKind = fkLookup
      FieldName = '_FONECLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'FONECLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_DDDCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_DDDCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'DDDCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_CEPCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_CEPCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CEPCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_ENDCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_NUMCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_COMPLCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_COMPLCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'COMPLCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_BAIRCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_CODMUNIC: TStringField
      FieldKind = fkLookup
      FieldName = '_CODMUNIC'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CODMUNIC'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_CIDCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_UFCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_UFCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'UFCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCE_RAZCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZCLI'
      LookupDataSet = dm_DADOS.zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_NFCECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDVENDA_NFCECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDVENDA_NFCETIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDA_NFCECODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDVENDA_NFCESUBTIPOVENDA: TWideStringField
      FieldName = 'SUBTIPOVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDA_NFCECODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDVENDA_NFCECODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDVENDA_NFCECODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDVENDA_NFCECODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
      Required = True
    end
    object zqry_VDVENDA_NFCECODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
      Required = True
    end
    object zqry_VDVENDA_NFCECODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDVENDA_NFCECODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_VDVENDA_NFCECODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_VDVENDA_NFCECODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_VDVENDA_NFCECODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_VDVENDA_NFCECODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_VDVENDA_NFCESERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_VDVENDA_NFCECODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_VDVENDA_NFCECODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_VDVENDA_NFCECODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_VDVENDA_NFCECODEMPCX: TIntegerField
      FieldName = 'CODEMPCX'
    end
    object zqry_VDVENDA_NFCECODFILIALCX: TSmallintField
      FieldName = 'CODFILIALCX'
    end
    object zqry_VDVENDA_NFCECODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
    end
    object zqry_VDVENDA_NFCEDOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
      Required = True
    end
    object zqry_VDVENDA_NFCEDTSAIDAVENDA: TDateField
      FieldName = 'DTSAIDAVENDA'
      Required = True
    end
    object zqry_VDVENDA_NFCEDTEMITVENDA: TDateField
      FieldName = 'DTEMITVENDA'
      Required = True
    end
    object zqry_VDVENDA_NFCEDTCOMPVENDA: TDateField
      FieldName = 'DTCOMPVENDA'
      Required = True
    end
    object zqry_VDVENDA_NFCECODEMPRM: TIntegerField
      FieldName = 'CODEMPRM'
    end
    object zqry_VDVENDA_NFCECODFILIALRM: TSmallintField
      FieldName = 'CODFILIALRM'
    end
    object zqry_VDVENDA_NFCETICKET: TIntegerField
      FieldName = 'TICKET'
    end
    object zqry_VDVENDA_NFCEVLRPRODVENDA: TFloatField
      FieldName = 'VLRPRODVENDA'
    end
    object zqry_VDVENDA_NFCEPERCDESCVENDA: TFloatField
      FieldName = 'PERCDESCVENDA'
    end
    object zqry_VDVENDA_NFCEVLRDESCVENDA: TFloatField
      FieldName = 'VLRDESCVENDA'
    end
    object zqry_VDVENDA_NFCEVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
    end
    object zqry_VDVENDA_NFCEVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object zqry_VDVENDA_NFCEVLRBASEICMSVENDA: TFloatField
      FieldName = 'VLRBASEICMSVENDA'
    end
    object zqry_VDVENDA_NFCEVLRICMSVENDA: TFloatField
      FieldName = 'VLRICMSVENDA'
    end
    object zqry_VDVENDA_NFCECALCICMSVENDA: TWideStringField
      FieldName = 'CALCICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPICMSVENDA: TWideStringField
      FieldName = 'IMPICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRISENTASVENDA: TFloatField
      FieldName = 'VLRISENTASVENDA'
    end
    object zqry_VDVENDA_NFCEVLROUTRASVENDA: TFloatField
      FieldName = 'VLROUTRASVENDA'
    end
    object zqry_VDVENDA_NFCEVLRBASEIPIVENDA: TFloatField
      FieldName = 'VLRBASEIPIVENDA'
    end
    object zqry_VDVENDA_NFCEVLRLIQVENDA: TFloatField
      FieldName = 'VLRLIQVENDA'
    end
    object zqry_VDVENDA_NFCEPERCCOMISVENDA: TFloatField
      FieldName = 'PERCCOMISVENDA'
    end
    object zqry_VDVENDA_NFCEVLRCOMISVENDA: TFloatField
      FieldName = 'VLRCOMISVENDA'
    end
    object zqry_VDVENDA_NFCESTATUSVENDA: TWideStringField
      FieldName = 'STATUSVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDA_NFCEVLRFRETEVENDA: TFloatField
      FieldName = 'VLRFRETEVENDA'
    end
    object zqry_VDVENDA_NFCEVLRADICVENDA: TFloatField
      FieldName = 'VLRADICVENDA'
    end
    object zqry_VDVENDA_NFCEVLRIPIVENDA: TFloatField
      FieldName = 'VLRIPIVENDA'
    end
    object zqry_VDVENDA_NFCECALCIPIVENDA: TWideStringField
      FieldName = 'CALCIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPIPIVENDA: TWideStringField
      FieldName = 'IMPIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEOBSVENDA: TWideStringField
      FieldName = 'OBSVENDA'
      Size = 10000
    end
    object zqry_VDVENDA_NFCECODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_VDVENDA_NFCECODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_VDVENDA_NFCECODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_VDVENDA_NFCECODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_VDVENDA_NFCECODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_VDVENDA_NFCECODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_VDVENDA_NFCEVLRBASEISSVENDA: TFloatField
      FieldName = 'VLRBASEISSVENDA'
    end
    object zqry_VDVENDA_NFCEVLRISSVENDA: TFloatField
      FieldName = 'VLRISSVENDA'
    end
    object zqry_VDVENDA_NFCECALCISSVENDA: TWideStringField
      FieldName = 'CALCISSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPIISSVENDA: TWideStringField
      FieldName = 'IMPIISSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPNOTAVENDA: TWideStringField
      FieldName = 'IMPNOTAVENDA'
      Size = 10000
    end
    object zqry_VDVENDA_NFCEFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_VDVENDA_NFCECODCLASCOMIS: TWideStringField
      FieldName = 'CODCLASCOMIS'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRPISVENDA: TFloatField
      FieldName = 'VLRPISVENDA'
    end
    object zqry_VDVENDA_NFCECALCPISVENDA: TWideStringField
      FieldName = 'CALCPISVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPPISVENDA: TWideStringField
      FieldName = 'IMPPISVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRCOFINSVENDA: TFloatField
      FieldName = 'VLRCOFINSVENDA'
    end
    object zqry_VDVENDA_NFCECALCCOFINSVENDA: TWideStringField
      FieldName = 'CALCCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPCOFINSVENDA: TWideStringField
      FieldName = 'IMPCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRIRVENDA: TFloatField
      FieldName = 'VLRIRVENDA'
    end
    object zqry_VDVENDA_NFCECALCIRVENDA: TWideStringField
      FieldName = 'CALCIRVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPIRVENDA: TWideStringField
      FieldName = 'IMPIRVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRCSOCIALVENDA: TFloatField
      FieldName = 'VLRCSOCIALVENDA'
    end
    object zqry_VDVENDA_NFCECALCCSOCIALVENDA: TWideStringField
      FieldName = 'CALCCSOCIALVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIMPCSOCIALVENDA: TWideStringField
      FieldName = 'IMPCSOCIALVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCEPERCMCOMISVENDA: TFloatField
      FieldName = 'PERCMCOMISVENDA'
    end
    object zqry_VDVENDA_NFCECODEMPCM: TIntegerField
      FieldName = 'CODEMPCM'
    end
    object zqry_VDVENDA_NFCECODFILIALCM: TIntegerField
      FieldName = 'CODFILIALCM'
    end
    object zqry_VDVENDA_NFCECODCLCOMIS: TIntegerField
      FieldName = 'CODCLCOMIS'
    end
    object zqry_VDVENDA_NFCECODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_VDVENDA_NFCECODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_VDVENDA_NFCECODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_VDVENDA_NFCEPEDCLIVENDA: TWideStringField
      FieldName = 'PEDCLIVENDA'
      Size = 10
    end
    object zqry_VDVENDA_NFCEVLRICMSSTVENDA: TFloatField
      FieldName = 'VLRICMSSTVENDA'
    end
    object zqry_VDVENDA_NFCEVLRBASEICMSSTVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTVENDA'
    end
    object zqry_VDVENDA_NFCEEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_VDVENDA_NFCEBLOQVENDA: TWideStringField
      FieldName = 'BLOQVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDA_NFCEVLRICMSSIMPLES: TFloatField
      FieldName = 'VLRICMSSIMPLES'
    end
    object zqry_VDVENDA_NFCEPERCICMSSIMPLES: TFloatField
      FieldName = 'PERCICMSSIMPLES'
    end
    object zqry_VDVENDA_NFCEVLRBASEPISVENDA: TFloatField
      FieldName = 'VLRBASEPISVENDA'
    end
    object zqry_VDVENDA_NFCEVLRBASECOFINSVENDA: TFloatField
      FieldName = 'VLRBASECOFINSVENDA'
    end
    object zqry_VDVENDA_NFCEVLRBASECOMIS: TFloatField
      FieldName = 'VLRBASECOMIS'
    end
    object zqry_VDVENDA_NFCECHAVENFEVENDA: TWideStringField
      FieldName = 'CHAVENFEVENDA'
      Size = 44
    end
    object zqry_VDVENDA_NFCECODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_VDVENDA_NFCECODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_VDVENDA_NFCENUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_VDVENDA_NFCEOBSREC: TWideStringField
      FieldName = 'OBSREC'
      Size = 250
    end
    object zqry_VDVENDA_NFCEINFCOMPL: TWideStringField
      FieldName = 'INFCOMPL'
      Size = 10000
    end
    object zqry_VDVENDA_NFCESITDOC: TWideStringField
      FieldName = 'SITDOC'
      Size = 2
    end
    object zqry_VDVENDA_NFCEOBSNFE: TWideStringField
      FieldName = 'OBSNFE'
      Size = 10000
    end
    object zqry_VDVENDA_NFCEDESCIPIVENDA: TWideStringField
      FieldName = 'DESCIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDA_NFCECODEMPOP: TIntegerField
      FieldName = 'CODEMPOP'
    end
    object zqry_VDVENDA_NFCECODFILIALOP: TSmallintField
      FieldName = 'CODFILIALOP'
    end
    object zqry_VDVENDA_NFCESEQOP: TSmallintField
      FieldName = 'SEQOP'
    end
    object zqry_VDVENDA_NFCECODOP: TIntegerField
      FieldName = 'CODOP'
    end
    object zqry_VDVENDA_NFCELOCALSERV: TWideStringField
      FieldName = 'LOCALSERV'
      Required = True
      Size = 1
    end
    object zqry_VDVENDA_NFCENROATUALIZADO: TWideStringField
      FieldName = 'NROATUALIZADO'
      Required = True
      Size = 1
    end
    object zqry_VDVENDA_NFCECNF: TLargeintField
      FieldName = 'CNF'
    end
    object zqry_VDVENDA_NFCESITCOMPLVENDA: TWideStringField
      FieldName = 'SITCOMPLVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDA_NFCEMOTIVOCANCVENDA: TWideStringField
      FieldName = 'MOTIVOCANCVENDA'
      Size = 250
    end
    object zqry_VDVENDA_NFCEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDVENDA_NFCEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDVENDA_NFCEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDVENDA_NFCEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDVENDA_NFCEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDVENDA_NFCEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDVENDA_NFCEVLRSIMPLES: TFloatField
      FieldName = 'VLRSIMPLES'
    end
    object zqry_VDVENDA_NFCETIPOENVIO: TWideStringField
      FieldName = 'TIPOENVIO'
      Size = 10
    end
    object zqry_VDVENDA_NFCECODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object zqry_VDVENDA_NFCECODVEIC: TIntegerField
      FieldName = 'CODVEIC'
    end
    object zqry_VDVENDA_NFCEOBSENTREGA: TWideStringField
      FieldName = 'OBSENTREGA'
      Size = 100
    end
    object zqry_VDVENDA_NFCENOMEMOT: TWideStringField
      FieldName = 'NOMEMOT'
      Size = 50
    end
    object zqry_VDVENDA_NFCEPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object zqry_VDVENDA_NFCEREQUERMONTAGEM: TWideStringField
      FieldName = 'REQUERMONTAGEM'
      Size = 1
    end
    object zqry_VDVENDA_NFCEPONTOREFERENCIA: TWideStringField
      FieldName = 'PONTOREFERENCIA'
      Size = 150
    end
    object zqry_VDVENDA_NFCECODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_VDVENDA_NFCECODEMPAT: TIntegerField
      FieldName = 'CODEMPAT'
    end
    object zqry_VDVENDA_NFCECODFILIALAT: TSmallintField
      FieldName = 'CODFILIALAT'
    end
    object zqry_VDVENDA_NFCEVDCOMERCIAL: TWideStringField
      FieldName = 'VDCOMERCIAL'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVDVENDEXTERNO: TWideStringField
      FieldName = 'VDVENDEXTERNO'
      Size = 1
    end
    object zqry_VDVENDA_NFCEVDCOMMERCE: TWideStringField
      FieldName = 'VDCOMMERCE'
      Size = 1
    end
    object zqry_VDVENDA_NFCEENTREGUE: TWideStringField
      FieldName = 'ENTREGUE'
      Size = 1
    end
    object zqry_VDVENDA_NFCEIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
    end
    object zqry_VDVENDA_NFCENOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
  end
  object zdts_VDVENDA_NFCE: TDataSource
    DataSet = zqry_VDVENDA_NFCE
    Left = 136
    Top = 24
  end
  object zqry_VDITVENDA_NFCE: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from vditvenda')
    Params = <>
    Left = 48
    Top = 72
    object zqry_VDITVENDA_NFCECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDITVENDA_NFCETIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDITVENDA_NFCECODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODITVENDA: TIntegerField
      FieldName = 'CODITVENDA'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODNAT: TWideStringField
      FieldName = 'CODNAT'
      Required = True
      Size = 4
    end
    object zqry_VDITVENDA_NFCECODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_VDITVENDA_NFCECODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_VDITVENDA_NFCEREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_VDITVENDA_NFCEOBSITVENDA: TWideStringField
      FieldName = 'OBSITVENDA'
      Size = 10000
    end
    object zqry_VDITVENDA_NFCEORIGFISC: TWideStringField
      FieldName = 'ORIGFISC'
      Size = 1
    end
    object zqry_VDITVENDA_NFCECODTRATTRIB: TWideStringField
      FieldName = 'CODTRATTRIB'
      Size = 2
    end
    object zqry_VDITVENDA_NFCETIPOFISC: TWideStringField
      FieldName = 'TIPOFISC'
      Size = 2
    end
    object zqry_VDITVENDA_NFCETIPOST: TWideStringField
      FieldName = 'TIPOST'
      Size = 2
    end
    object zqry_VDITVENDA_NFCECODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_VDITVENDA_NFCECODLOG: TIntegerField
      FieldName = 'CODLOG'
    end
    object zqry_VDITVENDA_NFCECODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_VDITVENDA_NFCEDIASPE: TSmallintField
      FieldName = 'DIASPE'
    end
    object zqry_VDITVENDA_NFCECODCONV: TIntegerField
      FieldName = 'CODCONV'
    end
    object zqry_VDITVENDA_NFCECODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
    object zqry_VDITVENDA_NFCECODITFISC: TIntegerField
      FieldName = 'CODITFISC'
    end
    object zqry_VDITVENDA_NFCECODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_VDITVENDA_NFCECODITCOMPRA: TIntegerField
      FieldName = 'CODITCOMPRA'
    end
    object zqry_VDITVENDA_NFCETIPOVENDAVR: TWideStringField
      FieldName = 'TIPOVENDAVR'
      Size = 1
    end
    object zqry_VDITVENDA_NFCECODVENDAVR: TIntegerField
      FieldName = 'CODVENDAVR'
    end
    object zqry_VDITVENDA_NFCECODITVENDAVR: TIntegerField
      FieldName = 'CODITVENDAVR'
    end
    object zqry_VDITVENDA_NFCENUMSERIETMP: TWideStringField
      FieldName = 'NUMSERIETMP'
      Size = 30
    end
    object zqry_VDITVENDA_NFCEEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_VDITVENDA_NFCEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDITVENDA_NFCEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDITVENDA_NFCEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDITVENDA_NFCEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDITVENDA_NFCEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDITVENDA_NFCEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDITVENDA_NFCETXTDESCITEM: TWideStringField
      FieldName = 'TXTDESCITEM'
      Size = 100
    end
    object zqry_VDITVENDA_NFCEDESCITEM: TWideStringField
      FieldName = 'DESCITEM'
      Size = 100
    end
    object zqry_VDITVENDA_NFCESOLICITANTE: TWideStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object zqry_VDITVENDA_NFCE_DESCPROD: TStringField
      FieldKind = fkLookup
      FieldName = '_DESCPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDITVENDA_NFCE_CODBARPROD: TStringField
      FieldKind = fkLookup
      FieldName = '_CODBARPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODBARPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDITVENDA_NFCE_CODUNID: TStringField
      FieldKind = fkLookup
      FieldName = '_CODUNID'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODUNID'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDITVENDA_NFCECODEMPNT: TIntegerField
      FieldName = 'CODEMPNT'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODFILIALNT: TSmallintField
      FieldName = 'CODFILIALNT'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODEMPPD: TIntegerField
      FieldName = 'CODEMPPD'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODFILIALPD: TSmallintField
      FieldName = 'CODFILIALPD'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODEMPLE: TIntegerField
      FieldName = 'CODEMPLE'
    end
    object zqry_VDITVENDA_NFCECODFILIALLE: TSmallintField
      FieldName = 'CODFILIALLE'
    end
    object zqry_VDITVENDA_NFCECODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_VDITVENDA_NFCEQTDITVENDA: TFloatField
      FieldName = 'QTDITVENDA'
      Required = True
    end
    object zqry_VDITVENDA_NFCECODEMPTT: TIntegerField
      FieldName = 'CODEMPTT'
    end
    object zqry_VDITVENDA_NFCECODFILIALTT: TIntegerField
      FieldName = 'CODFILIALTT'
    end
    object zqry_VDITVENDA_NFCECODEMPME: TIntegerField
      FieldName = 'CODEMPME'
    end
    object zqry_VDITVENDA_NFCECODFILIALME: TSmallintField
      FieldName = 'CODFILIALME'
    end
    object zqry_VDITVENDA_NFCECODEMPLG: TIntegerField
      FieldName = 'CODEMPLG'
    end
    object zqry_VDITVENDA_NFCECODFILIALLG: TSmallintField
      FieldName = 'CODFILIALLG'
    end
    object zqry_VDITVENDA_NFCECODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_VDITVENDA_NFCECODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_VDITVENDA_NFCECODEMPCV: TIntegerField
      FieldName = 'CODEMPCV'
    end
    object zqry_VDITVENDA_NFCECODFILIALCV: TSmallintField
      FieldName = 'CODFILIALCV'
    end
    object zqry_VDITVENDA_NFCECODEMPIF: TIntegerField
      FieldName = 'CODEMPIF'
    end
    object zqry_VDITVENDA_NFCECODFILIALIF: TIntegerField
      FieldName = 'CODFILIALIF'
    end
    object zqry_VDITVENDA_NFCECODEMPCP: TIntegerField
      FieldName = 'CODEMPCP'
    end
    object zqry_VDITVENDA_NFCECODFILIALCP: TSmallintField
      FieldName = 'CODFILIALCP'
    end
    object zqry_VDITVENDA_NFCECODEMPVR: TIntegerField
      FieldName = 'CODEMPVR'
    end
    object zqry_VDITVENDA_NFCECODFILIALVR: TSmallintField
      FieldName = 'CODFILIALVR'
    end
    object zqry_VDITVENDA_NFCECODEMPNS: TIntegerField
      FieldName = 'CODEMPNS'
    end
    object zqry_VDITVENDA_NFCECODFILIALNS: TSmallintField
      FieldName = 'CODFILIALNS'
    end
    object zqry_VDITVENDA_NFCEQTDITVENDACANC: TFloatField
      FieldName = 'QTDITVENDACANC'
    end
    object zqry_VDITVENDA_NFCEPRECOITVENDA: TFloatField
      FieldName = 'PRECOITVENDA'
      Required = True
    end
    object zqry_VDITVENDA_NFCEPERCDESCITVENDA: TFloatField
      FieldName = 'PERCDESCITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
    end
    object zqry_VDITVENDA_NFCEPERCICMSITVENDA: TFloatField
      FieldName = 'PERCICMSITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEICMSITVENDA: TFloatField
      FieldName = 'VLRBASEICMSITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRICMSITVENDA: TFloatField
      FieldName = 'VLRICMSITVENDA'
    end
    object zqry_VDITVENDA_NFCEPERCIPIITVENDA: TFloatField
      FieldName = 'PERCIPIITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEIPIITVENDA: TFloatField
      FieldName = 'VLRBASEIPIITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRIPIITVENDA: TFloatField
      FieldName = 'VLRIPIITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRLIQITVENDA: TFloatField
      FieldName = 'VLRLIQITVENDA'
    end
    object zqry_VDITVENDA_NFCEPERCCOMISITVENDA: TFloatField
      FieldName = 'PERCCOMISITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRCOMISITVENDA: TFloatField
      FieldName = 'VLRCOMISITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRADICITVENDA: TFloatField
      FieldName = 'VLRADICITVENDA'
    end
    object zqry_VDITVENDA_NFCEPERCISSITVENDA: TFloatField
      FieldName = 'PERCISSITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRISSITVENDA: TFloatField
      FieldName = 'VLRISSITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRFRETEITVENDA: TFloatField
      FieldName = 'VLRFRETEITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRPRODITVENDA: TFloatField
      FieldName = 'VLRPRODITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRISENTASITVENDA: TFloatField
      FieldName = 'VLRISENTASITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLROUTRASITVENDA: TFloatField
      FieldName = 'VLROUTRASITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEISSITVENDA: TFloatField
      FieldName = 'VLRBASEISSITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEICMSBRUTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSBRUTITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEICMSSTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRICMSSTITVENDA: TFloatField
      FieldName = 'VLRICMSSTITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASECOMISITVENDA: TFloatField
      FieldName = 'VLRBASECOMISITVENDA'
    end
    object zqry_VDITVENDA_NFCEMARGEMVLAGRITVENDA: TFloatField
      FieldName = 'MARGEMVLAGRITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRBASEICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTRETITVENDA'
    end
    object zqry_VDITVENDA_NFCEVLRICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRICMSSTRETITVENDA'
    end
    object zqry_VDITVENDA_NFCESTRDESCITVENDA: TWideStringField
      FieldName = 'STRDESCITVENDA'
      Size = 50
    end
    object zqry_VDITVENDA_NFCEQTDDEVITVENDA: TFloatField
      FieldName = 'QTDDEVITVENDA'
    end
    object zqry_VDITVENDA_NFCECANCITVENDA: TWideStringField
      FieldName = 'CANCITVENDA'
      Size = 1
    end
    object zqry_VDITVENDA_NFCECALCSTCM: TWideStringField
      FieldName = 'CALCSTCM'
      Size = 1
    end
  end
  object zdts_VDITVENDA_NFCE: TDataSource
    DataSet = zqry_VDITVENDA_NFCE
    Left = 136
    Top = 72
  end
  object zqry_EQPRODUTO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      
        'select codemp,codprod,descprod,codfisc,codbarprod,codunid,precob' +
        'aseprod from eqproduto')
    Params = <>
    Left = 48
    Top = 120
    object zqry_EQPRODUTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_EQPRODUTOCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object zqry_EQPRODUTODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Size = 100
    end
    object zqry_EQPRODUTOCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
    object zqry_EQPRODUTOCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_EQPRODUTOCODUNID: TWideStringField
      FieldName = 'CODUNID'
    end
    object zqry_EQPRODUTOPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
    end
  end
  object zdts_EQPRODUTO: TDataSource
    DataSet = zqry_EQPRODUTO
    Left = 136
    Top = 120
  end
  object zqry_SGMUNICIPIO: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from sgmunicipio')
    Params = <>
    Left = 47
    Top = 169
    object zqry_SGMUNICIPIOCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Required = True
      Size = 7
    end
    object zqry_SGMUNICIPIOSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Required = True
      Size = 2
    end
    object zqry_SGMUNICIPIOCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
      Required = True
    end
    object zqry_SGMUNICIPIONOMEMUNIC: TWideStringField
      FieldName = 'NOMEMUNIC'
      Required = True
      Size = 80
    end
    object zqry_SGMUNICIPIODDDMUNIC: TWideStringField
      FieldName = 'DDDMUNIC'
      Required = True
      Size = 4
    end
    object zqry_SGMUNICIPIODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGMUNICIPIOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGMUNICIPIOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGMUNICIPIODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGMUNICIPIOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGMUNICIPIOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGMUNICIPIOCODUF: TWideStringField
      FieldName = 'CODUF'
      Size = 2
    end
  end
  object zdts_SGMUNICIPIO: TDataSource
    DataSet = zqry_SGMUNICIPIO
    Left = 135
    Top = 169
  end
  object zqry_FNITRECEBER: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from fnitreceber')
    Params = <>
    Left = 43
    Top = 265
    object zqry_FNITRECEBERCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNITRECEBERCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNITRECEBERCODREC: TIntegerField
      FieldName = 'CODREC'
      Required = True
    end
    object zqry_FNITRECEBERNPARCITREC: TIntegerField
      FieldName = 'NPARCITREC'
      Required = True
    end
    object zqry_FNITRECEBERVLRITREC: TFloatField
      FieldName = 'VLRITREC'
      Required = True
    end
    object zqry_FNITRECEBERVLRDESCITREC: TFloatField
      FieldName = 'VLRDESCITREC'
    end
    object zqry_FNITRECEBERVLRMULTAITREC: TFloatField
      FieldName = 'VLRMULTAITREC'
    end
    object zqry_FNITRECEBERVLRJUROSITREC: TFloatField
      FieldName = 'VLRJUROSITREC'
    end
    object zqry_FNITRECEBERVLRDEVITREC: TFloatField
      FieldName = 'VLRDEVITREC'
      Required = True
    end
    object zqry_FNITRECEBERVLRPARCITREC: TFloatField
      FieldName = 'VLRPARCITREC'
    end
    object zqry_FNITRECEBERVLRPAGOITREC: TFloatField
      FieldName = 'VLRPAGOITREC'
    end
    object zqry_FNITRECEBERVLRAPAGITREC: TFloatField
      FieldName = 'VLRAPAGITREC'
    end
    object zqry_FNITRECEBERVLRCOMIITREC: TFloatField
      FieldName = 'VLRCOMIITREC'
    end
    object zqry_FNITRECEBERVLRCANCITREC: TFloatField
      FieldName = 'VLRCANCITREC'
    end
    object zqry_FNITRECEBERVLRBASECOMIS: TFloatField
      FieldName = 'VLRBASECOMIS'
    end
    object zqry_FNITRECEBERDESCPONT: TWideStringField
      FieldName = 'DESCPONT'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERDTITREC: TDateField
      FieldName = 'DTITREC'
      Required = True
    end
    object zqry_FNITRECEBERDTCOMPITREC: TDateField
      FieldName = 'DTCOMPITREC'
      Required = True
    end
    object zqry_FNITRECEBERDTVENCITREC: TDateField
      FieldName = 'DTVENCITREC'
      Required = True
    end
    object zqry_FNITRECEBERDTPREVITREC: TDateField
      FieldName = 'DTPREVITREC'
    end
    object zqry_FNITRECEBERDTPAGOITREC: TDateField
      FieldName = 'DTPAGOITREC'
    end
    object zqry_FNITRECEBERDTLIQITREC: TDateField
      FieldName = 'DTLIQITREC'
    end
    object zqry_FNITRECEBERSTATUSITREC: TWideStringField
      FieldName = 'STATUSITREC'
      Required = True
      Size = 2
    end
    object zqry_FNITRECEBERCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_FNITRECEBERCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_FNITRECEBERCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_FNITRECEBEROBSITREC: TWideStringField
      FieldName = 'OBSITREC'
      Size = 250
    end
    object zqry_FNITRECEBERCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_FNITRECEBERCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FNITRECEBERNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNITRECEBERCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_FNITRECEBERCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_FNITRECEBERCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_FNITRECEBERCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_FNITRECEBERCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_FNITRECEBERCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FNITRECEBERCODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_FNITRECEBERCODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_FNITRECEBERCODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_FNITRECEBERDOCLANCAITREC: TWideStringField
      FieldName = 'DOCLANCAITREC'
      Size = 15
    end
    object zqry_FNITRECEBERFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNITRECEBERCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNITRECEBERCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNITRECEBERANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_FNITRECEBERCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNITRECEBERIMPRECIBOITREC: TWideStringField
      FieldName = 'IMPRECIBOITREC'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERRECIBOITREC: TIntegerField
      FieldName = 'RECIBOITREC'
    end
    object zqry_FNITRECEBERALTUSUITREC: TWideStringField
      FieldName = 'ALTUSUITREC'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERPDVITREC: TWideStringField
      FieldName = 'PDVITREC'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERRECEMCOB: TWideStringField
      FieldName = 'RECEMCOB'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERDTINIEMCOB: TDateField
      FieldName = 'DTINIEMCOB'
    end
    object zqry_FNITRECEBERDTFIMEMCOB: TDateField
      FieldName = 'DTFIMEMCOB'
    end
    object zqry_FNITRECEBERSEQNOSSONUMERO: TIntegerField
      FieldName = 'SEQNOSSONUMERO'
    end
    object zqry_FNITRECEBERNOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
    end
    object zqry_FNITRECEBEREMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNITRECEBERCODEMPSN: TIntegerField
      FieldName = 'CODEMPSN'
    end
    object zqry_FNITRECEBERCODFILIALSN: TSmallintField
      FieldName = 'CODFILIALSN'
    end
    object zqry_FNITRECEBERCODSINAL: TSmallintField
      FieldName = 'CODSINAL'
    end
    object zqry_FNITRECEBERMULTIBAIXA: TWideStringField
      FieldName = 'MULTIBAIXA'
      Size = 1
    end
    object zqry_FNITRECEBERCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_FNITRECEBERCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_FNITRECEBERCODCONTR: TIntegerField
      FieldName = 'CODCONTR'
    end
    object zqry_FNITRECEBERCODITCONTR: TSmallintField
      FieldName = 'CODITCONTR'
    end
    object zqry_FNITRECEBERDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNITRECEBERHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNITRECEBERIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNITRECEBERDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNITRECEBERHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNITRECEBERIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNITRECEBERCODEMPEM: TIntegerField
      FieldName = 'CODEMPEM'
    end
    object zqry_FNITRECEBERCODFILIALEM: TSmallintField
      FieldName = 'CODFILIALEM'
    end
    object zqry_FNITRECEBERMATEMPR: TIntegerField
      FieldName = 'MATEMPR'
    end
    object zqry_FNITRECEBERDTPROCES: TDateField
      FieldName = 'DTPROCES'
    end
    object zqry_FNITRECEBEROCOR_RET: TWideStringField
      FieldName = 'OCOR_RET'
      Size = 50
    end
  end
  object zdts_FNITRECEBER: TDataSource
    DataSet = zqry_FNITRECEBER
    Left = 139
    Top = 265
  end
  object zqry_CONTADOR: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 323
    Top = 121
  end
  object zdts_CONTADOR: TDataSource
    DataSet = zqry_CONTADOR
    Left = 243
    Top = 121
  end
  object zqry_FNRECEBER: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from fnreceber')
    Params = <>
    Left = 243
    Top = 73
    object zqry_FNRECEBERCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNRECEBERCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNRECEBERCODREC: TIntegerField
      FieldName = 'CODREC'
      Required = True
    end
    object zqry_FNRECEBERCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_FNRECEBERCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_FNRECEBERCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_FNRECEBERCODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_FNRECEBERCODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_FNRECEBERCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_FNRECEBERCODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
      Required = True
    end
    object zqry_FNRECEBERCODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
      Required = True
    end
    object zqry_FNRECEBERCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_FNRECEBERCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_FNRECEBERCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_FNRECEBERCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_FNRECEBERCODEMPVA: TIntegerField
      FieldName = 'CODEMPVA'
    end
    object zqry_FNRECEBERCODFILIALVA: TSmallintField
      FieldName = 'CODFILIALVA'
    end
    object zqry_FNRECEBERTIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Size = 1
    end
    object zqry_FNRECEBERCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_FNRECEBERCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_FNRECEBERCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_FNRECEBERCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FNRECEBERCODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_FNRECEBERCODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_FNRECEBERCODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_FNRECEBERVLRREC: TFloatField
      FieldName = 'VLRREC'
      Required = True
    end
    object zqry_FNRECEBERVLRDESCREC: TFloatField
      FieldName = 'VLRDESCREC'
    end
    object zqry_FNRECEBERVLRMULTAREC: TFloatField
      FieldName = 'VLRMULTAREC'
    end
    object zqry_FNRECEBERVLRJUROSREC: TFloatField
      FieldName = 'VLRJUROSREC'
    end
    object zqry_FNRECEBERVLRDEVREC: TFloatField
      FieldName = 'VLRDEVREC'
      Required = True
    end
    object zqry_FNRECEBERVLRPARCREC: TFloatField
      FieldName = 'VLRPARCREC'
      Required = True
    end
    object zqry_FNRECEBERVLRPAGOREC: TFloatField
      FieldName = 'VLRPAGOREC'
    end
    object zqry_FNRECEBERVLRAPAGREC: TFloatField
      FieldName = 'VLRAPAGREC'
    end
    object zqry_FNRECEBERVLRBASECOMIS: TFloatField
      FieldName = 'VLRBASECOMIS'
    end
    object zqry_FNRECEBERVLRRETENSAOISS: TFloatField
      FieldName = 'VLRRETENSAOISS'
    end
    object zqry_FNRECEBERDTCOMPREC: TDateField
      FieldName = 'DTCOMPREC'
      Required = True
    end
    object zqry_FNRECEBERDATAREC: TDateField
      FieldName = 'DATAREC'
      Required = True
    end
    object zqry_FNRECEBERSTATUSREC: TWideStringField
      FieldName = 'STATUSREC'
      Required = True
      Size = 2
    end
    object zqry_FNRECEBERVLRCOMIREC: TFloatField
      FieldName = 'VLRCOMIREC'
    end
    object zqry_FNRECEBERDTQUITREC: TDateField
      FieldName = 'DTQUITREC'
    end
    object zqry_FNRECEBERDOCREC: TIntegerField
      FieldName = 'DOCREC'
      Required = True
    end
    object zqry_FNRECEBERNROPARCREC: TIntegerField
      FieldName = 'NROPARCREC'
    end
    object zqry_FNRECEBEROBSREC: TWideStringField
      FieldName = 'OBSREC'
      Size = 250
    end
    object zqry_FNRECEBERFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNRECEBERALTUSUREC: TWideStringField
      FieldName = 'ALTUSUREC'
      Size = 1
    end
    object zqry_FNRECEBERCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_FNRECEBERCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FNRECEBERNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNRECEBERCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_FNRECEBERCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_FNRECEBERCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_FNRECEBERCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNRECEBERCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNRECEBERANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_FNRECEBERCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNRECEBERCODEMPRR: TIntegerField
      FieldName = 'CODEMPRR'
    end
    object zqry_FNRECEBERCODFILIALRR: TSmallintField
      FieldName = 'CODFILIALRR'
    end
    object zqry_FNRECEBERCODRENEGREC: TIntegerField
      FieldName = 'CODRENEGREC'
    end
    object zqry_FNRECEBEREMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNRECEBERDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNRECEBERHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNRECEBERIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNRECEBERDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNRECEBERHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNRECEBERIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNRECEBERNUMCONTROLE: TIntegerField
      FieldName = 'NUMCONTROLE'
    end
    object zqry_FNRECEBERNUMAUTORIZACAO: TIntegerField
      FieldName = 'NUMAUTORIZACAO'
    end
    object zqry_FNRECEBERBANDEIRA: TWideStringField
      FieldName = 'BANDEIRA'
      Size = 10
    end
    object zqry_FNRECEBERCODTERMINAL: TIntegerField
      FieldName = 'CODTERMINAL'
    end
  end
  object zdts_FNRECEBER: TDataSource
    DataSet = zqry_FNRECEBER
    Left = 323
    Top = 73
  end
  object cds_MULTIPAGTO: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 243
    Top = 25
    object cds_MULTIPAGTOSEQMULTIPAGTO: TIntegerField
      FieldName = 'SEQMULTIPAGTO'
    end
    object cds_MULTIPAGTOVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object cds_MULTIPAGTOTROCO: TCurrencyField
      FieldName = 'TROCO'
    end
    object cds_MULTIPAGTOCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object cds_MULTIPAGTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object cds_MULTIPAGTOCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
    end
    object cds_MULTIPAGTOCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
  end
  object dts_MULTIPAGTO: TDataSource
    DataSet = cds_MULTIPAGTO
    Left = 323
    Top = 25
  end
  object zqry_TIPOCOB: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from fntipocob order by desctipocob')
    Params = <>
    Left = 43
    Top = 217
    object zqry_TIPOCOBCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_TIPOCOBCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_TIPOCOBCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
      Required = True
    end
    object zqry_TIPOCOBDESCTIPOCOB: TWideStringField
      FieldName = 'DESCTIPOCOB'
      Required = True
      Size = 40
    end
    object zqry_TIPOCOBTIPOFEBRABAN: TWideStringField
      FieldName = 'TIPOFEBRABAN'
      Required = True
      Size = 2
    end
    object zqry_TIPOCOBTIPOSPED: TWideStringField
      FieldName = 'TIPOSPED'
      Size = 2
    end
    object zqry_TIPOCOBDUPLCOB: TWideStringField
      FieldName = 'DUPLCOB'
      Size = 8
    end
    object zqry_TIPOCOBOBRIGCARTCOB: TWideStringField
      FieldName = 'OBRIGCARTCOB'
      Required = True
      Size = 1
    end
    object zqry_TIPOCOBCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_TIPOCOBCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_TIPOCOBNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_TIPOCOBSEQTALAO: TSmallintField
      FieldName = 'SEQTALAO'
    end
    object zqry_TIPOCOBNRODIASCOMP: TSmallintField
      FieldName = 'NRODIASCOMP'
    end
    object zqry_TIPOCOBDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_TIPOCOBHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_TIPOCOBIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_TIPOCOBDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_TIPOCOBHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_TIPOCOBIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_TIPOCOBTIPONFE: TIntegerField
      FieldName = 'TIPONFE'
    end
  end
  object zdts_TIPOCOB: TDataSource
    DataSet = zqry_TIPOCOB
    Left = 139
    Top = 217
  end
  object zqry_FECHAVENDA: TZQuery
    Connection = dm_DADOS.Conecta
    SQL.Strings = (
      'select * from vdvenda')
    Params = <>
    Left = 43
    Top = 361
    object zqry_FECHAVENDACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FECHAVENDACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FECHAVENDATIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_FECHAVENDACODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_FECHAVENDASUBTIPOVENDA: TWideStringField
      FieldName = 'SUBTIPOVENDA'
      Required = True
      Size = 2
    end
    object zqry_FECHAVENDACODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_FECHAVENDACODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_FECHAVENDACODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_FECHAVENDACODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
      Required = True
    end
    object zqry_FECHAVENDACODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
      Required = True
    end
    object zqry_FECHAVENDACODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_FECHAVENDACODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_FECHAVENDACODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_FECHAVENDACODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_FECHAVENDACODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_FECHAVENDACODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_FECHAVENDASERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_FECHAVENDACODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_FECHAVENDACODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_FECHAVENDACODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_FECHAVENDACODEMPCX: TIntegerField
      FieldName = 'CODEMPCX'
    end
    object zqry_FECHAVENDACODFILIALCX: TSmallintField
      FieldName = 'CODFILIALCX'
    end
    object zqry_FECHAVENDACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
    end
    object zqry_FECHAVENDADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
      Required = True
    end
    object zqry_FECHAVENDADTSAIDAVENDA: TDateField
      FieldName = 'DTSAIDAVENDA'
      Required = True
    end
    object zqry_FECHAVENDADTEMITVENDA: TDateField
      FieldName = 'DTEMITVENDA'
      Required = True
    end
    object zqry_FECHAVENDADTCOMPVENDA: TDateField
      FieldName = 'DTCOMPVENDA'
      Required = True
    end
    object zqry_FECHAVENDACODEMPRM: TIntegerField
      FieldName = 'CODEMPRM'
    end
    object zqry_FECHAVENDACODFILIALRM: TSmallintField
      FieldName = 'CODFILIALRM'
    end
    object zqry_FECHAVENDATICKET: TIntegerField
      FieldName = 'TICKET'
    end
    object zqry_FECHAVENDAVLRPRODVENDA: TFloatField
      FieldName = 'VLRPRODVENDA'
    end
    object zqry_FECHAVENDAPERCDESCVENDA: TFloatField
      FieldName = 'PERCDESCVENDA'
    end
    object zqry_FECHAVENDAVLRDESCVENDA: TFloatField
      FieldName = 'VLRDESCVENDA'
    end
    object zqry_FECHAVENDAVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
    end
    object zqry_FECHAVENDAVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
    end
    object zqry_FECHAVENDAVLRBASEICMSVENDA: TFloatField
      FieldName = 'VLRBASEICMSVENDA'
    end
    object zqry_FECHAVENDAVLRICMSVENDA: TFloatField
      FieldName = 'VLRICMSVENDA'
    end
    object zqry_FECHAVENDACALCICMSVENDA: TWideStringField
      FieldName = 'CALCICMSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPICMSVENDA: TWideStringField
      FieldName = 'IMPICMSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAVLRISENTASVENDA: TFloatField
      FieldName = 'VLRISENTASVENDA'
    end
    object zqry_FECHAVENDAVLROUTRASVENDA: TFloatField
      FieldName = 'VLROUTRASVENDA'
    end
    object zqry_FECHAVENDAVLRBASEIPIVENDA: TFloatField
      FieldName = 'VLRBASEIPIVENDA'
    end
    object zqry_FECHAVENDAVLRLIQVENDA: TFloatField
      FieldName = 'VLRLIQVENDA'
    end
    object zqry_FECHAVENDAPERCCOMISVENDA: TFloatField
      FieldName = 'PERCCOMISVENDA'
    end
    object zqry_FECHAVENDAVLRCOMISVENDA: TFloatField
      FieldName = 'VLRCOMISVENDA'
    end
    object zqry_FECHAVENDASTATUSVENDA: TWideStringField
      FieldName = 'STATUSVENDA'
      Required = True
      Size = 2
    end
    object zqry_FECHAVENDAVLRFRETEVENDA: TFloatField
      FieldName = 'VLRFRETEVENDA'
    end
    object zqry_FECHAVENDAVLRADICVENDA: TFloatField
      FieldName = 'VLRADICVENDA'
    end
    object zqry_FECHAVENDAVLRIPIVENDA: TFloatField
      FieldName = 'VLRIPIVENDA'
    end
    object zqry_FECHAVENDACALCIPIVENDA: TWideStringField
      FieldName = 'CALCIPIVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPIPIVENDA: TWideStringField
      FieldName = 'IMPIPIVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAOBSVENDA: TWideStringField
      FieldName = 'OBSVENDA'
      Size = 10000
    end
    object zqry_FECHAVENDACODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_FECHAVENDACODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_FECHAVENDACODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_FECHAVENDACODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_FECHAVENDACODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_FECHAVENDACODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FECHAVENDAVLRBASEISSVENDA: TFloatField
      FieldName = 'VLRBASEISSVENDA'
    end
    object zqry_FECHAVENDAVLRISSVENDA: TFloatField
      FieldName = 'VLRISSVENDA'
    end
    object zqry_FECHAVENDACALCISSVENDA: TWideStringField
      FieldName = 'CALCISSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPIISSVENDA: TWideStringField
      FieldName = 'IMPIISSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPNOTAVENDA: TWideStringField
      FieldName = 'IMPNOTAVENDA'
      Size = 10000
    end
    object zqry_FECHAVENDAFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FECHAVENDACODCLASCOMIS: TWideStringField
      FieldName = 'CODCLASCOMIS'
      Size = 1
    end
    object zqry_FECHAVENDAVLRPISVENDA: TFloatField
      FieldName = 'VLRPISVENDA'
    end
    object zqry_FECHAVENDACALCPISVENDA: TWideStringField
      FieldName = 'CALCPISVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPPISVENDA: TWideStringField
      FieldName = 'IMPPISVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAVLRCOFINSVENDA: TFloatField
      FieldName = 'VLRCOFINSVENDA'
    end
    object zqry_FECHAVENDACALCCOFINSVENDA: TWideStringField
      FieldName = 'CALCCOFINSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPCOFINSVENDA: TWideStringField
      FieldName = 'IMPCOFINSVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAVLRIRVENDA: TFloatField
      FieldName = 'VLRIRVENDA'
    end
    object zqry_FECHAVENDACALCIRVENDA: TWideStringField
      FieldName = 'CALCIRVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPIRVENDA: TWideStringField
      FieldName = 'IMPIRVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAVLRCSOCIALVENDA: TFloatField
      FieldName = 'VLRCSOCIALVENDA'
    end
    object zqry_FECHAVENDACALCCSOCIALVENDA: TWideStringField
      FieldName = 'CALCCSOCIALVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAIMPCSOCIALVENDA: TWideStringField
      FieldName = 'IMPCSOCIALVENDA'
      Size = 1
    end
    object zqry_FECHAVENDAPERCMCOMISVENDA: TFloatField
      FieldName = 'PERCMCOMISVENDA'
    end
    object zqry_FECHAVENDACODEMPCM: TIntegerField
      FieldName = 'CODEMPCM'
    end
    object zqry_FECHAVENDACODFILIALCM: TIntegerField
      FieldName = 'CODFILIALCM'
    end
    object zqry_FECHAVENDACODCLCOMIS: TIntegerField
      FieldName = 'CODCLCOMIS'
    end
    object zqry_FECHAVENDACODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_FECHAVENDACODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_FECHAVENDACODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_FECHAVENDAPEDCLIVENDA: TWideStringField
      FieldName = 'PEDCLIVENDA'
      Size = 10
    end
    object zqry_FECHAVENDAVLRICMSSTVENDA: TFloatField
      FieldName = 'VLRICMSSTVENDA'
    end
    object zqry_FECHAVENDAVLRBASEICMSSTVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTVENDA'
    end
    object zqry_FECHAVENDAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_FECHAVENDABLOQVENDA: TWideStringField
      FieldName = 'BLOQVENDA'
      Required = True
      Size = 1
    end
    object zqry_FECHAVENDAVLRICMSSIMPLES: TFloatField
      FieldName = 'VLRICMSSIMPLES'
    end
    object zqry_FECHAVENDAPERCICMSSIMPLES: TFloatField
      FieldName = 'PERCICMSSIMPLES'
    end
    object zqry_FECHAVENDAVLRBASEPISVENDA: TFloatField
      FieldName = 'VLRBASEPISVENDA'
    end
    object zqry_FECHAVENDAVLRBASECOFINSVENDA: TFloatField
      FieldName = 'VLRBASECOFINSVENDA'
    end
    object zqry_FECHAVENDAVLRBASECOMIS: TFloatField
      FieldName = 'VLRBASECOMIS'
    end
    object zqry_FECHAVENDACHAVENFEVENDA: TWideStringField
      FieldName = 'CHAVENFEVENDA'
      Size = 44
    end
    object zqry_FECHAVENDACODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_FECHAVENDACODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FECHAVENDANUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FECHAVENDAOBSREC: TWideStringField
      FieldName = 'OBSREC'
      Size = 250
    end
    object zqry_FECHAVENDAINFCOMPL: TWideStringField
      FieldName = 'INFCOMPL'
      Size = 10000
    end
    object zqry_FECHAVENDASITDOC: TWideStringField
      FieldName = 'SITDOC'
      Size = 2
    end
    object zqry_FECHAVENDAOBSNFE: TWideStringField
      FieldName = 'OBSNFE'
      Size = 10000
    end
    object zqry_FECHAVENDADESCIPIVENDA: TWideStringField
      FieldName = 'DESCIPIVENDA'
      Size = 1
    end
    object zqry_FECHAVENDACODEMPOP: TIntegerField
      FieldName = 'CODEMPOP'
    end
    object zqry_FECHAVENDACODFILIALOP: TSmallintField
      FieldName = 'CODFILIALOP'
    end
    object zqry_FECHAVENDASEQOP: TSmallintField
      FieldName = 'SEQOP'
    end
    object zqry_FECHAVENDACODOP: TIntegerField
      FieldName = 'CODOP'
    end
    object zqry_FECHAVENDALOCALSERV: TWideStringField
      FieldName = 'LOCALSERV'
      Required = True
      Size = 1
    end
    object zqry_FECHAVENDANROATUALIZADO: TWideStringField
      FieldName = 'NROATUALIZADO'
      Required = True
      Size = 1
    end
    object zqry_FECHAVENDACNF: TLargeintField
      FieldName = 'CNF'
    end
    object zqry_FECHAVENDASITCOMPLVENDA: TWideStringField
      FieldName = 'SITCOMPLVENDA'
      Required = True
      Size = 1
    end
    object zqry_FECHAVENDAMOTIVOCANCVENDA: TWideStringField
      FieldName = 'MOTIVOCANCVENDA'
      Size = 250
    end
    object zqry_FECHAVENDADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FECHAVENDAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FECHAVENDAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FECHAVENDADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FECHAVENDAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FECHAVENDAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FECHAVENDAVLRSIMPLES: TFloatField
      FieldName = 'VLRSIMPLES'
    end
    object zqry_FECHAVENDATIPOENVIO: TWideStringField
      FieldName = 'TIPOENVIO'
      Size = 10
    end
    object zqry_FECHAVENDACODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object zqry_FECHAVENDACODVEIC: TIntegerField
      FieldName = 'CODVEIC'
    end
    object zqry_FECHAVENDAOBSENTREGA: TWideStringField
      FieldName = 'OBSENTREGA'
      Size = 100
    end
    object zqry_FECHAVENDANOMEMOT: TWideStringField
      FieldName = 'NOMEMOT'
      Size = 50
    end
    object zqry_FECHAVENDAPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object zqry_FECHAVENDAREQUERMONTAGEM: TWideStringField
      FieldName = 'REQUERMONTAGEM'
      Size = 1
    end
    object zqry_FECHAVENDAPONTOREFERENCIA: TWideStringField
      FieldName = 'PONTOREFERENCIA'
      Size = 150
    end
    object zqry_FECHAVENDACODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_FECHAVENDACODEMPAT: TIntegerField
      FieldName = 'CODEMPAT'
    end
    object zqry_FECHAVENDACODFILIALAT: TSmallintField
      FieldName = 'CODFILIALAT'
    end
    object zqry_FECHAVENDAVDCOMERCIAL: TWideStringField
      FieldName = 'VDCOMERCIAL'
      Size = 1
    end
    object zqry_FECHAVENDAVDVENDEXTERNO: TWideStringField
      FieldName = 'VDVENDEXTERNO'
      Size = 1
    end
    object zqry_FECHAVENDAVDCOMMERCE: TWideStringField
      FieldName = 'VDCOMMERCE'
      Size = 1
    end
    object zqry_FECHAVENDAENTREGUE: TWideStringField
      FieldName = 'ENTREGUE'
      Size = 1
    end
    object zqry_FECHAVENDAIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
    end
    object zqry_FECHAVENDANOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
  end
  object zdts_FECHAVENDA: TDataSource
    DataSet = zqry_FECHAVENDA
    Left = 139
    Top = 361
  end
  object zqry_ATUALIZA: TZQuery
    Connection = dm_DADOS.Conecta
    Params = <>
    Left = 43
    Top = 313
  end
  object zdts_ATUALIZA: TDataSource
    DataSet = zqry_ATUALIZA
    Left = 139
    Top = 313
  end
end
