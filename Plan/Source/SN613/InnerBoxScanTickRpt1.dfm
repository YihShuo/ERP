object InnerBoxScanTickRpt: TInnerBoxScanTickRpt
  Left = 535
  Top = 348
  Width = 919
  Height = 459
  Caption = 'InnerBoxScanTickRpt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 250
      Top = 42
      Width = 83
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lean:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 273
      Height = 25
      AutoSize = False
      Caption = #29694#22580'Lean'#25475#25551#21363#26178#22577#24037#29986#37327
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 35
      Height = 18
      Caption = 'Year:'
    end
    object Label1: TLabel
      Left = 120
      Top = 42
      Width = 46
      Height = 18
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 509
      Top = 34
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object DepNMEdit: TEdit
      Left = 335
      Top = 40
      Width = 170
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 589
      Top = 33
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 48
      Top = 39
      Width = 65
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 15
      ParentFont = False
      TabOrder = 3
      Text = '2021'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 168
      Top = 39
      Width = 49
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CheckBox1: TCheckBox
      Left = 672
      Top = 46
      Width = 129
      Height = 17
      Caption = 'Show Warehouse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 911
    Height = 355
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      '')
    Left = 128
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 129
  end
end
