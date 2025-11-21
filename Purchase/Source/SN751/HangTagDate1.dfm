object HangTagDate: THangTagDate
  Left = 656
  Top = 405
  Width = 234
  Height = 122
  BorderIcons = []
  Caption = 'HangTagDate'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 218
    Height = 83
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 66
      Height = 13
      Caption = 'Receive Date'
    end
    object DTP1: TDateTimePicker
      Left = 96
      Top = 12
      Width = 97
      Height = 21
      Date = 44793.434397256950000000
      Format = 'yyyy/MM/dd'
      Time = 44793.434397256950000000
      TabOrder = 0
    end
    object B_OK: TButton
      Left = 56
      Top = 48
      Width = 49
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
      OnClick = B_OKClick
    end
    object B_Cancel: TButton
      Left = 112
      Top = 48
      Width = 49
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 2
    end
  end
end
