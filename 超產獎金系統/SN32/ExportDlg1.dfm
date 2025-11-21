object ExportDlg: TExportDlg
  Left = 0
  Top = 0
  Caption = 'Export Excel'
  ClientHeight = 129
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 136
    Height = 13
    Caption = #35531#36984#25799#21295#20986#36039#26009#26085#26399#31684#22285':'
  end
  object Label2: TLabel
    Left = 129
    Top = 47
    Width = 8
    Height = 13
    Caption = '~'
  end
  object DTP1: TDateTimePicker
    Left = 24
    Top = 43
    Width = 97
    Height = 21
    Date = 44589.430143402780000000
    Format = 'yyyy/MM/dd'
    Time = 44589.430143402780000000
    TabOrder = 0
  end
  object DTP2: TDateTimePicker
    Left = 144
    Top = 43
    Width = 97
    Height = 21
    Date = 44589.430143402780000000
    Format = 'yyyy/MM/dd'
    Time = 44589.430143402780000000
    TabOrder = 1
  end
  object Button1: TButton
    Left = 46
    Top = 88
    Width = 75
    Height = 25
    Caption = #30906#23450
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 88
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = Button2Click
  end
end
