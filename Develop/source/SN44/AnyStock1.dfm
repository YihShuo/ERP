object AnyStock: TAnyStock
  Left = 18
  Top = 317
  Width = 1608
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
    Width = 1592
    Height = 129
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
      Left = 17
      Top = 43
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 224
      Top = 44
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 195
      Top = 98
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 9
      Top = 99
      Width = 66
      Height = 16
      Caption = 'StockDate:'
    end
    object Label7: TLabel
      Left = 549
      Top = 98
      Width = 73
      Height = 16
      Caption = 'days no use'
    end
    object Label6: TLabel
      Left = 14
      Top = 69
      Width = 47
      Height = 16
      Caption = 'SupNO:'
    end
    object Label8: TLabel
      Left = 179
      Top = 69
      Width = 53
      Height = 16
      Caption = 'Supplier:'
    end
    object Label9: TLabel
      Left = 367
      Top = 72
      Width = 68
      Height = 16
      Caption = 'CustomNO:'
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
      Left = 677
      Top = 80
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
      Left = 677
      Top = 40
      Width = 105
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 80
      Top = 96
      Width = 105
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 540
      Top = 43
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
    object Button3: TButton
      Left = 789
      Top = 40
      Width = 89
      Height = 33
      Caption = 'Print'
      TabOrder = 7
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 789
      Top = 80
      Width = 89
      Height = 33
      Caption = 'Database'
      TabOrder = 8
      Visible = False
      OnClick = Button4Click
    end
    object CBX1: TComboBox
      Left = 240
      Top = 94
      Width = 121
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 9
      Items.Strings = (
        'All')
    end
    object Edit4: TEdit
      Left = 490
      Top = 95
      Width = 57
      Height = 24
      TabOrder = 10
      Text = '90'
    end
    object CB2: TCheckBox
      Left = 371
      Top = 99
      Width = 119
      Height = 17
      Caption = 'In Warehouse >'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CB3: TCheckBox
      Left = 585
      Top = 42
      Width = 77
      Height = 17
      Caption = '>2014'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit5: TEdit
      Left = 65
      Top = 66
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
      OnKeyPress = Edit1KeyPress
    end
    object Edit6: TEdit
      Left = 239
      Top = 66
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 14
      OnKeyPress = Edit1KeyPress
    end
    object CNOEdit: TEdit
      Left = 442
      Top = 66
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 15
      OnKeyPress = Edit1KeyPress
    end
    object Panel2: TPanel
      Left = 896
      Top = 40
      Width = 177
      Height = 73
      TabOrder = 16
      Visible = False
      object Label10: TLabel
        Left = 8
        Top = 8
        Width = 56
        Height = 20
        Caption = 'Season'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 19
        Top = 40
        Width = 43
        Height = 20
        Caption = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EditSeason: TEdit
        Left = 72
        Top = 8
        Width = 73
        Height = 28
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditStage: TEdit
        Left = 72
        Top = 40
        Width = 73
        Height = 28
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object ShowSR: TCheckBox
      Left = 584
      Top = 64
      Width = 89
      Height = 17
      Caption = 'ShowSR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = ShowSRClick
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 129
    Width = 1592
    Height = 333
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
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
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = #24288#21830'|ZSDH'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'zsqm'
        Footers = <>
        Title.Caption = #24288#21830'|Name'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'HGBH'
        Footers = <>
        Title.Caption = #28023#38364#32232#34399'|HGBH'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Devcode'
        Footers = <>
        Visible = False
        Width = 199
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null'
      'begin   drop table #CLZLKC end   '
      
        'select clzl.zsdh,CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,' +
        'RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL with (nolock) '
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      
        '           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR' +
        '='#39'2015'#39
      '           and KCMONTH='#39'12'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VTXW'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      
        'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS ' +
        'with (nolock)'
      
        '           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKN' +
        'O where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2016/01/04'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VTXW'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      
        'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ' +
        'with (nolock)   '
      
        '           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LL' +
        'NO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2016/01/04'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VTXW'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS w' +
        'ith (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        '>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2016/01/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2016/01/04'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
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
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      ''
      ''
      
        'select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,'#39#39' as Devcode,IsNull(#CL' +
        'ZLKC.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH' +
        ',isnull(#CLZLKC.LastRem,0) as LastRem,'
      
        '       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) ' +
        'as LLQty,'
      
        '       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZ' +
        'LKC.JGCK,2),0) as JGCK,'
      
        '       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCB' +
        'H,KCZLS.CKBH,'
      
        '       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.R' +
        'KQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC' +
        '.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty'
      'from #CLZLKC'
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH'
      'left join zszl on zszl.zsdh=clzl.zsdh'
      'left join (select * from KCZLS   where CKBH='#39'VTXW'#39
      '                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'VT' +
        'X'#39
      ''
      
        '  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null ' +
        'and #CLZLKC.LLQty is null'
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      'and KCZLS.CKBH like '#39'VTXW%'#39
      'and #CLZLKC.CLDH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by #CLZLKC.CLDH'
      '')
    Left = 504
    Top = 160
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
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
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1CNO: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1Devcode: TStringField
      FieldName = 'Devcode'
      FixedChar = True
      Size = 1
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
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 192
    object NN1: TMenuItem
      Caption = 'Detail'
      Visible = False
      OnClick = NN1Click
    end
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 472
    Top = 232
  end
end
