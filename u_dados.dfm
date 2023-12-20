object dm_DADOS: Tdm_DADOS
  OnCreate = datamodule
  Height = 2626
  Width = 1126
  object ConectaWeb: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'nonoelemento.com.br'
    Port = 3306
    Database = 'nonoelem_alles'
    User = 'nonoelem_israel'
    Password = 'px4b7470#ISA'
    Protocol = 'mysql-5'
    Left = 40
    Top = 16
  end
  object zqry_SGLICENCAWEB: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sglicenca')
    Params = <>
    Left = 40
    Top = 64
    object zqry_SGLICENCAWEBcodlicenca: TWideStringField
      FieldName = 'codlicenca'
      Required = True
      Size = 12
    end
    object zqry_SGLICENCAWEBcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_SGLICENCAWEBcodrev: TIntegerField
      FieldName = 'codrev'
      Required = True
    end
    object zqry_SGLICENCAWEBcodplano: TIntegerField
      FieldName = 'codplano'
      Required = True
    end
    object zqry_SGLICENCAWEBmesbase: TWideStringField
      FieldName = 'mesbase'
      Required = True
      Size = 3
    end
    object zqry_SGLICENCAWEBvlracordado: TFloatField
      FieldName = 'vlracordado'
      Required = True
    end
    object zqry_SGLICENCAWEBativo: TWideStringField
      FieldName = 'ativo'
      Required = True
      Size = 1
    end
    object zqry_SGLICENCAWEBrevogado: TWideStringField
      FieldName = 'revogado'
      Required = True
      Size = 1
    end
    object zqry_SGLICENCAWEBdemo: TWideStringField
      FieldName = 'demo'
      Required = True
      Size = 1
    end
    object zqry_SGLICENCAWEBnativo: TWideStringField
      FieldName = 'nativo'
      Required = True
      Size = 1
    end
    object zqry_SGLICENCAWEBnumeroserie: TWideStringField
      FieldName = 'numeroserie'
      Required = True
      Size = 10
    end
    object zqry_SGLICENCAWEBregistrado: TWideStringField
      FieldName = 'registrado'
      Required = True
      Size = 1
    end
  end
  object zdts_SGLICENCAWEB: TDataSource
    DataSet = zqry_SGLICENCAWEB
    Left = 120
    Top = 64
  end
  object Conecta: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 3050
    Database = ''
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 380
    Top = 8
  end
  object zqry_SGATUALIZAWEB: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sgatualizacao')
    Params = <>
    Left = 40
    Top = 112
    object zqry_SGATUALIZAWEBcodatualizacao: TIntegerField
      FieldName = 'codatualizacao'
      Required = True
    end
    object zqry_SGATUALIZAWEBdatalancamento: TDateTimeField
      FieldName = 'datalancamento'
      Required = True
    end
    object zqry_SGATUALIZAWEBmodulo: TWideStringField
      FieldName = 'modulo'
      Required = True
    end
    object zqry_SGATUALIZAWEBlink: TWideStringField
      FieldName = 'link'
      Required = True
      Size = 10
    end
    object zqry_SGATUALIZAWEBversao: TWideStringField
      FieldName = 'versao'
      Required = True
      Size = 10
    end
    object zqry_SGATUALIZAWEBcomentario: TWideMemoField
      FieldName = 'comentario'
      Required = True
      BlobType = ftWideMemo
    end
    object zqry_SGATUALIZAWEBscript: TWideStringField
      FieldName = 'script'
      Required = True
      Size = 1
    end
    object zqry_SGATUALIZAWEBatual: TWideStringField
      FieldName = 'atual'
      Required = True
      Size = 1
    end
    object zqry_SGATUALIZAWEBpartner: TIntegerField
      FieldName = 'partner'
      Required = True
    end
  end
  object zdts_SGATUALIZAWEB: TDataSource
    DataSet = zqry_SGATUALIZAWEB
    Left = 120
    Top = 112
  end
  object zqry_SGCONEXAO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select codemp,codfilial, user,current_connection from sgconexao')
    Params = <>
    Left = 376
    Top = 152
    object zqry_SGCONEXAOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGCONEXAOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGCONEXAOUSER: TWideStringField
      FieldName = 'USER'
      ReadOnly = True
      Size = 31
    end
    object zqry_SGCONEXAOCURRENT_CONNECTION: TIntegerField
      FieldName = 'CURRENT_CONNECTION'
      ReadOnly = True
    end
  end
  object zdts_SGCONEXAO: TDataSource
    DataSet = zqry_SGCONEXAO
    Left = 472
    Top = 152
  end
  object zqry_SGINICONSP: TZQuery
    Connection = Conecta
    Params = <>
    Left = 376
    Top = 200
  end
  object zqry_SGREVENDA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgrevenda')
    Params = <>
    Left = 376
    Top = 296
    object zqry_SGREVENDACODREV: TIntegerField
      FieldName = 'CODREV'
      Required = True
    end
    object zqry_SGREVENDARAZSOCIAL: TWideStringField
      FieldName = 'RAZSOCIAL'
      Size = 50
    end
    object zqry_SGREVENDANOMEREV: TWideStringField
      FieldName = 'NOMEREV'
      Size = 50
    end
    object zqry_SGREVENDACNPJREV: TWideStringField
      FieldName = 'CNPJREV'
      Size = 18
    end
    object zqry_SGREVENDACPFREV: TWideStringField
      FieldName = 'CPFREV'
      Size = 14
    end
    object zqry_SGREVENDAINSCREV: TWideStringField
      FieldName = 'INSCREV'
    end
    object zqry_SGREVENDAENDREV: TWideStringField
      FieldName = 'ENDREV'
      Size = 50
    end
    object zqry_SGREVENDANUMREV: TIntegerField
      FieldName = 'NUMREV'
    end
    object zqry_SGREVENDACOMPLREV: TWideStringField
      FieldName = 'COMPLREV'
    end
    object zqry_SGREVENDABAIRREV: TWideStringField
      FieldName = 'BAIRREV'
      Size = 30
    end
    object zqry_SGREVENDACEPREV: TWideStringField
      FieldName = 'CEPREV'
      Size = 8
    end
    object zqry_SGREVENDACIDREV: TWideStringField
      FieldName = 'CIDREV'
      Size = 30
    end
    object zqry_SGREVENDAUFREV: TWideStringField
      FieldName = 'UFREV'
      Size = 2
    end
    object zqry_SGREVENDADDDREV: TWideStringField
      FieldName = 'DDDREV'
      Size = 4
    end
    object zqry_SGREVENDAFONEREV: TWideStringField
      FieldName = 'FONEREV'
      Size = 12
    end
    object zqry_SGREVENDAOUTROFONEREV: TWideStringField
      FieldName = 'OUTROFONEREV'
      Size = 14
    end
    object zqry_SGREVENDAEMAILREV: TWideStringField
      FieldName = 'EMAILREV'
      Size = 50
    end
    object zqry_SGREVENDAWWWREV: TWideStringField
      FieldName = 'WWWREV'
      Size = 50
    end
    object zqry_SGREVENDACODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_SGREVENDACODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_SGREVENDALOGOREV: TWideStringField
      FieldName = 'LOGOREV'
      Size = 255
    end
    object zqry_SGREVENDADTINS: TDateField
      FieldName = 'DTINS'
    end
    object zqry_SGREVENDAHINS: TTimeField
      FieldName = 'HINS'
    end
    object zqry_SGREVENDAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Size = 8
    end
    object zqry_SGREVENDADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGREVENDAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGREVENDAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGREVENDAATIVO: TWideStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object zqry_SGREVENDADIABASE: TWideStringField
      FieldName = 'DIABASE'
      Size = 2
    end
    object zqry_SGREVENDAVLRMENSAL: TSingleField
      FieldName = 'VLRMENSAL'
    end
  end
  object zdts_SGREVENDA: TDataSource
    DataSet = zqry_SGREVENDA
    Left = 472
    Top = 296
  end
  object zqry_CPCOMPRA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from cpcompra')
    Params = <>
    Left = 376
    Top = 392
    object zqry_CPCOMPRACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPCOMPRACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPCOMPRACODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object zqry_CPCOMPRACODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_CPCOMPRACODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_CPCOMPRACODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_CPCOMPRACODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
      Required = True
    end
    object zqry_CPCOMPRACODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
      Required = True
    end
    object zqry_CPCOMPRACODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_CPCOMPRACODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_CPCOMPRACODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_CPCOMPRASERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_CPCOMPRACODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_CPCOMPRACODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_CPCOMPRACODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_CPCOMPRADOCCOMPRA: TIntegerField
      FieldName = 'DOCCOMPRA'
      Required = True
    end
    object zqry_CPCOMPRADTENTCOMPRA: TDateField
      FieldName = 'DTENTCOMPRA'
      Required = True
    end
    object zqry_CPCOMPRADTEMITCOMPRA: TDateField
      FieldName = 'DTEMITCOMPRA'
      Required = True
    end
    object zqry_CPCOMPRADTCOMPCOMPRA: TDateField
      FieldName = 'DTCOMPCOMPRA'
      Required = True
    end
    object zqry_CPCOMPRACODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_CPCOMPRACODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_CPCOMPRACODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_CPCOMPRACODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_CPCOMPRACODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_CPCOMPRACODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_CPCOMPRAIMPNOTACOMPRA: TWideStringField
      FieldName = 'IMPNOTACOMPRA'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRABLOQCOMPRA: TWideStringField
      FieldName = 'BLOQCOMPRA'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRAFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_CPCOMPRAADICFRETECOMPRA: TWideStringField
      FieldName = 'ADICFRETECOMPRA'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRATIPOFRETECOMPRA: TWideStringField
      FieldName = 'TIPOFRETECOMPRA'
      Size = 1
    end
    object zqry_CPCOMPRACODEMPSOL: TIntegerField
      FieldName = 'CODEMPSOL'
    end
    object zqry_CPCOMPRACODFILIALSOL: TSmallintField
      FieldName = 'CODFILIALSOL'
    end
    object zqry_CPCOMPRACODSOL: TIntegerField
      FieldName = 'CODSOL'
    end
    object zqry_CPCOMPRACODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_CPCOMPRACODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_CPCOMPRACODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_CPCOMPRAOBSERVACAO: TWideStringField
      FieldName = 'OBSERVACAO'
      Size = 10000
    end
    object zqry_CPCOMPRAOBS01: TWideStringField
      FieldName = 'OBS01'
      Size = 1024
    end
    object zqry_CPCOMPRAOBS02: TWideStringField
      FieldName = 'OBS02'
      Size = 1024
    end
    object zqry_CPCOMPRAOBS03: TWideStringField
      FieldName = 'OBS03'
      Size = 1024
    end
    object zqry_CPCOMPRAOBS04: TWideStringField
      FieldName = 'OBS04'
      Size = 1024
    end
    object zqry_CPCOMPRAADICADICCOMPRA: TWideStringField
      FieldName = 'ADICADICCOMPRA'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRAADICFRETEBASEICMS: TWideStringField
      FieldName = 'ADICFRETEBASEICMS'
      Size = 1
    end
    object zqry_CPCOMPRAADICADICBASEICMS: TWideStringField
      FieldName = 'ADICADICBASEICMS'
      Size = 1
    end
    object zqry_CPCOMPRAADICIPIBASEICMS: TWideStringField
      FieldName = 'ADICIPIBASEICMS'
      Size = 1
    end
    object zqry_CPCOMPRACHAVENFECOMPRA: TWideStringField
      FieldName = 'CHAVENFECOMPRA'
      Size = 44
    end
    object zqry_CPCOMPRASTATUSCOMPRA: TWideStringField
      FieldName = 'STATUSCOMPRA'
      Required = True
      Size = 2
    end
    object zqry_CPCOMPRANRODI: TWideStringField
      FieldName = 'NRODI'
      Size = 10
    end
    object zqry_CPCOMPRADTREGDI: TDateField
      FieldName = 'DTREGDI'
    end
    object zqry_CPCOMPRALOCDESEMBDI: TWideStringField
      FieldName = 'LOCDESEMBDI'
      Size = 60
    end
    object zqry_CPCOMPRASIGLAUFDESEMBDI: TWideStringField
      FieldName = 'SIGLAUFDESEMBDI'
      Size = 2
    end
    object zqry_CPCOMPRACODPAISDESEMBDI: TIntegerField
      FieldName = 'CODPAISDESEMBDI'
    end
    object zqry_CPCOMPRADTDESEMBDI: TDateField
      FieldName = 'DTDESEMBDI'
    end
    object zqry_CPCOMPRAIDENTCONTAINER: TWideStringField
      FieldName = 'IDENTCONTAINER'
    end
    object zqry_CPCOMPRACALCTRIB: TWideStringField
      FieldName = 'CALCTRIB'
      Required = True
      Size = 1
    end
    object zqry_CPCOMPRACODEMPRM: TIntegerField
      FieldName = 'CODEMPRM'
    end
    object zqry_CPCOMPRACODFILIALRM: TSmallintField
      FieldName = 'CODFILIALRM'
    end
    object zqry_CPCOMPRATICKET: TIntegerField
      FieldName = 'TICKET'
    end
    object zqry_CPCOMPRACODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_CPCOMPRACODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_CPCOMPRANUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_CPCOMPRACODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_CPCOMPRACODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_CPCOMPRAANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_CPCOMPRACODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_CPCOMPRACODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_CPCOMPRACODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_CPCOMPRACODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_CPCOMPRAINFCOMPL: TWideStringField
      FieldName = 'INFCOMPL'
      Size = 10000
    end
    object zqry_CPCOMPRANUMACDRAW: TWideStringField
      FieldName = 'NUMACDRAW'
    end
    object zqry_CPCOMPRATIPODOCIMP: TWideStringField
      FieldName = 'TIPODOCIMP'
      Size = 1
    end
    object zqry_CPCOMPRASITDOC: TWideStringField
      FieldName = 'SITDOC'
      Size = 2
    end
    object zqry_CPCOMPRAOBSNFE: TWideStringField
      FieldName = 'OBSNFE'
      Size = 10000
    end
    object zqry_CPCOMPRACODEMPOP: TIntegerField
      FieldName = 'CODEMPOP'
    end
    object zqry_CPCOMPRACODFILIALOP: TSmallintField
      FieldName = 'CODFILIALOP'
    end
    object zqry_CPCOMPRACODOP: TIntegerField
      FieldName = 'CODOP'
    end
    object zqry_CPCOMPRASEQOP: TSmallintField
      FieldName = 'SEQOP'
    end
    object zqry_CPCOMPRACODEMPIM: TIntegerField
      FieldName = 'CODEMPIM'
    end
    object zqry_CPCOMPRACODFILIALIM: TSmallintField
      FieldName = 'CODFILIALIM'
    end
    object zqry_CPCOMPRACODIMP: TIntegerField
      FieldName = 'CODIMP'
    end
    object zqry_CPCOMPRAOBSPAG: TWideStringField
      FieldName = 'OBSPAG'
      Size = 250
    end
    object zqry_CPCOMPRACODEMPOC: TIntegerField
      FieldName = 'CODEMPOC'
    end
    object zqry_CPCOMPRACODFILIALOC: TSmallintField
      FieldName = 'CODFILIALOC'
    end
    object zqry_CPCOMPRACODORDCP: TIntegerField
      FieldName = 'CODORDCP'
    end
    object zqry_CPCOMPRANROORDEMCOMPRA: TWideStringField
      FieldName = 'NROORDEMCOMPRA'
    end
    object zqry_CPCOMPRACNF: TLargeintField
      FieldName = 'CNF'
    end
    object zqry_CPCOMPRACHAVENFEVALIDA: TWideStringField
      FieldName = 'CHAVENFEVALIDA'
      Required = True
    end
    object zqry_CPCOMPRADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CPCOMPRAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CPCOMPRAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CPCOMPRADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CPCOMPRAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CPCOMPRAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_CPCOMPRAMOTIVOCANCCOMPRA: TWideStringField
      FieldName = 'MOTIVOCANCCOMPRA'
      Size = 255
    end
    object zqry_CPCOMPRA_RAZFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'RAZFOR'
      KeyFields = 'CODFOR'
      Size = 100
      Lookup = True
    end
    object zqry_CPCOMPRA_TELFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_TELFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'FONEFOR'
      KeyFields = 'CODFOR'
      Lookup = True
    end
    object zqry_CPCOMPRA_CEPFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CEPFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CEPFOR'
      KeyFields = 'CODFOR'
      Size = 9
      Lookup = True
    end
    object zqry_CPCOMPRA_ENDFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'ENDFOR'
      KeyFields = 'CODFOR'
      Size = 100
      Lookup = True
    end
    object zqry_CPCOMPRA_NUMFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'NUMFOR'
      KeyFields = 'CODFOR'
      Size = 10
      Lookup = True
    end
    object zqry_CPCOMPRA_COMPLFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_COMPLFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'COMPLFOR'
      KeyFields = 'CODFOR'
      Size = 10
      Lookup = True
    end
    object zqry_CPCOMPRA_BAIRROFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'BAIRFOR'
      KeyFields = 'CODFOR'
      Size = 30
      Lookup = True
    end
    object zqry_CPCOMPRA_UFFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_UFFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'UFFOR'
      KeyFields = 'CODFOR'
      Size = 2
      Lookup = True
    end
    object zqry_CPCOMPRA_CODMUNICFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CODMUNICFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CODMUNIC'
      KeyFields = 'CODFOR'
      Size = 10
      Lookup = True
    end
    object zqry_CPCOMPRA_SIGLAUF: TStringField
      FieldKind = fkLookup
      FieldName = '_SIGLAUF'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'SIGLAUF'
      KeyFields = 'CODFOR'
      Size = 2
      Lookup = True
    end
    object zqry_CPCOMPRA_MAILFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_MAILFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'EMAILFOR'
      KeyFields = 'CODFOR'
      Size = 100
      Lookup = True
    end
    object zqry_CPCOMPRA_DDDFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_DDDFOR'
      LookupDataSet = zqry_CPFORNECED
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'DDDFONEFOR'
      KeyFields = 'CODFOR'
      Size = 2
      Lookup = True
    end
    object zqry_CPCOMPRAPERCDESCCOMPRA: TExtendedField
      FieldName = 'PERCDESCCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAPERCIPICOMPRA: TFloatField
      FieldName = 'PERCIPICOMPRA'
    end
    object zqry_CPCOMPRAVLRPRODCOMPRA: TExtendedField
      FieldName = 'VLRPRODCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRLIQCOMPRA: TExtendedField
      FieldName = 'VLRLIQCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRCOMPRA: TExtendedField
      FieldName = 'VLRCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRDESCCOMPRA: TExtendedField
      FieldName = 'VLRDESCCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRDESCITCOMPRA: TExtendedField
      FieldName = 'VLRDESCITCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRADICCOMPRA: TExtendedField
      FieldName = 'VLRADICCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASEICMSCOMPRA: TExtendedField
      FieldName = 'VLRBASEICMSCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASEICMSSTCOMPRA: TExtendedField
      FieldName = 'VLRBASEICMSSTCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASEIPICOMPRA: TExtendedField
      FieldName = 'VLRBASEIPICOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASEPISCOMPRA: TExtendedField
      FieldName = 'VLRBASEPISCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASECOFINSCOMPRA: TExtendedField
      FieldName = 'VLRBASECOFINSCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSCOMPRA: TExtendedField
      FieldName = 'VLRICMSCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSSTCOMPRA: TExtendedField
      FieldName = 'VLRICMSSTCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRIPICOMPRA: TExtendedField
      FieldName = 'VLRIPICOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRPISCOMPRA: TExtendedField
      FieldName = 'VLRPISCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRCOFINSCOMPRA: TExtendedField
      FieldName = 'VLRCOFINSCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRFUNRURALCOMPRA: TExtendedField
      FieldName = 'VLRFUNRURALCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRFRETECOMPRA: TExtendedField
      FieldName = 'VLRFRETECOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLROUTRASCOMPRA: TExtendedField
      FieldName = 'VLROUTRASCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRISENTASCOMPRA: TExtendedField
      FieldName = 'VLRISENTASCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAQTDFRETECOMPRA: TExtendedField
      FieldName = 'QTDFRETECOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRBASEIICOMPRA: TExtendedField
      FieldName = 'VLRBASEIICOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRIICOMPRA: TExtendedField
      FieldName = 'VLRIICOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSDIFERIDO: TExtendedField
      FieldName = 'VLRICMSDIFERIDO'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSDEVIDO: TExtendedField
      FieldName = 'VLRICMSDEVIDO'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSCREDPRESUM: TExtendedField
      FieldName = 'VLRICMSCREDPRESUM'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRICMSCREDOR: TExtendedField
      FieldName = 'VLRICMSCREDOR'
      Precision = 19
    end
    object zqry_CPCOMPRAVLRISSCOMPRA: TExtendedField
      FieldName = 'VLRISSCOMPRA'
      Precision = 19
    end
    object zqry_CPCOMPRAVLROUTRASDESP: TExtendedField
      FieldName = 'VLROUTRASDESP'
      Precision = 19
    end
  end
  object zdts_CPCOMPRA: TDataSource
    DataSet = zqry_CPCOMPRA
    Left = 472
    Top = 392
  end
  object zqry_VDVENDA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdvenda')
    Params = <>
    Left = 376
    Top = 440
    object zqry_VDVENDA_RAZCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Size = 100
      Lookup = True
    end
    object zqry_VDVENDA_TELCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_TELCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'FONECLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_VDVENDA_CEPCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CEPCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CEPCLI'
      KeyFields = 'CODCLI'
      Size = 9
      Lookup = True
    end
    object zqry_VDVENDA_DDDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_DDDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'DDDCLI'
      KeyFields = 'CODCLI'
      Size = 2
      Lookup = True
    end
    object zqry_VDVENDA_ENDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Size = 100
      Lookup = True
    end
    object zqry_VDVENDA_NUMCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_VDVENDA_COMPLCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_COMPLCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'COMPLCLI'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_VDVENDA_BAIRROCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Size = 30
      Lookup = True
    end
    object zqry_VDVENDA_UFCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_UFCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'UFCLI'
      KeyFields = 'CODCLI'
      Size = 2
      Lookup = True
    end
    object zqry_VDVENDA_MAILCLIENTENF: TStringField
      FieldKind = fkLookup
      FieldName = '_MAILCLIENTENF'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'EMAILNFECLI'
      KeyFields = 'CODCLI'
      Size = 100
      Lookup = True
    end
    object zqry_VDVENDA_SIGLAUF: TStringField
      FieldKind = fkLookup
      FieldName = '_SIGLAUF'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'SIGLAUF'
      KeyFields = 'CODCLI'
      Size = 2
      Lookup = True
    end
    object zqry_VDVENDA_CODMUNICCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CODMUNICCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CODMUNIC'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_VDVENDA_NOMEVENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEVENDEDOR'
      LookupDataSet = zqry_VDVENDEDOR
      LookupKeyFields = 'CODVEND'
      LookupResultField = 'NOMEVEND'
      KeyFields = 'CODVEND'
      Size = 100
      Lookup = True
    end
    object zqry_VDVENDA_CIDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_VDVENDA_PESSOACLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_PESSOACLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'PESSOACLI'
      KeyFields = 'CODCLI'
      Size = 1
      Lookup = True
    end
    object zqry_VDVENDAIDECLIDOC: TWideStringField
      FieldName = 'IDECLIDOC'
      Size = 14
    end
    object zqry_VDVENDACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDVENDACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDVENDATIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDACODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Required = True
    end
    object zqry_VDVENDASUBTIPOVENDA: TWideStringField
      FieldName = 'SUBTIPOVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDACODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDVENDACODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDVENDACODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDVENDACODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
      Required = True
    end
    object zqry_VDVENDACODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
      Required = True
    end
    object zqry_VDVENDACODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDVENDACODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_VDVENDACODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_VDVENDACODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_VDVENDACODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_VDVENDACODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_VDVENDASERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_VDVENDACODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_VDVENDACODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_VDVENDACODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_VDVENDACODEMPCX: TIntegerField
      FieldName = 'CODEMPCX'
    end
    object zqry_VDVENDACODFILIALCX: TSmallintField
      FieldName = 'CODFILIALCX'
    end
    object zqry_VDVENDACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
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
    object zqry_VDVENDACODEMPRM: TIntegerField
      FieldName = 'CODEMPRM'
    end
    object zqry_VDVENDACODFILIALRM: TSmallintField
      FieldName = 'CODFILIALRM'
    end
    object zqry_VDVENDATICKET: TIntegerField
      FieldName = 'TICKET'
    end
    object zqry_VDVENDAVLRPRODVENDA: TExtendedField
      FieldName = 'VLRPRODVENDA'
      Precision = 19
    end
    object zqry_VDVENDAPERCDESCVENDA: TExtendedField
      FieldName = 'PERCDESCVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRDESCVENDA: TExtendedField
      FieldName = 'VLRDESCVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRDESCITVENDA: TExtendedField
      FieldName = 'VLRDESCITVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRVENDA: TExtendedField
      FieldName = 'VLRVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRBASEICMSVENDA: TExtendedField
      FieldName = 'VLRBASEICMSVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRICMSVENDA: TExtendedField
      FieldName = 'VLRICMSVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCICMSVENDA: TWideStringField
      FieldName = 'CALCICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPICMSVENDA: TWideStringField
      FieldName = 'IMPICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRISENTASVENDA: TExtendedField
      FieldName = 'VLRISENTASVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLROUTRASVENDA: TExtendedField
      FieldName = 'VLROUTRASVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRBASEIPIVENDA: TExtendedField
      FieldName = 'VLRBASEIPIVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRLIQVENDA: TExtendedField
      FieldName = 'VLRLIQVENDA'
      Precision = 19
    end
    object zqry_VDVENDAPERCCOMISVENDA: TFloatField
      FieldName = 'PERCCOMISVENDA'
    end
    object zqry_VDVENDAVLRCOMISVENDA: TExtendedField
      FieldName = 'VLRCOMISVENDA'
      Precision = 19
    end
    object zqry_VDVENDASTATUSVENDA: TWideStringField
      FieldName = 'STATUSVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDAVLRFRETEVENDA: TExtendedField
      FieldName = 'VLRFRETEVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRADICVENDA: TExtendedField
      FieldName = 'VLRADICVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRIPIVENDA: TExtendedField
      FieldName = 'VLRIPIVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCIPIVENDA: TWideStringField
      FieldName = 'CALCIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPIPIVENDA: TWideStringField
      FieldName = 'IMPIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDAOBSVENDA: TWideStringField
      FieldName = 'OBSVENDA'
      Size = 10000
    end
    object zqry_VDVENDACODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_VDVENDACODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_VDVENDACODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
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
    object zqry_VDVENDAVLRBASEISSVENDA: TExtendedField
      FieldName = 'VLRBASEISSVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRISSVENDA: TExtendedField
      FieldName = 'VLRISSVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCISSVENDA: TWideStringField
      FieldName = 'CALCISSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPIISSVENDA: TWideStringField
      FieldName = 'IMPIISSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPNOTAVENDA: TWideStringField
      FieldName = 'IMPNOTAVENDA'
      Size = 10000
    end
    object zqry_VDVENDAFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_VDVENDACODCLASCOMIS: TWideStringField
      FieldName = 'CODCLASCOMIS'
      Size = 1
    end
    object zqry_VDVENDAVLRPISVENDA: TExtendedField
      FieldName = 'VLRPISVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCPISVENDA: TWideStringField
      FieldName = 'CALCPISVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPPISVENDA: TWideStringField
      FieldName = 'IMPPISVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRCOFINSVENDA: TExtendedField
      FieldName = 'VLRCOFINSVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCCOFINSVENDA: TWideStringField
      FieldName = 'CALCCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPCOFINSVENDA: TWideStringField
      FieldName = 'IMPCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRIRVENDA: TExtendedField
      FieldName = 'VLRIRVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCIRVENDA: TWideStringField
      FieldName = 'CALCIRVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPIRVENDA: TWideStringField
      FieldName = 'IMPIRVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRCSOCIALVENDA: TExtendedField
      FieldName = 'VLRCSOCIALVENDA'
      Precision = 19
    end
    object zqry_VDVENDACALCCSOCIALVENDA: TWideStringField
      FieldName = 'CALCCSOCIALVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPCSOCIALVENDA: TWideStringField
      FieldName = 'IMPCSOCIALVENDA'
      Size = 1
    end
    object zqry_VDVENDAPERCMCOMISVENDA: TFloatField
      FieldName = 'PERCMCOMISVENDA'
    end
    object zqry_VDVENDACODEMPCM: TIntegerField
      FieldName = 'CODEMPCM'
    end
    object zqry_VDVENDACODFILIALCM: TIntegerField
      FieldName = 'CODFILIALCM'
    end
    object zqry_VDVENDACODCLCOMIS: TIntegerField
      FieldName = 'CODCLCOMIS'
    end
    object zqry_VDVENDACODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_VDVENDACODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_VDVENDACODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_VDVENDAPEDCLIVENDA: TWideStringField
      FieldName = 'PEDCLIVENDA'
      Size = 10
    end
    object zqry_VDVENDAVLRICMSSTVENDA: TExtendedField
      FieldName = 'VLRICMSSTVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRBASEICMSSTVENDA: TExtendedField
      FieldName = 'VLRBASEICMSSTVENDA'
      Precision = 19
    end
    object zqry_VDVENDAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_VDVENDABLOQVENDA: TWideStringField
      FieldName = 'BLOQVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDAVLRICMSSIMPLES: TExtendedField
      FieldName = 'VLRICMSSIMPLES'
      Precision = 19
    end
    object zqry_VDVENDAPERCICMSSIMPLES: TFloatField
      FieldName = 'PERCICMSSIMPLES'
    end
    object zqry_VDVENDAVLRBASEPISVENDA: TExtendedField
      FieldName = 'VLRBASEPISVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRBASECOFINSVENDA: TExtendedField
      FieldName = 'VLRBASECOFINSVENDA'
      Precision = 19
    end
    object zqry_VDVENDAVLRBASECOMIS: TExtendedField
      FieldName = 'VLRBASECOMIS'
      Precision = 19
    end
    object zqry_VDVENDACHAVENFEVENDA: TWideStringField
      FieldName = 'CHAVENFEVENDA'
      Size = 44
    end
    object zqry_VDVENDACODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_VDVENDACODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_VDVENDANUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_VDVENDAOBSREC: TWideStringField
      FieldName = 'OBSREC'
      Size = 250
    end
    object zqry_VDVENDAINFCOMPL: TWideStringField
      FieldName = 'INFCOMPL'
      Size = 10000
    end
    object zqry_VDVENDASITDOC: TWideStringField
      FieldName = 'SITDOC'
      Size = 2
    end
    object zqry_VDVENDAOBSNFE: TWideStringField
      FieldName = 'OBSNFE'
      Size = 10000
    end
    object zqry_VDVENDADESCIPIVENDA: TWideStringField
      FieldName = 'DESCIPIVENDA'
      Size = 1
    end
    object zqry_VDVENDACODEMPOP: TIntegerField
      FieldName = 'CODEMPOP'
    end
    object zqry_VDVENDACODFILIALOP: TSmallintField
      FieldName = 'CODFILIALOP'
    end
    object zqry_VDVENDASEQOP: TSmallintField
      FieldName = 'SEQOP'
    end
    object zqry_VDVENDACODOP: TIntegerField
      FieldName = 'CODOP'
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
    object zqry_VDVENDACNF: TLargeintField
      FieldName = 'CNF'
    end
    object zqry_VDVENDASITCOMPLVENDA: TWideStringField
      FieldName = 'SITCOMPLVENDA'
      Required = True
      Size = 1
    end
    object zqry_VDVENDAMOTIVOCANCVENDA: TWideStringField
      FieldName = 'MOTIVOCANCVENDA'
      Size = 250
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
    object zqry_VDVENDADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDVENDAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDVENDAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDVENDAVLRSIMPLES: TFloatField
      FieldName = 'VLRSIMPLES'
    end
    object zqry_VDVENDATIPOENVIO: TWideStringField
      FieldName = 'TIPOENVIO'
      Size = 10
    end
    object zqry_VDVENDACODMOT: TIntegerField
      FieldName = 'CODMOT'
    end
    object zqry_VDVENDACODVEIC: TIntegerField
      FieldName = 'CODVEIC'
    end
    object zqry_VDVENDAOBSENTREGA: TWideStringField
      FieldName = 'OBSENTREGA'
      Size = 100
    end
    object zqry_VDVENDANOMEMOT: TWideStringField
      FieldName = 'NOMEMOT'
      Size = 50
    end
    object zqry_VDVENDAPLACA: TWideStringField
      FieldName = 'PLACA'
      Size = 7
    end
    object zqry_VDVENDAREQUERMONTAGEM: TWideStringField
      FieldName = 'REQUERMONTAGEM'
      Size = 1
    end
    object zqry_VDVENDAPONTOREFERENCIA: TWideStringField
      FieldName = 'PONTOREFERENCIA'
      Size = 150
    end
    object zqry_VDVENDACODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_VDVENDACODEMPAT: TIntegerField
      FieldName = 'CODEMPAT'
    end
    object zqry_VDVENDACODFILIALAT: TSmallintField
      FieldName = 'CODFILIALAT'
    end
    object zqry_VDVENDAVDCOMERCIAL: TWideStringField
      FieldName = 'VDCOMERCIAL'
      Size = 1
    end
    object zqry_VDVENDAVDVENDEXTERNO: TWideStringField
      FieldName = 'VDVENDEXTERNO'
      Size = 1
    end
    object zqry_VDVENDAVDCOMMERCE: TWideStringField
      FieldName = 'VDCOMMERCE'
      Size = 1
    end
    object zqry_VDVENDAENTREGUE: TWideStringField
      FieldName = 'ENTREGUE'
      Size = 1
    end
    object zqry_VDVENDAIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
    end
    object zqry_VDVENDANOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Size = 50
    end
    object zqry_VDVENDACAMINHO: TWideStringField
      FieldName = 'CAMINHO'
      Size = 255
    end
    object zqry_VDVENDAPROTOCOLO: TWideStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object zqry_VDVENDAIDECLITEL: TWideStringField
      FieldName = 'IDECLITEL'
      Size = 11
    end
  end
  object zdts_VDVENDA: TDataSource
    DataSet = zqry_VDVENDA
    Left = 472
    Top = 440
  end
  object zqry_VDCLIENTE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdcliente')
    Params = <>
    Left = 376
    Top = 488
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
    object zqry_VDCLIENTERAZCLI: TWideStringField
      FieldName = 'RAZCLI'
      Required = True
      Size = 60
    end
    object zqry_VDCLIENTENOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Required = True
      Size = 50
    end
    object zqry_VDCLIENTECODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_VDCLIENTECODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_VDCLIENTECODCLASCLI: TIntegerField
      FieldName = 'CODCLASCLI'
    end
    object zqry_VDCLIENTECODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDCLIENTECODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDCLIENTECODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDCLIENTECODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_VDCLIENTECODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_VDCLIENTECODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_VDCLIENTECODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_VDCLIENTECODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_VDCLIENTECODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_VDCLIENTECODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_VDCLIENTECODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_VDCLIENTECODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_VDCLIENTECODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_VDCLIENTECODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_VDCLIENTECODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_VDCLIENTECODEMPSR: TIntegerField
      FieldName = 'CODEMPSR'
    end
    object zqry_VDCLIENTECODFILIALSR: TSmallintField
      FieldName = 'CODFILIALSR'
    end
    object zqry_VDCLIENTECODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object zqry_VDCLIENTECODEMPTI: TIntegerField
      FieldName = 'CODEMPTI'
      Required = True
    end
    object zqry_VDCLIENTECODFILIALTI: TSmallintField
      FieldName = 'CODFILIALTI'
      Required = True
    end
    object zqry_VDCLIENTECODTIPOCLI: TIntegerField
      FieldName = 'CODTIPOCLI'
      Required = True
    end
    object zqry_VDCLIENTECODTPCRED: TIntegerField
      FieldName = 'CODTPCRED'
    end
    object zqry_VDCLIENTECODFILIALTR: TIntegerField
      FieldName = 'CODFILIALTR'
    end
    object zqry_VDCLIENTECODEMPTR: TIntegerField
      FieldName = 'CODEMPTR'
    end
    object zqry_VDCLIENTECODFISCCLI: TIntegerField
      FieldName = 'CODFISCCLI'
    end
    object zqry_VDCLIENTECODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
    end
    object zqry_VDCLIENTECODFILIALFC: TIntegerField
      FieldName = 'CODFILIALFC'
    end
    object zqry_VDCLIENTECODEMPEC: TIntegerField
      FieldName = 'CODEMPEC'
    end
    object zqry_VDCLIENTECODFILIALEC: TSmallintField
      FieldName = 'CODFILIALEC'
    end
    object zqry_VDCLIENTECODTBEC: TSmallintField
      FieldName = 'CODTBEC'
    end
    object zqry_VDCLIENTECODITTBEC: TIntegerField
      FieldName = 'CODITTBEC'
    end
    object zqry_VDCLIENTECODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_VDCLIENTECODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_VDCLIENTECODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_VDCLIENTECODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_VDCLIENTECODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_VDCLIENTECODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_VDCLIENTEDATACLI: TDateField
      FieldName = 'DATACLI'
      Required = True
    end
    object zqry_VDCLIENTEPESSOACLI: TWideStringField
      FieldName = 'PESSOACLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTEATIVOCLI: TWideStringField
      FieldName = 'ATIVOCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTECNPJCLI: TWideStringField
      FieldName = 'CNPJCLI'
      Size = 14
    end
    object zqry_VDCLIENTEINSCCLI: TWideStringField
      FieldName = 'INSCCLI'
    end
    object zqry_VDCLIENTECPFCLI: TWideStringField
      FieldName = 'CPFCLI'
      Size = 11
    end
    object zqry_VDCLIENTERGCLI: TWideStringField
      FieldName = 'RGCLI'
      Size = 13
    end
    object zqry_VDCLIENTESSPCLI: TWideStringField
      FieldName = 'SSPCLI'
      Size = 10
    end
    object zqry_VDCLIENTEENDCLI: TWideStringField
      FieldName = 'ENDCLI'
      Size = 50
    end
    object zqry_VDCLIENTENUMCLI: TIntegerField
      FieldName = 'NUMCLI'
    end
    object zqry_VDCLIENTECOMPLCLI: TWideStringField
      FieldName = 'COMPLCLI'
    end
    object zqry_VDCLIENTEEDIFICIOCLI: TWideStringField
      FieldName = 'EDIFICIOCLI'
      Size = 30
    end
    object zqry_VDCLIENTEBAIRCLI: TWideStringField
      FieldName = 'BAIRCLI'
      Size = 30
    end
    object zqry_VDCLIENTECIDCLI: TWideStringField
      FieldName = 'CIDCLI'
      Size = 30
    end
    object zqry_VDCLIENTEUFCLI: TWideStringField
      FieldName = 'UFCLI'
      Size = 2
    end
    object zqry_VDCLIENTECEPCLI: TWideStringField
      FieldName = 'CEPCLI'
      Size = 8
    end
    object zqry_VDCLIENTEDDDCLI: TWideStringField
      FieldName = 'DDDCLI'
      Size = 4
    end
    object zqry_VDCLIENTEFONECLI: TWideStringField
      FieldName = 'FONECLI'
      Size = 12
    end
    object zqry_VDCLIENTERAMALCLI: TWideStringField
      FieldName = 'RAMALCLI'
      Size = 6
    end
    object zqry_VDCLIENTEDDDFAXCLI: TWideStringField
      FieldName = 'DDDFAXCLI'
      Size = 4
    end
    object zqry_VDCLIENTEFAXCLI: TWideStringField
      FieldName = 'FAXCLI'
      Size = 9
    end
    object zqry_VDCLIENTEEMAILCLI: TWideStringField
      FieldName = 'EMAILCLI'
      Size = 50
    end
    object zqry_VDCLIENTEEMAILCOB: TWideStringField
      FieldName = 'EMAILCOB'
      Size = 50
    end
    object zqry_VDCLIENTEEMAILENT: TWideStringField
      FieldName = 'EMAILENT'
      Size = 50
    end
    object zqry_VDCLIENTEEMAILNFECLI: TWideStringField
      FieldName = 'EMAILNFECLI'
      Size = 50
    end
    object zqry_VDCLIENTECONTCLI: TWideStringField
      FieldName = 'CONTCLI'
      Size = 40
    end
    object zqry_VDCLIENTEENDCOB: TWideStringField
      FieldName = 'ENDCOB'
      Size = 50
    end
    object zqry_VDCLIENTENUMCOB: TIntegerField
      FieldName = 'NUMCOB'
    end
    object zqry_VDCLIENTECOMPLCOB: TWideStringField
      FieldName = 'COMPLCOB'
    end
    object zqry_VDCLIENTEBAIRCOB: TWideStringField
      FieldName = 'BAIRCOB'
      Size = 30
    end
    object zqry_VDCLIENTECIDCOB: TWideStringField
      FieldName = 'CIDCOB'
      Size = 30
    end
    object zqry_VDCLIENTEUFCOB: TWideStringField
      FieldName = 'UFCOB'
      Size = 2
    end
    object zqry_VDCLIENTECEPCOB: TWideStringField
      FieldName = 'CEPCOB'
      Size = 8
    end
    object zqry_VDCLIENTEDDDFONECOB: TWideStringField
      FieldName = 'DDDFONECOB'
      Size = 4
    end
    object zqry_VDCLIENTEFONECOB: TWideStringField
      FieldName = 'FONECOB'
      Size = 12
    end
    object zqry_VDCLIENTEDDDFAXCOB: TWideStringField
      FieldName = 'DDDFAXCOB'
      Size = 4
    end
    object zqry_VDCLIENTEFAXCOB: TWideStringField
      FieldName = 'FAXCOB'
      Size = 9
    end
    object zqry_VDCLIENTEENDENT: TWideStringField
      FieldName = 'ENDENT'
      Size = 50
    end
    object zqry_VDCLIENTENUMENT: TIntegerField
      FieldName = 'NUMENT'
    end
    object zqry_VDCLIENTECOMPLENT: TWideStringField
      FieldName = 'COMPLENT'
    end
    object zqry_VDCLIENTEBAIRENT: TWideStringField
      FieldName = 'BAIRENT'
      Size = 30
    end
    object zqry_VDCLIENTECIDENT: TWideStringField
      FieldName = 'CIDENT'
      Size = 30
    end
    object zqry_VDCLIENTEUFENT: TWideStringField
      FieldName = 'UFENT'
      Size = 2
    end
    object zqry_VDCLIENTECEPENT: TWideStringField
      FieldName = 'CEPENT'
      Size = 8
    end
    object zqry_VDCLIENTEDDDFONEENT: TWideStringField
      FieldName = 'DDDFONEENT'
      Size = 4
    end
    object zqry_VDCLIENTEFONEENT: TWideStringField
      FieldName = 'FONEENT'
      Size = 12
    end
    object zqry_VDCLIENTEDDDFAXENT: TWideStringField
      FieldName = 'DDDFAXENT'
      Size = 4
    end
    object zqry_VDCLIENTEFAXENT: TWideStringField
      FieldName = 'FAXENT'
      Size = 9
    end
    object zqry_VDCLIENTEDDDCELENT: TWideStringField
      FieldName = 'DDDCELENT'
      Size = 4
    end
    object zqry_VDCLIENTECELENT: TWideStringField
      FieldName = 'CELENT'
      Size = 9
    end
    object zqry_VDCLIENTEOBSCLI: TWideStringField
      FieldName = 'OBSCLI'
      Size = 10000
    end
    object zqry_VDCLIENTEAGENCIACLI: TWideStringField
      FieldName = 'AGENCIACLI'
      Size = 6
    end
    object zqry_VDCLIENTENCONTABCOCLI: TWideStringField
      FieldName = 'NCONTABCOCLI'
    end
    object zqry_VDCLIENTECODEMPPQ: TIntegerField
      FieldName = 'CODEMPPQ'
    end
    object zqry_VDCLIENTECODFILIALPQ: TSmallintField
      FieldName = 'CODFILIALPQ'
    end
    object zqry_VDCLIENTECODPESQ: TIntegerField
      FieldName = 'CODPESQ'
    end
    object zqry_VDCLIENTEINCRACLI: TWideStringField
      FieldName = 'INCRACLI'
      Size = 15
    end
    object zqry_VDCLIENTEDTINITR: TDateField
      FieldName = 'DTINITR'
    end
    object zqry_VDCLIENTEDTVENCTOTR: TDateField
      FieldName = 'DTVENCTOTR'
    end
    object zqry_VDCLIENTENIRFCLI: TWideStringField
      FieldName = 'NIRFCLI'
      Size = 15
    end
    object zqry_VDCLIENTESIMPLESCLI: TWideStringField
      FieldName = 'SIMPLESCLI'
      Size = 1
    end
    object zqry_VDCLIENTEDDDCELCLI: TWideStringField
      FieldName = 'DDDCELCLI'
      Size = 4
    end
    object zqry_VDCLIENTECELCLI: TWideStringField
      FieldName = 'CELCLI'
      Size = 9
    end
    object zqry_VDCLIENTENATCLI: TWideStringField
      FieldName = 'NATCLI'
      Size = 30
    end
    object zqry_VDCLIENTEUFNATCLI: TWideStringField
      FieldName = 'UFNATCLI'
      Size = 2
    end
    object zqry_VDCLIENTETEMPORESCLI: TWideStringField
      FieldName = 'TEMPORESCLI'
    end
    object zqry_VDCLIENTEAPELIDOCLI: TWideStringField
      FieldName = 'APELIDOCLI'
      Size = 30
    end
    object zqry_VDCLIENTESITECLI: TWideStringField
      FieldName = 'SITECLI'
      Size = 50
    end
    object zqry_VDCLIENTECODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_VDCLIENTECODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_VDCLIENTECODCLICONTAB: TWideStringField
      FieldName = 'CODCLICONTAB'
    end
    object zqry_VDCLIENTEFOTOCLI: TBlobField
      FieldName = 'FOTOCLI'
    end
    object zqry_VDCLIENTEIMGASSCLI: TBlobField
      FieldName = 'IMGASSCLI'
    end
    object zqry_VDCLIENTECODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_VDCLIENTESIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_VDCLIENTECODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_VDCLIENTECODMUNICENT: TWideStringField
      FieldName = 'CODMUNICENT'
      Size = 7
    end
    object zqry_VDCLIENTESIGLAUFENT: TWideStringField
      FieldName = 'SIGLAUFENT'
      Size = 2
    end
    object zqry_VDCLIENTECODPAISENT: TSmallintField
      FieldName = 'CODPAISENT'
    end
    object zqry_VDCLIENTECODMUNICCOB: TWideStringField
      FieldName = 'CODMUNICCOB'
      Size = 7
    end
    object zqry_VDCLIENTESIGLAUFCOB: TWideStringField
      FieldName = 'SIGLAUFCOB'
      Size = 2
    end
    object zqry_VDCLIENTECODPAISCOB: TSmallintField
      FieldName = 'CODPAISCOB'
    end
    object zqry_VDCLIENTECODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_VDCLIENTECODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_VDCLIENTECODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_VDCLIENTESUFRAMACLI: TWideStringField
      FieldName = 'SUFRAMACLI'
      Size = 9
    end
    object zqry_VDCLIENTEPRODRURALCLI: TWideStringField
      FieldName = 'PRODRURALCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTECTOCLI: TWideStringField
      FieldName = 'CTOCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTECODCNAE: TWideStringField
      FieldName = 'CODCNAE'
      Size = 15
    end
    object zqry_VDCLIENTEINSCMUNCLI: TWideStringField
      FieldName = 'INSCMUNCLI'
    end
    object zqry_VDCLIENTECONTCLICOB: TWideStringField
      FieldName = 'CONTCLICOB'
      Size = 40
    end
    object zqry_VDCLIENTECONTCLIENT: TWideStringField
      FieldName = 'CONTCLIENT'
      Size = 40
    end
    object zqry_VDCLIENTEDESCIPI: TWideStringField
      FieldName = 'DESCIPI'
      Size = 1
    end
    object zqry_VDCLIENTEIDENTCLIBCO: TWideStringField
      FieldName = 'IDENTCLIBCO'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTEDTNASCCLI: TDateField
      FieldName = 'DTNASCCLI'
    end
    object zqry_VDCLIENTEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDCLIENTEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDCLIENTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDCLIENTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDCLIENTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDCLIENTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDCLIENTECONSUMIDORCLI: TWideStringField
      FieldName = 'CONSUMIDORCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTESITREVCLI: TWideStringField
      FieldName = 'SITREVCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTEIDUSUREVCLI: TWideStringField
      FieldName = 'IDUSUREVCLI'
      Size = 128
    end
    object zqry_VDCLIENTEDTREVCLI: TDateField
      FieldName = 'DTREVCLI'
    end
    object zqry_VDCLIENTEHREVCLI: TTimeField
      FieldName = 'HREVCLI'
    end
    object zqry_VDCLIENTECELENTOPERADORA: TWideStringField
      FieldName = 'CELENTOPERADORA'
      Size = 10
    end
    object zqry_VDCLIENTECELENTWHATSAPP: TWideStringField
      FieldName = 'CELENTWHATSAPP'
      Size = 1
    end
    object zqry_VDCLIENTECELCLIOPERADORA: TWideStringField
      FieldName = 'CELCLIOPERADORA'
      Size = 10
    end
    object zqry_VDCLIENTECELCLIWHATSAPP: TWideStringField
      FieldName = 'CELCLIWHATSAPP'
      Size = 1
    end
    object zqry_VDCLIENTEQTDPONTOS: TIntegerField
      FieldName = 'QTDPONTOS'
    end
    object zqry_VDCLIENTESALDOCREDITO: TSingleField
      FieldName = 'SALDOCREDITO'
    end
    object zqry_VDCLIENTEESTCIVIL: TWideStringField
      FieldName = 'ESTCIVIL'
    end
    object zqry_VDCLIENTECODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_VDCLIENTEDTSYNC: TDateField
      FieldName = 'DTSYNC'
    end
    object zqry_VDCLIENTESYNC: TWideStringField
      FieldName = 'SYNC'
      Size = 1
    end
    object zqry_VDCLIENTECARTAORFDI: TIntegerField
      FieldName = 'CARTAORFDI'
    end
    object zqry_VDCLIENTEDIAVENCTO: TIntegerField
      FieldName = 'DIAVENCTO'
    end
    object zqry_VDCLIENTEINSCPRODRURAL: TIntegerField
      FieldName = 'INSCPRODRURAL'
    end
    object zqry_VDCLIENTECARTAORFID: TIntegerField
      FieldName = 'CARTAORFID'
    end
    object zqry_VDCLIENTEMEIRURALCLI: TWideStringField
      FieldName = 'MEIRURALCLI'
      Size = 1
    end
    object zqry_VDCLIENTEARRENDATARIO: TWideStringField
      FieldName = 'ARRENDATARIO'
      Size = 1
    end
    object zqry_VDCLIENTEDDDCELCLI2: TWideStringField
      FieldName = 'DDDCELCLI2'
      Size = 4
    end
    object zqry_VDCLIENTECELCLI2: TWideStringField
      FieldName = 'CELCLI2'
      Size = 9
    end
    object zqry_VDCLIENTECELCLIOPERADORA2: TWideStringField
      FieldName = 'CELCLIOPERADORA2'
      Size = 10
    end
    object zqry_VDCLIENTECELCLIWHATSAPP2: TWideStringField
      FieldName = 'CELCLIWHATSAPP2'
      Size = 1
    end
    object zqry_VDCLIENTEALUNO: TWideStringField
      FieldName = 'ALUNO'
      Size = 1
    end
    object zqry_VDCLIENTERESPALUNO: TWideStringField
      FieldName = 'RESPALUNO'
      Size = 1
    end
    object zqry_VDCLIENTEPERCDESCCLI: TFloatField
      FieldName = 'PERCDESCCLI'
    end
  end
  object zdts_VDCLIENTE: TDataSource
    DataSet = zqry_VDCLIENTE
    Left = 472
    Top = 488
  end
  object ZSQLProcessor1: TZSQLProcessor
    Params = <>
    Connection = Conecta
    Delimiter = ';'
    Left = 472
    Top = 200
  end
  object zqry_SGREVENDAWEB: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sgrevenda')
    Params = <>
    Left = 40
    Top = 160
    object zqry_SGREVENDAWEBcodrev: TIntegerField
      FieldName = 'codrev'
      Required = True
    end
    object zqry_SGREVENDAWEBrazsocial: TWideStringField
      FieldName = 'razsocial'
      Required = True
      Size = 50
    end
    object zqry_SGREVENDAWEBnomerev: TWideStringField
      FieldName = 'nomerev'
      Required = True
      Size = 50
    end
    object zqry_SGREVENDAWEBcnpjrev: TWideStringField
      FieldName = 'cnpjrev'
      Size = 18
    end
    object zqry_SGREVENDAWEBcpfrev: TWideStringField
      FieldName = 'cpfrev'
      Size = 14
    end
    object zqry_SGREVENDAWEBinscrev: TWideStringField
      FieldName = 'inscrev'
    end
    object zqry_SGREVENDAWEBendrev: TWideStringField
      FieldName = 'endrev'
      Size = 50
    end
    object zqry_SGREVENDAWEBnumrev: TIntegerField
      FieldName = 'numrev'
    end
    object zqry_SGREVENDAWEBcomplrev: TWideStringField
      FieldName = 'complrev'
    end
    object zqry_SGREVENDAWEBbairrev: TWideStringField
      FieldName = 'bairrev'
      Size = 30
    end
    object zqry_SGREVENDAWEBceprev: TWideStringField
      FieldName = 'ceprev'
      Size = 8
    end
    object zqry_SGREVENDAWEBcidrev: TWideStringField
      FieldName = 'cidrev'
      Size = 30
    end
    object zqry_SGREVENDAWEBufrev: TWideStringField
      FieldName = 'ufrev'
      Size = 2
    end
    object zqry_SGREVENDAWEBdddrev: TWideStringField
      FieldName = 'dddrev'
      Size = 4
    end
    object zqry_SGREVENDAWEBfonerev: TWideStringField
      FieldName = 'fonerev'
      Size = 12
    end
    object zqry_SGREVENDAWEBoutrofonerev: TWideStringField
      FieldName = 'outrofonerev'
      Size = 14
    end
    object TWideStringField
      FieldName = 'emailrev'
      Size = 50
    end
    object zqry_SGREVENDAWEBwwwrev: TWideStringField
      FieldName = 'wwwrev'
      Size = 50
    end
    object zqry_SGREVENDAWEBcodmunic: TWideStringField
      FieldName = 'codmunic'
      Size = 7
    end
    object zqry_SGREVENDAWEBcodpais: TSmallintField
      FieldName = 'codpais'
    end
    object zqry_SGREVENDAWEBlogorev: TWideStringField
      FieldName = 'logorev'
      Size = 255
    end
    object zqry_SGREVENDAWEBdtins: TDateField
      FieldName = 'dtins'
      Required = True
    end
    object zqry_SGREVENDAWEBhins: TTimeField
      FieldName = 'hins'
      Required = True
    end
    object zqry_SGREVENDAWEBidusuins: TWideStringField
      FieldName = 'idusuins'
      Required = True
      Size = 8
    end
    object zqry_SGREVENDAWEBdtalt: TDateField
      FieldName = 'dtalt'
    end
    object zqry_SGREVENDAWEBhalt: TTimeField
      FieldName = 'halt'
    end
    object zqry_SGREVENDAWEBidusualt: TWideStringField
      FieldName = 'idusualt'
      Size = 8
    end
    object zqry_SGREVENDAWEBativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object zqry_SGREVENDAWEBdiabase: TWideStringField
      FieldName = 'diabase'
      Size = 2
    end
    object zqry_SGREVENDAWEBvlrmensal: TFloatField
      FieldName = 'vlrmensal'
    end
  end
  object zdts_SGREVENDAWEB: TDataSource
    DataSet = zqry_SGREVENDAWEB
    Left = 120
    Top = 160
  end
  object zqry_SGATUALIZACAO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgatualizacao')
    Params = <>
    Left = 376
    Top = 56
    object zqry_SGATUALIZACAOCODATUALIZACAO: TIntegerField
      FieldName = 'CODATUALIZACAO'
      Required = True
    end
    object zqry_SGATUALIZACAODATALANCAMENTO: TDateTimeField
      FieldName = 'DATALANCAMENTO'
    end
    object zqry_SGATUALIZACAOMODULO: TWideStringField
      FieldName = 'MODULO'
    end
    object zqry_SGATUALIZACAOVERSAO: TWideStringField
      FieldName = 'VERSAO'
      Size = 10
    end
    object zqry_SGATUALIZACAOCOMENTARIO: TWideStringField
      FieldName = 'COMENTARIO'
      Size = 1000
    end
    object zqry_SGATUALIZACAOSCRIPT: TWideStringField
      FieldName = 'SCRIPT'
      Size = 1
    end
    object zqry_SGATUALIZACAOATUAL: TWideStringField
      FieldName = 'ATUAL'
      Size = 1
    end
    object zqry_SGATUALIZACAOPARTNER: TWideStringField
      FieldName = 'PARTNER'
      Size = 1
    end
    object zqry_SGATUALIZACAOBAIXADO: TWideStringField
      FieldName = 'BAIXADO'
      Size = 1
    end
    object zqry_SGATUALIZACAOEXECUTADO: TWideStringField
      FieldName = 'EXECUTADO'
      Size = 1
    end
  end
  object zdts_SGATUALIZACAO: TDataSource
    DataSet = zqry_SGATUALIZACAO
    Left = 472
    Top = 56
  end
  object zqry_PVMOVCAIXA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from pvmovcaixa')
    Params = <>
    Left = 376
    Top = 248
    object zqry_PVMOVCAIXACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_PVMOVCAIXACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_PVMOVCAIXACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Required = True
    end
    object zqry_PVMOVCAIXADTAMOV: TDateField
      FieldName = 'DTAMOV'
      Required = True
    end
    object zqry_PVMOVCAIXANROMOV: TIntegerField
      FieldName = 'NROMOV'
      Required = True
    end
    object zqry_PVMOVCAIXATIPOMOV: TWideStringField
      FieldName = 'TIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_PVMOVCAIXAVLRMOV: TExtendedField
      FieldName = 'VLRMOV'
      Required = True
      DisplayFormat = '#,###0.00'
      Precision = 19
    end
    object zqry_PVMOVCAIXAVLRSLDMOV: TExtendedField
      FieldName = 'VLRSLDMOV'
      DisplayFormat = '#,###0.00'
      Precision = 19
    end
    object zqry_PVMOVCAIXACODEMPUS: TIntegerField
      FieldName = 'CODEMPUS'
      Required = True
    end
    object zqry_PVMOVCAIXACODFILIALUS: TSmallintField
      FieldName = 'CODFILIALUS'
      Required = True
    end
    object zqry_PVMOVCAIXAIDUSU: TWideStringField
      FieldName = 'IDUSU'
      Required = True
      Size = 8
    end
    object zqry_PVMOVCAIXADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_PVMOVCAIXAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_PVMOVCAIXAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_PVMOVCAIXADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_PVMOVCAIXAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_PVMOVCAIXAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_PVMOVCAIXAITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object zdts_PVMOVCAIXA: TDataSource
    DataSet = zqry_PVMOVCAIXA
    Left = 472
    Top = 248
  end
  object zqry_SGFILIAL: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgfilial')
    Params = <>
    Left = 376
    Top = 536
    object zqry_SGFILIALCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGFILIALCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGFILIALRAZFILIAL: TWideStringField
      FieldName = 'RAZFILIAL'
      Required = True
      Size = 50
    end
    object zqry_SGFILIALNOMEFILIAL: TWideStringField
      FieldName = 'NOMEFILIAL'
      Required = True
      Size = 50
    end
    object zqry_SGFILIALMZFILIAL: TWideStringField
      FieldName = 'MZFILIAL'
      Required = True
      Size = 1
    end
    object zqry_SGFILIALCNPJFILIAL: TWideStringField
      FieldName = 'CNPJFILIAL'
      Size = 14
    end
    object zqry_SGFILIALINSCFILIAL: TWideStringField
      FieldName = 'INSCFILIAL'
    end
    object zqry_SGFILIALENDFILIAL: TWideStringField
      FieldName = 'ENDFILIAL'
      Size = 50
    end
    object zqry_SGFILIALNUMFILIAL: TIntegerField
      FieldName = 'NUMFILIAL'
    end
    object zqry_SGFILIALCOMPLFILIAL: TWideStringField
      FieldName = 'COMPLFILIAL'
    end
    object zqry_SGFILIALBAIRFILIAL: TWideStringField
      FieldName = 'BAIRFILIAL'
      Size = 30
    end
    object zqry_SGFILIALCEPFILIAL: TWideStringField
      FieldName = 'CEPFILIAL'
      Size = 8
    end
    object zqry_SGFILIALCIDFILIAL: TWideStringField
      FieldName = 'CIDFILIAL'
      Size = 30
    end
    object zqry_SGFILIALUFFILIAL: TWideStringField
      FieldName = 'UFFILIAL'
      Size = 2
    end
    object zqry_SGFILIALDDDFILIAL: TWideStringField
      FieldName = 'DDDFILIAL'
      Size = 4
    end
    object zqry_SGFILIALFONEFILIAL: TWideStringField
      FieldName = 'FONEFILIAL'
      Size = 12
    end
    object zqry_SGFILIALFAXFILIAL: TWideStringField
      FieldName = 'FAXFILIAL'
      Size = 9
    end
    object zqry_SGFILIALEMAILFILIAL: TWideStringField
      FieldName = 'EMAILFILIAL'
      Size = 50
    end
    object zqry_SGFILIALWWWFILIAL: TWideStringField
      FieldName = 'WWWFILIAL'
      Size = 50
    end
    object zqry_SGFILIALCODDISTFILIAL: TIntegerField
      FieldName = 'CODDISTFILIAL'
    end
    object zqry_SGFILIALPERCPISFILIAL: TFloatField
      FieldName = 'PERCPISFILIAL'
    end
    object zqry_SGFILIALPERCCOFINSFILIAL: TFloatField
      FieldName = 'PERCCOFINSFILIAL'
    end
    object zqry_SGFILIALPERCIRFILIAL: TFloatField
      FieldName = 'PERCIRFILIAL'
    end
    object zqry_SGFILIALPERCCSOCIALFILIAL: TFloatField
      FieldName = 'PERCCSOCIALFILIAL'
    end
    object zqry_SGFILIALSIMPLESFILIAL: TWideStringField
      FieldName = 'SIMPLESFILIAL'
      Size = 1
    end
    object zqry_SGFILIALPERCSIMPLESFILIAL: TFloatField
      FieldName = 'PERCSIMPLESFILIAL'
    end
    object zqry_SGFILIALCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_SGFILIALSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_SGFILIALCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_SGFILIALCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_SGFILIALCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_SGFILIALCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_SGFILIALINSCMUNFILIAL: TWideStringField
      FieldName = 'INSCMUNFILIAL'
      Size = 15
    end
    object zqry_SGFILIALCNAEFILIAL: TWideStringField
      FieldName = 'CNAEFILIAL'
      Size = 7
    end
    object zqry_SGFILIALPERCISSFILIAL: TFloatField
      FieldName = 'PERCISSFILIAL'
    end
    object zqry_SGFILIALCONTRIBIPIFILIAL: TWideStringField
      FieldName = 'CONTRIBIPIFILIAL'
      Required = True
      Size = 1
    end
    object zqry_SGFILIALTIMBREFILIAL: TBlobField
      FieldName = 'TIMBREFILIAL'
    end
    object zqry_SGFILIALPERFILFILIAL: TWideStringField
      FieldName = 'PERFILFILIAL'
      Size = 1
    end
    object zqry_SGFILIALINDATIVFILIAL: TWideStringField
      FieldName = 'INDATIVFILIAL'
      Size = 1
    end
    object zqry_SGFILIALINDNATPJFILIAL: TWideStringField
      FieldName = 'INDNATPJFILIAL'
      Size = 2
    end
    object zqry_SGFILIALCODEMPCO: TIntegerField
      FieldName = 'CODEMPCO'
    end
    object zqry_SGFILIALCODFILIALCO: TSmallintField
      FieldName = 'CODFILIALCO'
    end
    object zqry_SGFILIALCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_SGFILIALSUFRAMA: TWideStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object zqry_SGFILIALCODINCTRIB: TWideStringField
      FieldName = 'CODINCTRIB'
      Size = 1
    end
    object zqry_SGFILIALINDAPROCRED: TWideStringField
      FieldName = 'INDAPROCRED'
      Size = 1
    end
    object zqry_SGFILIALCODTIPOCONT: TWideStringField
      FieldName = 'CODTIPOCONT'
      Size = 1
    end
    object zqry_SGFILIALINDREGCUM: TWideStringField
      FieldName = 'INDREGCUM'
      Size = 1
    end
    object zqry_SGFILIALUNIDFRANQUEADA: TWideStringField
      FieldName = 'UNIDFRANQUEADA'
      Size = 30
    end
    object zqry_SGFILIALMARCAFRANQUEADORA: TWideStringField
      FieldName = 'MARCAFRANQUEADORA'
      Size = 30
    end
    object zqry_SGFILIALWWWFRANQUEADORA: TWideStringField
      FieldName = 'WWWFRANQUEADORA'
      Size = 50
    end
    object zqry_SGFILIALCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
    end
    object zqry_SGFILIALDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGFILIALHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGFILIALIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGFILIALDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGFILIALHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGFILIALIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGFILIALPERFILEPC: TWideStringField
      FieldName = 'PERFILEPC'
      Size = 1
    end
    object zqry_SGFILIALINDATIVEPC: TWideStringField
      FieldName = 'INDATIVEPC'
      Size = 1
    end
    object zqry_SGFILIALLOGOPREFEITURA: TBlobField
      FieldName = 'LOGOPREFEITURA'
    end
    object zqry_SGFILIALCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object zqry_SGFILIALNOMERESP: TWideStringField
      FieldName = 'NOMERESP'
      Size = 50
    end
    object zqry_SGFILIALCPFRESP: TWideStringField
      FieldName = 'CPFRESP'
      Size = 11
    end
    object zqry_SGFILIALCEPRESP: TWideStringField
      FieldName = 'CEPRESP'
      Size = 8
    end
    object zqry_SGFILIALENDRESP: TWideStringField
      FieldName = 'ENDRESP'
      Size = 50
    end
    object zqry_SGFILIALNUMRESP: TWideStringField
      FieldName = 'NUMRESP'
      Size = 10
    end
    object zqry_SGFILIALCOMPLRESP: TWideStringField
      FieldName = 'COMPLRESP'
      Size = 10
    end
    object zqry_SGFILIALBAIRRORESP: TWideStringField
      FieldName = 'BAIRRORESP'
      Size = 30
    end
    object zqry_SGFILIALFONERESP: TWideStringField
      FieldName = 'FONERESP'
      Size = 14
    end
    object zqry_SGFILIALFAXRESP: TWideStringField
      FieldName = 'FAXRESP'
      Size = 14
    end
    object zqry_SGFILIALEMAILRESP: TWideStringField
      FieldName = 'EMAILRESP'
      Size = 100
    end
    object zqry_SGFILIALFOTO: TWideMemoField
      FieldName = 'FOTO'
      BlobType = ftWideMemo
    end
    object zqry_SGFILIALDESATIVADO: TWideStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object zqry_SGFILIALNOMEREDUZIDO: TWideStringField
      FieldName = 'NOMEREDUZIDO'
      Size = 15
    end
    object zqry_SGFILIALTX_JUROS_BOLETO: TSingleField
      FieldName = 'TX_JUROS_BOLETO'
    end
    object zqry_SGFILIALTX_MULTA_BOLETO: TSingleField
      FieldName = 'TX_MULTA_BOLETO'
    end
    object zqry_SGFILIALDIAS_ATRASO_BOLETO: TSmallintField
      FieldName = 'DIAS_ATRASO_BOLETO'
    end
    object zqry_SGFILIALDIAS_PROTESTO_BOLETO: TSmallintField
      FieldName = 'DIAS_PROTESTO_BOLETO'
    end
    object zqry_SGFILIALMSG_BOLETO: TWideStringField
      FieldName = 'MSG_BOLETO'
      Size = 100
    end
    object zqry_SGFILIALPATH_COPIA_NFE: TWideStringField
      FieldName = 'PATH_COPIA_NFE'
      Size = 255
    end
    object zqry_SGFILIALMARCAUNICA: TWideStringField
      FieldName = 'MARCAUNICA'
    end
    object zqry_SGFILIALTEF_CAPPTA: TWideStringField
      FieldName = 'TEF_CAPPTA'
      Size = 1
    end
    object zqry_SGFILIALTEF_TROCA: TWideStringField
      FieldName = 'TEF_TROCA'
      Size = 1
    end
    object zqry_SGFILIALNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_SGFILIALCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_SGFILIALCAIXA_FINALIZA: TIntegerField
      FieldName = 'CAIXA_FINALIZA'
    end
    object zqry_SGFILIALCODFORN_REC: TIntegerField
      FieldName = 'CODFORN_REC'
    end
    object zqry_SGFILIALCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_SGFILIALRECAGRO: TWideStringField
      FieldName = 'RECAGRO'
      Size = 1
    end
    object zqry_SGFILIALCODEMPREC: TIntegerField
      FieldName = 'CODEMPREC'
    end
    object zqry_SGFILIALCODFILIALREC: TIntegerField
      FieldName = 'CODFILIALREC'
    end
    object zqry_SGFILIALCODEMPRECAT: TIntegerField
      FieldName = 'CODEMPRECAT'
    end
    object zqry_SGFILIALCODFILIALRECAT: TIntegerField
      FieldName = 'CODFILIALRECAT'
    end
    object zqry_SGFILIALDESTICMS: TSingleField
      FieldName = 'DESTICMS'
    end
    object zqry_SGFILIALTIPO_PARC_TEF: TWideStringField
      FieldName = 'TIPO_PARC_TEF'
      Size = 1
    end
    object zqry_SGFILIALSATCFE: TWideStringField
      FieldName = 'SATCFE'
      Size = 1
    end
    object zqry_SGFILIALESCOLA: TWideStringField
      FieldName = 'ESCOLA'
      Size = 1
    end
    object zqry_SGFILIALCODREV: TIntegerField
      FieldName = 'CODREV'
    end
    object zqry_SGFILIAL_CODUF: TStringField
      FieldKind = fkLookup
      FieldName = '_CODUF'
      LookupDataSet = zqry_SGUF
      LookupKeyFields = 'SIGLAUF'
      LookupResultField = 'CODUF'
      KeyFields = 'SIGLAUF'
      Size = 2
      Lookup = True
    end
  end
  object zdts_SGFILIAL: TDataSource
    DataSet = zqry_SGFILIAL
    Left = 472
    Top = 536
  end
  object zqry_SGLICENCA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sglicenca')
    Params = <>
    Left = 376
    Top = 104
    object zqry_SGLICENCACODLICENCA: TIntegerField
      FieldName = 'CODLICENCA'
      Required = True
    end
    object zqry_SGLICENCABLOCO1: TWideStringField
      FieldName = 'BLOCO1'
      Required = True
      Size = 2
    end
    object zqry_SGLICENCABLOCO2: TWideStringField
      FieldName = 'BLOCO2'
      Required = True
      Size = 3
    end
    object zqry_SGLICENCABLOCO3: TWideStringField
      FieldName = 'BLOCO3'
      Required = True
      Size = 3
    end
    object zqry_SGLICENCABLOCO4: TWideStringField
      FieldName = 'BLOCO4'
      Required = True
      Size = 4
    end
    object zqry_SGLICENCABLOCO5: TWideStringField
      FieldName = 'BLOCO5'
      Required = True
      Size = 2
    end
    object zqry_SGLICENCACHAVEA: TWideStringField
      FieldName = 'CHAVEA'
      Required = True
      Size = 4
    end
    object zqry_SGLICENCACHAVEB: TWideStringField
      FieldName = 'CHAVEB'
      Required = True
      Size = 4
    end
    object zqry_SGLICENCAMAQUINA: TWideStringField
      FieldName = 'MAQUINA'
      Required = True
      Size = 17
    end
    object zqry_SGLICENCALICENCAA: TWideStringField
      FieldName = 'LICENCAA'
      Size = 14
    end
    object zqry_SGLICENCACODREV: TIntegerField
      FieldName = 'CODREV'
    end
    object zqry_SGLICENCALICENCAALLES: TWideStringField
      FieldName = 'LICENCAALLES'
      Size = 14
    end
    object zqry_SGLICENCACODEMPALLES: TIntegerField
      FieldName = 'CODEMPALLES'
    end
  end
  object zdts_SGLICENCA: TDataSource
    DataSet = zqry_SGLICENCA
    Left = 472
    Top = 104
  end
  object zqry_SGJSON: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sgjson')
    Params = <>
    Left = 40
    Top = 208
    object zqry_SGJSONcodsgjson: TIntegerField
      FieldName = 'codsgjson'
      Required = True
    end
    object zqry_SGJSONcadastro: TDateTimeField
      FieldName = 'cadastro'
      Required = True
    end
    object zqry_SGJSONchave: TWideStringField
      FieldName = 'chave'
      Required = True
      Size = 18
    end
    object zqry_SGJSONcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_SGJSONcodtabela: TIntegerField
      FieldName = 'codtabela'
      Required = True
    end
    object zqry_SGJSONsequencia: TIntegerField
      FieldName = 'sequencia'
      Required = True
    end
    object zqry_SGJSONacao: TWideStringField
      FieldName = 'acao'
      Required = True
      Size = 1
    end
  end
  object zdts_SGJSON: TDataSource
    DataSet = zqry_SGJSON
    Left = 120
    Top = 208
  end
  object zqry_EQMARCA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqmarca')
    Params = <>
    Left = 376
    Top = 584
    object zqry_EQMARCACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQMARCACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQMARCACODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_EQMARCADESCMARCA: TWideStringField
      FieldName = 'DESCMARCA'
      Required = True
      Size = 40
    end
    object zqry_EQMARCASIGLAMARCA: TWideStringField
      FieldName = 'SIGLAMARCA'
    end
    object zqry_EQMARCADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQMARCAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQMARCAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQMARCADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQMARCAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQMARCAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQMARCA: TDataSource
    DataSet = zqry_EQMARCA
    Left = 472
    Top = 584
  end
  object zqry_SGSEQUENCIA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgsequencia')
    Params = <>
    Left = 376
    Top = 630
    object zqry_SGSEQUENCIACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGSEQUENCIACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGSEQUENCIASGTAB: TWideStringField
      FieldName = 'SGTAB'
      Required = True
      Size = 2
    end
    object zqry_SGSEQUENCIANROSEQ: TIntegerField
      FieldName = 'NROSEQ'
    end
    object zqry_SGSEQUENCIADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGSEQUENCIAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGSEQUENCIAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGSEQUENCIADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGSEQUENCIAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGSEQUENCIAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_SGSEQUENCIA: TDataSource
    DataSet = zqry_SGSEQUENCIA
    Left = 472
    Top = 632
  end
  object zqry_EQPRODUTO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqproduto')
    Params = <>
    Left = 376
    Top = 344
    object zqry_EQPRODUTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQPRODUTOCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQPRODUTODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_EQPRODUTOREFPROD: TWideStringField
      FieldName = 'REFPROD'
      Required = True
    end
    object zqry_EQPRODUTOCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_EQPRODUTOCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_EQPRODUTOCODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_EQPRODUTOCODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_EQPRODUTOCODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALUD: TSmallintField
      FieldName = 'CODFILIALUD'
      Required = True
    end
    object zqry_EQPRODUTOCODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_EQPRODUTOCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALFC: TSmallintField
      FieldName = 'CODFILIALFC'
      Required = True
    end
    object zqry_EQPRODUTOCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_EQPRODUTOCODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
      Required = True
    end
    object zqry_EQPRODUTOCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_EQPRODUTODESCAUXPROD: TWideStringField
      FieldName = 'DESCAUXPROD'
      Size = 40
    end
    object zqry_EQPRODUTOTIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Required = True
      Size = 2
    end
    object zqry_EQPRODUTOCVPROD: TWideStringField
      FieldName = 'CVPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOCODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
      Required = True
    end
    object zqry_EQPRODUTOCODFILIALGP: TSmallintField
      FieldName = 'CODFILIALGP'
      Required = True
    end
    object zqry_EQPRODUTOCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_EQPRODUTOCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_EQPRODUTOCLOTEPROD: TWideStringField
      FieldName = 'CLOTEPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOSERIEPROD: TWideStringField
      FieldName = 'SERIEPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOCODFABPROD: TWideStringField
      FieldName = 'CODFABPROD'
      Size = 30
    end
    object zqry_EQPRODUTOCOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_EQPRODUTOPESOLIQPROD: TExtendedField
      FieldName = 'PESOLIQPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOPESOBRUTPROD: TExtendedField
      FieldName = 'PESOBRUTPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOQTDMINPROD: TExtendedField
      FieldName = 'QTDMINPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOQTDMAXPROD: TExtendedField
      FieldName = 'QTDMAXPROD'
      Precision = 19
    end
    object zqry_EQPRODUTODTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_EQPRODUTOCUSTOMPMPROD: TExtendedField
      FieldName = 'CUSTOMPMPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOCUSTOPEPSPROD: TExtendedField
      FieldName = 'CUSTOPEPSPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOCUSTOINFOPROD: TExtendedField
      FieldName = 'CUSTOINFOPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOPRECOBASEPROD: TExtendedField
      FieldName = 'PRECOBASEPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOPRECOCOMISPROD: TExtendedField
      FieldName = 'PRECOCOMISPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOSLDPROD: TExtendedField
      FieldName = 'SLDPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOSLDRESPROD: TExtendedField
      FieldName = 'SLDRESPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOSLDCONSIGPROD: TExtendedField
      FieldName = 'SLDCONSIGPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOSLDLIQPROD: TExtendedField
      FieldName = 'SLDLIQPROD'
      Precision = 19
    end
    object zqry_EQPRODUTOATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_EQPRODUTODTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_EQPRODUTOQTDULTCPPROD: TExtendedField
      FieldName = 'QTDULTCPPROD'
      Precision = 19
    end
    object zqry_EQPRODUTODESCCOMPPROD: TWideStringField
      FieldName = 'DESCCOMPPROD'
      Size = 500
    end
    object zqry_EQPRODUTOOBSPROD: TWideStringField
      FieldName = 'OBSPROD'
      Size = 10000
    end
    object zqry_EQPRODUTOVERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_EQPRODUTORMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOCODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_EQPRODUTOCODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_EQPRODUTOCODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_EQPRODUTOCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_EQPRODUTOCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_EQPRODUTOANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_EQPRODUTOCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_EQPRODUTOUSARECEITAPROD: TWideStringField
      FieldName = 'USARECEITAPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOUSATELAADICPDV: TWideStringField
      FieldName = 'USATELAADICPDV'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOVLRDENSIDADE: TExtendedField
      FieldName = 'VLRDENSIDADE'
      Precision = 19
    end
    object zqry_EQPRODUTOVLRCONCENT: TExtendedField
      FieldName = 'VLRCONCENT'
      Precision = 19
    end
    object zqry_EQPRODUTOCOMPRIMENTO: TExtendedField
      FieldName = 'COMPRIMENTO'
      Precision = 19
    end
    object zqry_EQPRODUTOLARGURA: TExtendedField
      FieldName = 'LARGURA'
      Precision = 19
    end
    object zqry_EQPRODUTOESPESSURA: TExtendedField
      FieldName = 'ESPESSURA'
      Precision = 19
    end
    object zqry_EQPRODUTOGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOQTDEMBALAGEM: TExtendedField
      FieldName = 'QTDEMBALAGEM'
      Required = True
      Precision = 19
    end
    object zqry_EQPRODUTOCODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_EQPRODUTOCUBAGEM: TExtendedField
      FieldName = 'CUBAGEM'
      Precision = 19
    end
    object zqry_EQPRODUTOCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_EQPRODUTOCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_EQPRODUTOCODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_EQPRODUTOCODEMPTC: TSmallintField
      FieldName = 'CODEMPTC'
    end
    object zqry_EQPRODUTOCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_EQPRODUTOCODTPCHAMADO: TIntegerField
      FieldName = 'CODTPCHAMADO'
    end
    object zqry_EQPRODUTOQTDHORASSERV: TExtendedField
      FieldName = 'QTDHORASSERV'
      Precision = 19
    end
    object zqry_EQPRODUTONRODIASVALID: TSmallintField
      FieldName = 'NRODIASVALID'
    end
    object zqry_EQPRODUTODESCCLI: TWideStringField
      FieldName = 'DESCCLI'
      Size = 1
    end
    object zqry_EQPRODUTOQTDPORPLANO: TSmallintField
      FieldName = 'QTDPORPLANO'
    end
    object zqry_EQPRODUTONROPLANOS: TSmallintField
      FieldName = 'NROPLANOS'
    end
    object zqry_EQPRODUTOCERTFSC: TWideStringField
      FieldName = 'CERTFSC'
      Size = 1
    end
    object zqry_EQPRODUTOFATORFSC: TExtendedField
      FieldName = 'FATORFSC'
      Precision = 19
    end
    object zqry_EQPRODUTOCODEMPOG: TIntegerField
      FieldName = 'CODEMPOG'
    end
    object zqry_EQPRODUTOCODFILIALOG: TSmallintField
      FieldName = 'CODFILIALOG'
    end
    object zqry_EQPRODUTOCODPRODOG: TIntegerField
      FieldName = 'CODPRODOG'
    end
    object zqry_EQPRODUTOCODEMPMG: TIntegerField
      FieldName = 'CODEMPMG'
    end
    object zqry_EQPRODUTOCODFILIALMG: TSmallintField
      FieldName = 'CODFILIALMG'
    end
    object zqry_EQPRODUTOCODMODG: TIntegerField
      FieldName = 'CODMODG'
    end
    object zqry_EQPRODUTOPRAZOREPO: TIntegerField
      FieldName = 'PRAZOREPO'
    end
    object zqry_EQPRODUTOMEDIAVENDA: TExtendedField
      FieldName = 'MEDIAVENDA'
      Precision = 19
    end
    object zqry_EQPRODUTOEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQPRODUTOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQPRODUTOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQPRODUTODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQPRODUTOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQPRODUTOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_EQPRODUTOFINAME: TWideStringField
      FieldName = 'FINAME'
      Size = 10
    end
    object zqry_EQPRODUTOMDA: TWideStringField
      FieldName = 'MDA'
      Size = 10
    end
    object zqry_EQPRODUTOPTSFIDELIDADE: TIntegerField
      FieldName = 'PTSFIDELIDADE'
    end
    object zqry_EQPRODUTOCURVA: TWideStringField
      FieldName = 'CURVA'
      Size = 1
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA'
      Size = 10
    end
    object zqry_EQPRODUTOPROD_ORIGEM: TWideStringField
      FieldName = 'PROD_ORIGEM'
      Size = 10
    end
    object zqry_EQPRODUTOPROD_IAT: TWideStringField
      FieldName = 'PROD_IAT'
      Size = 3
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_OUTRO_EST'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_ENTRADA'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_SAIDA'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_PIS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_PIS'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_COFINS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_COFINS'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_ISSQN: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_ISSQN'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_ICMS: TWideStringField
      FieldName = 'PROD_ICMS'
      Size = 11
    end
    object zqry_EQPRODUTOPROD_COD_SERVICO_ISSQN: TWideStringField
      FieldName = 'PROD_COD_SERVICO_ISSQN'
      Size = 7
    end
    object zqry_EQPRODUTOPROD_BLOQUEIO: TWideStringField
      FieldName = 'PROD_BLOQUEIO'
      Size = 3
    end
    object zqry_EQPRODUTOPROD_USA_PROMO: TWideStringField
      FieldName = 'PROD_USA_PROMO'
      Size = 3
    end
    object zqry_EQPRODUTOPROD_PBALANCA: TWideStringField
      FieldName = 'PROD_PBALANCA'
      Size = 3
    end
    object zqry_EQPRODUTOPROD_ATIVO: TWideStringField
      FieldName = 'PROD_ATIVO'
      Size = 3
    end
    object zqry_EQPRODUTOCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 10
    end
    object zqry_EQPRODUTOMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object zqry_EQPRODUTOICRE: TWideStringField
      FieldName = 'ICRE'
      Size = 15
    end
    object zqry_EQPRODUTOCEST: TWideStringField
      FieldName = 'CEST'
      Size = 7
    end
    object zqry_EQPRODUTOPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object zqry_EQPRODUTOCODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_EQPRODUTOINTERVSEGUR: TIntegerField
      FieldName = 'INTERVSEGUR'
    end
    object zqry_EQPRODUTOCLASSETOXICO: TWideStringField
      FieldName = 'CLASSETOXICO'
      Size = 2
    end
    object zqry_EQPRODUTOGRUPOQUIMICO: TWideStringField
      FieldName = 'GRUPOQUIMICO'
      Size = 50
    end
    object zqry_EQPRODUTONOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_EQPRODUTOPRINCIPIOATIVO: TWideStringField
      FieldName = 'PRINCIPIOATIVO'
      Size = 50
    end
    object zqry_EQPRODUTOLOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
    end
    object zqry_EQPRODUTOCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 1
    end
    object zqry_EQPRODUTOCLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 50
    end
    object zqry_EQPRODUTOCONCENTRACAO: TWideStringField
      FieldName = 'CONCENTRACAO'
      Size = 15
    end
    object zqry_EQPRODUTOFORMULACAO: TWideStringField
      FieldName = 'FORMULACAO'
      Size = 50
    end
    object zqry_EQPRODUTOANTIDOTO: TWideStringField
      FieldName = 'ANTIDOTO'
      Size = 10000
    end
    object zqry_EQPRODUTOMULTIPLICADOR: TSingleField
      FieldName = 'MULTIPLICADOR'
    end
    object zqry_EQPRODUTOCODBALANCA: TIntegerField
      FieldName = 'CODBALANCA'
    end
    object zqry_EQPRODUTOCODRFIDPROD: TIntegerField
      FieldName = 'CODRFIDPROD'
    end
    object zqry_EQPRODUTOPROD_SITRIBUTARIA_CSOSN: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_CSOSN'
      Size = 4
    end
  end
  object zdts_EQPRODUTO: TDataSource
    DataSet = zqry_EQPRODUTO
    Left = 472
    Top = 344
  end
  object Integra: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = ''
    Port = 3050
    Database = ''
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 704
    Top = 8
  end
  object zqry_INT_VDCLIENTE: TZQuery
    Connection = Integra
    SQL.Strings = (
      'select * from vdcliente')
    Params = <>
    Left = 704
    Top = 56
    object zqry_INT_VDCLIENTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_INT_VDCLIENTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_INT_VDCLIENTECODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_INT_VDCLIENTERAZCLI: TWideStringField
      FieldName = 'RAZCLI'
      Required = True
      Size = 60
    end
    object zqry_INT_VDCLIENTENOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Required = True
      Size = 50
    end
    object zqry_INT_VDCLIENTECODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_INT_VDCLIENTECODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_INT_VDCLIENTECODCLASCLI: TIntegerField
      FieldName = 'CODCLASCLI'
    end
    object zqry_INT_VDCLIENTECODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_INT_VDCLIENTECODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_INT_VDCLIENTECODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_INT_VDCLIENTECODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_INT_VDCLIENTECODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_INT_VDCLIENTECODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_INT_VDCLIENTECODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_INT_VDCLIENTECODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_INT_VDCLIENTECODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_INT_VDCLIENTECODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_INT_VDCLIENTECODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_INT_VDCLIENTECODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_INT_VDCLIENTECODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_INT_VDCLIENTECODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_INT_VDCLIENTECODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_INT_VDCLIENTECODEMPSR: TIntegerField
      FieldName = 'CODEMPSR'
    end
    object zqry_INT_VDCLIENTECODFILIALSR: TSmallintField
      FieldName = 'CODFILIALSR'
    end
    object zqry_INT_VDCLIENTECODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object zqry_INT_VDCLIENTECODEMPTI: TIntegerField
      FieldName = 'CODEMPTI'
      Required = True
    end
    object zqry_INT_VDCLIENTECODFILIALTI: TSmallintField
      FieldName = 'CODFILIALTI'
      Required = True
    end
    object zqry_INT_VDCLIENTECODTIPOCLI: TIntegerField
      FieldName = 'CODTIPOCLI'
      Required = True
    end
    object zqry_INT_VDCLIENTECODTPCRED: TIntegerField
      FieldName = 'CODTPCRED'
    end
    object zqry_INT_VDCLIENTECODFILIALTR: TIntegerField
      FieldName = 'CODFILIALTR'
    end
    object zqry_INT_VDCLIENTECODEMPTR: TIntegerField
      FieldName = 'CODEMPTR'
    end
    object zqry_INT_VDCLIENTECODFISCCLI: TIntegerField
      FieldName = 'CODFISCCLI'
    end
    object zqry_INT_VDCLIENTECODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
    end
    object zqry_INT_VDCLIENTECODFILIALFC: TIntegerField
      FieldName = 'CODFILIALFC'
    end
    object zqry_INT_VDCLIENTECODEMPEC: TIntegerField
      FieldName = 'CODEMPEC'
    end
    object zqry_INT_VDCLIENTECODFILIALEC: TSmallintField
      FieldName = 'CODFILIALEC'
    end
    object zqry_INT_VDCLIENTECODTBEC: TSmallintField
      FieldName = 'CODTBEC'
    end
    object zqry_INT_VDCLIENTECODITTBEC: TIntegerField
      FieldName = 'CODITTBEC'
    end
    object zqry_INT_VDCLIENTECODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_INT_VDCLIENTECODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_INT_VDCLIENTECODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_INT_VDCLIENTECODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_INT_VDCLIENTECODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_INT_VDCLIENTECODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_INT_VDCLIENTEDATACLI: TDateField
      FieldName = 'DATACLI'
      Required = True
    end
    object zqry_INT_VDCLIENTEPESSOACLI: TWideStringField
      FieldName = 'PESSOACLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTEATIVOCLI: TWideStringField
      FieldName = 'ATIVOCLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTECNPJCLI: TWideStringField
      FieldName = 'CNPJCLI'
      Size = 14
    end
    object zqry_INT_VDCLIENTEINSCCLI: TWideStringField
      FieldName = 'INSCCLI'
    end
    object zqry_INT_VDCLIENTECPFCLI: TWideStringField
      FieldName = 'CPFCLI'
      Size = 11
    end
    object zqry_INT_VDCLIENTERGCLI: TWideStringField
      FieldName = 'RGCLI'
      Size = 13
    end
    object zqry_INT_VDCLIENTESSPCLI: TWideStringField
      FieldName = 'SSPCLI'
      Size = 10
    end
    object zqry_INT_VDCLIENTEENDCLI: TWideStringField
      FieldName = 'ENDCLI'
      Size = 50
    end
    object zqry_INT_VDCLIENTENUMCLI: TIntegerField
      FieldName = 'NUMCLI'
    end
    object zqry_INT_VDCLIENTECOMPLCLI: TWideStringField
      FieldName = 'COMPLCLI'
    end
    object zqry_INT_VDCLIENTEEDIFICIOCLI: TWideStringField
      FieldName = 'EDIFICIOCLI'
      Size = 30
    end
    object zqry_INT_VDCLIENTEBAIRCLI: TWideStringField
      FieldName = 'BAIRCLI'
      Size = 30
    end
    object zqry_INT_VDCLIENTECIDCLI: TWideStringField
      FieldName = 'CIDCLI'
      Size = 30
    end
    object zqry_INT_VDCLIENTEUFCLI: TWideStringField
      FieldName = 'UFCLI'
      Size = 2
    end
    object zqry_INT_VDCLIENTECEPCLI: TWideStringField
      FieldName = 'CEPCLI'
      Size = 8
    end
    object zqry_INT_VDCLIENTEDDDCLI: TWideStringField
      FieldName = 'DDDCLI'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFONECLI: TWideStringField
      FieldName = 'FONECLI'
      Size = 12
    end
    object zqry_INT_VDCLIENTERAMALCLI: TWideStringField
      FieldName = 'RAMALCLI'
      Size = 6
    end
    object zqry_INT_VDCLIENTEDDDFAXCLI: TWideStringField
      FieldName = 'DDDFAXCLI'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFAXCLI: TWideStringField
      FieldName = 'FAXCLI'
      Size = 9
    end
    object zqry_INT_VDCLIENTEEMAILCLI: TWideStringField
      FieldName = 'EMAILCLI'
      Size = 50
    end
    object zqry_INT_VDCLIENTEEMAILCOB: TWideStringField
      FieldName = 'EMAILCOB'
      Size = 50
    end
    object zqry_INT_VDCLIENTEEMAILENT: TWideStringField
      FieldName = 'EMAILENT'
      Size = 50
    end
    object zqry_INT_VDCLIENTEEMAILNFECLI: TWideStringField
      FieldName = 'EMAILNFECLI'
      Size = 50
    end
    object zqry_INT_VDCLIENTECONTCLI: TWideStringField
      FieldName = 'CONTCLI'
      Size = 40
    end
    object zqry_INT_VDCLIENTEENDCOB: TWideStringField
      FieldName = 'ENDCOB'
      Size = 50
    end
    object zqry_INT_VDCLIENTENUMCOB: TIntegerField
      FieldName = 'NUMCOB'
    end
    object zqry_INT_VDCLIENTECOMPLCOB: TWideStringField
      FieldName = 'COMPLCOB'
    end
    object zqry_INT_VDCLIENTEBAIRCOB: TWideStringField
      FieldName = 'BAIRCOB'
      Size = 30
    end
    object zqry_INT_VDCLIENTECIDCOB: TWideStringField
      FieldName = 'CIDCOB'
      Size = 30
    end
    object zqry_INT_VDCLIENTEUFCOB: TWideStringField
      FieldName = 'UFCOB'
      Size = 2
    end
    object zqry_INT_VDCLIENTECEPCOB: TWideStringField
      FieldName = 'CEPCOB'
      Size = 8
    end
    object zqry_INT_VDCLIENTEDDDFONECOB: TWideStringField
      FieldName = 'DDDFONECOB'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFONECOB: TWideStringField
      FieldName = 'FONECOB'
      Size = 12
    end
    object zqry_INT_VDCLIENTEDDDFAXCOB: TWideStringField
      FieldName = 'DDDFAXCOB'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFAXCOB: TWideStringField
      FieldName = 'FAXCOB'
      Size = 9
    end
    object zqry_INT_VDCLIENTEENDENT: TWideStringField
      FieldName = 'ENDENT'
      Size = 50
    end
    object zqry_INT_VDCLIENTENUMENT: TIntegerField
      FieldName = 'NUMENT'
    end
    object zqry_INT_VDCLIENTECOMPLENT: TWideStringField
      FieldName = 'COMPLENT'
    end
    object zqry_INT_VDCLIENTEBAIRENT: TWideStringField
      FieldName = 'BAIRENT'
      Size = 30
    end
    object zqry_INT_VDCLIENTECIDENT: TWideStringField
      FieldName = 'CIDENT'
      Size = 30
    end
    object zqry_INT_VDCLIENTEUFENT: TWideStringField
      FieldName = 'UFENT'
      Size = 2
    end
    object zqry_INT_VDCLIENTECEPENT: TWideStringField
      FieldName = 'CEPENT'
      Size = 8
    end
    object zqry_INT_VDCLIENTEDDDFONEENT: TWideStringField
      FieldName = 'DDDFONEENT'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFONEENT: TWideStringField
      FieldName = 'FONEENT'
      Size = 12
    end
    object zqry_INT_VDCLIENTEDDDFAXENT: TWideStringField
      FieldName = 'DDDFAXENT'
      Size = 4
    end
    object zqry_INT_VDCLIENTEFAXENT: TWideStringField
      FieldName = 'FAXENT'
      Size = 9
    end
    object zqry_INT_VDCLIENTEDDDCELENT: TWideStringField
      FieldName = 'DDDCELENT'
      Size = 4
    end
    object zqry_INT_VDCLIENTECELENT: TWideStringField
      FieldName = 'CELENT'
      Size = 9
    end
    object zqry_INT_VDCLIENTEOBSCLI: TWideStringField
      FieldName = 'OBSCLI'
      Size = 10000
    end
    object zqry_INT_VDCLIENTEAGENCIACLI: TWideStringField
      FieldName = 'AGENCIACLI'
      Size = 6
    end
    object zqry_INT_VDCLIENTENCONTABCOCLI: TWideStringField
      FieldName = 'NCONTABCOCLI'
    end
    object zqry_INT_VDCLIENTECODEMPPQ: TIntegerField
      FieldName = 'CODEMPPQ'
    end
    object zqry_INT_VDCLIENTECODFILIALPQ: TSmallintField
      FieldName = 'CODFILIALPQ'
    end
    object zqry_INT_VDCLIENTECODPESQ: TIntegerField
      FieldName = 'CODPESQ'
    end
    object zqry_INT_VDCLIENTEINCRACLI: TWideStringField
      FieldName = 'INCRACLI'
      Size = 15
    end
    object zqry_INT_VDCLIENTEDTINITR: TDateField
      FieldName = 'DTINITR'
    end
    object zqry_INT_VDCLIENTEDTVENCTOTR: TDateField
      FieldName = 'DTVENCTOTR'
    end
    object zqry_INT_VDCLIENTENIRFCLI: TWideStringField
      FieldName = 'NIRFCLI'
      Size = 15
    end
    object zqry_INT_VDCLIENTESIMPLESCLI: TWideStringField
      FieldName = 'SIMPLESCLI'
      Size = 1
    end
    object zqry_INT_VDCLIENTEDDDCELCLI: TWideStringField
      FieldName = 'DDDCELCLI'
      Size = 4
    end
    object zqry_INT_VDCLIENTECELCLI: TWideStringField
      FieldName = 'CELCLI'
      Size = 9
    end
    object zqry_INT_VDCLIENTENATCLI: TWideStringField
      FieldName = 'NATCLI'
      Size = 30
    end
    object zqry_INT_VDCLIENTEUFNATCLI: TWideStringField
      FieldName = 'UFNATCLI'
      Size = 2
    end
    object zqry_INT_VDCLIENTETEMPORESCLI: TWideStringField
      FieldName = 'TEMPORESCLI'
    end
    object zqry_INT_VDCLIENTEAPELIDOCLI: TWideStringField
      FieldName = 'APELIDOCLI'
      Size = 30
    end
    object zqry_INT_VDCLIENTESITECLI: TWideStringField
      FieldName = 'SITECLI'
      Size = 50
    end
    object zqry_INT_VDCLIENTECODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_INT_VDCLIENTECODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_INT_VDCLIENTECODCLICONTAB: TWideStringField
      FieldName = 'CODCLICONTAB'
    end
    object zqry_INT_VDCLIENTEFOTOCLI: TBlobField
      FieldName = 'FOTOCLI'
    end
    object zqry_INT_VDCLIENTEIMGASSCLI: TBlobField
      FieldName = 'IMGASSCLI'
    end
    object zqry_INT_VDCLIENTECODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_INT_VDCLIENTESIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_INT_VDCLIENTECODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_INT_VDCLIENTECODMUNICENT: TWideStringField
      FieldName = 'CODMUNICENT'
      Size = 7
    end
    object zqry_INT_VDCLIENTESIGLAUFENT: TWideStringField
      FieldName = 'SIGLAUFENT'
      Size = 2
    end
    object zqry_INT_VDCLIENTECODPAISENT: TSmallintField
      FieldName = 'CODPAISENT'
    end
    object zqry_INT_VDCLIENTECODMUNICCOB: TWideStringField
      FieldName = 'CODMUNICCOB'
      Size = 7
    end
    object zqry_INT_VDCLIENTESIGLAUFCOB: TWideStringField
      FieldName = 'SIGLAUFCOB'
      Size = 2
    end
    object zqry_INT_VDCLIENTECODPAISCOB: TSmallintField
      FieldName = 'CODPAISCOB'
    end
    object zqry_INT_VDCLIENTECODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_INT_VDCLIENTECODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_INT_VDCLIENTECODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_INT_VDCLIENTESUFRAMACLI: TWideStringField
      FieldName = 'SUFRAMACLI'
      Size = 9
    end
    object zqry_INT_VDCLIENTEPRODRURALCLI: TWideStringField
      FieldName = 'PRODRURALCLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTECTOCLI: TWideStringField
      FieldName = 'CTOCLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTECODCNAE: TWideStringField
      FieldName = 'CODCNAE'
      Size = 15
    end
    object zqry_INT_VDCLIENTEINSCMUNCLI: TWideStringField
      FieldName = 'INSCMUNCLI'
    end
    object zqry_INT_VDCLIENTEPERCDESCCLI: TFloatField
      FieldName = 'PERCDESCCLI'
    end
    object zqry_INT_VDCLIENTECONTCLICOB: TWideStringField
      FieldName = 'CONTCLICOB'
      Size = 40
    end
    object zqry_INT_VDCLIENTECONTCLIENT: TWideStringField
      FieldName = 'CONTCLIENT'
      Size = 40
    end
    object zqry_INT_VDCLIENTEDESCIPI: TWideStringField
      FieldName = 'DESCIPI'
      Size = 1
    end
    object zqry_INT_VDCLIENTEIDENTCLIBCO: TWideStringField
      FieldName = 'IDENTCLIBCO'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTEDTNASCCLI: TDateField
      FieldName = 'DTNASCCLI'
    end
    object zqry_INT_VDCLIENTEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_INT_VDCLIENTEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_INT_VDCLIENTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_INT_VDCLIENTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_INT_VDCLIENTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_INT_VDCLIENTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_INT_VDCLIENTECONSUMIDORCLI: TWideStringField
      FieldName = 'CONSUMIDORCLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTESITREVCLI: TWideStringField
      FieldName = 'SITREVCLI'
      Required = True
      Size = 1
    end
    object zqry_INT_VDCLIENTEIDUSUREVCLI: TWideStringField
      FieldName = 'IDUSUREVCLI'
      Size = 128
    end
    object zqry_INT_VDCLIENTEDTREVCLI: TDateField
      FieldName = 'DTREVCLI'
    end
    object zqry_INT_VDCLIENTEHREVCLI: TTimeField
      FieldName = 'HREVCLI'
    end
    object zqry_INT_VDCLIENTECELENTOPERADORA: TWideStringField
      FieldName = 'CELENTOPERADORA'
      Size = 10
    end
    object zqry_INT_VDCLIENTECELENTWHATSAPP: TWideStringField
      FieldName = 'CELENTWHATSAPP'
      Size = 1
    end
    object zqry_INT_VDCLIENTECELCLIOPERADORA: TWideStringField
      FieldName = 'CELCLIOPERADORA'
      Size = 10
    end
    object zqry_INT_VDCLIENTECELCLIWHATSAPP: TWideStringField
      FieldName = 'CELCLIWHATSAPP'
      Size = 1
    end
    object zqry_INT_VDCLIENTEQTDPONTOS: TIntegerField
      FieldName = 'QTDPONTOS'
    end
    object zqry_INT_VDCLIENTESALDOCREDITO: TSingleField
      FieldName = 'SALDOCREDITO'
    end
    object zqry_INT_VDCLIENTEESTCIVIL: TWideStringField
      FieldName = 'ESTCIVIL'
    end
    object zqry_INT_VDCLIENTECODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_INT_VDCLIENTEDTSYNC: TDateField
      FieldName = 'DTSYNC'
    end
    object zqry_INT_VDCLIENTESYNC: TWideStringField
      FieldName = 'SYNC'
      Size = 1
    end
    object zqry_INT_VDCLIENTECARTAORFDI: TIntegerField
      FieldName = 'CARTAORFDI'
    end
    object zqry_INT_VDCLIENTEDIAVENCTO: TIntegerField
      FieldName = 'DIAVENCTO'
    end
    object zqry_INT_VDCLIENTEINSCPRODRURAL: TIntegerField
      FieldName = 'INSCPRODRURAL'
    end
    object zqry_INT_VDCLIENTEMEIRURALCLI: TWideStringField
      FieldName = 'MEIRURALCLI'
      Size = 1
    end
    object zqry_INT_VDCLIENTEARRENDATARIO: TWideStringField
      FieldName = 'ARRENDATARIO'
      Size = 1
    end
    object zqry_INT_VDCLIENTEDDDCELCLI2: TWideStringField
      FieldName = 'DDDCELCLI2'
      Size = 4
    end
    object zqry_INT_VDCLIENTECELCLI2: TWideStringField
      FieldName = 'CELCLI2'
      Size = 9
    end
    object zqry_INT_VDCLIENTECELCLIOPERADORA2: TWideStringField
      FieldName = 'CELCLIOPERADORA2'
      Size = 10
    end
    object zqry_INT_VDCLIENTECELCLIWHATSAPP2: TWideStringField
      FieldName = 'CELCLIWHATSAPP2'
      Size = 1
    end
    object zqry_INT_VDCLIENTEALUNO: TWideStringField
      FieldName = 'ALUNO'
      Size = 1
    end
    object zqry_INT_VDCLIENTERESPALUNO: TWideStringField
      FieldName = 'RESPALUNO'
      Size = 1
    end
    object zqry_INT_VDCLIENTESLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_INT_VDCLIENTECARTAORFID: TIntegerField
      FieldName = 'CARTAORFID'
    end
  end
  object dts_INT_VDCLIENTE: TDataSource
    DataSet = zqry_INT_VDCLIENTE
    Left = 792
    Top = 56
  end
  object zqry_WEB_VDCLIENTE: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from vdcliente')
    Params = <>
    Left = 40
    Top = 256
    object zqry_WEB_VDCLIENTEcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_WEB_VDCLIENTEcodfilial: TSmallintField
      FieldName = 'codfilial'
      Required = True
    end
    object zqry_WEB_VDCLIENTEcodcli: TIntegerField
      FieldName = 'codcli'
      Required = True
    end
    object zqry_WEB_VDCLIENTErazcli: TWideStringField
      FieldName = 'razcli'
      Required = True
      Size = 60
    end
    object zqry_WEB_VDCLIENTEnomecli: TWideStringField
      FieldName = 'nomecli'
      Required = True
      Size = 50
    end
    object zqry_WEB_VDCLIENTEcodclascli: TIntegerField
      FieldName = 'codclascli'
    end
    object zqry_WEB_VDCLIENTEcodvend: TIntegerField
      FieldName = 'codvend'
    end
    object zqry_WEB_VDCLIENTEcodtipocob: TIntegerField
      FieldName = 'codtipocob'
    end
    object zqry_WEB_VDCLIENTEcodplanopag: TIntegerField
      FieldName = 'codplanopag'
    end
    object zqry_WEB_VDCLIENTEcodtran: TIntegerField
      FieldName = 'codtran'
    end
    object zqry_WEB_VDCLIENTEcodbanco: TWideStringField
      FieldName = 'codbanco'
      Size = 3
    end
    object zqry_WEB_VDCLIENTEcodsetor: TIntegerField
      FieldName = 'codsetor'
    end
    object zqry_WEB_VDCLIENTEcodtipocli: TIntegerField
      FieldName = 'codtipocli'
    end
    object zqry_WEB_VDCLIENTEcodtpcred: TIntegerField
      FieldName = 'codtpcred'
    end
    object zqry_WEB_VDCLIENTEcodfisccli: TIntegerField
      FieldName = 'codfisccli'
    end
    object zqry_WEB_VDCLIENTEdatacli: TDateField
      FieldName = 'datacli'
      Required = True
    end
    object zqry_WEB_VDCLIENTEpessoacli: TWideStringField
      FieldName = 'pessoacli'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEativocli: TWideStringField
      FieldName = 'ativocli'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEcnpjcli: TWideStringField
      FieldName = 'cnpjcli'
      Size = 18
    end
    object zqry_WEB_VDCLIENTEinsccli: TWideStringField
      FieldName = 'insccli'
    end
    object zqry_WEB_VDCLIENTEcpfcli: TWideStringField
      FieldName = 'cpfcli'
      Size = 14
    end
    object zqry_WEB_VDCLIENTErgcli: TWideStringField
      FieldName = 'rgcli'
      Size = 13
    end
    object zqry_WEB_VDCLIENTEsspcli: TWideStringField
      FieldName = 'sspcli'
      Size = 10
    end
    object zqry_WEB_VDCLIENTEendcli: TWideStringField
      FieldName = 'endcli'
      Size = 50
    end
    object zqry_WEB_VDCLIENTEnumcli: TIntegerField
      FieldName = 'numcli'
    end
    object zqry_WEB_VDCLIENTEcomplcli: TWideStringField
      FieldName = 'complcli'
    end
    object zqry_WEB_VDCLIENTEbaircli: TWideStringField
      FieldName = 'baircli'
      Size = 30
    end
    object zqry_WEB_VDCLIENTEcidcli: TWideStringField
      FieldName = 'cidcli'
      Size = 30
    end
    object zqry_WEB_VDCLIENTEufcli: TWideStringField
      FieldName = 'ufcli'
      Size = 2
    end
    object zqry_WEB_VDCLIENTEcepcli: TWideStringField
      FieldName = 'cepcli'
      Size = 10
    end
    object zqry_WEB_VDCLIENTEdddcli: TWideStringField
      FieldName = 'dddcli'
      Size = 4
    end
    object zqry_WEB_VDCLIENTEfonecli: TWideStringField
      FieldName = 'fonecli'
      Size = 15
    end
    object zqry_WEB_VDCLIENTEemailcli: TWideStringField
      FieldName = 'emailcli'
      Size = 50
    end
    object zqry_WEB_VDCLIENTEemailnfecli: TWideStringField
      FieldName = 'emailnfecli'
      Size = 50
    end
    object zqry_WEB_VDCLIENTEsimplescli: TWideStringField
      FieldName = 'simplescli'
      Size = 1
    end
    object zqry_WEB_VDCLIENTEcodmunic: TWideStringField
      FieldName = 'codmunic'
      Size = 7
    end
    object zqry_WEB_VDCLIENTEsiglauf: TWideStringField
      FieldName = 'siglauf'
      Size = 2
    end
    object zqry_WEB_VDCLIENTEcodpais: TSmallintField
      FieldName = 'codpais'
    end
    object zqry_WEB_VDCLIENTEsuframacli: TWideStringField
      FieldName = 'suframacli'
      Size = 9
    end
    object zqry_WEB_VDCLIENTEprodruralcli: TWideStringField
      FieldName = 'prodruralcli'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEdtnasccli: TDateField
      FieldName = 'dtnasccli'
    end
    object zqry_WEB_VDCLIENTEdtins: TDateField
      FieldName = 'dtins'
      Required = True
    end
    object zqry_WEB_VDCLIENTEhins: TTimeField
      FieldName = 'hins'
      Required = True
    end
    object zqry_WEB_VDCLIENTEidusuins: TWideStringField
      FieldName = 'idusuins'
      Required = True
      Size = 8
    end
    object zqry_WEB_VDCLIENTEdtalt: TDateField
      FieldName = 'dtalt'
    end
    object zqry_WEB_VDCLIENTEhalt: TTimeField
      FieldName = 'halt'
    end
    object zqry_WEB_VDCLIENTEidusualt: TWideStringField
      FieldName = 'idusualt'
      Size = 8
    end
    object zqry_WEB_VDCLIENTEconsumidorcli: TWideStringField
      FieldName = 'consumidorcli'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEsitrevcli: TWideStringField
      FieldName = 'sitrevcli'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEwhatscli: TWideStringField
      FieldName = 'whatscli'
      Size = 1
    end
    object zqry_WEB_VDCLIENTEqtdpontos: TIntegerField
      FieldName = 'qtdpontos'
    end
    object zqry_WEB_VDCLIENTEsaldocredito: TFloatField
      FieldName = 'saldocredito'
    end
    object zqry_WEB_VDCLIENTEinscprodrural: TIntegerField
      FieldName = 'inscprodrural'
    end
    object zqry_WEB_VDCLIENTEcartaorfid: TWideStringField
      FieldName = 'cartaorfid'
      Size = 10
    end
    object zqry_WEB_VDCLIENTEdddcelcli: TWideStringField
      FieldName = 'dddcelcli'
      Size = 4
    end
    object zqry_WEB_VDCLIENTEcelcli: TWideStringField
      FieldName = 'celcli'
      Size = 15
    end
    object zqry_WEB_VDCLIENTEsldprod: TFloatField
      FieldName = 'sldprod'
    end
    object zqry_WEB_VDCLIENTEdataabecli: TDateField
      FieldName = 'dataabecli'
    end
    object zqry_WEB_VDCLIENTEcapitacli: TFloatField
      FieldName = 'capitacli'
    end
    object zqry_WEB_VDCLIENTEsituacli: TWideStringField
      FieldName = 'situacli'
    end
    object zqry_WEB_VDCLIENTEnaturezacli: TWideStringField
      FieldName = 'naturezacli'
      Size = 40
    end
    object zqry_WEB_VDCLIENTEnomeresp: TWideStringField
      FieldName = 'nomeresp'
      Required = True
      Size = 50
    end
    object zqry_WEB_VDCLIENTEtelresp: TWideStringField
      FieldName = 'telresp'
      Required = True
      Size = 16
    end
    object zqry_WEB_VDCLIENTEcodmig: TIntegerField
      FieldName = 'codmig'
    end
    object zqry_WEB_VDCLIENTEisync: TWideStringField
      FieldName = 'isync'
      Required = True
      Size = 1
    end
    object zqry_WEB_VDCLIENTEesync: TWideStringField
      FieldName = 'esync'
      Required = True
      Size = 1
    end
  end
  object dts_WEB_VDCLIENTE: TDataSource
    DataSet = zqry_WEB_VDCLIENTE
    Left = 120
    Top = 256
  end
  object zqry_WEB_PESQ: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select max(codmig) as ultmig from vdcliente')
    Params = <>
    Left = 40
    Top = 304
    object zqry_WEB_PESQultmig: TIntegerField
      FieldName = 'ultmig'
      ReadOnly = True
    end
  end
  object dts_WEB_PESQ: TDataSource
    DataSet = zqry_WEB_PESQ
    Left = 120
    Top = 304
  end
  object zqry_INT_PESQ: TZQuery
    Connection = Integra
    SQL.Strings = (
      'select max(codcli) as ultreg from vdcliente')
    Params = <>
    Left = 704
    Top = 104
    object zqry_INT_PESQULTREG: TIntegerField
      FieldName = 'ULTREG'
      ReadOnly = True
    end
  end
  object dts_INT_PESQ: TDataSource
    DataSet = zqry_INT_PESQ
    Left = 792
    Top = 104
  end
  object zqry_INT_CPFORNECED: TZQuery
    Connection = Integra
    SQL.Strings = (
      'select * from cpforneced')
    Params = <>
    Left = 704
    Top = 152
    object zqry_INT_CPFORNECEDCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_INT_CPFORNECEDCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_INT_CPFORNECEDCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_INT_CPFORNECEDRAZFOR: TWideStringField
      FieldName = 'RAZFOR'
      Required = True
      Size = 60
    end
    object zqry_INT_CPFORNECEDCODEMPTF: TIntegerField
      FieldName = 'CODEMPTF'
      Required = True
    end
    object zqry_INT_CPFORNECEDCODFILIALTF: TSmallintField
      FieldName = 'CODFILIALTF'
      Required = True
    end
    object zqry_INT_CPFORNECEDCODTIPOFOR: TIntegerField
      FieldName = 'CODTIPOFOR'
      Required = True
    end
    object zqry_INT_CPFORNECEDCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_INT_CPFORNECEDCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_INT_CPFORNECEDCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_INT_CPFORNECEDCODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_INT_CPFORNECEDCODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_INT_CPFORNECEDCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_INT_CPFORNECEDNOMEFOR: TWideStringField
      FieldName = 'NOMEFOR'
      Required = True
      Size = 50
    end
    object zqry_INT_CPFORNECEDDATAFOR: TDateField
      FieldName = 'DATAFOR'
      Required = True
    end
    object zqry_INT_CPFORNECEDATIVOFOR: TWideStringField
      FieldName = 'ATIVOFOR'
      Size = 1
    end
    object zqry_INT_CPFORNECEDPESSOAFOR: TWideStringField
      FieldName = 'PESSOAFOR'
      Required = True
      Size = 1
    end
    object zqry_INT_CPFORNECEDCNPJFOR: TWideStringField
      FieldName = 'CNPJFOR'
      Size = 14
    end
    object zqry_INT_CPFORNECEDCPFFOR: TWideStringField
      FieldName = 'CPFFOR'
      Size = 11
    end
    object zqry_INT_CPFORNECEDINSCFOR: TWideStringField
      FieldName = 'INSCFOR'
    end
    object zqry_INT_CPFORNECEDRGFOR: TWideStringField
      FieldName = 'RGFOR'
      Size = 13
    end
    object zqry_INT_CPFORNECEDENDFOR: TWideStringField
      FieldName = 'ENDFOR'
      Size = 50
    end
    object zqry_INT_CPFORNECEDNUMFOR: TIntegerField
      FieldName = 'NUMFOR'
    end
    object zqry_INT_CPFORNECEDCOMPLFOR: TWideStringField
      FieldName = 'COMPLFOR'
    end
    object zqry_INT_CPFORNECEDBAIRFOR: TWideStringField
      FieldName = 'BAIRFOR'
      Size = 30
    end
    object zqry_INT_CPFORNECEDCEPFOR: TWideStringField
      FieldName = 'CEPFOR'
      Size = 8
    end
    object zqry_INT_CPFORNECEDCIDFOR: TWideStringField
      FieldName = 'CIDFOR'
      Size = 30
    end
    object zqry_INT_CPFORNECEDUFFOR: TWideStringField
      FieldName = 'UFFOR'
      Size = 2
    end
    object zqry_INT_CPFORNECEDCONTFOR: TWideStringField
      FieldName = 'CONTFOR'
      Size = 40
    end
    object zqry_INT_CPFORNECEDFONEFOR: TWideStringField
      FieldName = 'FONEFOR'
      Size = 12
    end
    object zqry_INT_CPFORNECEDFAXFOR: TWideStringField
      FieldName = 'FAXFOR'
      Size = 9
    end
    object zqry_INT_CPFORNECEDAGENCIAFOR: TWideStringField
      FieldName = 'AGENCIAFOR'
      Size = 6
    end
    object zqry_INT_CPFORNECEDCONTAFOR: TWideStringField
      FieldName = 'CONTAFOR'
      Size = 10
    end
    object zqry_INT_CPFORNECEDEMAILFOR: TWideStringField
      FieldName = 'EMAILFOR'
      Size = 50
    end
    object zqry_INT_CPFORNECEDOBSFOR: TWideStringField
      FieldName = 'OBSFOR'
      Size = 10000
    end
    object zqry_INT_CPFORNECEDCELFOR: TWideStringField
      FieldName = 'CELFOR'
      Size = 9
    end
    object zqry_INT_CPFORNECEDCLIFOR: TWideStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object zqry_INT_CPFORNECEDSSPFOR: TWideStringField
      FieldName = 'SSPFOR'
      Size = 10
    end
    object zqry_INT_CPFORNECEDDDDFONEFOR: TWideStringField
      FieldName = 'DDDFONEFOR'
      Size = 4
    end
    object zqry_INT_CPFORNECEDDDDFAXFOR: TWideStringField
      FieldName = 'DDDFAXFOR'
      Size = 4
    end
    object zqry_INT_CPFORNECEDDDDCELFOR: TWideStringField
      FieldName = 'DDDCELFOR'
      Size = 4
    end
    object zqry_INT_CPFORNECEDSITEFOR: TWideStringField
      FieldName = 'SITEFOR'
      Size = 50
    end
    object zqry_INT_CPFORNECEDCODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_INT_CPFORNECEDCODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_INT_CPFORNECEDCODFORCONTAB: TWideStringField
      FieldName = 'CODFORCONTAB'
    end
    object zqry_INT_CPFORNECEDCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_INT_CPFORNECEDSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_INT_CPFORNECEDCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_INT_CPFORNECEDCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_INT_CPFORNECEDCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_INT_CPFORNECEDCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_INT_CPFORNECEDCODEMPFF: TIntegerField
      FieldName = 'CODEMPFF'
    end
    object zqry_INT_CPFORNECEDCODFILIALFF: TSmallintField
      FieldName = 'CODFILIALFF'
    end
    object zqry_INT_CPFORNECEDCODFISCFOR: TIntegerField
      FieldName = 'CODFISCFOR'
    end
    object zqry_INT_CPFORNECEDSUFRAMAFOR: TWideStringField
      FieldName = 'SUFRAMAFOR'
      Size = 9
    end
    object zqry_INT_CPFORNECEDNRODEPENDFOR: TSmallintField
      FieldName = 'NRODEPENDFOR'
    end
    object zqry_INT_CPFORNECEDINSCCONREG: TWideStringField
      FieldName = 'INSCCONREG'
      Size = 15
    end
    object zqry_INT_CPFORNECEDCODEXPORTADOR: TWideStringField
      FieldName = 'CODEXPORTADOR'
    end
    object zqry_INT_CPFORNECEDDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_INT_CPFORNECEDHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_INT_CPFORNECEDIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_INT_CPFORNECEDDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_INT_CPFORNECEDHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_INT_CPFORNECEDIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object dts_INT_CPFORNECED: TDataSource
    DataSet = zqry_INT_CPFORNECED
    Left = 792
    Top = 152
  end
  object zqry_WEB_CPFORNECED: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from cpforneced')
    Params = <>
    Left = 40
    Top = 352
    object zqry_WEB_CPFORNECEDcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_WEB_CPFORNECEDcodfilial: TSmallintField
      FieldName = 'codfilial'
      Required = True
    end
    object zqry_WEB_CPFORNECEDcodfor: TIntegerField
      FieldName = 'codfor'
      Required = True
    end
    object zqry_WEB_CPFORNECEDrazfor: TWideStringField
      FieldName = 'razfor'
      Required = True
      Size = 60
    end
    object zqry_WEB_CPFORNECEDCODEMPTF: TIntegerField
      FieldName = 'CODEMPTF'
      Required = True
    end
    object zqry_WEB_CPFORNECEDcodtipofor: TIntegerField
      FieldName = 'codtipofor'
      Required = True
    end
    object zqry_WEB_CPFORNECEDCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_WEB_CPFORNECEDCODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_WEB_CPFORNECEDCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_WEB_CPFORNECEDnomefor: TWideStringField
      FieldName = 'nomefor'
      Required = True
      Size = 50
    end
    object zqry_WEB_CPFORNECEDdatafor: TDateField
      FieldName = 'datafor'
      Required = True
    end
    object zqry_WEB_CPFORNECEDativofor: TWideStringField
      FieldName = 'ativofor'
      Size = 1
    end
    object zqry_WEB_CPFORNECEDpessoafor: TWideStringField
      FieldName = 'pessoafor'
      Required = True
      Size = 1
    end
    object zqry_WEB_CPFORNECEDcnpjfor: TWideStringField
      FieldName = 'cnpjfor'
      Size = 17
    end
    object zqry_WEB_CPFORNECEDcpffor: TWideStringField
      FieldName = 'cpffor'
      Size = 14
    end
    object zqry_WEB_CPFORNECEDinscfor: TWideStringField
      FieldName = 'inscfor'
    end
    object zqry_WEB_CPFORNECEDrgfor: TWideStringField
      FieldName = 'rgfor'
      Size = 13
    end
    object zqry_WEB_CPFORNECEDendfor: TWideStringField
      FieldName = 'endfor'
      Size = 50
    end
    object zqry_WEB_CPFORNECEDnumfor: TIntegerField
      FieldName = 'numfor'
    end
    object zqry_WEB_CPFORNECEDcomplfor: TWideStringField
      FieldName = 'complfor'
    end
    object zqry_WEB_CPFORNECEDbairfor: TWideStringField
      FieldName = 'bairfor'
      Size = 30
    end
    object zqry_WEB_CPFORNECEDcepfor: TWideStringField
      FieldName = 'cepfor'
      Size = 8
    end
    object zqry_WEB_CPFORNECEDcidfor: TWideStringField
      FieldName = 'cidfor'
      Size = 30
    end
    object zqry_WEB_CPFORNECEDuffor: TWideStringField
      FieldName = 'uffor'
      Size = 2
    end
    object zqry_WEB_CPFORNECEDdddfor: TWideStringField
      FieldName = 'dddfor'
      Size = 3
    end
    object zqry_WEB_CPFORNECEDfonefor: TWideStringField
      FieldName = 'fonefor'
      Size = 12
    end
    object zqry_WEB_CPFORNECEDAGENCIAFOR: TWideStringField
      FieldName = 'AGENCIAFOR'
      Size = 6
    end
    object zqry_WEB_CPFORNECEDCONTAFOR: TWideStringField
      FieldName = 'CONTAFOR'
      Size = 10
    end
    object zqry_WEB_CPFORNECEDemailfor: TWideStringField
      FieldName = 'emailfor'
      Size = 50
    end
    object zqry_WEB_CPFORNECEDobsfor: TWideStringField
      FieldName = 'obsfor'
      Size = 10000
    end
    object zqry_WEB_CPFORNECEDCELFOR: TWideStringField
      FieldName = 'CELFOR'
      Size = 9
    end
    object zqry_WEB_CPFORNECEDCLIFOR: TWideStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object zqry_WEB_CPFORNECEDsspfor: TWideStringField
      FieldName = 'sspfor'
      Size = 10
    end
    object zqry_WEB_CPFORNECEDDDDFONEFOR: TWideStringField
      FieldName = 'DDDFONEFOR'
      Size = 4
    end
    object zqry_WEB_CPFORNECEDDDDCELFOR: TWideStringField
      FieldName = 'DDDCELFOR'
      Size = 4
    end
    object zqry_WEB_CPFORNECEDsitefor: TWideStringField
      FieldName = 'sitefor'
      Size = 50
    end
    object zqry_WEB_CPFORNECEDCODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_WEB_CPFORNECEDCODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_WEB_CPFORNECEDCODFORCONTAB: TWideStringField
      FieldName = 'CODFORCONTAB'
    end
    object zqry_WEB_CPFORNECEDcodmunic: TWideStringField
      FieldName = 'codmunic'
      Size = 7
    end
    object zqry_WEB_CPFORNECEDsiglauf: TWideStringField
      FieldName = 'siglauf'
      Size = 2
    end
    object zqry_WEB_CPFORNECEDcodpais: TSmallintField
      FieldName = 'codpais'
    end
    object zqry_WEB_CPFORNECEDCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_WEB_CPFORNECEDCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_WEB_CPFORNECEDCODEMPFF: TIntegerField
      FieldName = 'CODEMPFF'
    end
    object zqry_WEB_CPFORNECEDCODFISCFOR: TIntegerField
      FieldName = 'CODFISCFOR'
    end
    object zqry_WEB_CPFORNECEDsuframafor: TWideStringField
      FieldName = 'suframafor'
      Size = 9
    end
    object zqry_WEB_CPFORNECEDNRODEPENDFOR: TSmallintField
      FieldName = 'NRODEPENDFOR'
    end
    object zqry_WEB_CPFORNECEDINSCCONREG: TWideStringField
      FieldName = 'INSCCONREG'
      Size = 15
    end
    object zqry_WEB_CPFORNECEDCODEXPORTADOR: TWideStringField
      FieldName = 'CODEXPORTADOR'
    end
    object zqry_WEB_CPFORNECEDdtins: TDateField
      FieldName = 'dtins'
      Required = True
    end
    object zqry_WEB_CPFORNECEDhins: TTimeField
      FieldName = 'hins'
      Required = True
    end
    object zqry_WEB_CPFORNECEDidusuins: TWideStringField
      FieldName = 'idusuins'
      Required = True
      Size = 8
    end
    object zqry_WEB_CPFORNECEDdtalt: TDateField
      FieldName = 'dtalt'
    end
    object zqry_WEB_CPFORNECEDhalt: TTimeField
      FieldName = 'halt'
    end
    object zqry_WEB_CPFORNECEDidusualt: TWideStringField
      FieldName = 'idusualt'
      Size = 8
    end
    object zqry_WEB_CPFORNECEDdataabefor: TDateField
      FieldName = 'dataabefor'
    end
    object zqry_WEB_CPFORNECEDcapitafor: TFloatField
      FieldName = 'capitafor'
    end
    object zqry_WEB_CPFORNECEDsituafor: TWideStringField
      FieldName = 'situafor'
    end
    object zqry_WEB_CPFORNECEDnaturezafor: TWideStringField
      FieldName = 'naturezafor'
      Size = 50
    end
    object zqry_WEB_CPFORNECEDcodmig: TIntegerField
      FieldName = 'codmig'
    end
    object zqry_WEB_CPFORNECEDisync: TWideStringField
      FieldName = 'isync'
      Required = True
      Size = 1
    end
    object zqry_WEB_CPFORNECEDesync: TWideStringField
      FieldName = 'esync'
      Required = True
      Size = 1
    end
  end
  object dts_WEB_CPFORNECED: TDataSource
    DataSet = zqry_WEB_CPFORNECED
    Left = 120
    Top = 352
  end
  object zqry_INT_EQPRODUTO: TZQuery
    Connection = Integra
    SQL.Strings = (
      'select * from eqproduto')
    Params = <>
    Left = 704
    Top = 200
    object zqry_INT_EQPRODUTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_INT_EQPRODUTODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_INT_EQPRODUTOREFPROD: TWideStringField
      FieldName = 'REFPROD'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_INT_EQPRODUTOCODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALUD: TSmallintField
      FieldName = 'CODFILIALUD'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALFC: TSmallintField
      FieldName = 'CODFILIALFC'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_INT_EQPRODUTOCODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_INT_EQPRODUTODESCAUXPROD: TWideStringField
      FieldName = 'DESCAUXPROD'
      Size = 40
    end
    object zqry_INT_EQPRODUTOTIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Required = True
      Size = 2
    end
    object zqry_INT_EQPRODUTOCVPROD: TWideStringField
      FieldName = 'CVPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOCODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODFILIALGP: TSmallintField
      FieldName = 'CODFILIALGP'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_INT_EQPRODUTOCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_INT_EQPRODUTOCLOTEPROD: TWideStringField
      FieldName = 'CLOTEPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOSERIEPROD: TWideStringField
      FieldName = 'SERIEPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOCODFABPROD: TWideStringField
      FieldName = 'CODFABPROD'
      Size = 30
    end
    object zqry_INT_EQPRODUTOCOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_INT_EQPRODUTOPESOLIQPROD: TFloatField
      FieldName = 'PESOLIQPROD'
    end
    object zqry_INT_EQPRODUTOPESOBRUTPROD: TFloatField
      FieldName = 'PESOBRUTPROD'
    end
    object zqry_INT_EQPRODUTOQTDMINPROD: TFloatField
      FieldName = 'QTDMINPROD'
    end
    object zqry_INT_EQPRODUTOQTDMAXPROD: TFloatField
      FieldName = 'QTDMAXPROD'
    end
    object zqry_INT_EQPRODUTODTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_INT_EQPRODUTOCUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
    end
    object zqry_INT_EQPRODUTOCUSTOPEPSPROD: TFloatField
      FieldName = 'CUSTOPEPSPROD'
    end
    object zqry_INT_EQPRODUTOCUSTOINFOPROD: TFloatField
      FieldName = 'CUSTOINFOPROD'
    end
    object zqry_INT_EQPRODUTOPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
    end
    object zqry_INT_EQPRODUTOPRECOCOMISPROD: TFloatField
      FieldName = 'PRECOCOMISPROD'
    end
    object zqry_INT_EQPRODUTOSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_INT_EQPRODUTOSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
    end
    object zqry_INT_EQPRODUTOSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
    end
    object zqry_INT_EQPRODUTOSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
    end
    object zqry_INT_EQPRODUTOATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_INT_EQPRODUTODTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_INT_EQPRODUTOQTDULTCPPROD: TFloatField
      FieldName = 'QTDULTCPPROD'
    end
    object zqry_INT_EQPRODUTODESCCOMPPROD: TWideStringField
      FieldName = 'DESCCOMPPROD'
      Size = 500
    end
    object zqry_INT_EQPRODUTOOBSPROD: TWideStringField
      FieldName = 'OBSPROD'
      Size = 10000
    end
    object zqry_INT_EQPRODUTOVERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_INT_EQPRODUTORMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOCODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_INT_EQPRODUTOCODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_INT_EQPRODUTOCODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_INT_EQPRODUTOCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_INT_EQPRODUTOCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_INT_EQPRODUTOANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_INT_EQPRODUTOCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_INT_EQPRODUTOUSARECEITAPROD: TWideStringField
      FieldName = 'USARECEITAPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOUSATELAADICPDV: TWideStringField
      FieldName = 'USATELAADICPDV'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOVLRDENSIDADE: TFloatField
      FieldName = 'VLRDENSIDADE'
    end
    object zqry_INT_EQPRODUTOVLRCONCENT: TFloatField
      FieldName = 'VLRCONCENT'
    end
    object zqry_INT_EQPRODUTOCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object zqry_INT_EQPRODUTOLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object zqry_INT_EQPRODUTOESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object zqry_INT_EQPRODUTOGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTOQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Required = True
    end
    object zqry_INT_EQPRODUTOCODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_INT_EQPRODUTOCUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
    end
    object zqry_INT_EQPRODUTOCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_INT_EQPRODUTOCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_INT_EQPRODUTOCODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_INT_EQPRODUTOCODEMPTC: TSmallintField
      FieldName = 'CODEMPTC'
    end
    object zqry_INT_EQPRODUTOCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_INT_EQPRODUTOCODTPCHAMADO: TIntegerField
      FieldName = 'CODTPCHAMADO'
    end
    object zqry_INT_EQPRODUTOQTDHORASSERV: TFloatField
      FieldName = 'QTDHORASSERV'
    end
    object zqry_INT_EQPRODUTONRODIASVALID: TSmallintField
      FieldName = 'NRODIASVALID'
    end
    object zqry_INT_EQPRODUTODESCCLI: TWideStringField
      FieldName = 'DESCCLI'
      Size = 1
    end
    object zqry_INT_EQPRODUTOQTDPORPLANO: TSmallintField
      FieldName = 'QTDPORPLANO'
    end
    object zqry_INT_EQPRODUTONROPLANOS: TSmallintField
      FieldName = 'NROPLANOS'
    end
    object zqry_INT_EQPRODUTOCERTFSC: TWideStringField
      FieldName = 'CERTFSC'
      Size = 1
    end
    object zqry_INT_EQPRODUTOFATORFSC: TFloatField
      FieldName = 'FATORFSC'
    end
    object zqry_INT_EQPRODUTOCODEMPOG: TIntegerField
      FieldName = 'CODEMPOG'
    end
    object zqry_INT_EQPRODUTOCODFILIALOG: TSmallintField
      FieldName = 'CODFILIALOG'
    end
    object zqry_INT_EQPRODUTOCODPRODOG: TIntegerField
      FieldName = 'CODPRODOG'
    end
    object zqry_INT_EQPRODUTOCODEMPMG: TIntegerField
      FieldName = 'CODEMPMG'
    end
    object zqry_INT_EQPRODUTOCODFILIALMG: TSmallintField
      FieldName = 'CODFILIALMG'
    end
    object zqry_INT_EQPRODUTOCODMODG: TIntegerField
      FieldName = 'CODMODG'
    end
    object zqry_INT_EQPRODUTOPRAZOREPO: TIntegerField
      FieldName = 'PRAZOREPO'
    end
    object zqry_INT_EQPRODUTOMEDIAVENDA: TFloatField
      FieldName = 'MEDIAVENDA'
    end
    object zqry_INT_EQPRODUTOEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_INT_EQPRODUTODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_INT_EQPRODUTOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_INT_EQPRODUTOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_INT_EQPRODUTODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_INT_EQPRODUTOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_INT_EQPRODUTOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_INT_EQPRODUTOFINAME: TWideStringField
      FieldName = 'FINAME'
      Size = 10
    end
    object zqry_INT_EQPRODUTOMDA: TWideStringField
      FieldName = 'MDA'
      Size = 10
    end
    object zqry_INT_EQPRODUTOPTSFIDELIDADE: TIntegerField
      FieldName = 'PTSFIDELIDADE'
    end
    object zqry_INT_EQPRODUTOCURVA: TWideStringField
      FieldName = 'CURVA'
      Size = 1
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA'
      Size = 10
    end
    object zqry_INT_EQPRODUTOPROD_ORIGEM: TWideStringField
      FieldName = 'PROD_ORIGEM'
      Size = 10
    end
    object zqry_INT_EQPRODUTOPROD_IAT: TWideStringField
      FieldName = 'PROD_IAT'
      Size = 3
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_OUTRO_EST'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_ENTRADA'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_SAIDA'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_PIS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_PIS'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_COFINS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_COFINS'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_SITRIBUTARIA_ISSQN: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_ISSQN'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_ICMS: TWideStringField
      FieldName = 'PROD_ICMS'
      Size = 11
    end
    object zqry_INT_EQPRODUTOPROD_COD_SERVICO_ISSQN: TWideStringField
      FieldName = 'PROD_COD_SERVICO_ISSQN'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROD_BLOQUEIO: TWideStringField
      FieldName = 'PROD_BLOQUEIO'
      Size = 3
    end
    object zqry_INT_EQPRODUTOPROD_USA_PROMO: TWideStringField
      FieldName = 'PROD_USA_PROMO'
      Size = 3
    end
    object zqry_INT_EQPRODUTOPROD_PBALANCA: TWideStringField
      FieldName = 'PROD_PBALANCA'
      Size = 3
    end
    object zqry_INT_EQPRODUTOPROD_ATIVO: TWideStringField
      FieldName = 'PROD_ATIVO'
      Size = 3
    end
    object zqry_INT_EQPRODUTOCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 10
    end
    object zqry_INT_EQPRODUTOMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object zqry_INT_EQPRODUTOICRE: TWideStringField
      FieldName = 'ICRE'
      Size = 15
    end
    object zqry_INT_EQPRODUTOCEST: TWideStringField
      FieldName = 'CEST'
      Size = 7
    end
    object zqry_INT_EQPRODUTOPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object zqry_INT_EQPRODUTOCODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_INT_EQPRODUTOINTERVSEGUR: TIntegerField
      FieldName = 'INTERVSEGUR'
    end
    object zqry_INT_EQPRODUTOCLASSETOXICO: TWideStringField
      FieldName = 'CLASSETOXICO'
      Size = 2
    end
    object zqry_INT_EQPRODUTOGRUPOQUIMICO: TWideStringField
      FieldName = 'GRUPOQUIMICO'
      Size = 50
    end
    object zqry_INT_EQPRODUTONOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_INT_EQPRODUTOPRINCIPIOATIVO: TWideStringField
      FieldName = 'PRINCIPIOATIVO'
      Size = 50
    end
    object zqry_INT_EQPRODUTOLOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
    end
    object zqry_INT_EQPRODUTOCODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 1
    end
    object zqry_INT_EQPRODUTOCLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 50
    end
    object zqry_INT_EQPRODUTOCONCENTRACAO: TWideStringField
      FieldName = 'CONCENTRACAO'
      Size = 15
    end
    object zqry_INT_EQPRODUTOFORMULACAO: TWideStringField
      FieldName = 'FORMULACAO'
      Size = 50
    end
    object zqry_INT_EQPRODUTOANTIDOTO: TWideStringField
      FieldName = 'ANTIDOTO'
      Size = 10000
    end
    object zqry_INT_EQPRODUTOMULTIPLICADOR: TSingleField
      FieldName = 'MULTIPLICADOR'
    end
    object zqry_INT_EQPRODUTOCODBALANCA: TIntegerField
      FieldName = 'CODBALANCA'
    end
    object zqry_INT_EQPRODUTOCODRFIDPROD: TIntegerField
      FieldName = 'CODRFIDPROD'
    end
  end
  object dts_INT_EQPRODUTO: TDataSource
    DataSet = zqry_INT_EQPRODUTO
    Left = 792
    Top = 200
  end
  object zqry_WEB_EQPRODUTO: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from eqproduto')
    Params = <>
    Left = 40
    Top = 400
    object zqry_WEB_EQPRODUTOcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcodfilial: TSmallintField
      FieldName = 'codfilial'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcodprod: TIntegerField
      FieldName = 'codprod'
      Required = True
    end
    object zqry_WEB_EQPRODUTOdescprod: TWideStringField
      FieldName = 'descprod'
      Required = True
      Size = 100
    end
    object zqry_WEB_EQPRODUTOrefprod: TWideStringField
      FieldName = 'refprod'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcodalmox: TIntegerField
      FieldName = 'codalmox'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcodunid: TWideStringField
      FieldName = 'codunid'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcodfisc: TWideStringField
      FieldName = 'codfisc'
      Required = True
      Size = 13
    end
    object zqry_WEB_EQPRODUTOcodmarca: TWideStringField
      FieldName = 'codmarca'
      Required = True
      Size = 6
    end
    object zqry_WEB_EQPRODUTOtipoprod: TWideStringField
      FieldName = 'tipoprod'
      Required = True
      Size = 2
    end
    object zqry_WEB_EQPRODUTOcodgrup: TWideStringField
      FieldName = 'codgrup'
      Required = True
      Size = 14
    end
    object zqry_WEB_EQPRODUTOcodseg: TWideStringField
      FieldName = 'codseg'
      Size = 14
    end
    object zqry_WEB_EQPRODUTOcodbarprod: TWideStringField
      FieldName = 'codbarprod'
      Size = 15
    end
    object zqry_WEB_EQPRODUTOcloteprod: TWideStringField
      FieldName = 'cloteprod'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOserieprod: TWideStringField
      FieldName = 'serieprod'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOcodfabprod: TWideStringField
      FieldName = 'codfabprod'
      Size = 30
    end
    object zqry_WEB_EQPRODUTOcomisprod: TFloatField
      FieldName = 'comisprod'
    end
    object zqry_WEB_EQPRODUTOpesoliqprod: TFloatField
      FieldName = 'pesoliqprod'
    end
    object zqry_WEB_EQPRODUTOpesobrutprod: TFloatField
      FieldName = 'pesobrutprod'
    end
    object zqry_WEB_EQPRODUTOqtdminprod: TFloatField
      FieldName = 'qtdminprod'
    end
    object zqry_WEB_EQPRODUTOqtdmaxprod: TFloatField
      FieldName = 'qtdmaxprod'
    end
    object zqry_WEB_EQPRODUTOdtmpmprod: TDateField
      FieldName = 'dtmpmprod'
    end
    object zqry_WEB_EQPRODUTOcustompmprod: TFloatField
      FieldName = 'custompmprod'
    end
    object zqry_WEB_EQPRODUTOcustopepsprod: TFloatField
      FieldName = 'custopepsprod'
    end
    object zqry_WEB_EQPRODUTOcustoinfoprod: TFloatField
      FieldName = 'custoinfoprod'
    end
    object zqry_WEB_EQPRODUTOprecobaseprod: TFloatField
      FieldName = 'precobaseprod'
    end
    object zqry_WEB_EQPRODUTOprecocomisprod: TFloatField
      FieldName = 'precocomisprod'
    end
    object zqry_WEB_EQPRODUTOsldprod: TFloatField
      FieldName = 'sldprod'
    end
    object zqry_WEB_EQPRODUTOsldresprod: TFloatField
      FieldName = 'sldresprod'
    end
    object zqry_WEB_EQPRODUTOsldconsigprod: TFloatField
      FieldName = 'sldconsigprod'
    end
    object zqry_WEB_EQPRODUTOsldliqprod: TFloatField
      FieldName = 'sldliqprod'
    end
    object zqry_WEB_EQPRODUTOativoprod: TWideStringField
      FieldName = 'ativoprod'
      Size = 1
    end
    object zqry_WEB_EQPRODUTOdtultcpprod: TDateField
      FieldName = 'dtultcpprod'
    end
    object zqry_WEB_EQPRODUTOqtdultcpprod: TFloatField
      FieldName = 'qtdultcpprod'
    end
    object zqry_WEB_EQPRODUTOobsprod: TWideStringField
      FieldName = 'obsprod'
      Size = 10000
    end
    object zqry_WEB_EQPRODUTOlocalprod: TWideStringField
      FieldName = 'localprod'
      Size = 15
    end
    object zqry_WEB_EQPRODUTOusareceitaprod: TWideStringField
      FieldName = 'usareceitaprod'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOusatelaadicpdv: TWideStringField
      FieldName = 'usatelaadicpdv'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOvlrdensidade: TFloatField
      FieldName = 'vlrdensidade'
    end
    object zqry_WEB_EQPRODUTOvlrconcent: TFloatField
      FieldName = 'vlrconcent'
    end
    object zqry_WEB_EQPRODUTOcomprimento: TFloatField
      FieldName = 'comprimento'
    end
    object zqry_WEB_EQPRODUTOlargura: TFloatField
      FieldName = 'largura'
    end
    object zqry_WEB_EQPRODUTOespessura: TFloatField
      FieldName = 'espessura'
    end
    object zqry_WEB_EQPRODUTOguiatrafprod: TWideStringField
      FieldName = 'guiatrafprod'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOqtdembalagem: TFloatField
      FieldName = 'qtdembalagem'
      Required = True
    end
    object zqry_WEB_EQPRODUTOcubagem: TFloatField
      FieldName = 'cubagem'
    end
    object zqry_WEB_EQPRODUTOcodsecao: TWideStringField
      FieldName = 'codsecao'
      Size = 13
    end
    object zqry_WEB_EQPRODUTOprazorepo: TIntegerField
      FieldName = 'prazorepo'
    end
    object zqry_WEB_EQPRODUTOmediavenda: TFloatField
      FieldName = 'mediavenda'
    end
    object zqry_WEB_EQPRODUTOemmanut: TWideStringField
      FieldName = 'emmanut'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOdtins: TDateField
      FieldName = 'dtins'
      Required = True
    end
    object zqry_WEB_EQPRODUTOhins: TTimeField
      FieldName = 'hins'
      Required = True
    end
    object zqry_WEB_EQPRODUTOidusuins: TWideStringField
      FieldName = 'idusuins'
      Required = True
      Size = 8
    end
    object zqry_WEB_EQPRODUTOdtalt: TDateField
      FieldName = 'dtalt'
    end
    object zqry_WEB_EQPRODUTOhalt: TTimeField
      FieldName = 'halt'
    end
    object zqry_WEB_EQPRODUTOidusualt: TWideStringField
      FieldName = 'idusualt'
      Size = 8
    end
    object zqry_WEB_EQPRODUTOfiname: TWideStringField
      FieldName = 'finame'
      Size = 10
    end
    object zqry_WEB_EQPRODUTOmda: TWideStringField
      FieldName = 'mda'
      Size = 10
    end
    object zqry_WEB_EQPRODUTOptsfidelidade: TIntegerField
      FieldName = 'ptsfidelidade'
    end
    object zqry_WEB_EQPRODUTOcurva: TWideStringField
      FieldName = 'curva'
      Size = 1
    end
    object zqry_WEB_EQPRODUTOmarkup: TFloatField
      FieldName = 'markup'
    end
    object zqry_WEB_EQPRODUTOpromocao: TWideStringField
      FieldName = 'promocao'
      Size = 1
    end
    object zqry_WEB_EQPRODUTOcodmix: TIntegerField
      FieldName = 'codmix'
    end
    object zqry_WEB_EQPRODUTOintervsegur: TIntegerField
      FieldName = 'intervsegur'
    end
    object zqry_WEB_EQPRODUTOclassetoxico: TWideStringField
      FieldName = 'classetoxico'
      Size = 2
    end
    object zqry_WEB_EQPRODUTOgrupoquimico: TWideStringField
      FieldName = 'grupoquimico'
      Size = 50
    end
    object zqry_WEB_EQPRODUTOnometecnico: TWideStringField
      FieldName = 'nometecnico'
      Size = 50
    end
    object zqry_WEB_EQPRODUTOprincipioativo: TWideStringField
      FieldName = 'principioativo'
      Size = 50
    end
    object zqry_WEB_EQPRODUTOcodclasse: TWideStringField
      FieldName = 'codclasse'
      Size = 1
    end
    object zqry_WEB_EQPRODUTOclasse: TWideStringField
      FieldName = 'classe'
      Size = 50
    end
    object zqry_WEB_EQPRODUTOconcentracao: TWideStringField
      FieldName = 'concentracao'
      Size = 15
    end
    object zqry_WEB_EQPRODUTOformulacao: TWideStringField
      FieldName = 'formulacao'
      Size = 50
    end
    object zqry_WEB_EQPRODUTOantidoto: TWideStringField
      FieldName = 'antidoto'
      Size = 10000
    end
    object zqry_WEB_EQPRODUTOmultiplicador: TFloatField
      FieldName = 'multiplicador'
    end
    object zqry_WEB_EQPRODUTOcodbalanca: TIntegerField
      FieldName = 'codbalanca'
    end
    object zqry_WEB_EQPRODUTOcodrfidprod: TIntegerField
      FieldName = 'codrfidprod'
    end
    object zqry_WEB_EQPRODUTOcodmig: TIntegerField
      FieldName = 'codmig'
    end
    object zqry_WEB_EQPRODUTOisync: TWideStringField
      FieldName = 'isync'
      Required = True
      Size = 1
    end
    object zqry_WEB_EQPRODUTOesync: TWideStringField
      FieldName = 'esync'
      Required = True
      Size = 1
    end
  end
  object dts_WEB_EQPRODUTO: TDataSource
    DataSet = zqry_WEB_EQPRODUTO
    Left = 120
    Top = 400
  end
  object zqry_WEB_SGFILIAL: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sgfilial')
    Params = <>
    Left = 40
    Top = 448
    object zqry_WEB_SGFILIALcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_WEB_SGFILIALcodfilial: TSmallintField
      FieldName = 'codfilial'
      Required = True
    end
    object zqry_WEB_SGFILIALcodrev: TIntegerField
      FieldName = 'codrev'
    end
    object zqry_WEB_SGFILIALrazfilial: TWideStringField
      FieldName = 'razfilial'
      Required = True
      Size = 50
    end
    object zqry_WEB_SGFILIALnomefilial: TWideStringField
      FieldName = 'nomefilial'
      Required = True
      Size = 50
    end
    object zqry_WEB_SGFILIALMZFILIAL: TWideStringField
      FieldName = 'MZFILIAL'
      Required = True
      Size = 1
    end
    object zqry_WEB_SGFILIALcnpjfilial: TWideStringField
      FieldName = 'cnpjfilial'
      Size = 18
    end
    object zqry_WEB_SGFILIALinscfilial: TWideStringField
      FieldName = 'inscfilial'
    end
    object zqry_WEB_SGFILIALendfilial: TWideStringField
      FieldName = 'endfilial'
      Size = 50
    end
    object zqry_WEB_SGFILIALnumfilial: TIntegerField
      FieldName = 'numfilial'
    end
    object zqry_WEB_SGFILIALcomplfilial: TWideStringField
      FieldName = 'complfilial'
    end
    object zqry_WEB_SGFILIALbairfilial: TWideStringField
      FieldName = 'bairfilial'
      Size = 30
    end
    object zqry_WEB_SGFILIALcepfilial: TWideStringField
      FieldName = 'cepfilial'
      Size = 9
    end
    object zqry_WEB_SGFILIALcidfilial: TWideStringField
      FieldName = 'cidfilial'
      Size = 30
    end
    object zqry_WEB_SGFILIALuffilial: TWideStringField
      FieldName = 'uffilial'
      Size = 2
    end
    object zqry_WEB_SGFILIALDDDFILIAL: TWideStringField
      FieldName = 'DDDFILIAL'
      Size = 4
    end
    object zqry_WEB_SGFILIALFONEFILIAL: TWideStringField
      FieldName = 'FONEFILIAL'
      Size = 12
    end
    object zqry_WEB_SGFILIALFAXFILIAL: TWideStringField
      FieldName = 'FAXFILIAL'
      Size = 9
    end
    object zqry_WEB_SGFILIALEMAILFILIAL: TWideStringField
      FieldName = 'EMAILFILIAL'
      Size = 50
    end
    object zqry_WEB_SGFILIALWWWFILIAL: TWideStringField
      FieldName = 'WWWFILIAL'
      Size = 50
    end
    object zqry_WEB_SGFILIALCODDISTFILIAL: TIntegerField
      FieldName = 'CODDISTFILIAL'
    end
    object zqry_WEB_SGFILIALPERCPISFILIAL: TFloatField
      FieldName = 'PERCPISFILIAL'
    end
    object zqry_WEB_SGFILIALPERCCOFINSFILIAL: TFloatField
      FieldName = 'PERCCOFINSFILIAL'
    end
    object zqry_WEB_SGFILIALPERCIRFILIAL: TFloatField
      FieldName = 'PERCIRFILIAL'
    end
    object zqry_WEB_SGFILIALPERCCSOCIALFILIAL: TFloatField
      FieldName = 'PERCCSOCIALFILIAL'
    end
    object zqry_WEB_SGFILIALSIMPLESFILIAL: TWideStringField
      FieldName = 'SIMPLESFILIAL'
      Size = 1
    end
    object zqry_WEB_SGFILIALPERCSIMPLESFILIAL: TFloatField
      FieldName = 'PERCSIMPLESFILIAL'
    end
    object zqry_WEB_SGFILIALcodmunic: TWideStringField
      FieldName = 'codmunic'
      Size = 7
    end
    object zqry_WEB_SGFILIALsiglauf: TWideStringField
      FieldName = 'siglauf'
      Size = 2
    end
    object zqry_WEB_SGFILIALcodpais: TSmallintField
      FieldName = 'codpais'
    end
    object zqry_WEB_SGFILIALCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_WEB_SGFILIALCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_WEB_SGFILIALCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_WEB_SGFILIALINSCMUNFILIAL: TWideStringField
      FieldName = 'INSCMUNFILIAL'
      Size = 15
    end
    object zqry_WEB_SGFILIALCNAEFILIAL: TWideStringField
      FieldName = 'CNAEFILIAL'
      Size = 7
    end
    object zqry_WEB_SGFILIALPERCISSFILIAL: TFloatField
      FieldName = 'PERCISSFILIAL'
    end
    object zqry_WEB_SGFILIALCONTRIBIPIFILIAL: TWideStringField
      FieldName = 'CONTRIBIPIFILIAL'
      Required = True
      Size = 1
    end
    object zqry_WEB_SGFILIALTIMBREFILIAL: TBlobField
      FieldName = 'TIMBREFILIAL'
    end
    object zqry_WEB_SGFILIALPERFILFILIAL: TWideStringField
      FieldName = 'PERFILFILIAL'
      Size = 1
    end
    object zqry_WEB_SGFILIALINDATIVFILIAL: TWideStringField
      FieldName = 'INDATIVFILIAL'
      Size = 1
    end
    object zqry_WEB_SGFILIALINDNATPJFILIAL: TWideStringField
      FieldName = 'INDNATPJFILIAL'
      Size = 2
    end
    object zqry_WEB_SGFILIALCODEMPCO: TIntegerField
      FieldName = 'CODEMPCO'
    end
    object zqry_WEB_SGFILIALCODFILIALCO: TSmallintField
      FieldName = 'CODFILIALCO'
    end
    object zqry_WEB_SGFILIALCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_WEB_SGFILIALSUFRAMA: TWideStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object zqry_WEB_SGFILIALCODINCTRIB: TWideStringField
      FieldName = 'CODINCTRIB'
      Size = 1
    end
    object zqry_WEB_SGFILIALINDAPROCRED: TWideStringField
      FieldName = 'INDAPROCRED'
      Size = 1
    end
    object zqry_WEB_SGFILIALCODTIPOCONT: TWideStringField
      FieldName = 'CODTIPOCONT'
      Size = 1
    end
    object zqry_WEB_SGFILIALINDREGCUM: TWideStringField
      FieldName = 'INDREGCUM'
      Size = 1
    end
    object zqry_WEB_SGFILIALUNIDFRANQUEADA: TWideStringField
      FieldName = 'UNIDFRANQUEADA'
      Size = 30
    end
    object zqry_WEB_SGFILIALMARCAFRANQUEADORA: TWideStringField
      FieldName = 'MARCAFRANQUEADORA'
      Size = 30
    end
    object zqry_WEB_SGFILIALWWWFRANQUEADORA: TWideStringField
      FieldName = 'WWWFRANQUEADORA'
      Size = 50
    end
    object zqry_WEB_SGFILIALCODRECEITA: TWideStringField
      FieldName = 'CODRECEITA'
    end
    object zqry_WEB_SGFILIALDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_WEB_SGFILIALHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_WEB_SGFILIALIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_WEB_SGFILIALDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_WEB_SGFILIALHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_WEB_SGFILIALIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_WEB_SGFILIALPERFILEPC: TWideStringField
      FieldName = 'PERFILEPC'
      Size = 1
    end
    object zqry_WEB_SGFILIALINDATIVEPC: TWideStringField
      FieldName = 'INDATIVEPC'
      Size = 1
    end
    object zqry_WEB_SGFILIALLOGOPREFEITURA: TBlobField
      FieldName = 'LOGOPREFEITURA'
    end
    object zqry_WEB_SGFILIALCODUF: TIntegerField
      FieldName = 'CODUF'
    end
    object zqry_WEB_SGFILIALnomeresp: TWideStringField
      FieldName = 'nomeresp'
      Size = 50
    end
    object zqry_WEB_SGFILIALcpfresp: TWideStringField
      FieldName = 'cpfresp'
      Size = 14
    end
    object zqry_WEB_SGFILIALCEPRESP: TWideStringField
      FieldName = 'CEPRESP'
      Size = 8
    end
    object zqry_WEB_SGFILIALENDRESP: TWideStringField
      FieldName = 'ENDRESP'
      Size = 50
    end
    object zqry_WEB_SGFILIALNUMRESP: TWideStringField
      FieldName = 'NUMRESP'
      Size = 10
    end
    object zqry_WEB_SGFILIALCOMPLRESP: TWideStringField
      FieldName = 'COMPLRESP'
      Size = 10
    end
    object zqry_WEB_SGFILIALBAIRRORESP: TWideStringField
      FieldName = 'BAIRRORESP'
      Size = 30
    end
    object zqry_WEB_SGFILIALfoneresp: TWideStringField
      FieldName = 'foneresp'
      Size = 14
    end
    object zqry_WEB_SGFILIALFAXRESP: TWideStringField
      FieldName = 'FAXRESP'
      Size = 14
    end
    object zqry_WEB_SGFILIALEMAILRESP: TWideStringField
      FieldName = 'EMAILRESP'
      Size = 100
    end
    object zqry_WEB_SGFILIALlogo: TWideStringField
      FieldName = 'logo'
      Size = 500
    end
    object zqry_WEB_SGFILIALativo: TWideStringField
      FieldName = 'ativo'
      Size = 1
    end
    object zqry_WEB_SGFILIALNOMEREDUZIDO: TWideStringField
      FieldName = 'NOMEREDUZIDO'
      Size = 15
    end
    object zqry_WEB_SGFILIALTX_JUROS_BOLETO: TFloatField
      FieldName = 'TX_JUROS_BOLETO'
    end
    object zqry_WEB_SGFILIALTX_MULTA_BOLETO: TFloatField
      FieldName = 'TX_MULTA_BOLETO'
    end
    object zqry_WEB_SGFILIALDIAS_ATRASO_BOLETO: TSmallintField
      FieldName = 'DIAS_ATRASO_BOLETO'
    end
    object zqry_WEB_SGFILIALDIAS_PROTESTO_BOLETO: TSmallintField
      FieldName = 'DIAS_PROTESTO_BOLETO'
    end
    object zqry_WEB_SGFILIALMSG_BOLETO: TWideStringField
      FieldName = 'MSG_BOLETO'
      Size = 100
    end
    object zqry_WEB_SGFILIALPATH_COPIA_NFE: TWideStringField
      FieldName = 'PATH_COPIA_NFE'
      Size = 255
    end
    object zqry_WEB_SGFILIALMARCAUNICA: TWideStringField
      FieldName = 'MARCAUNICA'
    end
    object zqry_WEB_SGFILIALTEF_CAPPTA: TWideStringField
      FieldName = 'TEF_CAPPTA'
      Size = 1
    end
    object zqry_WEB_SGFILIALNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_WEB_SGFILIALCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_WEB_SGFILIALCAIXA_FINALIZA: TIntegerField
      FieldName = 'CAIXA_FINALIZA'
    end
    object zqry_WEB_SGFILIALCODFORN_REC: TIntegerField
      FieldName = 'CODFORN_REC'
    end
    object zqry_WEB_SGFILIALCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_WEB_SGFILIALRECAGRO: TWideStringField
      FieldName = 'RECAGRO'
      Size = 1
    end
    object zqry_WEB_SGFILIALCODEMPREC: TIntegerField
      FieldName = 'CODEMPREC'
    end
    object zqry_WEB_SGFILIALCODFILIALREC: TIntegerField
      FieldName = 'CODFILIALREC'
    end
    object zqry_WEB_SGFILIALCODEMPRECAT: TIntegerField
      FieldName = 'CODEMPRECAT'
    end
    object zqry_WEB_SGFILIALCODFILIALRECAT: TIntegerField
      FieldName = 'CODFILIALRECAT'
    end
    object zqry_WEB_SGFILIALDESTICMS: TFloatField
      FieldName = 'DESTICMS'
    end
    object zqry_WEB_SGFILIALTIPO_PARC_TEF: TWideStringField
      FieldName = 'TIPO_PARC_TEF'
      Size = 1
    end
    object zqry_WEB_SGFILIALSATCFE: TWideStringField
      FieldName = 'SATCFE'
      Size = 1
    end
    object zqry_WEB_SGFILIALESCOLA: TWideStringField
      FieldName = 'ESCOLA'
      Size = 1
    end
    object zqry_WEB_SGFILIALTEF_TROCA: TWideStringField
      FieldName = 'TEF_TROCA'
      Size = 1
    end
  end
  object dts_WEB_SGFILIAL: TDataSource
    DataSet = zqry_WEB_SGFILIAL
    Left = 120
    Top = 448
  end
  object zqry_MAX_NFCE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select max(nroseq) as ultnfce from sgsequencia')
    Params = <>
    Left = 376
    Top = 680
    object zqry_MAX_NFCEULTNFCE: TIntegerField
      FieldName = 'ULTNFCE'
      ReadOnly = True
    end
  end
  object zdts_MAX_NFCE: TDataSource
    DataSet = zqry_MAX_NFCE
    Left = 472
    Top = 680
  end
  object zqry_SGUSUARIO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgusuario')
    Params = <>
    Left = 376
    Top = 728
    object zqry_SGUSUARIOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGUSUARIOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGUSUARIOIDUSU: TWideStringField
      FieldName = 'IDUSU'
      Required = True
      Size = 8
    end
    object zqry_SGUSUARIONOMEUSU: TWideStringField
      FieldName = 'NOMEUSU'
      Required = True
      Size = 50
    end
    object zqry_SGUSUARIOCODEMPIG: TIntegerField
      FieldName = 'CODEMPIG'
    end
    object zqry_SGUSUARIOCODFILIALIG: TSmallintField
      FieldName = 'CODFILIALIG'
    end
    object zqry_SGUSUARIOIDGRPUSU: TWideStringField
      FieldName = 'IDGRPUSU'
      Size = 8
    end
    object zqry_SGUSUARIOCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_SGUSUARIOCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_SGUSUARIOANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_SGUSUARIOCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_SGUSUARIOPNOMEUSU: TWideStringField
      FieldName = 'PNOMEUSU'
    end
    object zqry_SGUSUARIOUNOMEUSU: TWideStringField
      FieldName = 'UNOMEUSU'
    end
    object zqry_SGUSUARIOCOMENTUSU: TWideStringField
      FieldName = 'COMENTUSU'
      Size = 10000
    end
    object zqry_SGUSUARIOBAIXOCUSTOUSU: TWideStringField
      FieldName = 'BAIXOCUSTOUSU'
      Size = 1
    end
    object zqry_SGUSUARIOCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
    end
    object zqry_SGUSUARIOCODEMPAM: TIntegerField
      FieldName = 'CODEMPAM'
    end
    object zqry_SGUSUARIOCODFILIALAM: TSmallintField
      FieldName = 'CODFILIALAM'
    end
    object zqry_SGUSUARIOABREGAVETAUSU: TWideStringField
      FieldName = 'ABREGAVETAUSU'
      Size = 1
    end
    object zqry_SGUSUARIOAPROVCPSOLICITACAOUSU: TWideStringField
      FieldName = 'APROVCPSOLICITACAOUSU'
      Size = 2
    end
    object zqry_SGUSUARIOALMOXARIFEUSU: TWideStringField
      FieldName = 'ALMOXARIFEUSU'
      Size = 1
    end
    object zqry_SGUSUARIOCODEMPAE: TIntegerField
      FieldName = 'CODEMPAE'
    end
    object zqry_SGUSUARIOCODFILIALAE: TSmallintField
      FieldName = 'CODFILIALAE'
    end
    object zqry_SGUSUARIOTIPOAGE: TWideStringField
      FieldName = 'TIPOAGE'
      Size = 5
    end
    object zqry_SGUSUARIOCODAGE: TIntegerField
      FieldName = 'CODAGE'
    end
    object zqry_SGUSUARIOAPROVRMAUSU: TWideStringField
      FieldName = 'APROVRMAUSU'
      Size = 2
    end
    object zqry_SGUSUARIOCOMPRASUSU: TWideStringField
      FieldName = 'COMPRASUSU'
      Size = 1
    end
    object zqry_SGUSUARIOALTPARCVENDA: TWideStringField
      FieldName = 'ALTPARCVENDA'
      Size = 1
    end
    object zqry_SGUSUARIOAPROVRECEITA: TWideStringField
      FieldName = 'APROVRECEITA'
      Size = 1
    end
    object zqry_SGUSUARIOATIVCLI: TWideStringField
      FieldName = 'ATIVCLI'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOLIBERACREDUSU: TWideStringField
      FieldName = 'LIBERACREDUSU'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOCORAGENDA: TIntegerField
      FieldName = 'CORAGENDA'
      Required = True
    end
    object zqry_SGUSUARIOCODEMPCE: TIntegerField
      FieldName = 'CODEMPCE'
    end
    object zqry_SGUSUARIOCODFILIALCE: TSmallintField
      FieldName = 'CODFILIALCE'
    end
    object zqry_SGUSUARIOCODCONFEMAIL: TIntegerField
      FieldName = 'CODCONFEMAIL'
    end
    object zqry_SGUSUARIOCANCELAOP: TWideStringField
      FieldName = 'CANCELAOP'
      Size = 1
    end
    object zqry_SGUSUARIOVENDAPATRIMUSU: TWideStringField
      FieldName = 'VENDAPATRIMUSU'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIORMAOUTCC: TWideStringField
      FieldName = 'RMAOUTCC'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOATIVOUSU: TWideStringField
      FieldName = 'ATIVOUSU'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOVISUALIZALUCR: TWideStringField
      FieldName = 'VISUALIZALUCR'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOLIBERACAMPOPESAGEM: TWideStringField
      FieldName = 'LIBERACAMPOPESAGEM'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOAPROVORDCP: TWideStringField
      FieldName = 'APROVORDCP'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTCADLOTE: TWideStringField
      FieldName = 'ACESOPBTCADLOTE'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTRMA: TWideStringField
      FieldName = 'ACESOPBTRMA'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTQUALID: TWideStringField
      FieldName = 'ACESOPBTQUALID'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTDISTR: TWideStringField
      FieldName = 'ACESOPBTDISTR'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTFASE: TWideStringField
      FieldName = 'ACESOPBTFASE'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTCANC: TWideStringField
      FieldName = 'ACESOPBTCANC'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTSUBPROD: TWideStringField
      FieldName = 'ACESOPBTSUBPROD'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTREMESSA: TWideStringField
      FieldName = 'ACESOPBTREMESSA'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPBTRETORNO: TWideStringField
      FieldName = 'ACESOPBTRETORNO'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOACESOPVERITENS: TWideStringField
      FieldName = 'ACESOPVERITENS'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOCADOUTUSU: TWideStringField
      FieldName = 'CADOUTUSU'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGUSUARIOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGUSUARIOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGUSUARIODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGUSUARIOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGUSUARIOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGUSUARIOTIPOUSU: TWideStringField
      FieldName = 'TIPOUSU'
      Required = True
      Size = 1
    end
    object zqry_SGUSUARIOSENHAUSU: TWideStringField
      FieldName = 'SENHAUSU'
      Size = 128
    end
    object zqry_SGUSUARIONIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
    object zqry_SGUSUARIOFOTO: TWideStringField
      FieldName = 'FOTO'
      Size = 255
    end
  end
  object zdts_SGUSUARIO: TDataSource
    DataSet = zqry_SGUSUARIO
    Left = 472
    Top = 728
  end
  object zqry_EQUNIDADE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from equnidade')
    Params = <>
    Left = 376
    Top = 776
    object zqry_EQUNIDADECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQUNIDADECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQUNIDADECODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_EQUNIDADEDESCUNID: TWideStringField
      FieldName = 'DESCUNID'
      Required = True
      Size = 60
    end
    object zqry_EQUNIDADECASASDEC: TSmallintField
      FieldName = 'CASASDEC'
      Required = True
    end
    object zqry_EQUNIDADECALCVOLEMB: TWideStringField
      FieldName = 'CALCVOLEMB'
      Size = 1
    end
    object zqry_EQUNIDADEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQUNIDADEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQUNIDADEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQUNIDADEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQUNIDADEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQUNIDADEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQUNIDADE: TDataSource
    DataSet = zqry_EQUNIDADE
    Left = 472
    Top = 776
  end
  object zqry_FNTIPOCOB: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fntipocob')
    Params = <>
    Left = 376
    Top = 824
    object zqry_FNTIPOCOBCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNTIPOCOBCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNTIPOCOBCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
      Required = True
    end
    object zqry_FNTIPOCOBDESCTIPOCOB: TWideStringField
      FieldName = 'DESCTIPOCOB'
      Required = True
      Size = 40
    end
    object zqry_FNTIPOCOBTIPOFEBRABAN: TWideStringField
      FieldName = 'TIPOFEBRABAN'
      Required = True
      Size = 2
    end
    object zqry_FNTIPOCOBTIPOSPED: TWideStringField
      FieldName = 'TIPOSPED'
      Size = 2
    end
    object zqry_FNTIPOCOBDUPLCOB: TWideStringField
      FieldName = 'DUPLCOB'
      Size = 8
    end
    object zqry_FNTIPOCOBOBRIGCARTCOB: TWideStringField
      FieldName = 'OBRIGCARTCOB'
      Required = True
      Size = 1
    end
    object zqry_FNTIPOCOBCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_FNTIPOCOBCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_FNTIPOCOBNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNTIPOCOBSEQTALAO: TSmallintField
      FieldName = 'SEQTALAO'
    end
    object zqry_FNTIPOCOBNRODIASCOMP: TSmallintField
      FieldName = 'NRODIASCOMP'
    end
    object zqry_FNTIPOCOBDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNTIPOCOBHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNTIPOCOBIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNTIPOCOBDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNTIPOCOBHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNTIPOCOBIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNTIPOCOBTIPONFE: TIntegerField
      FieldName = 'TIPONFE'
    end
    object zqry_FNTIPOCOBCNPJCARTAO: TWideStringField
      FieldName = 'CNPJCARTAO'
      Size = 17
    end
    object zqry_FNTIPOCOBTIPOCOB: TWideStringField
      FieldName = 'TIPOCOB'
      Size = 1
    end
    object zqry_FNTIPOCOBCHECKOUT: TWideStringField
      FieldName = 'CHECKOUT'
      Size = 1
    end
    object zqry_FNTIPOCOBCHAVEURL1: TWideStringField
      FieldName = 'CHAVEURL1'
      Size = 100
    end
    object zqry_FNTIPOCOBOBRIGANOTA: TWideStringField
      FieldName = 'OBRIGANOTA'
      Size = 1
    end
  end
  object zdts_FNTIPOCOB: TDataSource
    DataSet = zqry_FNTIPOCOB
    Left = 472
    Top = 824
  end
  object zdts_EQGRUPO: TDataSource
    DataSet = zqry_EQGRUPO
    Left = 472
    Top = 872
  end
  object zqry_EQGRUPO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqgrupo')
    Params = <>
    Left = 376
    Top = 872
    object zqry_EQGRUPOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQGRUPOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQGRUPOCODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_EQGRUPODESCGRUP: TWideStringField
      FieldName = 'DESCGRUP'
      Required = True
      Size = 50
    end
    object zqry_EQGRUPONIVELGRUP: TIntegerField
      FieldName = 'NIVELGRUP'
    end
    object zqry_EQGRUPOCODEMPSG: TIntegerField
      FieldName = 'CODEMPSG'
    end
    object zqry_EQGRUPOCODFILIALSG: TSmallintField
      FieldName = 'CODFILIALSG'
    end
    object zqry_EQGRUPOCODSUBGRUP: TWideStringField
      FieldName = 'CODSUBGRUP'
      Size = 14
    end
    object zqry_EQGRUPOSIGLAGRUP: TWideStringField
      FieldName = 'SIGLAGRUP'
      Size = 10
    end
    object zqry_EQGRUPODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQGRUPOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQGRUPOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQGRUPODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQGRUPOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQGRUPOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_EQGRUPOMARKUP: TSingleField
      FieldName = 'MARKUP'
    end
  end
  object zqry_CPFORNECED: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from cpforneced')
    Params = <>
    Left = 376
    Top = 920
    object zqry_CPFORNECEDCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPFORNECEDCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPFORNECEDCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_CPFORNECEDRAZFOR: TWideStringField
      FieldName = 'RAZFOR'
      Required = True
      Size = 60
    end
    object zqry_CPFORNECEDCODEMPTF: TIntegerField
      FieldName = 'CODEMPTF'
      Required = True
    end
    object zqry_CPFORNECEDCODFILIALTF: TSmallintField
      FieldName = 'CODFILIALTF'
      Required = True
    end
    object zqry_CPFORNECEDCODTIPOFOR: TIntegerField
      FieldName = 'CODTIPOFOR'
      Required = True
    end
    object zqry_CPFORNECEDCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_CPFORNECEDCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_CPFORNECEDCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_CPFORNECEDCODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_CPFORNECEDCODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_CPFORNECEDCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_CPFORNECEDNOMEFOR: TWideStringField
      FieldName = 'NOMEFOR'
      Required = True
      Size = 50
    end
    object zqry_CPFORNECEDDATAFOR: TDateField
      FieldName = 'DATAFOR'
      Required = True
    end
    object zqry_CPFORNECEDATIVOFOR: TWideStringField
      FieldName = 'ATIVOFOR'
      Size = 1
    end
    object zqry_CPFORNECEDPESSOAFOR: TWideStringField
      FieldName = 'PESSOAFOR'
      Required = True
      Size = 1
    end
    object zqry_CPFORNECEDCNPJFOR: TWideStringField
      FieldName = 'CNPJFOR'
      Size = 14
    end
    object zqry_CPFORNECEDCPFFOR: TWideStringField
      FieldName = 'CPFFOR'
      Size = 11
    end
    object zqry_CPFORNECEDINSCFOR: TWideStringField
      FieldName = 'INSCFOR'
    end
    object zqry_CPFORNECEDRGFOR: TWideStringField
      FieldName = 'RGFOR'
      Size = 13
    end
    object zqry_CPFORNECEDENDFOR: TWideStringField
      FieldName = 'ENDFOR'
      Size = 50
    end
    object zqry_CPFORNECEDNUMFOR: TIntegerField
      FieldName = 'NUMFOR'
    end
    object zqry_CPFORNECEDCOMPLFOR: TWideStringField
      FieldName = 'COMPLFOR'
    end
    object zqry_CPFORNECEDBAIRFOR: TWideStringField
      FieldName = 'BAIRFOR'
      Size = 30
    end
    object zqry_CPFORNECEDCEPFOR: TWideStringField
      FieldName = 'CEPFOR'
      Size = 8
    end
    object zqry_CPFORNECEDCIDFOR: TWideStringField
      FieldName = 'CIDFOR'
      Size = 30
    end
    object zqry_CPFORNECEDUFFOR: TWideStringField
      FieldName = 'UFFOR'
      Size = 2
    end
    object zqry_CPFORNECEDCONTFOR: TWideStringField
      FieldName = 'CONTFOR'
      Size = 40
    end
    object zqry_CPFORNECEDFONEFOR: TWideStringField
      FieldName = 'FONEFOR'
      Size = 12
    end
    object zqry_CPFORNECEDFAXFOR: TWideStringField
      FieldName = 'FAXFOR'
      Size = 9
    end
    object zqry_CPFORNECEDAGENCIAFOR: TWideStringField
      FieldName = 'AGENCIAFOR'
      Size = 6
    end
    object zqry_CPFORNECEDCONTAFOR: TWideStringField
      FieldName = 'CONTAFOR'
      Size = 10
    end
    object zqry_CPFORNECEDEMAILFOR: TWideStringField
      FieldName = 'EMAILFOR'
      Size = 50
    end
    object zqry_CPFORNECEDOBSFOR: TWideStringField
      FieldName = 'OBSFOR'
      Size = 10000
    end
    object zqry_CPFORNECEDCELFOR: TWideStringField
      FieldName = 'CELFOR'
      Size = 9
    end
    object zqry_CPFORNECEDCLIFOR: TWideStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object zqry_CPFORNECEDSSPFOR: TWideStringField
      FieldName = 'SSPFOR'
      Size = 10
    end
    object zqry_CPFORNECEDDDDFONEFOR: TWideStringField
      FieldName = 'DDDFONEFOR'
      Size = 4
    end
    object zqry_CPFORNECEDDDDFAXFOR: TWideStringField
      FieldName = 'DDDFAXFOR'
      Size = 4
    end
    object zqry_CPFORNECEDDDDCELFOR: TWideStringField
      FieldName = 'DDDCELFOR'
      Size = 4
    end
    object zqry_CPFORNECEDSITEFOR: TWideStringField
      FieldName = 'SITEFOR'
      Size = 50
    end
    object zqry_CPFORNECEDCODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_CPFORNECEDCODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_CPFORNECEDCODFORCONTAB: TWideStringField
      FieldName = 'CODFORCONTAB'
    end
    object zqry_CPFORNECEDCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_CPFORNECEDSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_CPFORNECEDCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_CPFORNECEDCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_CPFORNECEDCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_CPFORNECEDCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_CPFORNECEDCODEMPFF: TIntegerField
      FieldName = 'CODEMPFF'
    end
    object zqry_CPFORNECEDCODFILIALFF: TSmallintField
      FieldName = 'CODFILIALFF'
    end
    object zqry_CPFORNECEDCODFISCFOR: TIntegerField
      FieldName = 'CODFISCFOR'
    end
    object zqry_CPFORNECEDSUFRAMAFOR: TWideStringField
      FieldName = 'SUFRAMAFOR'
      Size = 9
    end
    object zqry_CPFORNECEDNRODEPENDFOR: TSmallintField
      FieldName = 'NRODEPENDFOR'
    end
    object zqry_CPFORNECEDINSCCONREG: TWideStringField
      FieldName = 'INSCCONREG'
      Size = 15
    end
    object zqry_CPFORNECEDCODEXPORTADOR: TWideStringField
      FieldName = 'CODEXPORTADOR'
    end
    object zqry_CPFORNECEDDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CPFORNECEDHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CPFORNECEDIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CPFORNECEDDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CPFORNECEDHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CPFORNECEDIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_CPFORNECED: TDataSource
    DataSet = zqry_CPFORNECED
    Left = 472
    Top = 920
  end
  object zqry_SGMUNICIPIO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgmunicipio')
    Params = <>
    Left = 376
    Top = 968
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
    Left = 472
    Top = 968
  end
  object zqry_EQTIPOMOV: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqtipomov')
    Params = <>
    Left = 376
    Top = 1016
    object zqry_EQTIPOMOVCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQTIPOMOVCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQTIPOMOVCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_EQTIPOMOVCODEMPMN: TIntegerField
      FieldName = 'CODEMPMN'
      Required = True
    end
    object zqry_EQTIPOMOVCODFILIALMN: TSmallintField
      FieldName = 'CODFILIALMN'
      Required = True
    end
    object zqry_EQTIPOMOVCODMODNOTA: TIntegerField
      FieldName = 'CODMODNOTA'
      Required = True
    end
    object zqry_EQTIPOMOVCODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
      Required = True
    end
    object zqry_EQTIPOMOVCODFILIALSE: TSmallintField
      FieldName = 'CODFILIALSE'
      Required = True
    end
    object zqry_EQTIPOMOVSERIE: TWideStringField
      FieldName = 'SERIE'
      Required = True
      Size = 4
    end
    object zqry_EQTIPOMOVDESCTIPOMOV: TWideStringField
      FieldName = 'DESCTIPOMOV'
      Required = True
      Size = 40
    end
    object zqry_EQTIPOMOVESTIPOMOV: TWideStringField
      FieldName = 'ESTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVFISCALTIPOMOV: TWideStringField
      FieldName = 'FISCALTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVESTOQTIPOMOV: TWideStringField
      FieldName = 'ESTOQTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVTIPOMOV: TWideStringField
      FieldName = 'TIPOMOV'
      Required = True
      Size = 2
    end
    object zqry_EQTIPOMOVCODEMPTB: TIntegerField
      FieldName = 'CODEMPTB'
    end
    object zqry_EQTIPOMOVCODFILIALTB: TSmallintField
      FieldName = 'CODFILIALTB'
    end
    object zqry_EQTIPOMOVCODTAB: TIntegerField
      FieldName = 'CODTAB'
    end
    object zqry_EQTIPOMOVESPECIETIPOMOV: TWideStringField
      FieldName = 'ESPECIETIPOMOV'
      Size = 4
    end
    object zqry_EQTIPOMOVCODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
    end
    object zqry_EQTIPOMOVCODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
    end
    object zqry_EQTIPOMOVCODTIPOMOVTM: TIntegerField
      FieldName = 'CODTIPOMOVTM'
    end
    object zqry_EQTIPOMOVCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_EQTIPOMOVCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_EQTIPOMOVCODTIPOMOVTC: TIntegerField
      FieldName = 'CODTIPOMOVTC'
    end
    object zqry_EQTIPOMOVIMPPEDTIPOMOV: TWideStringField
      FieldName = 'IMPPEDTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVIMPNFTIPOMOV: TWideStringField
      FieldName = 'IMPNFTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVIMPBOLTIPOMOV: TWideStringField
      FieldName = 'IMPBOLTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVIMPRECTIPOMOV: TWideStringField
      FieldName = 'IMPRECTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVREIMPNFTIPOMOV: TWideStringField
      FieldName = 'REIMPNFTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVTUSUTIPOMOV: TWideStringField
      FieldName = 'TUSUTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVSOMAVDTIPOMOV: TWideStringField
      FieldName = 'SOMAVDTIPOMOV'
      Size = 1
    end
    object zqry_EQTIPOMOVSEQNFTIPOMOV: TWideStringField
      FieldName = 'SEQNFTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVVLRMFINTIPOMOV: TWideStringField
      FieldName = 'VLRMFINTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVMCOMISTIPOMOV: TWideStringField
      FieldName = 'MCOMISTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVOPERTIPOMOV: TWideStringField
      FieldName = 'OPERTIPOMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVCTIPOFRETE: TWideStringField
      FieldName = 'CTIPOFRETE'
      Size = 1
    end
    object zqry_EQTIPOMOVCODEMPRC: TIntegerField
      FieldName = 'CODEMPRC'
    end
    object zqry_EQTIPOMOVCODFILIALRC: TSmallintField
      FieldName = 'CODFILIALRC'
    end
    object zqry_EQTIPOMOVCODREGRCOMIS: TIntegerField
      FieldName = 'CODREGRCOMIS'
    end
    object zqry_EQTIPOMOVCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_EQTIPOMOVCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_EQTIPOMOVCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_EQTIPOMOVEMITNFCPMOV: TWideStringField
      FieldName = 'EMITNFCPMOV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVCODEMPDF: TIntegerField
      FieldName = 'CODEMPDF'
    end
    object zqry_EQTIPOMOVCODFILIALDF: TSmallintField
      FieldName = 'CODFILIALDF'
    end
    object zqry_EQTIPOMOVCODMODDOCFISC: TWideStringField
      FieldName = 'CODMODDOCFISC'
      Size = 3
    end
    object zqry_EQTIPOMOVCODEMPPP: TIntegerField
      FieldName = 'CODEMPPP'
    end
    object zqry_EQTIPOMOVCODFILIALPP: TSmallintField
      FieldName = 'CODFILIALPP'
    end
    object zqry_EQTIPOMOVCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_EQTIPOMOVDESCNATCOMPL: TWideStringField
      FieldName = 'DESCNATCOMPL'
      Size = 60
    end
    object zqry_EQTIPOMOVCODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
    end
    object zqry_EQTIPOMOVCODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
    end
    object zqry_EQTIPOMOVCODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_EQTIPOMOVDESBLOQCV: TWideStringField
      FieldName = 'DESBLOQCV'
      Required = True
      Size = 1
    end
    object zqry_EQTIPOMOVDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQTIPOMOVHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQTIPOMOVIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQTIPOMOVDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQTIPOMOVHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQTIPOMOVIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_EQTIPOMOVCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_EQTIPOMOVCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_EQTIPOMOVSERIEC: TWideStringField
      FieldName = 'SERIEC'
      Size = 4
    end
    object zqry_EQTIPOMOVPERMITDIGIPI: TWideStringField
      FieldName = 'PERMITDIGIPI'
      Size = 10
    end
    object zqry_EQTIPOMOVNATOPERACAO: TWideStringField
      FieldName = 'NATOPERACAO'
      Size = 50
    end
    object zqry_EQTIPOMOVCALCIMPCP: TWideStringField
      FieldName = 'CALCIMPCP'
      Required = True
      Size = 1
    end
  end
  object zdts_EQTIPOMOV: TDataSource
    DataSet = zqry_EQTIPOMOV
    Left = 472
    Top = 1016
  end
  object zqry_LFMENSAGEM: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from lfmensagem')
    Params = <>
    Left = 376
    Top = 1064
    object zqry_LFMENSAGEMCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LFMENSAGEMCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LFMENSAGEMCODMENS: TIntegerField
      FieldName = 'CODMENS'
      Required = True
    end
    object zqry_LFMENSAGEMMENS: TWideStringField
      FieldName = 'MENS'
      Required = True
      Size = 10000
    end
    object zqry_LFMENSAGEMDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFMENSAGEMHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFMENSAGEMIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFMENSAGEMDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LFMENSAGEMHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LFMENSAGEMIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_LFMENSAGEM: TDataSource
    DataSet = zqry_LFMENSAGEM
    Left = 472
    Top = 1064
  end
  object zqry_FNPLANOPAG: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnplanopag')
    Params = <>
    Left = 376
    Top = 1112
  end
  object zdts_FNPLANOPAG: TDataSource
    DataSet = zqry_FNPLANOPAG
    Left = 472
    Top = 1112
  end
  object zqry_VDITVENDA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vditvenda')
    Params = <>
    Left = 544
    Top = 440
    object zqry_VDITVENDA_NCMPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_NCMPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODFISC'
      KeyFields = 'CODPROD'
      Size = 8
      Lookup = True
    end
    object zqry_VDITVENDA_TEMRECEITA: TStringField
      FieldKind = fkLookup
      FieldName = '_TEMRECEITA'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'USARECEITAPROD'
      KeyFields = 'CODPROD'
      Size = 1
      Lookup = True
    end
    object zqry_VDITVENDA_DESCPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_DESCPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
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
    object zqry_VDITVENDAQTDITVENDA: TExtendedField
      FieldName = 'QTDITVENDA'
      Required = True
      Precision = 19
    end
    object zqry_VDITVENDAQTDITVENDACANC: TExtendedField
      FieldName = 'QTDITVENDACANC'
      Precision = 19
    end
    object zqry_VDITVENDAPRECOITVENDA: TExtendedField
      FieldName = 'PRECOITVENDA'
      Required = True
      Precision = 19
    end
    object zqry_VDITVENDAPERCDESCITVENDA: TExtendedField
      FieldName = 'PERCDESCITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRDESCITVENDA: TExtendedField
      FieldName = 'VLRDESCITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAPERCICMSITVENDA: TExtendedField
      FieldName = 'PERCICMSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRBASEICMSITVENDA: TExtendedField
      FieldName = 'VLRBASEICMSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRICMSITVENDA: TExtendedField
      FieldName = 'VLRICMSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAPERCIPIITVENDA: TExtendedField
      FieldName = 'PERCIPIITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRBASEIPIITVENDA: TExtendedField
      FieldName = 'VLRBASEIPIITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRIPIITVENDA: TExtendedField
      FieldName = 'VLRIPIITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRLIQITVENDA: TExtendedField
      FieldName = 'VLRLIQITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAPERCCOMISITVENDA: TExtendedField
      FieldName = 'PERCCOMISITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRCOMISITVENDA: TExtendedField
      FieldName = 'VLRCOMISITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRADICITVENDA: TExtendedField
      FieldName = 'VLRADICITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAPERCISSITVENDA: TExtendedField
      FieldName = 'PERCISSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRISSITVENDA: TExtendedField
      FieldName = 'VLRISSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRFRETEITVENDA: TExtendedField
      FieldName = 'VLRFRETEITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRPRODITVENDA: TExtendedField
      FieldName = 'VLRPRODITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRISENTASITVENDA: TExtendedField
      FieldName = 'VLRISENTASITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLROUTRASITVENDA: TExtendedField
      FieldName = 'VLROUTRASITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_VDITVENDAVLRBASEISSITVENDA: TExtendedField
      FieldName = 'VLRBASEISSITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRBASEICMSBRUTITVENDA: TExtendedField
      FieldName = 'VLRBASEICMSBRUTITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRBASEICMSSTITVENDA: TExtendedField
      FieldName = 'VLRBASEICMSSTITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRICMSSTITVENDA: TExtendedField
      FieldName = 'VLRICMSSTITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRBASECOMISITVENDA: TExtendedField
      FieldName = 'VLRBASECOMISITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAMARGEMVLAGRITVENDA: TExtendedField
      FieldName = 'MARGEMVLAGRITVENDA'
      Precision = 19
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
    object zqry_VDITVENDAQTDDEVITVENDA: TExtendedField
      FieldName = 'QTDDEVITVENDA'
      Precision = 19
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
    object zqry_VDITVENDAVLRBASEICMSSTRETITVENDA: TExtendedField
      FieldName = 'VLRBASEICMSSTRETITVENDA'
      Precision = 19
    end
    object zqry_VDITVENDAVLRICMSSTRETITVENDA: TExtendedField
      FieldName = 'VLRICMSSTRETITVENDA'
      Precision = 19
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
  end
  object zqry_FNRECEBER: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnreceber')
    Params = <>
    Left = 376
    Top = 1160
    object zqry_FNRECEBER_NOMECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_FNRECEBER_MAILCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_MAILCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'EMAILCLI'
      KeyFields = 'CODCLI'
      Size = 100
      Lookup = True
    end
    object zqry_FNRECEBER_CNPJCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CNPJCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CNPJCLI'
      KeyFields = 'CODCLI'
      Size = 25
      Lookup = True
    end
    object zqry_FNRECEBER_CPFCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CPFCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CPFCLI'
      KeyFields = 'CODCLI'
      Size = 15
      Lookup = True
    end
    object zqry_FNRECEBER_ENDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Size = 100
      Lookup = True
    end
    object zqry_FNRECEBER_BAIRROCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_FNRECEBER_CIDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_FNRECEBER_UFCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_UFCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'UFCLI'
      KeyFields = 'CODCLI'
      Size = 2
      Lookup = True
    end
    object zqry_FNRECEBER_CEPCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CEPCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CEPCLI'
      KeyFields = 'CODCLI'
      Size = 9
      Lookup = True
    end
    object zqry_FNRECEBER_NUMCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_FNRECEBERVLRREC: TExtendedField
      FieldName = 'VLRREC'
      Required = True
      Precision = 19
    end
    object zqry_FNRECEBERVLRDESCREC: TExtendedField
      FieldName = 'VLRDESCREC'
      Precision = 19
    end
    object zqry_FNRECEBERVLRMULTAREC: TExtendedField
      FieldName = 'VLRMULTAREC'
      Precision = 19
    end
    object zqry_FNRECEBERVLRJUROSREC: TExtendedField
      FieldName = 'VLRJUROSREC'
      Precision = 19
    end
    object zqry_FNRECEBERVLRDEVREC: TExtendedField
      FieldName = 'VLRDEVREC'
      Required = True
      Precision = 19
    end
    object zqry_FNRECEBERVLRPARCREC: TExtendedField
      FieldName = 'VLRPARCREC'
      Required = True
      Precision = 19
    end
    object zqry_FNRECEBERVLRPAGOREC: TExtendedField
      FieldName = 'VLRPAGOREC'
      Precision = 19
    end
    object zqry_FNRECEBERVLRAPAGREC: TExtendedField
      FieldName = 'VLRAPAGREC'
      Precision = 19
    end
    object zqry_FNRECEBERVLRBASECOMIS: TExtendedField
      FieldName = 'VLRBASECOMIS'
      Precision = 19
    end
    object zqry_FNRECEBERVLRRETENSAOISS: TExtendedField
      FieldName = 'VLRRETENSAOISS'
      Precision = 19
    end
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
    object zqry_FNRECEBERVLRCOMIREC: TExtendedField
      FieldName = 'VLRCOMIREC'
      Precision = 19
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
  object zqry_FNITRECEBER: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnitreceber')
    Params = <>
    Left = 544
    Top = 1160
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
    object zqry_FNITRECEBER_TPCOBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = '_TPCOBRANCA'
      LookupDataSet = zqry_FNTIPOCOB
      LookupKeyFields = 'CODTIPOCOB'
      LookupResultField = 'DESCTIPOCOB'
      KeyFields = 'CODTIPOCOB'
      Lookup = True
    end
    object zqry_FNITRECEBER_CODCNAB: TStringField
      FieldKind = fkLookup
      FieldName = '_CODCNAB'
      LookupDataSet = zqry_FNCARTCOB
      LookupKeyFields = 'CODCARTCOB'
      LookupResultField = 'CODCARTCOBCNAB'
      KeyFields = 'CODCARTCOB'
      Lookup = True
    end
    object zqry_FNITRECEBERNPARCITREC: TIntegerField
      FieldName = 'NPARCITREC'
      Required = True
    end
    object zqry_FNITRECEBERVLRITREC: TExtendedField
      FieldName = 'VLRITREC'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRDESCITREC: TExtendedField
      FieldName = 'VLRDESCITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRMULTAITREC: TExtendedField
      FieldName = 'VLRMULTAITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRJUROSITREC: TExtendedField
      FieldName = 'VLRJUROSITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRDEVITREC: TExtendedField
      FieldName = 'VLRDEVITREC'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRPARCITREC: TExtendedField
      FieldName = 'VLRPARCITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRPAGOITREC: TExtendedField
      FieldName = 'VLRPAGOITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRAPAGITREC: TExtendedField
      FieldName = 'VLRAPAGITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRCANCITREC: TExtendedField
      FieldName = 'VLRCANCITREC'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRBASECOMIS: TExtendedField
      FieldName = 'VLRBASECOMIS'
      Precision = 19
    end
    object zqry_FNITRECEBERVLRCOMIITREC: TExtendedField
      FieldName = 'VLRCOMIITREC'
      Precision = 19
    end
  end
  object zdts_VDITVENDA: TDataSource
    DataSet = zqry_VDITVENDA
    Left = 632
    Top = 440
  end
  object zdts_FNRECEBER: TDataSource
    DataSet = zqry_FNRECEBER
    Left = 472
    Top = 1160
  end
  object zdts_FNITRECEBER: TDataSource
    DataSet = zqry_FNITRECEBER
    Left = 640
    Top = 1160
  end
  object zqry_VDFRETEVD: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdfretevd')
    Params = <>
    Left = 376
    Top = 1208
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
    object zqry_VDFRETEVDCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_VDFRETEVDCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_VDFRETEVDCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
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
    object zqry_VDFRETEVDVLRFRETEVD: TExtendedField
      FieldName = 'VLRFRETEVD'
      Required = True
      Precision = 19
    end
    object zqry_VDFRETEVDQTDFRETEVD: TExtendedField
      FieldName = 'QTDFRETEVD'
      Required = True
      Precision = 19
    end
    object zqry_VDFRETEVDPESOBRUTVD: TExtendedField
      FieldName = 'PESOBRUTVD'
      Required = True
      Precision = 19
    end
    object zqry_VDFRETEVDPESOLIQVD: TExtendedField
      FieldName = 'PESOLIQVD'
      Required = True
      Precision = 19
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
    object zqry_VDFRETEVDCONHECFRETEVD: TWideStringField
      FieldName = 'CONHECFRETEVD'
      Size = 13
    end
    object zqry_VDFRETEVDPERCVENDAFRETEVD: TFloatField
      FieldName = 'PERCVENDAFRETEVD'
    end
    object zqry_VDFRETEVDFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
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
    object zqry_VDFRETEVDVLRBASEICMSFRETEVD: TExtendedField
      FieldName = 'VLRBASEICMSFRETEVD'
      Precision = 19
    end
    object zqry_VDFRETEVDALIQICMSFRETEVD: TExtendedField
      FieldName = 'ALIQICMSFRETEVD'
      Precision = 19
    end
    object zqry_VDFRETEVDVLRICMSFRETEVD: TExtendedField
      FieldName = 'VLRICMSFRETEVD'
      Precision = 19
    end
    object zqry_VDFRETEVDVLRSEGFRETEVD: TExtendedField
      FieldName = 'VLRSEGFRETEVD'
      Precision = 19
    end
    object zqry_VDFRETEVDRNTCVD: TWideStringField
      FieldName = 'RNTCVD'
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
    object zqry_VDFRETEVDDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDFRETEVDHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDFRETEVDIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_VDFRETEVD: TDataSource
    DataSet = zqry_VDFRETEVD
    Left = 472
    Top = 1208
  end
  object zqry_VDTRANSP: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdtransp')
    Params = <>
    Left = 376
    Top = 1256
    object zqry_VDTRANSPCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDTRANSPCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDTRANSPCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
      Required = True
    end
    object zqry_VDTRANSPRAZTRAN: TWideStringField
      FieldName = 'RAZTRAN'
      Required = True
      Size = 50
    end
    object zqry_VDTRANSPNOMETRAN: TWideStringField
      FieldName = 'NOMETRAN'
      Required = True
      Size = 40
    end
    object zqry_VDTRANSPCNPJTRAN: TWideStringField
      FieldName = 'CNPJTRAN'
      Size = 14
    end
    object zqry_VDTRANSPCPFTRAN: TWideStringField
      FieldName = 'CPFTRAN'
      Size = 11
    end
    object zqry_VDTRANSPINSCTRAN: TWideStringField
      FieldName = 'INSCTRAN'
    end
    object zqry_VDTRANSPENDTRAN: TWideStringField
      FieldName = 'ENDTRAN'
      Size = 50
    end
    object zqry_VDTRANSPNUMTRAN: TIntegerField
      FieldName = 'NUMTRAN'
    end
    object zqry_VDTRANSPCOMPLTRAN: TWideStringField
      FieldName = 'COMPLTRAN'
    end
    object zqry_VDTRANSPBAIRTRAN: TWideStringField
      FieldName = 'BAIRTRAN'
      Size = 30
    end
    object zqry_VDTRANSPCIDTRAN: TWideStringField
      FieldName = 'CIDTRAN'
      Size = 30
    end
    object zqry_VDTRANSPCEPTRAN: TWideStringField
      FieldName = 'CEPTRAN'
      Size = 8
    end
    object zqry_VDTRANSPFONETRAN: TWideStringField
      FieldName = 'FONETRAN'
      Size = 12
    end
    object zqry_VDTRANSPFAXTRAN: TWideStringField
      FieldName = 'FAXTRAN'
      Size = 9
    end
    object zqry_VDTRANSPUFTRAN: TWideStringField
      FieldName = 'UFTRAN'
      Size = 2
    end
    object zqry_VDTRANSPTIPOTRAN: TWideStringField
      FieldName = 'TIPOTRAN'
      Size = 1
    end
    object zqry_VDTRANSPCELTRAN: TWideStringField
      FieldName = 'CELTRAN'
      Size = 9
    end
    object zqry_VDTRANSPCONTTRAN: TWideStringField
      FieldName = 'CONTTRAN'
      Size = 40
    end
    object zqry_VDTRANSPDDDFONETRAN: TWideStringField
      FieldName = 'DDDFONETRAN'
      Size = 4
    end
    object zqry_VDTRANSPDDDFAXTRAN: TWideStringField
      FieldName = 'DDDFAXTRAN'
      Size = 4
    end
    object zqry_VDTRANSPDDDCELTRAN: TWideStringField
      FieldName = 'DDDCELTRAN'
      Size = 4
    end
    object zqry_VDTRANSPCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_VDTRANSPSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_VDTRANSPCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_VDTRANSPCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_VDTRANSPCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_VDTRANSPCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_VDTRANSPCODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
    end
    object zqry_VDTRANSPCODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
    end
    object zqry_VDTRANSPCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_VDTRANSPCONJUGETRAN: TWideStringField
      FieldName = 'CONJUGETRAN'
      Size = 50
    end
    object zqry_VDTRANSPCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_VDTRANSPCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_VDTRANSPCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_VDTRANSPAGENCIATRAN: TWideStringField
      FieldName = 'AGENCIATRAN'
      Size = 10
    end
    object zqry_VDTRANSPNUMCONTATRAN: TWideStringField
      FieldName = 'NUMCONTATRAN'
      Size = 10
    end
    object zqry_VDTRANSPPLACATRAN: TWideStringField
      FieldName = 'PLACATRAN'
      Size = 7
    end
    object zqry_VDTRANSPNRODEPENDTRAN: TSmallintField
      FieldName = 'NRODEPENDTRAN'
    end
    object zqry_VDTRANSPRGTRAN: TWideStringField
      FieldName = 'RGTRAN'
      Size = 13
    end
    object zqry_VDTRANSPSSPTRAN: TWideStringField
      FieldName = 'SSPTRAN'
      Size = 10
    end
    object zqry_VDTRANSPCODGPS: TWideStringField
      FieldName = 'CODGPS'
      Size = 4
    end
    object zqry_VDTRANSPNROPISTRAN: TWideStringField
      FieldName = 'NROPISTRAN'
    end
    object zqry_VDTRANSPOBSTRAN: TWideStringField
      FieldName = 'OBSTRAN'
      Size = 10000
    end
    object zqry_VDTRANSPEMAILTRAN: TWideStringField
      FieldName = 'EMAILTRAN'
      Size = 60
    end
    object zqry_VDTRANSPEMAILNFETRAN: TWideStringField
      FieldName = 'EMAILNFETRAN'
      Size = 60
    end
    object zqry_VDTRANSPRNTCTRAN: TWideStringField
      FieldName = 'RNTCTRAN'
    end
    object zqry_VDTRANSPDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDTRANSPHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDTRANSPIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDTRANSPDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDTRANSPHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDTRANSPIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_VDTRANSP: TDataSource
    DataSet = zqry_VDTRANSP
    Left = 472
    Top = 1256
  end
  object zqry_MAX_NFE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select max(nroseq) as ultnfe from sgsequencia')
    Params = <>
    Left = 560
    Top = 680
    object zqry_MAX_NFEULTNFE: TIntegerField
      FieldName = 'ULTNFE'
      ReadOnly = True
    end
  end
  object zdts_MAX_NFE: TDataSource
    DataSet = zqry_MAX_NFE
    Left = 640
    Top = 680
  end
  object zqry_SGPREFERE1: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgprefere1')
    Params = <>
    Left = 376
    Top = 1304
    object zqry_SGPREFERE1CODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGPREFERE1CODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGPREFERE1USAREFPROD: TWideStringField
      FieldName = 'USAREFPROD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
    end
    object zqry_SGPREFERE1CODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
    end
    object zqry_SGPREFERE1CODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
    end
    object zqry_SGPREFERE1USAPEDSEQ: TWideStringField
      FieldName = 'USAPEDSEQ'
      Size = 1
    end
    object zqry_SGPREFERE1USAORCSEQ: TWideStringField
      FieldName = 'USAORCSEQ'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILTRO: TWideStringField
      FieldName = 'FILTRO'
      Size = 2
    end
    object zqry_SGPREFERE1USALIQREL: TWideStringField
      FieldName = 'USALIQREL'
      Size = 1
    end
    object zqry_SGPREFERE1TIPOPRECOCUSTO: TWideStringField
      FieldName = 'TIPOPRECOCUSTO'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ANOCENTROCUSTO: TSmallintField
      FieldName = 'ANOCENTROCUSTO'
    end
    object zqry_SGPREFERE1OBSORCPAD: TWideStringField
      FieldName = 'OBSORCPAD'
      Size = 10000
    end
    object zqry_SGPREFERE1CODTIPOMOV2: TIntegerField
      FieldName = 'CODTIPOMOV2'
    end
    object zqry_SGPREFERE1CODFILIALT2: TSmallintField
      FieldName = 'CODFILIALT2'
    end
    object zqry_SGPREFERE1CODEMPT2: TIntegerField
      FieldName = 'CODEMPT2'
    end
    object zqry_SGPREFERE1CLASSORC: TWideStringField
      FieldName = 'CLASSORC'
      Size = 80
    end
    object zqry_SGPREFERE1CLASSORCPD: TWideStringField
      FieldName = 'CLASSORCPD'
      Size = 80
    end
    object zqry_SGPREFERE1TITORCTXT01: TWideStringField
      FieldName = 'TITORCTXT01'
    end
    object zqry_SGPREFERE1CODTIPOMOV3: TIntegerField
      FieldName = 'CODTIPOMOV3'
    end
    object zqry_SGPREFERE1CODFILIALT3: TSmallintField
      FieldName = 'CODFILIALT3'
    end
    object zqry_SGPREFERE1CODEMPT3: TIntegerField
      FieldName = 'CODEMPT3'
    end
    object zqry_SGPREFERE1ORDNOTA: TWideStringField
      FieldName = 'ORDNOTA'
      Size = 1
    end
    object zqry_SGPREFERE1SETORVENDA: TWideStringField
      FieldName = 'SETORVENDA'
      Size = 1
    end
    object zqry_SGPREFERE1PREFCRED: TWideStringField
      FieldName = 'PREFCRED'
      Size = 1
    end
    object zqry_SGPREFERE1TIPOPREFCRED: TWideStringField
      FieldName = 'TIPOPREFCRED'
      Required = True
      Size = 2
    end
    object zqry_SGPREFERE1CODEMPMO: TIntegerField
      FieldName = 'CODEMPMO'
      Required = True
    end
    object zqry_SGPREFERE1CODFILIALMO: TIntegerField
      FieldName = 'CODFILIALMO'
      Required = True
    end
    object zqry_SGPREFERE1CODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_SGPREFERE1CODTIPOMOV4: TIntegerField
      FieldName = 'CODTIPOMOV4'
    end
    object zqry_SGPREFERE1CODFILIALT4: TIntegerField
      FieldName = 'CODFILIALT4'
    end
    object zqry_SGPREFERE1CODEMPT4: TIntegerField
      FieldName = 'CODEMPT4'
    end
    object zqry_SGPREFERE1USACLASCOMIS: TWideStringField
      FieldName = 'USACLASCOMIS'
      Size = 1
    end
    object zqry_SGPREFERE1PERCPRECOCUSTO: TFloatField
      FieldName = 'PERCPRECOCUSTO'
      Required = True
    end
    object zqry_SGPREFERE1CODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Size = 14
    end
    object zqry_SGPREFERE1CODFILIALGP: TIntegerField
      FieldName = 'CODFILIALGP'
    end
    object zqry_SGPREFERE1CODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
    end
    object zqry_SGPREFERE1CODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object zqry_SGPREFERE1CODFILIALMC: TIntegerField
      FieldName = 'CODFILIALMC'
    end
    object zqry_SGPREFERE1CODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
    end
    object zqry_SGPREFERE1RGCLIOBRIG: TWideStringField
      FieldName = 'RGCLIOBRIG'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TABFRETEVD: TWideStringField
      FieldName = 'TABFRETEVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TABADICVD: TWideStringField
      FieldName = 'TABADICVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TRAVATMNFVD: TWideStringField
      FieldName = 'TRAVATMNFVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TIPOVALIDORC: TWideStringField
      FieldName = 'TIPOVALIDORC'
      Size = 1
    end
    object zqry_SGPREFERE1CLIMESMOCNPJ: TWideStringField
      FieldName = 'CLIMESMOCNPJ'
      Size = 1
    end
    object zqry_SGPREFERE1CODTBJ: TIntegerField
      FieldName = 'CODTBJ'
    end
    object zqry_SGPREFERE1CODEMPTJ: TIntegerField
      FieldName = 'CODEMPTJ'
    end
    object zqry_SGPREFERE1CODFILIALTJ: TIntegerField
      FieldName = 'CODFILIALTJ'
    end
    object zqry_SGPREFERE1CNPJOBRIGCLI: TWideStringField
      FieldName = 'CNPJOBRIGCLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1JUROSPOSCALC: TWideStringField
      FieldName = 'JUROSPOSCALC'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
    end
    object zqry_SGPREFERE1CODFILIALFR: TIntegerField
      FieldName = 'CODFILIALFR'
    end
    object zqry_SGPREFERE1CODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_SGPREFERE1CODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_SGPREFERE1CODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_SGPREFERE1CODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_SGPREFERE1CODEMPTF: TIntegerField
      FieldName = 'CODEMPTF'
    end
    object zqry_SGPREFERE1CODFILIALTF: TIntegerField
      FieldName = 'CODFILIALTF'
    end
    object zqry_SGPREFERE1CODTIPOFOR: TIntegerField
      FieldName = 'CODTIPOFOR'
    end
    object zqry_SGPREFERE1CODEMPT5: TIntegerField
      FieldName = 'CODEMPT5'
    end
    object zqry_SGPREFERE1CODFILIALT5: TIntegerField
      FieldName = 'CODFILIALT5'
    end
    object zqry_SGPREFERE1CODTIPOMOV5: TIntegerField
      FieldName = 'CODTIPOMOV5'
    end
    object zqry_SGPREFERE1ESTLOTNEG: TWideStringField
      FieldName = 'ESTLOTNEG'
      Size = 1
    end
    object zqry_SGPREFERE1ESTNEG: TWideStringField
      FieldName = 'ESTNEG'
      Size = 1
    end
    object zqry_SGPREFERE1NATVENDA: TWideStringField
      FieldName = 'NATVENDA'
      Size = 1
    end
    object zqry_SGPREFERE1IPIVENDA: TWideStringField
      FieldName = 'IPIVENDA'
      Size = 1
    end
    object zqry_SGPREFERE1CUSTOSICMS: TWideStringField
      FieldName = 'CUSTOSICMS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_SGPREFERE1CODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_SGPREFERE1CODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_SGPREFERE1CODEMPTB: TIntegerField
      FieldName = 'CODEMPTB'
    end
    object zqry_SGPREFERE1CODFILIALTB: TSmallintField
      FieldName = 'CODFILIALTB'
    end
    object zqry_SGPREFERE1CODTAB: TIntegerField
      FieldName = 'CODTAB'
    end
    object zqry_SGPREFERE1CODEMPCE: TIntegerField
      FieldName = 'CODEMPCE'
    end
    object zqry_SGPREFERE1CODFILIALCE: TSmallintField
      FieldName = 'CODFILIALCE'
    end
    object zqry_SGPREFERE1CODCLASCLI: TIntegerField
      FieldName = 'CODCLASCLI'
    end
    object zqry_SGPREFERE1CASASDEC: TSmallintField
      FieldName = 'CASASDEC'
    end
    object zqry_SGPREFERE1CASASDECFIN: TSmallintField
      FieldName = 'CASASDECFIN'
    end
    object zqry_SGPREFERE1COMISPDUPL: TWideStringField
      FieldName = 'COMISPDUPL'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPT6: TIntegerField
      FieldName = 'CODEMPT6'
    end
    object zqry_SGPREFERE1CODFILIALT6: TSmallintField
      FieldName = 'CODFILIALT6'
    end
    object zqry_SGPREFERE1CODTIPOMOV6: TIntegerField
      FieldName = 'CODTIPOMOV6'
    end
    object zqry_SGPREFERE1BLOQVENDA: TWideStringField
      FieldName = 'BLOQVENDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQCOMPRA: TWideStringField
      FieldName = 'BLOQCOMPRA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1VENDAMATPRIM: TWideStringField
      FieldName = 'VENDAMATPRIM'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1VENDAPATRIM: TWideStringField
      FieldName = 'VENDAPATRIM'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1PEPSPROD: TWideStringField
      FieldName = 'PEPSPROD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CNPJFOROBRIG: TWideStringField
      FieldName = 'CNPJFOROBRIG'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1INSCESTFOROBRIG: TWideStringField
      FieldName = 'INSCESTFOROBRIG'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BUSCAPRODSIMILAR: TWideStringField
      FieldName = 'BUSCAPRODSIMILAR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1MULTIALMOX: TWideStringField
      FieldName = 'MULTIALMOX'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPT8: TIntegerField
      FieldName = 'CODEMPT8'
    end
    object zqry_SGPREFERE1CODFILIALT8: TSmallintField
      FieldName = 'CODFILIALT8'
    end
    object zqry_SGPREFERE1CODTIPOMOV8: TIntegerField
      FieldName = 'CODTIPOMOV8'
    end
    object zqry_SGPREFERE1ESTNEGGRUP: TWideStringField
      FieldName = 'ESTNEGGRUP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USATABPE: TWideStringField
      FieldName = 'USATABPE'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TAMDESCPROD: TSmallintField
      FieldName = 'TAMDESCPROD'
    end
    object zqry_SGPREFERE1DESCCOMPPED: TWideStringField
      FieldName = 'DESCCOMPPED'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1OBSCLIVEND: TWideStringField
      FieldName = 'OBSCLIVEND'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CONTESTOQ: TWideStringField
      FieldName = 'CONTESTOQ'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1DIASPEDT: TWideStringField
      FieldName = 'DIASPEDT'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1RECALCPCVENDA: TWideStringField
      FieldName = 'RECALCPCVENDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1RECALCPCORC: TWideStringField
      FieldName = 'RECALCPCORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USALAYOUTPED: TWideStringField
      FieldName = 'USALAYOUTPED'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1VERIFALTPARCVENDA: TWideStringField
      FieldName = 'VERIFALTPARCVENDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BUSCACODPRODGEN: TWideStringField
      FieldName = 'BUSCACODPRODGEN'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILBUSCGENPROD: TWideStringField
      FieldName = 'FILBUSCGENPROD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILBUSCGENREF: TWideStringField
      FieldName = 'FILBUSCGENREF'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILBUSCGENCODBAR: TWideStringField
      FieldName = 'FILBUSCGENCODBAR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILBUSCGENCODFAB: TWideStringField
      FieldName = 'FILBUSCGENCODFAB'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FILBUSCGENCODFOR: TWideStringField
      FieldName = 'FILBUSCGENCODFOR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BUSCAVLRULTCOMPRA: TWideStringField
      FieldName = 'BUSCAVLRULTCOMPRA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ICMSVENDA: TWideStringField
      FieldName = 'ICMSVENDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USAPRECOZERO: TWideStringField
      FieldName = 'USAPRECOZERO'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USAIMGASSORC: TWideStringField
      FieldName = 'USAIMGASSORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1IMGASSORC: TBlobField
      FieldName = 'IMGASSORC'
    end
    object zqry_SGPREFERE1CONSISTCPFCLI: TWideStringField
      FieldName = 'CONSISTCPFCLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CONSISTEIECLI: TWideStringField
      FieldName = 'CONSISTEIECLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CONSISTEIEFOR: TWideStringField
      FieldName = 'CONSISTEIEFOR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CONSISTECPFFOR: TWideStringField
      FieldName = 'CONSISTECPFFOR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USANOMEVENDORC: TWideStringField
      FieldName = 'USANOMEVENDORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1SISCONTABIL: TWideStringField
      FieldName = 'SISCONTABIL'
      Required = True
      Size = 2
    end
    object zqry_SGPREFERE1ATBANCOIMPBOL: TWideStringField
      FieldName = 'ATBANCOIMPBOL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TIPOCODBAR: TWideStringField
      FieldName = 'TIPOCODBAR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ADICORCOBSPED: TWideStringField
      FieldName = 'ADICORCOBSPED'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPMENSORC: TIntegerField
      FieldName = 'CODEMPMENSORC'
    end
    object zqry_SGPREFERE1CODFILIALMENSORC: TSmallintField
      FieldName = 'CODFILIALMENSORC'
    end
    object zqry_SGPREFERE1CODMENSORC: TIntegerField
      FieldName = 'CODMENSORC'
    end
    object zqry_SGPREFERE1CUSTOCOMPRA: TWideStringField
      FieldName = 'CUSTOCOMPRA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TABTRANSPCP: TWideStringField
      FieldName = 'TABTRANSPCP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TABTRANSPORC: TWideStringField
      FieldName = 'TABTRANSPORC'
      Size = 1
    end
    object zqry_SGPREFERE1TABSOLCP: TWideStringField
      FieldName = 'TABSOLCP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ADICFRETEBASEICM: TWideStringField
      FieldName = 'ADICFRETEBASEICM'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1PRECOCPREL: TWideStringField
      FieldName = 'PRECOCPREL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1DESCORC: TWideStringField
      FieldName = 'DESCORC'
      Size = 80
    end
    object zqry_SGPREFERE1MULTICOMIS: TWideStringField
      FieldName = 'MULTICOMIS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USUATIVCLI: TWideStringField
      FieldName = 'USUATIVCLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPHISTREC: TIntegerField
      FieldName = 'CODEMPHISTREC'
    end
    object zqry_SGPREFERE1CODFILIALHISTREC: TSmallintField
      FieldName = 'CODFILIALHISTREC'
    end
    object zqry_SGPREFERE1CODHISTREC: TIntegerField
      FieldName = 'CODHISTREC'
    end
    object zqry_SGPREFERE1CODEMPHISTPAG: TIntegerField
      FieldName = 'CODEMPHISTPAG'
    end
    object zqry_SGPREFERE1CODFILIALHISTPAG: TSmallintField
      FieldName = 'CODFILIALHISTPAG'
    end
    object zqry_SGPREFERE1CODHISTPAG: TIntegerField
      FieldName = 'CODHISTPAG'
    end
    object zqry_SGPREFERE1CODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_SGPREFERE1CODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_SGPREFERE1CODTIPOCLI: TIntegerField
      FieldName = 'CODTIPOCLI'
    end
    object zqry_SGPREFERE1ESTITRECALTDTVENC: TWideStringField
      FieldName = 'ESTITRECALTDTVENC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1LCREDGLOBAL: TWideStringField
      FieldName = 'LCREDGLOBAL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1VDMANUTCOMOBRIG: TWideStringField
      FieldName = 'VDMANUTCOMOBRIG'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CLASSPED: TWideStringField
      FieldName = 'CLASSPED'
      Size = 80
    end
    object zqry_SGPREFERE1CLASSPED02: TWideStringField
      FieldName = 'CLASSPED02'
      Size = 80
    end
    object zqry_SGPREFERE1TIPOCLASSPED: TWideStringField
      FieldName = 'TIPOCLASSPED'
      Required = True
      Size = 2
    end
    object zqry_SGPREFERE1USAIBGECLI: TWideStringField
      FieldName = 'USAIBGECLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USAIBGEFOR: TWideStringField
      FieldName = 'USAIBGEFOR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USAIBGETRANSP: TWideStringField
      FieldName = 'USAIBGETRANSP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1SOMAVOLUMES: TWideStringField
      FieldName = 'SOMAVOLUMES'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BUSCACEP: TWideStringField
      FieldName = 'BUSCACEP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1URLWSCEP: TWideStringField
      FieldName = 'URLWSCEP'
      Size = 150
    end
    object zqry_SGPREFERE1CLASSCP: TWideStringField
      FieldName = 'CLASSCP'
      Size = 80
    end
    object zqry_SGPREFERE1LABELOBS01CP: TWideStringField
      FieldName = 'LABELOBS01CP'
      Size = 40
    end
    object zqry_SGPREFERE1LABELOBS02CP: TWideStringField
      FieldName = 'LABELOBS02CP'
      Size = 40
    end
    object zqry_SGPREFERE1LABELOBS03CP: TWideStringField
      FieldName = 'LABELOBS03CP'
      Size = 40
    end
    object zqry_SGPREFERE1LABELOBS04CP: TWideStringField
      FieldName = 'LABELOBS04CP'
      Size = 40
    end
    object zqry_SGPREFERE1CONSISTEIEPF: TWideStringField
      FieldName = 'CONSISTEIEPF'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CREDICMSSIMPLES: TWideStringField
      FieldName = 'CREDICMSSIMPLES'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPMS: TIntegerField
      FieldName = 'CODEMPMS'
    end
    object zqry_SGPREFERE1CODFILIALMS: TSmallintField
      FieldName = 'CODFILIALMS'
    end
    object zqry_SGPREFERE1CODMENSICMSSIMPLES: TSmallintField
      FieldName = 'CODMENSICMSSIMPLES'
    end
    object zqry_SGPREFERE1GERACOMISVENDAORC: TWideStringField
      FieldName = 'GERACOMISVENDAORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1GERACODUNIF: TWideStringField
      FieldName = 'GERACODUNIF'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODTIPOMOV9: TIntegerField
      FieldName = 'CODTIPOMOV9'
    end
    object zqry_SGPREFERE1CODFILIALT9: TSmallintField
      FieldName = 'CODFILIALT9'
    end
    object zqry_SGPREFERE1CODEMPT9: TIntegerField
      FieldName = 'CODEMPT9'
    end
    object zqry_SGPREFERE1CODEMPJP: TIntegerField
      FieldName = 'CODEMPJP'
    end
    object zqry_SGPREFERE1CODFILIALJP: TSmallintField
      FieldName = 'CODFILIALJP'
    end
    object zqry_SGPREFERE1CODPLANJP: TWideStringField
      FieldName = 'CODPLANJP'
      Size = 13
    end
    object zqry_SGPREFERE1CODEMPJR: TIntegerField
      FieldName = 'CODEMPJR'
    end
    object zqry_SGPREFERE1CODFILIALJR: TSmallintField
      FieldName = 'CODFILIALJR'
    end
    object zqry_SGPREFERE1CODPLANJR: TWideStringField
      FieldName = 'CODPLANJR'
      Size = 13
    end
    object zqry_SGPREFERE1CODEMPDR: TIntegerField
      FieldName = 'CODEMPDR'
    end
    object zqry_SGPREFERE1CODFILIALDR: TSmallintField
      FieldName = 'CODFILIALDR'
    end
    object zqry_SGPREFERE1CODPLANDR: TWideStringField
      FieldName = 'CODPLANDR'
      Size = 13
    end
    object zqry_SGPREFERE1CODEMPDC: TIntegerField
      FieldName = 'CODEMPDC'
    end
    object zqry_SGPREFERE1CODFILIALDC: TSmallintField
      FieldName = 'CODFILIALDC'
    end
    object zqry_SGPREFERE1CODPLANDC: TWideStringField
      FieldName = 'CODPLANDC'
      Size = 13
    end
    object zqry_SGPREFERE1GERAPAGEMIS: TWideStringField
      FieldName = 'GERAPAGEMIS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1LANCAFINCONTR: TWideStringField
      FieldName = 'LANCAFINCONTR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1LANCARMACONTR: TWideStringField
      FieldName = 'LANCARMACONTR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CASASDECPRE: TSmallintField
      FieldName = 'CASASDECPRE'
    end
    object zqry_SGPREFERE1VISUALIZALUCR: TWideStringField
      FieldName = 'VISUALIZALUCR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CLASSNFE: TWideStringField
      FieldName = 'CLASSNFE'
      Size = 80
    end
    object zqry_SGPREFERE1DIRNFE: TWideStringField
      FieldName = 'DIRNFE'
      Size = 80
    end
    object zqry_SGPREFERE1DIRNFELIN: TWideStringField
      FieldName = 'DIRNFELIN'
      Size = 80
    end
    object zqry_SGPREFERE1FORMATODANFE: TSmallintField
      FieldName = 'FORMATODANFE'
    end
    object zqry_SGPREFERE1AMBIENTENFE: TSmallintField
      FieldName = 'AMBIENTENFE'
    end
    object zqry_SGPREFERE1PROCEMINFE: TSmallintField
      FieldName = 'PROCEMINFE'
    end
    object zqry_SGPREFERE1VERPROCNFE: TWideStringField
      FieldName = 'VERPROCNFE'
    end
    object zqry_SGPREFERE1KEYLICNFE: TWideStringField
      FieldName = 'KEYLICNFE'
      Size = 500
    end
    object zqry_SGPREFERE1DTVENCTONFE: TDateField
      FieldName = 'DTVENCTONFE'
    end
    object zqry_SGPREFERE1INFADPRODNFE: TWideStringField
      FieldName = 'INFADPRODNFE'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPNF: TIntegerField
      FieldName = 'CODEMPNF'
    end
    object zqry_SGPREFERE1CODFILIALNF: TSmallintField
      FieldName = 'CODFILIALNF'
    end
    object zqry_SGPREFERE1CODEMAILNF: TIntegerField
      FieldName = 'CODEMAILNF'
    end
    object zqry_SGPREFERE1EXIBEPARCOBSDANFE: TWideStringField
      FieldName = 'EXIBEPARCOBSDANFE'
      Size = 1
    end
    object zqry_SGPREFERE1VERSAONFE: TWideStringField
      FieldName = 'VERSAONFE'
      Size = 8
    end
    object zqry_SGPREFERE1REGIMETRIBNFE: TWideStringField
      FieldName = 'REGIMETRIBNFE'
      Size = 1
    end
    object zqry_SGPREFERE1INFCPDEVOLUCAO: TWideStringField
      FieldName = 'INFCPDEVOLUCAO'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1INFVDREMESSA: TWideStringField
      FieldName = 'INFVDREMESSA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1GERARECEMIS: TWideStringField
      FieldName = 'GERARECEMIS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1RETENSAOIMP: TWideStringField
      FieldName = 'RETENSAOIMP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TIPOCUSTOLUC: TWideStringField
      FieldName = 'TIPOCUSTOLUC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TABIMPORTCP: TWideStringField
      FieldName = 'TABIMPORTCP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1HABVLRTOTITORC: TWideStringField
      FieldName = 'HABVLRTOTITORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USABUSCAGENPRODCP: TWideStringField
      FieldName = 'USABUSCAGENPRODCP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ADICOBSORCPED: TWideStringField
      FieldName = 'ADICOBSORCPED'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USAPRECOCOT: TWideStringField
      FieldName = 'USAPRECOCOT'
      Size = 1
    end
    object zqry_SGPREFERE1BLOQPRECOAPROV: TWideStringField
      FieldName = 'BLOQPRECOAPROV'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPFT: TIntegerField
      FieldName = 'CODEMPFT'
    end
    object zqry_SGPREFERE1CODFILIALFT: TSmallintField
      FieldName = 'CODFILIALFT'
    end
    object zqry_SGPREFERE1CODTIPOFORFT: TIntegerField
      FieldName = 'CODTIPOFORFT'
    end
    object zqry_SGPREFERE1USAPRECOCOMIS: TWideStringField
      FieldName = 'USAPRECOCOMIS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ESPECIALCOMIS: TWideStringField
      FieldName = 'ESPECIALCOMIS'
      Size = 1
    end
    object zqry_SGPREFERE1CODFILIALTS: TSmallintField
      FieldName = 'CODFILIALTS'
    end
    object zqry_SGPREFERE1CODTIPOMOVS: TIntegerField
      FieldName = 'CODTIPOMOVS'
    end
    object zqry_SGPREFERE1CODEMPTS: TIntegerField
      FieldName = 'CODEMPTS'
    end
    object zqry_SGPREFERE1CODEMPSV: TIntegerField
      FieldName = 'CODEMPSV'
    end
    object zqry_SGPREFERE1CODFILIALSV: TSmallintField
      FieldName = 'CODFILIALSV'
    end
    object zqry_SGPREFERE1CODPLANOPAGSV: TIntegerField
      FieldName = 'CODPLANOPAGSV'
    end
    object zqry_SGPREFERE1ARREDPRECO: TSmallintField
      FieldName = 'ARREDPRECO'
    end
    object zqry_SGPREFERE1CODEMPPC: TIntegerField
      FieldName = 'CODEMPPC'
    end
    object zqry_SGPREFERE1CODFILIALPC: TSmallintField
      FieldName = 'CODFILIALPC'
    end
    object zqry_SGPREFERE1CODPLANPC: TWideStringField
      FieldName = 'CODPLANPC'
      Size = 13
    end
    object zqry_SGPREFERE1TPNOSSONUMERO: TWideStringField
      FieldName = 'TPNOSSONUMERO'
      Size = 1
    end
    object zqry_SGPREFERE1IMPDOCBOL: TWideStringField
      FieldName = 'IMPDOCBOL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FECHACAIXA: TWideStringField
      FieldName = 'FECHACAIXA'
      Size = 1
    end
    object zqry_SGPREFERE1FECHACAIXAAUTO: TWideStringField
      FieldName = 'FECHACAIXAAUTO'
      Size = 1
    end
    object zqry_SGPREFERE1NUMDIGIDENTTIT: TSmallintField
      FieldName = 'NUMDIGIDENTTIT'
    end
    object zqry_SGPREFERE1KEYLICEFD: TWideStringField
      FieldName = 'KEYLICEFD'
      Size = 500
    end
    object zqry_SGPREFERE1DTVENCTOEFD: TDateField
      FieldName = 'DTVENCTOEFD'
    end
    object zqry_SGPREFERE1REVALIDARLOTECOMPRA: TWideStringField
      FieldName = 'REVALIDARLOTECOMPRA'
      Size = 1
    end
    object zqry_SGPREFERE1ENCORCPROD: TWideStringField
      FieldName = 'ENCORCPROD'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPIM: TIntegerField
      FieldName = 'CODEMPIM'
    end
    object zqry_SGPREFERE1CODFILIALIM: TSmallintField
      FieldName = 'CODFILIALIM'
    end
    object zqry_SGPREFERE1CODTIPOMOVIM: TIntegerField
      FieldName = 'CODTIPOMOVIM'
    end
    object zqry_SGPREFERE1COMISSAODESCONTO: TWideStringField
      FieldName = 'COMISSAODESCONTO'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPHC: TIntegerField
      FieldName = 'CODEMPHC'
    end
    object zqry_SGPREFERE1CODFILIALHC: TSmallintField
      FieldName = 'CODFILIALHC'
    end
    object zqry_SGPREFERE1CODHISTCNAB: TIntegerField
      FieldName = 'CODHISTCNAB'
    end
    object zqry_SGPREFERE1ALINHATELALANCA: TWideStringField
      FieldName = 'ALINHATELALANCA'
      Size = 1
    end
    object zqry_SGPREFERE1VENDACONSUM: TWideStringField
      FieldName = 'VENDACONSUM'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CVPROD: TWideStringField
      FieldName = 'CVPROD'
      Size = 1
    end
    object zqry_SGPREFERE1VERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_SGPREFERE1RMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Size = 2
    end
    object zqry_SGPREFERE1CODEMPIG: TIntegerField
      FieldName = 'CODEMPIG'
    end
    object zqry_SGPREFERE1CODFILIALIG: TSmallintField
      FieldName = 'CODFILIALIG'
    end
    object zqry_SGPREFERE1CODIMG: TIntegerField
      FieldName = 'CODIMG'
    end
    object zqry_SGPREFERE1OBSITVENDAPED: TWideStringField
      FieldName = 'OBSITVENDAPED'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1FATORCPARC: TWideStringField
      FieldName = 'FATORCPARC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1APROVORCFATPARC: TWideStringField
      FieldName = 'APROVORCFATPARC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQSEQICP: TWideStringField
      FieldName = 'BLOQSEQICP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQSEQIVD: TWideStringField
      FieldName = 'BLOQSEQIVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1UTILORDCPINT: TWideStringField
      FieldName = 'UTILORDCPINT'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1KEYLICEPC: TWideStringField
      FieldName = 'KEYLICEPC'
      Size = 500
    end
    object zqry_SGPREFERE1DTVENCTOEPC: TDateField
      FieldName = 'DTVENCTOEPC'
    end
    object zqry_SGPREFERE1IMPLOTENFE: TWideStringField
      FieldName = 'IMPLOTENFE'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TOTCPSFRETE: TWideStringField
      FieldName = 'TOTCPSFRETE'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1IDENTCLIBCO: TWideStringField
      FieldName = 'IDENTCLIBCO'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1QTDDESC: TWideStringField
      FieldName = 'QTDDESC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1LOCALSERV: TWideStringField
      FieldName = 'LOCALSERV'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1VDPRODQQCLAS: TWideStringField
      FieldName = 'VDPRODQQCLAS'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_SGPREFERE1CODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_SGPREFERE1CODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_SGPREFERE1PADRAONFE: TWideStringField
      FieldName = 'PADRAONFE'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPME: TIntegerField
      FieldName = 'CODEMPME'
    end
    object zqry_SGPREFERE1CODFILIALME: TSmallintField
      FieldName = 'CODFILIALME'
    end
    object zqry_SGPREFERE1CODMENSVENDA: TIntegerField
      FieldName = 'CODMENSVENDA'
    end
    object zqry_SGPREFERE1TIPOEMISSAONFE: TWideStringField
      FieldName = 'TIPOEMISSAONFE'
      Size = 1
    end
    object zqry_SGPREFERE1CCNFECP: TWideStringField
      FieldName = 'CCNFECP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ADICICMSTOTNOTA: TWideStringField
      FieldName = 'ADICICMSTOTNOTA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1UTILIZATBCALCCA: TWideStringField
      FieldName = 'UTILIZATBCALCCA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1HABCOMPRACOMPL: TWideStringField
      FieldName = 'HABCOMPRACOMPL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPIC: TIntegerField
      FieldName = 'CODEMPIC'
    end
    object zqry_SGPREFERE1CODFILIALIC: TSmallintField
      FieldName = 'CODFILIALIC'
    end
    object zqry_SGPREFERE1CODTIPOMOVIC: TIntegerField
      FieldName = 'CODTIPOMOVIC'
    end
    object zqry_SGPREFERE1DESCNATCOMPL: TWideStringField
      FieldName = 'DESCNATCOMPL'
      Size = 60
    end
    object zqry_SGPREFERE1HABLOGPAGAR: TWideStringField
      FieldName = 'HABLOGPAGAR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1HABLOGRECEBER: TWideStringField
      FieldName = 'HABLOGRECEBER'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CONSISTENDENTVD: TWideStringField
      FieldName = 'CONSISTENDENTVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1USACLISEQ: TWideStringField
      FieldName = 'USACLISEQ'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQDESCCOMPORC: TWideStringField
      FieldName = 'BLOQDESCCOMPORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQPRECOORC: TWideStringField
      FieldName = 'BLOQPRECOORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQDESCCOMPVD: TWideStringField
      FieldName = 'BLOQDESCCOMPVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQPRECOVD: TWideStringField
      FieldName = 'BLOQPRECOVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1DESABDESCFECHAVD: TWideStringField
      FieldName = 'DESABDESCFECHAVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1DESABDESCFECHAORC: TWideStringField
      FieldName = 'DESABDESCFECHAORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1PERMITBAIXAPARCJDM: TWideStringField
      FieldName = 'PERMITBAIXAPARCJDM'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQCOMISSORC: TWideStringField
      FieldName = 'BLOQCOMISSORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQCOMISSVD: TWideStringField
      FieldName = 'BLOQCOMISSVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1CALCPRECOG: TWideStringField
      FieldName = 'CALCPRECOG'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ENDERECOOBRIGCLI: TWideStringField
      FieldName = 'ENDERECOOBRIGCLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ENTREGAOBRIGCLI: TWideStringField
      FieldName = 'ENTREGAOBRIGCLI'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1PERIODOCONSCH: TWideStringField
      FieldName = 'PERIODOCONSCH'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQPEDVD: TWideStringField
      FieldName = 'BLOQPEDVD'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1AGENDAFPRINCIPAL: TWideStringField
      FieldName = 'AGENDAFPRINCIPAL'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ATUALIZAAGENDA: TWideStringField
      FieldName = 'ATUALIZAAGENDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TEMPOATUAGENDA: TIntegerField
      FieldName = 'TEMPOATUAGENDA'
      Required = True
    end
    object zqry_SGPREFERE1SOLDTSAIDA: TWideStringField
      FieldName = 'SOLDTSAIDA'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1NPERMITDTMAIOR: TWideStringField
      FieldName = 'NPERMITDTMAIOR'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1PERMITIMPORCANTAP: TWideStringField
      FieldName = 'PERMITIMPORCANTAP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQEDITORCAPOSAP: TWideStringField
      FieldName = 'BLOQEDITORCAPOSAP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1BLOQVDPORATRASO: TWideStringField
      FieldName = 'BLOQVDPORATRASO'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1NUMDIASBLOQVD: TSmallintField
      FieldName = 'NUMDIASBLOQVD'
      Required = True
    end
    object zqry_SGPREFERE1FATORSEGESTOQ: TExtendedField
      FieldName = 'FATORSEGESTOQ'
      Required = True
      Precision = 19
    end
    object zqry_SGPREFERE1LEITRANSP: TWideStringField
      FieldName = 'LEITRANSP'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1TIPOIMPDANFE: TWideStringField
      FieldName = 'TIPOIMPDANFE'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1REPLICAORC: TWideStringField
      FieldName = 'REPLICAORC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1SQLREPLICAORC: TWideMemoField
      FieldName = 'SQLREPLICAORC'
      BlobType = ftWideMemo
    end
    object zqry_SGPREFERE1DTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGPREFERE1HINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGPREFERE1IDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGPREFERE1DTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGPREFERE1HALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGPREFERE1IDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGPREFERE1CLASSORCLAUDOSUS: TWideStringField
      FieldName = 'CLASSORCLAUDOSUS'
      Size = 80
    end
    object zqry_SGPREFERE1CLASSORCCTALUGUEL: TWideStringField
      FieldName = 'CLASSORCCTALUGUEL'
      Size = 80
    end
    object zqry_SGPREFERE1BLOQNFEVDAUTORIZ: TWideStringField
      FieldName = 'BLOQNFEVDAUTORIZ'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1OBRIGTIPOFISC: TWideStringField
      FieldName = 'OBRIGTIPOFISC'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1MATRICEMPFN: TWideStringField
      FieldName = 'MATRICEMPFN'
      Required = True
      Size = 1
    end
    object zqry_SGPREFERE1ESTOQALMOX: TWideStringField
      FieldName = 'ESTOQALMOX'
      Size = 10
    end
    object zqry_SGPREFERE1MAXOBSCLI: TWideStringField
      FieldName = 'MAXOBSCLI'
      Size = 255
    end
    object zqry_SGPREFERE1RATEIOESTBUSCAORC: TWideStringField
      FieldName = 'RATEIOESTBUSCAORC'
      Size = 30
    end
    object zqry_SGPREFERE1CODTIPOMOVRS: TIntegerField
      FieldName = 'CODTIPOMOVRS'
    end
    object zqry_SGPREFERE1ALMOXPDORC: TWideStringField
      FieldName = 'ALMOXPDORC'
      Size = 30
    end
    object zqry_SGPREFERE1CODEMPRS: TIntegerField
      FieldName = 'CODEMPRS'
    end
    object zqry_SGPREFERE1CODFILIALRS: TIntegerField
      FieldName = 'CODFILIALRS'
    end
    object zqry_SGPREFERE1VALORPONTO: TFloatField
      FieldName = 'VALORPONTO'
    end
    object zqry_SGPREFERE1CODBLOQ: TSmallintField
      FieldName = 'CODBLOQ'
    end
    object zqry_SGPREFERE1ORDEMPED: TWideStringField
      FieldName = 'ORDEMPED'
      Size = 10
    end
    object zqry_SGPREFERE1IPICOMIS: TFloatField
      FieldName = 'IPICOMIS'
    end
    object zqry_SGPREFERE1IPIPED: TFloatField
      FieldName = 'IPIPED'
    end
    object zqry_SGPREFERE1CODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_SGPREFERE1ENDCLIPED: TWideStringField
      FieldName = 'ENDCLIPED'
      Size = 100
    end
    object zqry_SGPREFERE1SERVIDORSMTP: TWideStringField
      FieldName = 'SERVIDORSMTP'
      Size = 100
    end
    object zqry_SGPREFERE1PORTASMTP: TWideStringField
      FieldName = 'PORTASMTP'
      Size = 10
    end
    object zqry_SGPREFERE1USUARIOSMTP: TWideStringField
      FieldName = 'USUARIOSMTP'
      Size = 50
    end
    object zqry_SGPREFERE1SENHASMTP: TWideStringField
      FieldName = 'SENHASMTP'
      Size = 10
    end
    object zqry_SGPREFERE1AUTENTICASMTP: TWideStringField
      FieldName = 'AUTENTICASMTP'
      Size = 3
    end
    object zqry_SGPREFERE1SSLSMTP: TWideStringField
      FieldName = 'SSLSMTP'
      Size = 3
    end
    object zqry_SGPREFERE1LAYOUTPED: TWideStringField
      FieldName = 'LAYOUTPED'
      Size = 150
    end
    object zqry_SGPREFERE1ENVIACOPIA: TWideStringField
      FieldName = 'ENVIACOPIA'
      Size = 3
    end
    object zqry_SGPREFERE1CODUNID: TWideStringField
      FieldName = 'CODUNID'
      Size = 3
    end
    object zqry_SGPREFERE1MOSTRAFATLUCR: TWideStringField
      FieldName = 'MOSTRAFATLUCR'
      Size = 3
    end
    object zqry_SGPREFERE1CODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
    end
    object zqry_SGPREFERE1CODFILIALUD: TIntegerField
      FieldName = 'CODFILIALUD'
    end
    object zqry_SGPREFERE1EXIBIRPAINELCOMANDAS: TWideStringField
      FieldName = 'EXIBIRPAINELCOMANDAS'
      Size = 3
    end
    object zqry_SGPREFERE1TPCALCLUCRO: TWideStringField
      FieldName = 'TPCALCLUCRO'
      Size = 3
    end
    object zqry_SGPREFERE1SEF2INDICADOR01: TWideStringField
      FieldName = 'SEF2INDICADOR01'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR02: TWideStringField
      FieldName = 'SEF2INDICADOR02'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR03: TWideStringField
      FieldName = 'SEF2INDICADOR03'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR04: TWideStringField
      FieldName = 'SEF2INDICADOR04'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR05: TWideStringField
      FieldName = 'SEF2INDICADOR05'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR06: TWideStringField
      FieldName = 'SEF2INDICADOR06'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR07: TWideStringField
      FieldName = 'SEF2INDICADOR07'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR08: TWideStringField
      FieldName = 'SEF2INDICADOR08'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR09: TWideStringField
      FieldName = 'SEF2INDICADOR09'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR10: TWideStringField
      FieldName = 'SEF2INDICADOR10'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR11: TWideStringField
      FieldName = 'SEF2INDICADOR11'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR12: TWideStringField
      FieldName = 'SEF2INDICADOR12'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR13: TWideStringField
      FieldName = 'SEF2INDICADOR13'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR14: TWideStringField
      FieldName = 'SEF2INDICADOR14'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR15: TWideStringField
      FieldName = 'SEF2INDICADOR15'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR16: TWideStringField
      FieldName = 'SEF2INDICADOR16'
      Size = 100
    end
    object zqry_SGPREFERE1SEF2INDICADOR17: TWideStringField
      FieldName = 'SEF2INDICADOR17'
      Size = 100
    end
    object zqry_SGPREFERE1CODEMPINTEGRA: TIntegerField
      FieldName = 'CODEMPINTEGRA'
    end
    object zqry_SGPREFERE1PDV_BUSCAEAN: TWideStringField
      FieldName = 'PDV_BUSCAEAN'
      Size = 1
    end
    object zqry_SGPREFERE1CODMENSNFE: TIntegerField
      FieldName = 'CODMENSNFE'
    end
    object zqry_SGPREFERE1SOMASTDUPNFE: TWideStringField
      FieldName = 'SOMASTDUPNFE'
      Size = 1
    end
    object zqry_SGPREFERE1CNPJCPF: TWideStringField
      FieldName = 'CNPJCPF'
      Size = 15
    end
    object zqry_SGPREFERE1PATHSERVER: TWideStringField
      FieldName = 'PATHSERVER'
    end
    object zqry_SGPREFERE1RECOLHEICMSPF: TWideStringField
      FieldName = 'RECOLHEICMSPF'
      Size = 1
    end
    object zqry_SGPREFERE1ALIQRECOLHEICMPF: TSingleField
      FieldName = 'ALIQRECOLHEICMPF'
    end
    object zqry_SGPREFERE1MAJALIQRECOLHEICMPF: TSingleField
      FieldName = 'MAJALIQRECOLHEICMPF'
    end
    object zqry_SGPREFERE1CODTIPOMOVPROC: TIntegerField
      FieldName = 'CODTIPOMOVPROC'
    end
    object zqry_SGPREFERE1CLFISCALVDESPECIFICA: TWideStringField
      FieldName = 'CLFISCALVDESPECIFICA'
      Size = 1
    end
    object zqry_SGPREFERE1CODEMPCLOUD: TIntegerField
      FieldName = 'CODEMPCLOUD'
    end
  end
  object zdts_SGPREFERE1: TDataSource
    DataSet = zqry_SGPREFERE1
    Left = 472
    Top = 1304
  end
  object zqry_SGUF: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sguf')
    Params = <>
    Left = 552
    Top = 536
    object zqry_SGUFSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Required = True
      Size = 2
    end
    object zqry_SGUFCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
      Required = True
    end
    object zqry_SGUFNOMEUF: TWideStringField
      FieldName = 'NOMEUF'
      Required = True
      Size = 80
    end
    object zqry_SGUFNOMECURTO: TWideStringField
      FieldName = 'NOMECURTO'
      Required = True
      Size = 40
    end
    object zqry_SGUFCODUF: TSmallintField
      FieldName = 'CODUF'
      Required = True
    end
    object zqry_SGUFREGIAOUF: TWideStringField
      FieldName = 'REGIAOUF'
      Required = True
      Size = 2
    end
    object zqry_SGUFDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGUFHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGUFIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGUFDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGUFHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGUFIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGUFINDIEDEST: TIntegerField
      FieldName = 'INDIEDEST'
    end
  end
  object zdts_SGUF: TDataSource
    DataSet = zqry_SGUF
    Left = 632
    Top = 536
  end
  object zqry_EQLOTE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqlote')
    Params = <>
    Left = 376
    Top = 1352
    object zqry_EQLOTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQLOTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQLOTECODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQLOTECODLOTE: TWideStringField
      FieldName = 'CODLOTE'
      Required = True
    end
    object zqry_EQLOTEVENCTOLOTE: TDateField
      FieldName = 'VENCTOLOTE'
      Required = True
    end
    object zqry_EQLOTESLDLOTE: TExtendedField
      FieldName = 'SLDLOTE'
      Precision = 19
    end
    object zqry_EQLOTESLDRESLOTE: TExtendedField
      FieldName = 'SLDRESLOTE'
      Precision = 19
    end
    object zqry_EQLOTESLDCONSIGLOTE: TExtendedField
      FieldName = 'SLDCONSIGLOTE'
      Precision = 19
    end
    object zqry_EQLOTESLDLIQLOTE: TExtendedField
      FieldName = 'SLDLIQLOTE'
      Precision = 19
    end
    object zqry_EQLOTEQTDPRODLOTE: TExtendedField
      FieldName = 'QTDPRODLOTE'
      Precision = 19
    end
    object zqry_EQLOTEDINILOTE: TDateField
      FieldName = 'DINILOTE'
    end
    object zqry_EQLOTEDIASAVISOLOTE: TSmallintField
      FieldName = 'DIASAVISOLOTE'
      Required = True
    end
    object zqry_EQLOTEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQLOTEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQLOTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQLOTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQLOTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQLOTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQLOTE: TDataSource
    DataSet = zqry_EQLOTE
    Left = 472
    Top = 1352
  end
  object zqry_CPITCOMPRA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from cpitcompra')
    Params = <>
    Left = 544
    Top = 392
    object zqry_CPITCOMPRACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPITCOMPRACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPITCOMPRACODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRACODITCOMPRA: TIntegerField
      FieldName = 'CODITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRACODEMPPD: TIntegerField
      FieldName = 'CODEMPPD'
      Required = True
    end
    object zqry_CPITCOMPRACODFILIALPD: TSmallintField
      FieldName = 'CODFILIALPD'
      Required = True
    end
    object zqry_CPITCOMPRACODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_CPITCOMPRACODEMPLE: TIntegerField
      FieldName = 'CODEMPLE'
    end
    object zqry_CPITCOMPRACODFILIALLE: TSmallintField
      FieldName = 'CODFILIALLE'
    end
    object zqry_CPITCOMPRACODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_CPITCOMPRACODEMPNT: TIntegerField
      FieldName = 'CODEMPNT'
      Required = True
    end
    object zqry_CPITCOMPRACODFILIALNT: TSmallintField
      FieldName = 'CODFILIALNT'
      Required = True
    end
    object zqry_CPITCOMPRACODNAT: TWideStringField
      FieldName = 'CODNAT'
      Required = True
      Size = 4
    end
    object zqry_CPITCOMPRACODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_CPITCOMPRACODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_CPITCOMPRACODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_CPITCOMPRAREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_CPITCOMPRAOBSITCOMPRA: TWideStringField
      FieldName = 'OBSITCOMPRA'
      Size = 10000
    end
    object zqry_CPITCOMPRACODEMPIF: TIntegerField
      FieldName = 'CODEMPIF'
    end
    object zqry_CPITCOMPRACODFILIALIF: TSmallintField
      FieldName = 'CODFILIALIF'
    end
    object zqry_CPITCOMPRACODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
    object zqry_CPITCOMPRAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_CPITCOMPRACODITFISC: TSmallintField
      FieldName = 'CODITFISC'
    end
    object zqry_CPITCOMPRACODEMPNS: TIntegerField
      FieldName = 'CODEMPNS'
    end
    object zqry_CPITCOMPRACODFILIALNS: TSmallintField
      FieldName = 'CODFILIALNS'
    end
    object zqry_CPITCOMPRANUMSERIETMP: TWideStringField
      FieldName = 'NUMSERIETMP'
      Size = 30
    end
    object zqry_CPITCOMPRANADICAO: TSmallintField
      FieldName = 'NADICAO'
    end
    object zqry_CPITCOMPRASEQADIC: TSmallintField
      FieldName = 'SEQADIC'
    end
    object zqry_CPITCOMPRAAPROVPRECO: TWideStringField
      FieldName = 'APROVPRECO'
      Size = 1
    end
    object zqry_CPITCOMPRAEMITITCOMPRA: TWideStringField
      FieldName = 'EMITITCOMPRA'
      Size = 1
    end
    object zqry_CPITCOMPRATIPONFITCOMPRA: TWideStringField
      FieldName = 'TIPONFITCOMPRA'
      Size = 1
    end
    object zqry_CPITCOMPRADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CPITCOMPRAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CPITCOMPRAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CPITCOMPRADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CPITCOMPRAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CPITCOMPRAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_CPITCOMPRA_NCMPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_NCMPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODFISC'
      KeyFields = 'CODPROD'
      Size = 8
      Lookup = True
    end
    object zqry_CPITCOMPRAQTDITCOMPRA: TExtendedField
      FieldName = 'QTDITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAQTDITCOMPRACANC: TExtendedField
      FieldName = 'QTDITCOMPRACANC'
      Precision = 19
    end
    object zqry_CPITCOMPRAPRECOITCOMPRA: TExtendedField
      FieldName = 'PRECOITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAPERCDESCITCOMPRA: TExtendedField
      FieldName = 'PERCDESCITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRDESCITCOMPRA: TExtendedField
      FieldName = 'VLRDESCITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAPERCICMSITCOMPRA: TExtendedField
      FieldName = 'PERCICMSITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRBASEICMSITCOMPRA: TExtendedField
      FieldName = 'VLRBASEICMSITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRICMSITCOMPRA: TExtendedField
      FieldName = 'VLRICMSITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAPERCICMSSTITCOMPRA: TExtendedField
      FieldName = 'PERCICMSSTITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRBASEICMSSTITCOMPRA: TExtendedField
      FieldName = 'VLRBASEICMSSTITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRICMSSTITCOMPRA: TExtendedField
      FieldName = 'VLRICMSSTITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAPERCIPIITCOMPRA: TExtendedField
      FieldName = 'PERCIPIITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRBASEIPIITCOMPRA: TExtendedField
      FieldName = 'VLRBASEIPIITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRIPIITCOMPRA: TExtendedField
      FieldName = 'VLRIPIITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRBASEFUNRURALITCOMPRA: TExtendedField
      FieldName = 'VLRBASEFUNRURALITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAALIQFUNRURALITCOMPRA: TExtendedField
      FieldName = 'ALIQFUNRURALITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRFUNRURALITCOMPRA: TExtendedField
      FieldName = 'VLRFUNRURALITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRLIQITCOMPRA: TExtendedField
      FieldName = 'VLRLIQITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRADICITCOMPRA: TExtendedField
      FieldName = 'VLRADICITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRFRETEITCOMPRA: TExtendedField
      FieldName = 'VLRFRETEITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRISENTASITCOMPRA: TExtendedField
      FieldName = 'VLRISENTASITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLROUTRASITCOMPRA: TExtendedField
      FieldName = 'VLROUTRASITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRPRODITCOMPRA: TExtendedField
      FieldName = 'VLRPRODITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRACUSTOITCOMPRA: TExtendedField
      FieldName = 'CUSTOITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRACUSTOVDITCOMPRA: TExtendedField
      FieldName = 'CUSTOVDITCOMPRA'
      Required = True
      Precision = 19
    end
    object zqry_CPITCOMPRADESCDI: TExtendedField
      FieldName = 'DESCDI'
      Precision = 19
    end
    object zqry_CPITCOMPRAALIQISSITCOMPRA: TExtendedField
      FieldName = 'ALIQISSITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRISSITCOMPRA: TExtendedField
      FieldName = 'VLRISSITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRIIITCOMPRA: TExtendedField
      FieldName = 'VLRIIITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRAVLRITOUTRASDESPITCOMPRA: TExtendedField
      FieldName = 'VLRITOUTRASDESPITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRACALCCUSTO: TWideStringField
      FieldName = 'CALCCUSTO'
      Required = True
      Size = 1
    end
    object zqry_CPITCOMPRAADICICMSTOTNOTA: TWideStringField
      FieldName = 'ADICICMSTOTNOTA'
      Required = True
      Size = 1
    end
    object zqry_CPITCOMPRAVLRTXSISCOMEXITCOMPRA: TExtendedField
      FieldName = 'VLRTXSISCOMEXITCOMPRA'
      Precision = 19
    end
    object zqry_CPITCOMPRA_NOMEPROD: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
  end
  object zdts_CPITCOMPRA: TDataSource
    DataSet = zqry_CPITCOMPRA
    Left = 632
    Top = 392
  end
  object zqry_CPFRETECP: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from cpfretecp')
    Params = <>
    Left = 544
    Top = 1208
    object zqry_CPFRETECPCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPFRETECPCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPFRETECPCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object zqry_CPFRETECPCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_CPFRETECPCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_CPFRETECPDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CPFRETECPHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CPFRETECPIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CPFRETECPDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CPFRETECPHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CPFRETECPIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_CPFRETECPCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_CPFRETECPTIPOFRETECP: TWideStringField
      FieldName = 'TIPOFRETECP'
      Required = True
      Size = 1
    end
    object zqry_CPFRETECPPLACAFRETECP: TWideStringField
      FieldName = 'PLACAFRETECP'
      Required = True
      Size = 10
    end
    object zqry_CPFRETECPUFFRETECP: TWideStringField
      FieldName = 'UFFRETECP'
      Required = True
      Size = 2
    end
    object zqry_CPFRETECPVLRFRETECP: TExtendedField
      FieldName = 'VLRFRETECP'
      Required = True
      Precision = 19
    end
    object zqry_CPFRETECPQTDFRETECP: TExtendedField
      FieldName = 'QTDFRETECP'
      Required = True
      Precision = 19
    end
    object zqry_CPFRETECPPESOBRUTCP: TExtendedField
      FieldName = 'PESOBRUTCP'
      Required = True
      Precision = 19
    end
    object zqry_CPFRETECPPESOLIQCP: TExtendedField
      FieldName = 'PESOLIQCP'
      Required = True
      Precision = 19
    end
    object zqry_CPFRETECPESPFRETECP: TWideStringField
      FieldName = 'ESPFRETECP'
      Required = True
      Size = 10
    end
    object zqry_CPFRETECPMARCAFRETECP: TWideStringField
      FieldName = 'MARCAFRETECP'
      Required = True
      Size = 10
    end
    object zqry_CPFRETECPCONHECFRETECP: TWideStringField
      FieldName = 'CONHECFRETECP'
      Size = 13
    end
    object zqry_CPFRETECPPERCCOMPRAFRETECP: TFloatField
      FieldName = 'PERCCOMPRAFRETECP'
    end
    object zqry_CPFRETECPADICFRETECP: TWideStringField
      FieldName = 'ADICFRETECP'
      Required = True
      Size = 1
    end
    object zqry_CPFRETECPADICFRETEBASEICM: TWideStringField
      FieldName = 'ADICFRETEBASEICM'
      Required = True
      Size = 1
    end
    object zqry_CPFRETECPALIQICMSFRETECP: TExtendedField
      FieldName = 'ALIQICMSFRETECP'
      Precision = 19
    end
    object zqry_CPFRETECPVLRICMSFRETECP: TExtendedField
      FieldName = 'VLRICMSFRETECP'
      Precision = 19
    end
    object zqry_CPFRETECPVLRSEGFRETECP: TExtendedField
      FieldName = 'VLRSEGFRETECP'
      Precision = 19
    end
  end
  object zdts_CPFRETECP: TDataSource
    DataSet = zqry_CPFRETECP
    Left = 640
    Top = 1208
  end
  object zqry_FNPAGAR: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnpagar')
    Params = <>
    Left = 376
    Top = 1400
    object zqry_FNPAGARCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNPAGARCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNPAGARCODPAG: TIntegerField
      FieldName = 'CODPAG'
      Required = True
    end
    object zqry_FNPAGARCODEMPCP: TIntegerField
      FieldName = 'CODEMPCP'
    end
    object zqry_FNPAGARCODFILIALCP: TSmallintField
      FieldName = 'CODFILIALCP'
    end
    object zqry_FNPAGARCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_FNPAGARCODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
      Required = True
    end
    object zqry_FNPAGARCODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
      Required = True
    end
    object zqry_FNPAGARCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_FNPAGARCODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
      Required = True
    end
    object zqry_FNPAGARCODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
      Required = True
    end
    object zqry_FNPAGARCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_FNPAGARCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_FNPAGARCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_FNPAGARCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_FNPAGARCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNPAGARCODEMPOC: TIntegerField
      FieldName = 'CODEMPOC'
    end
    object zqry_FNPAGARCODFILIALOC: TSmallintField
      FieldName = 'CODFILIALOC'
    end
    object zqry_FNPAGARCODORDCP: TIntegerField
      FieldName = 'CODORDCP'
    end
    object zqry_FNPAGARDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNPAGARHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNPAGARIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNPAGARDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNPAGARHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNPAGARIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNPAGARANOPLAN: TSmallintField
      FieldName = 'ANOPLAN'
    end
    object zqry_FNPAGARVLRDESCPAG: TExtendedField
      FieldName = 'VLRDESCPAG'
      Precision = 19
    end
    object zqry_FNPAGARVLRMULTAPAG: TExtendedField
      FieldName = 'VLRMULTAPAG'
      Precision = 19
    end
    object zqry_FNPAGARVLRJUROSPAG: TExtendedField
      FieldName = 'VLRJUROSPAG'
      Precision = 19
    end
    object zqry_FNPAGARVLRDEVPAG: TExtendedField
      FieldName = 'VLRDEVPAG'
      Required = True
      Precision = 19
    end
    object zqry_FNPAGARVLRPARCPAG: TExtendedField
      FieldName = 'VLRPARCPAG'
      Required = True
      Precision = 19
    end
    object zqry_FNPAGARVLRPAGOPAG: TExtendedField
      FieldName = 'VLRPAGOPAG'
      Precision = 19
    end
    object zqry_FNPAGARVLRAPAGPAG: TExtendedField
      FieldName = 'VLRAPAGPAG'
      Precision = 19
    end
    object zqry_FNPAGARDATAPAG: TDateField
      FieldName = 'DATAPAG'
    end
    object zqry_FNPAGARDTCOMPPAG: TDateField
      FieldName = 'DTCOMPPAG'
      Required = True
    end
    object zqry_FNPAGARSTATUSPAG: TWideStringField
      FieldName = 'STATUSPAG'
      Required = True
      Size = 2
    end
    object zqry_FNPAGARDTQUITPAG: TDateField
      FieldName = 'DTQUITPAG'
    end
    object zqry_FNPAGARDOCPAG: TIntegerField
      FieldName = 'DOCPAG'
      Required = True
    end
    object zqry_FNPAGARVLRPAG: TExtendedField
      FieldName = 'VLRPAG'
      Precision = 19
    end
    object zqry_FNPAGARNROPARCPAG: TIntegerField
      FieldName = 'NROPARCPAG'
    end
    object zqry_FNPAGAROBSPAG: TWideStringField
      FieldName = 'OBSPAG'
      Size = 250
    end
    object zqry_FNPAGARVLRADICPAG: TExtendedField
      FieldName = 'VLRADICPAG'
      Precision = 19
    end
    object zqry_FNPAGARFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNPAGARCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_FNPAGARCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_FNPAGARCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FNPAGARCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_FNPAGARCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FNPAGARNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNPAGAREMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNPAGARVLRBASEIRRF: TExtendedField
      FieldName = 'VLRBASEIRRF'
      Precision = 19
    end
    object zqry_FNPAGARVLRBASEINSS: TExtendedField
      FieldName = 'VLRBASEINSS'
      Precision = 19
    end
    object zqry_FNPAGARVLRRETIRRF: TExtendedField
      FieldName = 'VLRRETIRRF'
      Precision = 19
    end
    object zqry_FNPAGARVLRRETINSS: TExtendedField
      FieldName = 'VLRRETINSS'
      Precision = 19
    end
    object zqry_FNPAGARCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_FNPAGARCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_FNPAGARCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_FNPAGARCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNPAGARCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNPAGARANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
  end
  object zdts_FNPAGAR: TDataSource
    DataSet = zqry_FNPAGAR
    Left = 472
    Top = 1400
  end
  object zqry_FNITPAGAR: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnitpagar')
    Params = <>
    Left = 544
    Top = 1400
    object zqry_FNITPAGARCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNITPAGARCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNITPAGARCODPAG: TIntegerField
      FieldName = 'CODPAG'
      Required = True
    end
    object zqry_FNITPAGARNPARCPAG: TIntegerField
      FieldName = 'NPARCPAG'
      Required = True
    end
    object zqry_FNITPAGARCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FNITPAGARNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNITPAGARCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_FNITPAGARCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_FNITPAGARCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_FNITPAGARDOCLANCAITPAG: TWideStringField
      FieldName = 'DOCLANCAITPAG'
      Size = 15
    end
    object zqry_FNITPAGAROBSITPAG: TWideStringField
      FieldName = 'OBSITPAG'
      Size = 250
    end
    object zqry_FNITPAGARFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNITPAGARCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNITPAGARCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNITPAGARANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_FNITPAGARCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNITPAGARCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_FNITPAGARCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_FNITPAGARCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FNITPAGARCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_FNITPAGARCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_FNITPAGARCODCONTR: TIntegerField
      FieldName = 'CODCONTR'
    end
    object zqry_FNITPAGARCODITCONTR: TSmallintField
      FieldName = 'CODITCONTR'
    end
    object zqry_FNITPAGAREMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNITPAGARCODEMPSN: TIntegerField
      FieldName = 'CODEMPSN'
    end
    object zqry_FNITPAGARCODFILIALSN: TSmallintField
      FieldName = 'CODFILIALSN'
    end
    object zqry_FNITPAGARCODSINAL: TSmallintField
      FieldName = 'CODSINAL'
    end
    object zqry_FNITPAGARMULTIBAIXA: TWideStringField
      FieldName = 'MULTIBAIXA'
      Size = 1
    end
    object zqry_FNITPAGAREDITITPAG: TWideStringField
      FieldName = 'EDITITPAG'
      Size = 1
    end
    object zqry_FNITPAGARDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNITPAGARIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNITPAGARDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNITPAGARIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNITPAGARHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNITPAGARHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNITPAGARCODEMPEM: TIntegerField
      FieldName = 'CODEMPEM'
    end
    object zqry_FNITPAGARCODFILIALEM: TSmallintField
      FieldName = 'CODFILIALEM'
    end
    object zqry_FNITPAGARMATEMPR: TIntegerField
      FieldName = 'MATEMPR'
    end
    object zqry_FNITPAGARVLRITPAG: TExtendedField
      FieldName = 'VLRITPAG'
      Required = True
      Precision = 19
    end
    object zqry_FNITPAGARVLRDESCITPAG: TExtendedField
      FieldName = 'VLRDESCITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRMULTAITPAG: TExtendedField
      FieldName = 'VLRMULTAITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRJUROSITPAG: TExtendedField
      FieldName = 'VLRJUROSITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRDEVITPAG: TExtendedField
      FieldName = 'VLRDEVITPAG'
      Required = True
      Precision = 19
    end
    object zqry_FNITPAGARVLRPARCITPAG: TExtendedField
      FieldName = 'VLRPARCITPAG'
      Required = True
      Precision = 19
    end
    object zqry_FNITPAGARVLRPAGOITPAG: TExtendedField
      FieldName = 'VLRPAGOITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRAPAGITPAG: TExtendedField
      FieldName = 'VLRAPAGITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRADICITPAG: TExtendedField
      FieldName = 'VLRADICITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARVLRCANCITPAG: TExtendedField
      FieldName = 'VLRCANCITPAG'
      Precision = 19
    end
    object zqry_FNITPAGARDTITPAG: TDateField
      FieldName = 'DTITPAG'
      Required = True
    end
    object zqry_FNITPAGARDTCOMPITPAG: TDateField
      FieldName = 'DTCOMPITPAG'
      Required = True
    end
    object zqry_FNITPAGARDTVENCITPAG: TDateField
      FieldName = 'DTVENCITPAG'
      Required = True
    end
    object zqry_FNITPAGARDTPAGOITPAG: TDateField
      FieldName = 'DTPAGOITPAG'
    end
    object zqry_FNITPAGARSTATUSITPAG: TWideStringField
      FieldName = 'STATUSITPAG'
      Required = True
      Size = 2
    end
    object zqry_FNITPAGARCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
  end
  object zdts_FNITPAGAR: TDataSource
    DataSet = zqry_FNITPAGAR
    Left = 640
    Top = 1400
  end
  object zqry_LFTABICMS: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from lftabicms')
    Params = <>
    Left = 376
    Top = 1448
    object zqry_LFTABICMSCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LFTABICMSCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LFTABICMSUFTI: TWideStringField
      FieldName = 'UFTI'
      Required = True
      Size = 2
    end
    object zqry_LFTABICMSDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFTABICMSHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFTABICMSIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFTABICMSDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LFTABICMSHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LFTABICMSIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_LFTABICMSALIQTI: TFloatField
      FieldName = 'ALIQTI'
      Required = True
    end
    object zqry_LFTABICMSALIQINTRATI: TExtendedField
      FieldName = 'ALIQINTRATI'
      Precision = 19
    end
    object zqry_LFTABICMSALIQFCPTI: TFloatField
      FieldName = 'ALIQFCPTI'
      Required = True
    end
  end
  object zdts_LFTABICMS: TDataSource
    DataSet = zqry_LFTABICMS
    Left = 472
    Top = 1448
  end
  object zqry_VDVENDEDOR: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdvendedor')
    Params = <>
    Left = 376
    Top = 1496
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
    object zqry_VDVENDEDORENDVEND: TWideStringField
      FieldName = 'ENDVEND'
      Size = 50
    end
    object zqry_VDVENDEDORNUMVEND: TIntegerField
      FieldName = 'NUMVEND'
    end
    object zqry_VDVENDEDORCOMPLVEND: TWideStringField
      FieldName = 'COMPLVEND'
    end
    object zqry_VDVENDEDORBAIRVEND: TWideStringField
      FieldName = 'BAIRVEND'
      Size = 30
    end
    object zqry_VDVENDEDORCIDVEND: TWideStringField
      FieldName = 'CIDVEND'
      Size = 30
    end
    object zqry_VDVENDEDORCEPVEND: TWideStringField
      FieldName = 'CEPVEND'
      Size = 8
    end
    object zqry_VDVENDEDORUFVEND: TWideStringField
      FieldName = 'UFVEND'
      Size = 2
    end
    object zqry_VDVENDEDORFONEVEND: TWideStringField
      FieldName = 'FONEVEND'
      Size = 12
    end
    object zqry_VDVENDEDORFAXVEND: TWideStringField
      FieldName = 'FAXVEND'
      Size = 8
    end
    object zqry_VDVENDEDOREMAILVEND: TWideStringField
      FieldName = 'EMAILVEND'
      Size = 50
    end
    object zqry_VDVENDEDORPERCCOMVEND: TFloatField
      FieldName = 'PERCCOMVEND'
    end
    object zqry_VDVENDEDORCOMIPIVEND: TWideStringField
      FieldName = 'COMIPIVEND'
      Size = 1
    end
    object zqry_VDVENDEDORCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_VDVENDEDORCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_VDVENDEDORCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_VDVENDEDORCPFVEND: TWideStringField
      FieldName = 'CPFVEND'
      Size = 11
    end
    object zqry_VDVENDEDORRGVEND: TWideStringField
      FieldName = 'RGVEND'
      Size = 13
    end
    object zqry_VDVENDEDORCNPJVEND: TWideStringField
      FieldName = 'CNPJVEND'
      Size = 14
    end
    object zqry_VDVENDEDORINSCVEND: TWideStringField
      FieldName = 'INSCVEND'
    end
    object zqry_VDVENDEDORCELVEND: TWideStringField
      FieldName = 'CELVEND'
      Size = 12
    end
    object zqry_VDVENDEDORCODEMPSE: TIntegerField
      FieldName = 'CODEMPSE'
    end
    object zqry_VDVENDEDORCODFILIALSE: TIntegerField
      FieldName = 'CODFILIALSE'
    end
    object zqry_VDVENDEDORCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object zqry_VDVENDEDORCODEMPCM: TIntegerField
      FieldName = 'CODEMPCM'
    end
    object zqry_VDVENDEDORCODFILIALCM: TIntegerField
      FieldName = 'CODFILIALCM'
    end
    object zqry_VDVENDEDORCODCLCOMIS: TIntegerField
      FieldName = 'CODCLCOMIS'
    end
    object zqry_VDVENDEDORCODFORNVEND: TWideStringField
      FieldName = 'CODFORNVEND'
      Size = 13
    end
    object zqry_VDVENDEDORCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
    end
    object zqry_VDVENDEDORCODEMPFU: TIntegerField
      FieldName = 'CODEMPFU'
    end
    object zqry_VDVENDEDORCODFILIALFU: TSmallintField
      FieldName = 'CODFILIALFU'
    end
    object zqry_VDVENDEDORCODEMPTV: TIntegerField
      FieldName = 'CODEMPTV'
    end
    object zqry_VDVENDEDORCODFILIALTV: TSmallintField
      FieldName = 'CODFILIALTV'
    end
    object zqry_VDVENDEDORCODTIPOVEND: TIntegerField
      FieldName = 'CODTIPOVEND'
    end
    object zqry_VDVENDEDORDDDFONEVEND: TWideStringField
      FieldName = 'DDDFONEVEND'
      Size = 4
    end
    object zqry_VDVENDEDORDDDFAXVEND: TWideStringField
      FieldName = 'DDDFAXVEND'
      Size = 4
    end
    object zqry_VDVENDEDORDDDCELVEND: TWideStringField
      FieldName = 'DDDCELVEND'
      Size = 4
    end
    object zqry_VDVENDEDORSSPVEND: TWideStringField
      FieldName = 'SSPVEND'
      Size = 10
    end
    object zqry_VDVENDEDOROBSVEND: TWideStringField
      FieldName = 'OBSVEND'
      Size = 500
    end
    object zqry_VDVENDEDORATIVOCOMIS: TWideStringField
      FieldName = 'ATIVOCOMIS'
      Required = True
      Size = 1
    end
    object zqry_VDVENDEDORIMGASSVEND: TBlobField
      FieldName = 'IMGASSVEND'
    end
    object zqry_VDVENDEDORCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_VDVENDEDORCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_VDVENDEDORNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_VDVENDEDORCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_VDVENDEDORCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_VDVENDEDORCODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_VDVENDEDORDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDVENDEDORHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDVENDEDORIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDVENDEDORDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDVENDEDORHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDVENDEDORIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDVENDEDORVLRABONO: TExtendedField
      FieldName = 'VLRABONO'
      Precision = 19
    end
    object zqry_VDVENDEDORVLRDESCONTO: TExtendedField
      FieldName = 'VLRDESCONTO'
      Precision = 19
    end
    object zqry_VDVENDEDORMETAVEND: TExtendedField
      FieldName = 'METAVEND'
      Precision = 19
    end
  end
  object zdts_VDVENDEDOR: TDataSource
    DataSet = zqry_VDVENDEDOR
    Left = 472
    Top = 1496
  end
  object zqry_SGNF: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgnf')
    Params = <>
    Left = 376
    Top = 1544
    object zqry_SGNFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object zqry_SGNFCHAVE: TWideStringField
      FieldName = 'CHAVE'
      Size = 200
    end
    object zqry_SGNFDATA: TDateField
      FieldName = 'DATA'
    end
    object zqry_SGNFHORA: TTimeField
      FieldName = 'HORA'
    end
    object zqry_SGNFUPLOAD: TWideStringField
      FieldName = 'UPLOAD'
      Size = 255
    end
    object zqry_SGNFSITUACAO: TWideStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object zqry_SGNFVALOR: TSingleField
      FieldName = 'VALOR'
    end
    object zqry_SGNFNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object zqry_SGNFCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object zqry_SGNFNFCE: TWideStringField
      FieldName = 'NFCE'
      Size = 1
    end
    object zqry_SGNFREFDEVOLUCAO: TWideStringField
      FieldName = 'REFDEVOLUCAO'
      Size = 45
    end
    object zqry_SGNFENVIADO: TWideStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
  end
  object zdts_SGNF: TDataSource
    DataSet = zqry_SGNF
    Left = 472
    Top = 1544
  end
  object zqry_VDRECEITA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdreceita')
    Params = <>
    Left = 376
    Top = 1592
    object zqry_VDRECEITACODRECEITA: TIntegerField
      FieldName = 'CODRECEITA'
      Required = True
    end
    object zqry_VDRECEITACODART: TIntegerField
      FieldName = 'CODART'
    end
    object zqry_VDRECEITADATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object zqry_VDRECEITAPROPRIEDADE: TWideStringField
      FieldName = 'PROPRIEDADE'
      Size = 50
    end
    object zqry_VDRECEITACODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object zqry_VDRECEITACODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object zqry_VDRECEITACODCULTURA: TIntegerField
      FieldName = 'CODCULTURA'
    end
    object zqry_VDRECEITACODDIAGNOSTICO: TIntegerField
      FieldName = 'CODDIAGNOSTICO'
    end
    object zqry_VDRECEITADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
    end
    object zqry_VDRECEITAAREATRATADA: TSingleField
      FieldName = 'AREATRATADA'
    end
    object zqry_VDRECEITADOSAGEM: TSingleField
      FieldName = 'DOSAGEM'
    end
    object zqry_VDRECEITAQTD: TSingleField
      FieldName = 'QTD'
    end
    object zqry_VDRECEITAUNIDADE: TSingleField
      FieldName = 'UNIDADE'
    end
    object zqry_VDRECEITACOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Size = 10000
    end
    object zqry_VDRECEITAAPLICACOES: TIntegerField
      FieldName = 'APLICACOES'
    end
    object zqry_VDRECEITADIASINTERVALO: TIntegerField
      FieldName = 'DIASINTERVALO'
    end
    object zqry_VDRECEITACARENCIA: TIntegerField
      FieldName = 'CARENCIA'
    end
    object zqry_VDRECEITAMODALIDADE: TWideStringField
      FieldName = 'MODALIDADE'
      Size = 10000
    end
    object zqry_VDRECEITAMANEJOINTEGRADO: TWideStringField
      FieldName = 'MANEJOINTEGRADO'
      Size = 10000
    end
    object zqry_VDRECEITAEPOCA: TWideStringField
      FieldName = 'EPOCA'
      Size = 10000
    end
  end
  object zdts_VDRECEITA: TDataSource
    DataSet = zqry_VDRECEITA
    Left = 472
    Top = 1592
  end
  object zqry_VDFUTURA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from vdfutura')
    Params = <>
    Left = 376
    Top = 1640
    object zqry_VDFUTURACODVDFUTURA: TIntegerField
      FieldName = 'CODVDFUTURA'
      Required = True
    end
    object zqry_VDFUTURACODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_VDFUTURACODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object zqry_VDFUTURADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
    end
    object zqry_VDFUTURASLDCONSIG: TSingleField
      FieldName = 'SLDCONSIG'
    end
    object zqry_VDFUTURASLDRESID: TSingleField
      FieldName = 'SLDRESID'
    end
    object zqry_VDFUTURADTULTRETIRADA: TDateField
      FieldName = 'DTULTRETIRADA'
    end
    object zqry_VDFUTURAQTDULTRETIRADA: TSingleField
      FieldName = 'QTDULTRETIRADA'
    end
    object zqry_VDFUTURA_SLDCONSIGPROD: TFloatField
      FieldKind = fkLookup
      FieldName = '_SLDCONSIGPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDCONSIGPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDFUTURA_SLDRESPROD: TFloatField
      FieldKind = fkLookup
      FieldName = '_SLDRESPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDRESPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
  end
  object zdts_VDFUTURA: TDataSource
    DataSet = zqry_VDFUTURA
    Left = 472
    Top = 1640
  end
  object zqry_SGNFCCE: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgnfcce')
    Params = <>
    Left = 376
    Top = 1688
    object zqry_SGNFCCENUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object zqry_SGNFCCEMODNF: TIntegerField
      FieldName = 'MODNF'
      Required = True
    end
    object zqry_SGNFCCESEQNF: TIntegerField
      FieldName = 'SEQNF'
      Required = True
    end
    object zqry_SGNFCCEPROTOCOLO: TWideStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object zqry_SGNFCCECORRECAO: TWideStringField
      FieldName = 'CORRECAO'
      Size = 200
    end
    object zqry_SGNFCCEDATA: TDateField
      FieldName = 'DATA'
    end
    object zqry_SGNFCCEHORA: TTimeField
      FieldName = 'HORA'
    end
    object zqry_SGNFCCEENVIADO: TWideStringField
      FieldName = 'ENVIADO'
      Size = 1
    end
    object zqry_SGNFCCEARQUIVO: TWideStringField
      FieldName = 'ARQUIVO'
      Size = 80
    end
  end
  object zdts_SGNFCCE: TDataSource
    DataSet = zqry_SGNFCCE
    Left = 472
    Top = 1688
  end
  object zqry_SGNFLOG: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgnflog')
    Params = <>
    Left = 376
    Top = 1736
    object zqry_SGNFLOGNUMNF: TIntegerField
      FieldName = 'NUMNF'
      Required = True
    end
    object zqry_SGNFLOGMODNF: TIntegerField
      FieldName = 'MODNF'
      Required = True
    end
    object zqry_SGNFLOGSEQNF: TIntegerField
      FieldName = 'SEQNF'
      Required = True
    end
    object zqry_SGNFLOGPROTOCOLO: TWideStringField
      FieldName = 'PROTOCOLO'
      Size = 15
    end
    object zqry_SGNFLOGTIPOLOG: TWideStringField
      FieldName = 'TIPOLOG'
      Size = 1
    end
    object zqry_SGNFLOGLOG: TWideStringField
      FieldName = 'LOG'
      Size = 100
    end
    object zqry_SGNFLOGDATA: TDateField
      FieldName = 'DATA'
    end
    object zqry_SGNFLOGHORA: TTimeField
      FieldName = 'HORA'
    end
    object zqry_SGNFLOGUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Size = 15
    end
  end
  object zdts_SGNFLOG: TDataSource
    DataSet = zqry_SGNFLOG
    Left = 472
    Top = 1736
  end
  object zqry_SGMODULADO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgmodulado')
    Params = <>
    Left = 376
    Top = 1784
    object zqry_SGMODULADOCODMODULADO: TIntegerField
      FieldName = 'CODMODULADO'
    end
    object zqry_SGMODULADOL1C1: TWideStringField
      FieldName = 'L1C1'
      Size = 25
    end
    object zqry_SGMODULADOL1C2: TWideStringField
      FieldName = 'L1C2'
      Size = 25
    end
    object zqry_SGMODULADOL1C3: TWideStringField
      FieldName = 'L1C3'
      Size = 25
    end
    object zqry_SGMODULADOL1C4: TWideStringField
      FieldName = 'L1C4'
      Size = 25
    end
    object zqry_SGMODULADOL1C5: TWideStringField
      FieldName = 'L1C5'
      Size = 25
    end
    object zqry_SGMODULADOL1C6: TWideStringField
      FieldName = 'L1C6'
      Size = 25
    end
    object zqry_SGMODULADOL1C7: TWideStringField
      FieldName = 'L1C7'
      Size = 25
    end
    object zqry_SGMODULADOL1C8: TWideStringField
      FieldName = 'L1C8'
      Size = 25
    end
    object zqry_SGMODULADOL1C9: TWideStringField
      FieldName = 'L1C9'
      Size = 25
    end
    object zqry_SGMODULADOL2C1: TWideStringField
      FieldName = 'L2C1'
      Size = 25
    end
    object zqry_SGMODULADOL2C2: TWideStringField
      FieldName = 'L2C2'
      Size = 25
    end
    object zqry_SGMODULADOL2C3: TWideStringField
      FieldName = 'L2C3'
      Size = 25
    end
    object zqry_SGMODULADOL2C4: TWideStringField
      FieldName = 'L2C4'
      Size = 25
    end
    object zqry_SGMODULADOL2C5: TWideStringField
      FieldName = 'L2C5'
      Size = 25
    end
    object zqry_SGMODULADOL2C6: TWideStringField
      FieldName = 'L2C6'
      Size = 25
    end
    object zqry_SGMODULADOL2C7: TWideStringField
      FieldName = 'L2C7'
      Size = 25
    end
    object zqry_SGMODULADOL2C8: TWideStringField
      FieldName = 'L2C8'
      Size = 25
    end
    object zqry_SGMODULADOL2C9: TWideStringField
      FieldName = 'L2C9'
      Size = 25
    end
    object zqry_SGMODULADOL3C1: TWideStringField
      FieldName = 'L3C1'
      Size = 25
    end
    object zqry_SGMODULADOL3C2: TWideStringField
      FieldName = 'L3C2'
      Size = 25
    end
    object zqry_SGMODULADOL3C3: TWideStringField
      FieldName = 'L3C3'
      Size = 25
    end
    object zqry_SGMODULADOL3C4: TWideStringField
      FieldName = 'L3C4'
      Size = 25
    end
    object zqry_SGMODULADOL3C5: TWideStringField
      FieldName = 'L3C5'
      Size = 25
    end
    object zqry_SGMODULADOL3C6: TWideStringField
      FieldName = 'L3C6'
      Size = 25
    end
    object zqry_SGMODULADOL3C7: TWideStringField
      FieldName = 'L3C7'
      Size = 25
    end
    object zqry_SGMODULADOL3C8: TWideStringField
      FieldName = 'L3C8'
      Size = 25
    end
    object zqry_SGMODULADOL3C9: TWideStringField
      FieldName = 'L3C9'
      Size = 25
    end
    object zqry_SGMODULADOCAOS: TWideStringField
      FieldName = 'CAOS'
      Size = 10
    end
    object zqry_SGMODULADONOMEREGISTRO: TWideStringField
      FieldName = 'NOMEREGISTRO'
      Size = 50
    end
    object zqry_SGMODULADODOCUMENTO: TWideStringField
      FieldName = 'DOCUMENTO'
      Size = 14
    end
    object zqry_SGMODULADOTPVERSAO: TIntegerField
      FieldName = 'TPVERSAO'
    end
  end
  object zdts_SGMODULADO: TDataSource
    DataSet = zqry_SGMODULADO
    Left = 472
    Top = 1784
  end
  object zqry_SGESTACAO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgestacao')
    Params = <>
    Left = 376
    Top = 1832
    object zqry_SGESTACAOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGESTACAOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGESTACAOCODEST: TSmallintField
      FieldName = 'CODEST'
      Required = True
    end
    object zqry_SGESTACAODESCEST: TWideStringField
      FieldName = 'DESCEST'
      Required = True
      Size = 50
    end
    object zqry_SGESTACAOMODODEMOEST: TWideStringField
      FieldName = 'MODODEMOEST'
      Required = True
      Size = 1
    end
    object zqry_SGESTACAONFEEST: TWideStringField
      FieldName = 'NFEEST'
      Required = True
      Size = 1
    end
    object zqry_SGESTACAOTAMFONTETXT: TSmallintField
      FieldName = 'TAMFONTETXT'
    end
    object zqry_SGESTACAOFONTETXT: TWideStringField
      FieldName = 'FONTETXT'
      Size = 30
    end
    object zqry_SGESTACAOPATHCACERTS: TWideStringField
      FieldName = 'PATHCACERTS'
      Size = 256
    end
    object zqry_SGESTACAOCODEMPPX: TIntegerField
      FieldName = 'CODEMPPX'
    end
    object zqry_SGESTACAOCODFILIALPX: TSmallintField
      FieldName = 'CODFILIALPX'
    end
    object zqry_SGESTACAOCODPROXY: TIntegerField
      FieldName = 'CODPROXY'
    end
    object zqry_SGESTACAODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGESTACAOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGESTACAOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGESTACAODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGESTACAOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGESTACAOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_SGESTACAOCONECTADO: TWideStringField
      FieldName = 'CONECTADO'
      Size = 1
    end
    object zqry_SGESTACAOLOGADO: TWideStringField
      FieldName = 'LOGADO'
      Size = 1
    end
    object zqry_SGESTACAOATIVAEST: TWideStringField
      FieldName = 'ATIVAEST'
      Size = 1
    end
  end
  object zdts_SGESTACAO: TDataSource
    DataSet = zqry_SGESTACAO
    Left = 472
    Top = 1832
  end
  object zqry_SGRECADOWEB: TZQuery
    Connection = ConectaWeb
    SQL.Strings = (
      'select * from sgrecado')
    Params = <>
    Left = 40
    Top = 496
    object zqry_SGRECADOWEBcodrecado: TIntegerField
      FieldName = 'codrecado'
      Required = True
    end
    object zqry_SGRECADOWEBcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object zqry_SGRECADOWEBadministrativo: TWideStringField
      FieldName = 'administrativo'
      Required = True
      Size = 1
    end
    object zqry_SGRECADOWEBassunto: TWideStringField
      FieldName = 'assunto'
      Required = True
      Size = 30
    end
    object zqry_SGRECADOWEBmensagem: TWideStringField
      FieldName = 'mensagem'
      Required = True
      Size = 1000
    end
    object zqry_SGRECADOWEBlink: TWideStringField
      FieldName = 'link'
      Required = True
      Size = 1000
    end
    object zqry_SGRECADOWEBdata: TDateField
      FieldName = 'data'
      Required = True
    end
    object zqry_SGRECADOWEBhora: TTimeField
      FieldName = 'hora'
      Required = True
    end
    object zqry_SGRECADOWEBcadastro: TDateTimeField
      FieldName = 'cadastro'
      Required = True
    end
    object zqry_SGRECADOWEBbaixado: TWideStringField
      FieldName = 'baixado'
      Required = True
      Size = 1
    end
  end
  object zdts_SGRECADOWEB: TDataSource
    DataSet = zqry_SGRECADOWEB
    Left = 120
    Top = 496
  end
  object zqry_SGRECADO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from sgrecado')
    Params = <>
    Left = 376
    Top = 1880
    object zqry_SGRECADOCODRECADO: TIntegerField
      FieldName = 'CODRECADO'
      Required = True
    end
    object zqry_SGRECADOCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_SGRECADOADMINISTRATIVO: TWideStringField
      FieldName = 'ADMINISTRATIVO'
      Size = 1
    end
    object zqry_SGRECADOASSUNTO: TWideStringField
      FieldName = 'ASSUNTO'
      Size = 30
    end
    object zqry_SGRECADOMENSAGEM: TWideStringField
      FieldName = 'MENSAGEM'
      Size = 1000
    end
    object zqry_SGRECADOLINK: TWideStringField
      FieldName = 'LINK'
      Size = 1000
    end
    object zqry_SGRECADODATA: TDateField
      FieldName = 'DATA'
    end
    object zqry_SGRECADOHORA: TTimeField
      FieldName = 'HORA'
    end
    object zqry_SGRECADOCADASTRO: TDateTimeField
      FieldName = 'CADASTRO'
    end
    object zqry_SGRECADOLIDO: TWideStringField
      FieldName = 'LIDO'
      Size = 1
    end
  end
  object zdts_SGRECADO: TDataSource
    DataSet = zqry_SGRECADO
    Left = 472
    Top = 1880
  end
  object seupedido: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'kangaru.com.br'
    Port = 3306
    Database = 'seupedido_maissabor'
    User = 'seupedido_israel'
    Password = 'px4b7470#ISA'
    Protocol = 'mysql-5'
    Left = 944
    Top = 8
  end
  object zqry_SP_PEDIDO: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from pedido')
    Params = <>
    Left = 944
    Top = 56
    object zqry_SP_PEDIDOpedido_id: TIntegerField
      FieldName = 'pedido_id'
      Required = True
    end
    object zqry_SP_PEDIDOpedido_data: TDateTimeField
      FieldName = 'pedido_data'
    end
    object zqry_SP_PEDIDOpedido_cliente: TIntegerField
      FieldName = 'pedido_cliente'
    end
    object zqry_SP_PEDIDOpedido_local: TLongWordField
      FieldName = 'pedido_local'
    end
    object zqry_SP_PEDIDOpedido_status: TIntegerField
      FieldName = 'pedido_status'
    end
    object zqry_SP_PEDIDOpedido_obs: TWideMemoField
      FieldName = 'pedido_obs'
      BlobType = ftWideMemo
    end
    object zqry_SP_PEDIDOpedido_desconto: TFloatField
      FieldName = 'pedido_desconto'
    end
    object zqry_SP_PEDIDOpedido_total: TFloatField
      FieldName = 'pedido_total'
    end
    object zqry_SP_PEDIDOpedido_entrega: TFloatField
      FieldName = 'pedido_entrega'
    end
    object zqry_SP_PEDIDOpedido_entrega_prazo: TWideStringField
      FieldName = 'pedido_entrega_prazo'
      Size = 200
    end
    object zqry_SP_PEDIDOpedido_entegrador: TIntegerField
      FieldName = 'pedido_entegrador'
    end
    object zqry_SP_PEDIDOpedido_obs_pagto: TWideStringField
      FieldName = 'pedido_obs_pagto'
      Size = 200
    end
    object zqry_SP_PEDIDOpedido_url_code: TWideStringField
      FieldName = 'pedido_url_code'
      Size = 255
    end
    object zqry_SP_PEDIDOpedido_pedidourl: TWideStringField
      FieldName = 'pedido_pedidourl'
      Size = 255
    end
    object zqry_SP_PEDIDOpedido_pagseguro: TIntegerField
      FieldName = 'pedido_pagseguro'
    end
    object zqry_SP_PEDIDOpedido_impresso: TWideStringField
      FieldName = 'pedido_impresso'
      Size = 1
    end
  end
  object zdts_SP_PEDIDO: TDataSource
    DataSet = zqry_SP_PEDIDO
    Left = 1032
    Top = 56
  end
  object zqry_SP_CONFIG: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from config')
    Params = <>
    Left = 944
    Top = 104
    object zqry_SP_CONFIGconfig_id: TIntegerField
      FieldName = 'config_id'
      Required = True
    end
    object zqry_SP_CONFIGconfig_nome: TWideStringField
      FieldName = 'config_nome'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_foto: TWideStringField
      FieldName = 'config_foto'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_desc: TWideMemoField
      FieldName = 'config_desc'
      BlobType = ftWideMemo
    end
    object zqry_SP_CONFIGconfig_horario: TWideStringField
      FieldName = 'config_horario'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_aberto: TIntegerField
      FieldName = 'config_aberto'
    end
    object zqry_SP_CONFIGconfig_entrega: TWideStringField
      FieldName = 'config_entrega'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_taxa_entrega: TFloatField
      FieldName = 'config_taxa_entrega'
    end
    object zqry_SP_CONFIGconfig_fone1: TWideStringField
      FieldName = 'config_fone1'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_fone2: TWideStringField
      FieldName = 'config_fone2'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_fone3: TWideStringField
      FieldName = 'config_fone3'
      Size = 200
    end
    object zqry_SP_CONFIGconfig_endereco: TWideStringField
      FieldName = 'config_endereco'
      Size = 255
    end
    object zqry_SP_CONFIGconfig_retirada: TIntegerField
      FieldName = 'config_retirada'
    end
    object zqry_SP_CONFIGconfig_chat: TWideMemoField
      FieldName = 'config_chat'
      BlobType = ftWideMemo
    end
    object zqry_SP_CONFIGconfig_color_bd: TWideStringField
      FieldName = 'config_color_bd'
    end
    object zqry_SP_CONFIGconfig_color_bh: TWideStringField
      FieldName = 'config_color_bh'
    end
    object zqry_SP_CONFIGconfig_color_cd: TWideStringField
      FieldName = 'config_color_cd'
    end
    object zqry_SP_CONFIGconfig_color_ch: TWideStringField
      FieldName = 'config_color_ch'
    end
    object zqry_SP_CONFIGconfig_color_bk: TWideStringField
      FieldName = 'config_color_bk'
    end
    object zqry_SP_CONFIGconfig_color_top: TWideStringField
      FieldName = 'config_color_top'
    end
    object zqry_SP_CONFIGconfig_colors: TWideStringField
      FieldName = 'config_colors'
      Size = 2000
    end
    object zqry_SP_CONFIGconfig_foto_round: TIntegerField
      FieldName = 'config_foto_round'
    end
    object zqry_SP_CONFIGconfig_site_keywords: TWideMemoField
      FieldName = 'config_site_keywords'
      BlobType = ftWideMemo
    end
    object zqry_SP_CONFIGconfig_site_description: TWideMemoField
      FieldName = 'config_site_description'
      BlobType = ftWideMemo
    end
    object zqry_SP_CONFIGconfig_site_ga: TWideMemoField
      FieldName = 'config_site_ga'
      BlobType = ftWideMemo
    end
    object zqry_SP_CONFIGconfig_cep: TWideStringField
      FieldName = 'config_cep'
    end
    object zqry_SP_CONFIGconfig_cep_unico: TIntegerField
      FieldName = 'config_cep_unico'
      Required = True
    end
    object zqry_SP_CONFIGconfig_resumo_whats: TIntegerField
      FieldName = 'config_resumo_whats'
    end
    object zqry_SP_CONFIGconfig_home_qtde: TIntegerField
      FieldName = 'config_home_qtde'
    end
    object zqry_SP_CONFIGconfig_bell: TIntegerField
      FieldName = 'config_bell'
    end
    object zqry_SP_CONFIGconfig_pedmin: TFloatField
      FieldName = 'config_pedmin'
    end
  end
  object zdts_SP_CONFIG: TDataSource
    Left = 1032
    Top = 104
  end
  object zqry_SP_PEDIDOLISTA: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from pedido_lista')
    Params = <>
    Left = 944
    Top = 152
    object zqry_SP_PEDIDOLISTAlista_id: TIntegerField
      FieldName = 'lista_id'
      Required = True
    end
    object zqry_SP_PEDIDOLISTAlista_pedido: TIntegerField
      FieldName = 'lista_pedido'
    end
    object zqry_SP_PEDIDOLISTAlista_item: TIntegerField
      FieldName = 'lista_item'
    end
    object zqry_SP_PEDIDOLISTAlista_item_nome: TWideStringField
      FieldName = 'lista_item_nome'
      Size = 500
    end
    object zqry_SP_PEDIDOLISTAlista_item_preco: TFloatField
      FieldName = 'lista_item_preco'
    end
    object zqry_SP_PEDIDOLISTAlista_opcao: TIntegerField
      FieldName = 'lista_opcao'
    end
    object zqry_SP_PEDIDOLISTAlista_opcao_preco: TFloatField
      FieldName = 'lista_opcao_preco'
    end
    object zqry_SP_PEDIDOLISTAlista_opcao_nome: TWideStringField
      FieldName = 'lista_opcao_nome'
      Size = 200
    end
    object zqry_SP_PEDIDOLISTAlista_info: TWideStringField
      FieldName = 'lista_info'
      Size = 500
    end
    object zqry_SP_PEDIDOLISTAlista_qtde: TIntegerField
      FieldName = 'lista_qtde'
    end
    object zqry_SP_PEDIDOLISTAlista_item_desc: TWideMemoField
      FieldName = 'lista_item_desc'
      BlobType = ftWideMemo
    end
    object zqry_SP_PEDIDOLISTAlista_item_obs: TWideMemoField
      FieldName = 'lista_item_obs'
      BlobType = ftWideMemo
    end
    object zqry_SP_PEDIDOLISTAlista_item_codigo: TWideStringField
      FieldName = 'lista_item_codigo'
      Size = 200
    end
  end
  object zdts_SP_PEDIDOLISTA: TDataSource
    DataSet = zqry_SP_PEDIDOLISTA
    Left = 1032
    Top = 152
  end
  object zqry_SP_CLIENTE: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 944
    Top = 200
    object zqry_SP_CLIENTEcliente_id: TIntegerField
      FieldName = 'cliente_id'
      Required = True
    end
    object zqry_SP_CLIENTEcliente_nome: TWideStringField
      FieldName = 'cliente_nome'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_email: TWideStringField
      FieldName = 'cliente_email'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_fone: TWideStringField
      FieldName = 'cliente_fone'
    end
    object zqry_SP_CLIENTEcliente_fone2: TWideStringField
      FieldName = 'cliente_fone2'
    end
    object zqry_SP_CLIENTEcliente_cpf: TWideStringField
      FieldName = 'cliente_cpf'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_senha: TWideStringField
      FieldName = 'cliente_senha'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_fone3: TWideStringField
      FieldName = 'cliente_fone3'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_foto: TWideStringField
      FieldName = 'cliente_foto'
      Size = 200
    end
    object zqry_SP_CLIENTEcliente_token: TWideStringField
      FieldName = 'cliente_token'
      Size = 255
    end
    object zqry_SP_CLIENTEcliente_nasc: TWideStringField
      FieldName = 'cliente_nasc'
    end
  end
  object zqry_SP_ENDERECO: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from endereco')
    Params = <>
    Left = 944
    Top = 248
    object zqry_SP_ENDERECOendereco_id: TIntegerField
      FieldName = 'endereco_id'
      Required = True
    end
    object zqry_SP_ENDERECOendereco_cliente: TIntegerField
      FieldName = 'endereco_cliente'
    end
    object zqry_SP_ENDERECOendereco_endereco: TWideStringField
      FieldName = 'endereco_endereco'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_numero: TWideStringField
      FieldName = 'endereco_numero'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_bairro: TWideStringField
      FieldName = 'endereco_bairro'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_cidade: TWideStringField
      FieldName = 'endereco_cidade'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_uf: TWideStringField
      FieldName = 'endereco_uf'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_cep: TWideStringField
      FieldName = 'endereco_cep'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_referencia: TWideStringField
      FieldName = 'endereco_referencia'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_nome: TWideStringField
      FieldName = 'endereco_nome'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_complemento: TWideStringField
      FieldName = 'endereco_complemento'
      Size = 200
    end
    object zqry_SP_ENDERECOendereco_bairro_id: TIntegerField
      FieldName = 'endereco_bairro_id'
    end
  end
  object zdts_SP_CLIENTE: TDataSource
    DataSet = zqry_SP_CLIENTE
    Left = 1032
    Top = 200
  end
  object zdts_SP_ENDERECO: TDataSource
    DataSet = zqry_SP_ENDERECO
    Left = 1032
    Top = 248
  end
  object zqry_SP_UPT: TZQuery
    Connection = seupedido
    Params = <>
    Left = 944
    Top = 296
  end
  object zdts_SP_UPT: TDataSource
    Left = 1032
    Top = 296
  end
  object zqry_LFCLFISCAL: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from lfclfiscal')
    Params = <>
    Left = 376
    Top = 1928
    object zqry_LFCLFISCALCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LFCLFISCALCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LFCLFISCALCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_LFCLFISCALDESCFISC: TWideStringField
      FieldName = 'DESCFISC'
      Required = True
      Size = 50
    end
    object zqry_LFCLFISCALTIPOFISC: TWideStringField
      FieldName = 'TIPOFISC'
      Size = 2
    end
    object zqry_LFCLFISCALTPREDICMSFISC: TWideStringField
      FieldName = 'TPREDICMSFISC'
      Size = 1
    end
    object zqry_LFCLFISCALALIQFISC: TExtendedField
      FieldName = 'ALIQFISC'
      Precision = 19
    end
    object zqry_LFCLFISCALALIQLFISC: TExtendedField
      FieldName = 'ALIQLFISC'
      Precision = 19
    end
    object zqry_LFCLFISCALREDFISC: TExtendedField
      FieldName = 'REDFISC'
      Precision = 19
    end
    object zqry_LFCLFISCALALIQIPIFISC: TExtendedField
      FieldName = 'ALIQIPIFISC'
      Precision = 19
    end
    object zqry_LFCLFISCALCODEMPRA: TIntegerField
      FieldName = 'CODEMPRA'
      Required = True
    end
    object zqry_LFCLFISCALCODFILIALRA: TSmallintField
      FieldName = 'CODFILIALRA'
      Required = True
    end
    object zqry_LFCLFISCALCODREGRA: TWideStringField
      FieldName = 'CODREGRA'
      Required = True
      Size = 4
    end
    object zqry_LFCLFISCALORIGFISC: TWideStringField
      FieldName = 'ORIGFISC'
      Size = 1
    end
    object zqry_LFCLFISCALCODEMPTT: TIntegerField
      FieldName = 'CODEMPTT'
    end
    object zqry_LFCLFISCALCODFILIALTT: TSmallintField
      FieldName = 'CODFILIALTT'
    end
    object zqry_LFCLFISCALCODTRATTRIB: TWideStringField
      FieldName = 'CODTRATTRIB'
      Size = 2
    end
    object zqry_LFCLFISCALCODEMPME: TIntegerField
      FieldName = 'CODEMPME'
    end
    object zqry_LFCLFISCALCODFILIALME: TSmallintField
      FieldName = 'CODFILIALME'
    end
    object zqry_LFCLFISCALCODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_LFCLFISCALSITPISFISC: TWideStringField
      FieldName = 'SITPISFISC'
      Size = 1
    end
    object zqry_LFCLFISCALSITCOFINSFISC: TWideStringField
      FieldName = 'SITCOFINSFISC'
      Size = 1
    end
    object zqry_LFCLFISCALTIPOST: TWideStringField
      FieldName = 'TIPOST'
      Size = 2
    end
    object zqry_LFCLFISCALMARGEMVLAGR: TExtendedField
      FieldName = 'MARGEMVLAGR'
      Precision = 19
    end
    object zqry_LFCLFISCALCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 10
    end
    object zqry_LFCLFISCALCODNBM: TWideStringField
      FieldName = 'CODNBM'
      Size = 12
    end
    object zqry_LFCLFISCALEXTIPI: TWideStringField
      FieldName = 'EXTIPI'
      Size = 2
    end
    object zqry_LFCLFISCALCODSERV: TWideStringField
      FieldName = 'CODSERV'
      Size = 5
    end
    object zqry_LFCLFISCALCST: TWideStringField
      FieldName = 'CST'
      Size = 2
    end
    object zqry_LFCLFISCALCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object zqry_LFCLFISCALDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFCLFISCALHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFCLFISCALIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFCLFISCALDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LFCLFISCALHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LFCLFISCALIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_LFCLFISCAL: TDataSource
    DataSet = zqry_LFCLFISCAL
    Left = 472
    Top = 1928
  end
  object zqry_LFNCM: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from LFNCM ')
    Params = <>
    Left = 376
    Top = 1976
    object zqry_LFNCMCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Required = True
      Size = 10
    end
    object zqry_LFNCMDESCNCM: TWideStringField
      FieldName = 'DESCNCM'
      Required = True
      Size = 60
    end
    object zqry_LFNCMALIQNCM: TWideStringField
      FieldName = 'ALIQNCM'
      Size = 6
    end
    object zqry_LFNCMTEXTONCM: TWideStringField
      FieldName = 'TEXTONCM'
      Size = 2000
    end
    object zqry_LFNCMEXCECAONCM: TWideStringField
      FieldName = 'EXCECAONCM'
      Size = 1000
    end
    object zqry_LFNCMALIQNAC: TExtendedField
      FieldName = 'ALIQNAC'
      Required = True
      Precision = 19
    end
    object zqry_LFNCMALIQIMP: TExtendedField
      FieldName = 'ALIQIMP'
      Required = True
      Precision = 19
    end
    object zqry_LFNCMDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFNCMHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFNCMIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFNCMDTALT: TDateField
      FieldName = 'DTALT'
      Required = True
    end
    object zqry_LFNCMHALT: TTimeField
      FieldName = 'HALT'
      Required = True
    end
    object zqry_LFNCMIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Required = True
      Size = 8
    end
    object zqry_LFNCMCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_LFNCMCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
    end
  end
  object zdts_LFNCM: TDataSource
    DataSet = zqry_LFNCM
    Left = 472
    Top = 1976
  end
  object zqry_LFITCLFISCAL: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from lfitclfiscal')
    Params = <>
    Left = 376
    Top = 2024
    object zqry_LFITCLFISCALCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LFITCLFISCALCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LFITCLFISCALCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_LFITCLFISCALCODITFISC: TIntegerField
      FieldName = 'CODITFISC'
      Required = True
    end
    object zqry_LFITCLFISCALORIGFISC: TWideStringField
      FieldName = 'ORIGFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALTIPOFISC: TWideStringField
      FieldName = 'TIPOFISC'
      Required = True
      Size = 2
    end
    object zqry_LFITCLFISCALTPREDICMSFISC: TWideStringField
      FieldName = 'TPREDICMSFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALREDFISC: TExtendedField
      FieldName = 'REDFISC'
      Precision = 19
    end
    object zqry_LFITCLFISCALCODTRATTRIB: TWideStringField
      FieldName = 'CODTRATTRIB'
      Required = True
      Size = 2
    end
    object zqry_LFITCLFISCALNOUFITFISC: TWideStringField
      FieldName = 'NOUFITFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALCODFISCCLI: TIntegerField
      FieldName = 'CODFISCCLI'
    end
    object zqry_LFITCLFISCALCODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_LFITCLFISCALCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
    end
    object zqry_LFITCLFISCALTIPOST: TWideStringField
      FieldName = 'TIPOST'
      Size = 2
    end
    object zqry_LFITCLFISCALMARGEMVLAGR: TExtendedField
      FieldName = 'MARGEMVLAGR'
      Precision = 19
    end
    object zqry_LFITCLFISCALGERALFISC: TWideStringField
      FieldName = 'GERALFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALCODSITTRIBPIS: TWideStringField
      FieldName = 'CODSITTRIBPIS'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBPIS: TWideStringField
      FieldName = 'IMPSITTRIBPIS'
      Size = 2
    end
    object zqry_LFITCLFISCALCODSITTRIBCOF: TWideStringField
      FieldName = 'CODSITTRIBCOF'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBCOF: TWideStringField
      FieldName = 'IMPSITTRIBCOF'
      Size = 2
    end
    object zqry_LFITCLFISCALCODSITTRIBIPI: TWideStringField
      FieldName = 'CODSITTRIBIPI'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBIPI: TWideStringField
      FieldName = 'IMPSITTRIBIPI'
      Size = 2
    end
    object zqry_LFITCLFISCALTPCALCIPI: TWideStringField
      FieldName = 'TPCALCIPI'
      Size = 1
    end
    object zqry_LFITCLFISCALVLRIPIUNIDTRIB: TExtendedField
      FieldName = 'VLRIPIUNIDTRIB'
      Precision = 19
    end
    object zqry_LFITCLFISCALMODBCICMS: TSmallintField
      FieldName = 'MODBCICMS'
      Required = True
    end
    object zqry_LFITCLFISCALMODBCICMSST: TSmallintField
      FieldName = 'MODBCICMSST'
      Required = True
    end
    object zqry_LFITCLFISCALCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_LFITCLFISCALSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_LFITCLFISCALVLRPISUNIDTRIB: TExtendedField
      FieldName = 'VLRPISUNIDTRIB'
      Precision = 19
    end
    object zqry_LFITCLFISCALVLRCOFUNIDTRIB: TExtendedField
      FieldName = 'VLRCOFUNIDTRIB'
      Precision = 19
    end
    object zqry_LFITCLFISCALTIPOUSOITFISC: TWideStringField
      FieldName = 'TIPOUSOITFISC'
      Required = True
      Size = 2
    end
    object zqry_LFITCLFISCALREDBASEST: TWideStringField
      FieldName = 'REDBASEST'
      Size = 1
    end
    object zqry_LFITCLFISCALREDBASEFRETE: TWideStringField
      FieldName = 'REDBASEFRETE'
      Size = 1
    end
    object zqry_LFITCLFISCALCODREGRA: TWideStringField
      FieldName = 'CODREGRA'
      Size = 4
    end
    object zqry_LFITCLFISCALCODSITTRIBISS: TWideStringField
      FieldName = 'CODSITTRIBISS'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBISS: TWideStringField
      FieldName = 'IMPSITTRIBISS'
      Size = 2
    end
    object zqry_LFITCLFISCALALIQISSFISC: TExtendedField
      FieldName = 'ALIQISSFISC'
      Precision = 19
    end
    object zqry_LFITCLFISCALRETENSAOISS: TWideStringField
      FieldName = 'RETENSAOISS'
      Size = 1
    end
    object zqry_LFITCLFISCALINDAPURIPI: TWideStringField
      FieldName = 'INDAPURIPI'
      Size = 1
    end
    object zqry_LFITCLFISCALCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object zqry_LFITCLFISCALALIQICMSIMP: TExtendedField
      FieldName = 'ALIQICMSIMP'
      Precision = 19
    end
    object zqry_LFITCLFISCALPERCCREDPRESIMP: TExtendedField
      FieldName = 'PERCCREDPRESIMP'
      Required = True
      Precision = 19
    end
    object zqry_LFITCLFISCALADICIPIBASEICMS: TWideStringField
      FieldName = 'ADICIPIBASEICMS'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALADICICMSTOTNOTA: TWideStringField
      FieldName = 'ADICICMSTOTNOTA'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALCODCALC: TIntegerField
      FieldName = 'CODCALC'
    end
    object zqry_LFITCLFISCALALIQICMSSTCM: TExtendedField
      FieldName = 'ALIQICMSSTCM'
      Precision = 19
    end
    object zqry_LFITCLFISCALCALCSTCM: TWideStringField
      FieldName = 'CALCSTCM'
      Size = 1
    end
    object zqry_LFITCLFISCALDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFITCLFISCALHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFITCLFISCALIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFITCLFISCALDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LFITCLFISCALHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LFITCLFISCALIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_LFITCLFISCALATIVOITFISC: TWideStringField
      FieldName = 'ATIVOITFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALCENQ: TWideStringField
      FieldName = 'CENQ'
      Size = 3
    end
    object zqry_LFITCLFISCALCLENQ: TIntegerField
      FieldName = 'CLENQ'
    end
    object zqry_LFITCLFISCALSIMPLESFILIAL: TWideStringField
      FieldName = 'SIMPLESFILIAL'
      Size = 1
    end
    object zqry_LFITCLFISCALICMSPART: TWideStringField
      FieldName = 'ICMSPART'
      Size = 1
    end
    object zqry_LFITCLFISCALPBCOP: TExtendedField
      FieldName = 'PBCOP'
      Precision = 19
    end
    object zqry_LFITCLFISCALCODEMPTT: TIntegerField
      FieldName = 'CODEMPTT'
      Required = True
    end
    object zqry_LFITCLFISCALCODFILIALTT: TIntegerField
      FieldName = 'CODFILIALTT'
      Required = True
    end
    object zqry_LFITCLFISCALCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
    end
    object zqry_LFITCLFISCALCODFILIALFC: TIntegerField
      FieldName = 'CODFILIALFC'
    end
    object zqry_LFITCLFISCALALIQFISC: TFloatField
      FieldName = 'ALIQFISC'
    end
    object zqry_LFITCLFISCALALIQFISCINTRA: TFloatField
      FieldName = 'ALIQFISCINTRA'
    end
    object zqry_LFITCLFISCALALIQLFISC: TFloatField
      FieldName = 'ALIQLFISC'
    end
    object zqry_LFITCLFISCALALIQIPIFISC: TFloatField
      FieldName = 'ALIQIPIFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQPISFISC: TFloatField
      FieldName = 'ALIQPISFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQCOFINSFISC: TFloatField
      FieldName = 'ALIQCOFINSFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQCSOCIALFISC: TFloatField
      FieldName = 'ALIQCSOCIALFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQIRFISC: TFloatField
      FieldName = 'ALIQIRFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQFUNRURALFISC: TFloatField
      FieldName = 'ALIQFUNRURALFISC'
      Required = True
    end
    object zqry_LFITCLFISCALALIQIIFISC: TFloatField
      FieldName = 'ALIQIIFISC'
      Required = True
    end
    object zqry_LFITCLFISCALCODEMPME: TIntegerField
      FieldName = 'CODEMPME'
    end
    object zqry_LFITCLFISCALCODFILIALME: TSmallintField
      FieldName = 'CODFILIALME'
    end
    object zqry_LFITCLFISCALCODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
    end
    object zqry_LFITCLFISCALCODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
    end
    object zqry_LFITCLFISCALCODEMPSP: TIntegerField
      FieldName = 'CODEMPSP'
    end
    object zqry_LFITCLFISCALCODFILIALSP: TSmallintField
      FieldName = 'CODFILIALSP'
    end
    object zqry_LFITCLFISCALCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_LFITCLFISCALCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_LFITCLFISCALCODEMPSI: TIntegerField
      FieldName = 'CODEMPSI'
    end
    object zqry_LFITCLFISCALCODFILIALSI: TSmallintField
      FieldName = 'CODFILIALSI'
    end
    object zqry_LFITCLFISCALCODEMPRA: TIntegerField
      FieldName = 'CODEMPRA'
    end
    object zqry_LFITCLFISCALCODFILIALRA: TSmallintField
      FieldName = 'CODFILIALRA'
    end
    object zqry_LFITCLFISCALCODEMPIS: TIntegerField
      FieldName = 'CODEMPIS'
    end
    object zqry_LFITCLFISCALCODFILIALIS: TSmallintField
      FieldName = 'CODFILIALIS'
    end
    object zqry_LFITCLFISCALCODEMPCN: TIntegerField
      FieldName = 'CODEMPCN'
    end
    object zqry_LFITCLFISCALCODFILIALCN: TSmallintField
      FieldName = 'CODFILIALCN'
    end
    object zqry_LFITCLFISCALCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_LFITCLFISCALCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
  end
  object zdts_LFITCLFISCAL: TDataSource
    Left = 472
    Top = 2024
  end
  object zqry_SP_ITEM: TZQuery
    Connection = seupedido
    SQL.Strings = (
      'select * from item')
    Params = <>
    Left = 944
    Top = 344
    object zqry_SP_ITEMitem_id: TIntegerField
      FieldName = 'item_id'
      Required = True
    end
    object zqry_SP_ITEMitem_categoria: TIntegerField
      FieldName = 'item_categoria'
    end
    object zqry_SP_ITEMitem_nome: TWideStringField
      FieldName = 'item_nome'
      Size = 200
    end
    object zqry_SP_ITEMitem_desc: TWideMemoField
      FieldName = 'item_desc'
      BlobType = ftWideMemo
    end
    object zqry_SP_ITEMitem_foto: TWideStringField
      FieldName = 'item_foto'
      Size = 200
    end
    object zqry_SP_ITEMitem_obs: TWideMemoField
      FieldName = 'item_obs'
      BlobType = ftWideMemo
    end
    object zqry_SP_ITEMitem_preco: TFloatField
      FieldName = 'item_preco'
    end
    object zqry_SP_ITEMitem_codigo: TWideStringField
      FieldName = 'item_codigo'
      Required = True
      Size = 200
    end
    object zqry_SP_ITEMitem_ativo: TIntegerField
      FieldName = 'item_ativo'
    end
    object zqry_SP_ITEMitem_promo: TIntegerField
      FieldName = 'item_promo'
    end
    object zqry_SP_ITEMitem_estoque: TIntegerField
      FieldName = 'item_estoque'
    end
    object zqry_SP_ITEMitem_alles: TIntegerField
      FieldName = 'item_alles'
    end
  end
  object zdts_SP_ITEM: TDataSource
    Left = 1032
    Top = 344
  end
  object zqry_EQDEPOS: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqdepos')
    Params = <>
    Left = 376
    Top = 2072
    object zqry_EQDEPOSCODDEPOS: TIntegerField
      FieldName = 'CODDEPOS'
      Required = True
    end
    object zqry_EQDEPOSCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_EQDEPOSCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
    end
    object zqry_EQDEPOSDESCDEPOS: TWideStringField
      FieldName = 'DESCDEPOS'
      Required = True
      Size = 40
    end
    object zqry_EQDEPOSCODVEND: TIntegerField
      FieldName = 'CODVEND'
      Required = True
    end
    object zqry_EQDEPOSDTINS: TDateField
      FieldName = 'DTINS'
    end
    object zqry_EQDEPOSHINS: TTimeField
      FieldName = 'HINS'
    end
    object zqry_EQDEPOSIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Size = 8
    end
    object zqry_EQDEPOSDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQDEPOSHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQDEPOSIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQDEPOS: TDataSource
    DataSet = zqry_EQDEPOS
    Left = 472
    Top = 2072
  end
  object zqry_EQALMOX: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqalmox')
    Params = <>
    Left = 376
    Top = 2120
    object zqry_EQALMOXCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQALMOXCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQALMOXCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_EQALMOXDESCALMOX: TWideStringField
      FieldName = 'DESCALMOX'
      Required = True
      Size = 40
    end
    object zqry_EQALMOXDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQALMOXHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQALMOXIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQALMOXDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQALMOXHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQALMOXIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQALMOX: TDataSource
    DataSet = zqry_EQALMOX
    Left = 472
    Top = 2120
  end
  object zqry_EQSALDODEPOS: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqsaldodepos')
    Params = <>
    Left = 376
    Top = 2168
    object zqry_EQSALDODEPOSCODTRANDEPOS: TIntegerField
      FieldName = 'CODTRANDEPOS'
      Required = True
    end
    object zqry_EQSALDODEPOSCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQSALDODEPOSCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQSALDODEPOSCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQSALDODEPOSCODDEPOS: TIntegerField
      FieldName = 'CODDEPOS'
      Required = True
    end
    object zqry_EQSALDODEPOSCODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_EQSALDODEPOSSLDPROD: TExtendedField
      FieldName = 'SLDPROD'
      Precision = 19
    end
    object zqry_EQSALDODEPOSSLDLOTE: TExtendedField
      FieldName = 'SLDLOTE'
      Precision = 19
    end
    object zqry_EQSALDODEPOSSLDRESLOTE: TExtendedField
      FieldName = 'SLDRESLOTE'
      Precision = 19
    end
    object zqry_EQSALDODEPOSSLDLIQLOTE: TExtendedField
      FieldName = 'SLDLIQLOTE'
      Precision = 19
    end
    object zqry_EQSALDODEPOSDTVENCLOTE: TDateField
      FieldName = 'DTVENCLOTE'
    end
    object zqry_EQSALDODEPOSDTINS: TDateField
      FieldName = 'DTINS'
    end
    object zqry_EQSALDODEPOSHINS: TTimeField
      FieldName = 'HINS'
    end
    object zqry_EQSALDODEPOSIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Size = 8
    end
    object zqry_EQSALDODEPOSDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQSALDODEPOSHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQSALDODEPOSISUSUALT: TWideStringField
      FieldName = 'ISUSUALT'
      Size = 8
    end
  end
  object zdts_EQSALDODEPOS: TDataSource
    DataSet = zqry_EQSALDODEPOS
    Left = 472
    Top = 2168
  end
  object zqry_EQSALDOPROD: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqsaldoprod')
    Params = <>
    Left = 376
    Top = 2216
    object zqry_EQSALDOPRODCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQSALDOPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQSALDOPRODCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQSALDOPRODCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_EQSALDOPRODCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_EQSALDOPRODCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_EQSALDOPRODSLDPROD: TExtendedField
      FieldName = 'SLDPROD'
      Required = True
      Precision = 19
    end
    object zqry_EQSALDOPRODSLDRESPROD: TExtendedField
      FieldName = 'SLDRESPROD'
      Required = True
      Precision = 19
    end
    object zqry_EQSALDOPRODSLDCONSIGPROD: TExtendedField
      FieldName = 'SLDCONSIGPROD'
      Required = True
      Precision = 19
    end
    object zqry_EQSALDOPRODSLDLIQPROD: TExtendedField
      FieldName = 'SLDLIQPROD'
      Required = True
      Precision = 19
    end
    object zqry_EQSALDOPRODDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQSALDOPRODHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQSALDOPRODIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQSALDOPRODDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQSALDOPRODHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQSALDOPRODIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQSALDOPROD: TDataSource
    DataSet = zqry_EQSALDOPROD
    Left = 472
    Top = 2216
  end
  object zqry_EQMOVPROD: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from eqmovprod')
    Params = <>
    Left = 376
    Top = 2264
    object zqry_EQMOVPRODCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQMOVPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQMOVPRODCODMOVPROD: TIntegerField
      FieldName = 'CODMOVPROD'
      Required = True
    end
    object zqry_EQMOVPRODCODEMPPD: TIntegerField
      FieldName = 'CODEMPPD'
      Required = True
    end
    object zqry_EQMOVPRODCODFILIALPD: TSmallintField
      FieldName = 'CODFILIALPD'
      Required = True
    end
    object zqry_EQMOVPRODCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_EQMOVPRODCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_EQMOVPRODCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_EQMOVPRODTIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Size = 1
    end
    object zqry_EQMOVPRODCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_EQMOVPRODCODITVENDA: TIntegerField
      FieldName = 'CODITVENDA'
    end
    object zqry_EQMOVPRODCODEMPLE: TIntegerField
      FieldName = 'CODEMPLE'
    end
    object zqry_EQMOVPRODCODFILIALLE: TSmallintField
      FieldName = 'CODFILIALLE'
    end
    object zqry_EQMOVPRODCODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_EQMOVPRODCODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
      Required = True
    end
    object zqry_EQMOVPRODCODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
      Required = True
    end
    object zqry_EQMOVPRODCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
      Required = True
    end
    object zqry_EQMOVPRODCODEMPCP: TIntegerField
      FieldName = 'CODEMPCP'
    end
    object zqry_EQMOVPRODCODFILIALCP: TSmallintField
      FieldName = 'CODFILIALCP'
    end
    object zqry_EQMOVPRODCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_EQMOVPRODCODITCOMPRA: TIntegerField
      FieldName = 'CODITCOMPRA'
    end
    object zqry_EQMOVPRODCODEMPIV: TIntegerField
      FieldName = 'CODEMPIV'
    end
    object zqry_EQMOVPRODCODFILIALIV: TSmallintField
      FieldName = 'CODFILIALIV'
    end
    object zqry_EQMOVPRODCODINVPROD: TIntegerField
      FieldName = 'CODINVPROD'
    end
    object zqry_EQMOVPRODDTMOVPROD: TDateField
      FieldName = 'DTMOVPROD'
      Required = True
    end
    object zqry_EQMOVPRODTIPOMOVPROD: TWideStringField
      FieldName = 'TIPOMOVPROD'
      Required = True
      Size = 1
    end
    object zqry_EQMOVPRODESTOQMOVPROD: TWideStringField
      FieldName = 'ESTOQMOVPROD'
      Required = True
      Size = 1
    end
    object zqry_EQMOVPRODCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_EQMOVPRODCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_EQMOVPRODCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_EQMOVPRODQTDMOVPROD: TExtendedField
      FieldName = 'QTDMOVPROD'
      Required = True
      Precision = 19
    end
    object zqry_EQMOVPRODPRECOMOVPROD: TExtendedField
      FieldName = 'PRECOMOVPROD'
      Precision = 19
    end
    object zqry_EQMOVPRODCUSTOMPMMOVPROD: TExtendedField
      FieldName = 'CUSTOMPMMOVPROD'
      Precision = 19
    end
    object zqry_EQMOVPRODCUSTOMPMMOVPRODAX: TExtendedField
      FieldName = 'CUSTOMPMMOVPRODAX'
      Precision = 19
    end
    object zqry_EQMOVPRODSLDMOVPROD: TExtendedField
      FieldName = 'SLDMOVPROD'
      Precision = 19
    end
    object zqry_EQMOVPRODSLDMOVPRODAX: TExtendedField
      FieldName = 'SLDMOVPRODAX'
      Precision = 19
    end
    object zqry_EQMOVPRODFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_EQMOVPRODCODEMPNT: TIntegerField
      FieldName = 'CODEMPNT'
    end
    object zqry_EQMOVPRODCODFILIALNT: TSmallintField
      FieldName = 'CODFILIALNT'
    end
    object zqry_EQMOVPRODCODNAT: TWideStringField
      FieldName = 'CODNAT'
      Size = 4
    end
    object zqry_EQMOVPRODDOCMOVPROD: TIntegerField
      FieldName = 'DOCMOVPROD'
    end
    object zqry_EQMOVPRODCODEMPRM: TIntegerField
      FieldName = 'CODEMPRM'
    end
    object zqry_EQMOVPRODCODFILIALRM: TSmallintField
      FieldName = 'CODFILIALRM'
    end
    object zqry_EQMOVPRODCODRMA: TIntegerField
      FieldName = 'CODRMA'
    end
    object zqry_EQMOVPRODCODITRMA: TSmallintField
      FieldName = 'CODITRMA'
    end
    object zqry_EQMOVPRODEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Size = 1
    end
    object zqry_EQMOVPRODCODEMPOP: TIntegerField
      FieldName = 'CODEMPOP'
    end
    object zqry_EQMOVPRODCODFILIALOP: TSmallintField
      FieldName = 'CODFILIALOP'
    end
    object zqry_EQMOVPRODCODOP: TIntegerField
      FieldName = 'CODOP'
    end
    object zqry_EQMOVPRODSEQOP: TSmallintField
      FieldName = 'SEQOP'
    end
    object zqry_EQMOVPRODSEQENTOP: TSmallintField
      FieldName = 'SEQENTOP'
    end
    object zqry_EQMOVPRODSEQSUBPROD: TSmallintField
      FieldName = 'SEQSUBPROD'
    end
    object zqry_EQMOVPRODDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQMOVPRODHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQMOVPRODIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQMOVPRODDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQMOVPRODHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQMOVPRODIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_EQMOVPROD: TDataSource
    DataSet = zqry_EQMOVPROD
    Left = 472
    Top = 2264
  end
  object zqry_FNRETBOLETO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnretboleto')
    Params = <>
    Left = 376
    Top = 2312
    object zqry_FNRETBOLETOCODRETORNO: TIntegerField
      FieldName = 'CODRETORNO'
      Required = True
    end
    object zqry_FNRETBOLETOCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_FNRETBOLETOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
    end
    object zqry_FNRETBOLETODTPROCESSA: TDateField
      FieldName = 'DTPROCESSA'
    end
    object zqry_FNRETBOLETOCONTA: TWideStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object zqry_FNRETBOLETOCODCEDENTE: TWideStringField
      FieldName = 'CODCEDENTE'
      Size = 10
    end
    object zqry_FNRETBOLETONUMDOCUMENTO: TWideStringField
      FieldName = 'NUMDOCUMENTO'
      Size = 10
    end
    object zqry_FNRETBOLETONOSSONUMERO: TWideStringField
      FieldName = 'NOSSONUMERO'
      Size = 10
    end
    object zqry_FNRETBOLETODTOCORRENCIA: TDateField
      FieldName = 'DTOCORRENCIA'
    end
    object zqry_FNRETBOLETOVLRRECEBIDO: TFloatField
      FieldName = 'VLRRECEBIDO'
    end
    object zqry_FNRETBOLETOVLRDOCUMENTO: TFloatField
      FieldName = 'VLRDOCUMENTO'
    end
    object zqry_FNRETBOLETOVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
    end
    object zqry_FNRETBOLETOVLRDESP: TFloatField
      FieldName = 'VLRDESP'
    end
    object zqry_FNRETBOLETOCODRETBANCO: TWideStringField
      FieldName = 'CODRETBANCO'
      Size = 2
    end
    object zqry_FNRETBOLETODESCRETBANCO: TWideStringField
      FieldName = 'DESCRETBANCO'
      Size = 100
    end
    object zqry_FNRETBOLETODTCREDITO: TDateField
      FieldName = 'DTCREDITO'
    end
    object zqry_FNRETBOLETOCODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object zqry_FNRETBOLETOCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
  end
  object zdts_FNRETBOLETO: TDataSource
    DataSet = zqry_FNRETBOLETO
    Left = 472
    Top = 2312
  end
  object zqry_FNBANCO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnbanco')
    Params = <>
    Left = 376
    Top = 2360
    object zqry_FNBANCOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNBANCOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNBANCOCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object zqry_FNBANCONOMEBANCO: TWideStringField
      FieldName = 'NOMEBANCO'
      Required = True
      Size = 40
    end
    object zqry_FNBANCODVBANCO: TWideStringField
      FieldName = 'DVBANCO'
      Required = True
      Size = 1
    end
    object zqry_FNBANCOSITEBANCO: TWideStringField
      FieldName = 'SITEBANCO'
      Size = 80
    end
    object zqry_FNBANCOCODEMPMB: TIntegerField
      FieldName = 'CODEMPMB'
    end
    object zqry_FNBANCOCODFILIALMB: TIntegerField
      FieldName = 'CODFILIALMB'
    end
    object zqry_FNBANCOCODMODBOL: TIntegerField
      FieldName = 'CODMODBOL'
    end
    object zqry_FNBANCOIMGBOLBANCO: TBlobField
      FieldName = 'IMGBOLBANCO'
    end
    object zqry_FNBANCOIMGBOLBANCO2: TBlobField
      FieldName = 'IMGBOLBANCO2'
    end
    object zqry_FNBANCOLAYOUTCHEQBANCO: TWideStringField
      FieldName = 'LAYOUTCHEQBANCO'
      Size = 1000
    end
    object zqry_FNBANCODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNBANCOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNBANCOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNBANCODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNBANCOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNBANCOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNBANCOCODEMPBP: TIntegerField
      FieldName = 'CODEMPBP'
    end
    object zqry_FNBANCOCODFILIALBP: TSmallintField
      FieldName = 'CODFILIALBP'
    end
    object zqry_FNBANCOCODBANCOBP: TWideStringField
      FieldName = 'CODBANCOBP'
      Size = 3
    end
    object zqry_FNBANCOAPPREMESSA: TWideStringField
      FieldName = 'APPREMESSA'
      Size = 500
    end
    object zqry_FNBANCOAPPRETORNO: TWideStringField
      FieldName = 'APPRETORNO'
      Size = 500
    end
  end
  object zdts_FNBANCO: TDataSource
    DataSet = zqry_FNBANCO
    Left = 472
    Top = 2360
  end
  object zqry_FNCONTA: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnconta')
    Params = <>
    Left = 376
    Top = 2408
    object zqry_FNCONTACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNCONTACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNCONTANUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Required = True
      Size = 10
    end
    object zqry_FNCONTADESCCONTA: TWideStringField
      FieldName = 'DESCCONTA'
      Required = True
      Size = 50
    end
    object zqry_FNCONTACODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_FNCONTACODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_FNCONTACODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_FNCONTACODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_FNCONTACODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_FNCONTACODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_FNCONTACODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
      Required = True
    end
    object zqry_FNCONTACODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
      Required = True
    end
    object zqry_FNCONTACODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Required = True
      Size = 13
    end
    object zqry_FNCONTATIPOCONTA: TWideStringField
      FieldName = 'TIPOCONTA'
      Required = True
      Size = 1
    end
    object zqry_FNCONTADATACONTA: TDateField
      FieldName = 'DATACONTA'
      Required = True
    end
    object zqry_FNCONTACODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_FNCONTACODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_FNCONTACODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_FNCONTACODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_FNCONTACODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_FNCONTAAGENCIACONTA: TWideStringField
      FieldName = 'AGENCIACONTA'
      Size = 6
    end
    object zqry_FNCONTACONVCOBCONTA: TWideStringField
      FieldName = 'CONVCOBCONTA'
    end
    object zqry_FNCONTAATIVACONTA: TWideStringField
      FieldName = 'ATIVACONTA'
      Required = True
      Size = 1
    end
    object zqry_FNCONTATUSUCONTA: TWideStringField
      FieldName = 'TUSUCONTA'
      Required = True
      Size = 1
    end
    object zqry_FNCONTATIPOCAIXA: TWideStringField
      FieldName = 'TIPOCAIXA'
      Required = True
      Size = 1
    end
    object zqry_FNCONTAPOSTOCONTA: TWideStringField
      FieldName = 'POSTOCONTA'
      Size = 2
    end
    object zqry_FNCONTADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNCONTAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNCONTAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNCONTADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNCONTAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNCONTAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNCONTAAGENCIACONTABOL: TWideStringField
      FieldName = 'AGENCIACONTABOL'
      Size = 6
    end
    object zqry_FNCONTANUMCONTABOL: TWideStringField
      FieldName = 'NUMCONTABOL'
      Size = 10
    end
    object zqry_FNCONTADVAGENCIA: TWideStringField
      FieldName = 'DVAGENCIA'
      Size = 5
    end
    object zqry_FNCONTADVCONTA: TWideStringField
      FieldName = 'DVCONTA'
      Size = 5
    end
    object zqry_FNCONTADVNUMCONTABOL: TWideStringField
      FieldName = 'DVNUMCONTABOL'
      Size = 5
    end
  end
  object zdts_FNCONTA: TDataSource
    DataSet = zqry_FNCONTA
    Left = 472
    Top = 2408
  end
  object zqry_FNITMODBOLETO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnitmodboleto')
    Params = <>
    Left = 376
    Top = 2456
    object zqry_FNITMODBOLETOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNITMODBOLETOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNITMODBOLETOCODMODBOL: TIntegerField
      FieldName = 'CODMODBOL'
      Required = True
    end
    object zqry_FNITMODBOLETOCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
      Required = True
    end
    object zqry_FNITMODBOLETOCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
      Required = True
    end
    object zqry_FNITMODBOLETOCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object zqry_FNITMODBOLETOCODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
      Required = True
    end
    object zqry_FNITMODBOLETOCODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
      Required = True
    end
    object zqry_FNITMODBOLETOCODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Required = True
      Size = 3
    end
    object zqry_FNITMODBOLETOCONVCOB: TWideStringField
      FieldName = 'CONVCOB'
      Required = True
    end
    object zqry_FNITMODBOLETODVCONVCOB: TWideStringField
      FieldName = 'DVCONVCOB'
      Size = 4
    end
    object zqry_FNITMODBOLETOCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_FNITMODBOLETOCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_FNITMODBOLETONUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNITMODBOLETOSEQNOSSONUMERO: TIntegerField
      FieldName = 'SEQNOSSONUMERO'
    end
    object zqry_FNITMODBOLETODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNITMODBOLETOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNITMODBOLETOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNITMODBOLETODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNITMODBOLETOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNITMODBOLETOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_FNITMODBOLETO: TDataSource
    DataSet = zqry_FNITMODBOLETO
    Left = 472
    Top = 2456
  end
  object zqry_FNMODBOLETO: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fnmodboleto')
    Params = <>
    Left = 616
    Top = 2456
    object zqry_FNMODBOLETOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNMODBOLETOCODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNMODBOLETOCODMODBOL: TIntegerField
      FieldName = 'CODMODBOL'
      Required = True
    end
    object zqry_FNMODBOLETODESCMODBOL: TWideStringField
      FieldName = 'DESCMODBOL'
      Required = True
      Size = 30
    end
    object zqry_FNMODBOLETOTXAMODBOL: TWideStringField
      FieldName = 'TXAMODBOL'
      Required = True
      Size = 10000
    end
    object zqry_FNMODBOLETOPREIMPMODBOL: TWideStringField
      FieldName = 'PREIMPMODBOL'
      Required = True
      Size = 1
    end
    object zqry_FNMODBOLETOCARTCOB: TWideStringField
      FieldName = 'CARTCOB'
      Required = True
      Size = 2
    end
    object zqry_FNMODBOLETOMDECOB: TWideStringField
      FieldName = 'MDECOB'
      Required = True
      Size = 8
    end
    object zqry_FNMODBOLETOACEITEMODBOL: TWideStringField
      FieldName = 'ACEITEMODBOL'
      Required = True
      Size = 1
    end
    object zqry_FNMODBOLETOCLASSMODBOL: TWideStringField
      FieldName = 'CLASSMODBOL'
      Size = 80
    end
    object zqry_FNMODBOLETOESPDOCMODBOL: TWideStringField
      FieldName = 'ESPDOCMODBOL'
      Size = 3
    end
    object zqry_FNMODBOLETODESCLPMODBOL: TWideStringField
      FieldName = 'DESCLPMODBOL'
      Size = 80
    end
    object zqry_FNMODBOLETOINSTPAGMODBOL: TWideStringField
      FieldName = 'INSTPAGMODBOL'
      Size = 500
    end
    object zqry_FNMODBOLETOCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNMODBOLETOCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNMODBOLETONUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNMODBOLETOIMPINFOPARC: TWideStringField
      FieldName = 'IMPINFOPARC'
      Required = True
      Size = 1
    end
    object zqry_FNMODBOLETODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNMODBOLETOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNMODBOLETOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNMODBOLETODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNMODBOLETOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNMODBOLETOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_FNMODBOLETO: TDataSource
    DataSet = zqry_FNMODBOLETO
    Left = 720
    Top = 2456
  end
  object zqry_ULTTITULO: TZQuery
    Connection = Conecta
    Params = <>
    Left = 376
    Top = 2504
  end
  object zdts_ULTTITULO: TDataSource
    DataSet = zqry_ULTTITULO
    Left = 472
    Top = 2504
  end
  object zqry_FNCARTCOB: TZQuery
    Connection = Conecta
    SQL.Strings = (
      'select * from fncartcob')
    Params = <>
    Left = 376
    Top = 2552
    object zqry_FNCARTCOBCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
      Required = True
    end
    object zqry_FNCARTCOBCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
      Required = True
    end
    object zqry_FNCARTCOBCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Required = True
      Size = 3
    end
    object zqry_FNCARTCOBCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNCARTCOBCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNCARTCOBCODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Required = True
      Size = 3
    end
    object zqry_FNCARTCOBVARIACAOCARTCOB: TWideStringField
      FieldName = 'VARIACAOCARTCOB'
      Size = 10
    end
    object zqry_FNCARTCOBDESCCARTCOB: TWideStringField
      FieldName = 'DESCCARTCOB'
      Required = True
      Size = 50
    end
    object zqry_FNCARTCOBCARTCOBCNAB: TWideStringField
      FieldName = 'CARTCOBCNAB'
      Required = True
      Size = 3
    end
    object zqry_FNCARTCOBCODCARTCOBCNAB: TWideStringField
      FieldName = 'CODCARTCOBCNAB'
      Size = 1
    end
    object zqry_FNCARTCOBCONVCOB: TWideStringField
      FieldName = 'CONVCOB'
    end
    object zqry_FNCARTCOBDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNCARTCOBHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNCARTCOBIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNCARTCOBDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNCARTCOBHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNCARTCOBIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_FNCARTCOB: TDataSource
    DataSet = zqry_FNCARTCOB
    Left = 472
    Top = 2552
  end
end