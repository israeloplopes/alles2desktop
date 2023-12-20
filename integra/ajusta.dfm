object frm_AJUSTA: Tfrm_AJUSTA
  Left = 0
  Top = 0
  Caption = 'AJUSTA'
  ClientHeight = 361
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 458
    Height = 25
    Align = alTop
    Caption = 'LER'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 458
    Height = 120
    Align = alTop
    DataSource = zdts_AJUSTA
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object zqry_AJUSTA: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'select * from eqproduto')
    Params = <>
    Left = 352
    Top = 176
    object zqry_AJUSTACODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_AJUSTACODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_AJUSTACODPROD: TIntegerField
      FieldName = 'CODPROD'
      Required = True
    end
    object zqry_AJUSTADESCPROD: TWideStringField
      FieldName = 'DESCPROD'
      Required = True
      Size = 100
    end
    object zqry_AJUSTAREFPROD: TWideStringField
      FieldName = 'REFPROD'
      Required = True
    end
    object zqry_AJUSTACODEMPAX: TIntegerField
      FieldName = 'CODEMPAX'
      Required = True
    end
    object zqry_AJUSTACODFILIALAX: TSmallintField
      FieldName = 'CODFILIALAX'
      Required = True
    end
    object zqry_AJUSTACODALMOX: TIntegerField
      FieldName = 'CODALMOX'
      Required = True
    end
    object zqry_AJUSTACODEMPMA: TIntegerField
      FieldName = 'CODEMPMA'
      Required = True
    end
    object zqry_AJUSTACODFILIALMA: TSmallintField
      FieldName = 'CODFILIALMA'
      Required = True
    end
    object zqry_AJUSTACODMOEDA: TWideStringField
      FieldName = 'CODMOEDA'
      Required = True
      Size = 4
    end
    object zqry_AJUSTACODEMPUD: TIntegerField
      FieldName = 'CODEMPUD'
      Required = True
    end
    object zqry_AJUSTACODFILIALUD: TSmallintField
      FieldName = 'CODFILIALUD'
      Required = True
    end
    object zqry_AJUSTACODUNID: TWideStringField
      FieldName = 'CODUNID'
      Required = True
    end
    object zqry_AJUSTACODEMPFC: TIntegerField
      FieldName = 'CODEMPFC'
      Required = True
    end
    object zqry_AJUSTACODFILIALFC: TSmallintField
      FieldName = 'CODFILIALFC'
      Required = True
    end
    object zqry_AJUSTACODFISC: TWideStringField
      FieldName = 'CODFISC'
      Required = True
      Size = 13
    end
    object zqry_AJUSTACODEMPMC: TIntegerField
      FieldName = 'CODEMPMC'
      Required = True
    end
    object zqry_AJUSTACODFILIALMC: TSmallintField
      FieldName = 'CODFILIALMC'
      Required = True
    end
    object zqry_AJUSTACODMARCA: TWideStringField
      FieldName = 'CODMARCA'
      Required = True
      Size = 6
    end
    object zqry_AJUSTADESCAUXPROD: TWideStringField
      FieldName = 'DESCAUXPROD'
      Size = 40
    end
    object zqry_AJUSTATIPOPROD: TWideStringField
      FieldName = 'TIPOPROD'
      Required = True
      Size = 2
    end
    object zqry_AJUSTACVPROD: TWideStringField
      FieldName = 'CVPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTACODEMPGP: TIntegerField
      FieldName = 'CODEMPGP'
      Required = True
    end
    object zqry_AJUSTACODFILIALGP: TSmallintField
      FieldName = 'CODFILIALGP'
      Required = True
    end
    object zqry_AJUSTACODGRUP: TWideStringField
      FieldName = 'CODGRUP'
      Required = True
      Size = 14
    end
    object zqry_AJUSTACODBARPROD: TWideStringField
      FieldName = 'CODBARPROD'
      Size = 15
    end
    object zqry_AJUSTACLOTEPROD: TWideStringField
      FieldName = 'CLOTEPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTASERIEPROD: TWideStringField
      FieldName = 'SERIEPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTACODFABPROD: TWideStringField
      FieldName = 'CODFABPROD'
      Size = 30
    end
    object zqry_AJUSTACOMISPROD: TFloatField
      FieldName = 'COMISPROD'
    end
    object zqry_AJUSTAPESOLIQPROD: TFloatField
      FieldName = 'PESOLIQPROD'
    end
    object zqry_AJUSTAPESOBRUTPROD: TFloatField
      FieldName = 'PESOBRUTPROD'
    end
    object zqry_AJUSTAQTDMINPROD: TFloatField
      FieldName = 'QTDMINPROD'
    end
    object zqry_AJUSTAQTDMAXPROD: TFloatField
      FieldName = 'QTDMAXPROD'
    end
    object zqry_AJUSTADTMPMPROD: TDateField
      FieldName = 'DTMPMPROD'
    end
    object zqry_AJUSTACUSTOMPMPROD: TFloatField
      FieldName = 'CUSTOMPMPROD'
    end
    object zqry_AJUSTACUSTOPEPSPROD: TFloatField
      FieldName = 'CUSTOPEPSPROD'
    end
    object zqry_AJUSTACUSTOINFOPROD: TFloatField
      FieldName = 'CUSTOINFOPROD'
    end
    object zqry_AJUSTAPRECOBASEPROD: TFloatField
      FieldName = 'PRECOBASEPROD'
    end
    object zqry_AJUSTAPRECOCOMISPROD: TFloatField
      FieldName = 'PRECOCOMISPROD'
    end
    object zqry_AJUSTASLDPROD: TFloatField
      FieldName = 'SLDPROD'
    end
    object zqry_AJUSTASLDRESPROD: TFloatField
      FieldName = 'SLDRESPROD'
    end
    object zqry_AJUSTASLDCONSIGPROD: TFloatField
      FieldName = 'SLDCONSIGPROD'
    end
    object zqry_AJUSTASLDLIQPROD: TFloatField
      FieldName = 'SLDLIQPROD'
    end
    object zqry_AJUSTAATIVOPROD: TWideStringField
      FieldName = 'ATIVOPROD'
      Size = 1
    end
    object zqry_AJUSTADTULTCPPROD: TDateField
      FieldName = 'DTULTCPPROD'
    end
    object zqry_AJUSTAQTDULTCPPROD: TFloatField
      FieldName = 'QTDULTCPPROD'
    end
    object zqry_AJUSTADESCCOMPPROD: TWideStringField
      FieldName = 'DESCCOMPPROD'
      Size = 500
    end
    object zqry_AJUSTAOBSPROD: TWideStringField
      FieldName = 'OBSPROD'
      Size = 10000
    end
    object zqry_AJUSTAVERIFPROD: TWideStringField
      FieldName = 'VERIFPROD'
      Size = 1
    end
    object zqry_AJUSTALOCALPROD: TWideStringField
      FieldName = 'LOCALPROD'
      Size = 15
    end
    object zqry_AJUSTARMAPROD: TWideStringField
      FieldName = 'RMAPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTACODEMPPE: TIntegerField
      FieldName = 'CODEMPPE'
    end
    object zqry_AJUSTACODFILIALPE: TSmallintField
      FieldName = 'CODFILIALPE'
    end
    object zqry_AJUSTACODPE: TIntegerField
      FieldName = 'CODPE'
    end
    object zqry_AJUSTACODEMPCC: TIntegerField
      FieldName = 'CODEMPCC'
    end
    object zqry_AJUSTACODFILIALCC: TSmallintField
      FieldName = 'CODFILIALCC'
    end
    object zqry_AJUSTAANOCC: TSmallintField
      FieldName = 'ANOCC'
    end
    object zqry_AJUSTACODCC: TWideStringField
      FieldName = 'CODCC'
      Size = 19
    end
    object zqry_AJUSTAUSARECEITAPROD: TWideStringField
      FieldName = 'USARECEITAPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTAUSATELAADICPDV: TWideStringField
      FieldName = 'USATELAADICPDV'
      Required = True
      Size = 1
    end
    object zqry_AJUSTAVLRDENSIDADE: TFloatField
      FieldName = 'VLRDENSIDADE'
    end
    object zqry_AJUSTAVLRCONCENT: TFloatField
      FieldName = 'VLRCONCENT'
    end
    object zqry_AJUSTACOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object zqry_AJUSTALARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object zqry_AJUSTAESPESSURA: TFloatField
      FieldName = 'ESPESSURA'
    end
    object zqry_AJUSTAGUIATRAFPROD: TWideStringField
      FieldName = 'GUIATRAFPROD'
      Required = True
      Size = 1
    end
    object zqry_AJUSTAQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Required = True
    end
    object zqry_AJUSTACODEANPROD: TWideStringField
      FieldName = 'CODEANPROD'
      Size = 14
    end
    object zqry_AJUSTACUBAGEM: TFloatField
      FieldName = 'CUBAGEM'
    end
    object zqry_AJUSTACODEMPSC: TIntegerField
      FieldName = 'CODEMPSC'
    end
    object zqry_AJUSTACODFILIALSC: TSmallintField
      FieldName = 'CODFILIALSC'
    end
    object zqry_AJUSTACODSECAO: TWideStringField
      FieldName = 'CODSECAO'
      Size = 13
    end
    object zqry_AJUSTACODEMPTC: TSmallintField
      FieldName = 'CODEMPTC'
    end
    object zqry_AJUSTACODFILIALTC: TSmallintField
      FieldName = 'CODFILIALTC'
    end
    object zqry_AJUSTACODTPCHAMADO: TIntegerField
      FieldName = 'CODTPCHAMADO'
    end
    object zqry_AJUSTAQTDHORASSERV: TFloatField
      FieldName = 'QTDHORASSERV'
    end
    object zqry_AJUSTANRODIASVALID: TSmallintField
      FieldName = 'NRODIASVALID'
    end
    object zqry_AJUSTADESCCLI: TWideStringField
      FieldName = 'DESCCLI'
      Size = 1
    end
    object zqry_AJUSTAQTDPORPLANO: TSmallintField
      FieldName = 'QTDPORPLANO'
    end
    object zqry_AJUSTANROPLANOS: TSmallintField
      FieldName = 'NROPLANOS'
    end
    object zqry_AJUSTACERTFSC: TWideStringField
      FieldName = 'CERTFSC'
      Size = 1
    end
    object zqry_AJUSTAFATORFSC: TFloatField
      FieldName = 'FATORFSC'
    end
    object zqry_AJUSTACODEMPOG: TIntegerField
      FieldName = 'CODEMPOG'
    end
    object zqry_AJUSTACODFILIALOG: TSmallintField
      FieldName = 'CODFILIALOG'
    end
    object zqry_AJUSTACODPRODOG: TIntegerField
      FieldName = 'CODPRODOG'
    end
    object zqry_AJUSTACODEMPMG: TIntegerField
      FieldName = 'CODEMPMG'
    end
    object zqry_AJUSTACODFILIALMG: TSmallintField
      FieldName = 'CODFILIALMG'
    end
    object zqry_AJUSTACODMODG: TIntegerField
      FieldName = 'CODMODG'
    end
    object zqry_AJUSTAPRAZOREPO: TIntegerField
      FieldName = 'PRAZOREPO'
    end
    object zqry_AJUSTAMEDIAVENDA: TFloatField
      FieldName = 'MEDIAVENDA'
    end
    object zqry_AJUSTAEMMANUT: TWideStringField
      FieldName = 'EMMANUT'
      Required = True
      Size = 1
    end
    object zqry_AJUSTADTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_AJUSTAHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_AJUSTAIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 8
    end
    object zqry_AJUSTADTALT: TDateField
      FieldName = 'DTALT'
    end
    object zqry_AJUSTAHALT: TTimeField
      FieldName = 'HALT'
    end
    object zqry_AJUSTAIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Size = 8
    end
    object zqry_AJUSTAFINAME: TWideStringField
      FieldName = 'FINAME'
      Size = 10
    end
    object zqry_AJUSTAMDA: TWideStringField
      FieldName = 'MDA'
      Size = 10
    end
    object zqry_AJUSTAPTSFIDELIDADE: TIntegerField
      FieldName = 'PTSFIDELIDADE'
    end
    object zqry_AJUSTACURVA: TWideStringField
      FieldName = 'CURVA'
      Size = 1
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA'
      Size = 10
    end
    object zqry_AJUSTAPROD_ORIGEM: TWideStringField
      FieldName = 'PROD_ORIGEM'
      Size = 10
    end
    object zqry_AJUSTAPROD_IAT: TWideStringField
      FieldName = 'PROD_IAT'
      Size = 3
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_OUTRO_EST: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_OUTRO_EST'
      Size = 7
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_IPI_ENTRADA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_ENTRADA'
      Size = 7
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_IPI_SAIDA: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_IPI_SAIDA'
      Size = 7
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_PIS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_PIS'
      Size = 7
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_COFINS: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_COFINS'
      Size = 7
    end
    object zqry_AJUSTAPROD_SITRIBUTARIA_ISSQN: TWideStringField
      FieldName = 'PROD_SITRIBUTARIA_ISSQN'
      Size = 7
    end
    object zqry_AJUSTAPROD_ICMS: TWideStringField
      FieldName = 'PROD_ICMS'
      Size = 11
    end
    object zqry_AJUSTAPROD_COD_SERVICO_ISSQN: TWideStringField
      FieldName = 'PROD_COD_SERVICO_ISSQN'
      Size = 7
    end
    object zqry_AJUSTAPROD_BLOQUEIO: TWideStringField
      FieldName = 'PROD_BLOQUEIO'
      Size = 3
    end
    object zqry_AJUSTAPROD_USA_PROMO: TWideStringField
      FieldName = 'PROD_USA_PROMO'
      Size = 3
    end
    object zqry_AJUSTAPROD_PBALANCA: TWideStringField
      FieldName = 'PROD_PBALANCA'
      Size = 3
    end
    object zqry_AJUSTAPROD_ATIVO: TWideStringField
      FieldName = 'PROD_ATIVO'
      Size = 3
    end
    object zqry_AJUSTACODNCM: TWideStringField
      FieldName = 'CODNCM'
      Size = 10
    end
    object zqry_AJUSTAMARKUP: TFloatField
      FieldName = 'MARKUP'
    end
    object zqry_AJUSTAICRE: TWideStringField
      FieldName = 'ICRE'
      Size = 15
    end
    object zqry_AJUSTACEST: TWideStringField
      FieldName = 'CEST'
      Size = 7
    end
    object zqry_AJUSTACODMIX: TIntegerField
      FieldName = 'CODMIX'
    end
    object zqry_AJUSTAPROMOCAO: TWideStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object zqry_AJUSTAINTERVSEGUR: TIntegerField
      FieldName = 'INTERVSEGUR'
    end
    object zqry_AJUSTACLASSETOXICO: TWideStringField
      FieldName = 'CLASSETOXICO'
      Size = 2
    end
    object zqry_AJUSTAGRUPOQUIMICO: TWideStringField
      FieldName = 'GRUPOQUIMICO'
      Size = 50
    end
    object zqry_AJUSTANOMETECNICO: TWideStringField
      FieldName = 'NOMETECNICO'
      Size = 50
    end
    object zqry_AJUSTAPRINCIPIOATIVO: TWideStringField
      FieldName = 'PRINCIPIOATIVO'
      Size = 50
    end
    object zqry_AJUSTACODCLASSE: TWideStringField
      FieldName = 'CODCLASSE'
      Size = 1
    end
    object zqry_AJUSTACLASSE: TWideStringField
      FieldName = 'CLASSE'
      Size = 50
    end
    object zqry_AJUSTACONCENTRACAO: TWideStringField
      FieldName = 'CONCENTRACAO'
      Size = 15
    end
    object zqry_AJUSTAFORMULACAO: TWideStringField
      FieldName = 'FORMULACAO'
      Size = 50
    end
    object zqry_AJUSTAANTIDOTO: TWideStringField
      FieldName = 'ANTIDOTO'
      Size = 10000
    end
    object zqry_AJUSTAMULTIPLICADOR: TSingleField
      FieldName = 'MULTIPLICADOR'
    end
    object zqry_AJUSTACODBALANCA: TIntegerField
      FieldName = 'CODBALANCA'
    end
    object zqry_AJUSTACODRFIDPROD: TIntegerField
      FieldName = 'CODRFIDPROD'
    end
  end
  object zdts_AJUSTA: TDataSource
    DataSet = zqry_AJUSTA
    Left = 408
    Top = 176
  end
end
