object frm_STATUS: Tfrm_STATUS
  Left = 231
  Top = 166
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'ERPron INTEGRA'
  ClientHeight = 45
  ClientWidth = 481
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 45
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clBlack
    TabOrder = 0
    object lbl1: TLabel
      Left = 2
      Top = 2
      Width = 477
      Height = 17
      Align = alTop
      AutoSize = False
      Caption = 'Status do Componente de Comuni'#231#227'o'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object lblStatus: TLabel
      Left = 2
      Top = 19
      Width = 477
      Height = 24
      Align = alClient
      Color = clGray
      ParentColor = False
      Layout = tlCenter
      ExplicitWidth = 3
      ExplicitHeight = 13
    end
  end
end
