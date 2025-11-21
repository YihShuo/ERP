object MonthOutPutPOH: TMonthOutPutPOH
  Left = 242
  Top = 214
  Width = 949
  Height = 484
  Caption = 'MonthOutPutPOH'
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
    Width = 941
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 240
      Top = 50
      Width = 35
      Height = 18
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 288
      Top = 51
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 60
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
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 241
      Height = 25
      AutoSize = False
      Caption = #21508#21934#20301#20154#22343#26178#29986#33021#32113#35336#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 44
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
    object Label4: TLabel
      Left = 464
      Top = 40
      Width = 41
      Height = 18
      AutoSize = False
      Caption = #24037#27573':'
    end
    object Label6: TLabel
      Left = 464
      Top = 64
      Width = 43
      Height = 18
      Caption = 'GXLB'
    end
    object Button1: TButton
      Left = 584
      Top = 43
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 280
      Top = 48
      Width = 65
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 13
      ParentFont = False
      TabOrder = 1
      Text = '2019'
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
        '2030')
    end
    object CBX2: TComboBox
      Left = 392
      Top = 48
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
      Left = 88
      Top = 49
      Width = 145
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button2: TButton
      Left = 664
      Top = 43
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX3: TComboBox
      Left = 520
      Top = 48
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
    object CKBox1: TCheckBox
      Left = 744
      Top = 56
      Width = 169
      Height = 17
      Caption = 'Cap nhap dao excel'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CKBox2: TCheckBox
      Left = 461
      Top = 12
      Width = 148
      Height = 17
      Caption = 'sumline workers '
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 270
      Top = 12
      Width = 177
      Height = 17
      Caption = 'produced('#21482#35336#29983#29986#26085')'
      TabOrder = 8
    end
    object RadioGroup1: TRadioGroup
      Left = 605
      Top = -1
      Width = 204
      Height = 42
      TabOrder = 9
    end
    object RB1: TRadioButton
      Left = 616
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Human'
      TabOrder = 10
    end
    object RB2: TRadioButton
      Left = 704
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Production'
      Checked = True
      TabOrder = 11
      TabStop = True
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 941
    Height = 364
    Align = alClient
    DataSource = DataSource1
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
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
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
      'if object_id('#39'tempdb..#HumData'#39') is not null'
      ' begin   drop table #HumData end'
      ' SELECT qt_ngay,ST_GIOQUETTHE.dv_ma,'
      
        '        dv_dilam=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 ' +
        'end) into #HumData'
      ' FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanvien st_nhanvien o' +
        'n st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC o' +
        'n ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI on ST_G' +
        'IOQUETTHE.DV_MA = ST_DONVI.DV_MA '
      
        ' where qt_ngay between CONVERT(smalldatetime, '#39'2017/02/23'#39', 21) ' +
        'and CONVERT(smalldatetime, '#39'2017/02/24'#39', 21) and X_MA_ in ('#39'A1'#39',' +
        #39'A2'#39','#39'A1A2'#39') and ST_CONGVIEC.CV_MA like '#39'A%'#39
      ' group by qt_ngay,ST_GIOQUETTHE.dv_ma'
      '  '
      ''
      ''
      'if object_id('#39'tempdb..#MonSCBBS'#39') is not null  '
      '   begin   drop table #MonSCBBS end   '
      'select * into #MonSCBBS '
      'from ('
      ''
      '       select  BDepartment.DepName'
      
        '               ,SCBBS.GXLB,'#39'3.Actual'#39' as SB,sum(SCBBS.Qty) as Qt' +
        'y,datepart(day, SCBB.SCDate) as NDay  '
      '       from SCBBS '
      '       left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and SCBBS.GXLB='#39'S'#39
      
        '       group by BDepartment.DepName,SCBBS.GXLB,datepart(day, SCB' +
        'B.SCDate)  '
      '      union  all '
      '      select BDepartment.DepName'
      
        '               ,SCBBS.GXLB,'#39'3.Actual'#39' as SB,isnull(sum(SCBBS.Qty' +
        '),0) as Qty,32 as NDay  '
      '      from SCBBS '
      '      left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '      left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '      left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      
        '      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,1' +
        '11)) between '
      '             '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '             and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and SCBBS.GXLB='#39'S'#39
      '      group by BDepartment.DepName ,SCBBS.GXLB'
      '      union  all           '
      '      select BDepartment.DepName'
      
        '              ,BDepartment.GXLB,'#39'2.Plan'#39' as SB,sum(isnull(SCBZCL' +
        '.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  '
      '      from SCBZCL '
      '      left join BDepartment on BDepartment.ID=SCBZCL.DepNO '
      
        '      where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate' +
        ',111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and BDepartment.GXLB='#39'S'#39
      '      group by  BDepartment.DepName'
      '                ,BDepartment.GXLB,datepart(day, SCBZCL.BZDate)'
      '      union all '
      '      select BDepartment.DepName'
      
        '             ,BDepartment.GXLB,'#39'2.Plan'#39' as SB,isnull(sum(SCBZCL.' +
        'Qty),0) as Qty ,32 as NDay  '
      '       from SCBZCL '
      '       left join BDepartment on BDepartment.ID=SCBZCL.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDat' +
        'e,111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and BDepartment.GXLB='#39'S'#39
      
        '              and  exists(select convert(varchar,SCBB.SCDate,111' +
        ') as NowDay from  SCBB '
      
        '                            left join BDepartment on BDepartment' +
        '.ID=SCBB.DepNO '
      
        '                          where convert(smalldatetime,convert(va' +
        'rchar,SCBB.SCDate,111)) between '
      '                                '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      
        '                                and BDepartment.DepName like '#39'%A' +
        '1_LEAN1-%'#39
      
        '                                and convert(varchar,SCBB.SCDate,' +
        '111)=convert(varchar,SCBZCL.BZDate,111) )'
      '       group by BDepartment.DepName ,BDepartment.GXLB    '
      '       --'#24037#26178'                  '
      '       union all'
      
        '       select DepName,GXLB,'#39'4.Hours'#39' as SB,Sum(SCRL.SCGS) as Qty' +
        ',datepart(day, SCBB.SCDate)  as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39'       '
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and BDepartment.GXLB='#39'S'#39' '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB,datepart(day, SCBB.SCDate)'
      '       union all'
      
        '       select DepName,GXLB,'#39'4.Hours'#39' as SB,Sum(SCRL.SCGS) as Qty' +
        ',32 as NDay   from ('
      
        '       select BDepartment.DepName,BDepartment.ID as DepNo,BDepar' +
        'tment.GXLB'
      '               ,SCBB.SCDate'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39'       '
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and BDepartment.GXLB='#39'S'#39' '
      
        '       Group by  BDepartment.ID,BDepartment.DepName,BDepartment.' +
        'GXLB,SCBB.SCDate  ) SCBB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      '       Group by DepName,GXLB       '
      '       --'#21047#21345#20154#25976
      '       Union all'
      
        '       select  BDepartment.DepName,BDepartment.GXLB,'#39'5.Workers'#39' ' +
        'as SB,Sum(#HumData.dv_dilam) as Qty,datepart(day, SCBB.SCDate) a' +
        's NDay'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '       left join #HumData on #HumData.dv_ma COLLATE DATABASE_DEF' +
        'AULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumData.' +
        'qt_ngay=SCBB.SCDate'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '             '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '             and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '             and BDepartment.GXLB='#39'S'#39
      
        '       group by BDepartment.DepName,BDepartment.GXLB,datepart(da' +
        'y, SCBB.SCDate)'
      '       union all'
      
        '       select  BDepartment.DepName,BDepartment.GXLB,'#39'5.Workers'#39' ' +
        'as SB,Avg(#HumData.dv_dilam) as Qty,32 as NDay'
      '       from SCBB'
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO'
      
        '       left join #HumData on #HumData.dv_ma COLLATE DATABASE_DEF' +
        'AULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT  and #HumData.' +
        'qt_ngay=SCBB.SCDate'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between'
      '             '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '             and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '             and BDepartment.GXLB='#39'S'#39
      '       group by BDepartment.DepName,BDepartment.GXLB      '
      '       --                 '
      '       union all'
      '       '
      
        '       select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qt' +
        'y,T1.NDay'
      
        '       from(select  Bdepartment.DepName as DepName,SCBBS.GXLB,'#39'1' +
        '.Sdr'#39' as SB '
      
        '               ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, ' +
        'SCBB.SCDate) as NDay, SCRL.SCGS as Hours  '
      '       from SCBBS '
      '       left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      '       left join DDZL on SCBBS.SCBH=DDZL.DDBH'
      
        '       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXC' +
        'L.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and SCBBS.GXLB='#39'S'#39
      
        '       group by Bdepartment.DepName,SCBBS.GXLB,datepart(day, SCB' +
        'B.SCDate),SCRL.SCGS )T1 '
      '       group by  T1.DepName,T1.GXLB,T1.SB,T1.NDay  '
      '       '
      '       union all'
      
        '       select T2.DepName,T2.GXLB,T2.SB,sum(T2.Qty)as Qty, 32 as ' +
        'NDay'
      
        '       from(select T1.DepName,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)' +
        'as Qty,T1.NDay'
      
        '       from(select  Bdepartment.DepName as DepName,SCBBS.GXLB,'#39'1' +
        '.Sdr'#39' as SB '
      
        '               ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, ' +
        'SCBB.SCDate) as NDay,SCRL.SCGS as Hours  '
      '       from SCBBS '
      '       left join SCBB on SCBB.ProNo=SCBBS.ProNO '
      '       left join BDepartment on BDepartment.ID=SCBB.DepNO '
      '       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB '
      '       left join DDZL on SCBBS.SCBH=DDZL.DDBH'
      
        '       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXC' +
        'L.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB'
      
        '       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.S' +
        'CMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL' +
        '.DepNo=SCBB.Depno'
      
        '       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,' +
        '111)) between '
      '              '#39'2017/02/23'#39'and '#39'2017/02/24'#39
      '              and BDepartment.DepName like '#39'%A1_LEAN1-%'#39
      '              and SCBBS.GXLB='#39'S'#39
      
        '       group by Bdepartment.DepName,SCBBS.GXLB,datepart(day, SCB' +
        'B.SCDate),SCRL.SCGS )T1 '
      '       group by  T1.DepName,T1.GXLB,T1.SB,T1.NDay  )T2  '
      '       group by T2.DepName,T2.GXLB,T2.SB'
      ''
      '     ) SCBBS '
      'order by SCBBS.DepName,SCBBS.GXLB,SCBBS.NDay '
      ''
      'alter table #MonSCBBS '
      'alter column DepName varchar(20) null'
      'alter table #MonSCBBS '
      'alter column SB varchar(15) null'
      ''
      'insert into #MonSCBBS '
      
        'Select A1.DepName,A1.GXLB,'#39'6.OutHour'#39' as SB,A1.Qty/A2.Qty as Qty' +
        ',A1.NDay'
      
        ' from (select DepName,GXLB,Qty,NDay from #MonSCBBS  where SB='#39'3.' +
        'Actual'#39' ) A1'
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBS  where SB' +
        '='#39'4.Hours'#39' ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB and' +
        ' A1.NDay=A2.NDay'
      ''
      'insert into #MonSCBBS '
      
        'Select A1.DepName,A1.GXLB,'#39'7.WOutHour'#39' as SB,Round(A1.Qty/A2.Qty' +
        ',4) as Qty,A1.NDay'
      
        ' from (select DepName,GXLB,Qty,NDay from #MonSCBBS  where SB='#39'6.' +
        'OutHour'#39' ) A1'
      
        'left join (select DepName,GXLB,Qty,NDay from #MonSCBBS  where SB' +
        '='#39'5.Workers'#39' ) A2 on A1.DepName=A2.Depname and A1.GXLB=A2.GXLB a' +
        'nd A1.NDay=A2.NDay'
      ''
      'insert into #MonSCBBS '
      
        'select '#39'ZTotal'#39' as DepName,#MonSCBBS.GXLB,#MonSCBBS.SB,sum(Qty) ' +
        'as Qty,#MonSCBBS.NDay '
      'from #MonSCBBS where (SB<>'#39'4.Hours'#39' and SB<>'#39'7.WOutHour'#39' )'
      'group by #MonSCBBS.GXLB,#MonSCBBS.SB,#MonSCBBS.NDay'
      'insert into #MonSCBBS '
      
        'select '#39'ZTotal'#39' as DepName,#MonSCBBS.GXLB,#MonSCBBS.SB,Avg(Qty) ' +
        'as Qty,#MonSCBBS.NDay '
      'from #MonSCBBS where (SB='#39'4.Hours'#39' or SB='#39'7.WOutHour'#39' )'
      'group by #MonSCBBS.GXLB,#MonSCBBS.SB,#MonSCBBS.NDay'
      '--select * from #MonSCBBS '
      ''
      '--select * from #MonSCBBS '
      ''
      'select SCBBS.DepName,SCBBS.GXLB,SCBBS.SB  '
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
      ',sum(case  when NDay='#39'32'#39
      ' then Qty  else 0 end) as '#39'32'#39
      'from  (select #MonSCBBS.* from #MonSCBBS  '
      '       ) SCBBS '
      'group by   SCBBS.GXLB,SCBBS.DepName ,SCBBS.SB '
      'order by   SCBBS.GXLB ,SCBBS.DepName ,SCBBS.SB'
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
