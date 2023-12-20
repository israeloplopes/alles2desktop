object frm_DLG_ALTERASENHA: Tfrm_DLG_ALTERASENHA
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera Senha'
  ClientHeight = 211
  ClientWidth = 221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Usuário: TLabel
    Left = 8
    Top = 15
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label1: TLabel
    Left = 8
    Top = 45
    Width = 58
    Height = 13
    Caption = 'Senha Atual'
  end
  object Label2: TLabel
    Left = 8
    Top = 75
    Width = 58
    Height = 13
    Caption = 'Nova Senha'
  end
  object Label3: TLabel
    Left = 8
    Top = 105
    Width = 73
    Height = 13
    Caption = 'Repita a Senha'
  end
  object edt_USUARIO: TEdit
    Left = 88
    Top = 10
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 0
    OnExit = edt_USUARIOExit
  end
  object edt_SENHAATUAL: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    PasswordChar = '*'
    TabOrder = 1
  end
  object edt_NOVASENHA: TEdit
    Left = 88
    Top = 70
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    PasswordChar = '*'
    TabOrder = 2
  end
  object edt_REPETESENHA: TEdit
    Left = 88
    Top = 100
    Width = 121
    Height = 21
    CharCase = ecLowerCase
    PasswordChar = '*'
    TabOrder = 3
  end
  object btn_GRAVAR: TBitBtn
    Left = 53
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 4
  end
  object btn_CANCELAR: TBitBtn
    Left = 134
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btn_CANCELARClick
  end
end
