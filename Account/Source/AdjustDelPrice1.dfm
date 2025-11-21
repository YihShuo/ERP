object AdjustDelPrice: TAdjustDelPrice
  Left = 296
  Top = 208
  Width = 870
  Height = 500
  Caption = 'AdjustDelPrice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label3: TLabel
      Left = 128
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label1: TLabel
      Left = 232
      Top = 19
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label4: TLabel
      Left = 0
      Top = 48
      Width = 111
      Height = 16
      Caption = 'Material No In & Out:'
    end
    object Label8: TLabel
      Left = 410
      Top = 19
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object CBX1: TComboBox
      Left = 48
      Top = 17
      Width = 65
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 0
      Text = '2006'
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
        '2020')
    end
    object CBX2: TComboBox
      Left = 168
      Top = 17
      Width = 49
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
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
    object Edit1: TEdit
      Left = 280
      Top = 16
      Width = 113
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 551
      Top = 11
      Width = 67
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 623
      Top = 11
      Width = 67
      Height = 33
      Caption = 'Update'
      Enabled = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 695
      Top = 11
      Width = 67
      Height = 33
      Caption = 'Cancel'
      Enabled = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object CBX3: TComboBox
      Left = 456
      Top = 16
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 862
    Height = 80
    Align = alTop
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Width = 66
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 305
      end
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        ReadOnly = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        ReadOnly = True
        Width = 63
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 862
    Height = 16
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 0
      Top = 0
      Width = 134
      Height = 16
      Caption = 'Material Monthly Stock'
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 161
    Width = 862
    Height = 80
    Align = alTop
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 69
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 311
      end
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        ReadOnly = True
        Width = 57
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 241
    Width = 862
    Height = 16
    Align = alTop
    TabOrder = 4
    object Label6: TLabel
      Left = 0
      Top = 0
      Width = 146
      Height = 16
      Caption = 'Material Monthly Deliver:'
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 257
    Width = 862
    Height = 96
    Align = alTop
    DataSource = DS4
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'TotQty'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'TotPrice'
        Footers = <>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'TotACC'
        Footers = <>
        ReadOnly = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'JGCKQty'
        Footers = <>
        ReadOnly = True
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'JGCKACC'
        Footers = <>
        ReadOnly = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CKQty'
        Footers = <>
        ReadOnly = True
        Width = 53
      end
      item
        Color = 8847359
        EditButtons = <>
        FieldName = 'CKACC'
        Footers = <>
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'RemQty'
        Footers = <>
        ReadOnly = True
        Width = 57
      end
      item
        Color = 8847359
        EditButtons = <>
        FieldName = 'RemACC'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 311
      end
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        ReadOnly = True
        Width = 56
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 353
    Width = 862
    Height = 16
    Align = alTop
    TabOrder = 6
    object Label7: TLabel
      Left = 0
      Top = 0
      Width = 146
      Height = 16
      Caption = 'Material Monthly Deliver:'
    end
  end
  object DBGridEh4: TDBGridEh
    Left = 0
    Top = 369
    Width = 862
    Height = 100
    Align = alClient
    DataSource = DS3
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        ReadOnly = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        ReadOnly = True
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 61
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 58
      end
      item
        Color = 9371647
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 308
      end
      item
        EditButtons = <>
        FieldName = 'SCBH_1'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        ReadOnly = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        ReadOnly = True
        Width = 44
      end>
  end
  object CWCLCOUNT: TQuery
    CachedUpdates = True
    OnNewRecord = CWCLCOUNTNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CWCLCOUNT.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH'
      'from  CWCLCOUNT'
      'left join CLZL on  CLZL.CLDH= CWCLCOUNT.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=CWCLCOUNT.CLBH and KCZLS.CKBH=CWCL' +
        'COUNT.CKBH'
      'left join KCCK on KCCK.CKBH=CWCLCOUNT.CKBH '
      'where CWCLCOUNT.KCYEAR='#39'2009'#39
      '      and CWCLCOUNT.KCMONTH='#39'05'#39
      '      and CWCLCOUNT.CLBH='#39#39
      '      and KCCK.GSBH='#39'VTX'#39
      'order by  CWCLCOUNT.CKBH,CWCLCOUNT.CLBH')
    UpdateObject = UpCWCLCOUNT
    Left = 304
    Top = 104
    object CWCLCOUNTKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object CWCLCOUNTKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object CWCLCOUNTCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object CWCLCOUNTCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CWCLCOUNTYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CWCLCOUNTDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CWCLCOUNTQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object CWCLCOUNTVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object CWCLCOUNTCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object CWCLCOUNTCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
  end
  object DS1: TDataSource
    DataSet = CWCLCOUNT
    Left = 336
    Top = 104
  end
  object DS2: TDataSource
    DataSet = KCCLMONTH
    Left = 344
    Top = 208
  end
  object KCCLMONTH: TQuery
    CachedUpdates = True
    OnNewRecord = KCCLMONTHNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCCLMONTh.*,CLZL.YWPM,CLZL.DWBH'
      'from KCCLMONTH'
      'left join CLZL on CLZl.CLDH=KCCLMONTH.CLBH')
    UpdateObject = UpKCCLMONTH
    Left = 304
    Top = 208
    object KCCLMONTHCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KCCLMONTHCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCCLMONTHYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCCLMONTHDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCCLMONTHQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object KCCLMONTHVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object KCCLMONTHVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object KCCLMONTHKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object KCCLMONTHKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
  end
  object KCLL: TQuery
    CachedUpdates = True
    OnNewRecord = KCLLNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SC' +
        'BLYY.YWSM,KCZLS.CWBH  '
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      
        'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKB' +
        'H'
      'left join KCCK on KCCK.CKBH=KCLL.CKBH '
      'where KCLL.CFMID<>'#39'NO'#39
      '      and KCLLS.CLBH='#39#39
      '      and KCLL.CFMDate  between '
      '         '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '      and KCCK.GSBH='#39'VTX'#39
      ' order by KCLL.CKBH,KCLLS.CLBH')
    UpdateObject = UpKCLL
    Left = 304
    Top = 392
    object KCLLGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object KCLLCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KCLLLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCLLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCLLDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object KCLLVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object KCLLSCBH_1: TStringField
      FieldName = 'SCBH_1'
      FixedChar = True
      Size = 15
    end
    object KCLLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object KCLLCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCLLCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object KCLLCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
  end
  object DS3: TDataSource
    DataSet = KCLL
    Left = 344
    Top = 392
  end
  object UpCWCLCOUNT: TUpdateSQL
    ModifySQL.Strings = (
      'update CWCLCOUNT'
      'set'
      '  VNACC = :VNACC'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CWCLCOUNT'
      '  (VNACC)'
      'values'
      '  (:VNACC)')
    DeleteSQL.Strings = (
      'delete from CWCLCOUNT'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    Left = 376
    Top = 104
  end
  object UpKCCLMONTH: TUpdateSQL
    ModifySQL.Strings = (
      'update KCCLMONTH'
      'set'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into KCCLMONTH'
      '  (VNPrice, VNACC)'
      'values'
      '  (:VNPrice, :VNACC)')
    DeleteSQL.Strings = (
      'delete from KCCLMONTH'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    Left = 384
    Top = 208
  end
  object UpKCLL: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (VNPrice, VNACC)'
      'values'
      '  (:VNPrice, :VNACC)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  DFL = :OLD_DFL and'
      '  SCBH = :OLD_SCBH')
    Left = 384
    Top = 392
  end
  object CWCLZL: TQuery
    CachedUpdates = True
    OnNewRecord = CWCLZLNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CWCLZL.*,CLZL.YWPM,CLZL.DWBH '
      'from CWCLZL'
      'left join CLZL on CLZl.CLDH=CWCLZL.CLBH')
    UpdateObject = UpCWCLZL
    Left = 302
    Top = 288
    object CWCLZLCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object CWCLZLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CWCLZLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CWCLZLDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CWCLZLTotQty: TCurrencyField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0.00'
    end
    object CWCLZLTotACC: TFloatField
      FieldName = 'TotACC'
      DisplayFormat = '##,#0'
    end
    object CWCLZLTotPrice: TFloatField
      FieldName = 'TotPrice'
      DisplayFormat = '##,#0'
    end
    object CWCLZLJGCKQty: TCurrencyField
      FieldName = 'JGCKQty'
      DisplayFormat = '##,#0.00'
    end
    object CWCLZLJGCKACC: TFloatField
      FieldName = 'JGCKACC'
      DisplayFormat = '##,#0'
    end
    object CWCLZLCKQty: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object CWCLZLCKACC: TFloatField
      FieldName = 'CKACC'
      DisplayFormat = '##,#0'
    end
    object CWCLZLRemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object CWCLZLRemACC: TFloatField
      FieldName = 'RemACC'
      DisplayFormat = '##,#0'
    end
    object CWCLZLKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object CWCLZLKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
  end
  object DS4: TDataSource
    DataSet = CWCLZL
    Left = 336
    Top = 288
  end
  object UpCWCLZL: TUpdateSQL
    ModifySQL.Strings = (
      'update CWCLZL'
      'set'
      '  CKACC = :CKACC,'
      '  RemACC = :RemACC'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into CWCLZL'
      '  (CKACC, RemACC)'
      'values'
      '  (:CKACC, :RemACC)')
    DeleteSQL.Strings = (
      'delete from CWCLZL'
      'where'
      '  KCYEAR = :OLD_KCYEAR and'
      '  KCMONTH = :OLD_KCMONTH and'
      '  CKBH = :OLD_CKBH and'
      '  CLBH = :OLD_CLBH')
    Left = 376
    Top = 288
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 504
    Top = 104
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 236
    Top = 109
  end
end
