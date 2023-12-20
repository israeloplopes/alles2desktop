object frm_REL_TEF: Tfrm_REL_TEF
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'RESPOSTA TEF'
  ClientHeight = 721
  ClientWidth = 428
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
    Width = 302
    Height = 643
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    DataSource = dm_DADOS.zdts_ITFASTSALE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 80.000000000000000000
    PageSetup.PaperHeight = 170.000000000000000000
    PrintDialog = False
    ShowProgress = False
    JobTitle = 'Impress'#227'o Evento TEF'
    AfterPrint = RLReport1AfterPrint
    BeforePrint = RLReport1BeforePrint
    object RLBand1: TRLBand
      AlignWithMargins = True
      Left = 19
      Top = 19
      Width = 264
      Height = 602
      AlignToBottom = True
      BandType = btTitle
      object RLMemo1: TRLMemo
        Left = 0
        Top = 0
        Width = 264
        Height = 602
        Align = faClient
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        IntegralHeight = True
        ParentFont = False
      end
    end
  end
end
