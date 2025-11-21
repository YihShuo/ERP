object F_SplitTheOrder: TF_SplitTheOrder
  Left = 739
  Top = 353
  Width = 693
  Height = 470
  Caption = 'F_SplitTheOrder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 518
    Height = 402
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Checked'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'RPlanDate'
        Footers = <>
        Width = 120
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 41
    Align = alTop
    TabOrder = 1
    object Button1: TButton
      Left = 56
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Update Selected To  =>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 208
      Top = 8
      Width = 145
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 1
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
    object DTP1: TDateTimePicker
      Left = 350
      Top = 8
      Width = 114
      Height = 25
      Date = 42998.382618194450000000
      Time = 42998.382618194450000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object EditA: TEdit
    Left = 416
    Top = 312
    Width = 81
    Height = 25
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'DepID_A'
    Visible = False
  end
  object DBGridEh2: TDBGridEh
    Left = 518
    Top = 41
    Width = 167
    Height = 402
    Align = alRight
    DataSource = DataSource2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #24494#36575#27491#40657#39636
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = #24494#36575#27491#40657#39636
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 80
      end>
  end
  object EditS: TEdit
    Left = 416
    Top = 344
    Width = 81
    Height = 25
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'DepID_S'
    Visible = False
  end
  object EditC: TEdit
    Left = 416
    Top = 376
    Width = 81
    Height = 25
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = 'DepID_C'
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CAST(0 AS BIT) AS Checked, S.DDBH, S.Qty, S.RDepNO, S.RPl' +
        'anDate FROM SMDD S'
      'WHERE S.YSBH = '#39'Y1609-0497'#39' AND S.GSBH = '#39'VA12'#39' AND GXLB = '#39'A'#39)
    UpdateObject = UpdateSQL1
    Left = 56
    Top = 88
    object Query1Checked: TBooleanField
      FieldName = 'Checked'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
    end
    object Query1RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 88
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 128
    Top = 120
  end
  object UpdateSQL1: TUpdateSQL
    Left = 56
    Top = 120
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'SELECT XXCC, Qty FROM SMDDS WHERE DDBH = :DDBH')
    Left = 584
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 20
      end>
    object Query3XXCC: TStringField
      FieldName = 'XXCC'
    end
    object Query3Qty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query3
    Left = 552
    Top = 88
  end
end
