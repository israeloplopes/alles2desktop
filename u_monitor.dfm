object frm_MONITOR: Tfrm_MONITOR
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'MONITOR'
  ClientHeight = 267
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgRespostas: TPageControl
    Left = 0
    Top = 0
    Width = 495
    Height = 267
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -72
    ExplicitTop = -146
    ExplicitWidth = 567
    ExplicitHeight = 413
    object TabSheet5: TTabSheet
      Caption = 'Respostas'
      ExplicitWidth = 559
      ExplicitHeight = 385
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitWidth = 559
        ExplicitHeight = 385
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'XML Resposta'
      ImageIndex = 1
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 559
        ExplicitHeight = 385
        ControlData = {
          4C00000055320000B41800000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126200000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Log'
      ImageIndex = 2
      object memoLog: TMemo
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Documento'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object trvwDocumento: TTreeView
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        Indent = 19
        TabOrder = 0
        ExplicitWidth = 559
        ExplicitHeight = 385
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Retorno Completo WS'
      ImageIndex = 4
      object memoRespWS: TMemo
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Dados: TTabSheet
      Caption = 'Dados'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoDados: TMemo
        Left = 0
        Top = 0
        Width = 487
        Height = 239
        Align = alClient
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
  end
end
