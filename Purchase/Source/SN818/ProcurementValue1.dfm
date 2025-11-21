object ProcurementValue: TProcurementValue
  Left = 350
  Top = 249
  Width = 1345
  Height = 675
  Caption = 'ProcurementValue'
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
    Width = 1329
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 83
      Height = 16
      Caption = 'Request Date'
    end
    object Label2: TLabel
      Left = 205
      Top = 20
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label3: TLabel
      Left = 336
      Top = 16
      Width = 66
      Height = 16
      Caption = 'Supplier ID'
    end
    object Label4: TLabel
      Left = 520
      Top = 16
      Width = 90
      Height = 16
      Caption = 'Supplier Name'
    end
    object DTP1: TDateTimePicker
      Left = 104
      Top = 12
      Width = 100
      Height = 24
      Date = 44874.621370219910000000
      Format = 'yyyy/MM/dd'
      Time = 44874.621370219910000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 12
      Width = 100
      Height = 24
      Date = 44874.621370219910000000
      Format = 'yyyy/MM/dd'
      Time = 44874.621370219910000000
      TabOrder = 1
    end
    object ED_SupID: TEdit
      Left = 407
      Top = 12
      Width = 90
      Height = 24
      TabOrder = 2
    end
    object ED_SupName: TEdit
      Left = 615
      Top = 12
      Width = 90
      Height = 24
      TabOrder = 3
    end
    object Button1: TButton
      Left = 973
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1048
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 728
      Top = 15
      Width = 233
      Height = 17
      Caption = 'GAC - Request Date >              Days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ED_Days: TEdit
      Left = 881
      Top = 12
      Width = 33
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = '75'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1329
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
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #20379#25033#21830'|Supplier ID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #20379#25033#21830'|Supplier Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|Mat. No'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|Mat. Name'
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 50
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25505#36092#37327'|Qty'
        Width = 70
      end
      item
        DisplayFormat = '#0.0000'
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.DisplayFormat = '#0.0000'
        Footers = <>
        Title.Caption = #32654#37329#21934#20729'|USD Price'
        Width = 100
      end
      item
        DisplayFormat = '#0.0000'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.DisplayFormat = '#0.0000'
        Footers = <>
        Title.Caption = #36234#30462#21934#20729'|VND Price'
        Width = 100
      end
      item
        DisplayFormat = '###,###,###,###,##0.0000'
        EditButtons = <>
        FieldName = 'Total_USD'
        Footer.DisplayFormat = '###,###,###,###,##0.0000'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32654#37329#32317#38989'|Total USD'
        Width = 120
      end
      item
        DisplayFormat = '###,###,###,###,##0.0000'
        EditButtons = <>
        FieldName = 'Total_VND'
        Footer.DisplayFormat = '###,###,###,###,##0.0000'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#30462#32317#38989'|Total VND'
        Width = 120
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#26448#26009#21040#24288#26085'|Request Date'
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #20379#25033#21830#22238#35206#20132#26399'|Confirm Date'
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.Caption = #25490#31243#26085#26399'|Plan Date'
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #35330#21934#20986#36008#26085'|GAC Date'
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ZSBH, ZSYWJC, CLBH, YWPM, CQDH, Qty, USPrice, VNPrice, US' +
        'Price*Qty AS Total_USD, VNPrice*Qty AS Total_VND, YQDate, CFMDat' +
        'e FROM ('
      '  SELECT ZSBH, ZSYWJC, CLBH, YWPM, CQDH, Qty, YQDate, CFMDate,'
      
        '  CASE WHEN ISNULL(USPrice, 0) > 0 THEN USPrice ELSE CASE WHEN I' +
        'SNULL(VNPrice, 0) = 0 THEN ISNULL(LastUSPrice, 0) ELSE 0 END END' +
        ' AS USPrice, '
      
        '  CASE WHEN ISNULL(VNPrice, 0) > 0 THEN VNPrice ELSE CASE WHEN I' +
        'SNULL(USPrice, 0) = 0 THEN ISNULL(LastVNPrice, 0) ELSE 0 END END' +
        ' AS VNPrice FROM ('
      
        '    SELECT CGZL.ZSBH, ZSZL.ZSYWJC, CGZLS.CLBH, CLZL.YWPM, CLZL.C' +
        'QDH, SUM(CGZLS.Qty) AS Qty, CGZLS.USPrice, LastCost.LastUSPrice,' +
        ' '
      
        '    CGZLS.VNPrice, LastCost.LastVNPrice, CONVERT(SmallDateTime, ' +
        'CONVERT(VARCHAR, CGZLS.YQDate, 111)) AS YQDate, CGZLS.CFMDate FR' +
        'OM CGZLS'
      '    LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO'
      '    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH'
      '    LEFT JOIN CLZL ON CLZL.CLDH = CGZLS.CLBH'
      '    LEFT JOIN ('
      
        '      SELECT CLBH, USPrice AS LastUSPrice, VNPrice AS LastVNPric' +
        'e FROM ('
      
        '        SELECT ROW_NUMBER() OVER(PARTITION BY CGZLS.CLBH ORDER B' +
        'Y CGZLS.UserDate DESC) AS Seq, CGZLS.CLBH, CGZLS.USPrice, CGZLS.' +
        'VNPrice FROM CGZLS'
      '        LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO'
      
        '        WHERE CGZL.CGLX IN ('#39'1'#39', '#39'2'#39') AND ISNULL(CGZLS.USPrice, ' +
        '0) > 0 OR ISNULL(CGZLS.VNPrice, 0) > 0'
      '      ) AS LastUSD'
      '      WHERE Seq = 1'
      '    ) AS LastCost ON LastCost.CLBH = CGZLS.CLBH'
      
        '    WHERE CGZL.CGLX IN ('#39'1'#39', '#39'2'#39') AND YQDate BETWEEN '#39'2022/11/01' +
        #39' AND '#39'2022/11/09'#39
      
        '    GROUP BY CGZL.ZSBH, ZSZL.ZSYWJC, CGZLS.CLBH, CLZL.YWPM, CLZL' +
        '.CQDH, CGZLS.USPrice, LastCost.LastUSPrice, '
      
        '    CGZLS.VNPrice, LastCost.LastVNPrice, CONVERT(SmallDateTime, ' +
        'CONVERT(VARCHAR, CGZLS.YQDate, 111)), CGZLS.CFMDate'
      '  ) AS CGZLS'
      ') AS CGZLS')
    Left = 16
    Top = 160
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1Total_USD: TFloatField
      FieldName = 'Total_USD'
    end
    object Query1Total_VND: TCurrencyField
      FieldName = 'Total_VND'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 128
  end
end
