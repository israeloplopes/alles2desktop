object frm_REL_RECEITUARIO: Tfrm_REL_RECEITUARIO
  Left = 0
  Top = 0
  Caption = 'Receitu'#225'rio Agron'#244'mico'
  ClientHeight = 745
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 128
      BandType = btHeader
      object RLDraw3: TRLDraw
        Left = 0
        Top = 90
        Width = 731
        Height = 35
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 1
        Width = 731
        Height = 88
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 3
        Width = 286
        Height = 33
        Caption = 'Receitu'#225'rio Agron'#244'mico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 576
        Top = 3
        Width = 142
        Height = 16
        Alignment = taRightJustify
        Text = 'Impresso em '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 642
        Top = 22
        Width = 35
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 683
        Top = 22
        Width = 35
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
        Text = '/'
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 96
        Width = 70
        Height = 23
        Caption = 'ART N.'#186': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 79
        Top = 96
        Width = 57
        Height = 20
        AutoSize = False
        DataField = 'CODART'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 180
        Top = 96
        Width = 94
        Height = 23
        Caption = 'Receita N.'#186': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 279
        Top = 96
        Width = 87
        Height = 20
        DataField = 'CODRECEITA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 360
        Top = 96
        Width = 116
        Height = 23
        Caption = 'Data Emiss'#227'o :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 482
        Top = 96
        Width = 98
        Height = 20
        DataField = 'DATAEMISSAO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rl_ENDERECO: TRLLabel
        Left = 3
        Top = 56
        Width = 718
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object rl_RAZAO: TRLLabel
        Left = 3
        Top = 42
        Width = 363
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rl_ENDERECO1: TRLLabel
        Left = 3
        Top = 69
        Width = 718
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object rl_NOMEFANTASIA: TRLLabel
        Left = 368
        Top = 42
        Width = 353
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 30
      Top = 158
      Width = 734
      Height = 750
      object RLLabel5: TRLLabel
        Left = 0
        Top = 2
        Width = 81
        Height = 16
        Caption = 'Consulente : '
      end
      object RLLabel6: TRLLabel
        Left = 0
        Top = 22
        Width = 81
        Height = 16
        Caption = 'Propriedade :'
      end
      object RLLabel7: TRLLabel
        Left = 3
        Top = 42
        Width = 71
        Height = 16
        Caption = 'Munic'#237'pio : '
      end
      object RLLabel8: TRLLabel
        Left = 418
        Top = 2
        Width = 57
        Height = 16
        Caption = 'Cultura : '
      end
      object RLLabel9: TRLLabel
        Left = 418
        Top = 22
        Width = 84
        Height = 16
        Caption = 'Diagn'#243'stico : '
      end
      object RLLabel10: TRLLabel
        Left = 418
        Top = 42
        Width = 39
        Height = 16
        Caption = #193'rea :'
      end
      object RLLabel11: TRLLabel
        Left = 0
        Top = 60
        Width = 162
        Height = 20
        Caption = 'Recomenda'#231#245'es T'#233'cnicas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 0
        Top = 80
        Width = 61
        Height = 16
        Caption = 'Produto : '
      end
      object RLLabel13: TRLLabel
        Left = 0
        Top = 100
        Width = 107
        Height = 16
        Caption = 'Tipo de Produto : '
      end
      object RLLabel14: TRLLabel
        Left = 250
        Top = 80
        Width = 98
        Height = 16
        Caption = 'Princ'#237'pio Ativo : '
      end
      object RLLabel15: TRLLabel
        Left = 250
        Top = 100
        Width = 103
        Height = 16
        Caption = 'Grupo Qu'#237'mico : '
      end
      object RLLabel16: TRLLabel
        Left = 508
        Top = 80
        Width = 96
        Height = 16
        Caption = 'Concentra'#231#227'o : '
      end
      object RLLabel17: TRLLabel
        Left = 508
        Top = 100
        Width = 72
        Height = 16
        Caption = 'Formula'#231#227'o'
      end
      object RLLabel18: TRLLabel
        Left = 0
        Top = 120
        Width = 132
        Height = 16
        Caption = 'Classe Toxicol'#243'gica : '
      end
      object RLLabel19: TRLLabel
        Left = 0
        Top = 140
        Width = 173
        Height = 20
        Caption = 'Informa'#231#245'es para Aplica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 0
        Top = 160
        Width = 71
        Height = 16
        Caption = 'Dosagem : '
      end
      object RLLabel21: TRLLabel
        Left = 250
        Top = 160
        Width = 102
        Height = 16
        Caption = 'N.'#186' Aplica'#231#245'es : '
      end
      object RLLabel22: TRLLabel
        Left = 508
        Top = 160
        Width = 67
        Height = 16
        Caption = 'Car'#234'ncia : '
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 180
        Width = 53
        Height = 16
        Caption = #201'poca : '
      end
      object RLLabel24: TRLLabel
        Left = 250
        Top = 180
        Width = 63
        Height = 16
        Caption = 'Intervalo : '
      end
      object RLLabel25: TRLLabel
        Left = 508
        Top = 180
        Width = 82
        Height = 16
        Caption = 'Modalidade : '
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 200
        Width = 98
        Height = 16
        Caption = 'Qtd. a adquirir : '
      end
      object RLLabel27: TRLLabel
        Left = 0
        Top = 220
        Width = 183
        Height = 20
        Caption = 'Manejo Integrado de Pragas : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 280
        Width = 731
        Height = 3
        DrawKind = dkLine
      end
      object RLLabel28: TRLLabel
        Left = 0
        Top = 282
        Width = 123
        Height = 20
        Caption = 'Precau'#231#245'es de Uso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 0
        Top = 350
        Width = 258
        Height = 20
        Caption = 'Primeiros Socorros em caso de acidentes:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 0
        Top = 418
        Width = 265
        Height = 20
        Caption = 'Informa'#231#245'es sobre Ant'#237'doto e Tratamento : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 0
        Top = 486
        Width = 352
        Height = 20
        Caption = 'Advert'#234'ncias relacionadas '#224' prote'#231#227'o do Meio Ambiente :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 2
        Top = 554
        Width = 371
        Height = 20
        Caption = 'Instru'#231#245'es sobre a disposi'#231#227'o final de sobras e embalagens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 0
        Top = 622
        Width = 231
        Height = 20
        Caption = 'Equipamento de Prote'#231#227'o Individual :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 508
        Top = 2
        Width = 109
        Height = 16
        DataField = '_NOMECULTURA'
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 508
        Top = 22
        Width = 149
        Height = 16
        DataField = '_DIAGNOSTICOCOMUM'
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 508
        Top = 42
        Width = 99
        Height = 16
        DataField = 'AREATRATADA'
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 87
        Top = 22
        Width = 325
        Height = 16
        AutoSize = False
        DataField = 'PROPRIEDADE'
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 87
        Top = 2
        Width = 325
        Height = 16
        AutoSize = False
        DataField = '_NOMECLIENTE'
        Text = ''
      end
      object RLDBText11: TRLDBText
        Left = 87
        Top = 78
        Width = 157
        Height = 16
        AutoSize = False
        DataField = '_NOMEPRODUTO'
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 358
        Top = 160
        Width = 117
        Height = 16
        AutoSize = False
        DataField = 'APLICACOES'
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 358
        Top = 182
        Width = 117
        Height = 16
        AutoSize = False
        DataField = 'DIASINTERVALO'
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 596
        Top = 160
        Width = 109
        Height = 16
        AutoSize = False
        DataField = 'CARENCIA'
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 596
        Top = 180
        Width = 109
        Height = 16
        AutoSize = False
        DataField = 'MODALIDADE'
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 87
        Top = 160
        Width = 147
        Height = 16
        AutoSize = False
        DataField = 'DOSAGEM'
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 87
        Top = 180
        Width = 147
        Height = 16
        DataField = 'EPOCA'
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 104
        Top = 200
        Width = 130
        Height = 16
        AutoSize = False
        DataField = 'QTD'
        Text = ''
      end
      object RLDBText19: TRLDBText
        Left = 0
        Top = 242
        Width = 705
        Height = 38
        AutoSize = False
        DataField = 'MANEJOINTEGRADO'
        Text = ''
      end
      object RLMemo1: TRLMemo
        Left = 0
        Top = 302
        Width = 721
        Height = 48
        Alignment = taJustify
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Lines.Strings = (
          
            'N'#227'o coma, n'#227'o beba e n'#227'o fume durante a utiliza'#231#227'o do produto. M' +
            'antenha crian'#231'as e animais dom'#233'sticos afastados das '#225'reas aplica' +
            'das por um per'#237'odo de 7 dias. N'#227'o utilize equipamentos com vazam' +
            'entos nem desentupa bicos e v'#225'lvulas com a boca. Ap'#243's a aplica'#231#227 +
            'o remova as roupas protetoras e tome banho. N'#227'o aplique mas hora' +
            's mais quentes do dia nem com ventos fortes.')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 0
        Top = 372
        Width = 721
        Height = 48
        Alignment = taJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Lines.Strings = (
          
            'Remova o intoxicado para local arejado. Se houver contato com a ' +
            'pele ou com os olhos, lave bem as partes atingidas com '#225'gua e sa' +
            'b'#227'o. Nunca d'#234' bebidas alco'#243'licas, leite ou medicamentos. N'#227'o pro' +
            'voque v'#244'mitos sem verificar se o procedimento '#233' permitido para e' +
            'ste produto. Se a v'#237'tima estiver vomitando, deixe-a sentada. Se ' +
            'houver parada respirat'#243'ria, fa'#231'a respira'#231#227'o artificial. Procure ' +
            'um m'#233'dico imediatamente.')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 0
        Top = 508
        Width = 721
        Height = 48
        Alignment = taJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Lines.Strings = (
          
            'N'#227'o contamine mananciais de '#225'gua, lavando equipamentos de pulver' +
            'iza'#231#227'o ou embalagens vazias, nem lan'#231'ando-lhes seus restos. Em c' +
            'aso de acidente, suspender o uso da fonte de '#225'gua para consumo h' +
            'umano e/ou animal. Evite deriva que possa atingir a fauna silves' +
            'tre ou animais dom'#233'sticos.')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 0
        Top = 576
        Width = 721
        Height = 41
        Alignment = taJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Lines.Strings = (
          
            'N'#227'o abandone embalagens vazias. Fa'#231'a a tr'#237'plice lavagem logo ap'#243 +
            's a utiliza'#231#227'o do produto e devolva as embalagens ao seu fornece' +
            'dor ou as entregue em local apropriado que este indicar.')
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 0
        Top = 690
        Width = 158
        Height = 20
        Caption = 'Informa'#231#245'es Adicionais : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 0
        Top = 645
        Width = 721
        Height = 39
        Alignment = taJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Lines.Strings = (
          
            'Durante a utiliza'#231#227'o do produto, use macac'#227'o com mangas comprida' +
            's, avental imperme'#225'vel, luvas e botas de borracha, chap'#233'u de aba' +
            's largas, '#243'culos protetores e m'#225'scara provido de filtro adequado' +
            '.')
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 87
        Top = 42
        Width = 325
        Height = 16
        AutoSize = False
        DataField = '_NOMECIDADE'
        Text = ''
      end
      object RLDBText21: TRLDBText
        Left = 354
        Top = 80
        Width = 148
        Height = 16
        AutoSize = False
        DataField = '_PRINCIPIOATIVO'
        Text = ''
      end
      object RLDBText22: TRLDBText
        Left = 608
        Top = 80
        Width = 119
        Height = 16
        DataField = '_CONCENTRACAO'
        Text = ''
      end
      object RLDBText23: TRLDBText
        Left = 586
        Top = 100
        Width = 102
        Height = 16
        DataField = '_FORMULACAO'
        Text = ''
      end
      object RLDBText24: TRLDBText
        Left = 359
        Top = 100
        Width = 143
        Height = 16
        DataField = '_GRUPOQUIMICO'
        Text = ''
      end
      object RLDBText25: TRLDBText
        Left = 113
        Top = 100
        Width = 131
        Height = 16
        AutoSize = False
        DataField = '_CLASSE'
        Text = ''
      end
      object RLDBText26: TRLDBText
        Left = 138
        Top = 120
        Width = 215
        Height = 16
        AutoSize = False
        DataField = '_CLASSETOXICO'
        Text = ''
      end
      object RLDBText27: TRLDBText
        Left = 0
        Top = 440
        Width = 721
        Height = 16
        AutoSize = False
        DataField = '_ANTIDOTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText28: TRLDBText
        Left = 0
        Top = 712
        Width = 721
        Height = 16
        AutoSize = False
        DataField = '_OBSPROD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 30
      Top = 927
      Width = 734
      Height = 77
      BandType = btFooter
      object RLLabel35: TRLLabel
        Left = 0
        Top = 2
        Width = 144
        Height = 16
        Caption = 'Engenheiro Agr'#244'nomo : '
      end
      object RLLabel36: TRLLabel
        Left = 0
        Top = 22
        Width = 34
        Height = 16
        Caption = 'CPF '
      end
      object RLLabel37: TRLLabel
        Left = 0
        Top = 42
        Width = 62
        Height = 16
        Caption = 'N.'#186' CREA'
      end
      object RLDraw4: TRLDraw
        Left = 303
        Top = 55
        Width = 173
        Height = 5
        DrawKind = dkLine
      end
      object RLDraw5: TRLDraw
        Left = 543
        Top = 55
        Width = 173
        Height = 5
        DrawKind = dkLine
      end
      object RLLabel38: TRLLabel
        Left = 308
        Top = 58
        Width = 168
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Assinatura Profissional Respons'#225'vel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 543
        Top = 58
        Width = 168
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Visto Consulente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object RL_ENGENHEIRO: TRLLabel
        Left = 150
        Top = 2
        Width = 325
        Height = 16
        AutoSize = False
      end
      object rl_CPF: TRLLabel
        Left = 68
        Top = 22
        Width = 105
        Height = 16
        AutoSize = False
      end
      object rl_CREA: TRLLabel
        Left = 68
        Top = 44
        Width = 105
        Height = 16
        AutoSize = False
      end
    end
    object RLBand4: TRLBand
      Left = 30
      Top = 908
      Width = 734
      Height = 19
      BandType = btSummary
      object RLMemo6: TRLMemo
        Left = 0
        Top = 0
        Width = 734
        Height = 19
        Align = faClient
        Alignment = taCenter
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          
            '1'#170' via - Comerciante | 2'#170' via - Consulente | 3'#170' via - Profission' +
            'al | 4'#170' via - CREA | 5'#170' - Org'#227'o Fiscalizador')
        ParentFont = False
      end
    end
  end
end