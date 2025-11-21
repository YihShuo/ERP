object AnyStock_R: TAnyStock_R
  Left = 245
  Top = 161
  Width = 1587
  Height = 675
  Caption = 'AnyStock R'
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
    Width = 1571
    Height = 46
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 193
      Top = 17
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 382
      Top = 17
      Width = 44
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 13
      Top = 15
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'StockDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 250
      Top = 13
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 539
      Top = 9
      Width = 91
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 635
      Top = 8
      Width = 90
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 431
      Top = 13
      Width = 68
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 3
      Items.Strings = (
        'All')
    end
    object DTP1: TDateTimePicker
      Left = 86
      Top = 12
      Width = 88
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 46
    Width = 1571
    Height = 590
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrid1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#32232#34399'|CLDH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <
          item
            FieldName = 'YWPM'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 345
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'|DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 51
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Pair'
        Footers = <>
        Title.Caption = #37327#29986#35330#21934#37327'|Pair'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'QtyTotal'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #24235#23384#25976#37327'|Qty'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'LastRem'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #26376#21021#24235#23384'|LastRem'
        Width = 89
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #21508#24288#25552#20379#38656#27714#37327'|CKBH'
        Width = 93
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'TemQty'
        Footers = <>
        Title.Caption = #35430#38795'/'#37327#29986'|Dai tra'
      end
      item
        EditButtons = <>
        FieldName = 'PurQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36996#38656#35201#36092#36023#37327'|PurQty'
        Width = 93
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20837#24235#37327'|RKQty'
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
        Title.Caption = #21934#20729'|Price'
        Width = 88
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'ACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37329#38989'|ACC'
        Width = 160
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
        Title.Caption = #38936#29992#37327'|LLQty'
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 105
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        ' select KCZLS.CKBH,KCZLS.CLBH as CLDH,sum(RunTemp.LastRem) as La' +
        'stRem,sum(RunTemp.RKQty) as RKQty,sum(RunTemp.LLQty) as LLQty,su' +
        'm(RunTemp.JGRK) as JGRK '
      
        #9#9'    ,sum(RunTemp.JGCK) as JGCK,sum(RunTemp.JGCKTemp) as JGCKTe' +
        'mp,HGLB into #CLZLKC  '
      'from KCZLS with (nolock) '
      'Left join ( '
      '     select * from ('
      
        '     Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as ' +
        'LastRem ,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp' +
        ',KCCLMONTH.HGLB '
      '     from KCCLMONTH_HG as KCCLMONTH   with (nolock) '
      '     where KCCLMONTH.KCYEAR='#39'2025'#39' '
      '           and KCMONTH='#39'01'#39
      '           and KCCLMONTH.CLBH like '#39'W101000059%'#39' '
      '           and KCCLMONTH.HGLB<>'#39'XT'#39' '
      '        and KCCLMONTH.CKBH='#39'VTXW'#39
      '      Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH ,KCCLMONTH.HGLB '
      '      ) LastKC   '
      '  union all'
      '     select * from ('
      
        '     select KCRK.CKBH,KCRKS.CLBH,0 as LastRem,sum(KCRKS.Qty) as ' +
        'RKQty,0 as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCRK.HGLB '
      #9#9#9#9'    from KCRKS with (nolock)  '
      
        '           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKN' +
        'O where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)' +
        ')>='
      '           '#39'2025/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2025/02/17'#39
      '           and KCRKS.CLBH like '#39'W101000059%'#39
      '           and KCRK.HGLB<>'#39'XT'#39' '
      '           and KCRK.CKBH='#39'VTXW'#39
      '           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK '
      '  union all'
      '     select * from ('
      
        '     select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,sum(KCL' +
        'LS.Qty) as LLQty,0 as JGRK,0 as JGCK,0 as JGCKTemp,KCLLS.HGLB '
      ' '#9#9#9#9'  from KCLLS with (nolock)   '
      
        '           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LL' +
        'NO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)' +
        ')>='
      '           '#39'2025/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2025/02/17'#39
      '           and KCLLS.CLBH like '#39'W101000059%'#39' '
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLLS.HGLB<>'#39'XT'#39' '
      '           and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39
      '           and KCLL.CKBH='#39'VTXW'#39
      '           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL '
      '  union all'
      '     select * from ('
      
        '     select JGZL.CKBH,JGZLS.CLBH,0 as LastRem,0 as RKQty,0 as LL' +
        'Qty,sum(JGZLS.Qty) as JGRK,0 as JGCK,0 as JGCKTemp,'#39'GC'#39' as HGLB ' +
        'from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        '>='
      '           '#39'2025/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2025/02/17'#39
      '           and JGZLS.CLBH like '#39'W101000059%'#39' '
      '           and JGZL.CFMID1 <>'#39'NO'#39' '
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' '
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZL.CKBH,JGZLS.CLBH ) JGRK '
      '  union all'
      '     select * from ('
      
        '     select JGZL.CKBH,JGZLS.ZMLB,0 as LastRem,0 as RKQty,0 as LL' +
        'Qty,0 as JGRK,convert(money,sum(round(convert(float,JGZLS.Qty)*c' +
        'onvert(float,JGZLM.Qty),2))) as JGCK,0 as JGCKTemp '
      ' '#9#9#9#9#9','#39'GC'#39' as HGLB from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2025/02/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2025/02/17'#39
      '                      and JGZL.CFMID1 <>'#39'NO'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<'#39'2017/09/01'#39
      '                   and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2025/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2025/02/17'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<'#39'2017/09/01'#39
      '           and JGZLS.ZMLB like '#39'W101000059%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39' '
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39' '
      '        and JGZL.CKBH='#39'VTXW'#39
      '        group by JGZL.CKBH,JGZLS.ZMLB '
      '        union all'
      
        '        select KCLL.CKBH,KCLLS.CLBH,0 as LastRem,0 as RKQty,0 as' +
        ' LLQty ,0 as JGRK,sum(KCLLS.Qty) as JGCK,0 as JGCKTemp,KCLLS.HGL' +
        'B '
      #9#9#9#9'        from KCLLS '
      '        left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE' +
        ',111))>='
      '        '#39'2025/02/01'#39
      
        '        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,1' +
        '11))<='
      '        '#39'2025/02/17'#39
      
        '        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,1' +
        '11))>='#39'2017/09/01'#39
      '        and KCLL.SCBH = '#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39
      '        and KCLLS.CLBH like '#39'W101000059%'#39' '
      '        and KCLL.CKBH='#39'VTXW'#39
      '         and KCLLS.HGLB<>'#39'XT'#39' '
      '         group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB'
      '        ) JGCK '
      '  union all'
      '     select * from ('
      
        '     select JGZL.CKBH,JGZLS.ZMLB,0 as LastRem,0 as RKQty,0 as LL' +
        'Qty,0 as JGRK,0 as JGCK,convert(money,sum(round(convert(float,JG' +
        'ZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCKTemp '
      '           ,'#39'GC'#39' as HGLB  from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'W101000059%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '        and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZL.CKBH,JGZLS.ZMLB ) JGCKTemp '
      
        ' ) RunTemp on KCZLS.CKBH = RunTemp.CKBH and KCZLS.CLBH =RunTemp.' +
        'CLBH  '
      
        ' where RunTemp.LastRem<>0 or RunTemp.RKQty<>0 or RunTemp.LLQty<>' +
        '0 or RunTemp.JGRK<>0 or RunTemp.JGCK <> 0 or RunTemp.JGCKTemp<>0' +
        ' '
      ' group by KCZLS.CKBH,KCZLS.CLBH,RunTemp.HGLB '
      ''
      ''
      ''
      
        'select #CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(#CLZLKC' +
        '.LastRem,0) as LastRem,'
      
        '       isnull(Round(#CLZLKC.LastRem,4),0)+isnull(Round(#CLZLKC.R' +
        'KQty,4),0)-isnull(Round(#CLZLKC.LLQty,4),0)+isnull(Round(#CLZLKC' +
        '.JGRK,4),0)-isnull(Round(#CLZLKC.JGCK,4),0) as QtyTotal'
      #9'   ,KCCLMONTH_R.*'
      'from #CLZLKC'
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH'
      
        'left join  KCZLS on KCZLS.CLBH=#CLZLKC.CLDH  and KCZLS.CKBH=#CLZ' +
        'LKC.CKBH'
      
        'left join  KCCLMONTH_R on KCZLS.CLBH=KCCLMONTH_R.CLBH  and #CLZL' +
        'KC.CKBH=#CLZLKC.CKBH'
      'where'
      
        ' not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CL' +
        'ZLKC.LLQty is null'
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      ' and KCZLS.CKBH='#39'VTXW'#39
      'and #CLZLKC.CLDH like '#39'W101000059%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by #CLZLKC.CLDH'
      ''
      ''
      ''
      '  ')
    UpdateObject = UpMas
    Left = 512
    Top = 288
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 10
    end
    object Query1QtyTotal: TCurrencyField
      FieldName = 'QtyTotal'
      DisplayFormat = '##,#0.00'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
    end
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query1TemQty: TCurrencyField
      FieldName = 'TemQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1PurQty: TCurrencyField
      FieldName = 'PurQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Pair: TStringField
      FieldName = 'Pair'
      FixedChar = True
      Size = 50
    end
    object Query1Price: TCurrencyField
      FieldName = 'Price'
      DisplayFormat = '##,#0.00'
    end
    object Query1ACC: TCurrencyField
      FieldName = 'ACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LastQty: TCurrencyField
      FieldName = 'LastQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 200
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 512
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 288
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cance1: TMenuItem
      Caption = 'Cance'
      OnClick = Cance1Click
    end
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 464
    Top = 288
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCCLMONTH_R'
      'set'
      '  CLBH =:CLBH,'
      '  CKBH =:CKBH,'
      '  QTY =:QTY,'
      '  TemQty =:TemQty,'
      '  PurQty =:PurQty,'
      '  RKQty =:RKQty,'
      '  Pair =:Pair,'
      '  Price =:Price,'
      '  ACC =:ACC,'
      '  LLQty =:LLQty,'
      '  LastQty =:LastQty,'
      '  Memo =:Memo,'
      '  USERDATE =:USERDATE,'
      '  USERID =:USERID,'
      '  YN =:YN'
      'where'
      '  CLBH = :OLD_CLBH'
      '  and CKBH = :OLD_CKBH')
    InsertSQL.Strings = (
      'insert into KCCLMONTH_R'
      
        '  (CLBH,CKBH,QTY,TemQty,PurQty,RKQty,Pair,Price,ACC,LLQty,LastQt' +
        'y,Memo,USERDATE,USERID,YN)'
      'values'
      
        '  (:CLBH, :CKBH, :QTY, :TemQty, :PurQty, :RKQty, :Pair, :Price, ' +
        ':ACC, :LLQty, :LastQty, :Memo, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from KCCLMONTH_R'
      'where'
      '  CLBH = :OLD_CLBH and'
      '  CKBH = :OLD_CKBH')
    Left = 508
    Top = 358
  end
end
