object YearOrderQty1: TYearOrderQty1
  Left = 671
  Top = 159
  Width = 1337
  Height = 674
  Caption = 'YearOrderQty'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1319
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 16
      Width = 45
      Height = 25
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 16
      Width = 24
      Height = 25
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 376
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 16
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 1
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 248
      Top = 16
      Width = 105
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023')
    end
    object Button2: TButton
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 576
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Rule'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1319
    Height = 564
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 486
      Top = 1
      Width = 832
      Height = 562
      Align = alClient
      DataSource = DataSource1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh1DrawColumnCell
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 485
      Height = 562
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        '1.'#20197#27599#20491#26376#30340'Shipdate'#30340#35330#21934#25976#37327#21152#32317
        '2.'#21482#25235#21462'Converse'#35330#21934)
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'dB'
    Left = 176
    Top = 169
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 129
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 112
    Top = 169
  end
end
