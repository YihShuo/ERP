object DepartmentDailyPPH: TDepartmentDailyPPH
  Left = 261
  Top = 241
  Width = 1081
  Height = 563
  Caption = 'DepartmentDailyPPH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1065
    Height = 81
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 259
      Top = 42
      Width = 34
      Height = 20
      Caption = 'Year'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 50
      Width = 77
      Height = 20
      Caption = 'DepName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 33
      Width = 64
      Height = 20
      Caption = #37096#38272#21517#31281
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 506
      Top = 33
      Width = 36
      Height = 20
      AutoSize = False
      Caption = #24037#27573
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 503
      Top = 50
      Width = 40
      Height = 20
      Caption = 'GXLB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 380
      Top = 42
      Width = 51
      Height = 20
      Caption = 'Month'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 234
      Height = 24
      AutoSize = False
      Caption = #21508'Lean'#32218#20154#22343#26178#29986#33021#32113#35336#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 805
      Top = 35
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 296
      Top = 39
      Width = 65
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      TabOrder = 1
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
        '2029'
        '2030'
        '')
    end
    object CBX2: TComboBox
      Left = 436
      Top = 39
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
    object Edit1: TEdit
      Left = 91
      Top = 39
      Width = 145
      Height = 26
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 3
    end
    object Button2: TButton
      Left = 885
      Top = 35
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX3: TComboBox
      Left = 547
      Top = 39
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
      TabOrder = 5
      Text = 'A'
      Items.Strings = (
        'C'
        'S'
        'A'
        '')
    end
    object CB1: TCheckBox
      Left = 608
      Top = 44
      Width = 193
      Height = 17
      Caption = #20013#25991#32218#21029'DepName CN '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button3: TButton
      Left = 973
      Top = 35
      Width = 97
      Height = 33
      Caption = 'ABC Excel'
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1065
    Height = 442
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39' 192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\' +
        'sql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER'
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 448
    Top = 232
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#38795#24288#26376#29983#29986#29986#37327#32113#35336#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 416
    Top = 200
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B446174655D0D0A5C706172207D0D0A00}
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#HumDataPOH'#39') is not null'
      ' begin   drop table #HumDataPOH end'
      
        '  select HumData.*,BDepartment.ID_HRM as dv_ma into #HumDataPOH ' +
        'from ( '
      
        '  select HumData.HMonth as qt_ngay,BDepartment.sumline,Sum(DirRe' +
        'lWorkers) as dv_dilam,Sum(TTLCHC) as TTLCHC,Sum(TTTCHC) as TTTCH' +
        'C  from  ( '
      
        '  select SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepa' +
        'rtment.sumline,BDepartment.GXLB'
      '  from SCBBS'
      '  left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      '  left join BDepartment on BDepartment.ID=SCBB.DepNo'
      
        '  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))' +
        ' between '#39'2017/08/01'#39' and '#39'2017/08/31'#39'  '
      '        and SCBB.GSBH='#39'VA12'#39' '
      
        '  Group by SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDe' +
        'partment.sumline,BDepartment.GXLB ) BDepartment'
      '  left join ('
      
        '  SELECT Convert(varchar,QT_NGAY,111) as HMonth,ST_GIOQUETTHE.dv' +
        '_ma,'
      
        '  DirRelWorkers=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 e' +
        'nd),'
      
        '  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(ST_' +
        'NHANVIEN.CV_MA,1)='#39'A'#39' AND (CA_MA='#39'Ca HC'#39' or CA_MA='#39'CA 2'#39' or CA_M' +
        'A='#39'CA 3'#39'or CA_MA='#39'CA 4'#39') THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        '  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(ST_NHAN' +
        'VIEN.CV_MA,1)='#39'A'#39' AND (CA_MA='#39'Ca HC'#39' or CA_MA='#39'CA 2'#39' or CA_MA='#39'C' +
        'A 3'#39' or CA_MA='#39'CA 4'#39') THEN CC_GIOTANGCA ELSE 0 END) '
      '  FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanvien st_nhanvien ' +
        'on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC ' +
        'on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI on ST_' +
        'GIOQUETTHE.DV_MA = ST_DONVI.DV_MA  '
      
        '  where QT_NGAY>='#39'2017/08/01'#39' and QT_NGAY<='#39'2017/08/31'#39'  and X_M' +
        'A_ in ('#39'A1'#39','#39'A2'#39','#39'A1A2'#39') and ST_CONGVIEC.CV_MA like '#39'A%'#39
      
        '  group by QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData on  HumData.dv_' +
        'ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE' +
        '_DEFAULT '
      '  where  HumData.dv_ma is not null '
      '  Group by  HumData.HMonth,BDepartment.sumline ) HumData'
      
        '  left join BDepartment on BDepartment.sumline=HumData.sumline a' +
        'nd BDepartment.GXLB='#39'A'#39
      ''
      ''
      'if object_id('#39'tempdb..#MonSCBBSPOH'#39') is not null  '
      '   begin   drop table #MonSCBBSPOH end   '
      'select * into #MonSCBBSPOH '
      'from ('
      ''
      '       select  BDepartment.DepName'
      
        '               ,SCBBS.GXLB,'#39'5.Actual'#39' as SB,sum(SCBBS.Qty) as Qt' +
        'y,datepart(day, SCBB.SCDate) as NDay  '
      '       from SCBBS '
      '       left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39
      '              and BDepartment.DepName like '#39'%%'#39
      '              and SCBBS.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39' and BDepartment.YN=1 '
      
        '       group by BDepartment.DepName,SCBBS.GXLB,datepart(day, SCB' +
        'B.SCDate)  '
      '      union  all '
      '      select BDepartment.DepName'
      
        '               ,SCBBS.GXLB,'#39'5.Actual'#39' as SB,isnull(sum(SCBBS.Qty' +
        '),0) as Qty,32 as NDay  '
      '      from SCBBS '
      '      left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '      left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '      left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,1' +
        '11)) between '
      '             '#39'2017/08/01'#39'and '#39'2017/08/31'#39
      '             and BDepartment.DepName like '#39'%%'#39
      '             and SCBBS.GXLB='#39'A'#39' '
      '             and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1  '
      '      group by BDepartment.DepName ,SCBBS.GXLB'
      '                 '
      '       union all'
      
        '       select DepName,GXLB,'#39'1.Hours'#39' as SB,Avg(SCRL.SCGS) as Qty' +
        ',datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '       union all'
      
        '       select DepName,GXLB,'#39'1.Hours'#39' as SB,Sum(SCRL.SCGS) as Qty' +
        ',32 as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.' +
        'SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCR' +
        'L.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB       '
      '       --'#24288#21209#24037#26178'                  '
      '       union all'
      
        '       select DepName,GXLB,'#39'2.PrdHours'#39' as SB,Avg(SCRL.SCGS) as ' +
        'Qty,datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '       union all'
      
        '       select DepName,GXLB,'#39'2.PrdHours'#39' as SB,Sum(SCRL.SCGS) as ' +
        'Qty,32 as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate) and SCRL.' +
        'SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCR' +
        'L.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB        '
      '       --'#21047#21345#20154#25976
      '       Union all'
      
        '       select  BDepartment.DepName,BDepartment.GXLB,'#39'3.Workers'#39' ' +
        'as SB,Sum(#HumDataPOH.dv_dilam) as Qty,datepart(day, SCBB.SCDate' +
        ') as NDay'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '       left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABA' +
        'SE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #Hu' +
        'mDataPOH.qt_ngay=SCBB.SCDate'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '             '#39'2017/08/01'#39'and '#39'2017/08/31'#39' '
      '             and BDepartment.DepName like '#39'%%'#39
      '             and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       group by BDepartment.DepName,BDepartment.GXLB,datepart(da' +
        'y, SCBB.SCDate)'
      '       union all'
      
        '       select  BDepartment.DepName,BDepartment.GXLB,'#39'3.Workers'#39' ' +
        'as SB,Avg(#HumDataPOH.dv_dilam) as Qty,32 as NDay'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '       left join #HumDataPOH on #HumDataPOH.dv_ma COLLATE DATABA' +
        'SE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #Hu' +
        'mDataPOH.qt_ngay=SCBB.SCDate'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between'
      '             '#39'2017/08/01'#39'and '#39'2017/08/31'#39' '
      '             and BDepartment.DepName like '#39'%%'#39
      '             and BDepartment.GXLB='#39'A'#39' '
      '             and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      '       group by BDepartment.DepName,BDepartment.GXLB      '
      '       --'#24288#21209#20154#25976'                  '
      '       union all'
      
        '       select DepName,GXLB,'#39'4.PrdWorkers'#39' as SB,Avg(RSCQ.CQQty) ' +
        'as Qty,datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=' +
        'SCBB.Depno'
      '       Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '       union all'
      
        '       select DepName,GXLB,'#39'4.PrdWorkers'#39' as SB,Sum(RSCQ.CQQty) ' +
        'as Qty,32 as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/08/01'#39'and '#39'2017/08/31'#39'       '
      '              and BDepartment.DepName like '#39'%%'#39
      '              and BDepartment.GXLB='#39'A'#39' '
      '              and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1 '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join RSCQ on RSCQ.RSDate=SCBB.SCDate and RSCQ.DepNo=' +
        'SCBB.Depno'
      '       Group by DepName,GXLB   '
      '       --     '
      '       '
      '     ) SCBBS '
      'order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay '
      ''
      'alter table #MonSCBBSPOH '
      'alter column DepName varchar(20) null'
      'alter table #MonSCBBSPOH '
      'alter column SB varchar(15) null'
      'alter table #MonSCBBSPOH '
      'alter column Qty float null'
      ''
      ''
      'insert into #MonSCBBSPOH '
      
        'Select A1.DepName,A1.GXLB,'#39'6.PPH'#39' as SB,Round(A1.Qty/A2.Qty/A3.Q' +
        'ty,4) as Qty,A1.NDay'
      
        ' from (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where SB=' +
        #39'5.Actual'#39' ) A1'
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where' +
        ' SB='#39'1.Hours'#39' and IsNull(Qty,0)>0 ) A2 on A1.DepName=A2.Depname ' +
        'and A1.GXLB=A2.GXLB and A1.NDay=A2.NDay'
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBSPOH  where' +
        ' SB='#39'3.Workers'#39' and IsNull(Qty,0)>0 ) A3 on A1.DepName=A3.Depnam' +
        'e and A1.GXLB=A3.GXLB and A1.NDay=A3.NDay'
      ''
      'select SCBBS.DepName COLLATE DATABASE_DEFAULT as DepName  '
      '      ,SCBBS.GXLB COLLATE DATABASE_DEFAULT as GXLB  '
      '      ,SCBBS.SB  COLLATE DATABASE_DEFAULT as SB'
      
        '      ,convert(varchar,sum(case  when NDay='#39'1'#39' then Qty  end)) a' +
        's '#39'1'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'2'#39' then Qty  end)) a' +
        's '#39'2'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'3'#39' then Qty  end)) a' +
        's '#39'3'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'4'#39' then Qty  end)) a' +
        's '#39'4'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'5'#39' then Qty  end)) a' +
        's '#39'5'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'6'#39' then Qty  end)) a' +
        's '#39'6'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'7'#39' then Qty  end)) a' +
        's '#39'7'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'8'#39' then Qty  end)) a' +
        's '#39'8'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'9'#39' then Qty  end)) a' +
        's '#39'9'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'10'#39' then Qty  end)) ' +
        'as '#39'10'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'11'#39' then Qty  end)) ' +
        'as '#39'11'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'12'#39' then Qty  end)) ' +
        'as '#39'12'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'13'#39' then Qty  end)) ' +
        'as '#39'13'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'14'#39' then Qty  end)) ' +
        'as '#39'14'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'15'#39' then Qty  end)) ' +
        'as '#39'15'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'16'#39' then Qty  end)) ' +
        'as '#39'16'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'17'#39' then Qty  end)) ' +
        'as '#39'17'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'18'#39' then Qty  end)) ' +
        'as '#39'18'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'19'#39' then Qty  end)) ' +
        'as '#39'19'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'20'#39' then Qty  end)) ' +
        'as '#39'20'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'21'#39' then Qty  end)) ' +
        'as '#39'21'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'22'#39' then Qty  end)) ' +
        'as '#39'22'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'23'#39' then Qty  end)) ' +
        'as '#39'23'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'24'#39' then Qty  end)) ' +
        'as '#39'24'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'25'#39' then Qty  end)) ' +
        'as '#39'25'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'26'#39' then Qty  end)) ' +
        'as '#39'26'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'27'#39' then Qty  end)) ' +
        'as '#39'27'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'28'#39' then Qty  end)) ' +
        'as '#39'28'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'29'#39' then Qty  end)) ' +
        'as '#39'29'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'30'#39' then Qty  end)) ' +
        'as '#39'30'#39
      
        '      ,convert(varchar,sum(case  when NDay='#39'31'#39' then Qty  end)) ' +
        'as '#39'31'#39
      'from  (select #MonSCBBSPOH.* from #MonSCBBSPOH  '
      '       ) SCBBS '
      'group by   SCBBS.DepName,SCBBS.GXLB ,SCBBS.SB  '
      'union all'
      'select SKU.DepName ,SKU.GXLB,SKU.SB '
      '      ,Max(case  when NDay='#39'1'#39
      '       then Qty  end) as '#39'1'#39' '
      '      ,max(case  when NDay='#39'2'#39
      '       then Qty  end) as '#39'2'#39
      '      ,max(case  when NDay='#39'3'#39
      '       then Qty  end) as '#39'3'#39
      '      ,max(case  when NDay='#39'4'#39
      '       then Qty  end) as '#39'4'#39
      '      ,max(case  when NDay='#39'5'#39
      '       then Qty  end) as '#39'5'#39
      '      ,max(case  when NDay='#39'6'#39
      '       then Qty  end) as '#39'6'#39
      '      ,max(case  when NDay='#39'7'#39
      '       then Qty  end) as '#39'7'#39' '
      '      ,max(case  when NDay='#39'8'#39
      '       then Qty  end) as '#39'8'#39' '
      '      ,max(case  when NDay='#39'9'#39
      '       then Qty  end) as '#39'9'#39' '
      '      ,max(case  when NDay='#39'10'#39
      '       then Qty  end) as '#39'10'#39' '
      '      ,max(case  when NDay='#39'11'#39
      '       then Qty  end) as '#39'11'#39' '
      '      ,max(case  when NDay='#39'12'#39
      '       then Qty  end) as '#39'12'#39' '
      '      ,max(case  when NDay='#39'13'#39
      '       then Qty  end) as '#39'13'#39
      '      ,max(case  when NDay='#39'14'#39
      '       then Qty  end) as '#39'14'#39' '
      '      ,max(case  when NDay='#39'15'#39
      '       then Qty  end) as '#39'15'#39' '
      #9'  ,max(case  when NDay='#39'16'#39
      '       then Qty  end) as '#39'16'#39'  '
      '      ,max(case  when NDay='#39'17'#39
      '       then Qty  end) as '#39'17'#39' '
      '      ,max(case  when NDay='#39'18'#39
      '       then Qty  end) as '#39'18'#39' '
      '      ,max(case  when NDay='#39'19'#39
      '       then Qty  end) as '#39'19'#39' '
      '      ,max(case  when NDay='#39'20'#39
      '       then Qty  end) as '#39'20'#39'     '
      '      ,max(case  when NDay='#39'21'#39
      '       then Qty  end) as '#39'21'#39' '
      '      ,max(case  when NDay='#39'22'#39
      '       then Qty  end) as '#39'22'#39'  '
      '      ,max(case  when NDay='#39'23'#39
      '       then Qty  end) as '#39'23'#39' '
      '      ,max(case  when NDay='#39'24'#39
      '       then Qty  end) as '#39'24'#39' '
      '      ,max(case  when NDay='#39'25'#39
      '       then Qty  end) as '#39'25'#39' '
      '      ,max(case  when NDay='#39'26'#39
      '       then Qty  end) as '#39'26'#39' '
      '      ,max(case  when NDay='#39'27'#39
      '       then Qty  end) as '#39'27'#39' '
      '      ,max(case  when NDay='#39'28'#39
      '       then Qty  end) as '#39'28'#39'  '
      '      ,max(case  when NDay='#39'29'#39
      '       then Qty  end) as '#39'29'#39' '
      '      ,max(case  when NDay='#39'30'#39
      '       then Qty  end) as '#39'30'#39
      '      ,max(case  when NDay='#39'31'#39
      '       then Qty  end) as '#39'31'#39'       '
      '      '
      'from ('
      'select BDepartment.DepName,BDepartment.GXLB,'#39'0.SKU'#39' as SB '
      
        '      ,cast((select Article + '#39','#39'from DDZL,SCBBS  where SCBBS.Pr' +
        'oNo=SCBB.ProNo and DDZL.DDBH=SCBBS.SCBH and isnull(DDZL.Article,' +
        #39#39') <> '#39#39' Group by Article for XML Path ('#39#39')) as varchar(max)) a' +
        's Qty'
      '      ,datepart(day, SCBB.SCDate)  as NDay'
      'from SCBB'
      'left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween'
      '      '#39'2017/08/01'#39'and '#39'2017/08/31'#39' '
      '      and BDepartment.DepName like '#39'%%'#39
      '      and BDepartment.GXLB='#39'A'#39
      '      and BDepartment.GSBH='#39'VA12'#39'  and BDepartment.YN=1   ) SKU'
      'group by   SKU.DepName,SKU.GXLB ,SKU.SB'
      'order by   SCBBS.GXLB ,SCBBS.DepName ,SCBBS.SB'
      ''
      ' ')
    Left = 448
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 480
    Top = 200
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 512
    Top = 200
  end
end
