object frm_REL_TIPOCOBRANCA: Tfrm_REL_TIPOCOBRANCA
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio por Tipo de Cobran'#231'a'
  ClientHeight = 366
  ClientWidth = 1260
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
    Width = 1123
    Height = 794
    DataSource = dm_DADOS.dts_FNITRECEBER
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 46
      BandType = btHeader
      object RLDraw3: TRLDraw
        Left = 1
        Top = 1
        Width = 1045
        Height = 45
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object RLLabel1: TRLLabel
        Left = 3
        Top = 2
        Width = 272
        Height = 25
        Caption = 'Relat'#243'rio por Tipo de Cobran'#231'a'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 997
        Top = 27
        Width = 35
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
        Text = '/'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 956
        Top = 27
        Width = 35
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 915
        Top = 5
        Width = 118
        Height = 16
        Alignment = taRightJustify
        Text = 'Impresso em '
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 24
        Width = 235
        Height = 16
        Caption = 'Contas a Receber por Tipo de Cobran'#231'a'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 84
      Width = 1047
      Height = 77
      DataFields = 'CODREC'
      PageBreaking = pbAfterPrint
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 59
        Height = 16
        DataField = 'CODREC'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 68
        Top = 0
        Width = 78
        Height = 16
        DataField = 'CODBANCO'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 152
        Top = 0
        Width = 77
        Height = 16
        DataField = 'NUMCONTA'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 235
        Top = 0
        Width = 77
        Height = 16
        DataField = 'CODVENDA'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 318
        Top = 0
        Width = 139
        Height = 16
        AutoSize = False
        DataField = '_PLANOPAG'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 463
        Top = 0
        Width = 290
        Height = 16
        AutoSize = False
        DataField = '_RAZCLIENTE'
        DataSource = dm_DADOS.dts_FNRECEBER
        Text = ''
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 73
        object RLDBText7: TRLDBText
          Left = 104
          Top = 32
          Width = 86
          Height = 16
          DataField = 'NPARCITREC'
          DataSource = dm_DADOS.dts_FNITRECEBER
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 196
          Top = 32
          Width = 103
          Height = 16
          DataField = 'VLRAPAGITREC'
          DataSource = dm_DADOS.dts_FNITRECEBER
          Text = ''
        end
      end
    end
  end
end
