object Overtime_Report: TOvertime_Report
  Left = 336
  Top = 211
  Width = 1349
  Height = 531
  Caption = 'Overtime_Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 921
    Top = 49
    Height = 443
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1333
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 15
      Width = 36
      Height = 20
      Caption = 'Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 176
      Top = 15
      Width = 12
      Height = 20
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 322
      Top = 15
      Width = 92
      Height = 20
      Caption = 'Department'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 593
      Top = 15
      Width = 95
      Height = 20
      Caption = 'Employee ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 797
      Top = 15
      Width = 75
      Height = 20
      Caption = 'EngName'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 12
      Width = 110
      Height = 26
      Date = 43101.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 43101.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 192
      Top = 12
      Width = 110
      Height = 26
      Date = 43830.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 43830.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 1008
      Top = 10
      Width = 73
      Height = 28
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object CB1: TComboBox
      Left = 424
      Top = 13
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Edit1: TEdit
      Left = 696
      Top = 13
      Width = 81
      Height = 24
      TabOrder = 4
    end
    object Button2: TButton
      Left = 1088
      Top = 10
      Width = 73
      Height = 28
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 880
      Top = 13
      Width = 105
      Height = 24
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 921
    Height = 443
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'EmployeeID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@'#24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        Title.Caption = 'Employee ID'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'EngName'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@'#24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        Width = 239
      end
      item
        EditButtons = <>
        FieldName = 'Department'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@'#24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'WorkingTime'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@'#24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        Title.Caption = 'Working Time'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'OverTime'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@'#24494#36575#27491#40657#39636
        Font.Style = []
        Footers = <>
        Title.Caption = 'Over Time'
        Width = 95
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 924
    Top = 49
    Width = 409
    Height = 443
    Align = alRight
    DataSource = DataSource2
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
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NV_MA'
        Footers = <>
        Title.Caption = 'Employee ID'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'QT_NGAY'
        Footers = <>
        Title.Caption = 'Date'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'CC_GIOBINHTHUONG'
        Footers = <>
        Title.Caption = 'Working Time'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'CC_GIOTANGCA'
        Footers = <>
        Title.Caption = 'Over Time'
        Width = 95
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 48
    Top = 104
  end
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 16
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 904
    Top = 104
  end
  object ADOConnection1: TADOConnection
    CommandTimeout = 1500
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123456;Persist Security Info=True;U' +
      'ser ID=hrms;Initial Catalog=P0104-TYXUAN;Data Source=192.168.23.' +
      '123'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 104
  end
  object ADOQTemp: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    Left = 80
    Top = 136
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    Left = 48
    Top = 136
    object Query1EmployeeID: TStringField
      FieldName = 'EmployeeID'
      Size = 10
    end
    object Query1EngName: TStringField
      FieldName = 'EngName'
    end
    object Query1Name: TStringField
      FieldName = 'Name'
      Size = 30
    end
    object Query1Department: TStringField
      FieldName = 'Department'
    end
    object Query1WorkingTime: TFloatField
      FieldName = 'WorkingTime'
    end
    object Query1OverTime: TFloatField
      FieldName = 'OverTime'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CommandTimeout = 0
    Parameters = <>
    Left = 904
    Top = 136
    object ADOQuery1NV_MA: TStringField
      FieldName = 'NV_MA'
      Size = 10
    end
    object ADOQuery1QT_NGAY: TDateTimeField
      FieldName = 'QT_NGAY'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ADOQuery1CC_GIOBINHTHUONG: TFloatField
      FieldName = 'CC_GIOBINHTHUONG'
    end
    object ADOQuery1CC_GIOTANGCA: TFloatField
      FieldName = 'CC_GIOTANGCA'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 936
    Top = 136
  end
end
