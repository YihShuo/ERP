object StockOut_BC_Report: TStockOut_BC_Report
  Left = 361
  Top = 284
  Width = 1305
  Height = 675
  Caption = 'StockOut_BC_Report'
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
    Width = 1289
    Height = 67
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 27
      Top = 8
      Width = 41
      Height = 16
      Caption = 'List No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 302
      Top = 43
      Width = 37
      Height = 16
      Caption = 'Status'
    end
    object Label1: TLabel
      Left = 194
      Top = 8
      Width = 51
      Height = 16
      Caption = 'Purpose'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 41
      Width = 61
      Height = 16
      Caption = 'User Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 180
      Top = 43
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 338
      Top = 8
      Width = 39
      Height = 16
      Caption = 'DDBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 528
      Top = 3
      Width = 75
      Height = 29
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 619
      Top = 4
      Width = 75
      Height = 29
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object ED_LLNO: TEdit
      Left = 72
      Top = 4
      Width = 106
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object GB1: TGroupBox
      Left = 343
      Top = 32
      Width = 430
      Height = 31
      TabOrder = 3
      object CB1: TCheckBox
        Left = 6
        Top = 11
        Width = 111
        Height = 17
        Caption = 'Not Submitted'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CB2: TCheckBox
        Left = 128
        Top = 11
        Width = 105
        Height = 17
        Caption = 'Under Review'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object CB3: TCheckBox
        Left = 248
        Top = 11
        Width = 81
        Height = 17
        Caption = 'Stock-Out'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 54528
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 2
      end
      object CB4: TCheckBox
        Left = 344
        Top = 11
        Width = 84
        Height = 17
        Caption = 'Cancelled'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 3
      end
    end
    object CBox1: TComboBox
      Left = 250
      Top = 4
      Width = 55
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Sale'
        'Scrap')
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 38
      Width = 106
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 194
      Top = 38
      Width = 97
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 383
      Top = 4
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 67
    Width = 1289
    Height = 569
    Align = alClient
    DataSource = DS1
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
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #20986#24235#21934#34399'|List No'
        Width = 120
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'B'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'B'#21697#25976#37327'|Grade B'
        Width = 60
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'C'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = 'C'#21697#25976#37327'|Grade C'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Purpose'
        Footers = <>
        PickList.Strings = (
          'Sale'
          'Scrap')
        ReadOnly = True
        Title.Caption = #29992#36884'|Purpose'
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'B'#21697#35330#21934#32232#34399'|B-Grade Order'
        Width = 100
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29376#24907'|Status'
        Width = 100
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#20986#24235#26085'|CFMDate'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = #22411#39636'|SKU'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Title.Caption = #22823#24213'|Outsole'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|Shoe Name'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394'|Color'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = #23395#24230'|Season'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #38617#25976'|Qty'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        Title.Caption = #23610#30908'|Size'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Grade'
        Footers = <>
        Title.Caption = #31561#32026'|Grade'
        Width = 54
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|User ID'
        Width = 80
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30064#21205#26085#26399'|User Date'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30906#35469#20986#24235#26085'|CFMDate'
      end>
  end
  object DS1: TDataSource
    DataSet = QKCLL
    Left = 352
    Top = 184
  end
  object QKCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT LLNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Pur' +
        'pose, ZLBH, CFMDate, UserID, UserDate, YN, Status, GSBH '
      ',Grade,DDBH,ARTICLE,XieMing,YSSM,JiJie,DDMH, Size,Qty '
      'FROM ('
      
        '  SELECT KCLL_BC.LLNO, KCLL_BC.Purpose, KCLL_BC.GSBH, KCLL_BC.ZL' +
        'BH, KCLL_BC.CFMDate, KCLL_BC.UserID, KCLL_BC.UserDate, KCLL_BC.Y' +
        'N,'
      '  CASE WHEN KCLLS_BC.Grade = '#39'B'#39' THEN KCLLS_BC.Qty END AS B,'
      '  CASE WHEN KCLLS_BC.Grade = '#39'C'#39' THEN KCLLS_BC.Qty END AS C,'
      '  CASE WHEN KCLL_BC.flowflag IS NULL THEN '#39'Not Submitted'#39' ELSE'
      
        '  CASE WHEN KCLL_BC.flowflag NOT IN ('#39#39', '#39'X'#39', '#39'Z'#39') THEN '#39'Under R' +
        'eview'#39' ELSE'
      '  CASE WHEN KCLL_BC.flowflag = '#39'Z'#39' THEN '#39'Stock-Out'#39' ELSE'
      
        '  CASE WHEN KCLL_BC.flowflag = '#39'X'#39' THEN '#39'Cancelled'#39' END END END ' +
        'END AS Status'
      
        '  ,KCLLS_BC.Grade, KCLLS_BC.DDBH, DDZL.ARTICLE, XXZL.XieMing, XX' +
        'ZL.YSSM, XXZL.JiJie, XXZL.DDMH, '
      '  KCLLS_BC.Size, KCLLS_BC.Qty '
      '  FROM KCLL_BC'
      '  LEFT JOIN KCLLS_BC ON KCLLS_BC.LLNO = KCLL_BC.LLNO'
      '  LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH'
      
        '  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao ' +
        '= DDZL.SheHao'
      '  WHERE KCLL_BC.GSBH = '#39'VA12'#39
      
        '  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN '#39'2023/01/0' +
        '1'#39' AND '#39'2023/05/04'#39
      ') AS KCLL_BC'
      'WHERE 1 = 1'
      'AND (Status = '#39'Not Submitted'#39')'
      
        'GROUP BY LLNO, Purpose, ZLBH, CFMDate, UserID, UserDate, YN, Sta' +
        'tus, GSBH,Grade,DDBH,ARTICLE,XieMing,YSSM,JiJie,DDMH, Size,Qty '
      'ORDER BY LLNO DESC'
      '')
    Left = 352
    Top = 216
    object QKCLLLLNO: TStringField
      FieldName = 'LLNO'
      Size = 15
    end
    object QKCLLB: TFloatField
      FieldName = 'B'
    end
    object QKCLLC: TFloatField
      FieldName = 'C'
    end
    object QKCLLPurpose: TStringField
      FieldName = 'Purpose'
      Size = 10
    end
    object QKCLLStatus: TStringField
      FieldName = 'Status'
    end
    object QKCLLUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object QKCLLUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCLLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKCLLZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 10
    end
    object QKCLLCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QKCLLGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object QKCLLGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QKCLLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QKCLLARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object QKCLLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object QKCLLYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object QKCLLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object QKCLLDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object QKCLLSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QKCLLQty: TFloatField
      FieldName = 'Qty'
    end
  end
end
