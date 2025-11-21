object RYSearchDlg: TRYSearchDlg
  Left = 738
  Top = 460
  Width = 233
  Height = 120
  BorderIcons = [biSystemMenu]
  Caption = 'Search Dialog'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 19
    Height = 16
    Caption = 'RY'
  end
  object ED_RY: TEdit
    Left = 56
    Top = 13
    Width = 137
    Height = 24
    TabOrder = 0
    OnKeyDown = ED_RYKeyDown
  end
  object Button1: TButton
    Left = 72
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = Button1Click
  end
end
