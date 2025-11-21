object FDStatus_Stock: TFDStatus_Stock
  Left = 270
  Top = 183
  Width = 986
  Height = 633
  Caption = 'FDStatus_Stock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 113
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 85
      Height = 20
      Caption = 'Material ID: '
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 90
      Height = 20
      Caption = 'Remainder : '
      Visible = False
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 73
      Height = 20
      Caption = 'MatName:'
    end
    object Label6: TLabel
      Left = 229
      Top = 16
      Width = 39
      Height = 20
      Caption = 'Date:'
    end
    object Label15: TLabel
      Left = 200
      Top = 48
      Width = 60
      Height = 20
      Caption = 'On way: '
      Visible = False
    end
    object Label17: TLabel
      Left = 344
      Top = 48
      Width = 42
      Height = 20
      Caption = 'Need:'
      Visible = False
    end
    object Label3: TLabel
      Left = 512
      Top = 48
      Width = 33
      Height = 20
      Caption = 'Unit:'
    end
    object DBText1: TDBText
      Left = 96
      Top = 80
      Width = 62
      Height = 20
      AutoSize = True
      DataField = 'YWPM'
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 552
      Top = 48
      Width = 62
      Height = 20
      AutoSize = True
      DataField = 'DWBH'
      DataSource = DS3
    end
    object DBText3: TDBText
      Left = 104
      Top = 48
      Width = 65
      Height = 17
      DataField = 'Remainder'
      DataSource = DS3
      Visible = False
    end
    object DBText4: TDBText
      Left = 408
      Top = 48
      Width = 65
      Height = 17
      DataField = 'NeedQty'
      DataSource = DS3
      Visible = False
    end
    object DBText5: TDBText
      Left = 264
      Top = 48
      Width = 65
      Height = 17
      DataField = 'OnQty'
      DataSource = DS3
      Visible = False
    end
    object Label5: TLabel
      Left = 381
      Top = 16
      Width = 18
      Height = 20
      Caption = 'To'
    end
    object Label7: TLabel
      Left = 525
      Top = 11
      Width = 86
      Height = 20
      Caption = 'Warehouse:'
    end
    object Edit1: TEdit
      Left = 92
      Top = 8
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 696
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Search'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 776
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 5
      Visible = False
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 269
      Top = 8
      Width = 113
      Height = 28
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 405
      Top = 8
      Width = 113
      Height = 28
      Date = 39289.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39289.000000000000000000
      TabOrder = 2
    end
    object CBX1: TComboBox
      Left = 616
      Top = 8
      Width = 71
      Height = 28
      ItemHeight = 20
      TabOrder = 3
    end
  end
  object DBGrid3: TDBGridEh
    Left = 449
    Top = 113
    Width = 16
    Height = 482
    Align = alLeft
    Color = 16448243
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
  end
  object DBGrid2: TDBGridEh
    Left = 465
    Top = 113
    Width = 505
    Height = 482
    Align = alClient
    Color = clWhite
    DataSource = DS2
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'KJMemo'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = 'Worker'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 75
      end>
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 113
    Width = 449
    Height = 482
    Align = alLeft
    Color = clWhite
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
    PopupMenu = PopupMenu2
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
        FieldName = 'RKNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Date'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Title.Caption = 'Worker'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = 'Pur Order'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 56
      end>
  end
  object KCRK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZ' +
        'L.CFMID1 as CFMID,JGZLS.Qty,'
      #39'JG'#39' as Memo ,JGZL.USERID, '#39' '#39' AS RKSB'
      
        'from JGZL,JGZLS where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='#39'ZZZZZ' +
        'ZZZZZ'#39
      'and JGZLS.CLBH='#39'AFG0000107'#39
      
        'and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'union all'
      
        'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,K' +
        'CRK.ZSNO as Memo  ,KCRK.USERID, KCRKS.RKSB AS RKSB'
      'from KCRK,KCRKS'
      'where KCRK.RKNO=KCRKS.RKNO'
      'and KCRKS.CLBH='#39'AFG0000107'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'order by KCRK.RKNO'
      
        'select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZ' +
        'L.CFMID1 as CFMID,JGZLS.Qty,'
      #39'JG'#39' as Memo '
      
        'from JGZL,JGZLS where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='#39'ZZZZZ' +
        'ZZZZZ'#39
      'and JGZLS.CLBH='#39'AFG0000107'#39
      
        'and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'union all'
      
        'select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,K' +
        'CRK.ZSNO as Memo  '
      'from KCRK,KCRKS'
      'where KCRK.RKNO=KCRKS.RKNO'
      'and KCRKS.CLBH='#39'AFG0000107'#39
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'order by KCRK.RKNO')
    Left = 144
    Top = 216
    object KCRKRKNO: TStringField
      DisplayLabel = 'put in storage NO'
      FieldName = 'RKNO'
      Origin = 'DB.KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCRK.USERDATE'
      DisplayFormat = 'm/d'
    end
    object KCRKQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCRKZSBH: TStringField
      DisplayLabel = 'Supplier ID'
      FieldName = 'ZSBH'
      Origin = 'DB.KCRK.ZSBH'
      FixedChar = True
      Size = 6
    end
    object KCRKCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCRK.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCRKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object KCRKUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object KCRKRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
  end
  object DS1: TDataSource
    DataSet = KCRK
    Left = 192
    Top = 216
  end
  object KCLL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,'
      'JGZL.CFMID1 as CFMID,JGZLS.Qty*JGZLM.Qty as Qty,'#39'ZZZZ'#39
      'as SCBH, '#39'JG'#39' as Memo, JGZLS.Memo as KJMemo'
      'from JGZLS  '
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      'left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS '
      
        'left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldateti' +
        'me,convert(varchar,JGZL.CFMDate1,111)) between '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      ') JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH'
      'where JGZL.CFMDate1>='
      #39'2008/05/01'#39
      'and JGZLS.ZMLB='#39'AFG0000107'#39
      'and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'union all'
      
        'select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, B' +
        'Department.DepName as Memo, KCLLS.Memo as KJMemo'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      'where KCLL.LLNO=KCLLS.LLNO'
      'and KCLLS.CLBH='#39'AFG0000107'#39
      
        'and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) be' +
        'tween '
      #39'2008/05/01'#39
      ' and '#39'2008/05/19'#39
      'or KCLL.CFMDATE is null)'
      'order by KCLL.LLNO')
    Left = 560
    Top = 232
    object KCLLLLNO: TStringField
      DisplayLabel = 'Go out of the storage'
      FieldName = 'LLNO'
      Origin = 'DB.KCLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object KCLLSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLCFMDATE: TDateTimeField
      DisplayLabel = 'Date'
      FieldName = 'CFMDATE'
      DisplayFormat = 'M/d'
    end
    object KCLLQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object KCLLCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.KCLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object KCLLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object KCLLKJMemo: TStringField
      DisplayLabel = 'Article'
      FieldName = 'KJMemo'
      FixedChar = True
      Size = 250
    end
  end
  object DS2: TDataSource
    DataSet = KCLL
    Left = 592
    Top = 232
  end
  object Material: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CLDH,YWPM,DWBH,1000.00 as Remainder,'
      
        '        1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,100' +
        '0.00 as OnQty'
      'from CLZL ')
    UpdateObject = UpSQL1
    Left = 296
    Top = 80
  end
  object UpSQL1: TUpdateSQL
    Left = 376
    Top = 80
  end
  object DS3: TDataSource
    DataSet = Material
    Left = 336
    Top = 80
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 248
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 240
    Top = 184
    object EXCEL2: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL2Click
    end
  end
end
