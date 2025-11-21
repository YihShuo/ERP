object AccountCal: TAccountCal
  Left = 298
  Top = 121
  Width = 1430
  Height = 585
  Caption = 'AccountCal'
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
  object DBGrid1: TDBGridEh
    Left = 225
    Top = 57
    Width = 1189
    Height = 489
    Align = alClient
    DataSource = DS12
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
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 225
    Height = 489
    Align = alLeft
    TabOrder = 0
    object BT2: TButton
      Left = 8
      Top = 40
      Width = 200
      Height = 25
      Caption = 'Check Entry Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BT2Click
    end
    object BT5: TButton
      Left = 8
      Top = 136
      Width = 200
      Height = 25
      Caption = 'Check Exchange Rate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT5Click
    end
    object BT6: TButton
      Left = 8
      Top = 168
      Width = 200
      Height = 25
      Caption = 'Change to VNPrice '
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BT6Click
    end
    object BT7: TButton
      Left = 8
      Top = 201
      Width = 200
      Height = 25
      Caption = 'Calculate Deliver Price'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BT7Click
    end
    object BT8: TButton
      Left = 8
      Top = 233
      Width = 200
      Height = 25
      Caption = 'Calculate Mother Material'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BT8Click
    end
    object BT9: TButton
      Left = 8
      Top = 265
      Width = 200
      Height = 25
      Caption = 'Calculate Deliver price2'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BT9Click
    end
    object BT3: TButton
      Left = 8
      Top = 72
      Width = 200
      Height = 25
      Caption = 'Check Extra Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BT3Click
    end
    object BT4: TButton
      Left = 8
      Top = 104
      Width = 200
      Height = 25
      Caption = 'Check deliver Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BT4Click
    end
    object BT10: TButton
      Left = 8
      Top = 297
      Width = 200
      Height = 25
      Caption = 'Write to database'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BT10Click
    end
    object BT1: TButton
      Left = 8
      Top = 8
      Width = 200
      Height = 25
      Caption = 'Check Stock'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BT1Click
    end
    object BT11: TButton
      Left = 8
      Top = 329
      Width = 200
      Height = 25
      Caption = 'Write to Nhap Khau'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BT11Click
    end
    object BT12: TButton
      Left = 8
      Top = 361
      Width = 200
      Height = 25
      Caption = 'Write to MA HAI QUAN'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BT12Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1414
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 209
      Height = 24
      AutoSize = False
      Caption = 'Calculate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 225
      Top = 22
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label3: TLabel
      Left = 342
      Top = 22
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Edit1: TEdit
      Left = 448
      Top = 19
      Width = 35
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'stock'
    end
    object CBX1: TComboBox
      Left = 264
      Top = 19
      Width = 65
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 1
      Text = '2020'
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
        '2029')
    end
    object CBX2: TComboBox
      Left = 384
      Top = 19
      Width = 49
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
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
      Left = 970
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 480
      Top = 19
      Width = 35
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'entry'
    end
    object Edit3: TEdit
      Left = 512
      Top = 19
      Width = 35
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'extra'
    end
    object Edit4: TEdit
      Left = 544
      Top = 19
      Width = 35
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = 'deliver'
    end
    object Button4: TButton
      Left = 1050
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Excel'
      Enabled = False
      TabOrder = 7
      OnClick = Button4Click
    end
  end
  object Panel3: TPanel
    Left = 506
    Top = 85
    Width = 310
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 150
      Height = 24
      Caption = 'Exchange Rate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 128
      Top = 88
      Width = 11
      Height = 20
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 248
      Top = 88
      Width = 38
      Height = 20
      Caption = 'VND'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit5: TEdit
      Left = 48
      Top = 80
      Width = 73
      Height = 28
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ImeName = #20013#25991' ('#32321#39636') - '#22072#34662#31859
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '1 USD'
    end
    object Button2: TButton
      Left = 64
      Top = 136
      Width = 81
      Height = 33
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 176
      Top = 136
      Width = 81
      Height = 33
      Caption = 'CANCEL'
      TabOrder = 2
      OnClick = Button3Click
    end
    object edtCWHL: TEdit
      Left = 148
      Top = 80
      Width = 89
      Height = 28
      TabOrder = 3
    end
  end
  object ToKhaiBtn: TButton
    Left = 584
    Top = 12
    Width = 377
    Height = 33
    Caption = 'To Khai(NK/KD/TC/HD/NK1/TC1/HD1/KD1/NQ/NKNQ)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = ToKhaiBtnClick
  end
  object Entry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.CKBH,KCRK.RKNO,KCRK.USERDATE,KCRKS.CLBH,CLZL.YWPM,'
      'CLZL.DWBH,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,'
      'KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,KCRK.YN,KCRK.CFMDate'
      'from KCRK,KCRKS'
      'left join CLZL on CLZl.CLDH=KCRKS.CLBH'
      'where KCRK.RKNO=KCRKS.RKNO'
      'and KCRK.USERDATE between '#39'2007/12/01'#39' and '#39'2007/12/31'#39
      'order by KCRk.RKNO')
    Left = 232
    Top = 96
    object EntryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EntryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EntryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EntryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EntryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EntryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EntryUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object EntryUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EntryVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object EntryVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object EntryCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EntryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EntryCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EntryCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Entry
    Left = 264
    Top = 96
  end
  object Stock: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CLDH,CLLB,YWPM,DWBH,1000.00 as LastRem,'
      '1000.00 as RKQty,1000.00 as Qty,1000.00 as LLQty,'
      '1000.00 as JGRK,1000.00 as JGCK,'#39'       '#39' as  CKBH'
      'from CLZL'
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDH'
      'where CLZL.CLDH='#39'000000'#39)
    Left = 232
    Top = 56
    object StockCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object StockCLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 3
    end
    object StockYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StockDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StockLastRem: TFloatField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object StockRKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object StockLLQty: TFloatField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object StockJGRK: TFloatField
      FieldName = 'JGRK'
      DisplayFormat = '##,#0.00'
    end
    object StockJGCK: TFloatField
      FieldName = 'JGCK'
      DisplayFormat = '##,#0.00'
    end
    object StockQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object StockCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 7
    end
  end
  object DS1: TDataSource
    DataSet = Stock
    Left = 264
    Top = 56
  end
  object Extra: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.CKBH,JGZL.JGNO,JGZL.CFMDATE1,JGZL.CFMDATE2,JGZLS.CLB' +
        'H,'
      'CLZL.YWPM,CLZL.DWBH,JGZLS.Qty,JGZLS.USPrice,'
      'JGZLS.USACC,JGZLS.VNPrice,JGZLS.VNACC,JGZL.YN'
      'from JGZL,JGZLS'
      'left join CLZl on CLZl.CLDh=JGZLS.CLBH')
    Left = 232
    Top = 136
    object ExtraJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object ExtraCFMDATE1: TDateTimeField
      FieldName = 'CFMDATE1'
    end
    object ExtraCFMDATE2: TDateTimeField
      FieldName = 'CFMDATE2'
    end
    object ExtraCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ExtraYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ExtraDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ExtraQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object ExtraUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object ExtraUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object ExtraVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object ExtraVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object ExtraYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object ExtraCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS3: TDataSource
    DataSet = Extra
    Left = 264
    Top = 136
  end
  object Deliver: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  KCLL.CKBH,KCLL.LLNO,KCLL.CFMDATE,KCLLS.CLBH,KCLL.YN,'
      'CLZL.YWPM,CLZL.DWBH,KCLLS.Qty,KCLLS.SCBH,KCLLS.CostID'
      'from KCLL,KCLLS'
      'left join CLZL on CLZl.CLDH=KCLLS.CLBH'
      'where KCLL.LLNO=KCLLS.LLNO'
      'and KCLL.CFMDATE between '
      #39'2007/12/01'#39' and '#39'2007/12/31'#39
      'and KCLL.YN<>'#39'5'#39
      'and KCLL.CFMID<>'#39'NO'#39
      'order by KCLL.LLNO')
    Left = 232
    Top = 176
    object DeliverLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object DeliverCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object DeliverCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DeliverYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DeliverDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DeliverQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object DeliverSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object DeliverCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object DeliverYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DeliverCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS4: TDataSource
    DataSet = Deliver
    Left = 264
    Top = 176
  end
  object DS5: TDataSource
    DataSet = CWHL
    Left = 264
    Top = 216
  end
  object VNPrice: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 256
  end
  object DS7: TDataSource
    DataSet = DelPrice
    Left = 264
    Top = 296
  end
  object Extraprice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select JGZL.JGNO,JGZL.CFMDate1,JGZLS.CLBH,JGZLS.Qty,'
      
        'JGZLS.USPrice,JGZLS.VNPrice,JGZLS.CLPrice,CLACC,CLZL.YWPM,CLZL.D' +
        'WBH '
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      'left join CLZl on CLZL.CLDH=JGZLS.CLBH')
    Left = 232
    Top = 336
    object ExtrapriceJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object ExtrapriceCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object ExtrapriceCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object ExtrapriceYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ExtrapriceDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ExtrapriceQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object ExtrapriceUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object ExtrapriceVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object ExtrapriceCLPrice: TCurrencyField
      FieldName = 'CLPrice'
      DisplayFormat = '##,#0'
    end
    object ExtrapriceCLACC: TFloatField
      FieldName = 'CLACC'
    end
    object ExtrapriceCKBH: TStringField
      FieldName = 'CKBH'
    end
  end
  object DS8: TDataSource
    DataSet = Extraprice
    Left = 264
    Top = 336
  end
  object DelPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ' select CL.*,CLZL.YWPM,CLZL.DWBH '
      'from CL '
      'left join CLZL on CLZL.CLDH=CL.CLBH'
      'order by CKBH,CLBH')
    Left = 232
    Top = 296
    object DelPriceCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object DelPriceYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelPriceDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelPriceLastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceLastACC: TFloatField
      FieldName = 'LastACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceRKACC: TFloatField
      FieldName = 'RKACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceJGQty: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceJGACC: TFloatField
      FieldName = 'JGACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceTotQty: TCurrencyField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceTotACC: TFloatField
      FieldName = 'TotACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceJGCKQty: TCurrencyField
      FieldName = 'JGCKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceJGCKACC: TFloatField
      FieldName = 'JGCKACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceCKQty: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPriceCKACC: TFloatField
      FieldName = 'CKACC'
      DisplayFormat = '##,#0'
    end
    object DelPriceTotPrice: TCurrencyField
      FieldName = 'TotPrice'
      DisplayFormat = '##,#0'
    end
    object DelPriceCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object Ptemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from CWHLS')
    Left = 440
    Top = 248
  end
  object DelPrice2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select CL.*,CLZL.YWPM,CLZL.DWBH ,LastQty+RKQty+JGQty-JGCKQty-CK' +
        'Qty as RemQty ,LastACC+RKACC+JGACC-JGCKACC-CKACC as RemACC'
      'from CL '
      'left join CLZL on CLZL.CLDH=CL.CLBH'
      'order by CKBH,CLBH')
    Left = 232
    Top = 376
    object DelPrice2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object DelPrice2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelPrice2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelPrice2LastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2LastACC: TFloatField
      FieldName = 'LastACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2RKACC: TFloatField
      FieldName = 'RKACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2JGQty: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2JGACC: TFloatField
      FieldName = 'JGACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2TotQty: TCurrencyField
      FieldName = 'TotQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2TotACC: TFloatField
      FieldName = 'TotACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2TotPrice: TCurrencyField
      FieldName = 'TotPrice'
      DisplayFormat = '##,#0'
    end
    object DelPrice2JGCKQty: TCurrencyField
      FieldName = 'JGCKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2JGCKACC: TFloatField
      FieldName = 'JGCKACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2CKQty: TCurrencyField
      FieldName = 'CKQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2CKACC: TFloatField
      FieldName = 'CKACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2RemQty: TFloatField
      FieldName = 'RemQty'
      DisplayFormat = '##,#0.00'
    end
    object DelPrice2RemACC: TFloatField
      FieldName = 'RemACC'
      DisplayFormat = '##,#0'
    end
    object DelPrice2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS9: TDataSource
    DataSet = DelPrice2
    Left = 264
    Top = 376
  end
  object Write: TQuery
    OnCalcFields = WriteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH '
      'from KCCLMONTH '
      'left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH '
      'order by KCCLMONTH.CLBH ')
    Left = 232
    Top = 416
    object WriteKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object WriteKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object WriteCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object WriteYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object WriteDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object WriteQTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '#,##0.00'
    end
    object WriteCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object WriteVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object WriteVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object WriteUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object WriteCKBH: TStringField
      FieldName = 'CKBH'
    end
  end
  object DS10: TDataSource
    DataSet = Write
    Left = 264
    Top = 416
  end
  object CWHL_old: TTable
    DatabaseName = 'DB'
    TableName = 'dbo.CWHL'
    Left = 336
    Top = 208
    object CWHL_oldHLYEAR: TStringField
      FieldName = 'HLYEAR'
      Required = True
      Size = 4
    end
    object CWHL_oldHLMONTH: TStringField
      FieldName = 'HLMONTH'
      Required = True
      Size = 2
    end
    object CWHL_oldCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object CWHL_oldUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Required = True
    end
    object CWHL_oldUSERID: TStringField
      FieldName = 'USERID'
      Required = True
      Size = 15
    end
    object CWHL_oldYN: TStringField
      FieldName = 'YN'
      Required = True
      Size = 1
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '  &[Page]  /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'CHECK LIST FOR ACCOUNT')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 480
    Top = 248
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object CLHG: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 280
  end
  object DS11: TDataSource
    DataSet = WriteHG
    Left = 264
    Top = 456
  end
  object WriteHG: TQuery
    OnCalcFields = WriteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH '
      'from KCCLMONTH_HG KCCLMONTH '
      'left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH '
      'where KCCLMONTH.KCYear='#39'2017'#39
      '      and KCCLMONTH.KCMONTH='#39'06'#39
      'order by KCCLMONTH.CLBH')
    Left = 232
    Top = 456
    object StringField1: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '#,##0.00'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object WriteHGCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object WriteHGVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object WriteHGVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object StringField6: TStringField
      FieldName = 'CKBH'
    end
    object WriteHGHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object KCCLHGBH: TQuery
    OnCalcFields = WriteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMON' +
        'TH.CLBH,KCCLMONTH.HGLB'
      
        '      ,case when KCCLMONTH.CNO='#39'ZZZZ'#39' then '#39#39' else CNO end as CN' +
        'O,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH '
      'from KCCLMONTH_HGBH KCCLMONTH '
      'left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH '
      'where KCCLMONTH.KCYear='#39'2017'#39
      '      and KCCLMONTH.KCMONTH='#39'11'#39
      'order by KCCLMONTH.CLBH')
    Left = 232
    Top = 491
    object KCCLHGBHKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 11
    end
    object KCCLHGBHKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 4
    end
    object KCCLHGBHCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object KCCLHGBHCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCCLHGBHHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object KCCLHGBHCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object KCCLHGBHQty: TFloatField
      FieldName = 'Qty'
    end
    object KCCLHGBHYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object KCCLHGBHDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS12: TDataSource
    DataSet = KCCLHGBH
    Left = 264
    Top = 491
  end
  object KCCLHGBH_CK: TQuery
    OnCalcFields = WriteCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMON' +
        'TH.CLBH,KCCLMONTH.HGLB'
      
        '      ,case when KCCLMONTH.CNO='#39'ZZZZ'#39' then '#39#39' else CNO end as CN' +
        'O,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH '
      'from KCCLMONTH_HGBH KCCLMONTH '
      'left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH '
      'where KCCLMONTH.KCYear='#39'2017'#39
      '      and KCCLMONTH.KCMONTH='#39'11'#39
      'order by KCCLMONTH.CLBH')
    Left = 304
    Top = 491
  end
  object DS13: TDataSource
    DataSet = KCCLHGBH_CK
    Left = 336
    Top = 491
  end
  object CWHL: TQuery
    DatabaseName = 'DB'
    Left = 233
    Top = 216
  end
end
