object HRMDepartmentAttend: THRMDepartmentAttend
  Left = 360
  Top = 268
  Width = 1322
  Height = 590
  Caption = 'HRMDepartmentAttend'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 440
    Width = 1306
    Height = 8
    Cursor = crVSplit
    Align = alBottom
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1306
    Height = 57
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
      Top = 4
      Width = 161
      Height = 20
      AutoSize = False
      Caption = #20154#20107#21508#21934#20301#27599#26085#20986#21220
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 8
      Top = 30
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 112
      Top = 30
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
    object Label3: TLabel
      Left = 210
      Top = 29
      Width = 26
      Height = 16
      Caption = 'Dep'
    end
    object Button1: TButton
      Left = 387
      Top = 25
      Width = 81
      Height = 25
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 474
      Top = 26
      Width = 81
      Height = 25
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 43
      Top = 26
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
      TabOrder = 2
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
        '2031'
        '2032'
        '2033'
        '2034')
    end
    object CBX2: TComboBox
      Left = 154
      Top = 25
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
      TabOrder = 3
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
    object DonViEdit: TEdit
      Left = 243
      Top = 26
      Width = 121
      Height = 24
      TabOrder = 4
    end
    object CKBox1: TCheckBox
      Left = 568
      Top = 32
      Width = 169
      Height = 17
      Caption = 'Cap nhap dao excel'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1306
    Height = 383
    Align = alClient
    DataSource = DS1
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
    OnCellClick = DBGridEh1CellClick
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 448
    Width = 1306
    Height = 103
    Align = alBottom
    DataSource = DS2
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
    PopupMenu = PopupMenu
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh2CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'NDay'
        Footers = <>
        Title.Caption = #26085#26399'|Day'
      end
      item
        EditButtons = <>
        FieldName = 'X_MA_'
        Footers = <>
        Title.Caption = #24288'|Xuong'
      end
      item
        EditButtons = <>
        FieldName = 'TONGSO'
        Footers = <>
        Title.Caption = #25033#21040#20154#25976'|TONGSO'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAM'
        Footers = <>
        Title.Caption = #21047#21345#20154#25976'|SODILAM'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAM_A'
        Footers = <>
        Title.Caption = #21047#21345#30452#24037'|DILAM_A'
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAM_B'
        Footers = <>
        Title.Caption = #21047#21345#38291#24037'|DILAM_B'
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAMHC'
        Footers = <>
        Title.Caption = #29677#26178#39006#22411'|DILAMHC'
        Title.Color = clMoneyGreen
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAMCA2'
        Footers = <>
        Title.Caption = #29677#26178#39006#22411'|LAMCA2'
        Title.Color = clMoneyGreen
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAMCA3'
        Footers = <>
        Title.Caption = #29677#26178#39006#22411'|LAMCA3'
        Title.Color = clMoneyGreen
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAMCA4'
        Footers = <>
        Title.Caption = #29677#26178#39006#22411'|LAMCA4'
        Title.Color = clMoneyGreen
      end
      item
        EditButtons = <>
        FieldName = 'TONGSODILAMCA_Nghi'
        Footers = <>
        Title.Caption = #20241#20551'|Sua Nghi'
        Title.Color = clSkyBlue
      end
      item
        EditButtons = <>
        FieldName = 'P'
        Footers = <>
        Title.Caption = #20241#20551'|P'
        Title.Color = clSkyBlue
      end
      item
        EditButtons = <>
        FieldName = 'TS'
        Footers = <>
        Title.Caption = #20241#20551'|TS'
        Title.Color = clSkyBlue
      end
      item
        EditButtons = <>
        FieldName = 'KHAC'
        Footers = <>
        Title.Caption = #20241#20551'|KHAC'
        Title.Color = clSkyBlue
      end
      item
        EditButtons = <>
        FieldName = 'VE15H30NUOICON'
        Footers = <>
        Title.Caption = #23381#23142#25552#26089#19979#29677'|VE15H30NUOICON'
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'VE15H30MANGTHAI'
        Footers = <>
        Title.Caption = #23381#23142#25552#26089#19979#29677'|VE15H30MANGTHAI'
        Width = 82
      end>
  end
  object ExeQuery: TQuery
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
    Left = 192
    Top = 136
  end
  object HRMQry: TQuery
    AfterOpen = HRMQryAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on'
      'select SCBZCL.BMonth as '#39'HMonth'#39',SCBZCL.BCount as '#39'HDays'#39','
      
        '       PlanProd.StdQty,SCBB.Qty as '#39'PodQty'#39',(ProdDDZL.StdWorks/S' +
        'CBZCL.BCount) as '#39'DirStdWorks'#39','
      
        '       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(H' +
        'umData.DirRelComWorkers/SCBZCL.BCount) as DirRelComWorkers ,(Hum' +
        'Data.TTLCHC+HumData.TTTCHC) as DirRelHours,'
      
        '       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.B' +
        'Count) as '#39'DirStdHours'#39' '
      'from (       '
      
        'select Convert(varchar,month(BZDate)) as BMonth,Count (distinct ' +
        'BZDate) as BCount '
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.ProYN=1 and BZDate' +
        '>='#39'2017-02-01'#39' and BZDate<='#39'2017-02-28'#39' and BZDate<='#39'2017/03/01'#39 +
        ' and Qty>0'
      'Group by month(BZDate) ) SCBZCL'
      'left join ( '
      'select month(SCBB.SCDate) as PMonth,Sum(Qty) as Qty '
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2017-02-01'#39' and '#39'2017-02-28'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      
        'Group by month(SCBB.SCDate) ) SCBB  on SCBB.PMonth=SCBZCL.BMonth' +
        ' '
      'left join ('
      
        'select Convert(varchar,month(BZDate)) as BMonth,Sum(Qty) as StdQ' +
        'ty'
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and BDepa' +
        'rtment.ProYN=1 and BZDate>='#39'2017-02-01'#39' and BZDate<='#39'2017-02-28'#39 +
        ' and BZDate<='#39'2017/03/01'#39' and Qty>0'
      
        'Group by month(BZDate) ) PlanProd  on PlanProd.BMonth=SCBZCL.BMo' +
        'nth '
      'left join ('
      
        'select month(ProdDDZL.SCDate) as PMonth,Sum(SCXXCL.BZRS) as StdW' +
        'orks from ('
      
        'select SCBB.SCDate,SCBB.DepNO,Max(SCBBS.SCBH) as DDBH,Sum(Qty) a' +
        's Qty'
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2017-02-01'#39' and '#39'2017-02-28'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      'Group by SCBB.SCDate,SCBB.DepNO ) ProdDDZL'
      'Left join DDZL on DDZL.DDBH=ProdDDZL.DDBH'
      
        'Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHa' +
        'o=DDZL.SheHao and  SCXXCL.GXLB in ('#39'A'#39','#39'C'#39','#39'S'#39') and BZLB=3'
      '--where ProdDDZL.DDBH='#39'Y1612-1057'#39
      
        'Group by month(ProdDDZL.SCDate) ) ProdDDZL on  ProdDDZL.PMonth=S' +
        'CBZCL.BMonth '
      'left join ('
      
        '  select Month(convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONT' +
        'H+'#39'/'#39'+SCRL.SCDay)) as PMonth,Sum(SCGS)/Count(BDepartment.ID) as ' +
        'DayHours'
      '  from SCRL'
      
        '  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL' +
        '.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) and SCBZCL.DepNO=SCRL.D' +
        'epNo'
      '  left join BDepartment on BDepartment.ID=SCRL.DepNo'
      
        '  where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and con' +
        'vert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) ' +
        ' between '#39'2017-02-01'#39' and '#39'2017-02-28'#39' '
      
        '  Group by Month(convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMO' +
        'NTH+'#39'/'#39'+SCRL.SCDay))'
      ') SCRL on SCRL.PMonth=SCBZCL.BMonth '
      'Left join ( '
      '  SELECT Convert(varchar,month(QT_NGAY)) as HMonth,'
      
        '  DirRelWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND L' +
        'EFT(ST_CONGVIEC.CV_MA,1)='#39'A'#39' and X_MA_ in ('#39'A1'#39','#39'A2'#39') THEN 1 ELS' +
        'E 0 END),'
      
        '  DirRelComWorkers=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AN' +
        'D LEFT(ST_CONGVIEC.CV_MA,1)='#39'A'#39' and X_MA_ in ('#39'A1A2'#39') THEN 1 ELS' +
        'E 0 END),'
      
        '  TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND LEFT(ST_' +
        'NHANVIEN.CV_MA,1)='#39'A'#39' AND (CA_MA='#39'Ca HC'#39' or CA_MA='#39'CA 2'#39' or CA_M' +
        'A='#39'CA 3'#39'or CA_MA='#39'CA 4'#39') THEN CC_GIOBINHTHUONG ELSE 0 END) ,'
      
        '  TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND LEFT(ST_NHAN' +
        'VIEN.CV_MA,1)='#39'A'#39' AND (CA_MA='#39'Ca HC'#39' or CA_MA='#39'CA 2'#39' or CA_MA='#39'C' +
        'A 3'#39' or CA_MA='#39'CA 4'#39') THEN CC_GIOTANGCA ELSE 0 END)'
      '  FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanvien st_nhanvien ' +
        'on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC ' +
        'on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI on ST_' +
        'NHANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 '
      
        '  where QT_NGAY>='#39'2017-02-01'#39' and QT_NGAY<='#39'2017-02-28'#39'  and X_M' +
        'A_ like '#39'A%'#39' and ST_CONGVIEC.CV_MA like '#39'A%'#39
      '  group by month(QT_NGAY)'
      
        ' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL' +
        '.BMonth COLLATE DATABASE_DEFAULT'
      '')
    Left = 160
    Top = 136
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 162
    Top = 168
  end
  object HRMDetQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on'
      ''
      'SELECT'
      ' '#39'2017/02/01'#39' as NDay, '
      ' ST_DONVI.X_MA_,'
      ' TONGSO = COUNT(ST_NHANVIEN.NV_MA),'
      
        ' TONGSODILAM = SUM(CASE WHEN (CC_GIOBINHTHUONG > 0) or ( ST_GIOQ' +
        'UETTHE.NP_Ma is null AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0) THE' +
        'N 1 ELSE 0 END),'
      
        ' TONGSODILAM_A = SUM(CASE WHEN ((CC_GIOBINHTHUONG > 0) or ( ST_G' +
        'IOQUETTHE.NP_Ma is null AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0))' +
        ' and LEFT(ST_NHANVIEN.CV_MA,1)='#39'A'#39'  THEN 1 ELSE 0 END),'
      
        ' TONGSODILAM_B = SUM(CASE WHEN ((CC_GIOBINHTHUONG > 0) or ( ST_G' +
        'IOQUETTHE.NP_Ma is null AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0))' +
        ' and LEFT(ST_NHANVIEN.CV_MA,1)='#39'B'#39'  THEN 1 ELSE 0 END),'
      
        ' TONGSODILAMHC = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= '#39'CA HC'#39' AND ' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN  1 ELSE 0 END),'
      
        ' TONGSODILAMCA2 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= '#39'CA 2'#39' AND ' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),'
      
        ' TONGSODILAMCA3 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= '#39'CA 3'#39' AND ' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),'
      
        ' TONGSODILAMCA4 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= '#39'CA 4'#39' AND ' +
        'ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),'
      
        ' TONGSODILAMCA_Nghi = SUM( CASE WHEN ST_GIOQUETTHE.NP_Ma is null' +
        ' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 THEN 1 ELSE 0 END),'
      
        ' P = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma' +
        ' = '#39'P'#39' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 THEN 1 ELSE 0 END)' +
        ','
      
        ' TS = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_M' +
        'a IN ('#39'TS'#39','#39'TS1'#39')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0  THEN ' +
        '1 ELSE 0 END),'
      
        ' KHAC = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP' +
        '_Ma NOT IN ('#39'P'#39','#39'TS'#39','#39'TS1'#39')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG ' +
        '= 0  THEN 1 ELSE 0 END),'
      ' VE15H30NUOICON = COUNT(IT_NUOICONDUOI12THANG.NV_MA ),'
      ' VE15H30MANGTHAI = COUNT(IT_THAITHANGTHU7.NV_MA ),'
      ' NGHIVIEC = 0'
      'FROM HumanDB.[P0104-TYXUAN].dbo.ST_NHANVIEN ST_NHANVIEN'
      
        'INNER JOIN HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI ON ST_NH' +
        'ANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 AND DV_TV <> 1'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE' +
        ' ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE .NV_MA AND QT_NGAY = '#39'2017' +
        '-02-20'#39
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.ST_VAORA ST_VAORA ON ST_GIO' +
        'QUETTHE.NV_MA = ST_VAORA.NV_MA'
      'AND ST_GIOQUETTHE.QT_NGAY = ST_VAORA.QT_NGAY'
      'AND ST_GIOQUETTHE.CA_MA = ST_VAORA.CA_MA'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_NUOICONDUOI12THANG IT_NU' +
        'OICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV' +
        '_MA'
      
        'AND CHONNGAYSANH=1 AND '#39'2017-02-20'#39' BETWEEN CONVERT(DATETIME,NGA' +
        'YSANH,103) AND DATEADD(M,12,CONVERT(DATETIME,NGAYSANH,103))'
      
        'LEFT JOIN HumanDB.[P0104-TYXUAN].dbo.IT_THAITHANGTHU7 IT_THAITHA' +
        'NGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA'
      
        'AND '#39'2017-02-20'#39' BETWEEN ISNULL(BATDAUTU,DATEADD(YY,-100, '#39'2017-' +
        '02-20'#39')) AND ISNULL(IT_THAITHANGTHU7.DENNGAY,DATEADD(YY,-100, '#39'2' +
        '017-02-20'#39'))'
      'WHERE ST_NHANVIEN.NV_Ngayvao <= '#39'2017-02-20'#39
      'AND ST_NHANVIEN.DV_MA NOT IN ('#39'BGD'#39','#39'BGDX'#39')'
      'AND ST_NHANVIEN.DV_MA NOT LIKE '#39'%CG%'#39
      'AND ST_DONVI.X_MA_ = '#39'VP'#39
      'GROUP BY ST_DONVI.X_MA_'
      '')
    Left = 166
    Top = 360
    object HRMDetQryX_MA_: TStringField
      FieldName = 'X_MA_'
      FixedChar = True
      Size = 8
    end
    object HRMDetQryTONGSO: TIntegerField
      FieldName = 'TONGSO'
    end
    object HRMDetQryTONGSODILAM: TIntegerField
      FieldName = 'TONGSODILAM'
    end
    object HRMDetQryTONGSODILAM_A: TIntegerField
      FieldName = 'TONGSODILAM_A'
    end
    object HRMDetQryTONGSODILAM_B: TIntegerField
      FieldName = 'TONGSODILAM_B'
    end
    object HRMDetQryTONGSODILAMHC: TIntegerField
      FieldName = 'TONGSODILAMHC'
    end
    object HRMDetQryTONGSODILAMCA2: TIntegerField
      FieldName = 'TONGSODILAMCA2'
    end
    object HRMDetQryTONGSODILAMCA3: TIntegerField
      FieldName = 'TONGSODILAMCA3'
    end
    object HRMDetQryTONGSODILAMCA4: TIntegerField
      FieldName = 'TONGSODILAMCA4'
    end
    object HRMDetQryTONGSODILAMCA_Nghi: TIntegerField
      FieldName = 'TONGSODILAMCA_Nghi'
    end
    object HRMDetQryP: TIntegerField
      FieldName = 'P'
    end
    object HRMDetQryTS: TIntegerField
      FieldName = 'TS'
    end
    object HRMDetQryKHAC: TIntegerField
      FieldName = 'KHAC'
    end
    object HRMDetQryVE15H30NUOICON: TIntegerField
      FieldName = 'VE15H30NUOICON'
    end
    object HRMDetQryVE15H30MANGTHAI: TIntegerField
      FieldName = 'VE15H30MANGTHAI'
    end
    object HRMDetQryNGHIVIEC: TIntegerField
      FieldName = 'NGHIVIEC'
    end
    object HRMDetQryNDay: TStringField
      FieldName = 'NDay'
      FixedChar = True
      Size = 10
    end
  end
  object DS2: TDataSource
    DataSet = HRMDetQry
    Left = 165
    Top = 392
  end
  object PopupMenu: TPopupMenu
    Left = 200
    Top = 360
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 192
    Top = 168
  end
end
