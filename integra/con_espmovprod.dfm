object frm_CON_ESPMOVPROD: Tfrm_CON_ESPMOVPROD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'CONSULTA MOVIMENTO DO PRODUTO'
  ClientHeight = 281
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 93
    Height = 13
    Caption = 'C'#211'DIGO PRODUTO'
  end
  object DBText1: TDBText
    Left = 104
    Top = 27
    Width = 512
    Height = 17
    DataField = 'DESCRICAO'
    DataSource = dm_DADOS.zdts_ESPMOVPROD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 104
    Top = 50
    Width = 65
    Height = 17
    DataField = 'CUSTOINFOPROD'
    DataSource = dm_DADOS.zdts_EQPRODUTO
  end
  object Label2: TLabel
    Left = 8
    Top = 50
    Width = 91
    Height = 13
    Caption = 'Custo Informado : '
  end
  object Label3: TLabel
    Left = 208
    Top = 50
    Width = 73
    Height = 13
    Caption = 'QTD Estoque : '
  end
  object DBText3: TDBText
    Left = 287
    Top = 50
    Width = 65
    Height = 17
    DataField = 'SLDPROD'
    DataSource = dm_DADOS.zdts_EQPRODUTO
  end
  object DBText4: TDBText
    Left = 8
    Top = 29
    Width = 65
    Height = 17
    DataField = 'CODPRODUTO'
    DataSource = dm_DADOS.zdts_ESPMOVPROD
  end
  object DBText5: TDBText
    Left = 419
    Top = 50
    Width = 65
    Height = 17
    DataField = 'CODFISC'
    DataSource = dm_DADOS.zdts_EQPRODUTO
  end
  object Label4: TLabel
    Left = 384
    Top = 50
    Width = 29
    Height = 13
    Caption = 'NCM :'
  end
  object edt_buscacodigo: TEdit
    Left = 104
    Top = 5
    Width = 73
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 183
    Top = 3
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 73
    Width = 868
    Height = 200
    DataSource = dm_DADOS.zdts_ESPMOVPROD
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DTMOVPROD'
        Title.Caption = 'DT MOV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODMOVIMENTO'
        Title.Caption = 'C'#211'D. MOV.'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOMOVIMENTO'
        Title.Caption = 'TIPO'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMERAZAOTIPO'
        Title.Caption = 'MOVIMENTO'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'DOC.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCOMPRA'
        Title.Caption = 'COD. COMPRA'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODVENDA'
        Title.Caption = 'COD. VENDA'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Caption = 'QTD'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLANCAMENTO'
        Title.Caption = 'CUSTO'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTO'
        Title.Caption = 'VLR. PROD.'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Width = 88
        Visible = True
      end>
  end
end
