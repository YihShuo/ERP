object BOMMaterial: TBOMMaterial
  Left = 335
  Top = 159
  Width = 881
  Height = 480
  Caption = 'BOMMaterial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 865
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 168
      Top = 42
      Width = 48
      Height = 16
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 312
      Top = 42
      Width = 53
      Height = 16
      Caption = 'SheHao:'
    end
    object Label1: TLabel
      Left = 34
      Top = 42
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 464
      Top = 42
      Width = 29
      Height = 16
      Caption = 'Size:'
    end
    object Label4: TLabel
      Left = 16
      Top = 10
      Width = 58
      Height = 16
      Caption = 'Shoe Qty:'
    end
    object SheHao: TEdit
      Left = 376
      Top = 40
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object XieXing: TEdit
      Left = 224
      Top = 40
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Article: TEdit
      Left = 80
      Top = 40
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object XTCC: TComboBox
      Left = 504
      Top = 40
      Width = 97
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '03.0'
      Items.Strings = (
        '03.0'
        '03.5'
        '04.0'
        '04.5'
        '05.0'
        '05.5'
        '06.0'
        '06.5'
        '07.0'
        '08.0'
        '08.5'
        '09.0'
        '09.5'
        '10.0'
        '10.5'
        '11.0'
        '11.5'
        '12.0'
        '12.5'
        '13.0'
        '13.5'
        '14.0'
        '14.5'
        '15.0'
        '15.5'
        '16.0'
        '16.5'
        '17.0'
        '')
    end
    object SpinEdit1: TSpinEdit
      Left = 80
      Top = 8
      Width = 81
      Height = 26
      MaxValue = 9999
      MinValue = 1
      TabOrder = 4
      Value = 1
    end
    object BtnQry: TButton
      Left = 616
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 5
      OnClick = BtnQryClick
    end
  end
  object BOMGrid: TDBGrid
    Left = 0
    Top = 81
    Width = 865
    Height = 361
    Align = alClient
    DataSource = DS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BOMQry: TQuery
    DatabaseName = 'DB'
    Left = 144
    Top = 128
  end
  object DS: TDataSource
    DataSet = BOMQry
    Left = 136
    Top = 152
  end
end
