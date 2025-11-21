object EntryMatRFIDCode_DLG: TEntryMatRFIDCode_DLG
  Left = 462
  Top = 229
  BorderStyle = bsDialog
  Caption = 'EntryMatRFIDCode_DLG'
  ClientHeight = 165
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 304
    Height = 29
    Caption = 'Vui long chon ma vat tu tu:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button2: TButton
    Left = 121
    Top = 80
    Width = 90
    Height = 41
    Caption = 'Ke Toan'
    Enabled = False
    TabOrder = 0
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 18
    Top = 80
    Width = 90
    Height = 41
    Caption = 'Ma Vat Tu'
    Enabled = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 225
    Top = 79
    Width = 90
    Height = 41
    Caption = 'Thu Mua'
    TabOrder = 2
    OnClick = Button4Click
  end
  object Button1: TButton
    Left = 329
    Top = 79
    Width = 90
    Height = 41
    Caption = 'Gia Cong'
    TabOrder = 3
    OnClick = Button1Click
  end
end
