object ExcelSheetSelection: TExcelSheetSelection
  Left = 693
  Top = 304
  Width = 197
  Height = 306
  BorderIcons = []
  Caption = 'Available Sheets'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageBox: TCheckListBox
    Left = 0
    Top = 0
    Width = 181
    Height = 232
    OnClickCheck = PageBoxClickCheck
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 232
    Width = 181
    Height = 35
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 0
      Top = 0
      Width = 90
      Height = 34
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 90
      Top = 0
      Width = 90
      Height = 34
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
