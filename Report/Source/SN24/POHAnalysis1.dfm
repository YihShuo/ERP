object POHAnalysis: TPOHAnalysis
  Left = 271
  Top = 179
  Width = 928
  Height = 480
  Caption = 'Department IE POH Analysis'
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
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 28
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 12
      Width = 73
      Height = 18
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 18
      Width = 38
      Height = 20
      Caption = 'Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 464
      Top = 8
      Width = 41
      Height = 18
      AutoSize = False
      Caption = #24037#27573':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 464
      Top = 23
      Width = 44
      Height = 20
      Caption = 'GXLB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 352
      Top = 17
      Width = 49
      Height = 20
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 17
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CBX1: TComboBox
      Left = 280
      Top = 15
      Width = 65
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 11
      ParentFont = False
      TabOrder = 1
      Text = '2017'
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
        '2023')
    end
    object CBX2: TComboBox
      Left = 405
      Top = 15
      Width = 49
      Height = 26
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 0
      ParentFont = False
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
    object CBX3: TComboBox
      Left = 520
      Top = 15
      Width = 57
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 2
      ParentFont = False
      TabOrder = 3
      Text = 'A'
      Items.Strings = (
        'C'
        'S'
        'A'
        '')
    end
    object Button1: TButton
      Left = 584
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 664
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 912
    Height = 385
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object SCBBS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id('#39'tempdb..#MonSCBBSPOH'#39') is not null'
      'begin   drop table #MonSCBBSPOH end'
      'select * into #MonSCBBSPOH'
      'from ('
      
        '     select  BDepartment.DepName,BDepartment.GXLB,'#39'5.Actual'#39' as ' +
        'SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay'
      '     from SCBBS'
      '     left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and SCBBS.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39' and BDepartment.YN=1'
      
        '     group by BDepartment.DepName,BDepartment.GXLB,datepart(day,' +
        ' SCBB.SCDate)'
      '     union  all'
      
        '     select BDepartment.DepName,BDepartment.GXLB,'#39'5.Actual'#39' as S' +
        'B,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay'
      '     from SCBBS'
      '     left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and SCBBS.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      '     group by BDepartment.DepName ,BDepartment.GXLB'
      '     union all'
      
        '     select DepName,GXLB,'#39'1.Hours'#39' as SB,Avg(SCRL.SCGS) as Qty,d' +
        'atepart(day, SCBB.SCDate)  as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB,SCBB.SCDate'
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCM' +
        'ONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.D' +
        'epNo=SCBB.Depno'
      '     Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '     union all'
      
        '     select DepName,GXLB,'#39'1.Hours'#39' as SB,Sum(SCRL.SCGS) as Qty,3' +
        '2 as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB,SCBB.SCDate'
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SC' +
        'MONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.' +
        'DepNo=SCBB.Depno'
      '     Group by DepName,GXLB'
      '     union all'
      
        '     select DepName,GXLB,'#39'2.PrdHours'#39' as SB,Avg(SCRL.SCGS1) as Q' +
        'ty,datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB,SCBB.SCDate'
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCM' +
        'ONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.D' +
        'epNo=SCBB.Depno'
      '     Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '     union all'
      
        '     select DepName,GXLB,'#39'2.PrdHours'#39' as SB,Sum(SCRL.SCGS1) as Q' +
        'ty,32 as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB,SCBB.SCDate'
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.SC' +
        'MONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.' +
        'DepNo=SCBB.Depno'
      '     Group by DepName,GXLB'
      ''
      '     union all'
      
        '     select DepName,GXLB,'#39'4.PrdWorkers'#39' as SB,Avg(RSCQ.CQQty) as' +
        ' Qty,datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB'
      '     ,SCBB.SCDate '
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=SC' +
        'BB.Depno'
      '     Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '     union all'
      
        '     select DepName,GXLB,'#39'4.PrdWorkers'#39' as SB,Sum(RSCQ.CQQty) as' +
        ' Qty,32 as NDay   from ('
      
        '     select BDepartment.DepName,BDepartment.ID as DepNo,BDepartm' +
        'ent.GXLB,SCBB.SCDate'
      '     from SCBB'
      '     left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,11' +
        '1)) between'
      '     '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      '     and BDepartment.DepName like '#39'%%'#39
      '     and BDepartment.GXLB='#39'A'#39
      '     and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1'
      
        '     Group by  BDepartment.ID,BDepartment.DepName,BDepartment.GX' +
        'LB,SCBB.SCDate  ) SCBB'
      
        '     left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=SC' +
        'BB.Depno'
      '     Group by DepName,GXLB'
      '     ) SCBBS'
      'order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay'
      ''
      'alter table #MonSCBBSPOH'
      'alter column Qty float null'
      'insert into #MonSCBBSPOH'
      
        'Select A1.DepName,A1.GXLB,'#39'6.POH'#39' as SB,Round(A1.Qty/IsNull(A4.Q' +
        'ty,A2.Qty)/IsNull(A5.Qty,9999.000),4) as Qty,A1.NDay'
      
        'from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB='#39 +
        '5.Actual'#39' ) A1'
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where' +
        ' SB='#39'1.Hours'#39' and IsNull(Qty,0)>0 ) A2 on A1.DepName=A2.Depname ' +
        'and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay '
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where' +
        ' SB='#39'2.PrdHours'#39' and IsNull(Qty,0)>0 ) A4 on A1.DepName=A4.Depna' +
        'me and A1.GXLB=A4.GXLB and A1.NDay=A4.NDay '
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where' +
        ' SB='#39'4.PrdWorkers'#39' and IsNull(Qty,0)>0 ) A5 on A1.DepName=A5.Dep' +
        'name and A1.GXLB=A5.GXLB and A1.NDay=A5.NDay '
      '  '
      '---'
      
        'select DepName,Sum(T1) as T1,Sum(T2) as T2 ,Sum(T3) as T3  from ' +
        '('
      'select POH.DepName,POH.Qty as POH,IEPOH.Qty as IEPOH'
      
        '   ,case when (POH.Qty/IEPOH.Qty)*100>100.5 then 1 else 0 end as' +
        ' T1 '
      
        '   ,case when (POH.Qty/IEPOH.Qty)*100>=99.5 and (POH.Qty/IEPOH.Q' +
        'ty)*100<=100.5  then 1 else 0 end as T2 '
      
        '   ,case when (POH.Qty/IEPOH.Qty)*100<99.5 then 1 else 0 end as ' +
        'T3 '
      'from ('
      '  select #MonSCBBSPOH.* from #MonSCBBSPOH where SB='#39'6.POH'#39' ) POH'
      'Left join ('
      'select BDepartment.DepName,BDepartment.GXLB,'#39'7.IE POH'#39' as SB'
      
        '       ,(select convert(varchar(10),Round(Avg(POH),4))  as POH f' +
        'rom ('
      
        '       select SCBBS.SCBH,(Round(Max(Convert(float,SCXXCL.BZCL))/' +
        'Sum(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH from SCBBS '
      '       inner join DDZL on DDZL.DDBH=SCBBS.SCBH '
      
        '       inner join  SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCX' +
        'XCL.SheHao=DDZL.SheHao '
      
        '       where SCBBS.GXLB='#39'A'#39' and SCBBS.ProNo=SCBB.ProNo Group by ' +
        'SCBBS.SCBH )  A )  Qty '
      '       ,datepart(day, SCBB.SCDate)  as NDay'
      'from SCBB'
      'left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween'
      ' '#39'2018/10/01'#39' and '#39'2018/10/31'#39
      'and BDepartment.DepName like '#39'%%'#39
      'and BDepartment.GXLB='#39'A'#39
      
        'and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 )  IEPOH  on P' +
        'OH.DepName=IEPOH.Depname and POH.GXLB=IEPOH.GXLB and POH.NDay=IE' +
        'POH.NDay '
      'where POH.DepName like '#39'%%'#39
      ') SCBBS'
      'Group by DepName'
      ''
      ''
      '--'
      ''
      '')
    Left = 232
    Top = 144
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = SCBBS
    Left = 192
    Top = 144
  end
end
