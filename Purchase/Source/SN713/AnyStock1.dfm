object AnyStock: TAnyStock
  Left = 302
  Top = 194
  Width = 1222
  Height = 500
  Caption = 'AnyStock'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1916
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 159
      Height = 24
      Caption = 'Any Material Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 224
      Top = 48
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 224
      Top = 80
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 16
      Top = 80
      Width = 66
      Height = 16
      Caption = 'StockDate:'
    end
    object Edit2: TEdit
      Left = 288
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 64
      Top = 40
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 600
      Top = 56
      Width = 105
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 416
      Top = 40
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 105
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 72
      Width = 105
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 464
      Top = 80
      Width = 65
      Height = 17
      Caption = '<0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CBX1: TComboBox
      Left = 272
      Top = 72
      Width = 121
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
      Items.Strings = (
        'All')
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1916
    Height = 784
    Align = alClient
    DataSource = DataSource1
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
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLDH'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'YWPM'
            ValueType = fvtCount
          end>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 379
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 46
      end
      item
        Color = 12582911
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #24235#23384#25976#37327'|Qty'
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'LastRem'
        Footers = <
          item
            FieldName = 'LastRem'
            ValueType = fvtSum
          end>
        Title.Caption = #26376#21021#24235#23384'|LastRem'
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <
          item
            FieldName = 'RKQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235'|RKQty'
        Title.TitleButton = True
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <
          item
            FieldName = 'RKQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30332#26009'|LLQty'
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'JGRK'
        Footers = <
          item
            FieldName = 'JGRK'
            ValueType = fvtSum
          end>
        Title.Caption = #21152#24037#36914'|JGRK'
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'JGCK'
        Footers = <
          item
            FieldName = 'JGCK'
            ValueType = fvtSum
          end>
        Title.Caption = #21152#24037#20986'|JGCK'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'JGCKTemp'
        Footers = <
          item
            FieldName = 'JGCKTemp'
            ValueType = fvtSum
          end>
        Title.Caption = #21152#24037#26410#22238'|JGCKTemp'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235'|CKBH'
        Title.TitleButton = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = #36008#26550#34399'|KCBH'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'LBBH'
        Footers = <>
        Title.Caption = #20998#39006'|LBBH'
        Width = 49
      end>
  end
  object Panel2: TPanel
    Left = 1601
    Top = 107
    Width = 315
    Height = 782
    Caption = 'Panel2'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 313
      Height = 780
      Align = alClient
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = 14822282
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Lines.Strings = (
        '-----------------------------'
        #31243#24335#20027#35201#21151#33021#35498#26126
        ''
        #20027#35201#29992#26044#26597#35426#26448#26009#30340#24235#23384
        ''
        '-----------------------------'
        #36039#26009#31721#36984#25805#20316#35498#26126
        ''
        'Mat No: '#26448#26009#32232#34399
        'Mat Name: '#26448#26009#21517#31281
        'Stock Date: '#24235#23384#26178#38291
        'CKBH: '#20489#24235#32232#34399
        #8594' CDC: '#38283#30332' CDT: '#25216#36681' NG: '#38283#30332': NG'
        ''
        '-----------------------------')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,RK.RKQty,L' +
        'L.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL  '
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2008'#39
      '           and KCMONTH='#39'10'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VTXW'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(' +
        'smalldatetime,convert(varchar,KCRK.USERDATE,111))>='
      '           '#39'2008/11/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2008/11/18'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VTXW'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS '
      
        '           left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(' +
        'smalldatetime,convert(varchar,KCLL.CFMDATE,111))>='
      '           '#39'2008/11/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2008/11/18'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VTXW'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS'
      
        '           left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(' +
        'smalldatetime,convert(varchar,JGZL.CFMDate1,111))>='
      '           '#39'2008/11/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2008/11/18'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2008/11/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2008/11/18'#39
      '                      and JGZL.CFMID1 <>'#39'NO'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2008/11/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2008/11/18'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2008/11/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2008/11/18'#39
      '                      and JGZL.CFMID1 <>'#39'NO'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2008/11/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2008/11/18'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      
        'select #CLZLKC.CLDH,#CLZLKC.LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWB' +
        'H,isnull(#CLZLKC.LastRem,0) as LastRem,'
      
        '       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) ' +
        'as LLQty,'
      
        '       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZ' +
        'LKC.JGCK,2),0) as JGCK,'
      
        '       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCB' +
        'H,KCZLS.CKBH,'
      
        '       isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(' +
        '#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0) a' +
        's Qty'
      'from #CLZLKC '
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH'
      'left join (select * from KCZLS where CKBH='#39'VTXW'#39
      '                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      
        '  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null ' +
        'and #CLZLKC.LLQty is null '
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      'and KCZLS.CKBH like '#39'VTXW%'#39
      'and #CLZLKC.CLDH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by #CLZLKC.CLDH  ')
    Left = 504
    Top = 160
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
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
    object Query1LastRem: TFloatField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGRK: TFloatField
      FieldName = 'JGRK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCK: TFloatField
      FieldName = 'JGCK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCKTemp: TCurrencyField
      FieldName = 'JGCKTemp'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 472
    Top = 160
  end
end
