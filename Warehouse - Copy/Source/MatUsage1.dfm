object MatUsage: TMatUsage
  Left = 309
  Top = 156
  Width = 870
  Height = 500
  Caption = 'MatUsage'
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
    Width = 854
    Height = 73
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
      Width = 177
      Height = 24
      AutoSize = False
      Caption = 'Material Usage List:'
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
    object Edit1: TEdit
      Left = 64
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 336
      Top = 32
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 432
      Top = 32
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 520
      Top = 32
      Width = 65
      Height = 33
      Caption = 'Print'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 854
    Height = 389
    Align = alClient
    DataSource = DS1
    EvenRowColor = clWindow
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16765136
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
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 376
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CLZMLB'
        Footers = <>
        Title.Caption = #27597'/'#23376'|M/S'
        Title.TitleButton = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #37319#21312'|CQDH'
        Title.TitleButton = True
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <
          item
            FieldName = 'KCQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#21069#24235#23384#25976'|KCQty'
        Title.TitleButton = True
        Width = 75
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <
          item
            FieldName = 'CLSL'
            ValueType = fvtSum
          end>
        Title.Caption = #21046#20196#25976#37327'|CLSL'
        Title.TitleButton = True
        Width = 66
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'NeedJGQty'
        Footers = <
          item
            FieldName = 'NeedJGQty'
            ValueType = fvtSum
          end>
        Title.Caption = #38656#21152#24037#25976'|NeedJGQty'
        Title.TitleButton = True
        Width = 71
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 16744576
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <
          item
            FieldName = 'CGQty'
            ValueType = fvtSum
          end>
        Title.Caption = #37319#36092#25976#37327'|CGQty'
        Title.TitleButton = True
        Width = 67
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 16744576
        EditButtons = <>
        FieldName = 'JGQty'
        Footers = <
          item
            FieldName = 'JGQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24050#21152#24037#25976'|JGQty'
        Title.TitleButton = True
        Width = 69
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 8978312
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <
          item
            FieldName = 'RKQty'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#25976#37327'|RKQty'
        Title.TitleButton = True
        Width = 66
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 8978312
        EditButtons = <>
        FieldName = 'OnQty'
        Footers = <
          item
            FieldName = 'OnQty'
            ValueType = fvtSum
          end>
        Title.Caption = #22312#36884#25976#37327'|OnQty'
        Title.TitleButton = True
        Width = 65
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 8978312
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <
          item
            FieldName = 'LLQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24050#38936#26009#25976'|LLQty'
        Title.TitleButton = True
        Width = 63
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 16744576
        EditButtons = <>
        FieldName = 'KCUseQty'
        Footers = <
          item
            FieldName = 'KCUseQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24050#29992#21033#24235#25976'|KCUseQty'
        Title.TitleButton = True
      end
      item
        ButtonStyle = cbsEllipsis
        Color = 16744576
        EditButtons = <>
        FieldName = 'KCUseTQty'
        Footers = <
          item
            FieldName = 'KCUseTQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24050#26367#20195#29992#25976'|KCUseTQty'
        Width = 76
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'NowBLQty'
        Footers = <
          item
            FieldName = 'NowBLQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26410#32080#21934#24050#36229#26009#25976'|NowBLQty'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'NowBLRate'
        Footers = <>
        Title.Caption = #26410#32080#21934#24050#36229#26009#25976'|NowBLRate'
        Title.TitleButton = True
        Width = 69
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'BLQty'
        Footers = <
          item
            FieldName = 'BLQty'
            ValueType = fvtSum
          end>
        Title.Caption = #21069#20841#26376#24050#32080#21934#36229#30465#25976'|BLQty'
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'BLRate'
        Footers = <>
        Title.Caption = #21069#20841#26376#24050#32080#21934#36229#30465#25976'|BLRate'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'PreBL'
        Footers = <>
        Title.Caption = #38928#35336#35036#26009#25976'|PreBL'
        Title.TitleButton = True
        Width = 76
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'StockQty'
        Footers = <>
        Title.Caption = #21487#21033#24235'/'#38656#35036'|StockQty'
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #32048#26126#39636
        Font.Style = []
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 319
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#BCLZLKC'#39') is not null  '
      'begin   drop table #BCLZLKC end   '
      
        'select CLZL.CLDH as CLBH,CLZL.CLZMLB,isnull(LastKC.LastRem,0)+is' +
        'null(RK.RKQty,0)-isnull(LL.LLQty,0)+isnull(JGRK.JGRK,0)-isnull(J' +
        'GCK.JGCK,0) as KCQty'
      'into #BCLZLKC '
      'from CLZL'
      'left join (select KCCLMONTH.CLBH,sum(KCCLMONTH.Qty) as LastRem '
      '           from KCCLMONTH  with (nolock) '
      '           left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH '
      '           where KCCLMONTH.KCYEAR='#39'2009'#39
      '                 and KCCLMONTH.KCMONTH='#39'04'#39
      '                 and KCCLMONTH.CLBH like '#39'A%'#39
      '                 and KCCK.GSBH='#39'VA12'#39
      
        '           group by KCCLMONTH.CLBH) LastKC on LastKC.CLBH=CLZL.C' +
        'LDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS with (nolock) '
      
        '           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           left join KCCK on KCCK.CKBH=KCRK.CKBH '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111)) between '
      '                 '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '                 and KCRKS.CLBH like '#39'A%'#39
      '                 and KCCK.GSBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      
        'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ' +
        ' with (nolock) '
      
        '           left join KCLL  with (nolock) on KCLL.LLNO=KCLLS.LLNO' +
        ' '
      '           left join KCCK on KCCK.CKBH=KCLL.CKBH '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111)) between '
      '                 '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '                 and KCLLS.CLBH like '#39'A%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCCK.GSBH='#39'VA12'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK '
      '           from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' '
      '           left join KCCK on KCCK.CKBH=JGZL.CKBH '
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111)) between '
      '                  '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '                 and JGZLS.CLBH like '#39'A%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                 and KCCK.GSBH='#39'VA12'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      '           left join KCCK on KCCK.CKBH=JGZL.CKBH '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      '                      left join KCCK on KCCK.CKBH=JGZL.CKBH '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111)) between '
      '                            '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '                            and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                            and KCCK.GSBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111)) between '
      '                 '#39'2009/05/01'#39' and '#39'2009/05/31'#39
      '                 and JGZLS.ZMLB like '#39'A%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '                 and KCCK.GSBH='#39'VA12'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      ''
      
        'select #BCLZLKC.CLBH,#BCLZLKC.CLZMLB,#BCLZLKC.KCQty,isnull(ZLZLS' +
        '2.CLSL,0) as CLSL,isnull(CGZLSS.CGQty,0) as CGQty,'
      
        '       isnull(ZLJG.NeedJGQty,0) as NeedJGQty,isnull(JGZLSS.JGQty' +
        ',0) as JGQty,isnull(KCRKS.RKQty,0) as RKQty,'
      
        '       isnull(Onway.OnQty,0) as OnQty,isnull(KCUSE.KCUseQty,0) a' +
        's KCUseQty,isnull(KCUSET.KCUseTQty,0) as KCUseTQty,'
      
        '       isnull(KCLLS.LLQty,0) as LLQty,NowLLCL.Al_NowLLQty,NowLLC' +
        'L.NowBLQty,LLCL.AL_LLQty,LLCL.BLQty,'
      '       CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH, '
      '       case when #BCLZLKC.CLZMLB='#39'Y'#39
      '       then  isnull(#BCLZLKC.KCQty,0)'
      
        '             +(case when isnull(ZLZLS2.CLSL,0)-isnull(ZLJG.NeedJ' +
        'GQty,0)-isnull(CGZLSS.CGQty,0)>0 '
      
        '                then isnull(ZLZLS2.CLSL,0)-isnull(ZLJG.NeedJGQty' +
        ',0)-isnull(CGZLSS.CGQty,0) else 0 end)'
      
        '             +(case when isnull(CGZLSS.CGQty,0)-(isnull(KCRKS.RK' +
        'Qty,0)-isnull(OnWay.OnQty,0))>0 '
      
        '                then isnull(CGZLSS.CGQty,0)-(isnull(KCRKS.RKQty,' +
        '0)-isnull(OnWay.OnQty,0)) else 0 end)'
      
        '             +(case when isnull(ZLJG.NeedJGQty,0)-isnull(JGZLSS.' +
        'JGQty,0)-isnull(KCUSE.KCUseQty,0)>0 '
      
        '                 then isnull(ZLJG.NeedJGQty,0)-isnull(JGZLSS.JGQ' +
        'ty,0)-isnull(KCUSE.KCUseQty,0) else 0 end)'
      
        '             -(case when isnull(ZLZLS2.CLSL,0)-isnull(KCLLS.LLQt' +
        'y,0)>0 '
      
        '                 then isnull(ZLZLS2.CLSL,0)-isnull(KCLLS.LLQty,0' +
        ') else 0 end )'
      
        '             -isnull(NowLLCL.NowBLQty,0)-isnull(KCUSET.KCUseTQty' +
        ',0)'
      '       else isnull(#BCLZLKC.KCQty,0)'
      
        '             +(case when isnull(ZLZLS2.CLSL,0)-isnull(CGZLSS.CGQ' +
        'ty,0)-isnull(KCUSE.KCUseQty,0)>0 '
      
        '                then isnull(ZLZLS2.CLSL,0)-isnull(CGZLSS.CGQty,0' +
        ')-isnull(KCUSE.KCUseQty,0) else 0 end)'
      
        '             +(case when isnull(CGZLSS.CGQty,0)-(isnull(KCRKS.RK' +
        'Qty,0)-isnull(OnWay.OnQty,0))>0 '
      
        '                then isnull(CGZLSS.CGQty,0)-(isnull(KCRKS.RKQty,' +
        '0)-isnull(OnWay.OnQty,0)) else 0 end)'
      
        '             -(case when isnull(ZLZLS2.CLSL,0)-isnull(ZLJG.NeedJ' +
        'GQty,0)-isnull(KCLLS.LLQty,0)>0 '
      
        '                 then isnull(ZLZLS2.CLSL,0)-isnull(ZLJG.NeedJGQt' +
        'y,0)-isnull(KCLLS.LLQty,0) else 0 end )'
      
        '             -(case when isnull(ZLJG.NeedJGQty,0)-isnull(JGZLSS.' +
        'JGQty,0)>0 '
      
        '                 then isnull(ZLJG.NeedJGQty,0)-isnull(JGZLSS.JGQ' +
        'ty,0) else 0 end)'
      
        '             -isnull(NowLLCL.NowBLQty,0)-isnull(KCUSET.KCUseTQty' +
        ',0)'
      '      end as StockQty'
      'from #BCLZLKC'
      'left join CLZL  with (nolock) on CLZl.CLDH=#BCLZLKC.CLBH '
      'left join (select ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL'
      '           from ZLZLS2  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=ZLZLS2.ZLB' +
        'H '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and ZLZLS2.CLBH like '#39'A%'#39
      '                 and ZLZLS2.CLSL<>0'
      
        '           group by ZLZLS2.CLBH) ZLZLS2 on ZLZLS2.CLBH=#BCLZLKC.' +
        'CLBH '
      'left join (select CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty '
      '           from CGZLSS  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=CGZLSS.ZLB' +
        'H '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and CGZLSS.CLBH like '#39'A%'#39
      '                 and CGZLSS.Qty <>0 '
      '           group by CGZLSS.CLBH'
      '           union all '
      '           select CGHZZLS.CLBH,sum(dg_Qty) as CGQty '
      '           from CGHZZLS with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=CGHZZLS.ZL' +
        'BH '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and DDBH not like '#39'AL%'#39
      '                 and CGHZZLS.CLBH like '#39'A%'#39
      '                 and CGHZZLS.dg_Qty<>0 '
      
        '           group by CGHZZLS.CLBH) CGZLSS on CGZLSS.CLBH=#BCLZLKC' +
        '.CLBH '
      'left join (select ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as NeedJGQty '
      '           from ZLZLS2  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLB' +
        'H '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and ZLZLS2.CLSL<>0'
      '                 and ZLZLS2.CLBH like '#39'A%'#39
      '                 and ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39
      '           group by ZLZLS2.CLBH '
      '           union all '
      '           select ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as NeedJGQty '
      '           from ZLZLS2  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZl.ZLBH=ZLZLS2.ZLB' +
        'H '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and ZLZLS2.CLSL<>0'
      '                 and ZLZLS2.CLBH like '#39'A%'#39
      '                 and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      '                 and ZLZLS2.ZMLB='#39'Y'#39
      '           group by ZLZLS2.CLBH    '
      '           )  ZLJG on ZLJG.CLBH=#BCLZLKC.CLBH '
      'left join (select JGZLSS.CLBH,sum(JGZLSS.Qty) as JGQty '
      '           from JGZLSS with (nolock)  '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=JGZLSS.ZLB' +
        'H '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and JGZLSS.CLBH like '#39'A%'#39
      '                 and JGZLSS.Qty<>0'
      '           group by JGZLSS.CLBH'
      '           union all '
      
        '           select JGZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.Qty) a' +
        's JGQty '
      '           from JGZLSS  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=JGZLSS.ZLB' +
        'H '
      
        '           left join JGZLS  with (nolock) on JGZLS.CLBH=JGZLSS.C' +
        'LBH and JGZLS.JGNO=JGZLSS.JGNO and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and JGZLS.ZMLB like '#39'A%'#39
      '                 and JGZLSS.Qty<>0'
      
        '           group by JGZLS.ZMLB) JGZLSS on JGZLSS.CLBH=#BCLZLKC.C' +
        'LBH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS  with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZl.ZLBH=KCRKS.CGBH' +
        ' '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and KCRKS.CLBH like '#39'A%'#39
      '                 and KCRKS.Qty<>0'
      '           group by KCRKS.CLBH '
      '           union all '
      '           select CGHZZLS.CLBH,sum(ex_Qty) as RKQty '
      '           from CGHZZLS with (nolock) '
      
        '           left join DDZL  with (nolock) on DDZL.ZLBH=CGHZZLS.ZL' +
        'BH '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and CGHZZLS.CLBH like '#39'A%'#39
      '                 and CGHZZLS.ex_Qty<>0 '
      
        '            group by CGHZZLS.CLBH) KCRKS on KCRKS.CLBH=#BCLZLKC.' +
        'CLBH '
      
        'left join (select  CLBH,sum(isnull(EXQty,0)-isnull(Qty,0)) as On' +
        'Qty  '
      
        '          from (SELECT distinct exzls.cldh as CLBH,hgzls.xh,repl' +
        'ace(hgzls.ctn,0,1)*hgzls.ck_qty as EXQty,KCRKS.Qty '
      '                FROM hgzls  with (nolock)  '
      
        '                LEFT OUTER JOIN   exzls  with (nolock) on   hgzl' +
        's.clbh = exzls.exno + exzls.xh  '
      
        '                left outer join exzl  with (nolock) on exzl.exno' +
        '=exzls.exno and  exzl.exlb = '#39'B'#39
      
        '                LEFT OUTER JOIN   clzl  with (nolock) ON exzls.c' +
        'ldh = clzl.cldh  '
      
        '                left join exzlss  with (nolock) on exzlss.exno=e' +
        'xzls.exno and exzlss.xh=exzls.xh'
      
        '                left join KCRK  with (nolock) on KCRK.ZSNO=hgzls' +
        '.con_no'
      
        '                left join KCRKS  with (nolock) on KCRKS.RKNO=KCR' +
        'k.RKNO and KCRKS.CGBH=hgzls.xh'
      
        '                left join DDZL with (nolock)  on DDZl.ZLBH=exzls' +
        's.zlbh '
      
        '                where convert(smalldatetime,hgzls.userdate)>getd' +
        'ate()-20'
      '                      and DDZL.YN='#39'1'#39
      '                      and DDZL.GSBH='#39'VA12'#39
      '                      and exzls.cldh like '#39'A%'#39
      '                      and exzls.cldh is not null) exzls'
      '           group by CLBH) Onway on Onway.CLBH=#BCLZLKC.CLBH '
      'left join (select KCLLS.CLBH,sum(Qty) as LLQty '
      '           from KCLLS  with (nolock) '
      
        '           left join KCLL  with (nolock) on KCLL.LLNO=KCLLS.LLNO' +
        ' '
      
        '           left join DDZL with (nolock)  on DDZL.ZLBH=KCLLS.SCBH' +
        ' '
      '           where DDZL.YN='#39'1'#39
      '                 and DDZL.GSBH='#39'VA12'#39
      '                 and KCLLS.Qty<>0 '
      '                 and KCLLS.CLBH like '#39'A%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      
        '           group by KCLLS.CLBH) KCLLS on KCLLS.CLBH=#BCLZLKC.CLB' +
        'H '
      
        'left join (select ZLZLS2.CLBH, sum(ZLZLS2.CLSL) as AL_NowLLQty, ' +
        'sum(isnull(KCLLS.LLQty,0)-isnull(ZLZLS2.CLSL,0)) as NowBLQty '
      
        '           from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL)' +
        ' as CLSL'
      '                 from ZLZLS2 with (nolock) '
      
        '                 left join DDZL  with (nolock) on ZLZLS2.ZLBH=DD' +
        'ZL.ZLBH '
      '                 where DDZL.GSBH='#39'VA12'#39
      '                       and DDZL.YN='#39'1'#39
      '                       and ZLZLS2.CLSL<>0 '
      '                       and ZLZLS2.CLBH like '#39'A%'#39
      '                       and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',DDZL.shipDate,111))>='#39'2009/04/05'#39
      '                 group by ZLZLS2.CLBH,ZLZLS2.ZLBH) ZLZLS2 '
      
        '           left join (select KCLLS.SCBH as ZLBH,KCLLS.CLBH,sum(K' +
        'CLLS.Qty) as LLQty '
      '                      from KCLLS  with (nolock) '
      
        '                      left join KCLL  with (nolock) on KCLL.LLNO' +
        '=KCLLS.LLNO '
      
        '                      left join DDZL  with (nolock) on DDZl.ZLBH' +
        '=KCLLS.SCBH '
      '                      where DDZL.GSBH='#39'VA12'#39
      '                            and DDZL.YN='#39'1'#39
      '                            and KCLLS.Qty<>0 '
      '                            and KCLLS.CLBH like '#39'A%'#39
      '                            and KCLL.CFMID<>'#39'NO'#39
      
        '                            and convert(smalldatetime,convert(va' +
        'rchar,DDZL.shipDate,111))>='#39'2009/04/05'#39
      
        '                      group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on ' +
        'KCLLS.ZLBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH '
      '           where KCLLS.LLQty>ZLZLS2.CLSL'
      
        '           group by ZLZLS2.CLBH ) NowLLCL on NowLLCL.CLBH=#BCLZL' +
        'KC.CLBH '
      
        'left join (select ZLZLS2.CLBH, sum(ZLZLS2.CLSL) as AL_LLQty, sum' +
        '(isnull(KCLLS.LLQty,0)-isnull(ZLZLS2.CLSL,0)) as BLQty '
      
        '           from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL)' +
        ' as CLSL'
      '                 from ZLZLS2 with (nolock) '
      
        '                 left join DDZL  with (nolock) on ZLZLS2.ZLBH=DD' +
        'ZL.ZLBH '
      '                 where DDZL.GSBH='#39'VA12'#39
      '                       and DDZL.YN<>'#39'1'#39
      '                       and ZLZLS2.CLSL<>0 '
      '                       and ZLZLS2.CLBH like '#39'A%'#39
      '                       and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      
        '                       and convert(smalldatetime,convert(varchar' +
        ',DDZL.shipDate,111))>='#39'2009/04/05'#39
      '                 group by ZLZLS2.CLBH,ZLZLS2.ZLBH) ZLZLS2 '
      
        '           left join (select KCLLS.SCBH as ZLBH,KCLLS.CLBH,sum(K' +
        'CLLS.Qty) as LLQty '
      '                      from KCLLS  with (nolock) '
      
        '                      left join KCLL  with (nolock) on KCLL.LLNO' +
        '=KCLLS.LLNO '
      
        '                      left join DDZL  with (nolock) on DDZl.ZLBH' +
        '=KCLLS.SCBH '
      '                      where DDZL.GSBH='#39'VA12'#39
      '                            and DDZL.YN<>'#39'1'#39
      '                            and KCLLS.Qty<>0 '
      '                            and KCLLS.CLBH like '#39'A%'#39
      '                            and KCLL.CFMID<>'#39'NO'#39
      
        '                            and convert(smalldatetime,convert(va' +
        'rchar,DDZL.shipDate,111))>='#39'2009/04/05'#39
      
        '                      group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on ' +
        'KCLLS.ZLBH=ZLZLS2.ZLBH and KCLLS.CLBH=ZLZLS2.CLBH '
      
        '           group by ZLZLS2.CLBH) LLCL on LLCL.CLBH=#BCLZLKC.CLBH' +
        ' '
      'left join (select CGKCUSE.CLBH,sum(CGKCUSE.Qty) as KCUseQty '
      '           from CGKCUSE  '
      '           left join DDZL on DDZL.DDBH=CGKCUSE.ZLBH '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and DDZL.YN='#39'1'#39
      
        '           group by CGKCUSE.CLBH) KCUSE on KCUSE.CLBH=#BCLZLKC.C' +
        'LBH '
      
        'left join (select CGKCUSE.CLBHYS as CLBH,sum(CGKCUSE.Qty) as KCU' +
        'seTQty '
      '           from CGKCUSE  '
      '           left join DDZL on DDZL.DDBH=CGKCUSE.ZLBH '
      '           where DDZL.GSBH='#39'VA12'#39
      '                 and DDZL.YN='#39'1'#39
      
        '           group by CGKCUSE.CLBHYS) KCUSET on KCUSET.CLBH=#BCLZL' +
        'KC.CLBH '
      
        'where not (#BCLZLKC.KCQty=0 and isnull(ZLZLS2.CLSL,0)=0 and isnu' +
        'll(CGZLSS.CGQty,0)=0'
      
        '       and isnull(ZLJG.NeedJGQty,0)=0 and isnull(JGZLSS.JGQty,0)' +
        '=0 and isnull(KCRKS.RKQty,0)=0'
      '       and isnull(Onway.OnQty,0)=0 and isnull(KCLLS.LLQty,0)=0)'
      
        '       and not exists(select CLBH from KCSAFE with (nolock)where' +
        ' KCSAFE.CLBH=#BCLZLKC.CLBH ) '
      '       and #BCLZLKC.CLBH like '#39'A%'#39
      'order by #BCLZLKC.CLZMLB,#BCLZLKC.CLBH ')
    Left = 504
    Top = 160
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
    object Query1CLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1KCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1NeedJGQty: TFloatField
      FieldName = 'NeedJGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TFloatField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1JGQty: TCurrencyField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1OnQty: TFloatField
      FieldName = 'OnQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1KCUseQty: TCurrencyField
      FieldName = 'KCUseQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1KCUseTQty: TCurrencyField
      FieldName = 'KCUseTQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1NowBLQty: TFloatField
      FieldName = 'NowBLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1NowBLRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NowBLRate'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
    object Query1BLQty: TFloatField
      FieldName = 'BLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1BLRate: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BLRate'
      DisplayFormat = '##,#0%'
      Calculated = True
    end
    object Query1StockQty: TFloatField
      FieldName = 'StockQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1Al_NowLLQty: TFloatField
      FieldName = 'Al_NowLLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1AL_LLQty: TCurrencyField
      FieldName = 'AL_LLQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1PreBL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PreBL'
      DisplayFormat = '##,#0.0'
      Calculated = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 368
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 208
    object NN2: TMenuItem
      Caption = 'Excel'
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      ' &[Page]  /   &[Pages]')
    PageHeader.CenterText.Strings = (
      #26448#26009#20351#29992#29376#27841#19968#35261#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 504
    Top = 192
  end
end
