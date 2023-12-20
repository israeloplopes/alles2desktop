object dm_DADOS: Tdm_DADOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1064
  Width = 1795
  object zdts_VDVENDEDOR: TDataSource
    DataSet = zqry_VDVENDEDOR
    Left = 392
    Top = 104
  end
  object zdts_SGEMPRESA: TDataSource
    DataSet = zqry_SGEMPRESA
    Left = 128
    Top = 104
  end
  object zdts_FNPLANOPAG: TDataSource
    DataSet = zqry_FNPLANOPAG
    Left = 128
    Top = 152
  end
  object zts_SGLICENCA: TDataSource
    DataSet = zqry_SGLICENCA
    Left = 392
    Top = 344
  end
  object zdts_ITFASTSALE: TDataSource
    DataSet = zqry_ITFASTSALE
    Left = 128
    Top = 632
  end
  object zdts_FNTIPOCOB: TDataSource
    DataSet = zqry_FNTIPOCOB
    Left = 128
    Top = 200
  end
  object zdts_FNCONTA: TDataSource
    DataSet = zqry_FNCONTA
    Left = 128
    Top = 296
  end
  object zdts_FNITMODBOLETO: TDataSource
    DataSet = zqry_FNITMODBOLETO
    Left = 128
    Top = 392
  end
  object zdts_FNMODBOLETO: TDataSource
    DataSet = zqry_FNMODBOLETO
    Left = 128
    Top = 344
  end
  object zdts_CPFORNEC: TDataSource
    DataSet = zqry_CPFORNEC
    Left = 648
    Top = 104
  end
  object zdts_ESPELHO: TDataSource
    DataSet = zqry_ESPELHO
    Left = 392
    Top = 392
  end
  object dts_EQMOVPROD: TDataSource
    DataSet = zqry_EQMOVPROD
    Left = 648
    Top = 488
  end
  object zdts_MARKUP: TDataSource
    DataSet = zqry_MARKUP
    Left = 392
    Top = 440
  end
  object dts_EQRECMERC: TDataSource
    DataSet = zqry_EQRECMERC
    Left = 392
    Top = 296
  end
  object zdts_ATATENDENTE: TDataSource
    DataSet = zqry_ATATENDENTE
    Left = 392
    Top = 56
  end
  object zdts_FNPAGAR: TDataSource
    DataSet = zqry_FNPAGAR
    Left = 128
    Top = 488
  end
  object zdts_FNITPAGAR: TDataSource
    DataSet = zqry_FNITPAGAR
    Left = 128
    Top = 536
  end
  object zdts_ESPMOVPROD: TDataSource
    DataSet = zqry_ESPMOVPROD
    Left = 648
    Top = 536
  end
  object zdts_LFNATOPER: TDataSource
    DataSet = zqry_LFNATOPER
    Left = 392
    Top = 488
  end
  object zdts_LFNCM: TDataSource
    DataSet = zqry_LFNCM
    Left = 392
    Top = 536
  end
  object zdts_GERACUSTO: TDataSource
    DataSet = zqry_GERACUSTO
    Left = 648
    Top = 152
  end
  object zdts_VDTIPOCLI: TDataSource
    DataSet = zqry_VDTIPOCLI
    Left = 648
    Top = 200
  end
  object zdts_LISTAPRODUTOS: TDataSource
    DataSet = zqry_LISTAPRODUTOS
    Left = 648
    Top = 584
  end
  object zdts_EQSALDOPROD: TDataSource
    DataSet = zqry_EQSALDOPROD
    Left = 392
    Top = 200
  end
  object zdts_EQALMOX: TDataSource
    DataSet = zqry_EQALMOX
    Left = 392
    Top = 248
  end
  object zdts_VDCOMISSAO: TDataSource
    DataSet = zqry_VDCOMISSAO
    Left = 392
    Top = 152
  end
  object zdts_FNPLANEJAMENTO: TDataSource
    DataSet = zqry_FNPLANEJAMENTO
    Left = 648
    Top = 248
  end
  object zdts_FNCC: TDataSource
    DataSet = zqry_FNCC
    Left = 648
    Top = 296
  end
  object zdts_FNPAGTOCOMI: TDataSource
    DataSet = zqry_FNPAGTOCOMI
    Left = 648
    Top = 344
  end
  object zdts_FNSUBLANCA: TDataSource
    DataSet = zqry_FNSUBLANCA
    Left = 648
    Top = 392
  end
  object zdts_FNBANCO: TDataSource
    DataSet = zqry_FNBANCO
    Left = 128
    Top = 440
  end
  object zdts_FASTSALE: TDataSource
    DataSet = zqry_FASTSALE
    Left = 128
    Top = 584
  end
  object zdts_ULTTITULO: TDataSource
    DataSet = zqry_ULTTITULO
    Left = 648
    Top = 440
  end
  object zCONECTA: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    TransactIsolationLevel = tiReadCommitted
    HostName = 'localhost'
    Port = 3050
    Database = ''
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebird-2.5'
    Left = 584
    Top = 8
  end
  object zqry_VDCLIENTE: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_VDCLIENTE
    OnNewRecord = zqry_VDCLIENTENewRecord
    SQL.Strings = (
      'select * from vdcliente where codemp=:codemp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
    DataSource = zdts_SGFILIAL
    Left = 888
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
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
    object zqry_VDCLIENTEPERCDESCCLI: TFloatField
      FieldName = 'PERCDESCCLI'
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
    object zqry_VDCLIENTE_CODUF: TStringField
      FieldKind = fkLookup
      FieldName = '_CODUF'
      LookupDataSet = zqry_SGUF
      LookupKeyFields = 'SIGLAUF'
      LookupResultField = 'CODUF'
      KeyFields = 'SIGLAUF'
      Size = 2
      Lookup = True
    end
    object zqry_VDCLIENTE_NOMEMUNIC: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEMUNIC'
      LookupDataSet = zqry_SGMUNICIPIO
      LookupKeyFields = 'CODMUNIC'
      LookupResultField = 'NOMEMUNIC'
      KeyFields = 'CODMUNIC'
      Size = 50
      Lookup = True
    end
    object zqry_VDCLIENTESALDOCREDITO: TSingleField
      FieldName = 'SALDOCREDITO'
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
    object zqry_VDCLIENTESLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
  end
  object zdts_VDCLIENTE: TDataSource
    DataSet = zqry_VDCLIENTE
    Left = 952
    Top = 56
  end
  object zqry_VDITVENDA: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_VDITVENDA
    SQL.Strings = (
      'SELECT * FROM VDITVENDA  where codvenda=:codvenda')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codvenda'
        ParamType = ptUnknown
      end>
    DataSource = zdts_VDVENDA
    Left = 888
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codvenda'
        ParamType = ptUnknown
      end>
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
    object zqry_VDITVENDAQTDITVENDA: TFloatField
      FieldName = 'QTDITVENDA'
      Required = True
    end
    object zqry_VDITVENDAQTDITVENDACANC: TFloatField
      FieldName = 'QTDITVENDACANC'
    end
    object zqry_VDITVENDAPRECOITVENDA: TFloatField
      FieldName = 'PRECOITVENDA'
      Required = True
      currency = True
    end
    object zqry_VDITVENDAPERCDESCITVENDA: TFloatField
      FieldName = 'PERCDESCITVENDA'
    end
    object zqry_VDITVENDAVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
      currency = True
    end
    object zqry_VDITVENDAPERCICMSITVENDA: TFloatField
      FieldName = 'PERCICMSITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSITVENDA: TFloatField
      FieldName = 'VLRBASEICMSITVENDA'
    end
    object zqry_VDITVENDAVLRICMSITVENDA: TFloatField
      FieldName = 'VLRICMSITVENDA'
    end
    object zqry_VDITVENDAPERCIPIITVENDA: TFloatField
      FieldName = 'PERCIPIITVENDA'
    end
    object zqry_VDITVENDAVLRBASEIPIITVENDA: TFloatField
      FieldName = 'VLRBASEIPIITVENDA'
    end
    object zqry_VDITVENDAVLRIPIITVENDA: TFloatField
      FieldName = 'VLRIPIITVENDA'
    end
    object zqry_VDITVENDAVLRLIQITVENDA: TFloatField
      FieldName = 'VLRLIQITVENDA'
    end
    object zqry_VDITVENDAPERCCOMISITVENDA: TFloatField
      FieldName = 'PERCCOMISITVENDA'
    end
    object zqry_VDITVENDAVLRCOMISITVENDA: TFloatField
      FieldName = 'VLRCOMISITVENDA'
    end
    object zqry_VDITVENDAVLRADICITVENDA: TFloatField
      FieldName = 'VLRADICITVENDA'
    end
    object zqry_VDITVENDAPERCISSITVENDA: TFloatField
      FieldName = 'PERCISSITVENDA'
    end
    object zqry_VDITVENDAVLRISSITVENDA: TFloatField
      FieldName = 'VLRISSITVENDA'
    end
    object zqry_VDITVENDAVLRFRETEITVENDA: TFloatField
      FieldName = 'VLRFRETEITVENDA'
    end
    object zqry_VDITVENDAVLRPRODITVENDA: TFloatField
      FieldName = 'VLRPRODITVENDA'
      currency = True
    end
    object zqry_VDITVENDAVLRISENTASITVENDA: TFloatField
      FieldName = 'VLRISENTASITVENDA'
    end
    object zqry_VDITVENDAVLROUTRASITVENDA: TFloatField
      FieldName = 'VLROUTRASITVENDA'
    end
    object zqry_VDITVENDAREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_VDITVENDAVLRBASEISSITVENDA: TFloatField
      FieldName = 'VLRBASEISSITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSBRUTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSBRUTITVENDA'
    end
    object zqry_VDITVENDAVLRBASEICMSSTITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTITVENDA'
    end
    object zqry_VDITVENDAVLRICMSSTITVENDA: TFloatField
      FieldName = 'VLRICMSSTITVENDA'
    end
    object zqry_VDITVENDAVLRBASECOMISITVENDA: TFloatField
      FieldName = 'VLRBASECOMISITVENDA'
    end
    object zqry_VDITVENDAMARGEMVLAGRITVENDA: TFloatField
      FieldName = 'MARGEMVLAGRITVENDA'
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
    object zqry_VDITVENDAQTDDEVITVENDA: TFloatField
      FieldName = 'QTDDEVITVENDA'
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
    object zqry_VDITVENDAVLRBASEICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTRETITVENDA'
    end
    object zqry_VDITVENDAVLRICMSSTRETITVENDA: TFloatField
      FieldName = 'VLRICMSSTRETITVENDA'
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
    object zqry_VDITVENDA_EANPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_EANPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODBARPROD'
      KeyFields = 'CODPROD'
      Size = 13
      Lookup = True
    end
    object zqry_VDITVENDA_UNPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_UNPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODUNID'
      KeyFields = 'CODPROD'
      Size = 5
      Lookup = True
    end
    object zqry_VDITVENDA_CESTPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_CESTPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CEST'
      KeyFields = 'CODPROD'
      Size = 11
      Lookup = True
    end
    object zqry_VDITVENDA_DESCPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_DESCPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 50
      Lookup = True
    end
    object zqry_VDITVENDA_LOCALPROD: TStringField
      FieldKind = fkLookup
      FieldName = '_LOCALPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'LOCALPROD'
      KeyFields = 'CODPROD'
      Size = 15
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
    object zqry_VDITVENDA_SALDO: TFloatField
      FieldKind = fkLookup
      FieldName = '_SALDO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDITVENDA_SLDCONSIG: TFloatField
      FieldKind = fkLookup
      FieldName = '_SLDCONSIG'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDCONSIGPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
  end
  object zdts_VDITVENDA: TDataSource
    DataSet = zqry_VDITVENDA
    Left = 952
    Top = 152
  end
  object zqry_VDVENDA: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_VDVENDA
    SQL.Strings = (
      'SELECT * FROM VDVENDA')
    Params = <>
    Left = 888
    Top = 104
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
    object zqry_VDVENDAVLRPRODVENDA: TFloatField
      FieldName = 'VLRPRODVENDA'
      currency = True
    end
    object zqry_VDVENDAPERCDESCVENDA: TFloatField
      FieldName = 'PERCDESCVENDA'
    end
    object zqry_VDVENDAVLRDESCVENDA: TFloatField
      FieldName = 'VLRDESCVENDA'
    end
    object zqry_VDVENDAVLRDESCITVENDA: TFloatField
      FieldName = 'VLRDESCITVENDA'
      currency = True
    end
    object zqry_VDVENDAVLRVENDA: TFloatField
      FieldName = 'VLRVENDA'
      currency = True
    end
    object zqry_VDVENDAVLRBASEICMSVENDA: TFloatField
      FieldName = 'VLRBASEICMSVENDA'
    end
    object zqry_VDVENDAVLRICMSVENDA: TFloatField
      FieldName = 'VLRICMSVENDA'
    end
    object zqry_VDVENDACALCICMSVENDA: TWideStringField
      FieldName = 'CALCICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPICMSVENDA: TWideStringField
      FieldName = 'IMPICMSVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRISENTASVENDA: TFloatField
      FieldName = 'VLRISENTASVENDA'
    end
    object zqry_VDVENDAVLROUTRASVENDA: TFloatField
      FieldName = 'VLROUTRASVENDA'
    end
    object zqry_VDVENDAVLRBASEIPIVENDA: TFloatField
      FieldName = 'VLRBASEIPIVENDA'
    end
    object zqry_VDVENDAVLRLIQVENDA: TFloatField
      FieldName = 'VLRLIQVENDA'
      currency = True
    end
    object zqry_VDVENDAPERCCOMISVENDA: TFloatField
      FieldName = 'PERCCOMISVENDA'
    end
    object zqry_VDVENDAVLRCOMISVENDA: TFloatField
      FieldName = 'VLRCOMISVENDA'
    end
    object zqry_VDVENDASTATUSVENDA: TWideStringField
      FieldName = 'STATUSVENDA'
      Required = True
      Size = 2
    end
    object zqry_VDVENDAVLRFRETEVENDA: TFloatField
      FieldName = 'VLRFRETEVENDA'
    end
    object zqry_VDVENDAVLRADICVENDA: TFloatField
      FieldName = 'VLRADICVENDA'
    end
    object zqry_VDVENDAVLRIPIVENDA: TFloatField
      FieldName = 'VLRIPIVENDA'
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
    object zqry_VDVENDAVLRBASEISSVENDA: TFloatField
      FieldName = 'VLRBASEISSVENDA'
    end
    object zqry_VDVENDAVLRISSVENDA: TFloatField
      FieldName = 'VLRISSVENDA'
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
    object zqry_VDVENDAVLRPISVENDA: TFloatField
      FieldName = 'VLRPISVENDA'
    end
    object zqry_VDVENDACALCPISVENDA: TWideStringField
      FieldName = 'CALCPISVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPPISVENDA: TWideStringField
      FieldName = 'IMPPISVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRCOFINSVENDA: TFloatField
      FieldName = 'VLRCOFINSVENDA'
    end
    object zqry_VDVENDACALCCOFINSVENDA: TWideStringField
      FieldName = 'CALCCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPCOFINSVENDA: TWideStringField
      FieldName = 'IMPCOFINSVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRIRVENDA: TFloatField
      FieldName = 'VLRIRVENDA'
    end
    object zqry_VDVENDACALCIRVENDA: TWideStringField
      FieldName = 'CALCIRVENDA'
      Size = 1
    end
    object zqry_VDVENDAIMPIRVENDA: TWideStringField
      FieldName = 'IMPIRVENDA'
      Size = 1
    end
    object zqry_VDVENDAVLRCSOCIALVENDA: TFloatField
      FieldName = 'VLRCSOCIALVENDA'
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
    object zqry_VDVENDAVLRICMSSTVENDA: TFloatField
      FieldName = 'VLRICMSSTVENDA'
    end
    object zqry_VDVENDAVLRBASEICMSSTVENDA: TFloatField
      FieldName = 'VLRBASEICMSSTVENDA'
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
    object zqry_VDVENDAVLRICMSSIMPLES: TFloatField
      FieldName = 'VLRICMSSIMPLES'
    end
    object zqry_VDVENDAPERCICMSSIMPLES: TFloatField
      FieldName = 'PERCICMSSIMPLES'
    end
    object zqry_VDVENDAVLRBASEPISVENDA: TFloatField
      FieldName = 'VLRBASEPISVENDA'
    end
    object zqry_VDVENDAVLRBASECOFINSVENDA: TFloatField
      FieldName = 'VLRBASECOFINSVENDA'
    end
    object zqry_VDVENDAVLRBASECOMIS: TFloatField
      FieldName = 'VLRBASECOMIS'
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
    object zqry_VDVENDA_CNPJCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CNPJCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CNPJCLI'
      KeyFields = 'CODCLI'
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
    object zqry_VDVENDA_TELCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_TELCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'FONECLI'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_VDVENDA_CPFCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CPFCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CPFCLI'
      KeyFields = 'CODCLI'
      Size = 12
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
    object zqry_VDVENDA_IECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_IECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'INSCCLI'
      KeyFields = 'CODCLI'
      Size = 15
      Lookup = True
    end
    object zqry_VDVENDA_MAILCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_MAILCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'EMAILCLI'
      KeyFields = 'CODCLI'
      Size = 80
      Lookup = True
    end
    object zqry_VDVENDA_CODMUNICCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CODMUNICCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CODMUNIC'
      KeyFields = 'CODCLI'
      Size = 7
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
    object zqry_VDVENDA_RAZCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_VDVENDA_NOMECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NOMECLI'
      KeyFields = 'CODCLI'
      Size = 50
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
    object zqry_VDVENDA_ENDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_VDVENDA_NUMCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Size = 5
      Lookup = True
    end
    object zqry_VDVENDA_COMPLCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_COMPLCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'COMPLCLI'
      KeyFields = 'CODCLI'
      Size = 5
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
    object zqry_VDVENDA_DDDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_DDDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'DDDCLI'
      KeyFields = 'CODCLI'
      Size = 3
      Lookup = True
    end
    object zqry_VDVENDA_CIDADECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDADECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLI'
      Size = 30
      Lookup = True
    end
    object zqry_VDVENDAIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
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
    object zqry_VDVENDA_PLANOPAGTO: TStringField
      FieldKind = fkLookup
      FieldName = '_PLANOPAGTO'
      LookupDataSet = zqry_FNPLANOPAG
      LookupKeyFields = 'CODPLANOPAG'
      LookupResultField = 'DESCPLANOPAG'
      KeyFields = 'CODPLANOPAG'
      Size = 50
      Lookup = True
    end
    object zqry_VDVENDA_TIPOCOB: TStringField
      FieldKind = fkLookup
      FieldName = '_TIPOCOB'
      LookupDataSet = zqry_FNTIPOCOB
      LookupKeyFields = 'CODTIPOCOB'
      LookupResultField = 'DESCTIPOCOB'
      KeyFields = 'CODTIPOCOB'
      Size = 50
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
  end
  object zqry_SGFILIAL: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from SGFILIAL where DESATIVADO is null')
    Params = <>
    Left = 888
    Top = 200
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
    object zqry_SGFILIAL_NOMECIDADE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECIDADE'
      LookupDataSet = zqry_SGMUNICIPIO
      LookupKeyFields = 'CODMUNIC'
      LookupResultField = 'NOMEMUNIC'
      KeyFields = 'CODMUNIC'
      Size = 50
      Lookup = True
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
    object zqry_SGFILIALTEF_TROCA: TWideStringField
      FieldName = 'TEF_TROCA'
      Size = 1
    end
    object zqry_SGFILIALCRCCONTADOR: TWideStringField
      FieldName = 'CRCCONTADOR'
      Size = 15
    end
  end
  object zdts_SGFILIAL: TDataSource
    DataSet = zqry_SGFILIAL
    Left = 952
    Top = 200
  end
  object zdts_VDVENDA: TDataSource
    DataSet = zqry_VDVENDA
    Left = 952
    Top = 104
  end
  object zqry_EQPRODUTO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqproduto where codemp=:codemp')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
    DataSource = zdts_SGFILIAL
    Left = 888
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
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
      Size = 15
    end
    object zqry_EQPRODUTOCOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_EQPRODUTOPESOLIQPROD: TFloatField
      FieldName = 'PESOLIQPROD'
    end
    object zqry_EQPRODUTOPESOBRUTPROD: TFloatField
      FieldName = 'PESOBRUTPROD'
    end
    object zqry_EQPRODUTOQTDMINPROD: TFloatField
      FieldName = 'QTDMINPROD'
    end
    object zqry_EQPRODUTOQTDMAXPROD: TFloatField
      FieldName = 'QTDMAXPROD'
    end
    object zqry_EQPRODUTODTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_EQPRODUTOCUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
    end
    object zqry_EQPRODUTOCUSTOPEPSPROD: TFloatField
      FieldName = 'CUSTOPEPSPROD'
    end
    object zqry_EQPRODUTOCUSTOINFOPROD: TFloatField
      FieldName = 'CUSTOINFOPROD'
    end
    object zqry_EQPRODUTOPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
      currency = True
    end
    object zqry_EQPRODUTOPRECOCOMISPROD: TFloatField
      FieldName = 'PRECOCOMISPROD'
    end
    object zqry_EQPRODUTOSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_EQPRODUTOSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
    end
    object zqry_EQPRODUTOSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
    end
    object zqry_EQPRODUTOSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
    end
    object zqry_EQPRODUTOATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_EQPRODUTODTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_EQPRODUTOQTDULTCPPROD: TFloatField
      FieldName = 'QTDULTCPPROD'
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
    object zqry_EQPRODUTOLOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
      Size = 15
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
    object zqry_EQPRODUTOVLRDENSIDADE: TFloatField
      FieldName = 'VLRDENSIDADE'
    end
    object zqry_EQPRODUTOVLRCONCENT: TFloatField
      FieldName = 'VLRCONCENT'
    end
    object zqry_EQPRODUTOCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object zqry_EQPRODUTOLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object zqry_EQPRODUTOESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object zqry_EQPRODUTOGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_EQPRODUTOQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Required = True
    end
    object zqry_EQPRODUTOCODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_EQPRODUTOCUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
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
    object zqry_EQPRODUTOQTDHORASSERV: TFloatField
      FieldName = 'QTDHORASSERV'
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
    object zqry_EQPRODUTOFATORFSC: TFloatField
      FieldName = 'FATORFSC'
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
    object zqry_EQPRODUTOMEDIAVENDA: TFloatField
      FieldName = 'MEDIAVENDA'
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
    object zqry_EQPRODUTOCODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_EQPRODUTOPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
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
    Left = 952
    Top = 248
  end
  object zqry_EQTIPOMOV: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM EQTIPOMOV')
    Params = <>
    Left = 888
    Top = 296
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
  end
  object zqry_LFMENSAGEM: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM LFMENSAGEM')
    Params = <>
    Left = 888
    Top = 344
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
  object zqry_SGMUNICIPIO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM SGMUNICIPIO')
    Params = <>
    Left = 888
    Top = 392
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
  object zqry_LFTABICMS: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM LFTABICMS')
    Params = <>
    Left = 888
    Top = 440
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
    object zqry_LFTABICMSALIQTI: TFloatField
      FieldName = 'ALIQTI'
      Required = True
    end
    object zqry_LFTABICMSALIQINTRATI: TFloatField
      FieldName = 'ALIQINTRATI'
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
  end
  object zqry_FNRECEBER: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNRECEBER
    SQL.Strings = (
      'SELECT * FROM FNRECEBER')
    Params = <>
    Left = 888
    Top = 488
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
      currency = True
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
      currency = True
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
    object zqry_FNRECEBER_RAZCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Size = 80
      Lookup = True
    end
    object zqry_FNRECEBER_CNPJCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CNPJCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CNPJCLI'
      KeyFields = 'CODCLI'
      Size = 18
      Lookup = True
    end
    object zqry_FNRECEBER_CPFCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CPFCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CPFCLI'
      KeyFields = 'CODCLI'
      Size = 14
      Lookup = True
    end
    object zqry_FNRECEBER_PESSOACLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_PESSOACLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'PESSOACLI'
      KeyFields = 'CODCLI'
      Size = 1
      Lookup = True
    end
    object zqry_FNRECEBER_ENDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Size = 80
      Lookup = True
    end
    object zqry_FNRECEBER_NUMCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Size = 5
      Lookup = True
    end
    object zqry_FNRECEBER_BAIRROCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Size = 30
      Lookup = True
    end
    object zqry_FNRECEBER_CIDCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDCLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLI'
      Size = 30
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
    object zqry_FNRECEBER_NOMECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NOMECLI'
      KeyFields = 'CODCLI'
      Size = 80
      Lookup = True
    end
    object zqry_FNRECEBER_PLANOPAG: TStringField
      FieldKind = fkLookup
      FieldName = '_PLANOPAG'
      LookupDataSet = zqry_FNPLANOPAG
      LookupKeyFields = 'CODPLANOPAG'
      LookupResultField = 'DESCPLANOPAG'
      KeyFields = 'CODPLANOPAG'
      Size = 50
      Lookup = True
    end
    object zqry_FNRECEBER_TIPOCOBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = '_TIPOCOBRANCA'
      LookupDataSet = zqry_FNTIPOCOB
      LookupKeyFields = 'CODTIPOCOB'
      LookupResultField = 'DESCTIPOCOB'
      KeyFields = 'CODTIPOCOB'
      Size = 50
      Lookup = True
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
    object zqry_FNRECEBERCODTERMINAL: TIntegerField
      FieldName = 'CODTERMINAL'
    end
  end
  object zqry_FNITRECEBER: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNITRECEBER
    SQL.Strings = (
      'SELECT * FROM FNITRECEBER')
    Params = <>
    Left = 888
    Top = 536
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
      currency = True
    end
    object zqry_FNITRECEBERVLRDESCITREC: TFloatField
      FieldName = 'VLRDESCITREC'
    end
    object zqry_FNITRECEBERVLRMULTAITREC: TFloatField
      FieldName = 'VLRMULTAITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRJUROSITREC: TFloatField
      FieldName = 'VLRJUROSITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRDEVITREC: TFloatField
      FieldName = 'VLRDEVITREC'
      Required = True
    end
    object zqry_FNITRECEBERVLRPARCITREC: TFloatField
      FieldName = 'VLRPARCITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRPAGOITREC: TFloatField
      FieldName = 'VLRPAGOITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRAPAGITREC: TFloatField
      FieldName = 'VLRAPAGITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRCOMIITREC: TFloatField
      FieldName = 'VLRCOMIITREC'
      currency = True
    end
    object zqry_FNITRECEBERVLRCANCITREC: TFloatField
      FieldName = 'VLRCANCITREC'
      currency = True
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
    object zqry_FNITRECEBER_CODCNAB: TStringField
      FieldKind = fkLookup
      FieldName = '_CODCNAB'
      LookupDataSet = zqry_FNCARTCOB
      LookupKeyFields = 'CODCARTCOB'
      LookupResultField = 'CODCARTCOBCNAB'
      KeyFields = 'CODCARTCOB'
      Size = 3
      Lookup = True
    end
    object zqry_FNITRECEBER_TIPOCOBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = '_TIPOCOBRANCA'
      LookupDataSet = zqry_FNTIPOCOB
      LookupKeyFields = 'CODTIPOCOB'
      LookupResultField = 'DESCTIPOCOB'
      KeyFields = 'CODTIPOCOB'
      Size = 50
      Lookup = True
    end
  end
  object zdts_EQTIPOMOV: TDataSource
    DataSet = zqry_EQTIPOMOV
    Left = 952
    Top = 296
  end
  object zdts_LFMENSAGEM: TDataSource
    DataSet = zqry_LFMENSAGEM
    Left = 952
    Top = 344
  end
  object zdts_SGMUNICIPIO: TDataSource
    DataSet = zqry_SGMUNICIPIO
    Left = 952
    Top = 392
  end
  object zdts_LFTABICMS: TDataSource
    DataSet = zqry_LFTABICMS
    Left = 952
    Top = 440
  end
  object zdts_FNRECEBER: TDataSource
    DataSet = zqry_FNRECEBER
    Left = 952
    Top = 488
  end
  object zdts_FNITRECEBER: TDataSource
    DataSet = zqry_FNITRECEBER
    Left = 952
    Top = 536
  end
  object zupt_VDVENDA: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM VDVENDA'
      'WHERE'
      '  VDVENDA.CODEMP = :OLD_CODEMP AND'
      '  VDVENDA.CODFILIAL = :OLD_CODFILIAL AND'
      '  VDVENDA.CODVENDA = :OLD_CODVENDA')
    InsertSQL.Strings = (
      'INSERT INTO VDVENDA'
      
        '  (CODEMP, CODFILIAL, TIPOVENDA, CODVENDA, SUBTIPOVENDA, CODEMPV' +
        'D, CODFILIALVD, '
      
        '   CODVEND, CODEMPCL, CODFILIALCL, CODCLI, CODEMPPG, CODFILIALPG' +
        ', CODPLANOPAG, '
      
        '   CODEMPSE, CODFILIALSE, SERIE, CODEMPTM, CODFILIALTM, CODTIPOM' +
        'OV, CODEMPCX, '
      
        '   CODFILIALCX, CODCAIXA, DOCVENDA, DTSAIDAVENDA, DTEMITVENDA, D' +
        'TCOMPVENDA, '
      
        '   CODEMPRM, CODFILIALRM, TICKET, VLRPRODVENDA, PERCDESCVENDA, V' +
        'LRDESCVENDA, '
      
        '   VLRDESCITVENDA, VLRVENDA, VLRBASEICMSVENDA, VLRICMSVENDA, CAL' +
        'CICMSVENDA, '
      
        '   IMPICMSVENDA, VLRISENTASVENDA, VLROUTRASVENDA, VLRBASEIPIVEND' +
        'A, VLRLIQVENDA, '
      
        '   PERCCOMISVENDA, VLRCOMISVENDA, STATUSVENDA, VLRFRETEVENDA, VL' +
        'RADICVENDA, '
      
        '   VLRIPIVENDA, CALCIPIVENDA, IMPIPIVENDA, OBSVENDA, CODEMPBO, C' +
        'ODFILIALBO, '
      
        '   CODBANCO, CODEMPTC, CODFILIALTC, CODTIPOCOB, VLRBASEISSVENDA,' +
        ' VLRISSVENDA, '
      
        '   CALCISSVENDA, IMPIISSVENDA, IMPNOTAVENDA, FLAG, CODCLASCOMIS,' +
        ' VLRPISVENDA, '
      
        '   CALCPISVENDA, IMPPISVENDA, VLRCOFINSVENDA, CALCCOFINSVENDA, I' +
        'MPCOFINSVENDA, '
      
        '   VLRIRVENDA, CALCIRVENDA, IMPIRVENDA, VLRCSOCIALVENDA, CALCCSO' +
        'CIALVENDA, '
      
        '   IMPCSOCIALVENDA, PERCMCOMISVENDA, CODEMPCM, CODFILIALCM, CODC' +
        'LCOMIS, '
      
        '   CODEMPCB, CODFILIALCB, CODCARTCOB, PEDCLIVENDA, VLRICMSSTVEND' +
        'A, VLRBASEICMSSTVENDA, '
      
        '   EMMANUT, BLOQVENDA, VLRICMSSIMPLES, PERCICMSSIMPLES, VLRBASEP' +
        'ISVENDA, '
      
        '   VLRBASECOFINSVENDA, VLRBASECOMIS, CHAVENFEVENDA, CODEMPCA, CO' +
        'DFILIALCA, '
      
        '   NUMCONTA, OBSREC, INFCOMPL, SITDOC, OBSNFE, DESCIPIVENDA, COD' +
        'EMPOP, '
      
        '   CODFILIALOP, SEQOP, CODOP, LOCALSERV, NROATUALIZADO, CNF, SIT' +
        'COMPLVENDA, '
      
        '   MOTIVOCANCVENDA, DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT' +
        ', VLRSIMPLES, '
      
        '   TIPOENVIO, CODMOT, CODVEIC, OBSENTREGA, NOMEMOT, PLACA, REQUE' +
        'RMONTAGEM, '
      
        '   PONTOREFERENCIA, CODATEND, CODEMPAT, CODFILIALAT, VDCOMERCIAL' +
        ', VDVENDEXTERNO, '
      
        '   VDCOMMERCE, ENTREGUE, IDFASTSALE, NOMECLI, PROTOCOLO, CAMINHO' +
        ')'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :TIPOVENDA, :CODVENDA, :SUBTIPOVENDA, :C' +
        'ODEMPVD, '
      
        '   :CODFILIALVD, :CODVEND, :CODEMPCL, :CODFILIALCL, :CODCLI, :CO' +
        'DEMPPG, '
      
        '   :CODFILIALPG, :CODPLANOPAG, :CODEMPSE, :CODFILIALSE, :SERIE, ' +
        ':CODEMPTM, '
      
        '   :CODFILIALTM, :CODTIPOMOV, :CODEMPCX, :CODFILIALCX, :CODCAIXA' +
        ', :DOCVENDA, '
      
        '   :DTSAIDAVENDA, :DTEMITVENDA, :DTCOMPVENDA, :CODEMPRM, :CODFIL' +
        'IALRM, '
      
        '   :TICKET, :VLRPRODVENDA, :PERCDESCVENDA, :VLRDESCVENDA, :VLRDE' +
        'SCITVENDA, '
      
        '   :VLRVENDA, :VLRBASEICMSVENDA, :VLRICMSVENDA, :CALCICMSVENDA, ' +
        ':IMPICMSVENDA, '
      
        '   :VLRISENTASVENDA, :VLROUTRASVENDA, :VLRBASEIPIVENDA, :VLRLIQV' +
        'ENDA, :PERCCOMISVENDA, '
      
        '   :VLRCOMISVENDA, :STATUSVENDA, :VLRFRETEVENDA, :VLRADICVENDA, ' +
        ':VLRIPIVENDA, '
      
        '   :CALCIPIVENDA, :IMPIPIVENDA, :OBSVENDA, :CODEMPBO, :CODFILIAL' +
        'BO, :CODBANCO, '
      
        '   :CODEMPTC, :CODFILIALTC, :CODTIPOCOB, :VLRBASEISSVENDA, :VLRI' +
        'SSVENDA, '
      
        '   :CALCISSVENDA, :IMPIISSVENDA, :IMPNOTAVENDA, :FLAG, :CODCLASC' +
        'OMIS, :VLRPISVENDA, '
      
        '   :CALCPISVENDA, :IMPPISVENDA, :VLRCOFINSVENDA, :CALCCOFINSVEND' +
        'A, :IMPCOFINSVENDA, '
      
        '   :VLRIRVENDA, :CALCIRVENDA, :IMPIRVENDA, :VLRCSOCIALVENDA, :CA' +
        'LCCSOCIALVENDA, '
      
        '   :IMPCSOCIALVENDA, :PERCMCOMISVENDA, :CODEMPCM, :CODFILIALCM, ' +
        ':CODCLCOMIS, '
      
        '   :CODEMPCB, :CODFILIALCB, :CODCARTCOB, :PEDCLIVENDA, :VLRICMSS' +
        'TVENDA, '
      
        '   :VLRBASEICMSSTVENDA, :EMMANUT, :BLOQVENDA, :VLRICMSSIMPLES, :' +
        'PERCICMSSIMPLES, '
      
        '   :VLRBASEPISVENDA, :VLRBASECOFINSVENDA, :VLRBASECOMIS, :CHAVEN' +
        'FEVENDA, '
      
        '   :CODEMPCA, :CODFILIALCA, :NUMCONTA, :OBSREC, :INFCOMPL, :SITD' +
        'OC, :OBSNFE, '
      
        '   :DESCIPIVENDA, :CODEMPOP, :CODFILIALOP, :SEQOP, :CODOP, :LOCA' +
        'LSERV, '
      
        '   :NROATUALIZADO, :CNF, :SITCOMPLVENDA, :MOTIVOCANCVENDA, :DTIN' +
        'S, :HINS, '
      
        '   :IDUSUINS, :DTALT, :HALT, :IDUSUALT, :VLRSIMPLES, :TIPOENVIO,' +
        ' :CODMOT, '
      
        '   :CODVEIC, :OBSENTREGA, :NOMEMOT, :PLACA, :REQUERMONTAGEM, :PO' +
        'NTOREFERENCIA, '
      
        '   :CODATEND, :CODEMPAT, :CODFILIALAT, :VDCOMERCIAL, :VDVENDEXTE' +
        'RNO, :VDCOMMERCE, '
      '   :ENTREGUE, :IDFASTSALE, :NOMECLI, :PROTOCOLO, :CAMINHO)')
    ModifySQL.Strings = (
      'UPDATE VDVENDA SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  TIPOVENDA = :TIPOVENDA,'
      '  CODVENDA = :CODVENDA,'
      '  SUBTIPOVENDA = :SUBTIPOVENDA,'
      '  CODEMPVD = :CODEMPVD,'
      '  CODFILIALVD = :CODFILIALVD,'
      '  CODVEND = :CODVEND,'
      '  CODEMPCL = :CODEMPCL,'
      '  CODFILIALCL = :CODFILIALCL,'
      '  CODCLI = :CODCLI,'
      '  CODEMPPG = :CODEMPPG,'
      '  CODFILIALPG = :CODFILIALPG,'
      '  CODPLANOPAG = :CODPLANOPAG,'
      '  CODEMPSE = :CODEMPSE,'
      '  CODFILIALSE = :CODFILIALSE,'
      '  SERIE = :SERIE,'
      '  CODEMPTM = :CODEMPTM,'
      '  CODFILIALTM = :CODFILIALTM,'
      '  CODTIPOMOV = :CODTIPOMOV,'
      '  CODEMPCX = :CODEMPCX,'
      '  CODFILIALCX = :CODFILIALCX,'
      '  CODCAIXA = :CODCAIXA,'
      '  DOCVENDA = :DOCVENDA,'
      '  DTSAIDAVENDA = :DTSAIDAVENDA,'
      '  DTEMITVENDA = :DTEMITVENDA,'
      '  DTCOMPVENDA = :DTCOMPVENDA,'
      '  CODEMPRM = :CODEMPRM,'
      '  CODFILIALRM = :CODFILIALRM,'
      '  TICKET = :TICKET,'
      '  VLRPRODVENDA = :VLRPRODVENDA,'
      '  PERCDESCVENDA = :PERCDESCVENDA,'
      '  VLRDESCVENDA = :VLRDESCVENDA,'
      '  VLRDESCITVENDA = :VLRDESCITVENDA,'
      '  VLRVENDA = :VLRVENDA,'
      '  VLRBASEICMSVENDA = :VLRBASEICMSVENDA,'
      '  VLRICMSVENDA = :VLRICMSVENDA,'
      '  CALCICMSVENDA = :CALCICMSVENDA,'
      '  IMPICMSVENDA = :IMPICMSVENDA,'
      '  VLRISENTASVENDA = :VLRISENTASVENDA,'
      '  VLROUTRASVENDA = :VLROUTRASVENDA,'
      '  VLRBASEIPIVENDA = :VLRBASEIPIVENDA,'
      '  VLRLIQVENDA = :VLRLIQVENDA,'
      '  PERCCOMISVENDA = :PERCCOMISVENDA,'
      '  VLRCOMISVENDA = :VLRCOMISVENDA,'
      '  STATUSVENDA = :STATUSVENDA,'
      '  VLRFRETEVENDA = :VLRFRETEVENDA,'
      '  VLRADICVENDA = :VLRADICVENDA,'
      '  VLRIPIVENDA = :VLRIPIVENDA,'
      '  CALCIPIVENDA = :CALCIPIVENDA,'
      '  IMPIPIVENDA = :IMPIPIVENDA,'
      '  OBSVENDA = :OBSVENDA,'
      '  CODEMPBO = :CODEMPBO,'
      '  CODFILIALBO = :CODFILIALBO,'
      '  CODBANCO = :CODBANCO,'
      '  CODEMPTC = :CODEMPTC,'
      '  CODFILIALTC = :CODFILIALTC,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  VLRBASEISSVENDA = :VLRBASEISSVENDA,'
      '  VLRISSVENDA = :VLRISSVENDA,'
      '  CALCISSVENDA = :CALCISSVENDA,'
      '  IMPIISSVENDA = :IMPIISSVENDA,'
      '  IMPNOTAVENDA = :IMPNOTAVENDA,'
      '  FLAG = :FLAG,'
      '  CODCLASCOMIS = :CODCLASCOMIS,'
      '  VLRPISVENDA = :VLRPISVENDA,'
      '  CALCPISVENDA = :CALCPISVENDA,'
      '  IMPPISVENDA = :IMPPISVENDA,'
      '  VLRCOFINSVENDA = :VLRCOFINSVENDA,'
      '  CALCCOFINSVENDA = :CALCCOFINSVENDA,'
      '  IMPCOFINSVENDA = :IMPCOFINSVENDA,'
      '  VLRIRVENDA = :VLRIRVENDA,'
      '  CALCIRVENDA = :CALCIRVENDA,'
      '  IMPIRVENDA = :IMPIRVENDA,'
      '  VLRCSOCIALVENDA = :VLRCSOCIALVENDA,'
      '  CALCCSOCIALVENDA = :CALCCSOCIALVENDA,'
      '  IMPCSOCIALVENDA = :IMPCSOCIALVENDA,'
      '  PERCMCOMISVENDA = :PERCMCOMISVENDA,'
      '  CODEMPCM = :CODEMPCM,'
      '  CODFILIALCM = :CODFILIALCM,'
      '  CODCLCOMIS = :CODCLCOMIS,'
      '  CODEMPCB = :CODEMPCB,'
      '  CODFILIALCB = :CODFILIALCB,'
      '  CODCARTCOB = :CODCARTCOB,'
      '  PEDCLIVENDA = :PEDCLIVENDA,'
      '  VLRICMSSTVENDA = :VLRICMSSTVENDA,'
      '  VLRBASEICMSSTVENDA = :VLRBASEICMSSTVENDA,'
      '  EMMANUT = :EMMANUT,'
      '  BLOQVENDA = :BLOQVENDA,'
      '  VLRICMSSIMPLES = :VLRICMSSIMPLES,'
      '  PERCICMSSIMPLES = :PERCICMSSIMPLES,'
      '  VLRBASEPISVENDA = :VLRBASEPISVENDA,'
      '  VLRBASECOFINSVENDA = :VLRBASECOFINSVENDA,'
      '  VLRBASECOMIS = :VLRBASECOMIS,'
      '  CHAVENFEVENDA = :CHAVENFEVENDA,'
      '  CODEMPCA = :CODEMPCA,'
      '  CODFILIALCA = :CODFILIALCA,'
      '  NUMCONTA = :NUMCONTA,'
      '  OBSREC = :OBSREC,'
      '  INFCOMPL = :INFCOMPL,'
      '  SITDOC = :SITDOC,'
      '  OBSNFE = :OBSNFE,'
      '  DESCIPIVENDA = :DESCIPIVENDA,'
      '  CODEMPOP = :CODEMPOP,'
      '  CODFILIALOP = :CODFILIALOP,'
      '  SEQOP = :SEQOP,'
      '  CODOP = :CODOP,'
      '  LOCALSERV = :LOCALSERV,'
      '  NROATUALIZADO = :NROATUALIZADO,'
      '  CNF = :CNF,'
      '  SITCOMPLVENDA = :SITCOMPLVENDA,'
      '  MOTIVOCANCVENDA = :MOTIVOCANCVENDA,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  VLRSIMPLES = :VLRSIMPLES,'
      '  TIPOENVIO = :TIPOENVIO,'
      '  CODMOT = :CODMOT,'
      '  CODVEIC = :CODVEIC,'
      '  OBSENTREGA = :OBSENTREGA,'
      '  NOMEMOT = :NOMEMOT,'
      '  PLACA = :PLACA,'
      '  REQUERMONTAGEM = :REQUERMONTAGEM,'
      '  PONTOREFERENCIA = :PONTOREFERENCIA,'
      '  CODATEND = :CODATEND,'
      '  CODEMPAT = :CODEMPAT,'
      '  CODFILIALAT = :CODFILIALAT,'
      '  VDCOMERCIAL = :VDCOMERCIAL,'
      '  VDVENDEXTERNO = :VDVENDEXTERNO,'
      '  VDCOMMERCE = :VDCOMMERCE,'
      '  ENTREGUE = :ENTREGUE,'
      '  IDFASTSALE = :IDFASTSALE,'
      '  NOMECLI = :NOMECLI,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  CAMINHO = :CAMINHO'
      'WHERE'
      '  VDVENDA.CODEMP = :OLD_CODEMP AND'
      '  VDVENDA.CODFILIAL = :OLD_CODFILIAL AND'
      '  VDVENDA.CODVENDA = :OLD_CODVENDA')
    UseSequenceFieldForRefreshSQL = False
    Left = 1016
    Top = 104
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
        Name = 'TIPOVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBTIPOVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPSE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALSE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTSAIDAVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTEMITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTCOMPVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPRM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALRM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TICKET'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPRODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCDESCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCICMSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPICMSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRISENTASVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLROUTRASVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEIPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRLIQVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCCOMISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCOMISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRFRETEVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRADICVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRIPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCIPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPIPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEISSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRISSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCISSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPIISSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPNOTAVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FLAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLASCOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCPISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPPISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCOFINSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCCOFINSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPCOFINSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRIRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCIRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPIRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCSOCIALVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCCSOCIALVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPCSOCIALVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCMCOMISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLCOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCARTCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PEDCLIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSSTVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSSTVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMMANUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSSIMPLES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCICMSSIMPLES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEPISVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASECOFINSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASECOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVENFEVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INFCOMPL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITDOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCIPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCALSERV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NROATUALIZADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITCOMPLVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOTIVOCANCVENDA'
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
        Name = 'VLRSIMPLES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOENVIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMOT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSENTREGA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMEMOT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PLACA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REQUERMONTAGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PONTOREFERENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODATEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VDCOMERCIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VDVENDEXTERNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VDCOMMERCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTREGUE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFASTSALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROTOCOLO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CAMINHO'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODVENDA'
        ParamType = ptUnknown
      end>
  end
  object zqry_SGUF: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from sguf')
    Params = <>
    Left = 888
    Top = 584
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
    Left = 952
    Top = 584
  end
  object zqry_SGCONEXAO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      
        'SELECT CODEMP, CODFILIAL, CURRENT_CONNECTION, USER FROM SGCONEXA' +
        'O')
    Params = <>
    Left = 888
    Top = 632
    object zqry_SGCONEXAOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGCONEXAOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGCONEXAOCURRENT_CONNECTION: TIntegerField
      FieldName = 'CURRENT_CONNECTION'
      ReadOnly = True
    end
    object zqry_SGCONEXAOUSER: TWideStringField
      FieldName = 'USER'
      ReadOnly = True
      Size = 62
    end
  end
  object zdts_SGCONEXAO: TDataSource
    DataSet = zqry_SGCONEXAO
    Left = 952
    Top = 632
  end
  object zdts_VDFRETEVD: TDataSource
    DataSet = zqry_VDFRETEVD
    Left = 952
    Top = 680
  end
  object zqry_VDFRETEVD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from vdfretevd where codvenda=:codvenda')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codvenda'
        ParamType = ptUnknown
      end>
    Left = 888
    Top = 680
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codvenda'
        ParamType = ptUnknown
      end>
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
    object zqry_VDFRETEVDVLRFRETEVD: TFloatField
      FieldName = 'VLRFRETEVD'
      Required = True
    end
    object zqry_VDFRETEVDQTDFRETEVD: TFloatField
      FieldName = 'QTDFRETEVD'
      Required = True
    end
    object zqry_VDFRETEVDPESOBRUTVD: TFloatField
      FieldName = 'PESOBRUTVD'
      Required = True
    end
    object zqry_VDFRETEVDPESOLIQVD: TFloatField
      FieldName = 'PESOLIQVD'
      Required = True
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
    object zqry_VDFRETEVDVLRBASEICMSFRETEVD: TFloatField
      FieldName = 'VLRBASEICMSFRETEVD'
    end
    object zqry_VDFRETEVDALIQICMSFRETEVD: TFloatField
      FieldName = 'ALIQICMSFRETEVD'
    end
    object zqry_VDFRETEVDVLRICMSFRETEVD: TFloatField
      FieldName = 'VLRICMSFRETEVD'
    end
    object zqry_VDFRETEVDVLRSEGFRETEVD: TFloatField
      FieldName = 'VLRSEGFRETEVD'
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
    object zqry_VDFRETEVD_TRANSPORTADORA: TStringField
      FieldKind = fkLookup
      FieldName = '_TRANSPORTADORA'
      LookupDataSet = zqry_VDTRANSP
      LookupKeyFields = 'CODTRAN'
      LookupResultField = 'RAZTRAN'
      KeyFields = 'CODTRAN'
      Size = 50
      Lookup = True
    end
  end
  object zqry_VDTRANSP: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM VDTRANSP')
    Params = <>
    Left = 888
    Top = 728
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
    Left = 952
    Top = 728
  end
  object zqry_LFCLFISCAL: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from LFCLFISCAL')
    Params = <>
    Left = 888
    Top = 776
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
    object zqry_LFCLFISCALALIQFISC: TFloatField
      FieldName = 'ALIQFISC'
    end
    object zqry_LFCLFISCALALIQLFISC: TFloatField
      FieldName = 'ALIQLFISC'
    end
    object zqry_LFCLFISCALREDFISC: TFloatField
      FieldName = 'REDFISC'
    end
    object zqry_LFCLFISCALALIQIPIFISC: TFloatField
      FieldName = 'ALIQIPIFISC'
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
    object zqry_LFCLFISCALMARGEMVLAGR: TFloatField
      FieldName = 'MARGEMVLAGR'
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
  object zqry_LFITCLFISCAL: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM LFITCLFISCAL')
    Params = <>
    Left = 584
    Top = 776
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
    object zqry_LFITCLFISCALCODEMPTT: TIntegerField
      FieldName = 'CODEMPTT'
      Required = True
    end
    object zqry_LFITCLFISCALCODFILIALTT: TIntegerField
      FieldName = 'CODFILIALTT'
      Required = True
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
    object zqry_LFITCLFISCALREDFISC: TFloatField
      FieldName = 'REDFISC'
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
    object zqry_LFITCLFISCALCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
    end
    object zqry_LFITCLFISCALCODFILIALFC: TIntegerField
      FieldName = 'CODFILIALFC'
    end
    object zqry_LFITCLFISCALCODFISCCLI: TIntegerField
      FieldName = 'CODFISCCLI'
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
    object zqry_LFITCLFISCALCODMENS: TIntegerField
      FieldName = 'CODMENS'
    end
    object zqry_LFITCLFISCALCODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
    end
    object zqry_LFITCLFISCALCODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
    end
    object zqry_LFITCLFISCALCODTIPOMOV: TIntegerField
      FieldName = 'CODTIPOMOV'
    end
    object zqry_LFITCLFISCALTIPOST: TWideStringField
      FieldName = 'TIPOST'
      Size = 2
    end
    object zqry_LFITCLFISCALMARGEMVLAGR: TFloatField
      FieldName = 'MARGEMVLAGR'
    end
    object zqry_LFITCLFISCALGERALFISC: TWideStringField
      FieldName = 'GERALFISC'
      Required = True
      Size = 1
    end
    object zqry_LFITCLFISCALCODEMPSP: TIntegerField
      FieldName = 'CODEMPSP'
    end
    object zqry_LFITCLFISCALCODFILIALSP: TSmallintField
      FieldName = 'CODFILIALSP'
    end
    object zqry_LFITCLFISCALCODSITTRIBPIS: TWideStringField
      FieldName = 'CODSITTRIBPIS'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBPIS: TWideStringField
      FieldName = 'IMPSITTRIBPIS'
      Size = 2
    end
    object zqry_LFITCLFISCALCODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_LFITCLFISCALCODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_LFITCLFISCALCODSITTRIBCOF: TWideStringField
      FieldName = 'CODSITTRIBCOF'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBCOF: TWideStringField
      FieldName = 'IMPSITTRIBCOF'
      Size = 2
    end
    object zqry_LFITCLFISCALCODEMPSI: TIntegerField
      FieldName = 'CODEMPSI'
    end
    object zqry_LFITCLFISCALCODFILIALSI: TSmallintField
      FieldName = 'CODFILIALSI'
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
    object zqry_LFITCLFISCALVLRIPIUNIDTRIB: TFloatField
      FieldName = 'VLRIPIUNIDTRIB'
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
    object zqry_LFITCLFISCALVLRPISUNIDTRIB: TFloatField
      FieldName = 'VLRPISUNIDTRIB'
    end
    object zqry_LFITCLFISCALVLRCOFUNIDTRIB: TFloatField
      FieldName = 'VLRCOFUNIDTRIB'
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
    object zqry_LFITCLFISCALCODEMPRA: TIntegerField
      FieldName = 'CODEMPRA'
    end
    object zqry_LFITCLFISCALCODFILIALRA: TSmallintField
      FieldName = 'CODFILIALRA'
    end
    object zqry_LFITCLFISCALCODREGRA: TWideStringField
      FieldName = 'CODREGRA'
      Size = 4
    end
    object zqry_LFITCLFISCALCODEMPIS: TIntegerField
      FieldName = 'CODEMPIS'
    end
    object zqry_LFITCLFISCALCODFILIALIS: TSmallintField
      FieldName = 'CODFILIALIS'
    end
    object zqry_LFITCLFISCALCODSITTRIBISS: TWideStringField
      FieldName = 'CODSITTRIBISS'
      Size = 2
    end
    object zqry_LFITCLFISCALIMPSITTRIBISS: TWideStringField
      FieldName = 'IMPSITTRIBISS'
      Size = 2
    end
    object zqry_LFITCLFISCALALIQISSFISC: TFloatField
      FieldName = 'ALIQISSFISC'
    end
    object zqry_LFITCLFISCALRETENSAOISS: TWideStringField
      FieldName = 'RETENSAOISS'
      Size = 1
    end
    object zqry_LFITCLFISCALINDAPURIPI: TWideStringField
      FieldName = 'INDAPURIPI'
      Size = 1
    end
    object zqry_LFITCLFISCALCODEMPCN: TIntegerField
      FieldName = 'CODEMPCN'
    end
    object zqry_LFITCLFISCALCODFILIALCN: TSmallintField
      FieldName = 'CODFILIALCN'
    end
    object zqry_LFITCLFISCALCSOSN: TWideStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object zqry_LFITCLFISCALALIQICMSIMP: TFloatField
      FieldName = 'ALIQICMSIMP'
    end
    object zqry_LFITCLFISCALPERCCREDPRESIMP: TFloatField
      FieldName = 'PERCCREDPRESIMP'
      Required = True
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
    object zqry_LFITCLFISCALCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_LFITCLFISCALCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_LFITCLFISCALCODCALC: TIntegerField
      FieldName = 'CODCALC'
    end
    object zqry_LFITCLFISCALALIQICMSSTCM: TFloatField
      FieldName = 'ALIQICMSSTCM'
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
  end
  object zdts_LFCLFISCAL: TDataSource
    DataSet = zqry_LFCLFISCAL
    Left = 952
    Top = 776
  end
  object zdts_LFITCLFISCAL: TDataSource
    DataSet = zqry_LFITCLFISCAL
    Left = 648
    Top = 776
  end
  object zqry_SGPREFERE1: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGPREFERE1
    SQL.Strings = (
      'SELECT * FROM SGPREFERE1')
    Params = <>
    Left = 64
    Top = 680
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
    Left = 128
    Top = 680
  end
  object zupt_SGPREFERE1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM SGPREFERE1'
      'WHERE'
      '  SGPREFERE1.CODEMP = :OLD_CODEMP AND'
      '  SGPREFERE1.CODFILIAL = :OLD_CODFILIAL')
    InsertSQL.Strings = (
      'INSERT INTO SGPREFERE1'
      
        '  (CODEMP, CODFILIAL, USAREFPROD, CODTIPOMOV, CODEMPTM, CODFILIA' +
        'LTM, USAPEDSEQ, '
      
        '   USAORCSEQ, FILTRO, USALIQREL, TIPOPRECOCUSTO, ANOCENTROCUSTO,' +
        ' OBSORCPAD, '
      
        '   CODTIPOMOV2, CODFILIALT2, CODEMPT2, CLASSORC, CLASSORCPD, TIT' +
        'ORCTXT01, '
      
        '   CODTIPOMOV3, CODFILIALT3, CODEMPT3, ORDNOTA, SETORVENDA, PREF' +
        'CRED, TIPOPREFCRED, '
      
        '   CODEMPMO, CODFILIALMO, CODMOEDA, CODTIPOMOV4, CODFILIALT4, CO' +
        'DEMPT4, '
      
        '   USACLASCOMIS, PERCPRECOCUSTO, CODGRUP, CODFILIALGP, CODEMPGP,' +
        ' CODMARCA, '
      
        '   CODFILIALMC, CODEMPMC, RGCLIOBRIG, TABFRETEVD, TABADICVD, TRA' +
        'VATMNFVD, '
      
        '   TIPOVALIDORC, CLIMESMOCNPJ, CODTBJ, CODEMPTJ, CODFILIALTJ, CN' +
        'PJOBRIGCLI, '
      
        '   JUROSPOSCALC, CODEMPFR, CODFILIALFR, CODFOR, CODEMPTN, CODFIL' +
        'IALTN, '
      
        '   CODTRAN, CODEMPTF, CODFILIALTF, CODTIPOFOR, CODEMPT5, CODFILI' +
        'ALT5, CODTIPOMOV5, '
      
        '   ESTLOTNEG, ESTNEG, NATVENDA, IPIVENDA, CUSTOSICMS, CODEMPPG, ' +
        'CODFILIALPG, '
      
        '   CODPLANOPAG, CODEMPTB, CODFILIALTB, CODTAB, CODEMPCE, CODFILI' +
        'ALCE, CODCLASCLI, '
      
        '   CASASDEC, CASASDECFIN, COMISPDUPL, CODEMPT6, CODFILIALT6, COD' +
        'TIPOMOV6, '
      
        '   BLOQVENDA, BLOQCOMPRA, VENDAMATPRIM, VENDAPATRIM, PEPSPROD, C' +
        'NPJFOROBRIG, '
      
        '   INSCESTFOROBRIG, BUSCAPRODSIMILAR, MULTIALMOX, CODEMPT8, CODF' +
        'ILIALT8, '
      
        '   CODTIPOMOV8, ESTNEGGRUP, USATABPE, TAMDESCPROD, DESCCOMPPED, ' +
        'OBSCLIVEND, '
      
        '   CONTESTOQ, DIASPEDT, RECALCPCVENDA, RECALCPCORC, USALAYOUTPED' +
        ', VERIFALTPARCVENDA, '
      
        '   BUSCACODPRODGEN, FILBUSCGENPROD, FILBUSCGENREF, FILBUSCGENCOD' +
        'BAR, FILBUSCGENCODFAB, '
      
        '   FILBUSCGENCODFOR, BUSCAVLRULTCOMPRA, ICMSVENDA, USAPRECOZERO,' +
        ' USAIMGASSORC, '
      
        '   IMGASSORC, CONSISTCPFCLI, CONSISTEIECLI, CONSISTEIEFOR, CONSI' +
        'STECPFFOR, '
      
        '   USANOMEVENDORC, SISCONTABIL, ATBANCOIMPBOL, TIPOCODBAR, ADICO' +
        'RCOBSPED, '
      
        '   CODEMPMENSORC, CODFILIALMENSORC, CODMENSORC, CUSTOCOMPRA, TAB' +
        'TRANSPCP, '
      
        '   TABTRANSPORC, TABSOLCP, ADICFRETEBASEICM, PRECOCPREL, DESCORC' +
        ', MULTICOMIS, '
      
        '   USUATIVCLI, CODEMPHISTREC, CODFILIALHISTREC, CODHISTREC, CODE' +
        'MPHISTPAG, '
      
        '   CODFILIALHISTPAG, CODHISTPAG, CODEMPTC, CODFILIALTC, CODTIPOC' +
        'LI, ESTITRECALTDTVENC, '
      
        '   LCREDGLOBAL, VDMANUTCOMOBRIG, CLASSPED, CLASSPED02, TIPOCLASS' +
        'PED, USAIBGECLI, '
      
        '   USAIBGEFOR, USAIBGETRANSP, SOMAVOLUMES, BUSCACEP, URLWSCEP, C' +
        'LASSCP, '
      
        '   LABELOBS01CP, LABELOBS02CP, LABELOBS03CP, LABELOBS04CP, CONSI' +
        'STEIEPF, '
      
        '   CREDICMSSIMPLES, CODEMPMS, CODFILIALMS, CODMENSICMSSIMPLES, G' +
        'ERACOMISVENDAORC, '
      
        '   GERACODUNIF, CODTIPOMOV9, CODFILIALT9, CODEMPT9, CODEMPJP, CO' +
        'DFILIALJP, '
      
        '   CODPLANJP, CODEMPJR, CODFILIALJR, CODPLANJR, CODEMPDR, CODFIL' +
        'IALDR, '
      
        '   CODPLANDR, CODEMPDC, CODFILIALDC, CODPLANDC, GERAPAGEMIS, LAN' +
        'CAFINCONTR, '
      
        '   LANCARMACONTR, CASASDECPRE, VISUALIZALUCR, CLASSNFE, DIRNFE, ' +
        'DIRNFELIN, '
      
        '   FORMATODANFE, AMBIENTENFE, PROCEMINFE, VERPROCNFE, KEYLICNFE,' +
        ' DTVENCTONFE, '
      
        '   INFADPRODNFE, CODEMPNF, CODFILIALNF, CODEMAILNF, EXIBEPARCOBS' +
        'DANFE, '
      
        '   VERSAONFE, REGIMETRIBNFE, INFCPDEVOLUCAO, INFVDREMESSA, GERAR' +
        'ECEMIS, '
      
        '   RETENSAOIMP, TIPOCUSTOLUC, TABIMPORTCP, HABVLRTOTITORC, USABU' +
        'SCAGENPRODCP, '
      
        '   ADICOBSORCPED, USAPRECOCOT, BLOQPRECOAPROV, CODEMPFT, CODFILI' +
        'ALFT, CODTIPOFORFT, '
      
        '   USAPRECOCOMIS, ESPECIALCOMIS, CODFILIALTS, CODTIPOMOVS, CODEM' +
        'PTS, CODEMPSV, '
      
        '   CODFILIALSV, CODPLANOPAGSV, ARREDPRECO, CODEMPPC, CODFILIALPC' +
        ', CODPLANPC, '
      
        '   TPNOSSONUMERO, IMPDOCBOL, FECHACAIXA, FECHACAIXAAUTO, NUMDIGI' +
        'DENTTIT, '
      
        '   KEYLICEFD, DTVENCTOEFD, REVALIDARLOTECOMPRA, ENCORCPROD, CODE' +
        'MPIM, CODFILIALIM, '
      
        '   CODTIPOMOVIM, COMISSAODESCONTO, CODEMPHC, CODFILIALHC, CODHIS' +
        'TCNAB, '
      
        '   ALINHATELALANCA, VENDACONSUM, CVPROD, VERIFPROD, RMAPROD, TIP' +
        'OPROD, '
      
        '   CODEMPIG, CODFILIALIG, CODIMG, OBSITVENDAPED, FATORCPARC, APR' +
        'OVORCFATPARC, '
      
        '   BLOQSEQICP, BLOQSEQIVD, UTILORDCPINT, KEYLICEPC, DTVENCTOEPC,' +
        ' IMPLOTENFE, '
      
        '   TOTCPSFRETE, IDENTCLIBCO, QTDDESC, LOCALSERV, VDPRODQQCLAS, C' +
        'ODEMPVD, '
      
        '   CODFILIALVD, CODVEND, PADRAONFE, CODEMPME, CODFILIALME, CODME' +
        'NSVENDA, '
      
        '   TIPOEMISSAONFE, CCNFECP, ADICICMSTOTNOTA, UTILIZATBCALCCA, HA' +
        'BCOMPRACOMPL, '
      
        '   CODEMPIC, CODFILIALIC, CODTIPOMOVIC, DESCNATCOMPL, HABLOGPAGA' +
        'R, HABLOGRECEBER, '
      
        '   CONSISTENDENTVD, USACLISEQ, BLOQDESCCOMPORC, BLOQPRECOORC, BL' +
        'OQDESCCOMPVD, '
      
        '   BLOQPRECOVD, DESABDESCFECHAVD, DESABDESCFECHAORC, PERMITBAIXA' +
        'PARCJDM, '
      
        '   BLOQCOMISSORC, BLOQCOMISSVD, CALCPRECOG, ENDERECOOBRIGCLI, EN' +
        'TREGAOBRIGCLI, '
      
        '   PERIODOCONSCH, BLOQPEDVD, AGENDAFPRINCIPAL, ATUALIZAAGENDA, T' +
        'EMPOATUAGENDA, '
      
        '   SOLDTSAIDA, NPERMITDTMAIOR, PERMITIMPORCANTAP, BLOQEDITORCAPO' +
        'SAP, BLOQVDPORATRASO, '
      
        '   NUMDIASBLOQVD, FATORSEGESTOQ, LEITRANSP, TIPOIMPDANFE, REPLIC' +
        'AORC, SQLREPLICAORC, '
      
        '   DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT, CLASSORCLAUDOSU' +
        'S, CLASSORCCTALUGUEL, '
      
        '   BLOQNFEVDAUTORIZ, OBRIGTIPOFISC, MATRICEMPFN, ESTOQALMOX, MAX' +
        'OBSCLI, '
      
        '   RATEIOESTBUSCAORC, CODTIPOMOVRS, ALMOXPDORC, CODEMPRS, CODFIL' +
        'IALRS, '
      
        '   VALORPONTO, CODBLOQ, ORDEMPED, IPICOMIS, IPIPED, CODBARPROD, ' +
        'ENDCLIPED, '
      
        '   SERVIDORSMTP, PORTASMTP, USUARIOSMTP, SENHASMTP, AUTENTICASMT' +
        'P, SSLSMTP, '
      
        '   LAYOUTPED, ENVIACOPIA, CODUNID, MOSTRAFATLUCR, CODEMPUD, CODF' +
        'ILIALUD, '
      
        '   EXIBIRPAINELCOMANDAS, TPCALCLUCRO, SEF2INDICADOR01, SEF2INDIC' +
        'ADOR02, '
      
        '   SEF2INDICADOR03, SEF2INDICADOR04, SEF2INDICADOR05, SEF2INDICA' +
        'DOR06, '
      
        '   SEF2INDICADOR07, SEF2INDICADOR08, SEF2INDICADOR09, SEF2INDICA' +
        'DOR10, '
      
        '   SEF2INDICADOR11, SEF2INDICADOR12, SEF2INDICADOR13, SEF2INDICA' +
        'DOR14, '
      
        '   SEF2INDICADOR15, SEF2INDICADOR16, SEF2INDICADOR17, CODEMPINTE' +
        'GRA, PDV_BUSCAEAN, '
      
        '   CODMENSNFE, SOMASTDUPNFE, RECOLHEICMSPF, ALIQRECOLHEICMPF, MA' +
        'JALIQRECOLHEICMPF, '
      '   CNPJCPF, PATHSERVER)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :USAREFPROD, :CODTIPOMOV, :CODEMPTM, :CO' +
        'DFILIALTM, '
      
        '   :USAPEDSEQ, :USAORCSEQ, :FILTRO, :USALIQREL, :TIPOPRECOCUSTO,' +
        ' :ANOCENTROCUSTO, '
      
        '   :OBSORCPAD, :CODTIPOMOV2, :CODFILIALT2, :CODEMPT2, :CLASSORC,' +
        ' :CLASSORCPD, '
      
        '   :TITORCTXT01, :CODTIPOMOV3, :CODFILIALT3, :CODEMPT3, :ORDNOTA' +
        ', :SETORVENDA, '
      
        '   :PREFCRED, :TIPOPREFCRED, :CODEMPMO, :CODFILIALMO, :CODMOEDA,' +
        ' :CODTIPOMOV4, '
      
        '   :CODFILIALT4, :CODEMPT4, :USACLASCOMIS, :PERCPRECOCUSTO, :COD' +
        'GRUP, :CODFILIALGP, '
      
        '   :CODEMPGP, :CODMARCA, :CODFILIALMC, :CODEMPMC, :RGCLIOBRIG, :' +
        'TABFRETEVD, '
      
        '   :TABADICVD, :TRAVATMNFVD, :TIPOVALIDORC, :CLIMESMOCNPJ, :CODT' +
        'BJ, :CODEMPTJ, '
      
        '   :CODFILIALTJ, :CNPJOBRIGCLI, :JUROSPOSCALC, :CODEMPFR, :CODFI' +
        'LIALFR, '
      
        '   :CODFOR, :CODEMPTN, :CODFILIALTN, :CODTRAN, :CODEMPTF, :CODFI' +
        'LIALTF, '
      
        '   :CODTIPOFOR, :CODEMPT5, :CODFILIALT5, :CODTIPOMOV5, :ESTLOTNE' +
        'G, :ESTNEG, '
      
        '   :NATVENDA, :IPIVENDA, :CUSTOSICMS, :CODEMPPG, :CODFILIALPG, :' +
        'CODPLANOPAG, '
      
        '   :CODEMPTB, :CODFILIALTB, :CODTAB, :CODEMPCE, :CODFILIALCE, :C' +
        'ODCLASCLI, '
      
        '   :CASASDEC, :CASASDECFIN, :COMISPDUPL, :CODEMPT6, :CODFILIALT6' +
        ', :CODTIPOMOV6, '
      
        '   :BLOQVENDA, :BLOQCOMPRA, :VENDAMATPRIM, :VENDAPATRIM, :PEPSPR' +
        'OD, :CNPJFOROBRIG, '
      
        '   :INSCESTFOROBRIG, :BUSCAPRODSIMILAR, :MULTIALMOX, :CODEMPT8, ' +
        ':CODFILIALT8, '
      
        '   :CODTIPOMOV8, :ESTNEGGRUP, :USATABPE, :TAMDESCPROD, :DESCCOMP' +
        'PED, :OBSCLIVEND, '
      
        '   :CONTESTOQ, :DIASPEDT, :RECALCPCVENDA, :RECALCPCORC, :USALAYO' +
        'UTPED, '
      
        '   :VERIFALTPARCVENDA, :BUSCACODPRODGEN, :FILBUSCGENPROD, :FILBU' +
        'SCGENREF, '
      
        '   :FILBUSCGENCODBAR, :FILBUSCGENCODFAB, :FILBUSCGENCODFOR, :BUS' +
        'CAVLRULTCOMPRA, '
      
        '   :ICMSVENDA, :USAPRECOZERO, :USAIMGASSORC, :IMGASSORC, :CONSIS' +
        'TCPFCLI, '
      
        '   :CONSISTEIECLI, :CONSISTEIEFOR, :CONSISTECPFFOR, :USANOMEVEND' +
        'ORC, :SISCONTABIL, '
      
        '   :ATBANCOIMPBOL, :TIPOCODBAR, :ADICORCOBSPED, :CODEMPMENSORC, ' +
        ':CODFILIALMENSORC, '
      
        '   :CODMENSORC, :CUSTOCOMPRA, :TABTRANSPCP, :TABTRANSPORC, :TABS' +
        'OLCP, :ADICFRETEBASEICM, '
      
        '   :PRECOCPREL, :DESCORC, :MULTICOMIS, :USUATIVCLI, :CODEMPHISTR' +
        'EC, :CODFILIALHISTREC, '
      
        '   :CODHISTREC, :CODEMPHISTPAG, :CODFILIALHISTPAG, :CODHISTPAG, ' +
        ':CODEMPTC, '
      
        '   :CODFILIALTC, :CODTIPOCLI, :ESTITRECALTDTVENC, :LCREDGLOBAL, ' +
        ':VDMANUTCOMOBRIG, '
      
        '   :CLASSPED, :CLASSPED02, :TIPOCLASSPED, :USAIBGECLI, :USAIBGEF' +
        'OR, :USAIBGETRANSP, '
      
        '   :SOMAVOLUMES, :BUSCACEP, :URLWSCEP, :CLASSCP, :LABELOBS01CP, ' +
        ':LABELOBS02CP, '
      
        '   :LABELOBS03CP, :LABELOBS04CP, :CONSISTEIEPF, :CREDICMSSIMPLES' +
        ', :CODEMPMS, '
      
        '   :CODFILIALMS, :CODMENSICMSSIMPLES, :GERACOMISVENDAORC, :GERAC' +
        'ODUNIF, '
      
        '   :CODTIPOMOV9, :CODFILIALT9, :CODEMPT9, :CODEMPJP, :CODFILIALJ' +
        'P, :CODPLANJP, '
      
        '   :CODEMPJR, :CODFILIALJR, :CODPLANJR, :CODEMPDR, :CODFILIALDR,' +
        ' :CODPLANDR, '
      
        '   :CODEMPDC, :CODFILIALDC, :CODPLANDC, :GERAPAGEMIS, :LANCAFINC' +
        'ONTR, :LANCARMACONTR, '
      
        '   :CASASDECPRE, :VISUALIZALUCR, :CLASSNFE, :DIRNFE, :DIRNFELIN,' +
        ' :FORMATODANFE, '
      
        '   :AMBIENTENFE, :PROCEMINFE, :VERPROCNFE, :KEYLICNFE, :DTVENCTO' +
        'NFE, :INFADPRODNFE, '
      
        '   :CODEMPNF, :CODFILIALNF, :CODEMAILNF, :EXIBEPARCOBSDANFE, :VE' +
        'RSAONFE, '
      
        '   :REGIMETRIBNFE, :INFCPDEVOLUCAO, :INFVDREMESSA, :GERARECEMIS,' +
        ' :RETENSAOIMP, '
      
        '   :TIPOCUSTOLUC, :TABIMPORTCP, :HABVLRTOTITORC, :USABUSCAGENPRO' +
        'DCP, :ADICOBSORCPED, '
      
        '   :USAPRECOCOT, :BLOQPRECOAPROV, :CODEMPFT, :CODFILIALFT, :CODT' +
        'IPOFORFT, '
      
        '   :USAPRECOCOMIS, :ESPECIALCOMIS, :CODFILIALTS, :CODTIPOMOVS, :' +
        'CODEMPTS, '
      
        '   :CODEMPSV, :CODFILIALSV, :CODPLANOPAGSV, :ARREDPRECO, :CODEMP' +
        'PC, :CODFILIALPC, '
      
        '   :CODPLANPC, :TPNOSSONUMERO, :IMPDOCBOL, :FECHACAIXA, :FECHACA' +
        'IXAAUTO, '
      
        '   :NUMDIGIDENTTIT, :KEYLICEFD, :DTVENCTOEFD, :REVALIDARLOTECOMP' +
        'RA, :ENCORCPROD, '
      
        '   :CODEMPIM, :CODFILIALIM, :CODTIPOMOVIM, :COMISSAODESCONTO, :C' +
        'ODEMPHC, '
      
        '   :CODFILIALHC, :CODHISTCNAB, :ALINHATELALANCA, :VENDACONSUM, :' +
        'CVPROD, '
      
        '   :VERIFPROD, :RMAPROD, :TIPOPROD, :CODEMPIG, :CODFILIALIG, :CO' +
        'DIMG, :OBSITVENDAPED, '
      
        '   :FATORCPARC, :APROVORCFATPARC, :BLOQSEQICP, :BLOQSEQIVD, :UTI' +
        'LORDCPINT, '
      
        '   :KEYLICEPC, :DTVENCTOEPC, :IMPLOTENFE, :TOTCPSFRETE, :IDENTCL' +
        'IBCO, :QTDDESC, '
      
        '   :LOCALSERV, :VDPRODQQCLAS, :CODEMPVD, :CODFILIALVD, :CODVEND,' +
        ' :PADRAONFE, '
      
        '   :CODEMPME, :CODFILIALME, :CODMENSVENDA, :TIPOEMISSAONFE, :CCN' +
        'FECP, :ADICICMSTOTNOTA, '
      
        '   :UTILIZATBCALCCA, :HABCOMPRACOMPL, :CODEMPIC, :CODFILIALIC, :' +
        'CODTIPOMOVIC, '
      
        '   :DESCNATCOMPL, :HABLOGPAGAR, :HABLOGRECEBER, :CONSISTENDENTVD' +
        ', :USACLISEQ, '
      
        '   :BLOQDESCCOMPORC, :BLOQPRECOORC, :BLOQDESCCOMPVD, :BLOQPRECOV' +
        'D, :DESABDESCFECHAVD, '
      
        '   :DESABDESCFECHAORC, :PERMITBAIXAPARCJDM, :BLOQCOMISSORC, :BLO' +
        'QCOMISSVD, '
      
        '   :CALCPRECOG, :ENDERECOOBRIGCLI, :ENTREGAOBRIGCLI, :PERIODOCON' +
        'SCH, :BLOQPEDVD, '
      
        '   :AGENDAFPRINCIPAL, :ATUALIZAAGENDA, :TEMPOATUAGENDA, :SOLDTSA' +
        'IDA, :NPERMITDTMAIOR, '
      
        '   :PERMITIMPORCANTAP, :BLOQEDITORCAPOSAP, :BLOQVDPORATRASO, :NU' +
        'MDIASBLOQVD, '
      
        '   :FATORSEGESTOQ, :LEITRANSP, :TIPOIMPDANFE, :REPLICAORC, :SQLR' +
        'EPLICAORC, '
      
        '   :DTINS, :HINS, :IDUSUINS, :DTALT, :HALT, :IDUSUALT, :CLASSORC' +
        'LAUDOSUS, '
      
        '   :CLASSORCCTALUGUEL, :BLOQNFEVDAUTORIZ, :OBRIGTIPOFISC, :MATRI' +
        'CEMPFN, '
      
        '   :ESTOQALMOX, :MAXOBSCLI, :RATEIOESTBUSCAORC, :CODTIPOMOVRS, :' +
        'ALMOXPDORC, '
      
        '   :CODEMPRS, :CODFILIALRS, :VALORPONTO, :CODBLOQ, :ORDEMPED, :I' +
        'PICOMIS, '
      
        '   :IPIPED, :CODBARPROD, :ENDCLIPED, :SERVIDORSMTP, :PORTASMTP, ' +
        ':USUARIOSMTP, '
      
        '   :SENHASMTP, :AUTENTICASMTP, :SSLSMTP, :LAYOUTPED, :ENVIACOPIA' +
        ', :CODUNID, '
      
        '   :MOSTRAFATLUCR, :CODEMPUD, :CODFILIALUD, :EXIBIRPAINELCOMANDA' +
        'S, :TPCALCLUCRO, '
      
        '   :SEF2INDICADOR01, :SEF2INDICADOR02, :SEF2INDICADOR03, :SEF2IN' +
        'DICADOR04, '
      
        '   :SEF2INDICADOR05, :SEF2INDICADOR06, :SEF2INDICADOR07, :SEF2IN' +
        'DICADOR08, '
      
        '   :SEF2INDICADOR09, :SEF2INDICADOR10, :SEF2INDICADOR11, :SEF2IN' +
        'DICADOR12, '
      
        '   :SEF2INDICADOR13, :SEF2INDICADOR14, :SEF2INDICADOR15, :SEF2IN' +
        'DICADOR16, '
      
        '   :SEF2INDICADOR17, :CODEMPINTEGRA, :PDV_BUSCAEAN, :CODMENSNFE,' +
        ' :SOMASTDUPNFE, '
      
        '   :RECOLHEICMSPF, :ALIQRECOLHEICMPF, :MAJALIQRECOLHEICMPF, :CNP' +
        'JCPF, :PATHSERVER)')
    ModifySQL.Strings = (
      'UPDATE SGPREFERE1 SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  USAREFPROD = :USAREFPROD,'
      '  CODTIPOMOV = :CODTIPOMOV,'
      '  CODEMPTM = :CODEMPTM,'
      '  CODFILIALTM = :CODFILIALTM,'
      '  USAPEDSEQ = :USAPEDSEQ,'
      '  USAORCSEQ = :USAORCSEQ,'
      '  FILTRO = :FILTRO,'
      '  USALIQREL = :USALIQREL,'
      '  TIPOPRECOCUSTO = :TIPOPRECOCUSTO,'
      '  ANOCENTROCUSTO = :ANOCENTROCUSTO,'
      '  OBSORCPAD = :OBSORCPAD,'
      '  CODTIPOMOV2 = :CODTIPOMOV2,'
      '  CODFILIALT2 = :CODFILIALT2,'
      '  CODEMPT2 = :CODEMPT2,'
      '  CLASSORC = :CLASSORC,'
      '  CLASSORCPD = :CLASSORCPD,'
      '  TITORCTXT01 = :TITORCTXT01,'
      '  CODTIPOMOV3 = :CODTIPOMOV3,'
      '  CODFILIALT3 = :CODFILIALT3,'
      '  CODEMPT3 = :CODEMPT3,'
      '  ORDNOTA = :ORDNOTA,'
      '  SETORVENDA = :SETORVENDA,'
      '  PREFCRED = :PREFCRED,'
      '  TIPOPREFCRED = :TIPOPREFCRED,'
      '  CODEMPMO = :CODEMPMO,'
      '  CODFILIALMO = :CODFILIALMO,'
      '  CODMOEDA = :CODMOEDA,'
      '  CODTIPOMOV4 = :CODTIPOMOV4,'
      '  CODFILIALT4 = :CODFILIALT4,'
      '  CODEMPT4 = :CODEMPT4,'
      '  USACLASCOMIS = :USACLASCOMIS,'
      '  PERCPRECOCUSTO = :PERCPRECOCUSTO,'
      '  CODGRUP = :CODGRUP,'
      '  CODFILIALGP = :CODFILIALGP,'
      '  CODEMPGP = :CODEMPGP,'
      '  CODMARCA = :CODMARCA,'
      '  CODFILIALMC = :CODFILIALMC,'
      '  CODEMPMC = :CODEMPMC,'
      '  RGCLIOBRIG = :RGCLIOBRIG,'
      '  TABFRETEVD = :TABFRETEVD,'
      '  TABADICVD = :TABADICVD,'
      '  TRAVATMNFVD = :TRAVATMNFVD,'
      '  TIPOVALIDORC = :TIPOVALIDORC,'
      '  CLIMESMOCNPJ = :CLIMESMOCNPJ,'
      '  CODTBJ = :CODTBJ,'
      '  CODEMPTJ = :CODEMPTJ,'
      '  CODFILIALTJ = :CODFILIALTJ,'
      '  CNPJOBRIGCLI = :CNPJOBRIGCLI,'
      '  JUROSPOSCALC = :JUROSPOSCALC,'
      '  CODEMPFR = :CODEMPFR,'
      '  CODFILIALFR = :CODFILIALFR,'
      '  CODFOR = :CODFOR,'
      '  CODEMPTN = :CODEMPTN,'
      '  CODFILIALTN = :CODFILIALTN,'
      '  CODTRAN = :CODTRAN,'
      '  CODEMPTF = :CODEMPTF,'
      '  CODFILIALTF = :CODFILIALTF,'
      '  CODTIPOFOR = :CODTIPOFOR,'
      '  CODEMPT5 = :CODEMPT5,'
      '  CODFILIALT5 = :CODFILIALT5,'
      '  CODTIPOMOV5 = :CODTIPOMOV5,'
      '  ESTLOTNEG = :ESTLOTNEG,'
      '  ESTNEG = :ESTNEG,'
      '  NATVENDA = :NATVENDA,'
      '  IPIVENDA = :IPIVENDA,'
      '  CUSTOSICMS = :CUSTOSICMS,'
      '  CODEMPPG = :CODEMPPG,'
      '  CODFILIALPG = :CODFILIALPG,'
      '  CODPLANOPAG = :CODPLANOPAG,'
      '  CODEMPTB = :CODEMPTB,'
      '  CODFILIALTB = :CODFILIALTB,'
      '  CODTAB = :CODTAB,'
      '  CODEMPCE = :CODEMPCE,'
      '  CODFILIALCE = :CODFILIALCE,'
      '  CODCLASCLI = :CODCLASCLI,'
      '  CASASDEC = :CASASDEC,'
      '  CASASDECFIN = :CASASDECFIN,'
      '  COMISPDUPL = :COMISPDUPL,'
      '  CODEMPT6 = :CODEMPT6,'
      '  CODFILIALT6 = :CODFILIALT6,'
      '  CODTIPOMOV6 = :CODTIPOMOV6,'
      '  BLOQVENDA = :BLOQVENDA,'
      '  BLOQCOMPRA = :BLOQCOMPRA,'
      '  VENDAMATPRIM = :VENDAMATPRIM,'
      '  VENDAPATRIM = :VENDAPATRIM,'
      '  PEPSPROD = :PEPSPROD,'
      '  CNPJFOROBRIG = :CNPJFOROBRIG,'
      '  INSCESTFOROBRIG = :INSCESTFOROBRIG,'
      '  BUSCAPRODSIMILAR = :BUSCAPRODSIMILAR,'
      '  MULTIALMOX = :MULTIALMOX,'
      '  CODEMPT8 = :CODEMPT8,'
      '  CODFILIALT8 = :CODFILIALT8,'
      '  CODTIPOMOV8 = :CODTIPOMOV8,'
      '  ESTNEGGRUP = :ESTNEGGRUP,'
      '  USATABPE = :USATABPE,'
      '  TAMDESCPROD = :TAMDESCPROD,'
      '  DESCCOMPPED = :DESCCOMPPED,'
      '  OBSCLIVEND = :OBSCLIVEND,'
      '  CONTESTOQ = :CONTESTOQ,'
      '  DIASPEDT = :DIASPEDT,'
      '  RECALCPCVENDA = :RECALCPCVENDA,'
      '  RECALCPCORC = :RECALCPCORC,'
      '  USALAYOUTPED = :USALAYOUTPED,'
      '  VERIFALTPARCVENDA = :VERIFALTPARCVENDA,'
      '  BUSCACODPRODGEN = :BUSCACODPRODGEN,'
      '  FILBUSCGENPROD = :FILBUSCGENPROD,'
      '  FILBUSCGENREF = :FILBUSCGENREF,'
      '  FILBUSCGENCODBAR = :FILBUSCGENCODBAR,'
      '  FILBUSCGENCODFAB = :FILBUSCGENCODFAB,'
      '  FILBUSCGENCODFOR = :FILBUSCGENCODFOR,'
      '  BUSCAVLRULTCOMPRA = :BUSCAVLRULTCOMPRA,'
      '  ICMSVENDA = :ICMSVENDA,'
      '  USAPRECOZERO = :USAPRECOZERO,'
      '  USAIMGASSORC = :USAIMGASSORC,'
      '  IMGASSORC = :IMGASSORC,'
      '  CONSISTCPFCLI = :CONSISTCPFCLI,'
      '  CONSISTEIECLI = :CONSISTEIECLI,'
      '  CONSISTEIEFOR = :CONSISTEIEFOR,'
      '  CONSISTECPFFOR = :CONSISTECPFFOR,'
      '  USANOMEVENDORC = :USANOMEVENDORC,'
      '  SISCONTABIL = :SISCONTABIL,'
      '  ATBANCOIMPBOL = :ATBANCOIMPBOL,'
      '  TIPOCODBAR = :TIPOCODBAR,'
      '  ADICORCOBSPED = :ADICORCOBSPED,'
      '  CODEMPMENSORC = :CODEMPMENSORC,'
      '  CODFILIALMENSORC = :CODFILIALMENSORC,'
      '  CODMENSORC = :CODMENSORC,'
      '  CUSTOCOMPRA = :CUSTOCOMPRA,'
      '  TABTRANSPCP = :TABTRANSPCP,'
      '  TABTRANSPORC = :TABTRANSPORC,'
      '  TABSOLCP = :TABSOLCP,'
      '  ADICFRETEBASEICM = :ADICFRETEBASEICM,'
      '  PRECOCPREL = :PRECOCPREL,'
      '  DESCORC = :DESCORC,'
      '  MULTICOMIS = :MULTICOMIS,'
      '  USUATIVCLI = :USUATIVCLI,'
      '  CODEMPHISTREC = :CODEMPHISTREC,'
      '  CODFILIALHISTREC = :CODFILIALHISTREC,'
      '  CODHISTREC = :CODHISTREC,'
      '  CODEMPHISTPAG = :CODEMPHISTPAG,'
      '  CODFILIALHISTPAG = :CODFILIALHISTPAG,'
      '  CODHISTPAG = :CODHISTPAG,'
      '  CODEMPTC = :CODEMPTC,'
      '  CODFILIALTC = :CODFILIALTC,'
      '  CODTIPOCLI = :CODTIPOCLI,'
      '  ESTITRECALTDTVENC = :ESTITRECALTDTVENC,'
      '  LCREDGLOBAL = :LCREDGLOBAL,'
      '  VDMANUTCOMOBRIG = :VDMANUTCOMOBRIG,'
      '  CLASSPED = :CLASSPED,'
      '  CLASSPED02 = :CLASSPED02,'
      '  TIPOCLASSPED = :TIPOCLASSPED,'
      '  USAIBGECLI = :USAIBGECLI,'
      '  USAIBGEFOR = :USAIBGEFOR,'
      '  USAIBGETRANSP = :USAIBGETRANSP,'
      '  SOMAVOLUMES = :SOMAVOLUMES,'
      '  BUSCACEP = :BUSCACEP,'
      '  URLWSCEP = :URLWSCEP,'
      '  CLASSCP = :CLASSCP,'
      '  LABELOBS01CP = :LABELOBS01CP,'
      '  LABELOBS02CP = :LABELOBS02CP,'
      '  LABELOBS03CP = :LABELOBS03CP,'
      '  LABELOBS04CP = :LABELOBS04CP,'
      '  CONSISTEIEPF = :CONSISTEIEPF,'
      '  CREDICMSSIMPLES = :CREDICMSSIMPLES,'
      '  CODEMPMS = :CODEMPMS,'
      '  CODFILIALMS = :CODFILIALMS,'
      '  CODMENSICMSSIMPLES = :CODMENSICMSSIMPLES,'
      '  GERACOMISVENDAORC = :GERACOMISVENDAORC,'
      '  GERACODUNIF = :GERACODUNIF,'
      '  CODTIPOMOV9 = :CODTIPOMOV9,'
      '  CODFILIALT9 = :CODFILIALT9,'
      '  CODEMPT9 = :CODEMPT9,'
      '  CODEMPJP = :CODEMPJP,'
      '  CODFILIALJP = :CODFILIALJP,'
      '  CODPLANJP = :CODPLANJP,'
      '  CODEMPJR = :CODEMPJR,'
      '  CODFILIALJR = :CODFILIALJR,'
      '  CODPLANJR = :CODPLANJR,'
      '  CODEMPDR = :CODEMPDR,'
      '  CODFILIALDR = :CODFILIALDR,'
      '  CODPLANDR = :CODPLANDR,'
      '  CODEMPDC = :CODEMPDC,'
      '  CODFILIALDC = :CODFILIALDC,'
      '  CODPLANDC = :CODPLANDC,'
      '  GERAPAGEMIS = :GERAPAGEMIS,'
      '  LANCAFINCONTR = :LANCAFINCONTR,'
      '  LANCARMACONTR = :LANCARMACONTR,'
      '  CASASDECPRE = :CASASDECPRE,'
      '  VISUALIZALUCR = :VISUALIZALUCR,'
      '  CLASSNFE = :CLASSNFE,'
      '  DIRNFE = :DIRNFE,'
      '  DIRNFELIN = :DIRNFELIN,'
      '  FORMATODANFE = :FORMATODANFE,'
      '  AMBIENTENFE = :AMBIENTENFE,'
      '  PROCEMINFE = :PROCEMINFE,'
      '  VERPROCNFE = :VERPROCNFE,'
      '  KEYLICNFE = :KEYLICNFE,'
      '  DTVENCTONFE = :DTVENCTONFE,'
      '  INFADPRODNFE = :INFADPRODNFE,'
      '  CODEMPNF = :CODEMPNF,'
      '  CODFILIALNF = :CODFILIALNF,'
      '  CODEMAILNF = :CODEMAILNF,'
      '  EXIBEPARCOBSDANFE = :EXIBEPARCOBSDANFE,'
      '  VERSAONFE = :VERSAONFE,'
      '  REGIMETRIBNFE = :REGIMETRIBNFE,'
      '  INFCPDEVOLUCAO = :INFCPDEVOLUCAO,'
      '  INFVDREMESSA = :INFVDREMESSA,'
      '  GERARECEMIS = :GERARECEMIS,'
      '  RETENSAOIMP = :RETENSAOIMP,'
      '  TIPOCUSTOLUC = :TIPOCUSTOLUC,'
      '  TABIMPORTCP = :TABIMPORTCP,'
      '  HABVLRTOTITORC = :HABVLRTOTITORC,'
      '  USABUSCAGENPRODCP = :USABUSCAGENPRODCP,'
      '  ADICOBSORCPED = :ADICOBSORCPED,'
      '  USAPRECOCOT = :USAPRECOCOT,'
      '  BLOQPRECOAPROV = :BLOQPRECOAPROV,'
      '  CODEMPFT = :CODEMPFT,'
      '  CODFILIALFT = :CODFILIALFT,'
      '  CODTIPOFORFT = :CODTIPOFORFT,'
      '  USAPRECOCOMIS = :USAPRECOCOMIS,'
      '  ESPECIALCOMIS = :ESPECIALCOMIS,'
      '  CODFILIALTS = :CODFILIALTS,'
      '  CODTIPOMOVS = :CODTIPOMOVS,'
      '  CODEMPTS = :CODEMPTS,'
      '  CODEMPSV = :CODEMPSV,'
      '  CODFILIALSV = :CODFILIALSV,'
      '  CODPLANOPAGSV = :CODPLANOPAGSV,'
      '  ARREDPRECO = :ARREDPRECO,'
      '  CODEMPPC = :CODEMPPC,'
      '  CODFILIALPC = :CODFILIALPC,'
      '  CODPLANPC = :CODPLANPC,'
      '  TPNOSSONUMERO = :TPNOSSONUMERO,'
      '  IMPDOCBOL = :IMPDOCBOL,'
      '  FECHACAIXA = :FECHACAIXA,'
      '  FECHACAIXAAUTO = :FECHACAIXAAUTO,'
      '  NUMDIGIDENTTIT = :NUMDIGIDENTTIT,'
      '  KEYLICEFD = :KEYLICEFD,'
      '  DTVENCTOEFD = :DTVENCTOEFD,'
      '  REVALIDARLOTECOMPRA = :REVALIDARLOTECOMPRA,'
      '  ENCORCPROD = :ENCORCPROD,'
      '  CODEMPIM = :CODEMPIM,'
      '  CODFILIALIM = :CODFILIALIM,'
      '  CODTIPOMOVIM = :CODTIPOMOVIM,'
      '  COMISSAODESCONTO = :COMISSAODESCONTO,'
      '  CODEMPHC = :CODEMPHC,'
      '  CODFILIALHC = :CODFILIALHC,'
      '  CODHISTCNAB = :CODHISTCNAB,'
      '  ALINHATELALANCA = :ALINHATELALANCA,'
      '  VENDACONSUM = :VENDACONSUM,'
      '  CVPROD = :CVPROD,'
      '  VERIFPROD = :VERIFPROD,'
      '  RMAPROD = :RMAPROD,'
      '  TIPOPROD = :TIPOPROD,'
      '  CODEMPIG = :CODEMPIG,'
      '  CODFILIALIG = :CODFILIALIG,'
      '  CODIMG = :CODIMG,'
      '  OBSITVENDAPED = :OBSITVENDAPED,'
      '  FATORCPARC = :FATORCPARC,'
      '  APROVORCFATPARC = :APROVORCFATPARC,'
      '  BLOQSEQICP = :BLOQSEQICP,'
      '  BLOQSEQIVD = :BLOQSEQIVD,'
      '  UTILORDCPINT = :UTILORDCPINT,'
      '  KEYLICEPC = :KEYLICEPC,'
      '  DTVENCTOEPC = :DTVENCTOEPC,'
      '  IMPLOTENFE = :IMPLOTENFE,'
      '  TOTCPSFRETE = :TOTCPSFRETE,'
      '  IDENTCLIBCO = :IDENTCLIBCO,'
      '  QTDDESC = :QTDDESC,'
      '  LOCALSERV = :LOCALSERV,'
      '  VDPRODQQCLAS = :VDPRODQQCLAS,'
      '  CODEMPVD = :CODEMPVD,'
      '  CODFILIALVD = :CODFILIALVD,'
      '  CODVEND = :CODVEND,'
      '  PADRAONFE = :PADRAONFE,'
      '  CODEMPME = :CODEMPME,'
      '  CODFILIALME = :CODFILIALME,'
      '  CODMENSVENDA = :CODMENSVENDA,'
      '  TIPOEMISSAONFE = :TIPOEMISSAONFE,'
      '  CCNFECP = :CCNFECP,'
      '  ADICICMSTOTNOTA = :ADICICMSTOTNOTA,'
      '  UTILIZATBCALCCA = :UTILIZATBCALCCA,'
      '  HABCOMPRACOMPL = :HABCOMPRACOMPL,'
      '  CODEMPIC = :CODEMPIC,'
      '  CODFILIALIC = :CODFILIALIC,'
      '  CODTIPOMOVIC = :CODTIPOMOVIC,'
      '  DESCNATCOMPL = :DESCNATCOMPL,'
      '  HABLOGPAGAR = :HABLOGPAGAR,'
      '  HABLOGRECEBER = :HABLOGRECEBER,'
      '  CONSISTENDENTVD = :CONSISTENDENTVD,'
      '  USACLISEQ = :USACLISEQ,'
      '  BLOQDESCCOMPORC = :BLOQDESCCOMPORC,'
      '  BLOQPRECOORC = :BLOQPRECOORC,'
      '  BLOQDESCCOMPVD = :BLOQDESCCOMPVD,'
      '  BLOQPRECOVD = :BLOQPRECOVD,'
      '  DESABDESCFECHAVD = :DESABDESCFECHAVD,'
      '  DESABDESCFECHAORC = :DESABDESCFECHAORC,'
      '  PERMITBAIXAPARCJDM = :PERMITBAIXAPARCJDM,'
      '  BLOQCOMISSORC = :BLOQCOMISSORC,'
      '  BLOQCOMISSVD = :BLOQCOMISSVD,'
      '  CALCPRECOG = :CALCPRECOG,'
      '  ENDERECOOBRIGCLI = :ENDERECOOBRIGCLI,'
      '  ENTREGAOBRIGCLI = :ENTREGAOBRIGCLI,'
      '  PERIODOCONSCH = :PERIODOCONSCH,'
      '  BLOQPEDVD = :BLOQPEDVD,'
      '  AGENDAFPRINCIPAL = :AGENDAFPRINCIPAL,'
      '  ATUALIZAAGENDA = :ATUALIZAAGENDA,'
      '  TEMPOATUAGENDA = :TEMPOATUAGENDA,'
      '  SOLDTSAIDA = :SOLDTSAIDA,'
      '  NPERMITDTMAIOR = :NPERMITDTMAIOR,'
      '  PERMITIMPORCANTAP = :PERMITIMPORCANTAP,'
      '  BLOQEDITORCAPOSAP = :BLOQEDITORCAPOSAP,'
      '  BLOQVDPORATRASO = :BLOQVDPORATRASO,'
      '  NUMDIASBLOQVD = :NUMDIASBLOQVD,'
      '  FATORSEGESTOQ = :FATORSEGESTOQ,'
      '  LEITRANSP = :LEITRANSP,'
      '  TIPOIMPDANFE = :TIPOIMPDANFE,'
      '  REPLICAORC = :REPLICAORC,'
      '  SQLREPLICAORC = :SQLREPLICAORC,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  CLASSORCLAUDOSUS = :CLASSORCLAUDOSUS,'
      '  CLASSORCCTALUGUEL = :CLASSORCCTALUGUEL,'
      '  BLOQNFEVDAUTORIZ = :BLOQNFEVDAUTORIZ,'
      '  OBRIGTIPOFISC = :OBRIGTIPOFISC,'
      '  MATRICEMPFN = :MATRICEMPFN,'
      '  ESTOQALMOX = :ESTOQALMOX,'
      '  MAXOBSCLI = :MAXOBSCLI,'
      '  RATEIOESTBUSCAORC = :RATEIOESTBUSCAORC,'
      '  CODTIPOMOVRS = :CODTIPOMOVRS,'
      '  ALMOXPDORC = :ALMOXPDORC,'
      '  CODEMPRS = :CODEMPRS,'
      '  CODFILIALRS = :CODFILIALRS,'
      '  VALORPONTO = :VALORPONTO,'
      '  CODBLOQ = :CODBLOQ,'
      '  ORDEMPED = :ORDEMPED,'
      '  IPICOMIS = :IPICOMIS,'
      '  IPIPED = :IPIPED,'
      '  CODBARPROD = :CODBARPROD,'
      '  ENDCLIPED = :ENDCLIPED,'
      '  SERVIDORSMTP = :SERVIDORSMTP,'
      '  PORTASMTP = :PORTASMTP,'
      '  USUARIOSMTP = :USUARIOSMTP,'
      '  SENHASMTP = :SENHASMTP,'
      '  AUTENTICASMTP = :AUTENTICASMTP,'
      '  SSLSMTP = :SSLSMTP,'
      '  LAYOUTPED = :LAYOUTPED,'
      '  ENVIACOPIA = :ENVIACOPIA,'
      '  CODUNID = :CODUNID,'
      '  MOSTRAFATLUCR = :MOSTRAFATLUCR,'
      '  CODEMPUD = :CODEMPUD,'
      '  CODFILIALUD = :CODFILIALUD,'
      '  EXIBIRPAINELCOMANDAS = :EXIBIRPAINELCOMANDAS,'
      '  TPCALCLUCRO = :TPCALCLUCRO,'
      '  SEF2INDICADOR01 = :SEF2INDICADOR01,'
      '  SEF2INDICADOR02 = :SEF2INDICADOR02,'
      '  SEF2INDICADOR03 = :SEF2INDICADOR03,'
      '  SEF2INDICADOR04 = :SEF2INDICADOR04,'
      '  SEF2INDICADOR05 = :SEF2INDICADOR05,'
      '  SEF2INDICADOR06 = :SEF2INDICADOR06,'
      '  SEF2INDICADOR07 = :SEF2INDICADOR07,'
      '  SEF2INDICADOR08 = :SEF2INDICADOR08,'
      '  SEF2INDICADOR09 = :SEF2INDICADOR09,'
      '  SEF2INDICADOR10 = :SEF2INDICADOR10,'
      '  SEF2INDICADOR11 = :SEF2INDICADOR11,'
      '  SEF2INDICADOR12 = :SEF2INDICADOR12,'
      '  SEF2INDICADOR13 = :SEF2INDICADOR13,'
      '  SEF2INDICADOR14 = :SEF2INDICADOR14,'
      '  SEF2INDICADOR15 = :SEF2INDICADOR15,'
      '  SEF2INDICADOR16 = :SEF2INDICADOR16,'
      '  SEF2INDICADOR17 = :SEF2INDICADOR17,'
      '  CODEMPINTEGRA = :CODEMPINTEGRA,'
      '  PDV_BUSCAEAN = :PDV_BUSCAEAN,'
      '  CODMENSNFE = :CODMENSNFE,'
      '  SOMASTDUPNFE = :SOMASTDUPNFE,'
      '  RECOLHEICMSPF = :RECOLHEICMSPF,'
      '  ALIQRECOLHEICMPF = :ALIQRECOLHEICMPF,'
      '  MAJALIQRECOLHEICMPF = :MAJALIQRECOLHEICMPF,'
      '  CNPJCPF = :CNPJCPF,'
      '  PATHSERVER = :PATHSERVER'
      'WHERE'
      '  SGPREFERE1.CODEMP = :OLD_CODEMP AND'
      '  SGPREFERE1.CODFILIAL = :OLD_CODFILIAL')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 680
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
        Name = 'USAREFPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAPEDSEQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAORCSEQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USALIQREL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPRECOCUSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANOCENTROCUSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSORCPAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSORCPD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TITORCTXT01'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORDNOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SETORVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PREFCRED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPREFCRED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPMO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALMO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMOEDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USACLASCOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCPRECOCUSTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALGP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPGP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALMC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPMC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RGCLIOBRIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABFRETEVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABADICVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TRAVATMNFVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOVALIDORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIMESMOCNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTBJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJOBRIGCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'JUROSPOSCALC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPFR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALFR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTRAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTLOTNEG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTNEG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NATVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPIVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUSTOSICMS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLASCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CASASDEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CASASDECFIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMISPDUPL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV6'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDAMATPRIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDAPATRIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PEPSPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJFOROBRIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSCESTFOROBRIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BUSCAPRODSIMILAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MULTIALMOX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV8'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTNEGGRUP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USATABPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TAMDESCPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCCOMPPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSCLIVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTESTOQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIASPEDT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECALCPCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECALCPCORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USALAYOUTPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VERIFALTPARCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BUSCACODPRODGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILBUSCGENPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILBUSCGENREF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILBUSCGENCODBAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILBUSCGENCODFAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FILBUSCGENCODFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BUSCAVLRULTCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ICMSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAPRECOZERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAIMGASSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMGASSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTCPFCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTEIECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTEIEFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTECPFFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USANOMEVENDORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SISCONTABIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATBANCOIMPBOL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOCODBAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADICORCOBSPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPMENSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALMENSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMENSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUSTOCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABTRANSPCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABTRANSPORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABSOLCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADICFRETEBASEICM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECOCPREL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MULTICOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUATIVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPHISTREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALHISTREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODHISTREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPHISTPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALHISTPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODHISTPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTITRECALTDTVENC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LCREDGLOBAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VDMANUTCOMOBRIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSPED02'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOCLASSPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAIBGECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAIBGEFOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAIBGETRANSP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SOMAVOLUMES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BUSCACEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'URLWSCEP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LABELOBS01CP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LABELOBS02CP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LABELOBS03CP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LABELOBS04CP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTEIEPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CREDICMSSIMPLES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPMS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALMS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMENSICMSSIMPLES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GERACOMISVENDAORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GERACODUNIF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOV9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALT9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPT9'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPJP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALJP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANJP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPJR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALJR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANJR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANDC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GERAPAGEMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LANCAFINCONTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LANCARMACONTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CASASDECPRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VISUALIZALUCR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRNFELIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORMATODANFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AMBIENTENFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROCEMINFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VERPROCNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KEYLICNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTVENCTONFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INFADPRODNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMAILNF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXIBEPARCOBSDANFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VERSAONFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REGIMETRIBNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INFCPDEVOLUCAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INFVDREMESSA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GERARECEMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RETENSAOIMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOCUSTOLUC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TABIMPORTCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HABVLRTOTITORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USABUSCAGENPRODCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADICOBSORCPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAPRECOCOT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQPRECOAPROV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPFT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALFT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOFORFT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USAPRECOCOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESPECIALCOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOVS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPSV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALSV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAGSV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ARREDPRECO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANPC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPNOSSONUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPDOCBOL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHACAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHACAIXAAUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMDIGIDENTTIT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KEYLICEFD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTVENCTOEFD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REVALIDARLOTECOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENCORCPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOVIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMISSAODESCONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPHC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALHC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODHISTCNAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALINHATELALANCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDACONSUM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CVPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VERIFPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RMAPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIMG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSITVENDAPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FATORCPARC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APROVORCFATPARC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQSEQICP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQSEQIVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILORDCPINT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'KEYLICEPC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTVENCTOEPC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPLOTENFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TOTCPSFRETE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDENTCLIBCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QTDDESC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCALSERV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VDPRODQQCLAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PADRAONFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMENSVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOEMISSAONFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CCNFECP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ADICICMSTOTNOTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UTILIZATBCALCCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HABCOMPRACOMPL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOVIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCNATCOMPL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HABLOGPAGAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HABLOGRECEBER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONSISTENDENTVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USACLISEQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQDESCCOMPORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQPRECOORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQDESCCOMPVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQPRECOVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESABDESCFECHAVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESABDESCFECHAORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERMITBAIXAPARCJDM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQCOMISSORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQCOMISSVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCPRECOG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDERECOOBRIGCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENTREGAOBRIGCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERIODOCONSCH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQPEDVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AGENDAFPRINCIPAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATUALIZAAGENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEMPOATUAGENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SOLDTSAIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NPERMITDTMAIOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERMITIMPORCANTAP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQEDITORCAPOSAP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQVDPORATRASO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMDIASBLOQVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FATORSEGESTOQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LEITRANSP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOIMPDANFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REPLICAORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SQLREPLICAORC'
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
        Name = 'CLASSORCLAUDOSUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLASSORCCTALUGUEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BLOQNFEVDAUTORIZ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBRIGTIPOFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MATRICEMPFN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQALMOX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAXOBSCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RATEIOESTBUSCAORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOMOVRS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMOXPDORC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPRS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALRS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALORPONTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBLOQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORDEMPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPICOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IPIPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBARPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDCLIPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SERVIDORSMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PORTASMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIOSMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENHASMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AUTENTICASMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SSLSMTP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LAYOUTPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENVIACOPIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODUNID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOSTRAFATLUCR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPUD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALUD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EXIBIRPAINELCOMANDAS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TPCALCLUCRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR01'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR02'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR03'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR04'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR05'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR06'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR07'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR08'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR09'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR10'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR11'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR12'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR13'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR14'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR15'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR16'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEF2INDICADOR17'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPINTEGRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PDV_BUSCAEAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMENSNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SOMASTDUPNFE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECOLHEICMSPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALIQRECOLHEICMPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MAJALIQRECOLHEICMPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJCPF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PATHSERVER'
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
  object zupt_FNRECEBER: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM FNRECEBER'
      'WHERE'
      '  FNRECEBER.CODEMP = :OLD_CODEMP AND'
      '  FNRECEBER.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNRECEBER.CODREC = :OLD_CODREC')
    InsertSQL.Strings = (
      'INSERT INTO FNRECEBER'
      
        '  (CODEMP, CODFILIAL, CODREC, CODEMPBO, CODFILIALBO, CODBANCO, C' +
        'ODEMPPG, '
      
        '   CODFILIALPG, CODPLANOPAG, CODEMPCL, CODFILIALCL, CODCLI, CODE' +
        'MPVD, CODFILIALVD, '
      
        '   CODVEND, CODEMPVA, CODFILIALVA, TIPOVENDA, CODVENDA, CODEMPTC' +
        ', CODFILIALTC, '
      
        '   CODTIPOCOB, CODEMPCB, CODFILIALCB, CODCARTCOB, VLRREC, VLRDES' +
        'CREC, VLRMULTAREC, '
      
        '   VLRJUROSREC, VLRDEVREC, VLRPARCREC, VLRPAGOREC, VLRAPAGREC, V' +
        'LRBASECOMIS, '
      
        '   VLRRETENSAOISS, DTCOMPREC, DATAREC, STATUSREC, VLRCOMIREC, DT' +
        'QUITREC, '
      
        '   DOCREC, NROPARCREC, OBSREC, FLAG, ALTUSUREC, CODEMPCA, CODFIL' +
        'IALCA, '
      
        '   NUMCONTA, CODEMPPN, CODFILIALPN, CODPLAN, CODEMPCC, CODFILIAL' +
        'CC, ANOCC, '
      
        '   CODCC, CODEMPRR, CODFILIALRR, CODRENEGREC, EMMANUT, DTINS, HI' +
        'NS, IDUSUINS, '
      '   DTALT, HALT, IDUSUALT)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :CODREC, :CODEMPBO, :CODFILIALBO, :CODBA' +
        'NCO, :CODEMPPG, '
      
        '   :CODFILIALPG, :CODPLANOPAG, :CODEMPCL, :CODFILIALCL, :CODCLI,' +
        ' :CODEMPVD, '
      
        '   :CODFILIALVD, :CODVEND, :CODEMPVA, :CODFILIALVA, :TIPOVENDA, ' +
        ':CODVENDA, '
      
        '   :CODEMPTC, :CODFILIALTC, :CODTIPOCOB, :CODEMPCB, :CODFILIALCB' +
        ', :CODCARTCOB, '
      
        '   :VLRREC, :VLRDESCREC, :VLRMULTAREC, :VLRJUROSREC, :VLRDEVREC,' +
        ' :VLRPARCREC, '
      
        '   :VLRPAGOREC, :VLRAPAGREC, :VLRBASECOMIS, :VLRRETENSAOISS, :DT' +
        'COMPREC, '
      
        '   :DATAREC, :STATUSREC, :VLRCOMIREC, :DTQUITREC, :DOCREC, :NROP' +
        'ARCREC, '
      
        '   :OBSREC, :FLAG, :ALTUSUREC, :CODEMPCA, :CODFILIALCA, :NUMCONT' +
        'A, :CODEMPPN, '
      
        '   :CODFILIALPN, :CODPLAN, :CODEMPCC, :CODFILIALCC, :ANOCC, :COD' +
        'CC, :CODEMPRR, '
      
        '   :CODFILIALRR, :CODRENEGREC, :EMMANUT, :DTINS, :HINS, :IDUSUIN' +
        'S, :DTALT, '
      '   :HALT, :IDUSUALT)')
    ModifySQL.Strings = (
      'UPDATE FNRECEBER SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CODREC = :CODREC,'
      '  CODEMPBO = :CODEMPBO,'
      '  CODFILIALBO = :CODFILIALBO,'
      '  CODBANCO = :CODBANCO,'
      '  CODEMPPG = :CODEMPPG,'
      '  CODFILIALPG = :CODFILIALPG,'
      '  CODPLANOPAG = :CODPLANOPAG,'
      '  CODEMPCL = :CODEMPCL,'
      '  CODFILIALCL = :CODFILIALCL,'
      '  CODCLI = :CODCLI,'
      '  CODEMPVD = :CODEMPVD,'
      '  CODFILIALVD = :CODFILIALVD,'
      '  CODVEND = :CODVEND,'
      '  CODEMPVA = :CODEMPVA,'
      '  CODFILIALVA = :CODFILIALVA,'
      '  TIPOVENDA = :TIPOVENDA,'
      '  CODVENDA = :CODVENDA,'
      '  CODEMPTC = :CODEMPTC,'
      '  CODFILIALTC = :CODFILIALTC,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  CODEMPCB = :CODEMPCB,'
      '  CODFILIALCB = :CODFILIALCB,'
      '  CODCARTCOB = :CODCARTCOB,'
      '  VLRREC = :VLRREC,'
      '  VLRDESCREC = :VLRDESCREC,'
      '  VLRMULTAREC = :VLRMULTAREC,'
      '  VLRJUROSREC = :VLRJUROSREC,'
      '  VLRDEVREC = :VLRDEVREC,'
      '  VLRPARCREC = :VLRPARCREC,'
      '  VLRPAGOREC = :VLRPAGOREC,'
      '  VLRAPAGREC = :VLRAPAGREC,'
      '  VLRBASECOMIS = :VLRBASECOMIS,'
      '  VLRRETENSAOISS = :VLRRETENSAOISS,'
      '  DTCOMPREC = :DTCOMPREC,'
      '  DATAREC = :DATAREC,'
      '  STATUSREC = :STATUSREC,'
      '  VLRCOMIREC = :VLRCOMIREC,'
      '  DTQUITREC = :DTQUITREC,'
      '  DOCREC = :DOCREC,'
      '  NROPARCREC = :NROPARCREC,'
      '  OBSREC = :OBSREC,'
      '  FLAG = :FLAG,'
      '  ALTUSUREC = :ALTUSUREC,'
      '  CODEMPCA = :CODEMPCA,'
      '  CODFILIALCA = :CODFILIALCA,'
      '  NUMCONTA = :NUMCONTA,'
      '  CODEMPPN = :CODEMPPN,'
      '  CODFILIALPN = :CODFILIALPN,'
      '  CODPLAN = :CODPLAN,'
      '  CODEMPCC = :CODEMPCC,'
      '  CODFILIALCC = :CODFILIALCC,'
      '  ANOCC = :ANOCC,'
      '  CODCC = :CODCC,'
      '  CODEMPRR = :CODEMPRR,'
      '  CODFILIALRR = :CODFILIALRR,'
      '  CODRENEGREC = :CODRENEGREC,'
      '  EMMANUT = :EMMANUT,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT'
      'WHERE'
      '  FNRECEBER.CODEMP = :OLD_CODEMP AND'
      '  FNRECEBER.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNRECEBER.CODREC = :OLD_CODREC')
    UseSequenceFieldForRefreshSQL = False
    Left = 1008
    Top = 488
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
        Name = 'CODREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCARTCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRMULTAREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRJUROSREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDEVREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPARCREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPAGOREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRAPAGREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASECOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRRETENSAOISS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTCOMPREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUSREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCOMIREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTQUITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NROPARCREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FLAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALTUSUREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANOCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPRR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALRR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODRENEGREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMMANUT'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODREC'
        ParamType = ptUnknown
      end>
  end
  object zupt_FNITRECEBER: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM FNITRECEBER'
      'WHERE'
      '  FNITRECEBER.CODEMP = :OLD_CODEMP AND'
      '  FNITRECEBER.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNITRECEBER.CODREC = :OLD_CODREC AND'
      '  FNITRECEBER.NPARCITREC = :OLD_NPARCITREC')
    InsertSQL.Strings = (
      'INSERT INTO FNITRECEBER'
      
        '  (CODEMP, CODFILIAL, CODREC, NPARCITREC, VLRITREC, VLRDESCITREC' +
        ', VLRMULTAITREC, '
      
        '   VLRJUROSITREC, VLRDEVITREC, VLRPARCITREC, VLRPAGOITREC, VLRAP' +
        'AGITREC, '
      
        '   VLRCOMIITREC, VLRCANCITREC, VLRBASECOMIS, DESCPONT, DTITREC, ' +
        'DTCOMPITREC, '
      
        '   DTVENCITREC, DTPREVITREC, DTPAGOITREC, DTLIQITREC, STATUSITRE' +
        'C, CODEMPPN, '
      
        '   CODFILIALPN, CODPLAN, OBSITREC, CODEMPCA, CODFILIALCA, NUMCON' +
        'TA, CODEMPBO, '
      
        '   CODFILIALBO, CODBANCO, CODEMPTC, CODFILIALTC, CODTIPOCOB, COD' +
        'EMPCB, '
      
        '   CODFILIALCB, CODCARTCOB, DOCLANCAITREC, FLAG, CODEMPCC, CODFI' +
        'LIALCC, '
      
        '   ANOCC, CODCC, IMPRECIBOITREC, RECIBOITREC, ALTUSUITREC, PDVIT' +
        'REC, RECEMCOB, '
      
        '   DTINIEMCOB, DTFIMEMCOB, SEQNOSSONUMERO, NOSSONUMERO, EMMANUT,' +
        ' CODEMPSN, '
      
        '   CODFILIALSN, CODSINAL, MULTIBAIXA, CODEMPCT, CODFILIALCT, COD' +
        'CONTR, '
      
        '   CODITCONTR, DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT, COD' +
        'EMPEM, '
      '   CODFILIALEM, MATEMPR, DTPROCES, OCOR_RET)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :CODREC, :NPARCITREC, :VLRITREC, :VLRDES' +
        'CITREC, '
      
        '   :VLRMULTAITREC, :VLRJUROSITREC, :VLRDEVITREC, :VLRPARCITREC, ' +
        ':VLRPAGOITREC, '
      
        '   :VLRAPAGITREC, :VLRCOMIITREC, :VLRCANCITREC, :VLRBASECOMIS, :' +
        'DESCPONT, '
      
        '   :DTITREC, :DTCOMPITREC, :DTVENCITREC, :DTPREVITREC, :DTPAGOIT' +
        'REC, :DTLIQITREC, '
      
        '   :STATUSITREC, :CODEMPPN, :CODFILIALPN, :CODPLAN, :OBSITREC, :' +
        'CODEMPCA, '
      
        '   :CODFILIALCA, :NUMCONTA, :CODEMPBO, :CODFILIALBO, :CODBANCO, ' +
        ':CODEMPTC, '
      
        '   :CODFILIALTC, :CODTIPOCOB, :CODEMPCB, :CODFILIALCB, :CODCARTC' +
        'OB, :DOCLANCAITREC, '
      
        '   :FLAG, :CODEMPCC, :CODFILIALCC, :ANOCC, :CODCC, :IMPRECIBOITR' +
        'EC, :RECIBOITREC, '
      
        '   :ALTUSUITREC, :PDVITREC, :RECEMCOB, :DTINIEMCOB, :DTFIMEMCOB,' +
        ' :SEQNOSSONUMERO, '
      
        '   :NOSSONUMERO, :EMMANUT, :CODEMPSN, :CODFILIALSN, :CODSINAL, :' +
        'MULTIBAIXA, '
      
        '   :CODEMPCT, :CODFILIALCT, :CODCONTR, :CODITCONTR, :DTINS, :HIN' +
        'S, :IDUSUINS, '
      
        '   :DTALT, :HALT, :IDUSUALT, :CODEMPEM, :CODFILIALEM, :MATEMPR, ' +
        ':DTPROCES, '
      '   :OCOR_RET)')
    ModifySQL.Strings = (
      'UPDATE FNITRECEBER SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CODREC = :CODREC,'
      '  NPARCITREC = :NPARCITREC,'
      '  VLRITREC = :VLRITREC,'
      '  VLRDESCITREC = :VLRDESCITREC,'
      '  VLRMULTAITREC = :VLRMULTAITREC,'
      '  VLRJUROSITREC = :VLRJUROSITREC,'
      '  VLRDEVITREC = :VLRDEVITREC,'
      '  VLRPARCITREC = :VLRPARCITREC,'
      '  VLRPAGOITREC = :VLRPAGOITREC,'
      '  VLRAPAGITREC = :VLRAPAGITREC,'
      '  VLRCOMIITREC = :VLRCOMIITREC,'
      '  VLRCANCITREC = :VLRCANCITREC,'
      '  VLRBASECOMIS = :VLRBASECOMIS,'
      '  DESCPONT = :DESCPONT,'
      '  DTITREC = :DTITREC,'
      '  DTCOMPITREC = :DTCOMPITREC,'
      '  DTVENCITREC = :DTVENCITREC,'
      '  DTPREVITREC = :DTPREVITREC,'
      '  DTPAGOITREC = :DTPAGOITREC,'
      '  DTLIQITREC = :DTLIQITREC,'
      '  STATUSITREC = :STATUSITREC,'
      '  CODEMPPN = :CODEMPPN,'
      '  CODFILIALPN = :CODFILIALPN,'
      '  CODPLAN = :CODPLAN,'
      '  OBSITREC = :OBSITREC,'
      '  CODEMPCA = :CODEMPCA,'
      '  CODFILIALCA = :CODFILIALCA,'
      '  NUMCONTA = :NUMCONTA,'
      '  CODEMPBO = :CODEMPBO,'
      '  CODFILIALBO = :CODFILIALBO,'
      '  CODBANCO = :CODBANCO,'
      '  CODEMPTC = :CODEMPTC,'
      '  CODFILIALTC = :CODFILIALTC,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  CODEMPCB = :CODEMPCB,'
      '  CODFILIALCB = :CODFILIALCB,'
      '  CODCARTCOB = :CODCARTCOB,'
      '  DOCLANCAITREC = :DOCLANCAITREC,'
      '  FLAG = :FLAG,'
      '  CODEMPCC = :CODEMPCC,'
      '  CODFILIALCC = :CODFILIALCC,'
      '  ANOCC = :ANOCC,'
      '  CODCC = :CODCC,'
      '  IMPRECIBOITREC = :IMPRECIBOITREC,'
      '  RECIBOITREC = :RECIBOITREC,'
      '  ALTUSUITREC = :ALTUSUITREC,'
      '  PDVITREC = :PDVITREC,'
      '  RECEMCOB = :RECEMCOB,'
      '  DTINIEMCOB = :DTINIEMCOB,'
      '  DTFIMEMCOB = :DTFIMEMCOB,'
      '  SEQNOSSONUMERO = :SEQNOSSONUMERO,'
      '  NOSSONUMERO = :NOSSONUMERO,'
      '  EMMANUT = :EMMANUT,'
      '  CODEMPSN = :CODEMPSN,'
      '  CODFILIALSN = :CODFILIALSN,'
      '  CODSINAL = :CODSINAL,'
      '  MULTIBAIXA = :MULTIBAIXA,'
      '  CODEMPCT = :CODEMPCT,'
      '  CODFILIALCT = :CODFILIALCT,'
      '  CODCONTR = :CODCONTR,'
      '  CODITCONTR = :CODITCONTR,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  CODEMPEM = :CODEMPEM,'
      '  CODFILIALEM = :CODFILIALEM,'
      '  MATEMPR = :MATEMPR,'
      '  DTPROCES = :DTPROCES,'
      '  OCOR_RET = :OCOR_RET'
      'WHERE'
      '  FNITRECEBER.CODEMP = :OLD_CODEMP AND'
      '  FNITRECEBER.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNITRECEBER.CODREC = :OLD_CODREC AND'
      '  FNITRECEBER.NPARCITREC = :OLD_NPARCITREC')
    UseSequenceFieldForRefreshSQL = False
    Left = 1008
    Top = 536
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
        Name = 'CODREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NPARCITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRMULTAITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRJUROSITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDEVITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPARCITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPAGOITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRAPAGITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCOMIITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCANCITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASECOMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCPONT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTCOMPITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTVENCITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTPREVITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTPAGOITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTLIQITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUSITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCARTCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DOCLANCAITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FLAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANOCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRECIBOITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECIBOITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALTUSUITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PDVITREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RECEMCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIEMCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFIMEMCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQNOSSONUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOSSONUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMMANUT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPSN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALSN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODSINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MULTIBAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCONTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITCONTR'
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
        Name = 'CODEMPEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MATEMPR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTPROCES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OCOR_RET'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NPARCITREC'
        ParamType = ptUnknown
      end>
  end
  object zqry_FNRETBOLETO: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNRETBOLETO
    SQL.Strings = (
      'SELECT * FROM FNRETBOLETO')
    Params = <>
    Left = 64
    Top = 728
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
      currency = True
    end
    object zqry_FNRETBOLETOVLRDOCUMENTO: TFloatField
      FieldName = 'VLRDOCUMENTO'
      currency = True
    end
    object zqry_FNRETBOLETOVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      currency = True
    end
    object zqry_FNRETBOLETOVLRDESP: TFloatField
      FieldName = 'VLRDESP'
      currency = True
    end
    object zqry_FNRETBOLETOCODRETBANCO: TWideStringField
      FieldName = 'CODRETBANCO'
      Size = 2
    end
    object zqry_FNRETBOLETODTCREDITO: TDateField
      FieldName = 'DTCREDITO'
    end
    object zqry_FNRETBOLETODESCRETBANCO: TWideStringField
      FieldName = 'DESCRETBANCO'
      Size = 100
    end
    object zqry_FNRETBOLETOCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_FNRETBOLETOCODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object zqry_FNRETBOLETO_NOMECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECLIENTE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'RAZCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
  end
  object zdts_FNRETBOLETO: TDataSource
    DataSet = zqry_FNRETBOLETO
    Left = 128
    Top = 728
  end
  object zupt_FNRETBOLETO: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM FNRETBOLETO'
      'WHERE'
      '  FNRETBOLETO.CODRETORNO = :OLD_CODRETORNO')
    InsertSQL.Strings = (
      'INSERT INTO FNRETBOLETO'
      
        '  (CODRETORNO, CODEMP, CODFILIAL, DTPROCESSA, CONTA, CODCEDENTE,' +
        ' NUMDOCUMENTO, '
      
        '   NOSSONUMERO, DTOCORRENCIA, VLRRECEBIDO, VLRDOCUMENTO, VLRPAGO' +
        ', VLRDESP, '
      '   CODRETBANCO, DTCREDITO, DESCRETBANCO, CODCLI, CODREC)'
      'VALUES'
      
        '  (:CODRETORNO, :CODEMP, :CODFILIAL, :DTPROCESSA, :CONTA, :CODCE' +
        'DENTE, '
      
        '   :NUMDOCUMENTO, :NOSSONUMERO, :DTOCORRENCIA, :VLRRECEBIDO, :VL' +
        'RDOCUMENTO, '
      
        '   :VLRPAGO, :VLRDESP, :CODRETBANCO, :DTCREDITO, :DESCRETBANCO, ' +
        ':CODCLI, '
      '   :CODREC)')
    ModifySQL.Strings = (
      'UPDATE FNRETBOLETO SET'
      '  CODRETORNO = :CODRETORNO,'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  DTPROCESSA = :DTPROCESSA,'
      '  CONTA = :CONTA,'
      '  CODCEDENTE = :CODCEDENTE,'
      '  NUMDOCUMENTO = :NUMDOCUMENTO,'
      '  NOSSONUMERO = :NOSSONUMERO,'
      '  DTOCORRENCIA = :DTOCORRENCIA,'
      '  VLRRECEBIDO = :VLRRECEBIDO,'
      '  VLRDOCUMENTO = :VLRDOCUMENTO,'
      '  VLRPAGO = :VLRPAGO,'
      '  VLRDESP = :VLRDESP,'
      '  CODRETBANCO = :CODRETBANCO,'
      '  DTCREDITO = :DTCREDITO,'
      '  DESCRETBANCO = :DESCRETBANCO,'
      '  CODCLI = :CODCLI,'
      '  CODREC = :CODREC'
      'WHERE'
      '  FNRETBOLETO.CODRETORNO = :OLD_CODRETORNO')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 728
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODRETORNO'
        ParamType = ptUnknown
      end
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
        Name = 'DTPROCESSA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCEDENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMDOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOSSONUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTOCORRENCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRRECEBIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDOCUMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODRETBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTCREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRETBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODREC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODRETORNO'
        ParamType = ptUnknown
      end>
  end
  object zqry_SGSEQUENCIANFCE: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGSEQUENCIANFCE
    SQL.Strings = (
      'SELECT * FROM SGSEQUENCIANFCE where CODEMP=:CODEMP')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    DataSource = zdts_SGFILIAL
    Left = 328
    Top = 680
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    object zqry_SGSEQUENCIANFCECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGSEQUENCIANFCECODFILIAL: TIntegerField
      FieldName = 'CODFILIAL'
    end
    object zqry_SGSEQUENCIANFCECONTADOR: TIntegerField
      FieldName = 'CONTADOR'
    end
  end
  object zupt_SGSEQUENCIANFCE: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM SGSEQUENCIANFCE'
      'WHERE'
      '  SGSEQUENCIANFCE.CODEMP = :OLD_CODEMP')
    InsertSQL.Strings = (
      'INSERT INTO SGSEQUENCIANFCE'
      '  (CODEMP, CODFILIAL, CONTADOR)'
      'VALUES'
      '  (:CODEMP, :CODFILIAL, :CONTADOR)')
    ModifySQL.Strings = (
      'UPDATE SGSEQUENCIANFCE SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CONTADOR = :CONTADOR'
      'WHERE'
      '  SGSEQUENCIANFCE.CODEMP = :OLD_CODEMP')
    UseSequenceFieldForRefreshSQL = False
    Left = 448
    Top = 680
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
        Name = 'CONTADOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODEMP'
        ParamType = ptUnknown
      end>
  end
  object zdts_SGSEQUENCIANFCE: TDataSource
    DataSet = zqry_SGSEQUENCIANFCE
    Left = 392
    Top = 680
  end
  object zdts_SGSEQUENCIA_NF: TDataSource
    DataSet = zqry_SGSEQUENCIA_NF
    Left = 392
    Top = 728
  end
  object zqry_SGSEQUENCIA_NF: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGSEQUENCIA_NF
    SQL.Strings = (
      'SELECT * FROM SGSEQUENCIA')
    Params = <>
    Left = 328
    Top = 728
    object zqry_SGSEQUENCIA_NFCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGSEQUENCIA_NFCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_SGSEQUENCIA_NFSGTAB: TWideStringField
      FieldName = 'SGTAB'
      Required = True
      Size = 2
    end
    object zqry_SGSEQUENCIA_NFNROSEQ: TIntegerField
      FieldName = 'NROSEQ'
    end
    object zqry_SGSEQUENCIA_NFDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGSEQUENCIA_NFHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGSEQUENCIA_NFIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGSEQUENCIA_NFDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGSEQUENCIA_NFHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGSEQUENCIA_NFIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zupt_SGSEQUENCIA_NF: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM SGSEQUENCIA'
      'WHERE'
      '  SGSEQUENCIA.CODEMP = :OLD_CODEMP AND'
      '  SGSEQUENCIA.CODFILIAL = :OLD_CODFILIAL')
    InsertSQL.Strings = (
      'INSERT INTO SGSEQUENCIA'
      
        '  (CODEMP, CODFILIAL, SGTAB, NROSEQ, DTINS, HINS, IDUSUINS, DTAL' +
        'T, HALT, '
      '   IDUSUALT)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :SGTAB, :NROSEQ, :DTINS, :HINS, :IDUSUIN' +
        'S, :DTALT, '
      '   :HALT, :IDUSUALT)')
    ModifySQL.Strings = (
      'UPDATE SGSEQUENCIA SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  SGTAB = :SGTAB,'
      '  NROSEQ = :NROSEQ,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT'
      'WHERE'
      '  SGSEQUENCIA.CODEMP = :OLD_CODEMP AND'
      '  SGSEQUENCIA.CODFILIAL = :OLD_CODFILIAL')
    UseSequenceFieldForRefreshSQL = False
    Left = 448
    Top = 728
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
        Name = 'SGTAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NROSEQ'
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
  object zqry_FNCHEQUE: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNCHEQUE
    SQL.Strings = (
      'SELECT * FROM FNCHEQUE')
    Params = <>
    Left = 584
    Top = 680
    object zqry_FNCHEQUECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNCHEQUECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNCHEQUECODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
      Required = True
    end
    object zqry_FNCHEQUESEQCHEQ: TIntegerField
      FieldName = 'SEQCHEQ'
      Required = True
    end
    object zqry_FNCHEQUECODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
      Required = True
    end
    object zqry_FNCHEQUECODBANC: TWideStringField
      FieldName = 'CODBANC'
      Required = True
      Size = 3
    end
    object zqry_FNCHEQUEAGENCIACHEQ: TWideStringField
      FieldName = 'AGENCIACHEQ'
      Required = True
      Size = 7
    end
    object zqry_FNCHEQUECONTACHEQ: TWideStringField
      FieldName = 'CONTACHEQ'
      Required = True
      Size = 10
    end
    object zqry_FNCHEQUENUMCHEQ: TIntegerField
      FieldName = 'NUMCHEQ'
      Required = True
    end
    object zqry_FNCHEQUENOMEEMITCHEQ: TWideStringField
      FieldName = 'NOMEEMITCHEQ'
      Required = True
      Size = 50
    end
    object zqry_FNCHEQUENOMEFAVCHEQ: TWideStringField
      FieldName = 'NOMEFAVCHEQ'
      Required = True
      Size = 50
    end
    object zqry_FNCHEQUEDTEMITCHEQ: TDateField
      FieldName = 'DTEMITCHEQ'
      Required = True
    end
    object zqry_FNCHEQUEDTVENCTOCHEQ: TDateField
      FieldName = 'DTVENCTOCHEQ'
      Required = True
    end
    object zqry_FNCHEQUEDTCOMPCHEQ: TDateField
      FieldName = 'DTCOMPCHEQ'
    end
    object zqry_FNCHEQUETIPOCHEQ: TWideStringField
      FieldName = 'TIPOCHEQ'
      Required = True
      Size = 2
    end
    object zqry_FNCHEQUEPREDATCHEQ: TWideStringField
      FieldName = 'PREDATCHEQ'
      Size = 1
    end
    object zqry_FNCHEQUESITCHEQ: TWideStringField
      FieldName = 'SITCHEQ'
      Required = True
      Size = 2
    end
    object zqry_FNCHEQUEVLRCHEQ: TFloatField
      FieldName = 'VLRCHEQ'
      Required = True
      currency = True
    end
    object zqry_FNCHEQUEHISTCHEQ: TWideStringField
      FieldName = 'HISTCHEQ'
      Required = True
      Size = 500
    end
    object zqry_FNCHEQUECNPJEMITCHEQ: TWideStringField
      FieldName = 'CNPJEMITCHEQ'
      Size = 14
    end
    object zqry_FNCHEQUECPFEMITCHEQ: TWideStringField
      FieldName = 'CPFEMITCHEQ'
      Size = 11
    end
    object zqry_FNCHEQUECNPJFAVCHEQ: TWideStringField
      FieldName = 'CNPJFAVCHEQ'
      Size = 14
    end
    object zqry_FNCHEQUECPFFAVCHEQ: TWideStringField
      FieldName = 'CPFFAVCHEQ'
      Size = 11
    end
    object zqry_FNCHEQUEDDDFAVCHEQ: TWideStringField
      FieldName = 'DDDFAVCHEQ'
      Size = 4
    end
    object zqry_FNCHEQUEDDDEMITCHEQ: TWideStringField
      FieldName = 'DDDEMITCHEQ'
      Size = 4
    end
    object zqry_FNCHEQUEFONEEMITCHEQ: TWideStringField
      FieldName = 'FONEEMITCHEQ'
      Size = 9
    end
    object zqry_FNCHEQUEFONEFAVCHEQ: TWideStringField
      FieldName = 'FONEFAVCHEQ'
      Size = 9
    end
    object zqry_FNCHEQUEDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNCHEQUEHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNCHEQUEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 128
    end
    object zqry_FNCHEQUEDTALT: TDateField
      FieldName = 'DTALT'
      Required = True
    end
    object zqry_FNCHEQUEHALT: TTimeField
      FieldName = 'HALT'
      Required = True
    end
    object zqry_FNCHEQUEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Required = True
      Size = 128
    end
    object zqry_FNCHEQUECONTAEMITE: TWideStringField
      FieldName = 'CONTAEMITE'
      Size = 10
    end
    object zqry_FNCHEQUECODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_FNCHEQUECODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_FNCHEQUENOMEBANCO: TWideStringField
      FieldName = 'NOMEBANCO'
      Size = 50
    end
    object zqry_FNCHEQUECODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
    end
    object zqry_FNCHEQUECODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
    end
    object zqry_FNCHEQUECODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_FNCHEQUECODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_FNCHEQUEDTDEPCHEQ: TDateField
      FieldName = 'DTDEPCHEQ'
    end
    object zqry_FNCHEQUECODALINEA: TSmallintField
      FieldName = 'CODALINEA'
    end
    object zqry_FNCHEQUEDTDEVOLCHEQ: TDateField
      FieldName = 'DTDEVOLCHEQ'
    end
    object zqry_FNCHEQUEDTREAPRESENTAR: TDateField
      FieldName = 'DTREAPRESENTAR'
    end
    object zqry_FNCHEQUEREAPRESENTAR: TWideStringField
      FieldName = 'REAPRESENTAR'
      Size = 1
    end
    object zqry_FNCHEQUEAUTREAPRESENTAR: TWideStringField
      FieldName = 'AUTREAPRESENTAR'
      Size = 100
    end
  end
  object zupt_FNCHEQUE: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 704
    Top = 680
  end
  object zdts_FNCHEQUE: TDataSource
    DataSet = zqry_FNCHEQUE
    Left = 648
    Top = 680
  end
  object zdts_FNCHEQUE_ALINEA: TDataSource
    DataSet = zqry_FNCHEQUE_ALINEA
    Left = 648
    Top = 728
  end
  object zqry_FNCHEQUE_ALINEA: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNCHEQUE_ALINEA
    SQL.Strings = (
      'SELECT * FROM FNCHEQUE_ALINEA')
    Params = <>
    Left = 584
    Top = 728
  end
  object zupt_FNCHEQUE_ALINEA: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 704
    Top = 728
  end
  object zqry_SGSEQUENCIA: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGSEQUENCIA
    SQL.Strings = (
      'SELECT * FROM SGSEQUENCIA')
    Params = <>
    Left = 584
    Top = 632
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
  object zupt_SGSEQUENCIA: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 704
    Top = 632
  end
  object zdts_SGSEQUENCIA: TDataSource
    DataSet = zqry_SGSEQUENCIA
    Left = 648
    Top = 632
  end
  object zdts_SGNF: TDataSource
    DataSet = zqry_SGNF
    Left = 128
    Top = 56
  end
  object zqry_SGNF: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGNF
    SQL.Strings = (
      'select * from SGNF')
    Params = <>
    Left = 64
    Top = 56
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
      currency = True
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
  object zqry_SGEMPRESA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM SGEMPRESA')
    Params = <>
    Left = 64
    Top = 104
    object zqry_SGEMPRESACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_SGEMPRESARAZEMP: TWideStringField
      FieldName = 'RAZEMP'
      Size = 50
    end
    object zqry_SGEMPRESANOMEEMP: TWideStringField
      FieldName = 'NOMEEMP'
      Size = 50
    end
    object zqry_SGEMPRESACNPJEMP: TWideStringField
      FieldName = 'CNPJEMP'
      Size = 14
    end
    object zqry_SGEMPRESAINSCEMP: TWideStringField
      FieldName = 'INSCEMP'
    end
    object zqry_SGEMPRESAENDEMP: TWideStringField
      FieldName = 'ENDEMP'
      Size = 50
    end
    object zqry_SGEMPRESANUMEMP: TIntegerField
      FieldName = 'NUMEMP'
    end
    object zqry_SGEMPRESACOMPLEMP: TWideStringField
      FieldName = 'COMPLEMP'
    end
    object zqry_SGEMPRESABAIREMP: TWideStringField
      FieldName = 'BAIREMP'
      Size = 30
    end
    object zqry_SGEMPRESACEPEMP: TWideStringField
      FieldName = 'CEPEMP'
      Size = 8
    end
    object zqry_SGEMPRESACIDEMP: TWideStringField
      FieldName = 'CIDEMP'
      Size = 30
    end
    object zqry_SGEMPRESAUFEMP: TWideStringField
      FieldName = 'UFEMP'
      Size = 2
    end
    object zqry_SGEMPRESADDDEMP: TWideStringField
      FieldName = 'DDDEMP'
      Size = 4
    end
    object zqry_SGEMPRESAFONEEMP: TWideStringField
      FieldName = 'FONEEMP'
      Size = 12
    end
    object zqry_SGEMPRESAFAXEMP: TWideStringField
      FieldName = 'FAXEMP'
      Size = 9
    end
    object zqry_SGEMPRESAEMAILEMP: TWideStringField
      FieldName = 'EMAILEMP'
      Size = 50
    end
    object zqry_SGEMPRESAWWWEMP: TWideStringField
      FieldName = 'WWWEMP'
      Size = 50
    end
    object zqry_SGEMPRESACODEANEMP: TWideStringField
      FieldName = 'CODEANEMP'
      Size = 10
    end
    object zqry_SGEMPRESANOMECONTEMP: TWideStringField
      FieldName = 'NOMECONTEMP'
      Size = 40
    end
    object zqry_SGEMPRESAMULTIALMOXEMP: TWideStringField
      FieldName = 'MULTIALMOXEMP'
      Required = True
      Size = 1
    end
    object zqry_SGEMPRESAFOTOEMP: TBlobField
      FieldName = 'FOTOEMP'
    end
    object zqry_SGEMPRESACODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_SGEMPRESASIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_SGEMPRESACODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_SGEMPRESAPERCISSEMP: TFloatField
      FieldName = 'PERCISSEMP'
    end
    object zqry_SGEMPRESACODPAISEMP: TWideStringField
      FieldName = 'CODPAISEMP'
      Size = 3
    end
    object zqry_SGEMPRESADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_SGEMPRESAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_SGEMPRESAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_SGEMPRESADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_SGEMPRESAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_SGEMPRESAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_FNPLANOPAG: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from FNPLANOPAG')
    Params = <>
    Left = 64
    Top = 152
    object zqry_FNPLANOPAGCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNPLANOPAGCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNPLANOPAGCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
      Required = True
    end
    object zqry_FNPLANOPAGDESCPLANOPAG: TWideStringField
      FieldName = 'DESCPLANOPAG'
      Size = 40
    end
    object zqry_FNPLANOPAGPARCPLANOPAG: TIntegerField
      FieldName = 'PARCPLANOPAG'
      Required = True
    end
    object zqry_FNPLANOPAGAPORCPLANOPAG: TWideStringField
      FieldName = 'APORCPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGAUTOBAIXAPLANOPAG: TWideStringField
      FieldName = 'AUTOBAIXAPLANOPAG'
      Size = 1
    end
    object zqry_FNPLANOPAGCODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
    end
    object zqry_FNPLANOPAGCODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
    end
    object zqry_FNPLANOPAGNUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object zqry_FNPLANOPAGCODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
    end
    object zqry_FNPLANOPAGCODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
    end
    object zqry_FNPLANOPAGCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Size = 13
    end
    object zqry_FNPLANOPAGCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNPLANOPAGCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNPLANOPAGANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_FNPLANOPAGCODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNPLANOPAGATIVOPLANOPAG: TWideStringField
      FieldName = 'ATIVOPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGCVPLANOPAG: TWideStringField
      FieldName = 'CVPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGCODEMPTBJ: TIntegerField
      FieldName = 'CODEMPTBJ'
    end
    object zqry_FNPLANOPAGCODFILIALTBJ: TSmallintField
      FieldName = 'CODFILIALTBJ'
    end
    object zqry_FNPLANOPAGCODTBJ: TIntegerField
      FieldName = 'CODTBJ'
    end
    object zqry_FNPLANOPAGPERCDESC: TFloatField
      FieldName = 'PERCDESC'
    end
    object zqry_FNPLANOPAGREGRVCTOPLANOPAG: TWideStringField
      FieldName = 'REGRVCTOPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGRVSABPLANOPAG: TWideStringField
      FieldName = 'RVSABPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGRVDOMPLANOPAG: TWideStringField
      FieldName = 'RVDOMPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGRVFERPLANOPAG: TWideStringField
      FieldName = 'RVFERPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGRVDIAPLANOPAG: TWideStringField
      FieldName = 'RVDIAPLANOPAG'
      Required = True
      Size = 1
    end
    object zqry_FNPLANOPAGDIAVCTOPLANOPAG: TSmallintField
      FieldName = 'DIAVCTOPLANOPAG'
      Required = True
    end
    object zqry_FNPLANOPAGDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNPLANOPAGHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNPLANOPAGIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNPLANOPAGDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNPLANOPAGHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNPLANOPAGIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_FNTIPOCOB: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FNTIPOCOB
    SQL.Strings = (
      'select * from FNTIPOCOB')
    Params = <>
    Left = 64
    Top = 200
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
  end
  object zqry_VDPRECOPROD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      
        'select codprecoprod, codemp, codfilial, ativoprecoprod, precopro' +
        'd, codplanopag from vdprecoprod')
    Params = <>
    Left = 64
    Top = 248
    object zqry_VDPRECOPRODCODPRECOPROD: TIntegerField
      FieldName = 'CODPRECOPROD'
      Required = True
    end
    object zqry_VDPRECOPRODCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDPRECOPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDPRECOPRODATIVOPRECOPROD: TWideStringField
      FieldName = 'ATIVOPRECOPROD'
      Required = True
      Size = 1
    end
    object zqry_VDPRECOPRODPRECOPROD: TFloatField
      FieldName = 'PRECOPROD'
      Required = True
    end
    object zqry_VDPRECOPRODCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
  end
  object zdts_VDPRECOPROD: TDataSource
    DataSet = zqry_VDPRECOPROD
    Left = 128
    Top = 248
  end
  object zqry_FNCONTA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from FNCONTA')
    Params = <>
    Left = 64
    Top = 296
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
  object zqry_FNMODBOLETO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select *  from FNMODBOLETO')
    Params = <>
    Left = 64
    Top = 344
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
  object zqry_FNBANCO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from fnbanco')
    Params = <>
    Left = 64
    Top = 440
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
  object zqry_FNITMODBOLETO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from FNITMODBOLETO')
    Params = <>
    Left = 64
    Top = 392
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
  object zqry_VDVENDEDOR: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM VDVENDEDOR WHERE CODEMP=:CODEMP')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    DataSource = zdts_SGFILIAL
    Left = 328
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
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
    object zqry_VDVENDEDORVLRABONO: TFloatField
      FieldName = 'VLRABONO'
    end
    object zqry_VDVENDEDORVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
  end
  object zqry_ATATENDENTE: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from ATATENDENTE')
    Params = <>
    Left = 328
    Top = 56
    object zqry_ATATENDENTECODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_ATATENDENTECODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_ATATENDENTECODATEND: TIntegerField
      FieldName = 'CODATEND'
      Required = True
    end
    object zqry_ATATENDENTENOMEATEND: TWideStringField
      FieldName = 'NOMEATEND'
      Required = True
      Size = 50
    end
    object zqry_ATATENDENTECODEMPTA: TIntegerField
      FieldName = 'CODEMPTA'
      Required = True
    end
    object zqry_ATATENDENTECODFILIALTA: TSmallintField
      FieldName = 'CODFILIALTA'
      Required = True
    end
    object zqry_ATATENDENTECODTPATEND: TIntegerField
      FieldName = 'CODTPATEND'
      Required = True
    end
    object zqry_ATATENDENTERGATEND: TWideStringField
      FieldName = 'RGATEND'
      Size = 13
    end
    object zqry_ATATENDENTEENDATEND: TWideStringField
      FieldName = 'ENDATEND'
      Size = 50
    end
    object zqry_ATATENDENTEBAIRATEND: TWideStringField
      FieldName = 'BAIRATEND'
      Size = 30
    end
    object zqry_ATATENDENTECIDATEND: TWideStringField
      FieldName = 'CIDATEND'
      Size = 30
    end
    object zqry_ATATENDENTECEPATEND: TWideStringField
      FieldName = 'CEPATEND'
      Size = 8
    end
    object zqry_ATATENDENTEFONEATEND: TWideStringField
      FieldName = 'FONEATEND'
      Size = 12
    end
    object zqry_ATATENDENTEFAXATEND: TWideStringField
      FieldName = 'FAXATEND'
      Size = 9
    end
    object zqry_ATATENDENTEEMAILATEND: TWideStringField
      FieldName = 'EMAILATEND'
      Size = 60
    end
    object zqry_ATATENDENTENUMATEND: TIntegerField
      FieldName = 'NUMATEND'
    end
    object zqry_ATATENDENTEUFATEND: TWideStringField
      FieldName = 'UFATEND'
      Size = 2
    end
    object zqry_ATATENDENTECELATEND: TWideStringField
      FieldName = 'CELATEND'
      Size = 9
    end
    object zqry_ATATENDENTEIDENTIFICATEND: TWideStringField
      FieldName = 'IDENTIFICATEND'
      Size = 18
    end
    object zqry_ATATENDENTECODEMPUS: TIntegerField
      FieldName = 'CODEMPUS'
    end
    object zqry_ATATENDENTECODFILIALUS: TIntegerField
      FieldName = 'CODFILIALUS'
    end
    object zqry_ATATENDENTEIDUSU: TWideStringField
      FieldName = 'IDUSU'
      Size = 8
    end
    object zqry_ATATENDENTECPFATEND: TWideStringField
      FieldName = 'CPFATEND'
      Size = 11
    end
    object zqry_ATATENDENTECODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_ATATENDENTECODEMPVE: TIntegerField
      FieldName = 'CODEMPVE'
    end
    object zqry_ATATENDENTECODFILIALVE: TIntegerField
      FieldName = 'CODFILIALVE'
    end
    object zqry_ATATENDENTECODEMPEP: TIntegerField
      FieldName = 'CODEMPEP'
    end
    object zqry_ATATENDENTECODFILIALEP: TSmallintField
      FieldName = 'CODFILIALEP'
    end
    object zqry_ATATENDENTEMATEMPR: TIntegerField
      FieldName = 'MATEMPR'
    end
    object zqry_ATATENDENTEMETAATEND: TFloatField
      FieldName = 'METAATEND'
      Required = True
    end
    object zqry_ATATENDENTEPARTPREMIATEND: TWideStringField
      FieldName = 'PARTPREMIATEND'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESATDOLEROUT: TWideStringField
      FieldName = 'ACESATDOLEROUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESATDOALTOUT: TWideStringField
      FieldName = 'ACESATDOALTOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESATDODELLAN: TWideStringField
      FieldName = 'ACESATDODELLAN'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESATDODELOUT: TWideStringField
      FieldName = 'ACESATDODELOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESRELESTOUT: TWideStringField
      FieldName = 'ACESRELESTOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESTROCOMIS: TWideStringField
      FieldName = 'ACESTROCOMIS'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESTROCOMISOUT: TWideStringField
      FieldName = 'ACESTROCOMISOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMLEROUT: TWideStringField
      FieldName = 'ACESCHAMLEROUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMALTOUT: TWideStringField
      FieldName = 'ACESCHAMALTOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMDELLAN: TWideStringField
      FieldName = 'ACESCHAMDELLAN'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMALTPRO: TWideStringField
      FieldName = 'ACESCHAMALTPRO'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMDELOUT: TWideStringField
      FieldName = 'ACESCHAMDELOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMFINPRO: TWideStringField
      FieldName = 'ACESCHAMFINPRO'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEACESCHAMFINOUT: TWideStringField
      FieldName = 'ACESCHAMFINOUT'
      Required = True
      Size = 1
    end
    object zqry_ATATENDENTEDTINS: TDateField
      FieldName = 'DTINS'
    end
    object zqry_ATATENDENTEIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Size = 8
    end
    object zqry_ATATENDENTEDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_ATATENDENTEIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_ATATENDENTEHINS: TTimeField
      FieldName = 'HINS'
    end
    object zqry_ATATENDENTEHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_ATATENDENTECOMISSAO: TSingleField
      FieldName = 'COMISSAO'
    end
    object zqry_ATATENDENTEINSCCONREG: TWideStringField
      FieldName = 'INSCCONREG'
      Size = 15
    end
  end
  object zqry_VDCOMISSAO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM VDCOMISSAO')
    Params = <>
    Left = 328
    Top = 152
    object zqry_VDCOMISSAOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDCOMISSAOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDCOMISSAOCODCOMI: TIntegerField
      FieldName = 'CODCOMI'
      Required = True
    end
    object zqry_VDCOMISSAOTIPOCOMI: TWideStringField
      FieldName = 'TIPOCOMI'
      Required = True
      Size = 1
    end
    object zqry_VDCOMISSAOCODEMPRC: TIntegerField
      FieldName = 'CODEMPRC'
    end
    object zqry_VDCOMISSAOCODFILIALRC: TSmallintField
      FieldName = 'CODFILIALRC'
    end
    object zqry_VDCOMISSAOCODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object zqry_VDCOMISSAONPARCITREC: TIntegerField
      FieldName = 'NPARCITREC'
    end
    object zqry_VDCOMISSAOVLRVENDACOMI: TFloatField
      FieldName = 'VLRVENDACOMI'
      Required = True
    end
    object zqry_VDCOMISSAOVLRCOMI: TFloatField
      FieldName = 'VLRCOMI'
      Required = True
    end
    object zqry_VDCOMISSAOVLRPAGOCOMI: TFloatField
      FieldName = 'VLRPAGOCOMI'
      Required = True
    end
    object zqry_VDCOMISSAOVLRAPAGCOMI: TFloatField
      FieldName = 'VLRAPAGCOMI'
      Required = True
    end
    object zqry_VDCOMISSAODATACOMI: TDateField
      FieldName = 'DATACOMI'
      Required = True
    end
    object zqry_VDCOMISSAODTCOMPCOMI: TDateField
      FieldName = 'DTCOMPCOMI'
      Required = True
    end
    object zqry_VDCOMISSAODTVENCCOMI: TDateField
      FieldName = 'DTVENCCOMI'
      Required = True
    end
    object zqry_VDCOMISSAODTPAGTOCOMI: TDateField
      FieldName = 'DTPAGTOCOMI'
    end
    object zqry_VDCOMISSAOSTATUSCOMI: TWideStringField
      FieldName = 'STATUSCOMI'
      Required = True
      Size = 2
    end
    object zqry_VDCOMISSAOCODEMPCI: TIntegerField
      FieldName = 'CODEMPCI'
    end
    object zqry_VDCOMISSAOCODFILIALCI: TSmallintField
      FieldName = 'CODFILIALCI'
    end
    object zqry_VDCOMISSAOCODPCOMI: TIntegerField
      FieldName = 'CODPCOMI'
    end
    object zqry_VDCOMISSAOFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_VDCOMISSAOCODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_VDCOMISSAOCODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_VDCOMISSAOCODPCOMIANT: TIntegerField
      FieldName = 'CODPCOMIANT'
    end
    object zqry_VDCOMISSAOCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDCOMISSAOCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDCOMISSAOCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDCOMISSAOCODEMPVE: TIntegerField
      FieldName = 'CODEMPVE'
    end
    object zqry_VDCOMISSAOCODFILIALVE: TSmallintField
      FieldName = 'CODFILIALVE'
    end
    object zqry_VDCOMISSAOCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_VDCOMISSAOTIPOVENDA: TWideStringField
      FieldName = 'TIPOVENDA'
      Size = 1
    end
    object zqry_VDCOMISSAOEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_VDCOMISSAODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDCOMISSAOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDCOMISSAOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDCOMISSAODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDCOMISSAOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDCOMISSAOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_EQSALDOPROD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqsaldoprod')
    Params = <>
    Left = 328
    Top = 200
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
    object zqry_EQSALDOPRODSLDPROD: TFloatField
      FieldName = 'SLDPROD'
      Required = True
    end
    object zqry_EQSALDOPRODSLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
      Required = True
    end
    object zqry_EQSALDOPRODSLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
      Required = True
    end
    object zqry_EQSALDOPRODSLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
      Required = True
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
    object zqry_EQSALDOPROD_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_PRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
    object zqry_EQSALDOPROD_CUSTOINFO: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_CUSTOINFO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CUSTOINFOPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_EQSALDOPROD_PRECOBASE: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_PRECOBASE'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'PRECOBASEPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
  end
  object zqry_EQALMOX: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqalmox')
    Params = <>
    Left = 328
    Top = 248
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
  object zqry_EQRECMERC: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM EQRECMERC')
    Params = <>
    Left = 328
    Top = 296
    object zqry_EQRECMERCCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_EQRECMERCCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_EQRECMERCTICKET: TIntegerField
      FieldName = 'TICKET'
      Required = True
    end
    object zqry_EQRECMERCPLACAVEICULO: TWideStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object zqry_EQRECMERCCODEMPPD: TIntegerField
      FieldName = 'CODEMPPD'
    end
    object zqry_EQRECMERCCODFILIALPD: TSmallintField
      FieldName = 'CODFILIALPD'
    end
    object zqry_EQRECMERCCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object zqry_EQRECMERCREFPROD: TWideStringField
      FieldName = 'REFPROD'
    end
    object zqry_EQRECMERCCODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
    end
    object zqry_EQRECMERCCODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
    end
    object zqry_EQRECMERCCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_EQRECMERCCODEMPTR: TIntegerField
      FieldName = 'CODEMPTR'
      Required = True
    end
    object zqry_EQRECMERCCODFILIALTR: TSmallintField
      FieldName = 'CODFILIALTR'
      Required = True
    end
    object zqry_EQRECMERCCODTIPORECMERC: TIntegerField
      FieldName = 'CODTIPORECMERC'
      Required = True
    end
    object zqry_EQRECMERCCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_EQRECMERCCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_EQRECMERCCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_EQRECMERCIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_EQRECMERCCODBAIRRO: TIntegerField
      FieldName = 'CODBAIRRO'
    end
    object zqry_EQRECMERCCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_EQRECMERCSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_EQRECMERCCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_EQRECMERCSTATUS: TWideStringField
      FieldName = 'STATUS'
      Required = True
      Size = 2
    end
    object zqry_EQRECMERCTIPOFRETE: TWideStringField
      FieldName = 'TIPOFRETE'
      Required = True
      Size = 1
    end
    object zqry_EQRECMERCDTENT: TDateField
      FieldName = 'DTENT'
      Required = True
    end
    object zqry_EQRECMERCDTPREVRET: TDateField
      FieldName = 'DTPREVRET'
    end
    object zqry_EQRECMERCDOCRECMERC: TIntegerField
      FieldName = 'DOCRECMERC'
    end
    object zqry_EQRECMERCCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_EQRECMERCCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_EQRECMERCCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_EQRECMERCCODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
    end
    object zqry_EQRECMERCCODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
    end
    object zqry_EQRECMERCCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_EQRECMERCCODEMPAR: TIntegerField
      FieldName = 'CODEMPAR'
    end
    object zqry_EQRECMERCCODFILIALAR: TSmallintField
      FieldName = 'CODFILIALAR'
    end
    object zqry_EQRECMERCCODATENDREC: TIntegerField
      FieldName = 'CODATENDREC'
    end
    object zqry_EQRECMERCSOLICITANTE: TWideStringField
      FieldName = 'SOLICITANTE'
      Size = 50
    end
    object zqry_EQRECMERCMEDIAAMOSTRAGEM: TFloatField
      FieldName = 'MEDIAAMOSTRAGEM'
    end
    object zqry_EQRECMERCRENDAAMOSTRAGEM: TSmallintField
      FieldName = 'RENDAAMOSTRAGEM'
    end
    object zqry_EQRECMERCCODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
    end
    object zqry_EQRECMERCCODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
    end
    object zqry_EQRECMERCCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
    end
    object zqry_EQRECMERCOBSRECMERC: TWideStringField
      FieldName = 'OBSRECMERC'
      Size = 1000
    end
    object zqry_EQRECMERCDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object zqry_EQRECMERCEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_EQRECMERCDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_EQRECMERCHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_EQRECMERCIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_EQRECMERCDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_EQRECMERCHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_EQRECMERCPONTOREF: TWideStringField
      FieldName = 'PONTOREF'
      Size = 100
    end
    object zqry_EQRECMERCCONTATO: TWideStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object zqry_EQRECMERCDTATENDE: TDateField
      FieldName = 'DTATENDE'
    end
    object zqry_EQRECMERCNOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_EQRECMERCDTRETORNO: TDateField
      FieldName = 'DTRETORNO'
    end
    object zqry_EQRECMERCHORAATENDE: TWideStringField
      FieldName = 'HORAATENDE'
      Size = 10
    end
    object zqry_EQRECMERCHORAATENDEFIM: TWideStringField
      FieldName = 'HORAATENDEFIM'
      Size = 10
    end
  end
  object zqry_SGLICENCA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from SGLICENCA')
    Params = <>
    Left = 328
    Top = 344
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
  end
  object zqry_FNPAGAR: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from FNPAGAR ')
    Params = <>
    Left = 64
    Top = 488
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
    object zqry_FNPAGARVLRDESCPAG: TFloatField
      FieldName = 'VLRDESCPAG'
    end
    object zqry_FNPAGARVLRMULTAPAG: TFloatField
      FieldName = 'VLRMULTAPAG'
    end
    object zqry_FNPAGARVLRJUROSPAG: TFloatField
      FieldName = 'VLRJUROSPAG'
    end
    object zqry_FNPAGARVLRDEVPAG: TFloatField
      FieldName = 'VLRDEVPAG'
      Required = True
    end
    object zqry_FNPAGARVLRPARCPAG: TFloatField
      FieldName = 'VLRPARCPAG'
      Required = True
      currency = True
    end
    object zqry_FNPAGARVLRPAGOPAG: TFloatField
      FieldName = 'VLRPAGOPAG'
      currency = True
    end
    object zqry_FNPAGARVLRAPAGPAG: TFloatField
      FieldName = 'VLRAPAGPAG'
      currency = True
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
    object zqry_FNPAGARVLRPAG: TFloatField
      FieldName = 'VLRPAG'
      currency = True
    end
    object zqry_FNPAGARNROPARCPAG: TIntegerField
      FieldName = 'NROPARCPAG'
    end
    object zqry_FNPAGAROBSPAG: TWideStringField
      FieldName = 'OBSPAG'
      Size = 250
    end
    object zqry_FNPAGARVLRADICPAG: TFloatField
      FieldName = 'VLRADICPAG'
      currency = True
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
    object zqry_FNPAGARVLRBASEIRRF: TFloatField
      FieldName = 'VLRBASEIRRF'
    end
    object zqry_FNPAGARVLRBASEINSS: TFloatField
      FieldName = 'VLRBASEINSS'
    end
    object zqry_FNPAGARVLRRETIRRF: TFloatField
      FieldName = 'VLRRETIRRF'
    end
    object zqry_FNPAGARVLRRETINSS: TFloatField
      FieldName = 'VLRRETINSS'
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
  end
  object zqry_FNITPAGAR: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from FNITPAGAR where codpag=:codpag')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codpag'
        ParamType = ptUnknown
      end>
    DataSource = zdts_FNPAGAR
    Left = 64
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codpag'
        ParamType = ptUnknown
      end>
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
    object zqry_FNITPAGARVLRITPAG: TFloatField
      FieldName = 'VLRITPAG'
      Required = True
      currency = True
    end
    object zqry_FNITPAGARVLRDESCITPAG: TFloatField
      FieldName = 'VLRDESCITPAG'
      currency = True
    end
    object zqry_FNITPAGARVLRMULTAITPAG: TFloatField
      FieldName = 'VLRMULTAITPAG'
    end
    object zqry_FNITPAGARVLRJUROSITPAG: TFloatField
      FieldName = 'VLRJUROSITPAG'
      currency = True
    end
    object zqry_FNITPAGARVLRDEVITPAG: TFloatField
      FieldName = 'VLRDEVITPAG'
      Required = True
      currency = True
    end
    object zqry_FNITPAGARVLRPARCITPAG: TFloatField
      FieldName = 'VLRPARCITPAG'
      Required = True
      currency = True
    end
    object zqry_FNITPAGARVLRPAGOITPAG: TFloatField
      FieldName = 'VLRPAGOITPAG'
      currency = True
    end
    object zqry_FNITPAGARVLRAPAGITPAG: TFloatField
      FieldName = 'VLRAPAGITPAG'
      currency = True
    end
    object zqry_FNITPAGARVLRADICITPAG: TFloatField
      FieldName = 'VLRADICITPAG'
    end
    object zqry_FNITPAGARVLRCANCITPAG: TFloatField
      FieldName = 'VLRCANCITPAG'
      currency = True
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
  end
  object zqry_FASTSALE: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_FASTSALE
    SQL.Strings = (
      'select * from FASTSALE')
    Params = <>
    Left = 64
    Top = 584
    object zqry_FASTSALEIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
    end
    object zqry_FASTSALEDATACADASTRO: TDateTimeField
      FieldName = 'DATACADASTRO'
    end
    object zqry_FASTSALESTATUS: TWideStringField
      FieldName = 'STATUS'
      Size = 2
    end
    object zqry_FASTSALEVALORTOTAL: TSingleField
      FieldName = 'VALORTOTAL'
      currency = True
    end
    object zqry_FASTSALECODCOMANDA: TIntegerField
      FieldName = 'CODCOMANDA'
    end
    object zqry_FASTSALECODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_FASTSALECODCUPOM: TIntegerField
      FieldName = 'CODCUPOM'
    end
    object zqry_FASTSALECODTIPOCOB: TSmallintField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_FASTSALEDESCPAG: TWideStringField
      FieldName = 'DESCPAG'
      Size = 35
    end
    object zqry_FASTSALECODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_FASTSALECODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_FASTSALEPERCDESCVENDA: TSingleField
      FieldName = 'PERCDESCVENDA'
    end
    object zqry_FASTSALEVLRDESCVENDA: TSingleField
      FieldName = 'VLRDESCVENDA'
    end
    object zqry_FASTSALEBANDEIRA: TWideStringField
      FieldName = 'BANDEIRA'
      Size = 10
    end
    object zqry_FASTSALEVALORPAGO: TSingleField
      FieldName = 'VALORPAGO'
    end
    object zqry_FASTSALEVALORTROCO: TSingleField
      FieldName = 'VALORTROCO'
    end
    object zqry_FASTSALE_ENDCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDCLI'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'ENDCLI'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object zqry_FASTSALE_NUMCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMCLI'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NUMCLI'
      KeyFields = 'CODCLI'
      Size = 10
      Lookup = True
    end
    object zqry_FASTSALE_BAIRROCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROCLI'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Lookup = True
    end
    object zqry_FASTSALE_CIDCLI: TStringField
      FieldKind = fkLookup
      FieldName = '_CIDCLI'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'BAIRCLI'
      KeyFields = 'CODCLI'
      Size = 30
      Lookup = True
    end
  end
  object zqry_ITFASTSALE: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_ITFASTSALE
    SQL.Strings = (
      'select *  from ITFASTSALE where IDFASTSALE=:IDFASTSALE')
    Params = <
      item
        DataType = ftUnknown
        Name = 'IDFASTSALE'
        ParamType = ptUnknown
      end>
    Left = 64
    Top = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDFASTSALE'
        ParamType = ptUnknown
      end>
    object zqry_ITFASTSALEID_ITFASTSALE: TIntegerField
      FieldName = 'ID_ITFASTSALE'
    end
    object zqry_ITFASTSALEIDFASTSALE: TIntegerField
      FieldName = 'IDFASTSALE'
    end
    object zqry_ITFASTSALECODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object zqry_ITFASTSALEQUANT: TSingleField
      FieldName = 'QUANT'
      DisplayFormat = '#,,,,0.000'
    end
    object zqry_ITFASTSALEITEM: TSmallintField
      FieldName = 'ITEM'
    end
    object zqry_ITFASTSALEVLRVENDA: TSingleField
      FieldName = 'VLRVENDA'
      currency = True
    end
    object zqry_ITFASTSALE_NOMEPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
    object zqry_ITFASTSALE_PRECOUNIT: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_PRECOUNIT'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'PRECOBASEPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_ITFASTSALECODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
  end
  object zqry_ESPELHO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM ESPELHO')
    Params = <>
    Left = 328
    Top = 392
    object zqry_ESPELHODTMOVPROD: TDateField
      FieldName = 'DTMOVPROD'
    end
    object zqry_ESPELHOTIPOMOV: TWideStringField
      FieldName = 'TIPOMOV'
      Size = 2
    end
    object zqry_ESPELHOCODNAT: TWideStringField
      FieldName = 'CODNAT'
      Size = 4
    end
    object zqry_ESPELHOCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_ESPELHOCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_ESPELHOCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object zqry_ESPELHODESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Size = 100
    end
    object zqry_ESPELHOCODFISC: TWideStringField
      FieldName = 'CODFISC'
      Size = 13
    end
    object zqry_ESPELHOTIPOMOVPROD: TWideStringField
      FieldName = 'TIPOMOVPROD'
      Size = 1
    end
    object zqry_ESPELHODOCMOVPROD: TIntegerField
      FieldName = 'DOCMOVPROD'
    end
    object zqry_ESPELHOCODALMOX: TIntegerField
      FieldName = 'CODALMOX'
    end
    object zqry_ESPELHOCODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
    object zqry_ESPELHOQTDMOVPROD: TFloatField
      FieldName = 'QTDMOVPROD'
    end
    object zqry_ESPELHOQTDMOVPRODENT: TFloatField
      FieldName = 'QTDMOVPRODENT'
    end
    object zqry_ESPELHOQTDMOVPRODSAI: TFloatField
      FieldName = 'QTDMOVPRODSAI'
    end
    object zqry_ESPELHOPRECOMOVPRODENT: TFloatField
      FieldName = 'PRECOMOVPRODENT'
    end
    object zqry_ESPELHOPRECOMOVPRODSAI: TFloatField
      FieldName = 'PRECOMOVPRODSAI'
    end
    object zqry_ESPELHOPRECOMEDIOMOVENT: TFloatField
      FieldName = 'PRECOMEDIOMOVENT'
    end
    object zqry_ESPELHOPRECOMEDIOMOVSAI: TFloatField
      FieldName = 'PRECOMEDIOMOVSAI'
    end
    object zqry_ESPELHOESTOQMOVPROD: TWideStringField
      FieldName = 'ESTOQMOVPROD'
      Size = 1
    end
    object zqry_ESPELHOSLDMOVPRODAX: TFloatField
      FieldName = 'SLDMOVPRODAX'
    end
    object zqry_ESPELHOTIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Size = 2
    end
    object zqry_ESPELHOCUSTOMPMMOVPRODAX: TFloatField
      FieldName = 'CUSTOMPMMOVPRODAX'
    end
    object zqry_ESPELHOSLDMOVPROD: TFloatField
      FieldName = 'SLDMOVPROD'
    end
    object zqry_ESPELHOESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object zqry_ESPELHOCUSTOMPMMOVPROD: TFloatField
      FieldName = 'CUSTOMPMMOVPROD'
    end
    object zqry_ESPELHOCODMOVPROD: TIntegerField
      FieldName = 'CODMOVPROD'
    end
    object zqry_ESPELHOCODEMPTM: TIntegerField
      FieldName = 'CODEMPTM'
    end
    object zqry_ESPELHOCODEMP: TIntegerField
      FieldName = 'CODEMP'
    end
    object zqry_ESPELHOCODFILIALTM: TSmallintField
      FieldName = 'CODFILIALTM'
    end
    object zqry_ESPELHOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
    end
    object zqry_ESPELHOCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object zqry_ESPELHONOME: TWideStringField
      FieldName = 'NOME'
      Size = 60
    end
    object zqry_ESPELHOSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object zqry_ESPELHOTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object zqry_ESPELHOTOTALENT: TFloatField
      FieldName = 'TOTALENT'
    end
    object zqry_ESPELHOTOTALSAI: TFloatField
      FieldName = 'TOTALSAI'
    end
    object zqry_ESPELHOTOTALCUSTO: TFloatField
      FieldName = 'TOTALCUSTO'
    end
    object zqry_ESPELHOTOTALCUSTOENT: TFloatField
      FieldName = 'TOTALCUSTOENT'
    end
    object zqry_ESPELHOTOTALCUSTOSAI: TFloatField
      FieldName = 'TOTALCUSTOSAI'
    end
    object zqry_ESPELHOCODMOV: TIntegerField
      FieldName = 'CODMOV'
    end
    object zqry_ESPELHOINSERIDO: TWideStringField
      FieldName = 'INSERIDO'
      Size = 8
    end
    object zqry_ESPELHOCUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
    end
    object zqry_ESPELHOPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object zqry_ESPELHOSOMAENT: TFloatField
      FieldName = 'SOMAENT'
    end
    object zqry_ESPELHOSOMASAI: TFloatField
      FieldName = 'SOMASAI'
    end
    object zqry_ESPELHOSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
  end
  object zqry_MARKUP: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      
        'SELECT P.CODPROD,P.DESCPROD,P.CODBARPROD,(((P.CUSTOINFOPROD*S.PE' +
        'RCPRECOCUSTO)/100+P.CUSTOINFOPROD)*SUM(IT.QTDITVENDA)) AS VLRCUS' +
        'TO,'
      
        'SUM(IT.QTDITVENDA) AS QTDITVENDA,SUM(IT.VLRLIQITVENDA) AS VLRLIQ' +
        'ITVENDA, SUM(IT.VLRLIQITVENDA)-(((P.CUSTOINFOPROD*S.PERCPRECOCUS' +
        'TO)/100+P.CUSTOINFOPROD)*SUM(IT.QTDITVENDA)) AS DIFERENCA'
      ''
      
        'FROM VDVENDA V,EQTIPOMOV TM,VDITVENDA IT, EQPRODUTO P, SGPREFERE' +
        '1 S'
      ''
      
        'WHERE P.CODEMP=99 AND P.CODFILIAL=1  AND IT.CODPROD=P.CODPROD AN' +
        'D V.CODVENDA=IT.CODVENDA AND S.CODEMP=P.CODEMP'
      
        'AND V.DTEMITVENDA BETWEEN '#39'02.10.2017'#39' AND '#39'02.10.2017'#39' AND V.FL' +
        'AG IN ('#39'S'#39','#39'N'#39')'
      
        'AND TM.FISCALTIPOMOV IN ('#39'S'#39','#39'N'#39') AND TM.SOMAVDTIPOMOV IN ('#39'S'#39','#39 +
        'N'#39') AND NOT SUBSTR(V.STATUSVENDA,1,1)='#39'C'#39
      
        'AND TM.CODEMP=V.CODEMPTM AND TM.CODFILIAL=V.CODFILIALTM AND TM.C' +
        'ODTIPOMOV=V.CODTIPOMOV'
      'AND TM.TIPOMOV IN ('#39'VD'#39','#39'VE'#39','#39'PV'#39')'
      
        'GROUP BY P.CODPROD,P.DESCPROD,P.CODBARPROD,P.CUSTOINFOPROD,S.PER' +
        'CPRECOCUSTO'
      'ORDER BY P.CODPROD,P.DESCPROD')
    Params = <>
    Left = 328
    Top = 440
    object zqry_MARKUPCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_MARKUPDESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_MARKUPCODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_MARKUPVLRCUSTO: TExtendedField
      FieldName = 'VLRCUSTO'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object zqry_MARKUPQTDITVENDA: TExtendedField
      FieldName = 'QTDITVENDA'
      ReadOnly = True
      Precision = 19
    end
    object zqry_MARKUPVLRLIQITVENDA: TExtendedField
      FieldName = 'VLRLIQITVENDA'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object zqry_MARKUPDIFERENCA: TExtendedField
      FieldName = 'DIFERENCA'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object zqry_LFNATOPER: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from LFNATOPER where codemp=:codemp order by CODNAT')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
    DataSource = zdts_SGFILIAL
    Left = 328
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end>
    object zqry_LFNATOPERCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_LFNATOPERCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_LFNATOPERCODNAT: TWideStringField
      FieldName = 'CODNAT'
      Required = True
      Size = 4
    end
    object zqry_LFNATOPERDESCNAT: TWideStringField
      FieldName = 'DESCNAT'
      Required = True
      Size = 60
    end
    object zqry_LFNATOPERIMPDTSAIDANAT: TWideStringField
      FieldName = 'IMPDTSAIDANAT'
      Required = True
      Size = 1
    end
    object zqry_LFNATOPERALIQENAT: TFloatField
      FieldName = 'ALIQENAT'
      Required = True
    end
    object zqry_LFNATOPERALIQFNAT: TFloatField
      FieldName = 'ALIQFNAT'
      Required = True
    end
    object zqry_LFNATOPERTXTNAT: TWideStringField
      FieldName = 'TXTNAT'
      Size = 500
    end
    object zqry_LFNATOPERDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_LFNATOPERHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_LFNATOPERIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_LFNATOPERDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_LFNATOPERHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_LFNATOPERIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_LFNCM: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from LFNCM ')
    Params = <>
    Left = 328
    Top = 536
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
    object zqry_LFNCMALIQNAC: TFloatField
      FieldName = 'ALIQNAC'
      Required = True
    end
    object zqry_LFNCMALIQIMP: TFloatField
      FieldName = 'ALIQIMP'
      Required = True
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
  object zqry_CPFRETECP: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM CPFRETECP WHERE CODCOMPRA=:CODCOMPRA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'CODCOMPRA'
        ParamType = ptUnknown
      end>
    DataSource = zdts_CPCOMPRA
    Left = 328
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCOMPRA'
        ParamType = ptUnknown
      end>
    object zqry_CPFRETECPCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
      Required = True
    end
    object zqry_CPFRETECPCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPFRETECPCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPFRETECPQTDFRETECP: TFloatField
      FieldName = 'QTDFRETECP'
      Required = True
    end
    object zqry_CPFRETECPPESOBRUTCP: TFloatField
      FieldName = 'PESOBRUTCP'
      Required = True
    end
    object zqry_CPFRETECPPESOLIQCP: TFloatField
      FieldName = 'PESOLIQCP'
      Required = True
    end
    object zqry_CPFRETECPCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_CPFRETECPCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
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
    object zqry_CPFRETECPVLRFRETECP: TFloatField
      FieldName = 'VLRFRETECP'
      Required = True
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
    object zqry_CPFRETECPALIQICMSFRETECP: TFloatField
      FieldName = 'ALIQICMSFRETECP'
    end
    object zqry_CPFRETECPVLRICMSFRETECP: TFloatField
      FieldName = 'VLRICMSFRETECP'
    end
    object zqry_CPFRETECPVLRSEGFRETECP: TFloatField
      FieldName = 'VLRSEGFRETECP'
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
  end
  object zqry_CPCOMPRA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from CPCOMPRA')
    Params = <>
    Left = 328
    Top = 632
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
    object zqry_CPCOMPRAPERCDESCCOMPRA: TFloatField
      FieldName = 'PERCDESCCOMPRA'
    end
    object zqry_CPCOMPRAPERCIPICOMPRA: TFloatField
      FieldName = 'PERCIPICOMPRA'
    end
    object zqry_CPCOMPRAVLRPRODCOMPRA: TFloatField
      FieldName = 'VLRPRODCOMPRA'
    end
    object zqry_CPCOMPRAVLRLIQCOMPRA: TFloatField
      FieldName = 'VLRLIQCOMPRA'
      currency = True
    end
    object zqry_CPCOMPRAVLRCOMPRA: TFloatField
      FieldName = 'VLRCOMPRA'
      currency = True
    end
    object zqry_CPCOMPRAVLRDESCCOMPRA: TFloatField
      FieldName = 'VLRDESCCOMPRA'
      currency = True
    end
    object zqry_CPCOMPRAVLRDESCITCOMPRA: TFloatField
      FieldName = 'VLRDESCITCOMPRA'
    end
    object zqry_CPCOMPRAVLRADICCOMPRA: TFloatField
      FieldName = 'VLRADICCOMPRA'
    end
    object zqry_CPCOMPRAVLRBASEICMSCOMPRA: TFloatField
      FieldName = 'VLRBASEICMSCOMPRA'
    end
    object zqry_CPCOMPRAVLRBASEICMSSTCOMPRA: TFloatField
      FieldName = 'VLRBASEICMSSTCOMPRA'
    end
    object zqry_CPCOMPRAVLRBASEIPICOMPRA: TFloatField
      FieldName = 'VLRBASEIPICOMPRA'
    end
    object zqry_CPCOMPRAVLRBASEPISCOMPRA: TFloatField
      FieldName = 'VLRBASEPISCOMPRA'
    end
    object zqry_CPCOMPRAVLRBASECOFINSCOMPRA: TFloatField
      FieldName = 'VLRBASECOFINSCOMPRA'
    end
    object zqry_CPCOMPRAVLRICMSCOMPRA: TFloatField
      FieldName = 'VLRICMSCOMPRA'
    end
    object zqry_CPCOMPRAVLRICMSSTCOMPRA: TFloatField
      FieldName = 'VLRICMSSTCOMPRA'
    end
    object zqry_CPCOMPRAVLRIPICOMPRA: TFloatField
      FieldName = 'VLRIPICOMPRA'
    end
    object zqry_CPCOMPRAVLRPISCOMPRA: TFloatField
      FieldName = 'VLRPISCOMPRA'
    end
    object zqry_CPCOMPRAVLRCOFINSCOMPRA: TFloatField
      FieldName = 'VLRCOFINSCOMPRA'
    end
    object zqry_CPCOMPRAVLRFUNRURALCOMPRA: TFloatField
      FieldName = 'VLRFUNRURALCOMPRA'
    end
    object zqry_CPCOMPRAVLRFRETECOMPRA: TFloatField
      FieldName = 'VLRFRETECOMPRA'
    end
    object zqry_CPCOMPRAVLROUTRASCOMPRA: TFloatField
      FieldName = 'VLROUTRASCOMPRA'
    end
    object zqry_CPCOMPRAVLRISENTASCOMPRA: TFloatField
      FieldName = 'VLRISENTASCOMPRA'
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
    object zqry_CPCOMPRAQTDFRETECOMPRA: TFloatField
      FieldName = 'QTDFRETECOMPRA'
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
    object zqry_CPCOMPRAVLRBASEIICOMPRA: TFloatField
      FieldName = 'VLRBASEIICOMPRA'
    end
    object zqry_CPCOMPRAVLRIICOMPRA: TFloatField
      FieldName = 'VLRIICOMPRA'
    end
    object zqry_CPCOMPRAVLRICMSDIFERIDO: TFloatField
      FieldName = 'VLRICMSDIFERIDO'
    end
    object zqry_CPCOMPRAVLRICMSDEVIDO: TFloatField
      FieldName = 'VLRICMSDEVIDO'
    end
    object zqry_CPCOMPRAVLRICMSCREDPRESUM: TFloatField
      FieldName = 'VLRICMSCREDPRESUM'
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
    object zqry_CPCOMPRAVLRISSCOMPRA: TFloatField
      FieldName = 'VLRISSCOMPRA'
    end
    object zqry_CPCOMPRANROORDEMCOMPRA: TWideStringField
      FieldName = 'NROORDEMCOMPRA'
    end
    object zqry_CPCOMPRAVLROUTRASDESP: TFloatField
      FieldName = 'VLROUTRASDESP'
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
    object zqry_CPCOMPRA_CNPJFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CNPJFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CNPJFOR'
      KeyFields = 'CODFOR'
      Lookup = True
    end
    object zqry_CPCOMPRA_IEFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_IEFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'INSCFOR'
      KeyFields = 'CODFOR'
      Size = 15
      Lookup = True
    end
    object zqry_CPCOMPRA_CPFFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CPFFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CPFFOR'
      KeyFields = 'CODFOR'
      Size = 15
      Lookup = True
    end
    object zqry_CPCOMPRA_PESSOAFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_PESSOAFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'PESSOAFOR'
      KeyFields = 'CODFOR'
      Size = 1
      Lookup = True
    end
    object zqry_CPCOMPRA_NOMEFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'NOMEFOR'
      KeyFields = 'CODFOR'
      Size = 50
      Lookup = True
    end
    object zqry_CPCOMPRA_FONEFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_FONEFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'FONEFOR'
      KeyFields = 'CODFOR'
      Size = 10
      Lookup = True
    end
    object zqry_CPCOMPRA_CEPFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CEPFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CEPFOR'
      KeyFields = 'CODFOR'
      Size = 9
      Lookup = True
    end
    object zqry_CPCOMPRA_ENDFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_ENDFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'ENDFOR'
      KeyFields = 'CODFOR'
      Size = 50
      Lookup = True
    end
    object zqry_CPCOMPRA_NUMFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_NUMFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'NUMFOR'
      KeyFields = 'CODFOR'
      Size = 5
      Lookup = True
    end
    object zqry_CPCOMPRA_COMPLFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_COMPLFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'COMPLFOR'
      KeyFields = 'CODFOR'
      Size = 5
      Lookup = True
    end
    object zqry_CPCOMPRA_BAIRROFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_BAIRROFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'BAIRFOR'
      KeyFields = 'CODFOR'
      Size = 30
      Lookup = True
    end
    object zqry_CPCOMPRA_CODMUNICFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_CODMUNICFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'CODMUNIC'
      KeyFields = 'CODFOR'
      Lookup = True
    end
    object zqry_CPCOMPRA_UFFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_UFFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'UFFOR'
      KeyFields = 'CODFOR'
      Size = 2
      Lookup = True
    end
    object zqry_CPCOMPRA_SIGLAUF: TStringField
      FieldKind = fkLookup
      FieldName = '_SIGLAUF'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'SIGLAUF'
      KeyFields = 'CODFOR'
      Size = 2
      Lookup = True
    end
    object zqry_CPCOMPRA_RAZFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_RAZFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'RAZFOR'
      KeyFields = 'CODFOR'
      Size = 50
      Lookup = True
    end
    object zqry_CPCOMPRA_TELFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_TELFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'FONEFOR'
      KeyFields = 'CODFOR'
      Size = 11
      Lookup = True
    end
    object zqry_CPCOMPRA_DDDFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_DDDFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'DDDFONEFOR'
      KeyFields = 'CODFOR'
      Size = 3
      Lookup = True
    end
    object zqry_CPCOMPRA_MAILFOR: TStringField
      FieldKind = fkLookup
      FieldName = '_MAILFOR'
      LookupDataSet = zqry_CPFORNEC
      LookupKeyFields = 'CODFOR'
      LookupResultField = 'EMAILFOR'
      KeyFields = 'CODFOR'
      Size = 100
      Lookup = True
    end
  end
  object zdts_CPFRETECP: TDataSource
    DataSet = zqry_CPFRETECP
    Left = 392
    Top = 584
  end
  object zdts_CPCOMPRA: TDataSource
    DataSet = zqry_CPCOMPRA
    Left = 392
    Top = 632
  end
  object zqry_CPITCOMPRA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from CPITCOMPRA where codcompra=:codcompra')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codcompra'
        ParamType = ptUnknown
      end>
    DataSource = zdts_CPCOMPRA
    Left = 584
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codcompra'
        ParamType = ptUnknown
      end>
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
    object zqry_CPITCOMPRAQTDITCOMPRA: TFloatField
      FieldName = 'QTDITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAQTDITCOMPRACANC: TFloatField
      FieldName = 'QTDITCOMPRACANC'
    end
    object zqry_CPITCOMPRAPRECOITCOMPRA: TFloatField
      FieldName = 'PRECOITCOMPRA'
      Required = True
      currency = True
    end
    object zqry_CPITCOMPRAPERCDESCITCOMPRA: TFloatField
      FieldName = 'PERCDESCITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRDESCITCOMPRA: TFloatField
      FieldName = 'VLRDESCITCOMPRA'
      currency = True
    end
    object zqry_CPITCOMPRAPERCICMSITCOMPRA: TFloatField
      FieldName = 'PERCICMSITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRBASEICMSITCOMPRA: TFloatField
      FieldName = 'VLRBASEICMSITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRICMSITCOMPRA: TFloatField
      FieldName = 'VLRICMSITCOMPRA'
    end
    object zqry_CPITCOMPRAPERCICMSSTITCOMPRA: TFloatField
      FieldName = 'PERCICMSSTITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAVLRBASEICMSSTITCOMPRA: TFloatField
      FieldName = 'VLRBASEICMSSTITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAVLRICMSSTITCOMPRA: TFloatField
      FieldName = 'VLRICMSSTITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAPERCIPIITCOMPRA: TFloatField
      FieldName = 'PERCIPIITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRBASEIPIITCOMPRA: TFloatField
      FieldName = 'VLRBASEIPIITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRIPIITCOMPRA: TFloatField
      FieldName = 'VLRIPIITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRBASEFUNRURALITCOMPRA: TFloatField
      FieldName = 'VLRBASEFUNRURALITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAALIQFUNRURALITCOMPRA: TFloatField
      FieldName = 'ALIQFUNRURALITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAVLRFUNRURALITCOMPRA: TFloatField
      FieldName = 'VLRFUNRURALITCOMPRA'
      Required = True
    end
    object zqry_CPITCOMPRAVLRLIQITCOMPRA: TFloatField
      FieldName = 'VLRLIQITCOMPRA'
      currency = True
    end
    object zqry_CPITCOMPRAVLRADICITCOMPRA: TFloatField
      FieldName = 'VLRADICITCOMPRA'
      currency = True
    end
    object zqry_CPITCOMPRAVLRFRETEITCOMPRA: TFloatField
      FieldName = 'VLRFRETEITCOMPRA'
      currency = True
    end
    object zqry_CPITCOMPRAVLRISENTASITCOMPRA: TFloatField
      FieldName = 'VLRISENTASITCOMPRA'
    end
    object zqry_CPITCOMPRAVLROUTRASITCOMPRA: TFloatField
      FieldName = 'VLROUTRASITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRPRODITCOMPRA: TFloatField
      FieldName = 'VLRPRODITCOMPRA'
      currency = True
    end
    object zqry_CPITCOMPRACUSTOITCOMPRA: TFloatField
      FieldName = 'CUSTOITCOMPRA'
    end
    object zqry_CPITCOMPRACUSTOVDITCOMPRA: TFloatField
      FieldName = 'CUSTOVDITCOMPRA'
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
    object zqry_CPITCOMPRADESCDI: TFloatField
      FieldName = 'DESCDI'
    end
    object zqry_CPITCOMPRAAPROVPRECO: TWideStringField
      FieldName = 'APROVPRECO'
      Size = 1
    end
    object zqry_CPITCOMPRAEMITITCOMPRA: TWideStringField
      FieldName = 'EMITITCOMPRA'
      Size = 1
    end
    object zqry_CPITCOMPRAALIQISSITCOMPRA: TFloatField
      FieldName = 'ALIQISSITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRISSITCOMPRA: TFloatField
      FieldName = 'VLRISSITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRIIITCOMPRA: TFloatField
      FieldName = 'VLRIIITCOMPRA'
    end
    object zqry_CPITCOMPRAVLRITOUTRASDESPITCOMPRA: TFloatField
      FieldName = 'VLRITOUTRASDESPITCOMPRA'
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
    object zqry_CPITCOMPRAVLRTXSISCOMEXITCOMPRA: TFloatField
      FieldName = 'VLRTXSISCOMEXITCOMPRA'
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
    object zqry_CPITCOMPRA_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_PRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
    object zqry_CPITCOMPRA_NCM: TStringField
      FieldKind = fkLookup
      FieldName = '_NCM'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODFISC'
      KeyFields = 'CODPROD'
      Size = 8
      Lookup = True
    end
    object zqry_CPITCOMPRA_UN: TStringField
      FieldKind = fkLookup
      FieldName = '_UN'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODUNID'
      KeyFields = 'CODPROD'
      Size = 2
      Lookup = True
    end
    object zqry_CPITCOMPRA_CEST: TStringField
      FieldKind = fkLookup
      FieldName = '_CEST'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CEST'
      KeyFields = 'CODPROD'
      Size = 10
      Lookup = True
    end
    object zqry_CPITCOMPRA_EAN: TStringField
      FieldKind = fkLookup
      FieldName = '_EAN'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODBARPROD'
      KeyFields = 'CODPROD'
      Size = 13
      Lookup = True
    end
  end
  object zdts_CPITCOMPRA: TDataSource
    DataSet = zqry_CPITCOMPRA
    Left = 648
    Top = 56
  end
  object zqry_CPFORNEC: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from CPFORNECED')
    Params = <>
    Left = 584
    Top = 104
    object zqry_CPFORNECCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CPFORNECCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CPFORNECCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Required = True
    end
    object zqry_CPFORNECRAZFOR: TWideStringField
      FieldName = 'RAZFOR'
      Required = True
      Size = 60
    end
    object zqry_CPFORNECCODEMPTF: TIntegerField
      FieldName = 'CODEMPTF'
      Required = True
    end
    object zqry_CPFORNECCODFILIALTF: TSmallintField
      FieldName = 'CODFILIALTF'
      Required = True
    end
    object zqry_CPFORNECCODTIPOFOR: TIntegerField
      FieldName = 'CODTIPOFOR'
      Required = True
    end
    object zqry_CPFORNECCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_CPFORNECCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_CPFORNECCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_CPFORNECCODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_CPFORNECCODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_CPFORNECCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_CPFORNECNOMEFOR: TWideStringField
      FieldName = 'NOMEFOR'
      Required = True
      Size = 50
    end
    object zqry_CPFORNECDATAFOR: TDateField
      FieldName = 'DATAFOR'
      Required = True
    end
    object zqry_CPFORNECATIVOFOR: TWideStringField
      FieldName = 'ATIVOFOR'
      Size = 1
    end
    object zqry_CPFORNECPESSOAFOR: TWideStringField
      FieldName = 'PESSOAFOR'
      Required = True
      Size = 1
    end
    object zqry_CPFORNECCNPJFOR: TWideStringField
      FieldName = 'CNPJFOR'
      Size = 14
    end
    object zqry_CPFORNECCPFFOR: TWideStringField
      FieldName = 'CPFFOR'
      Size = 11
    end
    object zqry_CPFORNECINSCFOR: TWideStringField
      FieldName = 'INSCFOR'
    end
    object zqry_CPFORNECRGFOR: TWideStringField
      FieldName = 'RGFOR'
      Size = 13
    end
    object zqry_CPFORNECENDFOR: TWideStringField
      FieldName = 'ENDFOR'
      Size = 50
    end
    object zqry_CPFORNECNUMFOR: TIntegerField
      FieldName = 'NUMFOR'
    end
    object zqry_CPFORNECCOMPLFOR: TWideStringField
      FieldName = 'COMPLFOR'
    end
    object zqry_CPFORNECBAIRFOR: TWideStringField
      FieldName = 'BAIRFOR'
      Size = 30
    end
    object zqry_CPFORNECCEPFOR: TWideStringField
      FieldName = 'CEPFOR'
      Size = 8
    end
    object zqry_CPFORNECCIDFOR: TWideStringField
      FieldName = 'CIDFOR'
      Size = 30
    end
    object zqry_CPFORNECUFFOR: TWideStringField
      FieldName = 'UFFOR'
      Size = 2
    end
    object zqry_CPFORNECCONTFOR: TWideStringField
      FieldName = 'CONTFOR'
      Size = 40
    end
    object zqry_CPFORNECFONEFOR: TWideStringField
      FieldName = 'FONEFOR'
      Size = 12
    end
    object zqry_CPFORNECFAXFOR: TWideStringField
      FieldName = 'FAXFOR'
      Size = 9
    end
    object zqry_CPFORNECAGENCIAFOR: TWideStringField
      FieldName = 'AGENCIAFOR'
      Size = 6
    end
    object zqry_CPFORNECCONTAFOR: TWideStringField
      FieldName = 'CONTAFOR'
      Size = 10
    end
    object zqry_CPFORNECEMAILFOR: TWideStringField
      FieldName = 'EMAILFOR'
      Size = 50
    end
    object zqry_CPFORNECOBSFOR: TWideStringField
      FieldName = 'OBSFOR'
      Size = 10000
    end
    object zqry_CPFORNECCELFOR: TWideStringField
      FieldName = 'CELFOR'
      Size = 9
    end
    object zqry_CPFORNECCLIFOR: TWideStringField
      FieldName = 'CLIFOR'
      Size = 1
    end
    object zqry_CPFORNECSSPFOR: TWideStringField
      FieldName = 'SSPFOR'
      Size = 10
    end
    object zqry_CPFORNECDDDFONEFOR: TWideStringField
      FieldName = 'DDDFONEFOR'
      Size = 4
    end
    object zqry_CPFORNECDDDFAXFOR: TWideStringField
      FieldName = 'DDDFAXFOR'
      Size = 4
    end
    object zqry_CPFORNECDDDCELFOR: TWideStringField
      FieldName = 'DDDCELFOR'
      Size = 4
    end
    object zqry_CPFORNECSITEFOR: TWideStringField
      FieldName = 'SITEFOR'
      Size = 50
    end
    object zqry_CPFORNECCODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_CPFORNECCODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_CPFORNECCODFORCONTAB: TWideStringField
      FieldName = 'CODFORCONTAB'
    end
    object zqry_CPFORNECCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_CPFORNECSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_CPFORNECCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_CPFORNECCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_CPFORNECCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_CPFORNECCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_CPFORNECCODEMPFF: TIntegerField
      FieldName = 'CODEMPFF'
    end
    object zqry_CPFORNECCODFILIALFF: TSmallintField
      FieldName = 'CODFILIALFF'
    end
    object zqry_CPFORNECCODFISCFOR: TIntegerField
      FieldName = 'CODFISCFOR'
    end
    object zqry_CPFORNECSUFRAMAFOR: TWideStringField
      FieldName = 'SUFRAMAFOR'
      Size = 9
    end
    object zqry_CPFORNECNRODEPENDFOR: TSmallintField
      FieldName = 'NRODEPENDFOR'
    end
    object zqry_CPFORNECINSCCONREG: TWideStringField
      FieldName = 'INSCCONREG'
      Size = 15
    end
    object zqry_CPFORNECCODEXPORTADOR: TWideStringField
      FieldName = 'CODEXPORTADOR'
    end
    object zqry_CPFORNECDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CPFORNECHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CPFORNECIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_CPFORNECDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_CPFORNECHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_CPFORNECIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_GERACUSTO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select avg(cpitcompra.precoitcompra) as custompm from cpitcompra')
    Params = <>
    Left = 584
    Top = 152
    object zqry_GERACUSTOCUSTOMPM: TFloatField
      FieldName = 'CUSTOMPM'
      ReadOnly = True
    end
  end
  object zqry_VDTIPOCLI: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select codemp, codfilial, codtipocli, desctipocli from vdtipocli')
    Params = <>
    Left = 584
    Top = 200
    object zqry_VDTIPOCLICODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDTIPOCLICODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDTIPOCLICODTIPOCLI: TIntegerField
      FieldName = 'CODTIPOCLI'
      Required = True
    end
    object zqry_VDTIPOCLIDESCTIPOCLI: TWideStringField
      FieldName = 'DESCTIPOCLI'
      Required = True
      Size = 40
    end
  end
  object zqry_FNPLANEJAMENTO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      
        'select codemp,codfilial, codplan, descplan, tipoplan, nivelplan ' +
        'from fnplanejamento')
    Params = <>
    Left = 584
    Top = 248
    object zqry_FNPLANEJAMENTOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNPLANEJAMENTOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNPLANEJAMENTOCODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Required = True
      Size = 13
    end
    object zqry_FNPLANEJAMENTODESCPLAN: TWideStringField
      FieldName = 'DESCPLAN'
      Required = True
      Size = 50
    end
    object zqry_FNPLANEJAMENTOTIPOPLAN: TWideStringField
      FieldName = 'TIPOPLAN'
      Required = True
      Size = 1
    end
    object zqry_FNPLANEJAMENTONIVELPLAN: TIntegerField
      FieldName = 'NIVELPLAN'
      Required = True
    end
  end
  object zqry_FNCC: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM FNCC')
    Params = <>
    Left = 584
    Top = 296
    object zqry_FNCCCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNCCCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNCCANOCC: TSmallintField
      FieldName = 'ANOCC'
      Required = True
    end
    object zqry_FNCCCODCC: TWideStringField
      FieldName = 'CODCC'
      Required = True
      Size = 19
    end
    object zqry_FNCCDESCCC: TWideStringField
      FieldName = 'DESCCC'
      Required = True
      Size = 50
    end
    object zqry_FNCCNIVELCC: TIntegerField
      FieldName = 'NIVELCC'
      Required = True
    end
    object zqry_FNCCCODREDCC: TIntegerField
      FieldName = 'CODREDCC'
    end
    object zqry_FNCCCODEMPSCC: TIntegerField
      FieldName = 'CODEMPSCC'
    end
    object zqry_FNCCCODFILIALSCC: TSmallintField
      FieldName = 'CODFILIALSCC'
    end
    object zqry_FNCCANOSCC: TSmallintField
      FieldName = 'ANOSCC'
    end
    object zqry_FNCCCODSUBCC: TWideStringField
      FieldName = 'CODSUBCC'
      Size = 19
    end
    object zqry_FNCCSIGLACC: TWideStringField
      FieldName = 'SIGLACC'
      Required = True
      Size = 10
    end
    object zqry_FNCCDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNCCHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNCCIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNCCDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNCCHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNCCIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zqry_FNPAGTOCOMI: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM FNPAGTOCOMI')
    Params = <>
    Left = 584
    Top = 344
    object zqry_FNPAGTOCOMICODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNPAGTOCOMICODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNPAGTOCOMICODPCOMI: TIntegerField
      FieldName = 'CODPCOMI'
      Required = True
    end
    object zqry_FNPAGTOCOMICODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
      Required = True
    end
    object zqry_FNPAGTOCOMICODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
      Required = True
    end
    object zqry_FNPAGTOCOMICODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Required = True
      Size = 13
    end
    object zqry_FNPAGTOCOMICODEMPCA: TIntegerField
      FieldName = 'CODEMPCA'
      Required = True
    end
    object zqry_FNPAGTOCOMICODFILIALCA: TSmallintField
      FieldName = 'CODFILIALCA'
      Required = True
    end
    object zqry_FNPAGTOCOMINUMCONTA: TWideStringField
      FieldName = 'NUMCONTA'
      Required = True
      Size = 10
    end
    object zqry_FNPAGTOCOMIVLRPCOMI: TFloatField
      FieldName = 'VLRPCOMI'
    end
    object zqry_FNPAGTOCOMIDOCPCOMI: TIntegerField
      FieldName = 'DOCPCOMI'
      Required = True
    end
    object zqry_FNPAGTOCOMIOBSPCOMI: TWideStringField
      FieldName = 'OBSPCOMI'
      Size = 300
    end
    object zqry_FNPAGTOCOMIDTCOMPPCOMI: TDateField
      FieldName = 'DTCOMPPCOMI'
      Required = True
    end
    object zqry_FNPAGTOCOMIDATAPCOMI: TDateField
      FieldName = 'DATAPCOMI'
      Required = True
    end
    object zqry_FNPAGTOCOMIFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNPAGTOCOMIEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNPAGTOCOMIDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNPAGTOCOMIHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNPAGTOCOMIIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNPAGTOCOMIDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNPAGTOCOMIHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNPAGTOCOMIIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNPAGTOCOMICODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNPAGTOCOMICODCC: TWideStringField
      FieldName = 'CODCC'
    end
    object zqry_FNPAGTOCOMICODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
  end
  object zqry_FNSUBLANCA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM FNSUBLANCA')
    Params = <>
    Left = 584
    Top = 392
    object zqry_FNSUBLANCACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNSUBLANCACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNSUBLANCACODLANCA: TIntegerField
      FieldName = 'CODLANCA'
      Required = True
    end
    object zqry_FNSUBLANCACODSUBLANCA: TIntegerField
      FieldName = 'CODSUBLANCA'
      Required = True
    end
    object zqry_FNSUBLANCACODEMPPN: TIntegerField
      FieldName = 'CODEMPPN'
      Required = True
    end
    object zqry_FNSUBLANCACODFILIALPN: TSmallintField
      FieldName = 'CODFILIALPN'
      Required = True
    end
    object zqry_FNSUBLANCACODPLAN: TWideStringField
      FieldName = 'CODPLAN'
      Required = True
      Size = 13
    end
    object zqry_FNSUBLANCASTATUSSUBLANCA: TWideStringField
      FieldName = 'STATUSSUBLANCA'
      Required = True
      Size = 2
    end
    object zqry_FNSUBLANCAORIGSUBLANCA: TWideStringField
      FieldName = 'ORIGSUBLANCA'
      Size = 1
    end
    object zqry_FNSUBLANCADTCOMPSUBLANCA: TDateField
      FieldName = 'DTCOMPSUBLANCA'
      Required = True
    end
    object zqry_FNSUBLANCADTPREVSUBLANCA: TDateField
      FieldName = 'DTPREVSUBLANCA'
    end
    object zqry_FNSUBLANCATIPOSUBLANCA: TWideStringField
      FieldName = 'TIPOSUBLANCA'
      Required = True
      Size = 1
    end
    object zqry_FNSUBLANCADATASUBLANCA: TDateField
      FieldName = 'DATASUBLANCA'
    end
    object zqry_FNSUBLANCAVLRSUBLANCA: TFloatField
      FieldName = 'VLRSUBLANCA'
    end
    object zqry_FNSUBLANCAFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object zqry_FNSUBLANCACODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_FNSUBLANCACODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_FNSUBLANCAANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_FNSUBLANCACODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_FNSUBLANCACODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
    end
    object zqry_FNSUBLANCACODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
    end
    object zqry_FNSUBLANCACODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_FNSUBLANCACODEMPFR: TIntegerField
      FieldName = 'CODEMPFR'
    end
    object zqry_FNSUBLANCACODFILIALFR: TSmallintField
      FieldName = 'CODFILIALFR'
    end
    object zqry_FNSUBLANCACODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object zqry_FNSUBLANCAHISTSUBLANCA: TWideStringField
      FieldName = 'HISTSUBLANCA'
      Size = 250
    end
    object zqry_FNSUBLANCACODEMPCT: TIntegerField
      FieldName = 'CODEMPCT'
    end
    object zqry_FNSUBLANCACODFILIALCT: TSmallintField
      FieldName = 'CODFILIALCT'
    end
    object zqry_FNSUBLANCACODCONTR: TIntegerField
      FieldName = 'CODCONTR'
    end
    object zqry_FNSUBLANCACODITCONTR: TSmallintField
      FieldName = 'CODITCONTR'
    end
    object zqry_FNSUBLANCACODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_FNSUBLANCACODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_FNSUBLANCACODPAG: TIntegerField
      FieldName = 'CODPAG'
    end
    object zqry_FNSUBLANCANPARCPAG: TIntegerField
      FieldName = 'NPARCPAG'
    end
    object zqry_FNSUBLANCACODEMPRC: TIntegerField
      FieldName = 'CODEMPRC'
    end
    object zqry_FNSUBLANCACODFILIALRC: TSmallintField
      FieldName = 'CODFILIALRC'
    end
    object zqry_FNSUBLANCACODREC: TIntegerField
      FieldName = 'CODREC'
    end
    object zqry_FNSUBLANCANPARCITREC: TIntegerField
      FieldName = 'NPARCITREC'
    end
    object zqry_FNSUBLANCAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_FNSUBLANCADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNSUBLANCAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNSUBLANCAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_FNSUBLANCADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNSUBLANCAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNSUBLANCAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_FNSUBLANCACODEMPEM: TIntegerField
      FieldName = 'CODEMPEM'
    end
    object zqry_FNSUBLANCACODFILIALEM: TSmallintField
      FieldName = 'CODFILIALEM'
    end
    object zqry_FNSUBLANCAMATEMPR: TIntegerField
      FieldName = 'MATEMPR'
    end
  end
  object zqry_ULTTITULO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      
        'select fn.codrec,max(it.dtvencitrec), fn.vlrrec, vd.razcli from ' +
        'fnreceber fn'
      'inner join fnitreceber it on fn.codrec=it.codrec'
      'inner join vdcliente vd on fn.codcli=vd.codcli'
      
        'where it.vlrpagoitrec=0.00 and fn.codemp=99 and fn.codfilial=1 a' +
        'nd it.codemp=fn.codemp and vd.codemp=fn.codemp'
      'group by fn.codrec,vd.razcli, fn.vlrrec')
    Params = <>
    Left = 584
    Top = 440
    object zqry_ULTTITULOCODREC: TIntegerField
      FieldName = 'CODREC'
      Required = True
    end
    object zqry_ULTTITULOMAX: TDateField
      FieldName = 'MAX'
      ReadOnly = True
    end
    object zqry_ULTTITULOVLRREC: TFloatField
      FieldName = 'VLRREC'
      Required = True
    end
    object zqry_ULTTITULORAZCLI: TWideStringField
      FieldName = 'RAZCLI'
      Required = True
      Size = 60
    end
  end
  object zqry_EQMOVPROD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqmovprod')
    Params = <>
    Left = 584
    Top = 488
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
    object zqry_EQMOVPRODQTDMOVPROD: TFloatField
      FieldName = 'QTDMOVPROD'
      Required = True
    end
    object zqry_EQMOVPRODPRECOMOVPROD: TFloatField
      FieldName = 'PRECOMOVPROD'
    end
    object zqry_EQMOVPRODCUSTOMPMMOVPROD: TFloatField
      FieldName = 'CUSTOMPMMOVPROD'
    end
    object zqry_EQMOVPRODCUSTOMPMMOVPRODAX: TFloatField
      FieldName = 'CUSTOMPMMOVPRODAX'
    end
    object zqry_EQMOVPRODSLDMOVPROD: TFloatField
      FieldName = 'SLDMOVPROD'
    end
    object zqry_EQMOVPRODSLDMOVPRODAX: TFloatField
      FieldName = 'SLDMOVPRODAX'
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
  object zqry_ESPMOVPROD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM ESPMOVPROD')
    Params = <>
    Left = 584
    Top = 536
    object zqry_ESPMOVPRODCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object zqry_ESPMOVPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
    end
    object zqry_ESPMOVPRODDTMOVPROD: TDateField
      FieldName = 'DTMOVPROD'
    end
    object zqry_ESPMOVPRODCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
    end
    object zqry_ESPMOVPRODCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
    end
    object zqry_ESPMOVPRODTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object zqry_ESPMOVPRODQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object zqry_ESPMOVPRODSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object zqry_ESPMOVPRODCFOP: TWideStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object zqry_ESPMOVPRODCODCOMPRA: TIntegerField
      FieldName = 'CODCOMPRA'
    end
    object zqry_ESPMOVPRODCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_ESPMOVPRODDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object zqry_ESPMOVPRODNCM: TWideStringField
      FieldName = 'NCM'
      Size = 13
    end
    object zqry_ESPMOVPRODDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object zqry_ESPMOVPRODTIPOPRODUTO: TWideStringField
      FieldName = 'TIPOPRODUTO'
      Size = 2
    end
    object zqry_ESPMOVPRODVLRLANCAMENTO: TFloatField
      FieldName = 'VLRLANCAMENTO'
    end
    object zqry_ESPMOVPRODCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
    object zqry_ESPMOVPRODTMEMPRESA: TIntegerField
      FieldName = 'TMEMPRESA'
    end
    object zqry_ESPMOVPRODTMFILIAL: TSmallintField
      FieldName = 'TMFILIAL'
    end
    object zqry_ESPMOVPRODNOMERAZAOTIPO: TWideStringField
      FieldName = 'NOMERAZAOTIPO'
      Size = 40
    end
    object zqry_ESPMOVPRODCUSTOPRODUTO: TFloatField
      FieldName = 'CUSTOPRODUTO'
    end
    object zqry_ESPMOVPRODSALDOESTOQUE: TFloatField
      FieldName = 'SALDOESTOQUE'
    end
  end
  object zqry_LISTAPRODUTOS: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from LISTAPRODUTOS')
    Params = <>
    Left = 584
    Top = 584
    object zqry_LISTAPRODUTOSCOD: TWideStringField
      FieldName = 'COD'
      Size = 255
    end
    object zqry_LISTAPRODUTOSPRODUTO: TWideStringField
      FieldName = 'PRODUTO'
      Size = 255
    end
    object zqry_LISTAPRODUTOSNOMEFORN: TWideStringField
      FieldName = 'NOMEFORN'
      Size = 255
    end
    object zqry_LISTAPRODUTOSCODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 255
    end
  end
  object zqry_FNRESTRICAO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from fnrestricao')
    Params = <>
    Left = 328
    Top = 776
    object zqry_FNRESTRICAOCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_FNRESTRICAOCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_FNRESTRICAOCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_FNRESTRICAOSEQRESTR: TSmallintField
      FieldName = 'SEQRESTR'
      Required = True
    end
    object zqry_FNRESTRICAOCODEMPTR: TIntegerField
      FieldName = 'CODEMPTR'
      Required = True
    end
    object zqry_FNRESTRICAOCODFILIALTR: TSmallintField
      FieldName = 'CODFILIALTR'
      Required = True
    end
    object zqry_FNRESTRICAOCODTPRESTR: TIntegerField
      FieldName = 'CODTPRESTR'
      Required = True
    end
    object zqry_FNRESTRICAOSITRESTR: TWideStringField
      FieldName = 'SITRESTR'
      Required = True
      Size = 1
    end
    object zqry_FNRESTRICAODTRESTR: TDateField
      FieldName = 'DTRESTR'
      Required = True
    end
    object zqry_FNRESTRICAOOBSRESTR: TWideStringField
      FieldName = 'OBSRESTR'
      Size = 512
    end
    object zqry_FNRESTRICAODTCANCRESTR: TDateField
      FieldName = 'DTCANCRESTR'
    end
    object zqry_FNRESTRICAODTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_FNRESTRICAOHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_FNRESTRICAOIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 128
    end
    object zqry_FNRESTRICAODTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_FNRESTRICAOHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_FNRESTRICAOIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 128
    end
  end
  object zdts_FNRESTRICAO: TDataSource
    DataSet = zqry_FNRESTRICAO
    Left = 392
    Top = 776
  end
  object zupt_VDITVENDA: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM VDITVENDA'
      'WHERE'
      '  VDITVENDA.CODEMP = :OLD_CODEMP AND'
      '  VDITVENDA.CODFILIAL = :OLD_CODFILIAL AND'
      '  VDITVENDA.CODVENDA = :OLD_CODVENDA AND'
      '  VDITVENDA.CODITVENDA = :OLD_CODITVENDA')
    InsertSQL.Strings = (
      'INSERT INTO VDITVENDA'
      
        '  (CODEMP, CODFILIAL, TIPOVENDA, CODVENDA, CODITVENDA, CODEMPNT,' +
        ' CODFILIALNT, '
      
        '   CODNAT, CODEMPPD, CODFILIALPD, CODPROD, CODEMPLE, CODFILIALLE' +
        ', CODLOTE, '
      
        '   CODEMPAX, CODFILIALAX, CODALMOX, QTDITVENDA, QTDITVENDACANC, ' +
        'PRECOITVENDA, '
      
        '   PERCDESCITVENDA, VLRDESCITVENDA, PERCICMSITVENDA, VLRBASEICMS' +
        'ITVENDA, '
      
        '   VLRICMSITVENDA, PERCIPIITVENDA, VLRBASEIPIITVENDA, VLRIPIITVE' +
        'NDA, VLRLIQITVENDA, '
      
        '   PERCCOMISITVENDA, VLRCOMISITVENDA, VLRADICITVENDA, PERCISSITV' +
        'ENDA, VLRISSITVENDA, '
      
        '   VLRFRETEITVENDA, VLRPRODITVENDA, VLRISENTASITVENDA, VLROUTRAS' +
        'ITVENDA, '
      
        '   REFPROD, VLRBASEISSITVENDA, VLRBASEICMSBRUTITVENDA, VLRBASEIC' +
        'MSSTITVENDA, '
      
        '   VLRICMSSTITVENDA, VLRBASECOMISITVENDA, MARGEMVLAGRITVENDA, OB' +
        'SITVENDA, '
      
        '   ORIGFISC, CODEMPTT, CODFILIALTT, CODTRATTRIB, TIPOFISC, TIPOS' +
        'T, CODEMPME, '
      
        '   CODFILIALME, CODMENS, STRDESCITVENDA, QTDDEVITVENDA, CODEMPLG' +
        ', CODFILIALLG, '
      
        '   CODLOG, CANCITVENDA, CODEMPPE, CODFILIALPE, CODPE, DIASPE, CO' +
        'DEMPCV, '
      
        '   CODFILIALCV, CODCONV, CODEMPIF, CODFILIALIF, CODFISC, CODITFI' +
        'SC, CODEMPCP, '
      
        '   CODFILIALCP, CODCOMPRA, CODITCOMPRA, CODEMPVR, CODFILIALVR, T' +
        'IPOVENDAVR, '
      
        '   CODVENDAVR, CODITVENDAVR, CODEMPNS, CODFILIALNS, NUMSERIETMP,' +
        ' VLRBASEICMSSTRETITVENDA, '
      
        '   VLRICMSSTRETITVENDA, CALCSTCM, EMMANUT, DTINS, HINS, IDUSUINS' +
        ', DTALT, '
      '   HALT, IDUSUALT, TXTDESCITEM, DESCITEM, SOLICITANTE)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :TIPOVENDA, :CODVENDA, :CODITVENDA, :COD' +
        'EMPNT, '
      
        '   :CODFILIALNT, :CODNAT, :CODEMPPD, :CODFILIALPD, :CODPROD, :CO' +
        'DEMPLE, '
      
        '   :CODFILIALLE, :CODLOTE, :CODEMPAX, :CODFILIALAX, :CODALMOX, :' +
        'QTDITVENDA, '
      
        '   :QTDITVENDACANC, :PRECOITVENDA, :PERCDESCITVENDA, :VLRDESCITV' +
        'ENDA, :PERCICMSITVENDA, '
      
        '   :VLRBASEICMSITVENDA, :VLRICMSITVENDA, :PERCIPIITVENDA, :VLRBA' +
        'SEIPIITVENDA, '
      
        '   :VLRIPIITVENDA, :VLRLIQITVENDA, :PERCCOMISITVENDA, :VLRCOMISI' +
        'TVENDA, '
      
        '   :VLRADICITVENDA, :PERCISSITVENDA, :VLRISSITVENDA, :VLRFRETEIT' +
        'VENDA, '
      
        '   :VLRPRODITVENDA, :VLRISENTASITVENDA, :VLROUTRASITVENDA, :REFP' +
        'ROD, :VLRBASEISSITVENDA, '
      
        '   :VLRBASEICMSBRUTITVENDA, :VLRBASEICMSSTITVENDA, :VLRICMSSTITV' +
        'ENDA, :VLRBASECOMISITVENDA, '
      
        '   :MARGEMVLAGRITVENDA, :OBSITVENDA, :ORIGFISC, :CODEMPTT, :CODF' +
        'ILIALTT, '
      
        '   :CODTRATTRIB, :TIPOFISC, :TIPOST, :CODEMPME, :CODFILIALME, :C' +
        'ODMENS, '
      
        '   :STRDESCITVENDA, :QTDDEVITVENDA, :CODEMPLG, :CODFILIALLG, :CO' +
        'DLOG, :CANCITVENDA, '
      
        '   :CODEMPPE, :CODFILIALPE, :CODPE, :DIASPE, :CODEMPCV, :CODFILI' +
        'ALCV, :CODCONV, '
      
        '   :CODEMPIF, :CODFILIALIF, :CODFISC, :CODITFISC, :CODEMPCP, :CO' +
        'DFILIALCP, '
      
        '   :CODCOMPRA, :CODITCOMPRA, :CODEMPVR, :CODFILIALVR, :TIPOVENDA' +
        'VR, :CODVENDAVR, '
      
        '   :CODITVENDAVR, :CODEMPNS, :CODFILIALNS, :NUMSERIETMP, :VLRBAS' +
        'EICMSSTRETITVENDA, '
      
        '   :VLRICMSSTRETITVENDA, :CALCSTCM, :EMMANUT, :DTINS, :HINS, :ID' +
        'USUINS, '
      
        '   :DTALT, :HALT, :IDUSUALT, :TXTDESCITEM, :DESCITEM, :SOLICITAN' +
        'TE)')
    ModifySQL.Strings = (
      'UPDATE VDITVENDA SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  TIPOVENDA = :TIPOVENDA,'
      '  CODVENDA = :CODVENDA,'
      '  CODITVENDA = :CODITVENDA,'
      '  CODEMPNT = :CODEMPNT,'
      '  CODFILIALNT = :CODFILIALNT,'
      '  CODNAT = :CODNAT,'
      '  CODEMPPD = :CODEMPPD,'
      '  CODFILIALPD = :CODFILIALPD,'
      '  CODPROD = :CODPROD,'
      '  CODEMPLE = :CODEMPLE,'
      '  CODFILIALLE = :CODFILIALLE,'
      '  CODLOTE = :CODLOTE,'
      '  CODEMPAX = :CODEMPAX,'
      '  CODFILIALAX = :CODFILIALAX,'
      '  CODALMOX = :CODALMOX,'
      '  QTDITVENDA = :QTDITVENDA,'
      '  QTDITVENDACANC = :QTDITVENDACANC,'
      '  PRECOITVENDA = :PRECOITVENDA,'
      '  PERCDESCITVENDA = :PERCDESCITVENDA,'
      '  VLRDESCITVENDA = :VLRDESCITVENDA,'
      '  PERCICMSITVENDA = :PERCICMSITVENDA,'
      '  VLRBASEICMSITVENDA = :VLRBASEICMSITVENDA,'
      '  VLRICMSITVENDA = :VLRICMSITVENDA,'
      '  PERCIPIITVENDA = :PERCIPIITVENDA,'
      '  VLRBASEIPIITVENDA = :VLRBASEIPIITVENDA,'
      '  VLRIPIITVENDA = :VLRIPIITVENDA,'
      '  VLRLIQITVENDA = :VLRLIQITVENDA,'
      '  PERCCOMISITVENDA = :PERCCOMISITVENDA,'
      '  VLRCOMISITVENDA = :VLRCOMISITVENDA,'
      '  VLRADICITVENDA = :VLRADICITVENDA,'
      '  PERCISSITVENDA = :PERCISSITVENDA,'
      '  VLRISSITVENDA = :VLRISSITVENDA,'
      '  VLRFRETEITVENDA = :VLRFRETEITVENDA,'
      '  VLRPRODITVENDA = :VLRPRODITVENDA,'
      '  VLRISENTASITVENDA = :VLRISENTASITVENDA,'
      '  VLROUTRASITVENDA = :VLROUTRASITVENDA,'
      '  REFPROD = :REFPROD,'
      '  VLRBASEISSITVENDA = :VLRBASEISSITVENDA,'
      '  VLRBASEICMSBRUTITVENDA = :VLRBASEICMSBRUTITVENDA,'
      '  VLRBASEICMSSTITVENDA = :VLRBASEICMSSTITVENDA,'
      '  VLRICMSSTITVENDA = :VLRICMSSTITVENDA,'
      '  VLRBASECOMISITVENDA = :VLRBASECOMISITVENDA,'
      '  MARGEMVLAGRITVENDA = :MARGEMVLAGRITVENDA,'
      '  OBSITVENDA = :OBSITVENDA,'
      '  ORIGFISC = :ORIGFISC,'
      '  CODEMPTT = :CODEMPTT,'
      '  CODFILIALTT = :CODFILIALTT,'
      '  CODTRATTRIB = :CODTRATTRIB,'
      '  TIPOFISC = :TIPOFISC,'
      '  TIPOST = :TIPOST,'
      '  CODEMPME = :CODEMPME,'
      '  CODFILIALME = :CODFILIALME,'
      '  CODMENS = :CODMENS,'
      '  STRDESCITVENDA = :STRDESCITVENDA,'
      '  QTDDEVITVENDA = :QTDDEVITVENDA,'
      '  CODEMPLG = :CODEMPLG,'
      '  CODFILIALLG = :CODFILIALLG,'
      '  CODLOG = :CODLOG,'
      '  CANCITVENDA = :CANCITVENDA,'
      '  CODEMPPE = :CODEMPPE,'
      '  CODFILIALPE = :CODFILIALPE,'
      '  CODPE = :CODPE,'
      '  DIASPE = :DIASPE,'
      '  CODEMPCV = :CODEMPCV,'
      '  CODFILIALCV = :CODFILIALCV,'
      '  CODCONV = :CODCONV,'
      '  CODEMPIF = :CODEMPIF,'
      '  CODFILIALIF = :CODFILIALIF,'
      '  CODFISC = :CODFISC,'
      '  CODITFISC = :CODITFISC,'
      '  CODEMPCP = :CODEMPCP,'
      '  CODFILIALCP = :CODFILIALCP,'
      '  CODCOMPRA = :CODCOMPRA,'
      '  CODITCOMPRA = :CODITCOMPRA,'
      '  CODEMPVR = :CODEMPVR,'
      '  CODFILIALVR = :CODFILIALVR,'
      '  TIPOVENDAVR = :TIPOVENDAVR,'
      '  CODVENDAVR = :CODVENDAVR,'
      '  CODITVENDAVR = :CODITVENDAVR,'
      '  CODEMPNS = :CODEMPNS,'
      '  CODFILIALNS = :CODFILIALNS,'
      '  NUMSERIETMP = :NUMSERIETMP,'
      '  VLRBASEICMSSTRETITVENDA = :VLRBASEICMSSTRETITVENDA,'
      '  VLRICMSSTRETITVENDA = :VLRICMSSTRETITVENDA,'
      '  CALCSTCM = :CALCSTCM,'
      '  EMMANUT = :EMMANUT,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  TXTDESCITEM = :TXTDESCITEM,'
      '  DESCITEM = :DESCITEM,'
      '  SOLICITANTE = :SOLICITANTE'
      'WHERE'
      '  VDITVENDA.CODEMP = :OLD_CODEMP AND'
      '  VDITVENDA.CODFILIAL = :OLD_CODFILIAL AND'
      '  VDITVENDA.CODVENDA = :OLD_CODVENDA AND'
      '  VDITVENDA.CODITVENDA = :OLD_CODITVENDA')
    UseSequenceFieldForRefreshSQL = False
    Left = 1016
    Top = 152
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
        Name = 'TIPOVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALNT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODNAT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODLOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODALMOX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QTDITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QTDITVENDACANC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRECOITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCDESCITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCICMSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCIPIITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEIPIITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRIPIITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRLIQITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCCOMISITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRCOMISITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRADICITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCISSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRISSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRFRETEITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRPRODITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRISENTASITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLROUTRASITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEISSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSBRUTITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSSTITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSSTITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASECOMISITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARGEMVLAGRITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORIGFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTRATTRIB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALME'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMENS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STRDESCITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QTDDEVITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPLG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALLG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODLOG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANCITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIASPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCONV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPIF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALIF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITCOMPRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOVENDAVR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVENDAVR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITVENDAVR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPNS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALNS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMSERIETMP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRBASEICMSSTRETITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRICMSSTRETITVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CALCSTCM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMMANUT'
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
        Name = 'TXTDESCITEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCITEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SOLICITANTE'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODITVENDA'
        ParamType = ptUnknown
      end>
  end
  object zupt_FASTSALE: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM FASTSALE'
      'WHERE'
      '  FASTSALE.IDFASTSALE = :OLD_IDFASTSALE')
    InsertSQL.Strings = (
      'INSERT INTO FASTSALE'
      
        '  (IDFASTSALE, DATACADASTRO, STATUS, VALORTOTAL, CODCOMANDA, COD' +
        'CLI, CODCUPOM, '
      
        '   CODTIPOCOB, DESCPAG, CODVEND, CODPLANOPAG, PERCDESCVENDA, VLR' +
        'DESCVENDA, '
      '   BANDEIRA, VALORPAGO, VALORTROCO)'
      'VALUES'
      
        '  (:IDFASTSALE, :DATACADASTRO, :STATUS, :VALORTOTAL, :CODCOMANDA' +
        ', :CODCLI, '
      
        '   :CODCUPOM, :CODTIPOCOB, :DESCPAG, :CODVEND, :CODPLANOPAG, :PE' +
        'RCDESCVENDA, '
      '   :VLRDESCVENDA, :BANDEIRA, :VALORPAGO, :VALORTROCO)')
    ModifySQL.Strings = (
      'UPDATE FASTSALE SET'
      '  IDFASTSALE = :IDFASTSALE,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  STATUS = :STATUS,'
      '  VALORTOTAL = :VALORTOTAL,'
      '  CODCOMANDA = :CODCOMANDA,'
      '  CODCLI = :CODCLI,'
      '  CODCUPOM = :CODCUPOM,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  DESCPAG = :DESCPAG,'
      '  CODVEND = :CODVEND,'
      '  CODPLANOPAG = :CODPLANOPAG,'
      '  PERCDESCVENDA = :PERCDESCVENDA,'
      '  VLRDESCVENDA = :VLRDESCVENDA,'
      '  BANDEIRA = :BANDEIRA,'
      '  VALORPAGO = :VALORPAGO,'
      '  VALORTROCO = :VALORTROCO'
      'WHERE'
      '  FASTSALE.IDFASTSALE = :OLD_IDFASTSALE')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDFASTSALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATACADASTRO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALORTOTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCOMANDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCUPOM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCDESCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRDESCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BANDEIRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALORPAGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALORTROCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IDFASTSALE'
        ParamType = ptUnknown
      end>
  end
  object zupt_ITFASTSALE: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ITFASTSALE'
      'WHERE'
      '  ITFASTSALE.ID_ITFASTSALE = :OLD_ID_ITFASTSALE AND'
      '  ITFASTSALE.IDFASTSALE = :OLD_IDFASTSALE')
    InsertSQL.Strings = (
      'INSERT INTO ITFASTSALE'
      
        '  (ID_ITFASTSALE, IDFASTSALE, CODPROD, QUANT, VLRVENDA, ITEM, CO' +
        'DFISC)'
      'VALUES'
      
        '  (:ID_ITFASTSALE, :IDFASTSALE, :CODPROD, :QUANT, :VLRVENDA, :IT' +
        'EM, :CODFISC)')
    ModifySQL.Strings = (
      'UPDATE ITFASTSALE SET'
      '  ID_ITFASTSALE = :ID_ITFASTSALE,'
      '  IDFASTSALE = :IDFASTSALE,'
      '  CODPROD = :CODPROD,'
      '  QUANT = :QUANT,'
      '  VLRVENDA = :VLRVENDA,'
      '  ITEM = :ITEM,'
      '  CODFISC = :CODFISC'
      'WHERE'
      '  ITFASTSALE.ID_ITFASTSALE = :OLD_ID_ITFASTSALE AND'
      '  ITFASTSALE.IDFASTSALE = :OLD_IDFASTSALE')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 632
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ITFASTSALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDFASTSALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QUANT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VLRVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFISC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_ITFASTSALE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_IDFASTSALE'
        ParamType = ptUnknown
      end>
  end
  object zupt_VDCLIENTE: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM vdcliente'
      'WHERE'
      '  vdcliente.CODEMP = :OLD_CODEMP AND'
      '  vdcliente.CODFILIAL = :OLD_CODFILIAL AND'
      '  vdcliente.CODCLI = :OLD_CODCLI')
    InsertSQL.Strings = (
      'INSERT INTO vdcliente'
      
        '  (CODEMP, CODFILIAL, CODCLI, RAZCLI, NOMECLI, CODEMPCC, CODFILI' +
        'ALCC, CODCLASCLI, '
      
        '   CODEMPVD, CODFILIALVD, CODVEND, CODEMPTC, CODFILIALTC, CODTIP' +
        'OCOB, CODEMPPG, '
      
        '   CODFILIALPG, CODPLANOPAG, CODEMPTN, CODFILIALTN, CODTRAN, COD' +
        'EMPBO, '
      
        '   CODFILIALBO, CODBANCO, CODEMPSR, CODFILIALSR, CODSETOR, CODEM' +
        'PTI, CODFILIALTI, '
      
        '   CODTIPOCLI, CODTPCRED, CODFILIALTR, CODEMPTR, CODFISCCLI, COD' +
        'EMPFC, '
      
        '   CODFILIALFC, CODEMPEC, CODFILIALEC, CODTBEC, CODITTBEC, CODEM' +
        'PHP, CODFILIALHP, '
      
        '   CODHIST, CODEMPCB, CODFILIALCB, CODCARTCOB, DATACLI, PESSOACL' +
        'I, ATIVOCLI, '
      
        '   CNPJCLI, INSCCLI, CPFCLI, RGCLI, SSPCLI, ENDCLI, NUMCLI, COMP' +
        'LCLI, EDIFICIOCLI, '
      
        '   BAIRCLI, CIDCLI, UFCLI, CEPCLI, DDDCLI, FONECLI, RAMALCLI, DD' +
        'DFAXCLI, '
      
        '   FAXCLI, EMAILCLI, EMAILCOB, EMAILENT, EMAILNFECLI, CONTCLI, E' +
        'NDCOB, '
      
        '   NUMCOB, COMPLCOB, BAIRCOB, CIDCOB, UFCOB, CEPCOB, DDDFONECOB,' +
        ' FONECOB, '
      
        '   DDDFAXCOB, FAXCOB, ENDENT, NUMENT, COMPLENT, BAIRENT, CIDENT,' +
        ' UFENT, '
      
        '   CEPENT, DDDFONEENT, FONEENT, DDDFAXENT, FAXENT, DDDCELENT, CE' +
        'LENT, OBSCLI, '
      
        '   AGENCIACLI, NCONTABCOCLI, CODEMPPQ, CODFILIALPQ, CODPESQ, INC' +
        'RACLI, '
      
        '   DTINITR, DTVENCTOTR, NIRFCLI, SIMPLESCLI, DDDCELCLI, CELCLI, ' +
        'NATCLI, '
      
        '   UFNATCLI, TEMPORESCLI, APELIDOCLI, SITECLI, CODCONTDEB, CODCO' +
        'NTCRED, '
      
        '   CODCLICONTAB, FOTOCLI, IMGASSCLI, CODMUNIC, SIGLAUF, CODPAIS,' +
        ' CODMUNICENT, '
      
        '   SIGLAUFENT, CODPAISENT, CODMUNICCOB, SIGLAUFCOB, CODPAISCOB, ' +
        'CODEMPUC, '
      
        '   CODFILIALUC, CODUNIFCOD, SUFRAMACLI, PRODRURALCLI, CTOCLI, CO' +
        'DCNAE, '
      
        '   INSCMUNCLI, PERCDESCCLI, CONTCLICOB, CONTCLIENT, DESCIPI, IDE' +
        'NTCLIBCO, '
      
        '   DTNASCCLI, DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT, CONS' +
        'UMIDORCLI, '
      
        '   SITREVCLI, IDUSUREVCLI, DTREVCLI, HREVCLI, CELENTOPERADORA, C' +
        'ELENTWHATSAPP, '
      
        '   CELCLIOPERADORA, CELCLIWHATSAPP, QTDPONTOS, SALDOCREDITO, EST' +
        'CIVIL, '
      '   CODATEND, DTSYNC, SYNC)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :CODCLI, :RAZCLI, :NOMECLI, :CODEMPCC, :' +
        'CODFILIALCC, '
      
        '   :CODCLASCLI, :CODEMPVD, :CODFILIALVD, :CODVEND, :CODEMPTC, :C' +
        'ODFILIALTC, '
      
        '   :CODTIPOCOB, :CODEMPPG, :CODFILIALPG, :CODPLANOPAG, :CODEMPTN' +
        ', :CODFILIALTN, '
      
        '   :CODTRAN, :CODEMPBO, :CODFILIALBO, :CODBANCO, :CODEMPSR, :COD' +
        'FILIALSR, '
      
        '   :CODSETOR, :CODEMPTI, :CODFILIALTI, :CODTIPOCLI, :CODTPCRED, ' +
        ':CODFILIALTR, '
      
        '   :CODEMPTR, :CODFISCCLI, :CODEMPFC, :CODFILIALFC, :CODEMPEC, :' +
        'CODFILIALEC, '
      
        '   :CODTBEC, :CODITTBEC, :CODEMPHP, :CODFILIALHP, :CODHIST, :COD' +
        'EMPCB, '
      
        '   :CODFILIALCB, :CODCARTCOB, :DATACLI, :PESSOACLI, :ATIVOCLI, :' +
        'CNPJCLI, '
      
        '   :INSCCLI, :CPFCLI, :RGCLI, :SSPCLI, :ENDCLI, :NUMCLI, :COMPLC' +
        'LI, :EDIFICIOCLI, '
      
        '   :BAIRCLI, :CIDCLI, :UFCLI, :CEPCLI, :DDDCLI, :FONECLI, :RAMAL' +
        'CLI, :DDDFAXCLI, '
      
        '   :FAXCLI, :EMAILCLI, :EMAILCOB, :EMAILENT, :EMAILNFECLI, :CONT' +
        'CLI, :ENDCOB, '
      
        '   :NUMCOB, :COMPLCOB, :BAIRCOB, :CIDCOB, :UFCOB, :CEPCOB, :DDDF' +
        'ONECOB, '
      
        '   :FONECOB, :DDDFAXCOB, :FAXCOB, :ENDENT, :NUMENT, :COMPLENT, :' +
        'BAIRENT, '
      
        '   :CIDENT, :UFENT, :CEPENT, :DDDFONEENT, :FONEENT, :DDDFAXENT, ' +
        ':FAXENT, '
      
        '   :DDDCELENT, :CELENT, :OBSCLI, :AGENCIACLI, :NCONTABCOCLI, :CO' +
        'DEMPPQ, '
      
        '   :CODFILIALPQ, :CODPESQ, :INCRACLI, :DTINITR, :DTVENCTOTR, :NI' +
        'RFCLI, '
      
        '   :SIMPLESCLI, :DDDCELCLI, :CELCLI, :NATCLI, :UFNATCLI, :TEMPOR' +
        'ESCLI, '
      
        '   :APELIDOCLI, :SITECLI, :CODCONTDEB, :CODCONTCRED, :CODCLICONT' +
        'AB, :FOTOCLI, '
      
        '   :IMGASSCLI, :CODMUNIC, :SIGLAUF, :CODPAIS, :CODMUNICENT, :SIG' +
        'LAUFENT, '
      
        '   :CODPAISENT, :CODMUNICCOB, :SIGLAUFCOB, :CODPAISCOB, :CODEMPU' +
        'C, :CODFILIALUC, '
      
        '   :CODUNIFCOD, :SUFRAMACLI, :PRODRURALCLI, :CTOCLI, :CODCNAE, :' +
        'INSCMUNCLI, '
      
        '   :PERCDESCCLI, :CONTCLICOB, :CONTCLIENT, :DESCIPI, :IDENTCLIBC' +
        'O, :DTNASCCLI, '
      
        '   :DTINS, :HINS, :IDUSUINS, :DTALT, :HALT, :IDUSUALT, :CONSUMID' +
        'ORCLI, '
      
        '   :SITREVCLI, :IDUSUREVCLI, :DTREVCLI, :HREVCLI, :CELENTOPERADO' +
        'RA, :CELENTWHATSAPP, '
      
        '   :CELCLIOPERADORA, :CELCLIWHATSAPP, :QTDPONTOS, :SALDOCREDITO,' +
        ' :ESTCIVIL, '
      '   :CODATEND, :DTSYNC, :SYNC)')
    ModifySQL.Strings = (
      'UPDATE vdcliente SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CODCLI = :CODCLI,'
      '  RAZCLI = :RAZCLI,'
      '  NOMECLI = :NOMECLI,'
      '  CODEMPCC = :CODEMPCC,'
      '  CODFILIALCC = :CODFILIALCC,'
      '  CODCLASCLI = :CODCLASCLI,'
      '  CODEMPVD = :CODEMPVD,'
      '  CODFILIALVD = :CODFILIALVD,'
      '  CODVEND = :CODVEND,'
      '  CODEMPTC = :CODEMPTC,'
      '  CODFILIALTC = :CODFILIALTC,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  CODEMPPG = :CODEMPPG,'
      '  CODFILIALPG = :CODFILIALPG,'
      '  CODPLANOPAG = :CODPLANOPAG,'
      '  CODEMPTN = :CODEMPTN,'
      '  CODFILIALTN = :CODFILIALTN,'
      '  CODTRAN = :CODTRAN,'
      '  CODEMPBO = :CODEMPBO,'
      '  CODFILIALBO = :CODFILIALBO,'
      '  CODBANCO = :CODBANCO,'
      '  CODEMPSR = :CODEMPSR,'
      '  CODFILIALSR = :CODFILIALSR,'
      '  CODSETOR = :CODSETOR,'
      '  CODEMPTI = :CODEMPTI,'
      '  CODFILIALTI = :CODFILIALTI,'
      '  CODTIPOCLI = :CODTIPOCLI,'
      '  CODTPCRED = :CODTPCRED,'
      '  CODFILIALTR = :CODFILIALTR,'
      '  CODEMPTR = :CODEMPTR,'
      '  CODFISCCLI = :CODFISCCLI,'
      '  CODEMPFC = :CODEMPFC,'
      '  CODFILIALFC = :CODFILIALFC,'
      '  CODEMPEC = :CODEMPEC,'
      '  CODFILIALEC = :CODFILIALEC,'
      '  CODTBEC = :CODTBEC,'
      '  CODITTBEC = :CODITTBEC,'
      '  CODEMPHP = :CODEMPHP,'
      '  CODFILIALHP = :CODFILIALHP,'
      '  CODHIST = :CODHIST,'
      '  CODEMPCB = :CODEMPCB,'
      '  CODFILIALCB = :CODFILIALCB,'
      '  CODCARTCOB = :CODCARTCOB,'
      '  DATACLI = :DATACLI,'
      '  PESSOACLI = :PESSOACLI,'
      '  ATIVOCLI = :ATIVOCLI,'
      '  CNPJCLI = :CNPJCLI,'
      '  INSCCLI = :INSCCLI,'
      '  CPFCLI = :CPFCLI,'
      '  RGCLI = :RGCLI,'
      '  SSPCLI = :SSPCLI,'
      '  ENDCLI = :ENDCLI,'
      '  NUMCLI = :NUMCLI,'
      '  COMPLCLI = :COMPLCLI,'
      '  EDIFICIOCLI = :EDIFICIOCLI,'
      '  BAIRCLI = :BAIRCLI,'
      '  CIDCLI = :CIDCLI,'
      '  UFCLI = :UFCLI,'
      '  CEPCLI = :CEPCLI,'
      '  DDDCLI = :DDDCLI,'
      '  FONECLI = :FONECLI,'
      '  RAMALCLI = :RAMALCLI,'
      '  DDDFAXCLI = :DDDFAXCLI,'
      '  FAXCLI = :FAXCLI,'
      '  EMAILCLI = :EMAILCLI,'
      '  EMAILCOB = :EMAILCOB,'
      '  EMAILENT = :EMAILENT,'
      '  EMAILNFECLI = :EMAILNFECLI,'
      '  CONTCLI = :CONTCLI,'
      '  ENDCOB = :ENDCOB,'
      '  NUMCOB = :NUMCOB,'
      '  COMPLCOB = :COMPLCOB,'
      '  BAIRCOB = :BAIRCOB,'
      '  CIDCOB = :CIDCOB,'
      '  UFCOB = :UFCOB,'
      '  CEPCOB = :CEPCOB,'
      '  DDDFONECOB = :DDDFONECOB,'
      '  FONECOB = :FONECOB,'
      '  DDDFAXCOB = :DDDFAXCOB,'
      '  FAXCOB = :FAXCOB,'
      '  ENDENT = :ENDENT,'
      '  NUMENT = :NUMENT,'
      '  COMPLENT = :COMPLENT,'
      '  BAIRENT = :BAIRENT,'
      '  CIDENT = :CIDENT,'
      '  UFENT = :UFENT,'
      '  CEPENT = :CEPENT,'
      '  DDDFONEENT = :DDDFONEENT,'
      '  FONEENT = :FONEENT,'
      '  DDDFAXENT = :DDDFAXENT,'
      '  FAXENT = :FAXENT,'
      '  DDDCELENT = :DDDCELENT,'
      '  CELENT = :CELENT,'
      '  OBSCLI = :OBSCLI,'
      '  AGENCIACLI = :AGENCIACLI,'
      '  NCONTABCOCLI = :NCONTABCOCLI,'
      '  CODEMPPQ = :CODEMPPQ,'
      '  CODFILIALPQ = :CODFILIALPQ,'
      '  CODPESQ = :CODPESQ,'
      '  INCRACLI = :INCRACLI,'
      '  DTINITR = :DTINITR,'
      '  DTVENCTOTR = :DTVENCTOTR,'
      '  NIRFCLI = :NIRFCLI,'
      '  SIMPLESCLI = :SIMPLESCLI,'
      '  DDDCELCLI = :DDDCELCLI,'
      '  CELCLI = :CELCLI,'
      '  NATCLI = :NATCLI,'
      '  UFNATCLI = :UFNATCLI,'
      '  TEMPORESCLI = :TEMPORESCLI,'
      '  APELIDOCLI = :APELIDOCLI,'
      '  SITECLI = :SITECLI,'
      '  CODCONTDEB = :CODCONTDEB,'
      '  CODCONTCRED = :CODCONTCRED,'
      '  CODCLICONTAB = :CODCLICONTAB,'
      '  FOTOCLI = :FOTOCLI,'
      '  IMGASSCLI = :IMGASSCLI,'
      '  CODMUNIC = :CODMUNIC,'
      '  SIGLAUF = :SIGLAUF,'
      '  CODPAIS = :CODPAIS,'
      '  CODMUNICENT = :CODMUNICENT,'
      '  SIGLAUFENT = :SIGLAUFENT,'
      '  CODPAISENT = :CODPAISENT,'
      '  CODMUNICCOB = :CODMUNICCOB,'
      '  SIGLAUFCOB = :SIGLAUFCOB,'
      '  CODPAISCOB = :CODPAISCOB,'
      '  CODEMPUC = :CODEMPUC,'
      '  CODFILIALUC = :CODFILIALUC,'
      '  CODUNIFCOD = :CODUNIFCOD,'
      '  SUFRAMACLI = :SUFRAMACLI,'
      '  PRODRURALCLI = :PRODRURALCLI,'
      '  CTOCLI = :CTOCLI,'
      '  CODCNAE = :CODCNAE,'
      '  INSCMUNCLI = :INSCMUNCLI,'
      '  PERCDESCCLI = :PERCDESCCLI,'
      '  CONTCLICOB = :CONTCLICOB,'
      '  CONTCLIENT = :CONTCLIENT,'
      '  DESCIPI = :DESCIPI,'
      '  IDENTCLIBCO = :IDENTCLIBCO,'
      '  DTNASCCLI = :DTNASCCLI,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  CONSUMIDORCLI = :CONSUMIDORCLI,'
      '  SITREVCLI = :SITREVCLI,'
      '  IDUSUREVCLI = :IDUSUREVCLI,'
      '  DTREVCLI = :DTREVCLI,'
      '  HREVCLI = :HREVCLI,'
      '  CELENTOPERADORA = :CELENTOPERADORA,'
      '  CELENTWHATSAPP = :CELENTWHATSAPP,'
      '  CELCLIOPERADORA = :CELCLIOPERADORA,'
      '  CELCLIWHATSAPP = :CELCLIWHATSAPP,'
      '  QTDPONTOS = :QTDPONTOS,'
      '  SALDOCREDITO = :SALDOCREDITO,'
      '  ESTCIVIL = :ESTCIVIL,'
      '  CODATEND = :CODATEND,'
      '  DTSYNC = :DTSYNC,'
      '  SYNC = :SYNC'
      'WHERE'
      '  vdcliente.CODEMP = :OLD_CODEMP AND'
      '  vdcliente.CODFILIAL = :OLD_CODFILIAL AND'
      '  vdcliente.CODCLI = :OLD_CODCLI')
    UseSequenceFieldForRefreshSQL = False
    Left = 1016
    Top = 56
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
        Name = 'CODCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RAZCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLASCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALVD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPLANOPAG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTRAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODBANCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPSR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALSR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODSETOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTIPOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTPCRED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFISCCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPFC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALFC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODTBEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODITTBEC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPHP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALHP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODHIST'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCARTCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATACLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOACLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATIVOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSCCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CPFCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RGCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SSPCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPLCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EDIFICIOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIRCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIDCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UFCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEPCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FONECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RAMALCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDFAXCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAXCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAILCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAILCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAILENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAILNFECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPLCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIRCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIDCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UFCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEPCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDFONECOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FONECOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDFAXCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAXCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENDENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPLENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIRENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIDENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UFENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEPENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDFONEENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FONEENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDFAXENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAXENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDCELENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBSCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AGENCIACLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NCONTABCOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPPQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALPQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPESQ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INCRACLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINITR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTVENCTOTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NIRFCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIMPLESCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDDCELCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NATCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UFNATCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEMPORESCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APELIDOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITECLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCONTDEB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCONTCRED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCLICONTAB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOTOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMGASSCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMUNIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLAUF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPAIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMUNICENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLAUFENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPAISENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMUNICCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLAUFCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODPAISCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPUC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALUC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODUNIFCOD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUFRAMACLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODRURALCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CTOCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCNAE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INSCMUNCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PERCDESCCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTCLICOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTCLIENT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCIPI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDENTCLIBCO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTNASCCLI'
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
        Name = 'CONSUMIDORCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITREVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDUSUREVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTREVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HREVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELENTOPERADORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELENTWHATSAPP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELCLIOPERADORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CELCLIWHATSAPP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'QTDPONTOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SALDOCREDITO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTCIVIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODATEND'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTSYNC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SYNC'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODCLI'
        ParamType = ptUnknown
      end>
  end
  object zqry_VDCODCLI: TZQuery
    Connection = zCONECTA
    Params = <>
    Left = 824
    Top = 56
  end
  object zupt_FNTIPOCOB: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM FNTIPOCOB'
      'WHERE'
      '  FNTIPOCOB.CODEMP = :OLD_CODEMP AND'
      '  FNTIPOCOB.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNTIPOCOB.CODTIPOCOB = :OLD_CODTIPOCOB')
    InsertSQL.Strings = (
      'INSERT INTO FNTIPOCOB'
      
        '  (CODEMP, CODFILIAL, CODTIPOCOB, DESCTIPOCOB, TIPOFEBRABAN, TIP' +
        'OSPED, '
      
        '   DUPLCOB, OBRIGCARTCOB, CODEMPCT, CODFILIALCT, NUMCONTA, SEQTA' +
        'LAO, NRODIASCOMP, '
      '   DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT, TIPONFE)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :CODTIPOCOB, :DESCTIPOCOB, :TIPOFEBRABAN' +
        ', :TIPOSPED, '
      
        '   :DUPLCOB, :OBRIGCARTCOB, :CODEMPCT, :CODFILIALCT, :NUMCONTA, ' +
        ':SEQTALAO, '
      
        '   :NRODIASCOMP, :DTINS, :HINS, :IDUSUINS, :DTALT, :HALT, :IDUSU' +
        'ALT, :TIPONFE)')
    ModifySQL.Strings = (
      'UPDATE FNTIPOCOB SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  CODTIPOCOB = :CODTIPOCOB,'
      '  DESCTIPOCOB = :DESCTIPOCOB,'
      '  TIPOFEBRABAN = :TIPOFEBRABAN,'
      '  TIPOSPED = :TIPOSPED,'
      '  DUPLCOB = :DUPLCOB,'
      '  OBRIGCARTCOB = :OBRIGCARTCOB,'
      '  CODEMPCT = :CODEMPCT,'
      '  CODFILIALCT = :CODFILIALCT,'
      '  NUMCONTA = :NUMCONTA,'
      '  SEQTALAO = :SEQTALAO,'
      '  NRODIASCOMP = :NRODIASCOMP,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  TIPONFE = :TIPONFE'
      'WHERE'
      '  FNTIPOCOB.CODEMP = :OLD_CODEMP AND'
      '  FNTIPOCOB.CODFILIAL = :OLD_CODFILIAL AND'
      '  FNTIPOCOB.CODTIPOCOB = :OLD_CODTIPOCOB')
    UseSequenceFieldForRefreshSQL = False
    Left = 192
    Top = 200
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
        Name = 'CODTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCTIPOCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOFEBRABAN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOSPED'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DUPLCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OBRIGCARTCOB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMCONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQTALAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRODIASCOMP'
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
        Name = 'TIPONFE'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODTIPOCOB'
        ParamType = ptUnknown
      end>
  end
  object zqry_PVCAIXA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from pvcaixa')
    Params = <>
    Left = 64
    Top = 776
    object zqry_PVCAIXACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_PVCAIXACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_PVCAIXACODCAIXA: TIntegerField
      FieldName = 'CODCAIXA'
      Required = True
    end
    object zqry_PVCAIXADESCCAIXA: TWideStringField
      FieldName = 'DESCCAIXA'
      Required = True
      Size = 40
    end
    object zqry_PVCAIXACODEMPET: TIntegerField
      FieldName = 'CODEMPET'
      Required = True
    end
    object zqry_PVCAIXACODFILIALET: TSmallintField
      FieldName = 'CODFILIALET'
      Required = True
    end
    object zqry_PVCAIXACODEST: TIntegerField
      FieldName = 'CODEST'
      Required = True
    end
    object zqry_PVCAIXASEQINI: TIntegerField
      FieldName = 'SEQINI'
    end
    object zqry_PVCAIXASEQMAX: TIntegerField
      FieldName = 'SEQMAX'
    end
    object zqry_PVCAIXAECFCAIXA: TWideStringField
      FieldName = 'ECFCAIXA'
      Required = True
      Size = 1
    end
    object zqry_PVCAIXATEFCAIXA: TWideStringField
      FieldName = 'TEFCAIXA'
      Size = 1
    end
    object zqry_PVCAIXAORCCAIXA: TWideStringField
      FieldName = 'ORCCAIXA'
      Required = True
      Size = 1
    end
    object zqry_PVCAIXAMODODEMO: TWideStringField
      FieldName = 'MODODEMO'
      Required = True
      Size = 1
    end
    object zqry_PVCAIXADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_PVCAIXAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_PVCAIXAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_PVCAIXADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_PVCAIXAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_PVCAIXAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_PVCAIXA: TDataSource
    DataSet = zqry_PVCAIXA
    Left = 128
    Top = 776
  end
  object zqry_PVMOVCAIXA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM PVMOVCAIXA')
    Params = <>
    Left = 64
    Top = 824
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
    object zqry_PVMOVCAIXAVLRMOV: TFloatField
      FieldName = 'VLRMOV'
      Required = True
      currency = True
    end
    object zqry_PVMOVCAIXAVLRSLDMOV: TFloatField
      FieldName = 'VLRSLDMOV'
      currency = True
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
  end
  object zdts_PVMOVCAIXA: TDataSource
    DataSet = zqry_PVMOVCAIXA
    Left = 128
    Top = 824
  end
  object zqry_EQLOTE: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqlote')
    Params = <>
    Left = 328
    Top = 824
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
    object zqry_EQLOTESLDLOTE: TFloatField
      FieldName = 'SLDLOTE'
    end
    object zqry_EQLOTESLDRESLOTE: TFloatField
      FieldName = 'SLDRESLOTE'
    end
    object zqry_EQLOTESLDCONSIGLOTE: TFloatField
      FieldName = 'SLDCONSIGLOTE'
    end
    object zqry_EQLOTESLDLIQLOTE: TFloatField
      FieldName = 'SLDLIQLOTE'
    end
    object zqry_EQLOTEQTDPRODLOTE: TFloatField
      FieldName = 'QTDPRODLOTE'
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
    Left = 392
    Top = 824
  end
  object zqry_VDFOTOPROD: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from vdfotoprod')
    Params = <>
    Left = 584
    Top = 824
    object zqry_VDFOTOPRODCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDFOTOPRODCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDFOTOPRODCODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_VDFOTOPRODCODFOTOPROD: TIntegerField
      FieldName = 'CODFOTOPROD'
      Required = True
    end
    object zqry_VDFOTOPRODDESCFOTOPROD: TWideStringField
      FieldName = 'DESCFOTOPROD'
      Required = True
      Size = 40
    end
    object zqry_VDFOTOPRODTIPOFOTOPROD: TWideStringField
      FieldName = 'TIPOFOTOPROD'
      Required = True
      Size = 1
    end
    object zqry_VDFOTOPRODLARGFOTOPROD: TIntegerField
      FieldName = 'LARGFOTOPROD'
      Required = True
    end
    object zqry_VDFOTOPRODALTFOTOPROD: TIntegerField
      FieldName = 'ALTFOTOPROD'
      Required = True
    end
    object zqry_VDFOTOPRODFOTOPROD: TBlobField
      FieldName = 'FOTOPROD'
      Required = True
    end
    object zqry_VDFOTOPRODDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDFOTOPRODHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDFOTOPRODIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDFOTOPRODDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDFOTOPRODHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDFOTOPRODIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
  end
  object zdts_VDFOTOPROD: TDataSource
    DataSet = zqry_VDFOTOPROD
    Left = 648
    Top = 824
  end
  object zqry_SGESTACAO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from sgestacao')
    Params = <>
    Left = 888
    Top = 824
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
    object zqry_SGESTACAOATIVAEST: TWideStringField
      FieldName = 'ATIVAEST'
      Required = True
      Size = 1
    end
    object zqry_SGESTACAOHOSTEST: TWideStringField
      FieldName = 'HOSTEST'
      Size = 100
    end
    object zqry_SGESTACAOIPEST: TWideStringField
      FieldName = 'IPEST'
    end
    object zqry_SGESTACAOMACADDRESSEST: TWideStringField
      FieldName = 'MACADDRESSEST'
    end
    object zqry_SGESTACAODESCLOCALEST: TWideStringField
      FieldName = 'DESCLOCALEST'
      Size = 1000
    end
    object zqry_SGESTACAONOMECONTEST: TWideStringField
      FieldName = 'NOMECONTEST'
      Size = 50
    end
    object zqry_SGESTACAORAMALEST: TWideStringField
      FieldName = 'RAMALEST'
      Size = 10
    end
    object zqry_SGESTACAOEMAILEST: TWideStringField
      FieldName = 'EMAILEST'
      Size = 80
    end
    object zqry_SGESTACAOPATHPDFREADER: TWideStringField
      FieldName = 'PATHPDFREADER'
      Size = 256
    end
    object zqry_SGESTACAOPRINTPDF: TWideStringField
      FieldName = 'PRINTPDF'
      Size = 30
    end
    object zqry_SGESTACAOCHAVEA: TWideStringField
      FieldName = 'CHAVEA'
      Size = 4
    end
    object zqry_SGESTACAOCHAVEB: TWideStringField
      FieldName = 'CHAVEB'
      Size = 4
    end
  end
  object zdts_SGESTACAO: TDataSource
    DataSet = zqry_SGESTACAO
    Left = 952
    Top = 824
  end
  object MySQLConectar: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    HostName = 'nonoelemento.com.br'
    Port = 3306
    Database = 'nonoelem_integra'
    User = 'nonoelem_israel'
    Password = 'px4b7470#ISA'
    Protocol = 'mysql-5'
    Left = 1112
    Top = 8
  end
  object cloud_SGLICENCAS: TZQuery
    Connection = MySQLConectar
    SQL.Strings = (
      
        'select * from sglicencas where numeroserie=:serie and publicado=' +
        ':ativo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    Left = 1104
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object cloud_SGLICENCASid_licencas: TIntegerField
      FieldName = 'id_licencas'
      Required = True
    end
    object cloud_SGLICENCASnumeroserie: TWideStringField
      FieldName = 'numeroserie'
      Required = True
      Size = 10
    end
    object cloud_SGLICENCASversao: TIntegerField
      FieldName = 'versao'
      Required = True
    end
    object cloud_SGLICENCASnomecompleto: TWideStringField
      FieldName = 'nomecompleto'
      Required = True
      Size = 50
    end
    object cloud_SGLICENCAScpf: TWideStringField
      FieldName = 'cpf'
      Required = True
      Size = 11
    end
    object cloud_SGLICENCASnomerazao: TWideStringField
      FieldName = 'nomerazao'
      Required = True
      Size = 50
    end
    object cloud_SGLICENCAScnpj: TWideStringField
      FieldName = 'cnpj'
      Required = True
      Size = 14
    end
    object cloud_SGLICENCASpublicado: TWideStringField
      FieldName = 'publicado'
      Required = True
      Size = 1
    end
    object cloud_SGLICENCASativado: TWideStringField
      FieldName = 'ativado'
      Required = True
      Size = 1
    end
    object cloud_SGLICENCASrevogado: TWideStringField
      FieldName = 'revogado'
      Required = True
      Size = 1
    end
    object cloud_SGLICENCAScadastro: TDateField
      FieldName = 'cadastro'
      Required = True
    end
    object cloud_SGLICENCASidparceiro: TIntegerField
      FieldName = 'idparceiro'
      Required = True
    end
    object cloud_SGLICENCASendereco: TWideStringField
      FieldName = 'endereco'
      Required = True
      Size = 50
    end
    object cloud_SGLICENCASbairro: TWideStringField
      FieldName = 'bairro'
      Required = True
      Size = 30
    end
    object cloud_SGLICENCAScidade: TWideStringField
      FieldName = 'cidade'
      Required = True
      Size = 30
    end
    object cloud_SGLICENCASuf: TWideStringField
      FieldName = 'uf'
      Required = True
      Size = 2
    end
    object cloud_SGLICENCAScep: TWideStringField
      FieldName = 'cep'
      Required = True
      Size = 9
    end
    object cloud_SGLICENCASemail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 50
    end
    object cloud_SGLICENCASdemonstrativo: TWideStringField
      FieldName = 'demonstrativo'
      Required = True
      Size = 1
    end
  end
  object dts_cloud_sglicencas: TDataSource
    DataSet = cloud_SGLICENCAS
    Left = 1176
    Top = 56
  end
  object cloud_SGNF: TZQuery
    Connection = MySQLConectar
    UpdateObject = zupt_cloud_SGNF
    SQL.Strings = (
      'select * from sgnf')
    Params = <>
    Left = 1104
    Top = 104
    object cloud_SGNFcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object cloud_SGNFcnpj: TWideStringField
      FieldName = 'cnpj'
      Required = True
    end
    object cloud_SGNFchave: TWideStringField
      FieldName = 'chave'
      Required = True
      Size = 44
    end
    object cloud_SGNFdata: TDateTimeField
      FieldName = 'data'
      Required = True
    end
    object cloud_SGNFsituacao: TWideStringField
      FieldName = 'situacao'
      Required = True
      Size = 30
    end
    object cloud_SGNFvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object cloud_SGNFnfce: TWideStringField
      FieldName = 'nfce'
      Required = True
      Size = 1
    end
    object cloud_SGNFcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
  end
  object dts_cloud_sgnf: TDataSource
    DataSet = cloud_SGNF
    Left = 1176
    Top = 104
  end
  object zupt_cloud_SGNF: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sgnf'
      'WHERE'
      '  sgnf.codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO sgnf'
      '  (codigo, cnpj, chave, data, situacao, valor, nfce, codemp)'
      'VALUES'
      
        '  (:codigo, :cnpj, :chave, :data, :situacao, :valor, :nfce, :cod' +
        'emp)')
    ModifySQL.Strings = (
      'UPDATE sgnf SET'
      '  codigo = :codigo,'
      '  cnpj = :cnpj,'
      '  chave = :chave,'
      '  data = :data,'
      '  situacao = :situacao,'
      '  valor = :valor,'
      '  nfce = :nfce,'
      '  codemp = :codemp'
      'WHERE'
      '  sgnf.codigo = :OLD_codigo')
    UseSequenceFieldForRefreshSQL = False
    Left = 1248
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'chave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nfce'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codemp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end>
  end
  object zqry_FNCARTCOB: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from fncartcob')
    Params = <>
    Left = 64
    Top = 872
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
    Left = 128
    Top = 872
  end
  object zqry_EQCULTURA: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_EQCULTURA
    AfterPost = zqry_EQCULTURAAfterPost
    SQL.Strings = (
      'select * from eqcultura order by cultura')
    Params = <>
    Left = 328
    Top = 872
    object zqry_EQCULTURACODCULTURA: TIntegerField
      FieldName = 'CODCULTURA'
      Required = True
    end
    object zqry_EQCULTURACULTURA: TWideStringField
      FieldName = 'CULTURA'
      Size = 50
    end
  end
  object zdts_EQCULTURA: TDataSource
    DataSet = zqry_EQCULTURA
    Left = 392
    Top = 872
  end
  object zqry_EQDIAGNOSTICO: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqdiagnostico order by nomecomum')
    Params = <>
    Left = 584
    Top = 872
    object zqry_EQDIAGNOSTICOCODDIAGNOSTICO: TIntegerField
      FieldName = 'CODDIAGNOSTICO'
      Required = True
    end
    object zqry_EQDIAGNOSTICOCODCULTURA: TIntegerField
      FieldName = 'CODCULTURA'
      Required = True
    end
    object zqry_EQDIAGNOSTICOTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object zqry_EQDIAGNOSTICONOMECOMUM: TWideStringField
      FieldName = 'NOMECOMUM'
      Size = 50
    end
    object zqry_EQDIAGNOSTICONOMECIENTIFICO: TWideStringField
      FieldName = 'NOMECIENTIFICO'
      Size = 50
    end
    object zqry_EQDIAGNOSTICOSINTOMAS: TWideStringField
      FieldName = 'SINTOMAS'
      Size = 1000
    end
    object zqry_EQDIAGNOSTICOMEDCONTROLE: TWideStringField
      FieldName = 'MEDCONTROLE'
      Size = 1000
    end
  end
  object zdts_EQDIAGNOSTICO: TDataSource
    DataSet = zqry_EQDIAGNOSTICO
    Left = 648
    Top = 872
  end
  object zupt_EQCULTURA: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM eqcultura'
      'WHERE'
      '  eqcultura.CODCULTURA = :OLD_CODCULTURA')
    InsertSQL.Strings = (
      'INSERT INTO eqcultura'
      '  (CODCULTURA, CULTURA)'
      'VALUES'
      '  (:CODCULTURA, :CULTURA)')
    ModifySQL.Strings = (
      'UPDATE eqcultura SET'
      '  CODCULTURA = :CODCULTURA,'
      '  CULTURA = :CULTURA'
      'WHERE'
      '  eqcultura.CODCULTURA = :OLD_CODCULTURA')
    UseSequenceFieldForRefreshSQL = False
    Left = 448
    Top = 872
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCULTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CULTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODCULTURA'
        ParamType = ptUnknown
      end>
  end
  object zupt_SGNF: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM SGNF'
      'WHERE'
      '  SGNF.CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'INSERT INTO SGNF'
      
        '  (CODIGO, CHAVE, DATA, HORA, UPLOAD, SITUACAO, VALOR, NUMERO, C' +
        'ODMOV, '
      '   NFCE, REFDEVOLUCAO, ENVIADO)'
      'VALUES'
      
        '  (:CODIGO, :CHAVE, :DATA, :HORA, :UPLOAD, :SITUACAO, :VALOR, :N' +
        'UMERO, '
      '   :CODMOV, :NFCE, :REFDEVOLUCAO, :ENVIADO)')
    ModifySQL.Strings = (
      'UPDATE SGNF SET'
      '  CODIGO = :CODIGO,'
      '  CHAVE = :CHAVE,'
      '  DATA = :DATA,'
      '  HORA = :HORA,'
      '  UPLOAD = :UPLOAD,'
      '  SITUACAO = :SITUACAO,'
      '  VALOR = :VALOR,'
      '  NUMERO = :NUMERO,'
      '  CODMOV = :CODMOV,'
      '  NFCE = :NFCE,'
      '  REFDEVOLUCAO = :REFDEVOLUCAO,'
      '  ENVIADO = :ENVIADO'
      'WHERE'
      '  SGNF.CODIGO = :OLD_CODIGO')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'HORA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UPLOAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SITUACAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NFCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'REFDEVOLUCAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ENVIADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_CODIGO'
        ParamType = ptUnknown
      end>
  end
  object zqry_VDRECEITA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'SELECT * FROM VDRECEITA')
    Params = <>
    Left = 888
    Top = 872
    object zqry_VDRECEITACODRECEITA: TIntegerField
      FieldName = 'CODRECEITA'
      Required = True
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
    object zqry_VDRECEITAAREATRATADA: TSingleField
      FieldName = 'AREATRATADA'
      DisplayFormat = '#,##0.000'
    end
    object zqry_VDRECEITADOSAGEM: TSingleField
      FieldName = 'DOSAGEM'
      DisplayFormat = '#,##0.000'
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
    object zqry_VDRECEITADOCVENDA: TIntegerField
      FieldName = 'DOCVENDA'
    end
    object zqry_VDRECEITA_NOMEPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMEPRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object zqry_VDRECEITA_NOMECULTURA: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECULTURA'
      LookupDataSet = zqry_EQCULTURA
      LookupKeyFields = 'CODCULTURA'
      LookupResultField = 'CULTURA'
      KeyFields = 'CODCULTURA'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_DIAGNOSTICOCOMUM: TStringField
      FieldKind = fkLookup
      FieldName = '_DIAGNOSTICOCOMUM'
      LookupDataSet = zqry_EQDIAGNOSTICO
      LookupKeyFields = 'CODDIAGNOSTICO'
      LookupResultField = 'NOMECOMUM'
      KeyFields = 'CODDIAGNOSTICO'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_NOMECLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECLIENTE'
      LookupDataSet = zqry_VDCLIENTE_REC
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'NOMECLI'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_NOMECIDADE: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMECIDADE'
      LookupDataSet = zqry_VDCLIENTE
      LookupKeyFields = 'CODCLI'
      LookupResultField = 'CIDCLI'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_INTERVALO: TStringField
      FieldKind = fkLookup
      FieldName = '_INTERVALO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'INTERVSEGUR'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object zqry_VDRECEITA_CLASSETOXICO: TStringField
      FieldKind = fkLookup
      FieldName = '_CLASSETOXICO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CLASSETOXICO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_OBSPROD: TStringField
      FieldKind = fkLookup
      FieldName = '_OBSPROD'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'OBSPROD'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object zqry_VDRECEITA_CLASSE: TStringField
      FieldKind = fkLookup
      FieldName = '_CLASSE'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CLASSE'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_CODCLASSE: TStringField
      FieldKind = fkLookup
      FieldName = '_CODCLASSE'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CODCLASSE'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object zqry_VDRECEITA_PRINCIPIOATIVO: TStringField
      FieldKind = fkLookup
      FieldName = '_PRINCIPIOATIVO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'PRINCIPIOATIVO'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object zqry_VDRECEITA_GRUPOQUIMICO: TStringField
      FieldKind = fkLookup
      FieldName = '_GRUPOQUIMICO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'GRUPOQUIMICO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_NOMETECNICO: TStringField
      FieldKind = fkLookup
      FieldName = '_NOMETECNICO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'NOMETECNICO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object zqry_VDRECEITA_ANTIDOTO: TStringField
      FieldKind = fkLookup
      FieldName = '_ANTIDOTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'ANTIDOTO'
      KeyFields = 'CODPRODUTO'
      Size = 100
      Lookup = True
    end
    object zqry_VDRECEITA_CONCENTRACAO: TStringField
      FieldKind = fkLookup
      FieldName = '_CONCENTRACAO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'CONCENTRACAO'
      KeyFields = 'CODPRODUTO'
      Size = 1000
      Lookup = True
    end
    object zqry_VDRECEITA_FORMULACAO: TStringField
      FieldKind = fkLookup
      FieldName = '_FORMULACAO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'FORMULACAO'
      KeyFields = 'CODPRODUTO'
      Size = 1000
      Lookup = True
    end
    object zqry_VDRECEITACODART: TWideStringField
      FieldName = 'CODART'
    end
  end
  object zdts_VDRECEITA: TDataSource
    DataSet = zqry_VDRECEITA
    Left = 952
    Top = 872
  end
  object zqry_VDCLIENTE_REC: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from vdcliente')
    Params = <>
    Left = 1016
    Top = 872
    object zqry_VDCLIENTE_RECCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_VDCLIENTE_RECCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_VDCLIENTE_RECCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Required = True
    end
    object zqry_VDCLIENTE_RECRAZCLI: TWideStringField
      FieldName = 'RAZCLI'
      Required = True
      Size = 60
    end
    object zqry_VDCLIENTE_RECNOMECLI: TWideStringField
      FieldName = 'NOMECLI'
      Required = True
      Size = 50
    end
    object zqry_VDCLIENTE_RECCODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_VDCLIENTE_RECCODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_VDCLIENTE_RECCODCLASCLI: TIntegerField
      FieldName = 'CODCLASCLI'
    end
    object zqry_VDCLIENTE_RECCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_VDCLIENTE_RECCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_VDCLIENTE_RECCODVEND: TIntegerField
      FieldName = 'CODVEND'
    end
    object zqry_VDCLIENTE_RECCODEMPTC: TIntegerField
      FieldName = 'CODEMPTC'
    end
    object zqry_VDCLIENTE_RECCODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_VDCLIENTE_RECCODTIPOCOB: TIntegerField
      FieldName = 'CODTIPOCOB'
    end
    object zqry_VDCLIENTE_RECCODEMPPG: TIntegerField
      FieldName = 'CODEMPPG'
    end
    object zqry_VDCLIENTE_RECCODFILIALPG: TSmallintField
      FieldName = 'CODFILIALPG'
    end
    object zqry_VDCLIENTE_RECCODPLANOPAG: TIntegerField
      FieldName = 'CODPLANOPAG'
    end
    object zqry_VDCLIENTE_RECCODEMPTN: TIntegerField
      FieldName = 'CODEMPTN'
    end
    object zqry_VDCLIENTE_RECCODFILIALTN: TSmallintField
      FieldName = 'CODFILIALTN'
    end
    object zqry_VDCLIENTE_RECCODTRAN: TIntegerField
      FieldName = 'CODTRAN'
    end
    object zqry_VDCLIENTE_RECCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
    end
    object zqry_VDCLIENTE_RECCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
    end
    object zqry_VDCLIENTE_RECCODBANCO: TWideStringField
      FieldName = 'CODBANCO'
      Size = 3
    end
    object zqry_VDCLIENTE_RECCODEMPSR: TIntegerField
      FieldName = 'CODEMPSR'
    end
    object zqry_VDCLIENTE_RECCODFILIALSR: TSmallintField
      FieldName = 'CODFILIALSR'
    end
    object zqry_VDCLIENTE_RECCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
    end
    object zqry_VDCLIENTE_RECCODEMPTI: TIntegerField
      FieldName = 'CODEMPTI'
      Required = True
    end
    object zqry_VDCLIENTE_RECCODFILIALTI: TSmallintField
      FieldName = 'CODFILIALTI'
      Required = True
    end
    object zqry_VDCLIENTE_RECCODTIPOCLI: TIntegerField
      FieldName = 'CODTIPOCLI'
      Required = True
    end
    object zqry_VDCLIENTE_RECCODTPCRED: TIntegerField
      FieldName = 'CODTPCRED'
    end
    object zqry_VDCLIENTE_RECCODFILIALTR: TIntegerField
      FieldName = 'CODFILIALTR'
    end
    object zqry_VDCLIENTE_RECCODEMPTR: TIntegerField
      FieldName = 'CODEMPTR'
    end
    object zqry_VDCLIENTE_RECCODFISCCLI: TIntegerField
      FieldName = 'CODFISCCLI'
    end
    object zqry_VDCLIENTE_RECCODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
    end
    object zqry_VDCLIENTE_RECCODFILIALFC: TIntegerField
      FieldName = 'CODFILIALFC'
    end
    object zqry_VDCLIENTE_RECCODEMPEC: TIntegerField
      FieldName = 'CODEMPEC'
    end
    object zqry_VDCLIENTE_RECCODFILIALEC: TSmallintField
      FieldName = 'CODFILIALEC'
    end
    object zqry_VDCLIENTE_RECCODTBEC: TSmallintField
      FieldName = 'CODTBEC'
    end
    object zqry_VDCLIENTE_RECCODITTBEC: TIntegerField
      FieldName = 'CODITTBEC'
    end
    object zqry_VDCLIENTE_RECCODEMPHP: TIntegerField
      FieldName = 'CODEMPHP'
    end
    object zqry_VDCLIENTE_RECCODFILIALHP: TSmallintField
      FieldName = 'CODFILIALHP'
    end
    object zqry_VDCLIENTE_RECCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object zqry_VDCLIENTE_RECCODEMPCB: TIntegerField
      FieldName = 'CODEMPCB'
    end
    object zqry_VDCLIENTE_RECCODFILIALCB: TSmallintField
      FieldName = 'CODFILIALCB'
    end
    object zqry_VDCLIENTE_RECCODCARTCOB: TWideStringField
      FieldName = 'CODCARTCOB'
      Size = 3
    end
    object zqry_VDCLIENTE_RECDATACLI: TDateField
      FieldName = 'DATACLI'
      Required = True
    end
    object zqry_VDCLIENTE_RECPESSOACLI: TWideStringField
      FieldName = 'PESSOACLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECATIVOCLI: TWideStringField
      FieldName = 'ATIVOCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECCNPJCLI: TWideStringField
      FieldName = 'CNPJCLI'
      Size = 14
    end
    object zqry_VDCLIENTE_RECINSCCLI: TWideStringField
      FieldName = 'INSCCLI'
    end
    object zqry_VDCLIENTE_RECCPFCLI: TWideStringField
      FieldName = 'CPFCLI'
      Size = 11
    end
    object zqry_VDCLIENTE_RECRGCLI: TWideStringField
      FieldName = 'RGCLI'
      Size = 13
    end
    object zqry_VDCLIENTE_RECSSPCLI: TWideStringField
      FieldName = 'SSPCLI'
      Size = 10
    end
    object zqry_VDCLIENTE_RECENDCLI: TWideStringField
      FieldName = 'ENDCLI'
      Size = 50
    end
    object zqry_VDCLIENTE_RECNUMCLI: TIntegerField
      FieldName = 'NUMCLI'
    end
    object zqry_VDCLIENTE_RECCOMPLCLI: TWideStringField
      FieldName = 'COMPLCLI'
    end
    object zqry_VDCLIENTE_RECEDIFICIOCLI: TWideStringField
      FieldName = 'EDIFICIOCLI'
      Size = 30
    end
    object zqry_VDCLIENTE_RECBAIRCLI: TWideStringField
      FieldName = 'BAIRCLI'
      Size = 30
    end
    object zqry_VDCLIENTE_RECCIDCLI: TWideStringField
      FieldName = 'CIDCLI'
      Size = 30
    end
    object zqry_VDCLIENTE_RECUFCLI: TWideStringField
      FieldName = 'UFCLI'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCEPCLI: TWideStringField
      FieldName = 'CEPCLI'
      Size = 8
    end
    object zqry_VDCLIENTE_RECDDDCLI: TWideStringField
      FieldName = 'DDDCLI'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFONECLI: TWideStringField
      FieldName = 'FONECLI'
      Size = 12
    end
    object zqry_VDCLIENTE_RECRAMALCLI: TWideStringField
      FieldName = 'RAMALCLI'
      Size = 6
    end
    object zqry_VDCLIENTE_RECDDDFAXCLI: TWideStringField
      FieldName = 'DDDFAXCLI'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFAXCLI: TWideStringField
      FieldName = 'FAXCLI'
      Size = 9
    end
    object zqry_VDCLIENTE_RECEMAILCLI: TWideStringField
      FieldName = 'EMAILCLI'
      Size = 50
    end
    object zqry_VDCLIENTE_RECEMAILCOB: TWideStringField
      FieldName = 'EMAILCOB'
      Size = 50
    end
    object zqry_VDCLIENTE_RECEMAILENT: TWideStringField
      FieldName = 'EMAILENT'
      Size = 50
    end
    object zqry_VDCLIENTE_RECEMAILNFECLI: TWideStringField
      FieldName = 'EMAILNFECLI'
      Size = 50
    end
    object zqry_VDCLIENTE_RECCONTCLI: TWideStringField
      FieldName = 'CONTCLI'
      Size = 40
    end
    object zqry_VDCLIENTE_RECENDCOB: TWideStringField
      FieldName = 'ENDCOB'
      Size = 50
    end
    object zqry_VDCLIENTE_RECNUMCOB: TIntegerField
      FieldName = 'NUMCOB'
    end
    object zqry_VDCLIENTE_RECCOMPLCOB: TWideStringField
      FieldName = 'COMPLCOB'
    end
    object zqry_VDCLIENTE_RECBAIRCOB: TWideStringField
      FieldName = 'BAIRCOB'
      Size = 30
    end
    object zqry_VDCLIENTE_RECCIDCOB: TWideStringField
      FieldName = 'CIDCOB'
      Size = 30
    end
    object zqry_VDCLIENTE_RECUFCOB: TWideStringField
      FieldName = 'UFCOB'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCEPCOB: TWideStringField
      FieldName = 'CEPCOB'
      Size = 8
    end
    object zqry_VDCLIENTE_RECDDDFONECOB: TWideStringField
      FieldName = 'DDDFONECOB'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFONECOB: TWideStringField
      FieldName = 'FONECOB'
      Size = 12
    end
    object zqry_VDCLIENTE_RECDDDFAXCOB: TWideStringField
      FieldName = 'DDDFAXCOB'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFAXCOB: TWideStringField
      FieldName = 'FAXCOB'
      Size = 9
    end
    object zqry_VDCLIENTE_RECENDENT: TWideStringField
      FieldName = 'ENDENT'
      Size = 50
    end
    object zqry_VDCLIENTE_RECNUMENT: TIntegerField
      FieldName = 'NUMENT'
    end
    object zqry_VDCLIENTE_RECCOMPLENT: TWideStringField
      FieldName = 'COMPLENT'
    end
    object zqry_VDCLIENTE_RECBAIRENT: TWideStringField
      FieldName = 'BAIRENT'
      Size = 30
    end
    object zqry_VDCLIENTE_RECCIDENT: TWideStringField
      FieldName = 'CIDENT'
      Size = 30
    end
    object zqry_VDCLIENTE_RECUFENT: TWideStringField
      FieldName = 'UFENT'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCEPENT: TWideStringField
      FieldName = 'CEPENT'
      Size = 8
    end
    object zqry_VDCLIENTE_RECDDDFONEENT: TWideStringField
      FieldName = 'DDDFONEENT'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFONEENT: TWideStringField
      FieldName = 'FONEENT'
      Size = 12
    end
    object zqry_VDCLIENTE_RECDDDFAXENT: TWideStringField
      FieldName = 'DDDFAXENT'
      Size = 4
    end
    object zqry_VDCLIENTE_RECFAXENT: TWideStringField
      FieldName = 'FAXENT'
      Size = 9
    end
    object zqry_VDCLIENTE_RECDDDCELENT: TWideStringField
      FieldName = 'DDDCELENT'
      Size = 4
    end
    object zqry_VDCLIENTE_RECCELENT: TWideStringField
      FieldName = 'CELENT'
      Size = 9
    end
    object zqry_VDCLIENTE_RECOBSCLI: TWideStringField
      FieldName = 'OBSCLI'
      Size = 10000
    end
    object zqry_VDCLIENTE_RECAGENCIACLI: TWideStringField
      FieldName = 'AGENCIACLI'
      Size = 6
    end
    object zqry_VDCLIENTE_RECNCONTABCOCLI: TWideStringField
      FieldName = 'NCONTABCOCLI'
    end
    object zqry_VDCLIENTE_RECCODEMPPQ: TIntegerField
      FieldName = 'CODEMPPQ'
    end
    object zqry_VDCLIENTE_RECCODFILIALPQ: TSmallintField
      FieldName = 'CODFILIALPQ'
    end
    object zqry_VDCLIENTE_RECCODPESQ: TIntegerField
      FieldName = 'CODPESQ'
    end
    object zqry_VDCLIENTE_RECINCRACLI: TWideStringField
      FieldName = 'INCRACLI'
      Size = 15
    end
    object zqry_VDCLIENTE_RECDTINITR: TDateField
      FieldName = 'DTINITR'
    end
    object zqry_VDCLIENTE_RECDTVENCTOTR: TDateField
      FieldName = 'DTVENCTOTR'
    end
    object zqry_VDCLIENTE_RECNIRFCLI: TWideStringField
      FieldName = 'NIRFCLI'
      Size = 15
    end
    object zqry_VDCLIENTE_RECSIMPLESCLI: TWideStringField
      FieldName = 'SIMPLESCLI'
      Size = 1
    end
    object zqry_VDCLIENTE_RECDDDCELCLI: TWideStringField
      FieldName = 'DDDCELCLI'
      Size = 4
    end
    object zqry_VDCLIENTE_RECCELCLI: TWideStringField
      FieldName = 'CELCLI'
      Size = 9
    end
    object zqry_VDCLIENTE_RECNATCLI: TWideStringField
      FieldName = 'NATCLI'
      Size = 30
    end
    object zqry_VDCLIENTE_RECUFNATCLI: TWideStringField
      FieldName = 'UFNATCLI'
      Size = 2
    end
    object zqry_VDCLIENTE_RECTEMPORESCLI: TWideStringField
      FieldName = 'TEMPORESCLI'
    end
    object zqry_VDCLIENTE_RECAPELIDOCLI: TWideStringField
      FieldName = 'APELIDOCLI'
      Size = 30
    end
    object zqry_VDCLIENTE_RECSITECLI: TWideStringField
      FieldName = 'SITECLI'
      Size = 50
    end
    object zqry_VDCLIENTE_RECCODCONTDEB: TWideStringField
      FieldName = 'CODCONTDEB'
    end
    object zqry_VDCLIENTE_RECCODCONTCRED: TWideStringField
      FieldName = 'CODCONTCRED'
    end
    object zqry_VDCLIENTE_RECCODCLICONTAB: TWideStringField
      FieldName = 'CODCLICONTAB'
    end
    object zqry_VDCLIENTE_RECFOTOCLI: TBlobField
      FieldName = 'FOTOCLI'
    end
    object zqry_VDCLIENTE_RECIMGASSCLI: TBlobField
      FieldName = 'IMGASSCLI'
    end
    object zqry_VDCLIENTE_RECCODMUNIC: TWideStringField
      FieldName = 'CODMUNIC'
      Size = 7
    end
    object zqry_VDCLIENTE_RECSIGLAUF: TWideStringField
      FieldName = 'SIGLAUF'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCODPAIS: TSmallintField
      FieldName = 'CODPAIS'
    end
    object zqry_VDCLIENTE_RECCODMUNICENT: TWideStringField
      FieldName = 'CODMUNICENT'
      Size = 7
    end
    object zqry_VDCLIENTE_RECSIGLAUFENT: TWideStringField
      FieldName = 'SIGLAUFENT'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCODPAISENT: TSmallintField
      FieldName = 'CODPAISENT'
    end
    object zqry_VDCLIENTE_RECCODMUNICCOB: TWideStringField
      FieldName = 'CODMUNICCOB'
      Size = 7
    end
    object zqry_VDCLIENTE_RECSIGLAUFCOB: TWideStringField
      FieldName = 'SIGLAUFCOB'
      Size = 2
    end
    object zqry_VDCLIENTE_RECCODPAISCOB: TSmallintField
      FieldName = 'CODPAISCOB'
    end
    object zqry_VDCLIENTE_RECCODEMPUC: TIntegerField
      FieldName = 'CODEMPUC'
    end
    object zqry_VDCLIENTE_RECCODFILIALUC: TSmallintField
      FieldName = 'CODFILIALUC'
    end
    object zqry_VDCLIENTE_RECCODUNIFCOD: TIntegerField
      FieldName = 'CODUNIFCOD'
    end
    object zqry_VDCLIENTE_RECSUFRAMACLI: TWideStringField
      FieldName = 'SUFRAMACLI'
      Size = 9
    end
    object zqry_VDCLIENTE_RECPRODRURALCLI: TWideStringField
      FieldName = 'PRODRURALCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECCTOCLI: TWideStringField
      FieldName = 'CTOCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECCODCNAE: TWideStringField
      FieldName = 'CODCNAE'
      Size = 15
    end
    object zqry_VDCLIENTE_RECINSCMUNCLI: TWideStringField
      FieldName = 'INSCMUNCLI'
    end
    object zqry_VDCLIENTE_RECPERCDESCCLI: TFloatField
      FieldName = 'PERCDESCCLI'
    end
    object zqry_VDCLIENTE_RECCONTCLICOB: TWideStringField
      FieldName = 'CONTCLICOB'
      Size = 40
    end
    object zqry_VDCLIENTE_RECCONTCLIENT: TWideStringField
      FieldName = 'CONTCLIENT'
      Size = 40
    end
    object zqry_VDCLIENTE_RECDESCIPI: TWideStringField
      FieldName = 'DESCIPI'
      Size = 1
    end
    object zqry_VDCLIENTE_RECIDENTCLIBCO: TWideStringField
      FieldName = 'IDENTCLIBCO'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECDTNASCCLI: TDateField
      FieldName = 'DTNASCCLI'
    end
    object zqry_VDCLIENTE_RECDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_VDCLIENTE_RECHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_VDCLIENTE_RECIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_VDCLIENTE_RECDTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_VDCLIENTE_RECHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_VDCLIENTE_RECIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_VDCLIENTE_RECCONSUMIDORCLI: TWideStringField
      FieldName = 'CONSUMIDORCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECSITREVCLI: TWideStringField
      FieldName = 'SITREVCLI'
      Required = True
      Size = 1
    end
    object zqry_VDCLIENTE_RECIDUSUREVCLI: TWideStringField
      FieldName = 'IDUSUREVCLI'
      Size = 128
    end
    object zqry_VDCLIENTE_RECDTREVCLI: TDateField
      FieldName = 'DTREVCLI'
    end
    object zqry_VDCLIENTE_RECHREVCLI: TTimeField
      FieldName = 'HREVCLI'
    end
    object zqry_VDCLIENTE_RECCELENTOPERADORA: TWideStringField
      FieldName = 'CELENTOPERADORA'
      Size = 10
    end
    object zqry_VDCLIENTE_RECCELENTWHATSAPP: TWideStringField
      FieldName = 'CELENTWHATSAPP'
      Size = 1
    end
    object zqry_VDCLIENTE_RECCELCLIOPERADORA: TWideStringField
      FieldName = 'CELCLIOPERADORA'
      Size = 10
    end
    object zqry_VDCLIENTE_RECCELCLIWHATSAPP: TWideStringField
      FieldName = 'CELCLIWHATSAPP'
      Size = 1
    end
    object zqry_VDCLIENTE_RECQTDPONTOS: TIntegerField
      FieldName = 'QTDPONTOS'
    end
    object zqry_VDCLIENTE_RECSALDOCREDITO: TSingleField
      FieldName = 'SALDOCREDITO'
    end
    object zqry_VDCLIENTE_RECESTCIVIL: TWideStringField
      FieldName = 'ESTCIVIL'
    end
    object zqry_VDCLIENTE_RECCODATEND: TIntegerField
      FieldName = 'CODATEND'
    end
    object zqry_VDCLIENTE_RECDTSYNC: TDateField
      FieldName = 'DTSYNC'
    end
    object zqry_VDCLIENTE_RECSYNC: TWideStringField
      FieldName = 'SYNC'
      Size = 1
    end
    object zqry_VDCLIENTE_RECCARTAORFDI: TIntegerField
      FieldName = 'CARTAORFDI'
    end
    object zqry_VDCLIENTE_RECDIAVENCTO: TIntegerField
      FieldName = 'DIAVENCTO'
    end
    object zqry_VDCLIENTE_RECINSCPRODRURAL: TIntegerField
      FieldName = 'INSCPRODRURAL'
    end
    object zqry_VDCLIENTE_RECMEIRURALCLI: TWideStringField
      FieldName = 'MEIRURALCLI'
      Size = 1
    end
    object zqry_VDCLIENTE_RECARRENDATARIO: TWideStringField
      FieldName = 'ARRENDATARIO'
      Size = 1
    end
  end
  object zdts_VDCLIENTE_REC: TDataSource
    DataSet = zqry_VDCLIENTE_REC
    Left = 1056
    Top = 872
  end
  object cloud_SGRASTREIO: TZQuery
    Connection = MySQLConectar
    UpdateObject = zupt_cloud_SGRASTREIO
    SQL.Strings = (
      'select * from sgrastreio')
    Params = <>
    Left = 1104
    Top = 152
    object cloud_SGRASTREIOcodrastreio: TIntegerField
      FieldName = 'codrastreio'
      Required = True
    end
    object cloud_SGRASTREIOdatacadastro: TDateTimeField
      FieldName = 'datacadastro'
      Required = True
    end
    object cloud_SGRASTREIOcnpjemite: TWideStringField
      FieldName = 'cnpjemite'
      Required = True
    end
    object cloud_SGRASTREIOcnpjdest: TWideStringField
      FieldName = 'cnpjdest'
      Required = True
    end
    object cloud_SGRASTREIOcodprod: TIntegerField
      FieldName = 'codprod'
      Required = True
    end
    object cloud_SGRASTREIOlote: TWideStringField
      FieldName = 'lote'
      Required = True
    end
    object cloud_SGRASTREIOqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object cloud_SGRASTREIOnumnf: TIntegerField
      FieldName = 'numnf'
      Required = True
    end
  end
  object dts_cloud_SGRASTREIO: TDataSource
    DataSet = cloud_SGRASTREIO
    Left = 1176
    Top = 152
  end
  object zupt_cloud_SGRASTREIO: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sgrastreio'
      'WHERE'
      '  sgrastreio.codrastreio = :OLD_codrastreio')
    InsertSQL.Strings = (
      'INSERT INTO sgrastreio'
      
        '  (codrastreio, datacadastro, cnpjemite, cnpjdest, codprod, lote' +
        ', qtd, '
      '   numnf)'
      'VALUES'
      
        '  (:codrastreio, :datacadastro, :cnpjemite, :cnpjdest, :codprod,' +
        ' :lote, '
      '   :qtd, :numnf)')
    ModifySQL.Strings = (
      'UPDATE sgrastreio SET'
      '  codrastreio = :codrastreio,'
      '  datacadastro = :datacadastro,'
      '  cnpjemite = :cnpjemite,'
      '  cnpjdest = :cnpjdest,'
      '  codprod = :codprod,'
      '  lote = :lote,'
      '  qtd = :qtd,'
      '  numnf = :numnf'
      'WHERE'
      '  sgrastreio.codrastreio = :OLD_codrastreio')
    UseSequenceFieldForRefreshSQL = False
    Left = 1248
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codrastreio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'datacadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpjemite'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpjdest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codprod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lote'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'numnf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codrastreio'
        ParamType = ptUnknown
      end>
  end
  object cloud_VDMAPA: TZQuery
    Connection = MySQLConectar
    SQL.Strings = (
      'select * from vdmapa')
    Params = <>
    Left = 1104
    Top = 201
    object cloud_VDMAPAidvdmapa: TIntegerField
      FieldName = 'idvdmapa'
      Required = True
    end
    object cloud_VDMAPAdatacadastro: TDateTimeField
      FieldName = 'datacadastro'
      Required = True
    end
    object cloud_VDMAPAcodemp: TIntegerField
      FieldName = 'codemp'
      Required = True
    end
    object cloud_VDMAPAcodvenda: TIntegerField
      FieldName = 'codvenda'
      Required = True
    end
    object cloud_VDMAPAdocvenda: TIntegerField
      FieldName = 'docvenda'
      Required = True
    end
    object cloud_VDMAPAcodprod: TIntegerField
      FieldName = 'codprod'
      Required = True
    end
    object cloud_VDMAPAdescprod: TWideStringField
      FieldName = 'descprod'
      Required = True
      Size = 100
    end
    object cloud_VDMAPAqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object cloud_VDMAPAcodlote: TWideStringField
      FieldName = 'codlote'
      Size = 50
    end
    object cloud_VDMAPAobs: TWideStringField
      FieldName = 'obs'
    end
    object cloud_VDMAPAfeito: TWideStringField
      FieldName = 'feito'
      Size = 1
    end
    object cloud_VDMAPAidusu: TWideStringField
      FieldName = 'idusu'
      Size = 8
    end
  end
  object dts_cloud_VDMAPA: TDataSource
    DataSet = cloud_VDMAPA
    Left = 1176
    Top = 200
  end
  object zqry_SGINICONSP: TZQuery
    Connection = zCONECTA
    Params = <>
    Left = 63
    Top = 971
  end
  object zqry_EQDEPOS: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_EQDEPOS
    SQL.Strings = (
      'SELECT * FROM EQDEPOS')
    Params = <>
    Left = 328
    Top = 920
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
    Left = 392
    Top = 920
  end
  object zupt_EQDEPOS: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM EQDEPOS'
      'WHERE'
      '  EQDEPOS.CODDEPOS = :OLD_CODDEPOS')
    InsertSQL.Strings = (
      'INSERT INTO EQDEPOS'
      
        '  (CODDEPOS, CODEMP, CODFILIAL, DESCDEPOS, CODVEND, DTINS, HINS,' +
        ' IDUSUINS, '
      '   DTALT, HALT, IDUSUALT)'
      'VALUES'
      
        '  (:CODDEPOS, :CODEMP, :CODFILIAL, :DESCDEPOS, :CODVEND, :DTINS,' +
        ' :HINS, '
      '   :IDUSUINS, :DTALT, :HALT, :IDUSUALT)')
    ModifySQL.Strings = (
      'UPDATE EQDEPOS SET'
      '  CODDEPOS = :CODDEPOS,'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  DESCDEPOS = :DESCDEPOS,'
      '  CODVEND = :CODVEND,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT'
      'WHERE'
      '  EQDEPOS.CODDEPOS = :OLD_CODDEPOS')
    UseSequenceFieldForRefreshSQL = False
    Left = 448
    Top = 920
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODDEPOS'
        ParamType = ptUnknown
      end
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
        Name = 'DESCDEPOS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODVEND'
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
        Name = 'OLD_CODDEPOS'
        ParamType = ptUnknown
      end>
  end
  object zqry_EQSALDODEPOS: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from eqsaldodepos')
    Params = <>
    Left = 584
    Top = 920
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
    object zqry_EQSALDODEPOSSLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_EQSALDODEPOSSLDLOTE: TFloatField
      FieldName = 'SLDLOTE'
    end
    object zqry_EQSALDODEPOSSLDRESLOTE: TFloatField
      FieldName = 'SLDRESLOTE'
    end
    object zqry_EQSALDODEPOSSLDLIQLOTE: TFloatField
      FieldName = 'SLDLIQLOTE'
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
    object zqry_EQSALDODEPOSCODLOTE: TWideStringField
      FieldName = 'CODLOTE'
    end
  end
  object zdts_EQSALDODEPOS: TDataSource
    DataSet = zqry_EQSALDODEPOS
    Left = 648
    Top = 920
  end
  object cloud_vdcliente: TZQuery
    Connection = MySQLConectar
    SQL.Strings = (
      'select * from vdcliente')
    Params = <>
    Left = 1104
    Top = 248
  end
  object zqry_SGUSUARIO: TZQuery
    Connection = zCONECTA
    UpdateObject = zupt_SGUSUARIO
    SQL.Strings = (
      'select * from sgusuario')
    Params = <>
    Left = 328
    Top = 968
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
    Left = 392
    Top = 968
  end
  object zupt_SGUSUARIO: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sgusuario'
      'WHERE'
      '  sgusuario.CODEMP = :OLD_CODEMP AND'
      '  sgusuario.CODFILIAL = :OLD_CODFILIAL')
    InsertSQL.Strings = (
      'INSERT INTO sgusuario'
      
        '  (CODEMP, CODFILIAL, IDUSU, NOMEUSU, CODEMPIG, CODFILIALIG, IDG' +
        'RPUSU, '
      
        '   CODEMPCC, CODFILIALCC, ANOCC, CODCC, PNOMEUSU, UNOMEUSU, COME' +
        'NTUSU, '
      
        '   BAIXOCUSTOUSU, CODALMOX, CODEMPAM, CODFILIALAM, ABREGAVETAUSU' +
        ', APROVCPSOLICITACAOUSU, '
      
        '   ALMOXARIFEUSU, CODEMPAE, CODFILIALAE, TIPOAGE, CODAGE, APROVR' +
        'MAUSU, '
      
        '   COMPRASUSU, ALTPARCVENDA, APROVRECEITA, ATIVCLI, LIBERACREDUS' +
        'U, CORAGENDA, '
      
        '   CODEMPCE, CODFILIALCE, CODCONFEMAIL, CANCELAOP, VENDAPATRIMUS' +
        'U, RMAOUTCC, '
      
        '   ATIVOUSU, VISUALIZALUCR, LIBERACAMPOPESAGEM, APROVORDCP, ACES' +
        'OPBTCADLOTE, '
      
        '   ACESOPBTRMA, ACESOPBTQUALID, ACESOPBTDISTR, ACESOPBTFASE, ACE' +
        'SOPBTCANC, '
      
        '   ACESOPBTSUBPROD, ACESOPBTREMESSA, ACESOPBTRETORNO, ACESOPVERI' +
        'TENS, CADOUTUSU, '
      
        '   DTINS, HINS, IDUSUINS, DTALT, HALT, IDUSUALT, TIPOUSU, SENHAU' +
        'SU, NIVEL, '
      '   FOTO)'
      'VALUES'
      
        '  (:CODEMP, :CODFILIAL, :IDUSU, :NOMEUSU, :CODEMPIG, :CODFILIALI' +
        'G, :IDGRPUSU, '
      
        '   :CODEMPCC, :CODFILIALCC, :ANOCC, :CODCC, :PNOMEUSU, :UNOMEUSU' +
        ', :COMENTUSU, '
      
        '   :BAIXOCUSTOUSU, :CODALMOX, :CODEMPAM, :CODFILIALAM, :ABREGAVE' +
        'TAUSU, '
      
        '   :APROVCPSOLICITACAOUSU, :ALMOXARIFEUSU, :CODEMPAE, :CODFILIAL' +
        'AE, :TIPOAGE, '
      
        '   :CODAGE, :APROVRMAUSU, :COMPRASUSU, :ALTPARCVENDA, :APROVRECE' +
        'ITA, :ATIVCLI, '
      
        '   :LIBERACREDUSU, :CORAGENDA, :CODEMPCE, :CODFILIALCE, :CODCONF' +
        'EMAIL, '
      
        '   :CANCELAOP, :VENDAPATRIMUSU, :RMAOUTCC, :ATIVOUSU, :VISUALIZA' +
        'LUCR, :LIBERACAMPOPESAGEM, '
      
        '   :APROVORDCP, :ACESOPBTCADLOTE, :ACESOPBTRMA, :ACESOPBTQUALID,' +
        ' :ACESOPBTDISTR, '
      
        '   :ACESOPBTFASE, :ACESOPBTCANC, :ACESOPBTSUBPROD, :ACESOPBTREME' +
        'SSA, :ACESOPBTRETORNO, '
      
        '   :ACESOPVERITENS, :CADOUTUSU, :DTINS, :HINS, :IDUSUINS, :DTALT' +
        ', :HALT, '
      '   :IDUSUALT, :TIPOUSU, :SENHAUSU, :NIVEL, :FOTO)')
    ModifySQL.Strings = (
      'UPDATE sgusuario SET'
      '  CODEMP = :CODEMP,'
      '  CODFILIAL = :CODFILIAL,'
      '  IDUSU = :IDUSU,'
      '  NOMEUSU = :NOMEUSU,'
      '  CODEMPIG = :CODEMPIG,'
      '  CODFILIALIG = :CODFILIALIG,'
      '  IDGRPUSU = :IDGRPUSU,'
      '  CODEMPCC = :CODEMPCC,'
      '  CODFILIALCC = :CODFILIALCC,'
      '  ANOCC = :ANOCC,'
      '  CODCC = :CODCC,'
      '  PNOMEUSU = :PNOMEUSU,'
      '  UNOMEUSU = :UNOMEUSU,'
      '  COMENTUSU = :COMENTUSU,'
      '  BAIXOCUSTOUSU = :BAIXOCUSTOUSU,'
      '  CODALMOX = :CODALMOX,'
      '  CODEMPAM = :CODEMPAM,'
      '  CODFILIALAM = :CODFILIALAM,'
      '  ABREGAVETAUSU = :ABREGAVETAUSU,'
      '  APROVCPSOLICITACAOUSU = :APROVCPSOLICITACAOUSU,'
      '  ALMOXARIFEUSU = :ALMOXARIFEUSU,'
      '  CODEMPAE = :CODEMPAE,'
      '  CODFILIALAE = :CODFILIALAE,'
      '  TIPOAGE = :TIPOAGE,'
      '  CODAGE = :CODAGE,'
      '  APROVRMAUSU = :APROVRMAUSU,'
      '  COMPRASUSU = :COMPRASUSU,'
      '  ALTPARCVENDA = :ALTPARCVENDA,'
      '  APROVRECEITA = :APROVRECEITA,'
      '  ATIVCLI = :ATIVCLI,'
      '  LIBERACREDUSU = :LIBERACREDUSU,'
      '  CORAGENDA = :CORAGENDA,'
      '  CODEMPCE = :CODEMPCE,'
      '  CODFILIALCE = :CODFILIALCE,'
      '  CODCONFEMAIL = :CODCONFEMAIL,'
      '  CANCELAOP = :CANCELAOP,'
      '  VENDAPATRIMUSU = :VENDAPATRIMUSU,'
      '  RMAOUTCC = :RMAOUTCC,'
      '  ATIVOUSU = :ATIVOUSU,'
      '  VISUALIZALUCR = :VISUALIZALUCR,'
      '  LIBERACAMPOPESAGEM = :LIBERACAMPOPESAGEM,'
      '  APROVORDCP = :APROVORDCP,'
      '  ACESOPBTCADLOTE = :ACESOPBTCADLOTE,'
      '  ACESOPBTRMA = :ACESOPBTRMA,'
      '  ACESOPBTQUALID = :ACESOPBTQUALID,'
      '  ACESOPBTDISTR = :ACESOPBTDISTR,'
      '  ACESOPBTFASE = :ACESOPBTFASE,'
      '  ACESOPBTCANC = :ACESOPBTCANC,'
      '  ACESOPBTSUBPROD = :ACESOPBTSUBPROD,'
      '  ACESOPBTREMESSA = :ACESOPBTREMESSA,'
      '  ACESOPBTRETORNO = :ACESOPBTRETORNO,'
      '  ACESOPVERITENS = :ACESOPVERITENS,'
      '  CADOUTUSU = :CADOUTUSU,'
      '  DTINS = :DTINS,'
      '  HINS = :HINS,'
      '  IDUSUINS = :IDUSUINS,'
      '  DTALT = :DTALT,'
      '  HALT = :HALT,'
      '  IDUSUALT = :IDUSUALT,'
      '  TIPOUSU = :TIPOUSU,'
      '  SENHAUSU = :SENHAUSU,'
      '  NIVEL = :NIVEL,'
      '  FOTO = :FOTO'
      'WHERE'
      '  sgusuario.CODEMP = :OLD_CODEMP AND'
      '  sgusuario.CODFILIAL = :OLD_CODFILIAL')
    UseSequenceFieldForRefreshSQL = False
    Left = 448
    Top = 968
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
        Name = 'IDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMEUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALIG'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDGRPUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANOCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PNOMEUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UNOMEUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMENTUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIXOCUSTOUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODALMOX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPAM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALAM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ABREGAVETAUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APROVCPSOLICITACAOUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALMOXARIFEUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPAE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALAE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPOAGE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODAGE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APROVRMAUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COMPRASUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ALTPARCVENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APROVRECEITA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATIVCLI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIBERACREDUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CORAGENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODEMPCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODFILIALCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODCONFEMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CANCELAOP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDAPATRIMUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'RMAOUTCC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATIVOUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VISUALIZALUCR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LIBERACAMPOPESAGEM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APROVORDCP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTCADLOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTRMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTQUALID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTDISTR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTFASE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTCANC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTSUBPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTREMESSA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPBTRETORNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ACESOPVERITENS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CADOUTUSU'
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
        Name = 'TIPOUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENHAUSU'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NIVEL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FOTO'
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
  object zqry_VDFUTURA: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from vdfutura')
    Params = <>
    Left = 888
    Top = 920
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
    object zqry_VDFUTURA_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = '_PRODUTO'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'DESCPROD'
      KeyFields = 'CODPROD'
      Size = 100
      Lookup = True
    end
    object zqry_VDFUTURA_SALDOCONSIG: TFloatField
      FieldKind = fkLookup
      FieldName = '_SALDOCONSIG'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDCONSIGPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
    object zqry_VDFUTURA_SALDORESID: TFloatField
      FieldKind = fkLookup
      FieldName = '_SALDORESID'
      LookupDataSet = zqry_EQPRODUTO
      LookupKeyFields = 'CODPROD'
      LookupResultField = 'SLDRESPROD'
      KeyFields = 'CODPROD'
      Lookup = True
    end
  end
  object zdts_VDFUTURA: TDataSource
    DataSet = zqry_VDFUTURA
    Left = 952
    Top = 920
  end
  object zqry_EQUNIDADE: TZQuery
    Connection = zCONECTA
    SQL.Strings = (
      'select * from equnidade')
    Params = <>
    Left = 64
    Top = 920
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
    Left = 128
    Top = 920
  end
end
