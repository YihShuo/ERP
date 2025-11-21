object Report609: TReport609
  Left = 192
  Top = 127
  Width = 928
  Height = 480
  Caption = 'Rubber Cost Analysis '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 45
      Height = 16
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 32
      Width = 54
      Height = 16
      Caption = 'Shipdate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 360
      Top = 32
      Width = 17
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 32
      Width = 89
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'R1'
      Items.Strings = (
        'R1'
        'R2'
        'R3')
    end
    object sd: TDateTimePicker
      Left = 264
      Top = 32
      Width = 89
      Height = 21
      Date = 40712.590465393520000000
      Time = 40712.590465393520000000
      TabOrder = 1
    end
    object ed: TDateTimePicker
      Left = 384
      Top = 32
      Width = 89
      Height = 21
      Date = 40712.590794097220000000
      Time = 40712.590794097220000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 504
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
    end
    object Button3: TButton
      Left = 504
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Setup Product'
      TabOrder = 5
    end
  end
end
