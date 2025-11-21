object MQRBD: TMQRBD
  Left = 566
  Top = 324
  Width = 800
  Height = 480
  Caption = 'Monthly QC Report(By Dep)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
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
    Width = 792
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 15
      Width = 38
      Height = 20
      Caption = 'Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 136
      Top = 16
      Width = 49
      Height = 20
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 264
      Top = 16
      Width = 58
      Height = 20
      Caption = 'Section:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 20
      Top = 53
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 56
      Top = 15
      Width = 73
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = '2011'
      Items.Strings = (
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
      Left = 192
      Top = 15
      Width = 57
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
      TabOrder = 1
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
    object Button1: TButton
      Left = 560
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 328
      Top = 6
      Width = 217
      Height = 41
      Caption = 'GXLB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object CK1: TCheckBox
        Left = 16
        Top = 20
        Width = 57
        Height = 17
        Caption = 'A'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CK2: TCheckBox
        Left = 56
        Top = 18
        Width = 49
        Height = 17
        Caption = 'AR'
        TabOrder = 1
      end
      object CK3: TCheckBox
        Left = 104
        Top = 20
        Width = 49
        Height = 17
        Caption = 'C'
        TabOrder = 2
      end
      object CK4: TCheckBox
        Left = 144
        Top = 20
        Width = 41
        Height = 17
        Caption = 'S'
        TabOrder = 3
      end
    end
    object Edit1: TEdit
      Left = 104
      Top = 48
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object InspectSQLCK: TCheckBox
      Left = 280
      Top = 56
      Width = 193
      Height = 17
      Caption = 'Inspect include NG Qty'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object TodayCheckBox: TCheckBox
      Left = 488
      Top = 56
      Width = 193
      Height = 17
      Caption = 'IncludeToday'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
  end
  object Button2: TButton
    Left = 648
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 792
    Height = 360
    Align = alClient
    DataSource = DS1
    EvenRowColor = clMenu
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 152
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 184
  end
end
