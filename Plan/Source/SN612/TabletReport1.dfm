object TabletReport: TTabletReport
  Left = 316
  Top = 205
  Width = 1073
  Height = 675
  Caption = 'TabletReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 20
      Width = 64
      Height = 16
      Caption = #22577#24037#26085#26399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 20
      Width = 32
      Height = 16
      Caption = #32218#21029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 95
      Top = 16
      Width = 98
      Height = 24
      Date = 44627.693413923610000000
      Format = 'yyyy/MM/dd'
      Time = 44627.693413923610000000
      TabOrder = 0
    end
    object CB1: TComboBox
      Left = 263
      Top = 16
      Width = 162
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Button1: TButton
      Left = 456
      Top = 12
      Width = 75
      Height = 33
      Caption = #26597#35426
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 560
      Top = 13
      Width = 73
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button5Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1065
    Height = 587
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DepNO'
        Footers = <>
        Title.Caption = #21934#20301#32232#34399
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #21934#20301#21517#31281
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#29986#37327
      end
      item
        EditButtons = <>
        FieldName = '7-8'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '8-9'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '9-10'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '10-11'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '11-12'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '12-13'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '13-14'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '14-15'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '15-16'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '16-17'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '17-18'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '18-19'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '19-20'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 104
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'SELECT SMZL_Tablet.DepNO, BDepartment.DepName,'
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 7 THEN' +
        ' SMZL_Tablet.Pairs END), 0) AS '#39'7-8'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 8 THEN' +
        ' SMZL_Tablet.Pairs END), 0) AS '#39'8-9'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 9 THEN' +
        ' SMZL_Tablet.Pairs END), 0) AS '#39'9-10'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 10 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'10-11'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 11 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'11-12'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 12 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'12-13'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 13 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'13-14'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 14 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'14-15'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 15 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'15-16'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 16 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'16-17'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 17 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'17-18'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 18 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'18-19'#39','
      
        'ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 19 THE' +
        'N SMZL_Tablet.Pairs END), 0) AS '#39'19-20'#39','
      
        'ISNULL(SUM(SMZL_Tablet.Pairs), 0) AS Total,DDZL.ARTICLE FROM SMZ' +
        'L_Tablet'
      'LEFT JOIN BDepartment ON BDepartment.ID = SMZL_Tablet.DepNO'
      'LEFT JOIN DDZL ON DDZL.DDBH = SMZL_Tablet.SCBH'
      'WHERE CONVERT(VARCHAR, SMZL_Tablet.ScanDate, 111) = '#39'2022/03/17'#39
      'GROUP BY SMZL_Tablet.DepNO, BDepartment.DepName,DDZL.ARTICLE')
    Left = 24
    Top = 136
    object Query1DepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1BDEDesigner78: TIntegerField
      FieldName = '7-8'
    end
    object Query1BDEDesigner89: TIntegerField
      FieldName = '8-9'
    end
    object Query1BDEDesigner910: TIntegerField
      FieldName = '9-10'
    end
    object Query1BDEDesigner1011: TIntegerField
      FieldName = '10-11'
    end
    object Query1BDEDesigner1112: TIntegerField
      FieldName = '11-12'
    end
    object Query1BDEDesigner1213: TIntegerField
      FieldName = '12-13'
    end
    object Query1BDEDesigner1314: TIntegerField
      FieldName = '13-14'
    end
    object Query1BDEDesigner1415: TIntegerField
      FieldName = '14-15'
    end
    object Query1BDEDesigner1516: TIntegerField
      FieldName = '15-16'
    end
    object Query1BDEDesigner1617: TIntegerField
      FieldName = '16-17'
    end
    object Query1BDEDesigner1718: TIntegerField
      FieldName = '17-18'
    end
    object Query1BDEDesigner1819: TIntegerField
      FieldName = '18-19'
    end
    object Query1BDEDesigner1920: TIntegerField
      FieldName = '19-20'
    end
    object Query1Total: TIntegerField
      FieldName = 'Total'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 56
    Top = 136
  end
end
