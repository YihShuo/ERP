object SequenceCheck: TSequenceCheck
  Left = 725
  Top = 454
  Width = 204
  Height = 165
  BorderIcons = [biSystemMenu]
  Caption = 'Sequence Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 188
    Height = 126
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 20
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 15
      Top = 52
      Width = 48
      Height = 16
      Caption = 'Building'
    end
    object DTP1: TDateTimePicker
      Left = 68
      Top = 16
      Width = 97
      Height = 24
      Date = 45635.709768506950000000
      Format = 'yyyy/MM/dd'
      Time = 45635.709768506950000000
      TabOrder = 0
    end
    object CB_Building: TComboBox
      Left = 68
      Top = 48
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'A02'
        'A03'
        'A07'
        'A08'
        'A09'
        'A11'
        'A12'
        'A15'
        'A16'
        'C02')
    end
    object Button1: TButton
      Left = 56
      Top = 87
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 88
  end
end
