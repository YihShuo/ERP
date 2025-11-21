object ScheduleVersion: TScheduleVersion
  Left = 755
  Top = 409
  Width = 265
  Height = 128
  BorderIcons = [biSystemMenu]
  Caption = 'Version'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 109
    Height = 16
    Caption = 'Schedule Version:'
  end
  object DTP1: TDateTimePicker
    Left = 136
    Top = 12
    Width = 97
    Height = 24
    Date = 45446.456144305560000000
    Format = 'yyyy/MM/dd'
    Time = 45446.456144305560000000
    TabOrder = 0
  end
  object Button1: TButton
    Left = 80
    Top = 48
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
