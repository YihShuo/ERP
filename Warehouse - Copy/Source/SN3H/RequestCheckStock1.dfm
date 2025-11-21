object RequestCheckStock: TRequestCheckStock
  Left = 303
  Top = 197
  Width = 1704
  Height = 500
  Caption = 'RequestCheckStock'
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
    Width = 1688
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 13
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Code:'
    end
    object Label2: TLabel
      Left = 265
      Top = 13
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Name:'
    end
    object Label3: TLabel
      Left = 241
      Top = 43
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor Name:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 43
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor Code:'
    end
    object Label6: TLabel
      Left = 221
      Top = 101
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label5: TLabel
      Left = 7
      Top = 72
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Purchaser ID:'
    end
    object Label7: TLabel
      Left = 256
      Top = 70
      Width = 87
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Merge No:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 496
      Top = 16
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR#:'
    end
    object Label9: TLabel
      Left = 497
      Top = 69
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Status:'
    end
    object Label10: TLabel
      Left = 498
      Top = 41
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Stage:'
    end
    object EdtMatID: TEdit
      Left = 100
      Top = 10
      Width = 120
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EdtMatName: TEdit
      Left = 345
      Top = 10
      Width = 139
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EdtVendorName: TEdit
      Left = 345
      Top = 40
      Width = 139
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 426
      Top = 95
      Width = 80
      Height = 32
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 522
      Top = 95
      Width = 81
      Height = 32
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object EdtVendorID: TEdit
      Left = 100
      Top = 40
      Width = 120
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object chkPurDate: TCheckBox
      Left = 9
      Top = 101
      Width = 103
      Height = 17
      Caption = 'Pur Click Date:'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object EdtPurID: TEdit
      Left = 100
      Top = 68
      Width = 120
      Height = 24
      TabOrder = 7
    end
    object EdtMergeNo: TEdit
      Left = 345
      Top = 67
      Width = 139
      Height = 24
      TabOrder = 8
    end
    object EdtSR: TEdit
      Left = 564
      Top = 10
      Width = 211
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object cbStatus: TComboBox
      Left = 565
      Top = 66
      Width = 212
      Height = 24
      ItemHeight = 16
      TabOrder = 10
      Text = 'ALL'
      OnChange = cbStatusChange
      Items.Strings = (
        'ALL'
        'No Stock or Not Enough'
        'OK Use Stock'
        'Not Assigned'
        'Update Quantity'
        'Not Assigned or Update Quantity'
        'Has Use Stock and Not yet confirm'
        'Manager confirmed')
    end
    object EdtStage: TEdit
      Left = 565
      Top = 38
      Width = 211
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object ComboBox1: TComboBox
      Left = 789
      Top = 66
      Width = 212
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 12
      Visible = False
      OnChange = cbStatusChange
      Items.Strings = (
        'No Stock'
        'Has Use Stock')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 1688
    Height = 324
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Material Code'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material Description'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = 'Sample No'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#'
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 60
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'CGQTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Pur Qty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'Merge No'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YPCC'
        Footers = <>
        Title.Caption = 'Size'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = 'Vendor Code'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Vendor Name'
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'Pur ID'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'Pur Click Date'
        Width = 70
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Usage'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'PartAll'
        Footers = <>
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'UseStock45days'
        Footers = <>
        Title.Caption = '45 days Use Stock'
        Width = 70
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'CheckStockQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Check Stock Qty'
        Width = 85
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Stock'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Stock Qty'
        Width = 70
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'UseStockQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Use Stock Qty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'UserID_WH'
        Footers = <>
        Title.Caption = 'WH ID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'UserDate_WH'
        Footers = <>
        Title.Caption = 'WH Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'UserID_ManagerWH'
        Footers = <>
        Title.Caption = 'ManagerWH ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'UserDate_ManagerWH'
        Footers = <>
        Title.Caption = 'Manager WH Date'
        Width = 90
      end
      item
        Color = clMenu
        EditButtons = <>
        FieldName = 'PurStock'
        Footers = <>
        Title.Caption = 'Pur Stock'
      end>
  end
  object DTP1: TDateTimePicker
    Left = 115
    Top = 97
    Width = 105
    Height = 24
    Date = 42812.762229814780000000
    Format = 'yyyy/MM/dd'
    Time = 42812.762229814780000000
    TabOrder = 2
  end
  object DTP2: TDateTimePicker
    Left = 241
    Top = 97
    Width = 105
    Height = 24
    Date = 42835.762229814810000000
    Format = 'yyyy/MM/dd'
    Time = 42835.762229814810000000
    TabOrder = 3
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AfterScroll = Query1AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT  STOCK.CLBH,YWPM,DWBH,STOCK.YPDH,kfxxzl.DEVCODE,YPZL.KFJD' +
        ',STOCK.Pairs,YPZL.FD,STOCK.CLSL,CGZLSS.Qty AS CGQTY,STOCK.YPZLBH' +
        ',YPZL.YPCC,STOCK.ZSBH,ZSZL.ZSYWJC'
      
        #9#9',KCZLS.Stock,STOCK.USERID,STOCK.UserDate,STOCK.UseStockQty,STO' +
        'CK.Remark,STOCK.UserID_WH,STOCK.UserDate_WH,STOCK.UserID_Manager' +
        'WH,STOCK.UserDate_ManagerWH'
      '    ,STOCK.CLSL - isnull(CGZLSS.Qty,0) as CheckStockQty'
      'FROM  CGUseStock_Dev STOCK'
      'LEFT JOIN CLZL ON STOCK.CLBH=CLZL.cldh'
      'LEFT JOIN YPZL ON STOCK.YPDH=YPZL.YPDH'
      
        'LEFT JOIN KFXXZL ON YPZL.XieXing=KFXXZL.XieXing AND YPZL.SheHao=' +
        'KFXXZL.SheHao'
      
        'LEFT JOIN  (SELECT ZLBH,CLBH,Sum(Qty) as Qty, Stage from CGZLSS ' +
        'where  CGZLSS.CLBH like '#39'M%'#39'  Group By ZLBH,CLBH,Stage) CGZLSS '
      
        'on CGZLSS.ZLBH=YPZL.YPDH and CGZLSS.Stage=YPZL.KFJD and CGZLSS.C' +
        'LBH=STOCK.CLBH'
      'LEFT JOIN ZSZL ON STOCK.ZSBH=ZSZL.zsdh'
      
        'LEFT JOIN ( SELECT CLBH,SUM(KCQTY) AS Stock FROM KCZLS WHERE CKB' +
        'H IN (SELECT CKBH FROM KCCK WHERE GSBH='#39'CDC'#39' AND CKBH<>'#39'CBY'#39') GR' +
        'OUP BY CLBH) KCZLS'
      'ON KCZLS.CLBH=STOCK.CLBH'
      'WHERE 1=2'
      '')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 216
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CGQTY: TCurrencyField
      FieldName = 'CGQTY'
      DisplayFormat = '##,#0.0000'
    end
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1Stock: TCurrencyField
      FieldName = 'Stock'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1UseStockQty: TCurrencyField
      FieldName = 'UseStockQty'
      DisplayFormat = '##,#0.0000'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Query1UserID_WH: TStringField
      FieldName = 'UserID_WH'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate_WH: TDateTimeField
      FieldName = 'UserDate_WH'
    end
    object Query1UserID_ManagerWH: TStringField
      FieldName = 'UserID_ManagerWH'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate_ManagerWH: TDateTimeField
      FieldName = 'UserDate_ManagerWH'
    end
    object Query1PurStock: TCurrencyField
      FieldName = 'PurStock'
      DisplayFormat = '##,#0.0000'
    end
    object Query1UseStock45days: TCurrencyField
      FieldName = 'UseStock45days'
      DisplayFormat = '##,#0.0000'
    end
    object Query1PartAll: TStringField
      FieldName = 'PartAll'
      Size = 150
    end
    object Query1CheckStockQty: TFloatField
      FieldName = 'CheckStockQty'
      DisplayFormat = '##,#0.0000'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 256
    object History1: TMenuItem
      Caption = 'History'
      OnClick = History1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      Enabled = False
      OnClick = Confirm1Click
    end
    object ConfrimAll1: TMenuItem
      Caption = 'Confirm All'
      Enabled = False
      OnClick = ConfrimAll1Click
    end
    object Reset1: TMenuItem
      Caption = 'Reset'
      Enabled = False
      OnClick = Reset1Click
    end
    object ResetAll1: TMenuItem
      Caption = 'Reset All'
      Enabled = False
      OnClick = ResetAll1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update CGUseStock_Dev'
      'Set'
      '   UseStockQty = :UseStockQty,'
      '   Remark = :Remark,'
      '   UserID_WH = :UserID_WH,'
      '   UserDate_WH = :UserDate_WH'
      'Where'
      '   YPZLBH = :OLD_YPZLBH AND'
      '   YPDH = :OLD_YPDH AND'
      '   CLBH = :OLD_CLBH'
      '')
    Left = 120
    Top = 248
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 152
    Top = 216
  end
end
