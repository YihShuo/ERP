object MonthProductionReport: TMonthProductionReport
  Left = 295
  Top = 219
  Width = 928
  Height = 480
  Caption = 'Month Production Report'
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
    Width = 912
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 17
      Width = 29
      Height = 13
      Caption = #24180'/'#26376
    end
    object Label2: TLabel
      Left = 24
      Top = 48
      Width = 33
      Height = 13
      AutoSize = False
      Caption = #24288#21029
    end
    object Label3: TLabel
      Left = 168
      Top = 16
      Width = 33
      Height = 13
      AutoSize = False
      Caption = #24037#24207
      Visible = False
    end
    object ym: TDateTimePicker
      Left = 69
      Top = 12
      Width = 92
      Height = 21
      Date = 40614.588827777780000000
      Time = 40614.588827777780000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 289
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 374
      Top = 11
      Width = 75
      Height = 25
      Caption = 'EXCEL'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 288
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Analysis'
      TabOrder = 3
    end
    object FCB: TComboBox
      Left = 69
      Top = 43
      Width = 92
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'VA12'
        'VA3'
        'VB1'
        'VDT')
    end
    object wcb: TComboBox
      Left = 205
      Top = 13
      Width = 58
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'ALL'
      Visible = False
      OnChange = wcbChange
      Items.Strings = (
        'ALL'
        'C'
        'S'
        'A')
    end
  end
  object PC: TPageControl
    Left = 0
    Top = 81
    Width = 912
    Height = 360
    ActivePage = TabSheet8
    Align = alClient
    TabOrder = 1
    TabPosition = tpBottom
    OnChange = PCChange
    object TabSheet1: TTabSheet
      Caption = #29986#33021#32317#34920
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 904
        Height = 334
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = CHINESEBIG5_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = CHINESEBIG5_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = #23458#25142#21363#26178#29983#29986#29376#27841#32113#35336#34920
      ImageIndex = 2
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 904
        Height = 334
        Align = alClient
        DataSource = DataSource2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet8: TTabSheet
      Caption = #25509#21934#29983#29986#20998#26512#34920
      ImageIndex = 7
      object DBGridEh5: TDBGridEh
        Left = 0
        Top = 0
        Width = 904
        Height = 334
        Align = alClient
        DataSource = DataSource3
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object TabSheet6: TTabSheet
      Caption = #29983#29986#25928#33021#34920
      ImageIndex = 5
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 904
        Height = 334
        Align = alClient
        DataSource = DataSource4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Title.Caption = #29983#29986#21312'|GSBH'
            Width = 146
          end
          item
            EditButtons = <>
            FieldName = 'bzmon'
            Footers = <>
            Title.Caption = #29983#29986#26376#20221'|bzmon'
            Width = 59
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'planqty'
            Footers = <
              item
                DisplayFormat = '#,###'
                FieldName = 'planqty'
                ValueType = fvtSum
              end>
            Title.Caption = #30446#27161#29986#33021'|planqty'
          end
          item
            DisplayFormat = '#,###.0'
            EditButtons = <>
            FieldName = 'h'
            Footers = <
              item
                DisplayFormat = '#,###.0'
                FieldName = 'h'
                ValueType = fvtSum
              end>
            Title.Caption = #24037#26178'|Hours'
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'qty'
            Footers = <
              item
                DisplayFormat = '#,###'
                FieldName = 'qty'
                ValueType = fvtSum
              end>
            Title.Caption = #23526#38555#29986#33021'|Qty'
          end
          item
            DisplayFormat = '###.00%'
            EditButtons = <>
            FieldName = 'pm'
            Footers = <
              item
                DisplayFormat = '###.00%'
                FieldName = 'pm'
                ValueType = fvtAvg
              end>
            Title.Caption = #29983#29986#36948#25104#29575'| pm'
          end
          item
            DisplayFormat = '#,###.00'
            EditButtons = <>
            FieldName = 'pphofplan'
            Footers = <
              item
                Color = clMenuBar
                DisplayFormat = '#,###.00'
                FieldName = 'pphofplan'
                ValueType = fvtAvg
              end>
            Title.Caption = #30446#27161#32218#22343'|PPH of Plan'
          end
          item
            DisplayFormat = '#,###.00'
            EditButtons = <>
            FieldName = 'pphofreal'
            Footers = <
              item
                Color = clMenuHighlight
                DisplayFormat = '#,###.00'
                FieldName = 'pphofreal'
                ValueType = fvtAvg
              end>
            Title.Caption = #23526#38555#32218#22343'|PPH of Real'
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = #29983#29986#25928#33021#26126#32048#34920
      ImageIndex = 4
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 904
        Height = 334
        Align = alClient
        DataSource = DataSource5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'depmemo'
            Footers = <>
            Title.Caption = #21934#20301'|depmemo'
          end
          item
            EditButtons = <>
            FieldName = 'bzmon'
            Footers = <>
            Title.Caption = #26376#20221'|bzmon'
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'planqty'
            Footers = <
              item
                DisplayFormat = '#,###'
                FieldName = 'planqty'
                ValueType = fvtSum
              end>
            Title.Caption = #35336#21123#25976'|planqty'
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'h'
            Footers = <
              item
                DisplayFormat = '#,###'
                FieldName = 'h'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#24037#26178'|Hours'
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'qty'
            Footers = <
              item
                DisplayFormat = '#,###'
                FieldName = 'qty'
                ValueType = fvtSum
              end>
            Title.Caption = #23526#38555#29986#33021'|qty'
          end
          item
            Color = clSilver
            DisplayFormat = '###.00'
            EditButtons = <>
            FieldName = 'pphofplan'
            Footers = <
              item
                Color = clGray
                DisplayFormat = '###.00'
                FieldName = 'pphofplan'
                ValueType = fvtAvg
              end>
            Title.Caption = #35336#21123#32218#22343'|PPH of Plan'
          end
          item
            Color = clGradientActiveCaption
            DisplayFormat = '###.00'
            EditButtons = <>
            FieldName = 'pphofreal'
            Footers = <
              item
                Color = clGradientActiveCaption
                DisplayFormat = '###.00'
                FieldName = 'pphofreal'
                ValueType = fvtAvg
              end>
            Title.Caption = #23526#38555#32218#22343'|PPH of Real'
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #29986#33021#36000#36617#22577#34920
      ImageIndex = 3
    end
    object TabSheet7: TTabSheet
      Caption = #20154#24037#25812#25552#26126#32048#34920
      ImageIndex = 6
    end
  end
  object Q1: TQuery
    AfterOpen = Q1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#Monrp'#39') is not null  '
      '   begin   drop table #Monrp end   '
      'select * into #Monrp '
      
        'from (select cast(classnameC as Nvarchar) as GSBH,SCBBS.GXLB,'#39'Ac' +
        'tual'#39' as SB,'
      
        '               sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) ' +
        'as NDay  '
      '       from SCBBS '
      '       left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       left join monthreportdepclass on bdepartment.reportclass=' +
        'classid '
      '       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2011/03/01'#39'and '#39'2011/03/31'#39
      '              and BDepartment.GXLB<>'#39'G'#39
      '              and (SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        '       group by classnameC,SCBBS.GXLB,datepart(day, SCBB.SCDate)' +
        '  '
      '      union  all '
      
        '      select cast(classnameC as Nvarchar) as GSBH,SCBBS.GXLB,'#39'Ac' +
        'tual'#39' as SB,'
      '               isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  '
      '      from SCBBS '
      '      left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '      left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '      left join monthreportdepclass on bdepartment.reportclass=c' +
        'lassid '
      '      left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,1' +
        '11)) between '
      '             '#39'2011/03/01'#39'and '#39'2011/03/31'#39
      '              and BDepartment.GXLB<>'#39'G'#39
      '              and (SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        '       group by classnameC,SCBBS.GXLB,datepart(day, SCBB.SCDate)' +
        '  '
      '       union  all'
      
        '       select cast(classnameC as Nvarchar) as GSBH,BDepartment.G' +
        'XLB,'#39' Plan'#39' as SB,'
      
        '              sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SC' +
        'BZCL.BZDate) as NDay  '
      '       from SCBZCL '
      '       left join BDepartment on BDepartment.ID=SCBZCL.DepNO '
      
        '       left join monthreportdepclass on bdepartment.reportclass=' +
        'classid '
      
        '       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDat' +
        'e,111)) between '
      '              '#39'2011/03/01'#39'and '#39'2011/03/31'#39
      '              and BDepartment.GXLB<>'#39'G'#39
      '              and (BDepartment.GXLB='#39'S'#39' or BDepartment.GXLB='#39'A'#39')'
      
        '       group by  ClassnameC,BDepartment.GXLB,datepart(day, SCBZC' +
        'L.BZDate)'
      '       union all '
      
        '       select cast(classnameC as Nvarchar) as GSBH,BDepartment.G' +
        'XLB,'#39' Plan'#39' as SB,'
      '             isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  '
      '       from SCBZCL '
      '       left join BDepartment on BDepartment.ID=SCBZCL.DepNO '
      
        '       left join monthreportdepclass on bdepartment.reportclass=' +
        'classid '
      
        '       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDat' +
        'e,111)) between '
      '              '#39'2011/03/01'#39'and '#39'2011/03/31'#39
      '              and BDepartment.GXLB<>'#39'G'#39
      '              and (BDepartment.GXLB='#39'S'#39' or BDepartment.GXLB='#39'A'#39')'
      '       group by ClassnameC,BDepartment.GXLB '
      '     ) SCBBS '
      'order by SCBBS.GSBH,SCBBS.GXLB,SCBBS.NDay '
      'alter table #Monrp '
      'alter column GSBH nvarchar(20) null '
      'insert into #Monrp '
      
        'select '#39'ZTotal'#39' as GSBH,#Monrp.GXLB,#Monrp.SB,sum(Qty) as Qty,#M' +
        'onrp.NDay '
      'from #Monrp '
      'group by #Monrp.GXLB,#Monrp.SB,#Monrp.NDay  '
      ''
      '--select * from #monrp'
      
        '----------------------------------------------------------------' +
        '---------------------------------------------'
      ''
      'select SCBBS.GSBH as Factory,SCBBS.GXLB,SCBBS.SB  '
      ',sum(case  when NDay='#39'1'#39
      ' then Qty  end) as '#39'1'#39
      ',sum(case  when NDay='#39'2'#39
      ' then Qty  end) as '#39'2'#39
      ',sum(case  when NDay='#39'3'#39
      ' then Qty  end) as '#39'3'#39
      ',sum(case  when NDay='#39'4'#39
      ' then Qty  end) as '#39'4'#39
      ',sum(case  when NDay='#39'5'#39
      ' then Qty  end) as '#39'5'#39
      ',sum(case  when NDay='#39'6'#39
      ' then Qty  end) as '#39'6'#39
      ',sum(case  when NDay='#39'7'#39
      ' then Qty  end) as '#39'7'#39
      ',sum(case  when NDay='#39'8'#39
      ' then Qty  end) as '#39'8'#39
      ',sum(case  when NDay='#39'9'#39
      ' then Qty  end) as '#39'9'#39
      ',sum(case  when NDay='#39'10'#39
      ' then Qty  end) as '#39'10'#39
      ',sum(case  when NDay='#39'11'#39
      ' then Qty  end) as '#39'11'#39
      ',sum(case  when NDay='#39'12'#39
      ' then Qty  end) as '#39'12'#39
      ',sum(case  when NDay='#39'13'#39
      ' then Qty  end) as '#39'13'#39
      ',sum(case  when NDay='#39'14'#39
      ' then Qty  end) as '#39'14'#39
      ',sum(case  when NDay='#39'15'#39
      ' then Qty  end) as '#39'15'#39
      ',sum(case  when NDay='#39'16'#39
      ' then Qty  end) as '#39'16'#39
      ',sum(case  when NDay='#39'17'#39
      ' then Qty  end) as '#39'17'#39
      ',sum(case  when NDay='#39'18'#39
      ' then Qty  end) as '#39'18'#39
      ',sum(case  when NDay='#39'19'#39
      ' then Qty  end) as '#39'19'#39
      ',sum(case  when NDay='#39'20'#39
      ' then Qty  end) as '#39'20'#39
      ',sum(case  when NDay='#39'21'#39
      ' then Qty  end) as '#39'21'#39
      ',sum(case  when NDay='#39'22'#39
      ' then Qty  end) as '#39'22'#39
      ',sum(case  when NDay='#39'23'#39
      ' then Qty  end) as '#39'23'#39
      ',sum(case  when NDay='#39'24'#39
      ' then Qty  end) as '#39'24'#39
      ',sum(case  when NDay='#39'25'#39
      ' then Qty  end) as '#39'25'#39
      ',sum(case  when NDay='#39'26'#39
      ' then Qty  end) as '#39'26'#39
      ',sum(case  when NDay='#39'27'#39
      ' then Qty  end) as '#39'27'#39
      ',sum(case  when NDay='#39'28'#39
      ' then Qty  end) as '#39'28'#39
      ',sum(case  when NDay='#39'29'#39
      ' then Qty  end) as '#39'29'#39
      ',sum(case  when NDay='#39'30'#39
      ' then Qty  end) as '#39'30'#39
      ',sum(case  when NDay='#39'31'#39
      ' then Qty  end) as '#39'31'#39
      ',sum(case  when NDay='#39'32'#39
      ' then Qty  else 0 end) as '#39'32'#39
      'from  (select #Monrp.* from #Monrp  '
      '       union all '
      '       select SCBZCL.GSBH ,SCBZCL.GXLB,'#39'Diff'#39' as SB,'
      
        '             case when isnull(SCBBS.Qty,0)<>0  then  isnull(SCBB' +
        'S.Qty,0)-isnull(SCBZCL.Qty,0) end Qty,SCBZCL.NDay'
      
        '       from (select * from #Monrp where #Monrp.SB like '#39'%Plan%'#39')' +
        ' SCBZCL '
      
        '       left join (select * from #Monrp where #Monrp.SB like '#39'%Ac' +
        'tual%'#39') SCBBS'
      
        '                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS' +
        '.GXLB and SCBZCL.NDay=SCBBS.NDay '
      '       union all '
      '       select SCBZCL.GSBH,SCBZCL.GXLB,'#39'Per%'#39' as SB,'
      
        '             case when isnull(SCBZCL.Qty,0)<>0 then convert(int,' +
        'isnull(SCBBS.Qty,0)/isnull(SCBZCL.Qty,0)*100)  end Qty,SCBZCL.ND' +
        'ay '
      
        '       from (select * from #Monrp where #Monrp.SB like '#39'%Plan%'#39')' +
        ' SCBZCL '
      
        '       left join (select * from #Monrp where #Monrp.SB like '#39'%Ac' +
        'tual%'#39') SCBBS '
      
        '                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS' +
        '.GXLB and SCBZCL.NDay=SCBBS.NDay '
      '       ) SCBBS '
      'group by   SCBBS.GXLB,scbbs.gsbh ,SCBBS.SB '
      'order by   SCBBS.GXLB,scbbs.gsbh ,SCBBS.SB')
    Left = 16
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = Q1
    Left = 16
    Top = 357
  end
  object qt: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from monthreportdepclass')
    Left = 384
    Top = 40
  end
  object Q2: TQuery
    AfterOpen = Q2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfjc,mon,sum(orderTotal) as OrderTotal,isnull(sum(Oktotal' +
        '),0) AS OkTotal'
      
        ',sum(isnull((case when OKtotal is null then ordertotal end) ,0))' +
        ' as '#39'NoPlan'#39
      
        ',sum(isnull((case when gsbh='#39'VA12'#39' and OKtotal is not null then ' +
        'oktotal end),0)) as '#39'VA12'#39
      
        ',sum(isnull((case when gsbh='#39'VA3'#39' and OKtotal is not null then o' +
        'ktotal end),0)) as '#39'VA3'#39
      
        ',sum(isnull((case when gsbh='#39'VB1'#39' and OKtotal is not null then o' +
        'ktotal end),0)) as '#39'VB1'#39
      #9',isnull(sum(q1),0) as '#39'1'#39
      #9',isnull(sum(q2),0) as '#39'2'#39
      #9',isnull(sum(q3),0) as '#39'3'#39#9
      #9',isnull(sum(q4),0) as '#39'4'#39
      #9',isnull(sum(q5),0) as '#39'5'#39
      #9',isnull(sum(q6),0) as '#39'6'#39
      #9',isnull(sum(q7),0) as '#39'7'#39
      #9',isnull(sum(q8),0) as '#39'8'#39
      #9',isnull(sum(q9),0) as '#39'9'#39
      #9',isnull(sum(q10),0) as '#39'10'#39
      #9',isnull(sum(q11),0) as '#39'11'#39
      #9',isnull(sum(q12),0) as '#39'12'#39
      #9',isnull(sum(q13),0) as '#39'13'#39
      #9',isnull(sum(q14),0) as '#39'14'#39
      #9',isnull(sum(q15),0) as '#39'15'#39
      #9',isnull(sum(q16),0) as '#39'16'#39
      #9',isnull(sum(q17),0) as '#39'17'#39
      #9',isnull(sum(q18),0) as '#39'18'#39
      #9',isnull(sum(q19),0) as '#39'19'#39
      #9',isnull(sum(q20),0) as '#39'20'#39
      #9',isnull(sum(q21),0) as '#39'21'#39
      #9',isnull(sum(q22),0) as '#39'22'#39
      #9',isnull(sum(q23),0) as '#39'23'#39
      #9',isnull(sum(q24),0) as '#39'24'#39
      #9',isnull(sum(q25),0) as '#39'25'#39
      #9',isnull(sum(q26),0) as '#39'26'#39
      #9',isnull(sum(q27),0) as '#39'27'#39
      #9',isnull(sum(q28),0) as '#39'28'#39
      #9',isnull(sum(q29),0) as '#39'29'#39
      #9',isnull(sum(q30),0) as '#39'30'#39
      #9',isnull(sum(q31),0) as '#39'31'#39
      'from('
      
        'select kfzl.kfjc,isnull(smzl.gsbh,ddzl.gsbh) as gsbh,CONVERT(cha' +
        'r(7),shipdate,111) as mon'
      #9',sum(pairs) as OrderTotal,sum(smzl.qty) as OkTotal'
      #9',sum(q1) as '#39'q1'#39
      #9',sum(q2) as '#39'q2'#39
      #9',sum(q3) as '#39'q3'#39#9
      #9',sum(q4) as '#39'q4'#39
      #9',sum(q5) as '#39'q5'#39
      #9',sum(q6) as '#39'q6'#39
      #9',sum(q7) as '#39'q7'#39
      #9',sum(q8) as '#39'q8'#39
      #9',sum(q9) as '#39'q9'#39
      #9',sum(q10) as '#39'q10'#39
      #9',sum(q11) as '#39'q11'#39
      #9',sum(q12) as '#39'q12'#39
      #9',sum(q13) as '#39'q13'#39
      #9',sum(q14) as '#39'q14'#39
      #9',sum(q15) as '#39'q15'#39
      #9',sum(q16) as '#39'q16'#39
      #9',sum(q17) as '#39'q17'#39
      #9',sum(q18) as '#39'q18'#39
      #9',sum(q19) as '#39'q19'#39
      #9',sum(q20) as '#39'q20'#39
      #9',sum(q21) as '#39'q21'#39
      #9',sum(q22) as '#39'q22'#39
      #9',sum(q23) as '#39'q23'#39
      #9',sum(q24) as '#39'q24'#39
      #9',sum(q25) as '#39'q25'#39
      #9',sum(q26) as '#39'q26'#39
      #9',sum(q27) as '#39'q27'#39
      #9',sum(q28) as '#39'q28'#39
      #9',sum(q29) as '#39'q29'#39
      #9',sum(q30) as '#39'q30'#39
      #9',sum(q31) as '#39'q31'#39
      ''
      'from ddzl'
      'left join kfzl on kfzl.kfdh=ddzl.khbh'
      'left join ('
      'select scbb.gsbh,scbbs.scbh,scbbs.gxlb,sum(scbbs.qty) as qty'
      #9',sum(case  when day(scdate)=1'
      #9'then scbbs.Qty  end) as q1'
      #9',sum(case  when day(scdate)=2'
      #9'then scbbs.Qty  end) as q2'
      #9',sum(case  when day(scdate)=3'
      #9'then scbbs.Qty  end) as q3'
      #9',sum(case  when day(scdate)=4'
      #9'then scbbs.Qty  end) as q4'
      #9',sum(case  when day(scdate)=5'
      #9'then scbbs.Qty  end) as q5'
      #9',sum(case  when day(scdate)=6'
      #9'then scbbs.Qty  end) as q6'
      #9',sum(case  when day(scdate)=7'
      #9'then scbbs.Qty  end) as q7'
      #9',sum(case  when day(scbb.scdate)=8'
      #9'then scbbs.Qty  end) as q8'
      #9',sum(case  when day(scbb.scdate)=9'
      #9'then scbbs.Qty  end) as q9'
      #9',sum(case  when day(scbb.scdate)=10'
      #9'then scbbs.Qty  end) as q10'
      #9',sum(case  when day(scbb.scdate)=11'
      #9'then scbbs.Qty  end) as q11'
      #9',sum(case  when day(scbb.scdate)=12'
      #9'then scbbs.Qty  end) as q12'
      #9',sum(case  when day(scbb.scdate)=13'
      #9'then scbbs.Qty  end) as q13'
      #9',sum(case  when day(scbb.scdate)=14'
      #9'then scbbs.Qty  end) as q14'
      #9',sum(case  when day(scbb.scdate)=15'
      #9'then scbbs.Qty  end) as q15'
      #9',sum(case  when day(scbb.scdate)=16'
      #9'then scbbs.Qty  end) as q16'
      #9',sum(case  when day(scbb.scdate)=17'
      #9'then scbbs.Qty  end) as q17'
      #9',sum(case  when day(scbb.scdate)=18'
      #9'then scbbs.Qty  end) as q18'
      #9',sum(case  when day(scbb.scdate)=19'
      #9'then scbbs.Qty  end) as q19'
      #9',sum(case  when day(scbb.scdate)=20'
      #9'then scbbs.Qty  end) as q20'
      #9',sum(case  when day(scbb.scdate)=21'
      #9'then scbbs.Qty  end) as q21'
      #9',sum(case  when day(scbb.scdate)=22'
      #9'then scbbs.Qty  end) as q22'
      #9',sum(case  when day(scbb.scdate)=23'
      #9'then scbbs.Qty  end) as q23'
      #9',sum(case  when day(scbb.scdate)=24'
      #9'then scbbs.Qty  end) as q24'
      #9',sum(case  when day(scbb.scdate)=25'
      #9'then scbbs.Qty  end) as q25'
      #9',sum(case  when day(scbb.scdate)=26'
      #9'then scbbs.Qty  end) as q26'
      #9',sum(case  when day(scbb.scdate)=27'
      #9'then scbbs.Qty  end) as q27'
      #9',sum(case  when day(scbb.scdate)=28'
      #9'then scbbs.Qty  end) as q28'
      #9',sum(case  when day(scbb.scdate)=29'
      #9'then scbbs.Qty  end) as q29'
      #9',sum(case  when day(scbb.scdate)=30'
      #9'then scbbs.Qty  end) as q30'
      #9',sum(case  when day(scbb.scdate)=31'
      #9'then scbbs.Qty  end) as q31'
      #9'from scbbs'
      #9'left join scbb on scbb.prono=scbbs.prono'
      
        #9'where gxlb='#39'A'#39' and CONVERT(char(7),scdate,111)=CONVERT(char(7),' +
        'getdate(),111)'
      
        #9'group by scbb.gsbh,scbbs.scbh,scbbs.gxlb) as smzl on smzl.scbh=' +
        'ddzl.ddbh'
      
        'where CONVERT(char(7),shipdate,111)>=CONVERT(char(7),getdate(),1' +
        '11)'
      
        'group by kfzl.kfjc,smzl.gsbh,ddzl.gsbh,CONVERT(char(7),shipdate,' +
        '111)) as p'
      'group by kfjc,mon'
      'order by kfjc,mon')
    Left = 108
    Top = 397
  end
  object DataSource2: TDataSource
    DataSet = Q2
    Left = 108
    Top = 357
  end
  object q3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfzl.kfjc,CONVERT(char(7),shipdate,111) as csd,sum(pairs)' +
        ' as OrderTotal,sum(smzl.qty) AS TOTOAL'
      '    ,sum(smzl.q1) as '#39'2011/01'#39
      #9',sum(smzl.q2) as '#39'2011/02'#39
      #9',sum(smzl.q3) as '#39'2011/03'#39
      #9',sum(smzl.q4) as '#39'2011/04'#39
      #9',sum(smzl.q5) as '#39'2011/05'#39
      #9',sum(smzl.q6) as '#39'2011/06'#39
      #9',sum(smzl.q7) as '#39'2011/07'#39
      ''
      'from ddzl'
      'left join kfzl on kfzl.kfdh=ddzl.khbh'
      'left join ('
      #9'select scbbs.scbh,scbbs.gxlb,sum(qty) as qty'
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/01'#39
      #9' then scbbs.Qty  end) as q1'
      #9',sum(case  when  CONVERT(char(7),scdate,111)='#39'2011/02'#39
      #9' then scbbs.Qty  end) as q2'
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/03'#39
      #9'then scbbs.Qty  end) as q3'
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/04'#39
      #9'then scbbs.Qty  end) as q4'#9
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/05'#39
      #9' then scbbs.Qty  end) as q5'
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/06'#39
      #9' then scbbs.Qty  end) as q6'
      #9',sum(case  when CONVERT(char(7),scdate,111)='#39'2011/07'#39
      #9' then scbbs.Qty  end) as q7'
      #9' from scbbs'
      #9'left join scbb on scbb.prono=scbbs.prono'
      #9'where gxlb='#39'A'#39' and CONVERT(char(7),scdate,111)>'#39'2011/01'#39
      #9'group by scbbs.scbh,scbbs.gxlb) as smzl on smzl.scbh=ddzl.ddbh'
      'where CONVERT(char(7),shipdate,111)>='#39'2011/04'#39
      
        'group by kfzl.kfjc,CONVERT(char(7),shipdate,111)--,ddzl.ddbh,pai' +
        'rs'
      'order by  kfzl.kfjc,CONVERT(char(7),shipdate,111)')
    Left = 244
    Top = 397
  end
  object DataSource3: TDataSource
    DataSet = q3
    Left = 244
    Top = 365
  end
  object tempq: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select min(scbbs.userdate) as y from scbbs'
      ' left join ddzl on ddzl.ddbh=scbbs.scbh'
      ' where CONVERT(char(7),shipdate,111)=substring('#39'2011/07/25'#39',1,7)')
    Left = 420
    Top = 40
  end
  object q4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select classnameC as GSBH,CONVERT(char(7),SCBZCL.bzdate,111) as ' +
        'bzmon'
      #9',sum(SCBZCL.qty) as planqty, worktime.h'#9',rq.qty'
      #9',((rq.qty/sum(SCBZCL.qty))*100) as pm'
      #9',(sum(SCBZCL.qty)/worktime.h) as pphofplan'
      #9',(rq.qty/worktime.h) as pphofreal'
      'from SCBZCL'
      'left join BDepartment on BDepartment.ID=SCBzcl.DepNO '
      
        'left join monthreportdepclass on bdepartment.reportclass=classid' +
        ' '
      'left join'
      #9'(select reportclass,sum(scgs) as h from scrl '
      '   left join BDepartment on BDepartment.ID=scrl.DepNO'
      #9#9#9'where (scyear='#39'2011'#39
      '             and scmonth='#39'7'#39')'
      #9#9#9' and gxlb='#39'A'#39
      
        #9#9'group by reportclass) as worktime on bdepartment.reportclass=w' +
        'orktime.reportclass'
      'left join '
      #9'(select reportclass,sum(scbbs.qty) as qty from scbb'
      #9#9'left join scbbs on scbb.prono=scbbs.prono'
      #9#9'left join BDepartment on BDepartment.ID=scbb.DepNO'
      #9#9'where CONVERT(char(7),scbb.scdate,111) = '#39'2011/07'#39
      #9#9#9'and scbbs.gxlb = '#39'A'#39
      
        #9#9'group by reportclass) as rq on rq.reportclass=bdepartment.repo' +
        'rtclass '
      'where CONVERT(char(7),SCBZCL.bzdate,111)='#39'2011/07'#39
      #9'and SCBZCL.qty <> 0'
      #9'and BDepartment.gxlb='#39'A'#39
      
        'group by classnameC ,CONVERT(char(7),SCBZCL.bzdate,111),worktime' +
        '.h,rq.qty')
    Left = 324
    Top = 397
    object q4GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 50
    end
    object q4bzmon: TStringField
      FieldName = 'bzmon'
      FixedChar = True
      Size = 7
    end
    object q4planqty: TIntegerField
      FieldName = 'planqty'
    end
    object q4h: TFloatField
      FieldName = 'h'
    end
    object q4qty: TFloatField
      FieldName = 'qty'
    end
    object q4pm: TFloatField
      FieldName = 'pm'
    end
    object q4pphofplan: TFloatField
      FieldName = 'pphofplan'
    end
    object q4pphofreal: TFloatField
      FieldName = 'pphofreal'
    end
  end
  object DataSource4: TDataSource
    DataSet = q4
    Left = 324
    Top = 365
  end
  object q5: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111) as' +
        ' bzmon'
      #9',sum(SCBZCL.qty) as planqty, worktime.h'#9',rq.qty'
      #9',(sum(SCBZCL.qty)/worktime.h) as pphofplan'
      #9',(rq.qty/worktime.h) as pphofreal  '
      'from SCBZCL'
      'left join BDepartment on BDepartment.ID=SCBzcl.DepNO  '
      'left join '
      #9'(select depno,sum(scgs) as h from scrl '
      #9#9'where (scyear='#39'2011'#39' and scmonth='#39'7'#39')'
      #9#9'group by depno) as worktime on scbzcl.depno=worktime.depno'
      'left join '
      #9'(select depno,sum(scbbs.qty) as qty from scbb'
      #9#9'left join scbbs on scbb.prono=scbbs.prono'
      #9#9'where CONVERT(char(7),scbb.scdate,111) = '#39'2011/07'#39
      #9#9'group by depno) as rq on rq.depno=scbzcl.depno  '
      ''
      'where CONVERT(char(7),SCBZCL.bzdate,111)='#39'2011/07'#39
      #9'and SCBZCL.qty <> 0'
      
        'group by BDepartment.depmemo,CONVERT(char(7),SCBZCL.bzdate,111),' +
        'worktime.h,rq.qty')
    Left = 408
    Top = 400
    object q5depmemo: TStringField
      FieldName = 'depmemo'
      FixedChar = True
      Size = 50
    end
    object q5bzmon: TStringField
      FieldName = 'bzmon'
      FixedChar = True
      Size = 7
    end
    object q5planqty: TIntegerField
      FieldName = 'planqty'
    end
    object q5h: TFloatField
      FieldName = 'h'
    end
    object q5qty: TFloatField
      FieldName = 'qty'
    end
    object q5pphofplan: TFloatField
      FieldName = 'pphofplan'
    end
    object q5pphofreal: TFloatField
      FieldName = 'pphofreal'
    end
  end
  object DataSource5: TDataSource
    DataSet = q5
    Left = 404
    Top = 365
  end
  object smdd: TQuery
    DatabaseName = 'dB'
    Left = 464
    Top = 40
  end
end
