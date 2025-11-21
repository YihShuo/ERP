object ProdSupplierKPI: TProdSupplierKPI
  Left = 184
  Top = 259
  Width = 1738
  Height = 675
  Caption = 'ProdSupplierKPI'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1722
    Height = 636
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'ETD Confirmation'
      object Splitter1: TSplitter
        Left = 395
        Top = 49
        Height = 556
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1714
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 17
          Width = 41
          Height = 16
          Caption = 'BuyNo'
        end
        object Label2: TLabel
          Left = 168
          Top = 17
          Width = 66
          Height = 16
          Caption = 'Supplier ID'
        end
        object Button1: TButton
          Left = 344
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object ED_BUYNO1: TEdit
          Left = 64
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 1
        end
        object ED_SUPPLIER1: TEdit
          Left = 240
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 2
        end
        object BTN_ExcelETD: TButton
          Left = 419
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = ExcelClick
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 395
        Height = 556
        Align = alLeft
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Supplier|ID'
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
          end
          item
            EditButtons = <>
            FieldName = 'TotalQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Total'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'OverQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Over 3 Days'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Title.Caption = 'Pass Rate'
            Width = 55
          end>
      end
      object DBGridEh2: TDBGridEh
        Left = 398
        Top = 49
        Width = 1316
        Height = 556
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'PO#'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = 'Order'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|ID'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Material|Name'
            Width = 200
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ATD Comparison'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 440
        Top = 49
        Height = 556
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1714
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 17
          Width = 41
          Height = 16
          Caption = 'BuyNo'
        end
        object Label4: TLabel
          Left = 168
          Top = 17
          Width = 66
          Height = 16
          Caption = 'Supplier ID'
        end
        object Button2: TButton
          Left = 600
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button2Click
        end
        object ED_BUYNO2: TEdit
          Left = 64
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 1
        end
        object ED_SUPPLIER2: TEdit
          Left = 240
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 2
        end
        object CB_LT: TCheckBox
          Left = 344
          Top = 18
          Width = 241
          Height = 17
          Caption = 'Ignore the material with no LeadTime'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object BTN_ExcelATD: TButton
          Left = 675
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 4
          OnClick = ExcelClick
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 440
        Height = 556
        Align = alLeft
        DataSource = DS3
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Supplier|ID'
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
          end
          item
            EditButtons = <>
            FieldName = 'TotalQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Total'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'OverQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Actual ETD > Standard ETD'
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Title.Caption = 'Pass Rate'
            Width = 55
          end>
      end
      object DBGridEh4: TDBGridEh
        Left = 443
        Top = 49
        Width = 1271
        Height = 556
        Align = alClient
        DataSource = DS4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'PO#'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = 'Order'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|ID'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Material|Name'
            Width = 200
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            Title.Caption = 'LeadTime'
            Width = 75
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'StandardDate'
            Footers = <>
            Title.Caption = 'Standard ETD'
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = 'Actual ETD'
            Width = 100
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Schedule Comparison '
      ImageIndex = 2
      object Splitter3: TSplitter
        Left = 470
        Top = 49
        Height = 556
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1714
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 16
          Top = 17
          Width = 41
          Height = 16
          Caption = 'BuyNo'
        end
        object Label6: TLabel
          Left = 168
          Top = 17
          Width = 66
          Height = 16
          Caption = 'Supplier ID'
        end
        object Button3: TButton
          Left = 344
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button3Click
        end
        object ED_BUYNO3: TEdit
          Left = 64
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 1
        end
        object ED_SUPPLIER3: TEdit
          Left = 240
          Top = 14
          Width = 81
          Height = 24
          TabOrder = 2
        end
        object BTN_ExcelSchedule: TButton
          Left = 419
          Top = 13
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = ExcelClick
        end
      end
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 49
        Width = 470
        Height = 556
        Align = alLeft
        DataSource = DS5
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Supplier|ID'
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Footers = <>
            Title.Caption = 'Supplier|Name'
          end
          item
            EditButtons = <>
            FieldName = 'TotalQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Total'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'OverQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'ETA + QC + Process > ScheduleDate'
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Title.Caption = 'Pass Rate'
            Width = 55
          end>
      end
      object DBGridEh6: TDBGridEh
        Left = 473
        Top = 49
        Width = 1241
        Height = 556
        Align = alClient
        DataSource = DS6
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'PO#'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = 'Order'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|ID'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Material|Name'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'cqdh'
            Footers = <>
            Title.Caption = 'Material|Location'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Caption = 'ETD'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Transport'
            Footers = <>
            Width = 65
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'QC'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ExtraDay'
            Footers = <>
            Title.Caption = 'Process'
            Width = 65
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'FinishDate'
            Footers = <>
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ScheduleDate'
            Footers = <>
            Width = 100
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = QSupplier
    Left = 24
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QDetail
    Left = 488
    Top = 152
  end
  object QSupplier: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, Over3Days.OverQty,' +
        ' CAST(CAST(Over3Days.OverQty*100.0/CGZL.TotalQty AS NUMERIC(5, 2' +
        ')) AS VARCHAR) + '#39' %'#39' AS Rate FROM ('
      '  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM ('
      
        '    SELECT DISTINCT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO FROM CGZ' +
        'LSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      '    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39
      '  ) AS CGZL'
      '  GROUP BY ZSBH, zsywjc'
      ') AS CGZL'
      'LEFT JOIN ('
      '  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM ('
      '    SELECT DISTINCT CGZL.ZSBH, CGZLSS.CGNO FROM CGZLSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      
        '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND D' +
        'ATEDIFF(DAY, CGZL.CGDate, CGZLS.CFMDate) >= 2'
      '  ) AS CGZL'
      '  GROUP BY ZSBH'
      ') AS Over3Days ON Over3Days.ZSBH = CGZL.ZSBH'
      'WHERE Over3Days.OverQty > 0'
      'ORDER BY Over3Days.OverQty DESC')
    Left = 24
    Top = 184
    object QSupplierZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QSupplierzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object QSupplierTotalQty: TIntegerField
      FieldName = 'TotalQty'
    end
    object QSupplierOverQty: TIntegerField
      FieldName = 'OverQty'
    end
    object QSupplierRate: TStringField
      FieldName = 'Rate'
      FixedChar = True
      Size = 32
    end
  end
  object QDetail: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.ZLBH, CGZLSS.CLBH, CLZL.yw' +
        'pm, CGZL.CGDate, CONVERT(DATETIME, CONVERT(VARCHAR, CGZLS.UserDa' +
        'te, 111)) AS CFMDate,'
      
        'DATEDIFF(DAY, CGZL.CGDate, CGZLS.UserDate) + 1 AS Days FROM CGZL' +
        'SS'
      
        'LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZ' +
        'LSS.CLBH'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      'LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH'
      
        'WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND CGZL.' +
        'ZSBH LIKE '#39'%'#39' AND DATEDIFF(DAY, CGZL.CGDate, CGZLS.UserDate) >= ' +
        '2'
      'AND CGZL.ZSBH = '#39'VC02'#39
      
        'ORDER BY DATEDIFF(DAY, CGZL.CGDate, CGZLS.UserDate) DESC, CGZLSS' +
        '.CGNO')
    Left = 488
    Top = 184
    object QDetailZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QDetailCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QDetailCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object QDetailCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QDetailZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object QDetailywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object QDetailSeq: TIntegerField
      FieldName = 'Seq'
    end
  end
  object DS3: TDataSource
    DataSet = QSupplierATD
    Left = 56
    Top = 152
  end
  object QSupplierATD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, Over3Days.OverQty,' +
        ' CAST(CAST(Over3Days.OverQty*100.0/CGZL.TotalQty AS NUMERIC(5, 2' +
        ')) AS VARCHAR) + '#39' %'#39' AS Rate FROM ('
      '  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM ('
      
        '    SELECT DISTINCT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO FROM CGZ' +
        'LSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      '    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39
      '  ) AS CGZL'
      '  GROUP BY ZSBH, zsywjc'
      ') AS CGZL'
      'LEFT JOIN ('
      '  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM ('
      '    SELECT DISTINCT CGZL.ZSBH, CGZLSS.CGNO FROM CGZLSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      
        '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND D' +
        'ATEDIFF(DAY, CGZL.CGDate, CGZLS.CFMDate) >= 2'
      '  ) AS CGZL'
      '  GROUP BY ZSBH'
      ') AS Over3Days ON Over3Days.ZSBH = CGZL.ZSBH'
      'WHERE Over3Days.OverQty > 0'
      'ORDER BY Over3Days.OverQty DESC')
    Left = 56
    Top = 184
    object StringField1: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'TotalQty'
    end
    object IntegerField2: TIntegerField
      FieldName = 'OverQty'
    end
    object StringField3: TStringField
      FieldName = 'Rate'
      FixedChar = True
      Size = 32
    end
  end
  object DS4: TDataSource
    DataSet = QDetailATD
    Left = 520
    Top = 152
  end
  object QDetailATD: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CLZL.ywpm, CGZLSS.ZL' +
        'BH, CGZLS.CFMDate, MaterialMOQ.ProdLeadTime, CGZL.CGDate, DATEAD' +
        'D(DAY, MaterialMOQ.ProdLeadTime-1, CGZL.CGDate) AS StandardDate ' +
        'FROM CGZLSS'
      
        'LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZ' +
        'LSS.CLBH'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      'LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH'
      'LEFT JOIN ('
      '  SELECT ZSBH, CLBH, ProdLeadTime FROM ('
      
        '    SELECT ZSBH, CLBH, ProdLeadTime, ROW_NUMBER() OVER (PARTITIO' +
        'N BY CLBH ORDER BY Season DESC) AS Seq FROM MaterialMOQ'
      '  ) AS MaterialMOQ'
      '  WHERE Seq = 1'
      
        ') AS MaterialMOQ ON MaterialMOQ.ZSBH = CGZL.ZSBH AND MaterialMOQ' +
        '.CLBH = CGZLSS.CLBH'
      
        'WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND (DATE' +
        'ADD(DAY, MaterialMOQ.ProdLeadTime-1, CGZL.CGDate) <= CGZLS.CFMDa' +
        'te OR MaterialMOQ.ProdLeadTime IS NULL)'
      'AND CGZL.ZSBH = :ZSBH')
    Left = 520
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZSBH'
        ParamType = ptUnknown
      end>
    object QDetailATDZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QDetailATDCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QDetailATDZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object QDetailATDCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QDetailATDywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object QDetailATDCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object QDetailATDCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QDetailATDProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object QDetailATDStandardDate: TDateTimeField
      FieldName = 'StandardDate'
    end
  end
  object DS5: TDataSource
    DataSet = QSupplierSchedule
    Left = 88
    Top = 152
  end
  object QSupplierSchedule: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, Over3Days.OverQty,' +
        ' CAST(CAST(Over3Days.OverQty*100.0/CGZL.TotalQty AS NUMERIC(5, 2' +
        ')) AS VARCHAR) + '#39' %'#39' AS Rate FROM ('
      '  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM ('
      
        '    SELECT DISTINCT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO FROM CGZ' +
        'LSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      '    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39
      '  ) AS CGZL'
      '  GROUP BY ZSBH, zsywjc'
      ') AS CGZL'
      'LEFT JOIN ('
      '  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM ('
      '    SELECT DISTINCT CGZL.ZSBH, CGZLSS.CGNO FROM CGZLSS'
      
        '    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH =' +
        ' CGZLSS.CLBH'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      '    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      
        '    WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND D' +
        'ATEDIFF(DAY, CGZL.CGDate, CGZLS.CFMDate) >= 2'
      '  ) AS CGZL'
      '  GROUP BY ZSBH'
      ') AS Over3Days ON Over3Days.ZSBH = CGZL.ZSBH'
      'WHERE Over3Days.OverQty > 0'
      'ORDER BY Over3Days.OverQty DESC')
    Left = 88
    Top = 184
    object StringField4: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField5: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'TotalQty'
    end
    object IntegerField4: TIntegerField
      FieldName = 'OverQty'
    end
    object StringField6: TStringField
      FieldName = 'Rate'
      FixedChar = True
      Size = 32
    end
  end
  object DS6: TDataSource
    DataSet = QDetailSchedule
    Left = 552
    Top = 152
  end
  object QDetailSchedule: TQuery
    DatabaseName = 'DB'
    DataSource = DS5
    SQL.Strings = (
      
        'SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CLZL.ywpm, CLZL.cqdh' +
        ', CGZLSS.ZLBH, CGZL.CGDate, CGZLS.CFMDate, SMDD.ScheduleDate, CA' +
        'SE WHEN CLZL.cqdh = '#39'VN'#39' THEN 2 ELSE 14 END AS Transport,'
      
        '7 AS QC, xxzlkf.ExtraDay, DATEADD(DAY, -7 - CASE WHEN CLZL.cqdh ' +
        '= '#39'VN'#39' THEN 2 ELSE 14 END - xxzlkf.ExtraDay + 1, SMDD.ScheduleDa' +
        'te) AS StandardDate FROM CGZLSS'
      
        'LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZ' +
        'LSS.CLBH'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO'
      'LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH'
      
        'LEFT JOIN xxzlkf ON xxzlkf.XieXing = DDZL.XieXing AND xxzlkf.She' +
        'Hao = DDZL.SheHao'
      'LEFT JOIN ('
      '  SELECT YSBH, MIN(PlanDate) AS ScheduleDate FROM SMDD'
      '  WHERE GXLB = '#39'A'#39' AND GSBH = '#39'VA12'#39
      '  GROUP BY YSBH'
      ') AS SMDD ON SMDD.YSBH = DDZL.DDBH'
      
        'WHERE DDZL.BUYNO LIKE '#39'202012%'#39' AND CGZL.GSBH = '#39'VA12'#39' AND CGZL.' +
        'ZSBH = :ZSBH'
      
        'AND DATEADD(DAY, -7 - CASE WHEN CLZL.cqdh = '#39'VN'#39' THEN 2 ELSE 14 ' +
        'END - xxzlkf.ExtraDay, SMDD.ScheduleDate + 1) >= CGZLS.CFMDate')
    Left = 552
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZSBH'
        ParamType = ptUnknown
      end>
    object QDetailScheduleZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object QDetailScheduleCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QDetailScheduleCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QDetailScheduleywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object QDetailSchedulecqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object QDetailScheduleZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object QDetailScheduleCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object QDetailScheduleCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QDetailScheduleTransport: TIntegerField
      FieldName = 'Transport'
    end
    object QDetailScheduleETA: TDateTimeField
      FieldName = 'ETA'
    end
    object QDetailScheduleScheduleDate: TDateTimeField
      FieldName = 'ScheduleDate'
    end
    object QDetailScheduleFinishDate: TDateTimeField
      FieldName = 'FinishDate'
    end
    object QDetailScheduleQC: TIntegerField
      FieldName = 'QC'
    end
    object QDetailScheduleExtraDay: TIntegerField
      FieldName = 'ExtraDay'
    end
  end
end
