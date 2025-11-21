object MatStock: TMatStock
  Left = 291
  Top = 190
  Width = 870
  Height = 500
  Caption = 'MatStock'
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
    Width = 862
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
      Left = 200
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
      Left = 264
      Top = 40
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 64
      Top = 40
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 576
      Top = 64
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 664
      Top = 64
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
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
      TabOrder = 4
    end
    object Button3: TButton
      Left = 744
      Top = 64
      Width = 65
      Height = 33
      Caption = 'Print'
      TabOrder = 5
      OnClick = Button3Click
    end
    object CBX1: TComboBox
      Left = 272
      Top = 72
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 6
      Items.Strings = (
        'All')
    end
    object RadioGroup1: TRadioGroup
      Left = 360
      Top = 0
      Width = 209
      Height = 105
      ItemIndex = 0
      Items.Strings = (
        'Used('#26412#24288#26377#29992#21040')'
        'No Used('#26412#24288#27794#26377#29992#21040')'
        'Other('#20844#21496#26377#29992#26412#24288#27794#29992')')
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 105
    Width = 862
    Height = 361
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
    PopupMenu = PopupMenu1
    RowHeight = 14
    RowLines = 1
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
        Title.Caption = #26448#26009#32232#30908'|CLDH'
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
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 368
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #26448#26009#25976#37327'|Qty'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32654#37329#37329#38989'|USACC'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Caption = #20489#24235#21517#31281'|CKBH'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Title.Caption = #36008#26550#21517#31281'|KCBH'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|ZLBH'
        Width = 95
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#USPrice'#39') is not null  '
      'begin   drop table #USPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice'
      'into #USPrice from (select CLZL.CLDH,'
      '                      (select top 1 USPrice from KCRKS'
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))  '
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))'
      '                         order by USERDATE  desc)  as USPrice,'
      '                      (select top 1 VNPrice from KCRKS  '
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))'
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))    '
      '                         order by USERDATE  desc)  as VNPrice'
      'from CLZL ) CLZL  '
      'where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '
      'order by CLZL.CLDH  '
      ''
      ''
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select CLZL.CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK' +
        '.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL  '
      'left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2009'#39
      '           and KCMONTH='#39'01'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(' +
        'smalldatetime,convert(varchar,KCRK.USERDATE,111))>='
      '           '#39'2009/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2009/02/13'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS '
      
        '           left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(' +
        'smalldatetime,convert(varchar,KCLL.CFMDATE,111))>='
      '           '#39'2009/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2009/02/13'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VA12'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS'
      
        '           left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(' +
        'smalldatetime,convert(varchar,JGZL.CFMDate1,111))>='
      '           '#39'2009/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2009/02/13'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2009/02/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2009/02/13'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2009/02/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2009/02/13'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      
        'select KC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KC.KCBH,KC.CKBH,KC.' +
        'Qty ,'
      
        '       sum(isnull(#USPrice.USPrice,0)*SYL) USPrice,sum(isnull(#U' +
        'SPrice.USPrice,0)*SYL)*KC.Qty USACC '
      '    ,(select top 1 ZLZLS2.ZLBH from ZLZLS2 '
      '         left join DDZL on DDZl.ZLBH=ZLZLS2.ZLBH '
      
        '         where ZLZLS2.CLBH=KC.CLDH order by DDZL.ShipDate) as ZL' +
        'BH'
      'from (select #CLZLKC.CLDH,KCZLS.KCBH,KCZLS.CKBH,'
      
        '             case when CLZHZL.CLDH1 is null then #CLZLKC.CLDH  e' +
        'lse CLZHZL.CLDH1 end as ZCLBH ,isnull(CLZHZL.SYL,1) SYL,'
      
        '             isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-i' +
        'snull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGC' +
        'K,0) as Qty'
      '      from #CLZLKC '
      '      left join (select * from KCZLS where CKBH='#39'VA12'#39
      '                 ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      '      left join CLZHZL on CLZHZL.CLDH=#CLZLKC.CLDH '
      
        '      where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is n' +
        'ull and #CLZLKC.LLQty is null '
      
        '                     and #CLZLKC.JGRK is null and #CLZLKC.JGCK i' +
        's null and #CLZLKC.JGCKTemp is null)'
      '            and KCZLS.CKBH like '#39'VA12%'#39
      '            and #CLZLKC.CLDH like '#39'%'#39
      '       ) KC '
      'left join CLZL on CLZL.CLDH=KC.CLDH '
      'left join #USPrice on #USPrice.CLBH=KC.ZCLBH '
      
        'group by  KC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KC.KCBH,KC.CKBH,' +
        'KC.Qty '
      'order by KC.CLDH  ')
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
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
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
    Left = 368
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 208
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
    object NN3: TMenuItem
      Caption = 'Print'
      OnClick = NN3Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 504
    Top = 192
  end
end
