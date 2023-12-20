object frm_FISCAL: Tfrm_FISCAL
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'M'#211'DULO FISCAL'
  ClientHeight = 271
  ClientWidth = 394
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
  object btn_SAIR: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 233
    Width = 388
    Height = 35
    Align = alBottom
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btn_SAIRClick
    ExplicitTop = 243
  end
  object btn_SINTEGRA: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 388
    Height = 35
    Align = alTop
    Caption = 'Sintegra'
    TabOrder = 1
    OnClick = btn_SINTEGRAClick
  end
  object btn_SPEDFISCAL: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 388
    Height = 35
    Align = alTop
    Caption = 'SPED Fiscal'
    TabOrder = 2
    OnClick = btn_SPEDFISCALClick
  end
  object btn_SPEDCONTABIL: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 85
    Width = 388
    Height = 35
    Align = alTop
    Caption = 'SPED Cont'#225'bil'
    TabOrder = 3
    OnClick = btn_SPEDCONTABILClick
  end
  object btn_SPEDPISCOFINS: TBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 126
    Width = 388
    Height = 35
    Align = alTop
    Caption = 'SPED PIS/Cofins'
    TabOrder = 4
    OnClick = btn_SPEDPISCOFINSClick
  end
end
