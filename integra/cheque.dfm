object frm_DLG_CHEQUES: Tfrm_DLG_CHEQUES
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cheques'
  ClientHeight = 451
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDefault
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gb_MOV_CHEQUE: TGroupBox
    Left = 2
    Top = 2
    Width = 200
    Height = 180
    Caption = 'MOVIMENTA'#199#195'O DO CHEQUE'
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 190
      Height = 25
      Align = alTop
      Caption = '&RECEBIDO'
      TabOrder = 0
    end
    object btn_CHDEPOSITADO: TBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 49
      Width = 190
      Height = 25
      Align = alTop
      Caption = '&DEPOSITADO '
      TabOrder = 1
      OnClick = btn_CHDEPOSITADOClick
    end
    object btn_CHDEVOLVIDO: TBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 80
      Width = 190
      Height = 25
      Align = alTop
      Caption = 'D&EVOLVIDO'
      TabOrder = 2
      OnClick = btn_CHDEVOLVIDOClick
    end
    object btn_CHCOMPENSADO: TBitBtn
      AlignWithMargins = True
      Left = 5
      Top = 111
      Width = 190
      Height = 25
      Align = alTop
      Caption = '&COMPENSADO'
      TabOrder = 3
      OnClick = btn_CHCOMPENSADOClick
    end
  end
  object gb_SLD_CHEQUE: TGroupBox
    Left = 2
    Top = 184
    Width = 200
    Height = 180
    Caption = 'SALDO CHEQUE'
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 190
      Height = 13
      Align = alTop
      Caption = 'Vlr. Total de Cheque Recebido'
      ExplicitWidth = 145
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 64
      Width = 190
      Height = 13
      Align = alTop
      Caption = 'Vlr. Total de Cheque Depositado'
      ExplicitWidth = 155
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 110
      Width = 190
      Height = 13
      Align = alTop
      Caption = 'Vlr. Total de Cheque Devolvido'
      ExplicitWidth = 148
    end
    object edt_VLRTOTAL_RECEBIDO: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 37
      Width = 190
      Height = 21
      Align = alTop
      Alignment = taRightJustify
      TabOrder = 0
    end
    object edt_VLRTOTAL_DEPOSITADO: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 83
      Width = 190
      Height = 21
      Align = alTop
      Alignment = taRightJustify
      TabOrder = 1
    end
    object edt_VLRTOTAL_DEVOLVIDO: TEdit
      AlignWithMargins = True
      Left = 5
      Top = 129
      Width = 190
      Height = 21
      Align = alTop
      Alignment = taRightJustify
      TabOrder = 2
    end
  end
  object gp_CON_CHEQUE: TGroupBox
    Left = 204
    Top = 2
    Width = 608
    Height = 362
    Caption = 'CONSULTA CHEQUE'
    TabOrder = 2
    object rg_CHEQUES: TRadioGroup
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 598
      Height = 35
      Align = alTop
      Caption = 'Tipo de Consulta'
      Columns = 5
      Items.Strings = (
        'N.'#186' Cheque - F3'
        'Cliente - F4'
        'Dt. Vencto. - F5'
        'Venda - F6'
        'Situa'#231#227'o - F7')
      TabOrder = 0
      OnClick = rg_CHEQUESClick
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 97
      Width = 604
      Height = 263
      Align = alClient
      DataSource = dm_DADOS.zdts_FNCHEQUE
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SEQCHEQ'
          Title.Caption = 'SEQ'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODBANC'
          Title.Caption = 'BANCO'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENCIACHEQ'
          Title.Caption = 'AGENCIA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTAEMITE'
          Title.Caption = 'CONTA'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMCHEQ'
          Title.Caption = 'N.'#186
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVENCTOCHEQ'
          Title.Caption = 'DT. VENCTO.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITCHEQ'
          Title.Caption = 'SIT.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRCHEQ'
          Title.Caption = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEEMITCHEQ'
          Title.Caption = 'EMITENTE'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTCHEQ'
          Title.Caption = 'HIST'#211'RICO'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFAVCHEQ'
          Title.Caption = 'FAVORECIDO'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTEMITCHEQ'
          Title.Caption = 'DT. EMIS.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODVENDA'
          Title.Caption = 'C'#211'D. VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTDEPCHEQ'
          Title.Caption = 'DT. DEPOS.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTDEVOLCHEQ'
          Title.Caption = 'DT. DEVOL.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODALINEA'
          Title.Caption = 'MOT'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTCOMPCHEQ'
          Title.Caption = 'DT. COMP.'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 59
      Width = 598
      Height = 35
      Align = alTop
      Caption = 'PAR'#194'METROS'
      TabOrder = 2
      object lbl_MSG_PESQ: TLabel
        Left = 20
        Top = 15
        Width = 140
        Height = 13
        AutoSize = False
      end
      object sp_BUSCA: TSpeedButton
        Left = 300
        Top = 10
        Width = 25
        Height = 25
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF6F6F6D9D9D9BEBEBEB8B8B8C8C8C8EAEAEAFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDA6A6A68080806464646363635E5E5E
          7A7A7ADADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EFEF
          EFEDEDEDF5F5F5FEFEFEFFFFFFFFFFFFFFFFFFFEFEFEC0C0C07474744E4D4C86
          6E5BA78562A5846474655B6A6A6AF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFAFAFA
          D3D3D3ACACAC9B9B9B989898A5A5A5D1D1D1FBFBFBFFFFFFFFFFFFFEFEFEC7C7
          C7444443A1784BE6CD79E9D87FE5D179D7B1607F5F45AFAFAFFFFFFFFFFFFFFF
          FFFFFFFFFFDBDBDB9898987A7A7A6868686767678080809B9B9BD8D8D8F9F9F9
          CFCFCFA6A6A67F7F7F614A39E4CD8AE7D78AE2CE79DFC973E0CC82B8946D6A6A
          6AFEFEFEFFFFFFFFFFFFFFFFFFB1B1B151515166646388776D8E7A6B7069656C
          6C6CB0B0B09A9A9A616161A7A7A7AAAAAA755844E7D5A4E9DDAFEBDEB6ECE0BD
          EBDDBF776657313131C9C9C9FFFFFFFFFFFFFAFAFA5050506D5542CCA260E4C8
          75E3C975D4AA5E8A70588D8D8D474747B6B6B67171714B4B4B3B36349A7D62D5
          C0A1DECFB6BFB4A17B746B4747462C2C2B424242DCDCDCFFFFFFD9D9D94C3F37
          DBB874E6D57DE3D074E0CB6FE0CC7BBA9A5E5E5E5E868686818181CECECEFCFC
          FC9A9A9A2E2E2D4141405454546C6C6B7474735454542F2F2E3F3F3F515151E5
          E5E5CECECE755C4AE6D49AE8D9A3E6D8A1E8DAABEADDB599804E373736B6B6B6
          D3D3D3F2F2F2F7F7F7E0E0E02C2C2B3838375353526C6C6C7575755E5E5D3636
          35555555939393C0C0C0F5F5F562534CE1C79FEBDFBCEDE2C3EDE1C4BEA46E5B
          5249363636858585CACACAC2C2C2B9B9B9B8B8B84949483232314A4A49666665
          7474746767673F3F3F6D6D6D696969F4F4F4FFFFFFB2B2B15C4736A08460A98E
          6688724D6A66606161614141414A4A4AC2C2C26A6A6A919191A1A1A18383832C
          2C2B4141415E5E5E7272716D6D6D4A4A49525252CECECEFFFFFFFFFFFFFFFFFF
          6161613131314E4E4E6868687777776A6A6A4B4B4B2D2D2DA1A1A17E7E7E9D9D
          9D60606074747430302F3A3A395656556E6E6E727272545454505050F5F5F5FF
          FFFFFFFFFFFFFFFFE8E8E83333334141415E5E5E7474746F6F6F555555333333
          6E6E6E5F5F5F6D6D6DBCBCBC3E3E3E2121203232314D4D4C6767677272725A5A
          5A323232CECECEFFFFFFFFFFFFFFFFFFFFFFFFA9A9A93535355353536E6E6E73
          73735E5E5E3E3E3E2525252323235555556161612F2F2F303030343434434343
          5A5A595C5C5C474747474747BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6363
          634646466363637272726666664646463434343737374B4B4B45454545454545
          45454A4A4A4D4D4D5050505454545D5D5D292929A0A0A0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC4C4C43C3C3C5555556D6D6D6464644A4A4A4848484D4D4D5151
          515858585D5D5D5252526262626F6F6F5F5F5F4848481F1F1F040404B1B1B1FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA5E5E5E5353535959595B5B5B606060
          6A6A6A5353535151515454543C3C3C2E2E2E5C5C5C6B6B6B5454543434342121
          21161616F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C24F4F4F6B
          6B6B6F6F6F7272726363634848482E2E2E4D4D4D484848414141DEDEDEFFFFFF
          E6E6E6585858424242393939F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7474741E1E1E3535355656566363637373738F8F8F9D9D9DB8B8B8FE
          FEFEFFFFFFFFFFFFFFFFFFD8D8D8B8B8B8E9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9B9B9B3636364E4E4E5D5D5DB7B7B7FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8585855C5C5C
          858585F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sp_BUSCAClick
      end
      object msk_PESQ: TMaskEdit
        Left = 170
        Top = 11
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        Text = ''
        OnKeyPress = msk_PESQKeyPress
      end
    end
  end
  object gp_HIST_CLIENTE: TGroupBox
    Left = 2
    Top = 366
    Width = 758
    Height = 52
    Caption = 'HIST'#211'RICO DO CLIENTE'
    TabOrder = 3
    object Label4: TLabel
      Left = 5
      Top = 15
      Width = 94
      Height = 13
      Caption = 'Qtd. Ch. Recebidos'
    end
    object Label5: TLabel
      Left = 355
      Top = 15
      Width = 97
      Height = 13
      Caption = 'Qtd. Ch. Devolvidos'
    end
    object Label6: TLabel
      Left = 180
      Top = 15
      Width = 94
      Height = 13
      AutoSize = False
      Caption = 'Vlr. Ch. em Aberto'
    end
    object Label7: TLabel
      Left = 530
      Top = 15
      Width = 95
      Height = 13
      Caption = 'Qtd. Ch. em Aberto'
    end
    object Label8: TLabel
      Left = 2
      Top = 37
      Width = 806
      Height = 20
      Alignment = taCenter
      AutoSize = False
      Caption = 
        'CA - Cheque Cadastrado | DP - Cheque Depositado | DV - Cheque De' +
        'volvido | CD - Cheque Compensado '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt_QTDCH_RECEBIDO: TEdit
      Left = 105
      Top = 15
      Width = 70
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edt_QTDCH_DEVOLVIDO: TEdit
      Left = 455
      Top = 15
      Width = 70
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object edt_VLRCLIENTE_CHABERTO: TEdit
      Left = 280
      Top = 15
      Width = 70
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object edt_QTDCH_ABERTOO: TEdit
      Left = 630
      Top = 15
      Width = 70
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btn_IMPRIMIR: TBitBtn
    Left = 766
    Top = 368
    Width = 48
    Height = 52
    Caption = 'Imprimir'
    Glyph.Data = {
      FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
      180000000000C80A0000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9CA90F9CA90FDD39CFDD39DFDD39DFDD3
      9DFDD39DFDD39DFDD39DFDD39DFED49EFCD19AF9C98FF9CA90F9CA90F9CA90F9
      CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFBDBB4F9CA90F9CA90F9CA90E8A55CE6A257E7A358E7A358E7A358
      E7A358E7A358E7A358E5A054EBAD67FBCE95F9CA90F9CA90F9CA90F9CA90FBDB
      B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFCDCB4F9CA90F9CA90F9CA90CF6E0ECA6602CB6704CB6704CB6704CB6704CB
      6704CB6704C86000D7812AFED39DF9CA90F9CA90F9CA90F9CA90FCDCB4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFF5F5F5F4F4F4F3F3F3F7D7B0
      F9CB90F9CA90F9CA90F6C386F5C285F6C385F6C385F6C385F6C385F6C385F6C3
      85F5C284F7C68AFCD098FBCF97FBCD95F9CA8FF9CB90F7D7B0F3F3F3F4F4F4F5
      F5F5FFFFFFFFFFFF0000FDFDFDAFAFAF51515143434332363CBF9F78FFD596F9
      CA90F9CA90F3BC7CF2BB7AF2BB7BF2BB7BF2BB7BF2BB7BF2BB7BF2BB7BF2BB7B
      F2BA7AF1B876F0B775F3BD7EFACC93FFD596BF9F7832363C434343515151B0B0
      B0FFFFFF0000ABABAB42424242424242424230343ABF9F77FFD596F9CA90F9CA
      90CD6C0AC96300CA6400CA6400CA6400CA6400CA6400CA6400CA6400CA6400CA
      6400C65D00D7812AFED49FFFD596BF9F7730343A424242424242424242B2B2B2
      000050505042424242424242424230343ABF9F77FFD596F9CA90F9CA90EBAD66
      EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63EAAA63E9A8
      60EEB371FBCD95FFD596BF9F7730343A42424242424242424252525200004242
      4242424242424242424230343ABF9E75FFD494F9C98EF9C98EFCD199FDD19AFD
      D199FDD199FDD199FDD199FDD199FDD199FDD199FDD199FDD199FDD29AFCCF96
      F9C88DFFD494BF9E7530343A4242424242424242424242420000424242424242
      434343404040131C26BE843CFFBE4AFFB248FFB248FFB248FFB248FFB248FFB2
      48FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FFB248FF
      BE4ABE843C141C2740404043434342424242424200004242424242424343433F
      3F3F151A207C592DAF7B35A97433A97433A97433A97433A97433A97433A97433
      A97433A97433A97433A97433A97433A97433A97433A97433A97433AF7B357C59
      2D151A213F3F3F43434342424242424200004242424242424242424242423B3A
      39232A321B24311C25311C25311C25311C25311C25311C25311C25311C25311C
      25311C25311C25311C25311C25311C25311C25311C25311B2431232A323C3B3A
      4242424242424242424242420000424242424242424242424242444444454545
      4545454545454545454545454545454545454545454545454545454545454545
      4545454545454545454545454545454545454545454545454544444442424242
      4242424242424242000040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      4040404040404040404040404040404040404040404040404040404040404040
      4040404000004B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
      4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
      4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B
      0000646464646464646464646464646464646464646464646464646464646464
      6464646464646464646464646464646464646464646464646464646464646464
      6464646464646464646464646464646464646464646464646464646400006161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161610000616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161605B65605D64616261616161000061616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      61616062657850647255615F6361616100006161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161605B66
      73D40E6EB5245F556A61616100007C7C7C616161616161616161616161616161
      6161616161616161616161616161616161616161616161616161616161616161
      61616161616161616161616161616161616161616161616161615F6266814964
      7850605D637D7D7D0000D3D3D36A6A6A6161616161616363635D5E605A5C5F5A
      5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F
      5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5A5C5F5D5E60636462605967605B65696A
      68D4D4D40000FFFFFFD7D7D78C8C8C7A7A7A58595A736D657F776B7E756A7E75
      6A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E756A7E
      756A7E756A7E756A7E756A7F776B736D6558595A7A7A7A8C8C8CD5D5D5FFFFFF
      0000FFFFFFFFFFFFFFFFFFEFEFEF2D3238C6A479FFDE9AFFD294FFD294FFD294
      FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD294FFD2
      94FFD294FFD294FFDE9AC6A4792D3238EFEFEFFFFFFFFFFFFFFFFFFF0000FFFF
      FFFFFFFFFFFFFFE1E1E131353BBC9D76FFD697F9CA90F9CA90F9CA90F9CA90F9
      CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
      F9CA90FFD697BC9D7631353BE1E1E1FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFAFAFAD3D4D5EECFA7FACC91F9CA90F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FA
      CC91EECFA7D3D4D5FAFAFAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEDFB7F9C990F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
      F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9C990FEDF
      B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFBDBB4F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4
      F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9
      CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90
      F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBB4F9CA90F9CA90F9CA
      90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9CA90F9
      CA90F9CA90F9CA90F9CA90F9CA90FBDBB4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000}
    Layout = blGlyphTop
    TabOrder = 4
    OnClick = btn_IMPRIMIRClick
  end
  object zqry_TOT_CH_CAD: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select sum(vlrcheq) as RECEBIDO from fncheque where fncheque.tip' +
        'ocheq='#39'RC'#39' and fncheque.sitcheq='#39'CA'#39)
    Params = <>
    Left = 436
    Top = 146
    object zqry_TOT_CH_CADRECEBIDO: TExtendedField
      FieldName = 'RECEBIDO'
      ReadOnly = True
      Precision = 19
    end
  end
  object zdts_TOT_CH_CAD: TDataSource
    DataSet = zqry_TOT_CH_CAD
    Left = 556
    Top = 146
  end
  object zqry_TOT_CH_DEP: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select sum(vlrcheq) as DEPOSITADO from fncheque where fncheque.t' +
        'ipocheq='#39'RC'#39' and fncheque.sitcheq='#39'DP'#39)
    Params = <>
    Left = 436
    Top = 194
    object zqry_TOT_CH_DEPDEPOSITADO: TExtendedField
      FieldName = 'DEPOSITADO'
      ReadOnly = True
      Precision = 19
    end
  end
  object zdts_TOT_CH_DEP: TDataSource
    DataSet = zqry_TOT_CH_DEP
    Left = 556
    Top = 194
  end
  object zqry_TOT_CH_DEV: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select sum(vlrcheq) as DEVOLVIDO from fncheque where fncheque.ti' +
        'pocheq=:tipo and fncheque.sitcheq=:dev')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dev'
        ParamType = ptUnknown
      end>
    Left = 436
    Top = 241
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dev'
        ParamType = ptUnknown
      end>
    object zqry_TOT_CH_DEVDEVOLVIDO: TExtendedField
      FieldName = 'DEVOLVIDO'
      ReadOnly = True
      Precision = 19
    end
  end
  object zdts_TOT_CH_DEV: TDataSource
    DataSet = zqry_TOT_CH_DEV
    Left = 556
    Top = 242
  end
  object zqry_CHEQUES: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      'select * from fncheque order by numcheq,codbanc')
    Params = <>
    Left = 436
    Top = 290
    object zqry_CHEQUESCODEMP: TIntegerField
      FieldName = 'CODEMP'
      Required = True
    end
    object zqry_CHEQUESCODFILIAL: TSmallintField
      FieldName = 'CODFILIAL'
      Required = True
    end
    object zqry_CHEQUESCODEMPBO: TIntegerField
      FieldName = 'CODEMPBO'
      Required = True
    end
    object zqry_CHEQUESSEQCHEQ: TIntegerField
      FieldName = 'SEQCHEQ'
      Required = True
    end
    object zqry_CHEQUESCODFILIALBO: TSmallintField
      FieldName = 'CODFILIALBO'
      Required = True
    end
    object zqry_CHEQUESCODBANC: TWideStringField
      FieldName = 'CODBANC'
      Required = True
      Size = 3
    end
    object zqry_CHEQUESAGENCIACHEQ: TWideStringField
      FieldName = 'AGENCIACHEQ'
      Required = True
      Size = 7
    end
    object zqry_CHEQUESCONTACHEQ: TWideStringField
      FieldName = 'CONTACHEQ'
      Required = True
      Size = 10
    end
    object zqry_CHEQUESNUMCHEQ: TIntegerField
      FieldName = 'NUMCHEQ'
      Required = True
    end
    object zqry_CHEQUESNOMEEMITCHEQ: TWideStringField
      FieldName = 'NOMEEMITCHEQ'
      Required = True
      Size = 50
    end
    object zqry_CHEQUESNOMEFAVCHEQ: TWideStringField
      FieldName = 'NOMEFAVCHEQ'
      Required = True
      Size = 50
    end
    object zqry_CHEQUESDTEMITCHEQ: TDateField
      FieldName = 'DTEMITCHEQ'
      Required = True
    end
    object zqry_CHEQUESDTVENCTOCHEQ: TDateField
      FieldName = 'DTVENCTOCHEQ'
      Required = True
    end
    object zqry_CHEQUESDTCOMPCHEQ: TDateField
      FieldName = 'DTCOMPCHEQ'
    end
    object zqry_CHEQUESTIPOCHEQ: TWideStringField
      FieldName = 'TIPOCHEQ'
      Required = True
      Size = 2
    end
    object zqry_CHEQUESPREDATCHEQ: TWideStringField
      FieldName = 'PREDATCHEQ'
      Size = 1
    end
    object zqry_CHEQUESSITCHEQ: TWideStringField
      FieldName = 'SITCHEQ'
      Required = True
      Size = 2
    end
    object zqry_CHEQUESVLRCHEQ: TFloatField
      FieldName = 'VLRCHEQ'
      Required = True
      currency = True
    end
    object zqry_CHEQUESHISTCHEQ: TWideStringField
      FieldName = 'HISTCHEQ'
      Required = True
      Size = 500
    end
    object zqry_CHEQUESCNPJEMITCHEQ: TWideStringField
      FieldName = 'CNPJEMITCHEQ'
      Size = 14
    end
    object zqry_CHEQUESCPFEMITCHEQ: TWideStringField
      FieldName = 'CPFEMITCHEQ'
      Size = 11
    end
    object zqry_CHEQUESCNPJFAVCHEQ: TWideStringField
      FieldName = 'CNPJFAVCHEQ'
      Size = 14
    end
    object zqry_CHEQUESCPFFAVCHEQ: TWideStringField
      FieldName = 'CPFFAVCHEQ'
      Size = 11
    end
    object zqry_CHEQUESDDDFAVCHEQ: TWideStringField
      FieldName = 'DDDFAVCHEQ'
      Size = 4
    end
    object zqry_CHEQUESDDDEMITCHEQ: TWideStringField
      FieldName = 'DDDEMITCHEQ'
      Size = 4
    end
    object zqry_CHEQUESFONEEMITCHEQ: TWideStringField
      FieldName = 'FONEEMITCHEQ'
      Size = 9
    end
    object zqry_CHEQUESFONEFAVCHEQ: TWideStringField
      FieldName = 'FONEFAVCHEQ'
      Size = 9
    end
    object zqry_CHEQUESDTINS: TDateField
      FieldName = 'DTINS'
      Required = True
    end
    object zqry_CHEQUESHINS: TTimeField
      FieldName = 'HINS'
      Required = True
    end
    object zqry_CHEQUESIDUSUINS: TWideStringField
      FieldName = 'IDUSUINS'
      Required = True
      Size = 128
    end
    object zqry_CHEQUESDTALT: TDateField
      FieldName = 'DTALT'
      Required = True
    end
    object zqry_CHEQUESHALT: TTimeField
      FieldName = 'HALT'
      Required = True
    end
    object zqry_CHEQUESIDUSUALT: TWideStringField
      FieldName = 'IDUSUALT'
      Required = True
      Size = 128
    end
    object zqry_CHEQUESCONTAEMITE: TWideStringField
      FieldName = 'CONTAEMITE'
      Size = 10
    end
    object zqry_CHEQUESCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object zqry_CHEQUESCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
    end
    object zqry_CHEQUESNOMEBANCO: TWideStringField
      FieldName = 'NOMEBANCO'
      Size = 50
    end
    object zqry_CHEQUESCODEMPCL: TIntegerField
      FieldName = 'CODEMPCL'
    end
    object zqry_CHEQUESCODFILIALCL: TSmallintField
      FieldName = 'CODFILIALCL'
    end
    object zqry_CHEQUESCODEMPVD: TIntegerField
      FieldName = 'CODEMPVD'
    end
    object zqry_CHEQUESCODFILIALVD: TSmallintField
      FieldName = 'CODFILIALVD'
    end
    object zqry_CHEQUESDTDEPCHEQ: TDateField
      FieldName = 'DTDEPCHEQ'
    end
    object zqry_CHEQUESCODALINEA: TSmallintField
      FieldName = 'CODALINEA'
    end
    object zqry_CHEQUESDTDEVOLCHEQ: TDateField
      FieldName = 'DTDEVOLCHEQ'
    end
    object zqry_CHEQUESDTREAPRESENTAR: TDateField
      FieldName = 'DTREAPRESENTAR'
    end
    object zqry_CHEQUESREAPRESENTAR: TWideStringField
      FieldName = 'REAPRESENTAR'
      Size = 1
    end
    object zqry_CHEQUESAUTREAPRESENTAR: TWideStringField
      FieldName = 'AUTREAPRESENTAR'
      Size = 100
    end
  end
  object zdts_CHEQUES: TDataSource
    DataSet = zqry_CHEQUES
    Left = 556
    Top = 290
  end
  object PopupMenu1: TPopupMenu
    Left = 433
    Top = 101
    object Recebido1: TMenuItem
      Caption = 'Recebido'
      ShortCut = 32850
    end
    object Depositado1: TMenuItem
      Caption = 'Depositado'
      ShortCut = 32836
      OnClick = Depositado1Click
    end
    object Devolvido1: TMenuItem
      Caption = 'Devolvido'
      ShortCut = 32837
      OnClick = Devolvido1Click
    end
    object Compensado1: TMenuItem
      Caption = 'Compensado'
      ShortCut = 32835
      OnClick = Compensado1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PorCheque1: TMenuItem
      Caption = 'Por Cheque'
      ShortCut = 114
      OnClick = PorCheque1Click
    end
    object PorCliente1: TMenuItem
      Caption = 'Por Cliente'
      ShortCut = 115
      OnClick = PorCliente1Click
    end
    object PorData1: TMenuItem
      Caption = 'Por Data'
      ShortCut = 116
      OnClick = PorData1Click
    end
    object PorPedido1: TMenuItem
      Caption = 'Por Pedido'
      ShortCut = 117
      OnClick = PorPedido1Click
    end
    object PorSituao1: TMenuItem
      Caption = 'Por Situa'#231#227'o'
      ShortCut = 118
      OnClick = PorSituao1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConsultaClientes1: TMenuItem
      Caption = 'Consulta Clientes'
      ShortCut = 113
      OnClick = ConsultaClientes1Click
    end
  end
  object zqry_IND_QTDCH: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select count(seqcheq) from fncheque where fncheque.codcli=:clico' +
        'd and codemp=:empcod'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empcod'
        ParamType = ptUnknown
      end>
    Left = 228
    Top = 146
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empcod'
        ParamType = ptUnknown
      end>
    object zqry_IND_QTDCHCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
  end
  object zdts_IND_QTDCH: TDataSource
    DataSet = zqry_IND_QTDCH
    Left = 316
    Top = 146
  end
  object zqry_IND_VLRCH: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select sum(vlrcheq) as VLRABERTOCLI from fncheque where fncheque' +
        '.tipocheq='#39'RC'#39' and fncheque.sitcheq in('#39'CA'#39','#39'DP'#39','#39'DV'#39') and fnche' +
        'que.codcli=:clicod')
    Params = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    Left = 228
    Top = 194
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    object zqry_IND_VLRCHVLRABERTOCLI: TExtendedField
      FieldName = 'VLRABERTOCLI'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object zdts_IND_VLRCH: TDataSource
    DataSet = zqry_IND_VLRCH
    Left = 316
    Top = 194
  end
  object zqry_IND_TOTCH: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select count(seqcheq) as QTDCHABERTO from fncheque where fnchequ' +
        'e.tipocheq='#39'RC'#39' and fncheque.sitcheq in('#39'CA'#39','#39'DP'#39','#39'DV'#39') and fnch' +
        'eque.codcli=:clicod'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    Left = 228
    Top = 242
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    object zqry_IND_TOTCHQTDCHABERTO: TIntegerField
      FieldName = 'QTDCHABERTO'
      ReadOnly = True
    end
  end
  object zdts_IND_TOTCH: TDataSource
    DataSet = zqry_IND_TOTCH
    Left = 316
    Top = 242
  end
  object zqry_IND_CHDEV: TZQuery
    Connection = dm_DADOS.zCONECTA
    SQL.Strings = (
      
        'select count(seqcheq) as QTDCHDEV from fncheque where fncheque.t' +
        'ipocheq='#39'RC'#39' and fncheque.sitcheq='#39'DV'#39' and fncheque.codcli=:clic' +
        'od')
    Params = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    Left = 228
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clicod'
        ParamType = ptUnknown
      end>
    object zqry_IND_CHDEVQTDCHDEV: TIntegerField
      FieldName = 'QTDCHDEV'
      ReadOnly = True
    end
  end
  object zdts_IND_CHDEV: TDataSource
    DataSet = zqry_IND_CHDEV
    Left = 316
    Top = 290
  end
end
