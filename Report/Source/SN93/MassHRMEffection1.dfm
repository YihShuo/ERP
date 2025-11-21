object MassHRMEffection: TMassHRMEffection
  Left = 221
  Top = 163
  Width = 1162
  Height = 559
  Caption = 'MassHRMEffection'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 169
    Width = 1154
    Height = 6
    Cursor = crVSplit
    Align = alTop
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1154
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
      Top = 8
      Width = 137
      Height = 20
      AutoSize = False
      Caption = #26376#29986#33021#24037#26178#25928#29575#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 9
      Top = 27
      Width = 36
      Height = 16
      Caption = 'Month'
    end
    object Label18: TLabel
      Left = 109
      Top = 27
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Label2: TLabel
      Left = 157
      Top = 30
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label3: TLabel
      Left = 221
      Top = 27
      Width = 4
      Height = 16
      Caption = '/'
    end
    object Button1: TButton
      Left = 282
      Top = 22
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
      Left = 372
      Top = 22
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
      Left = 50
      Top = 24
      Width = 55
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2028')
    end
    object CBX2: TComboBox
      Left = 117
      Top = 24
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '00'
      Items.Strings = (
        '00'
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
      Left = 162
      Top = 24
      Width = 55
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2028')
    end
    object CBX4: TComboBox
      Left = 229
      Top = 24
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = '00'
      Items.Strings = (
        '00'
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1154
    Height = 112
    Align = alTop
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'HMonth'
        Footers = <>
        Title.Caption = 'Month|'#26376#20221
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'HDays'
        Footers = <>
        Title.Caption = 'Days|'#24037#20316#22825#25976
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'StdQty'
        Footers = <>
        Title.Caption = 'Poduction|'#30446#27161#29986#37327
        Title.Color = clSkyBlue
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'PodQty'
        Footers = <>
        Title.Caption = 'Poduction|'#23526#38555#29986#37327
        Title.Color = clSkyBlue
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'DirStdWorks'
        Footers = <>
        Title.Caption = 'Workers|'#30446#27161#30452#24037#20154#25976
        Title.Color = clMoneyGreen
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'DirRelWorkers'
        Footers = <>
        Title.Caption = 'Workers|Lean'#30452#24037#20154#25976
        Title.Color = clMoneyGreen
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'DirRelComWorkers'
        Footers = <>
        Title.Caption = 'Workers|'#20849#21516#30452#24037#20154#25976
        Title.Color = clMoneyGreen
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'DirStdHours'
        Footers = <>
        Title.Caption = 'Direct Work Hours|'#30446#27161#30452#24037#24037#26178
        Title.Color = clAqua
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'DirRelHours'
        Footers = <>
        Title.Caption = 'Direct Work Hours|'#24046#21220#30452#24037#24037#26178
        Title.Color = clAqua
        Width = 85
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 175
    Width = 1154
    Height = 353
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 569
      Top = 1
      Width = 6
      Height = 351
      Color = clActiveCaption
      ParentColor = False
    end
    object DBGridEh3: TDBGridEh
      Left = 575
      Top = 1
      Width = 578
      Height = 351
      Align = alClient
      DataSource = DS3
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
      FrozenCols = 2
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'HMonth'
          Footers = <>
          Title.Caption = 'Month|'#26085#26399
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Caption = 'DepNo|'#37096#38272'ID'
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Title.Caption = 'DepName|'#37096#38272#21517#31281
          Width = 111
        end
        item
          EditButtons = <>
          FieldName = 'StdQty'
          Footers = <>
          Title.Caption = 'Qty|'#27161#28310#29986#37327
          Title.Color = clSkyBlue
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'PodQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Qty|'#29986#37327#38617#25976
          Title.Color = clSkyBlue
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'DirStdWorks'
          Footers = <>
          Title.Caption = 'Workers|'#27161#28310#30452#24037
          Title.Color = clMoneyGreen
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'DirRelWorkers'
          Footers = <>
          Title.Caption = 'Workers|'#24046#21220#30452#24037
          Title.Color = clMoneyGreen
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'DirStdHours'
          Footers = <>
          Title.Caption = 'Hours|'#27161#28310#24037#26178
          Title.Color = clAqua
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'DirRelHours'
          Footers = <>
          Title.Caption = 'Hours|'#24046#21220#24037#26178
          Title.Color = clAqua
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <>
          Title.Caption = 'RY|'#35330#21934
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.Caption = 'Article|'#22411#39636'SKU'
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'ID_HRM'
          Footers = <>
          Title.Caption = 'HRM|'#20154#20107#31995#32113
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 1
      Width = 568
      Height = 351
      Align = alLeft
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGridEh2CellClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'HMonth'
          Footer.FieldName = 'HMonth'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Month|'#26085#26399
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'StdQty'
          Footer.FieldName = 'StdQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Poduction|'#30446#27161#29986#37327
          Title.Color = clSkyBlue
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'PodQty'
          Footer.FieldName = 'PodQty'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Poduction|'#23526#38555#29986#37327
          Title.Color = clSkyBlue
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'DirStdWorks'
          Footers = <>
          Title.Caption = 'Workers|'#30446#27161#30452#24037#20154#25976
          Title.Color = clMoneyGreen
          Width = 78
        end
        item
          EditButtons = <>
          FieldName = 'DirRelWorkers'
          Footers = <>
          Title.Caption = 'Workers|Lean'#30452#24037#20154#25976
          Title.Color = clMoneyGreen
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'DirRelComWorkers'
          Footers = <>
          Title.Caption = 'Workers|'#20849#21516#30452#24037#20154#25976
          Title.Color = clMoneyGreen
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'DirStdHours'
          Footers = <>
          Title.Caption = 'Direct Work Hours|'#30446#27161#30452#24037#24037#26178
          Title.Color = clAqua
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'DirRelHours'
          Footers = <>
          Title.Caption = 'Direct Work Hours|'#24046#21220#30452#24037#24037#26178
          Title.Color = clAqua
          Width = 85
        end>
    end
  end
  object HRMQry: TQuery
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
    object HRMQryHMonth: TStringField
      FieldName = 'HMonth'
      FixedChar = True
      Size = 30
    end
    object HRMQryHDays: TIntegerField
      FieldName = 'HDays'
    end
    object HRMQryStdQty: TIntegerField
      FieldName = 'StdQty'
    end
    object HRMQryPodQty: TFloatField
      FieldName = 'PodQty'
    end
    object HRMQryDirStdWorks: TIntegerField
      FieldName = 'DirStdWorks'
    end
    object HRMQryDirRelWorkers: TIntegerField
      FieldName = 'DirRelWorkers'
    end
    object HRMQryDirRelComWorkers: TIntegerField
      FieldName = 'DirRelComWorkers'
    end
    object HRMQryDirRelHours: TFloatField
      FieldName = 'DirRelHours'
    end
    object HRMQryDirStdHours: TFloatField
      FieldName = 'DirStdHours'
    end
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 162
    Top = 168
  end
  object TTGioQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on'
      'set ansi_warnings on'
      ''
      'select SCBZCL.BMonth as '#39'HMonth'#39',SCBZCL.BCount as '#39'HDays'#39','
      
        '       PlanProd.StdQty,SCBB.Qty as '#39'PodQty'#39',(ProdDDZL.StdWorks/S' +
        'CBZCL.BCount) as '#39'DirStdWorks'#39','
      
        '       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(H' +
        'umData.TTLCHC+HumData.TTTCHC) as DirRelHours,'
      
        '       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.B' +
        'Count) as '#39'DirStdHours'#39',BDepartment.ID,BDepartment.DepName,BDepa' +
        'rtment.ID_HRM,ProdDDZL.DDBH,ProdDDZL.Article,ProdDDZL.XieXing'
      'from (  '
      ''
      
        'select Convert(varchar,BZDate,111) as BMonth,Count (distinct BZD' +
        'ate) as BCount '
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39'  and BDepartment.ProYN=1 and BZDat' +
        'e>='#39'2016/12/01'#39' and BZDate<='#39'2016/12/01'#39' and BZDate<='#39'2016/12/31' +
        #39' and Qty>0'
      'Group by BZDate ) SCBZCL'
      'left join ( '
      
        'select Convert(varchar,SCBB.SCDate,111) as PMonth,SCBB.DepNo,Sum' +
        '(Qty) as Qty '
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2016/12/01'#39' and '#39'2016/12/01'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      
        'Group by SCBB.SCDate,SCBB.DepNo ) SCBB  on SCBB.PMonth=SCBZCL.BM' +
        'onth '
      'left join ('
      
        'select Convert(varchar,BZDate,111) as BMonth,SCBZCL.DepNo,Sum(Qt' +
        'y) as StdQty'
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and BDepa' +
        'rtment.ProYN=1 and BZDate>='#39'2016/12/01'#39' and BZDate<='#39'2016/12/01'#39 +
        ' and BZDate<='#39'2016/12/31'#39' and Qty>0'
      
        'Group by BZDate,SCBZCL.DepNo ) PlanProd  on PlanProd.BMonth=SCBZ' +
        'CL.BMonth and PlanProd.DepNo=SCBB.DepNo'
      'left join ('
      
        'select Convert(varchar,ProdDDZL.SCDate,111) as PMonth,DepNO,Prod' +
        'DDZL.DDBH,DDZL.Article,DDZL.XieXing,Sum(SCXXCL.BZRS) as StdWorks' +
        ' from ('
      
        'select SCBB.SCDate,SCBB.DepNO,Max(SCBBS.SCBH) as DDBH,Sum(Qty) a' +
        's Qty'
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2016/12/01'#39' and '#39'2016/12/01'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      'Group by SCBB.SCDate,SCBB.DepNO ) ProdDDZL'
      'Left join DDZL on DDZL.DDBH=ProdDDZL.DDBH'
      
        'Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB ' +
        'in ('#39'A'#39','#39'C'#39','#39'S'#39') and BZLB=3'
      '--where ProdDDZL.DDBH='#39'Y1612-1057'#39
      
        'Group by ProdDDZL.SCDate,ProdDDZL.DepNO,ProdDDZL.DDBH,DDZL.Artic' +
        'le,DDZL.XieXing ) ProdDDZL on  ProdDDZL.PMonth=SCBZCL.BMonth and' +
        ' ProdDDZL.DepNo=SCBB.DepNo'
      'left join ('
      
        '  select convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+' +
        'SCRL.SCDay,111) as PMonth,SCRL.DepNo,Sum(SCGS)/Count(BDepartment' +
        '.ID) as DayHours'
      '  from SCRL'
      
        '  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL' +
        '.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) and SCBZCL.DepNO=SCRL.D' +
        'epNo'
      '  left join BDepartment on BDepartment.ID=SCRL.DepNo'
      
        '  where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and con' +
        'vert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) ' +
        ' between '#39'2016/12/01'#39' and '#39'2016/12/01'#39' '
      
        '  Group by convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/' +
        #39'+SCRL.SCDay,111),SCRL.DepNo'
      '  '
      ') SCRL on SCRL.PMonth=SCBZCL.BMonth and SCRL.DepNo=SCBB.DepNo'
      'Left join BDepartment on BDepartment.ID=SCBB.DepNo'
      'Left join (  '
      '  select HumData.*,BDepartment.ID_HRM as dv_ma from ( '
      
        '  select HumData.HMonth,BDepartment.sumline,Sum(DirRelWorkers) a' +
        's DirRelWorkers,Sum(TTLCHC) as TTLCHC,Sum(TTTCHC) as TTTCHC  fro' +
        'm  ( '
      
        '  select SCBB.DepNo,BDepartment.DepName,BDepartment.ID_HRM,BDepa' +
        'rtment.sumline,BDepartment.GXLB'
      '  from SCBBS'
      '  left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      '  left join BDepartment on BDepartment.ID=SCBB.DepNo'
      
        '  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111))' +
        ' between '#39'2016/12/01'#39' and '#39'2016/12/01'#39'  '
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
        'NHANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 '
      
        '  where QT_NGAY>='#39'2016/12/01'#39' and QT_NGAY<='#39'2016/12/01'#39'  and X_M' +
        'A_ in ('#39'A1'#39','#39'A2'#39') and ST_CONGVIEC.CV_MA like '#39'A%'#39
      
        '  group by QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData on  HumData.dv_' +
        'ma COLLATE DATABASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE' +
        '_DEFAULT '
      '  where  HumData.dv_ma is not null '
      '  Group by  HumData.HMonth,BDepartment.sumline ) HumData'
      
        '  left join BDepartment on BDepartment.sumline=HumData.sumline a' +
        'nd BDepartment.GXLB='#39'A'#39
      
        ' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL' +
        '.BMonth COLLATE DATABASE_DEFAULT and HumData.dv_ma COLLATE DATAB' +
        'ASE_DEFAULT =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT'
      '')
    Left = 664
    Top = 264
    object TTGioQryHMonth: TStringField
      FieldName = 'HMonth'
      FixedChar = True
      Size = 30
    end
    object TTGioQryHDays: TIntegerField
      FieldName = 'HDays'
    end
    object TTGioQryStdQty: TIntegerField
      FieldName = 'StdQty'
    end
    object TTGioQryPodQty: TFloatField
      FieldName = 'PodQty'
    end
    object TTGioQryDirStdWorks: TIntegerField
      FieldName = 'DirStdWorks'
    end
    object TTGioQryDirRelWorkers: TIntegerField
      FieldName = 'DirRelWorkers'
    end
    object TTGioQryDirRelHours: TFloatField
      FieldName = 'DirRelHours'
    end
    object TTGioQryDirStdHours: TFloatField
      FieldName = 'DirStdHours'
    end
    object TTGioQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object TTGioQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object TTGioQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object TTGioQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object TTGioQryID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object TTGioQryID_HRM: TStringField
      FieldName = 'ID_HRM'
      FixedChar = True
      Size = 10
    end
  end
  object DS3: TDataSource
    DataSet = TTGioQry
    Left = 666
    Top = 296
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
  object HRDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on'
      'select SCBZCL.BMonth as '#39'HMonth'#39',SCBZCL.BCount as '#39'HDays'#39','
      
        '       PlanProd.StdQty,SCBB.Qty as '#39'PodQty'#39',(ProdDDZL.StdWorks/S' +
        'CBZCL.BCount) as '#39'DirStdWorks'#39','
      
        '       (HumData.DirRelWorkers/SCBZCL.BCount) as DirRelWorkers,(H' +
        'umData.DirRelComWorkers/SCBZCL.BCount) as DirRelComWorkers,(HumD' +
        'ata.TTLCHC+HumData.TTTCHC) as DirRelHours,'
      
        '       (SCRL.DayHours*SCBZCL.BCount)*(ProdDDZL.StdWorks/SCBZCL.B' +
        'Count) as '#39'DirStdHours'#39' '
      'from (       '
      
        'select Convert(varchar,BZDate,111) as BMonth,Count (distinct BZD' +
        'ate) as BCount '
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.ProYN=1 and BZDate' +
        '>='#39'2017-02-01'#39' and BZDate<='#39'2017-02-28'#39' and BZDate<='#39'2017/03/01'#39 +
        ' and Qty>0'
      'Group by BZDate ) SCBZCL'
      'left join ( '
      
        'select Convert(varchar,SCBB.SCDate,111) as PMonth,Sum(Qty) as Qt' +
        'y '
      'from SCBBS'
      'left join SCBB on SCBB.ProNo=SCBBS.ProNO'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '#39'2017-02-01'#39' and '#39'2017-02-28'#39'  '
      '       and SCBBS.GXLB='#39'A'#39' and SCBB.GSBH='#39'VA12'#39' '
      'Group by SCBB.SCDate ) SCBB  on SCBB.PMonth=SCBZCL.BMonth '
      'left join ('
      'select Convert(varchar,BZDate,111) as BMonth,Sum(Qty) as StdQty'
      'from SCBZCL '
      'left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      
        'where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and BDepa' +
        'rtment.ProYN=1 and BZDate>='#39'2017-02-01'#39' and BZDate<='#39'2017-02-28'#39 +
        ' and BZDate<='#39'2017/03/01'#39' and Qty>0'
      'Group by BZDate ) PlanProd  on PlanProd.BMonth=SCBZCL.BMonth '
      'left join ('
      
        'select Convert(varchar,ProdDDZL.SCDate,111) as PMonth,Sum(SCXXCL' +
        '.BZRS) as StdWorks from ('
      
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
      
        'Group by ProdDDZL.SCDate ) ProdDDZL on  ProdDDZL.PMonth=SCBZCL.B' +
        'Month '
      'left join ('
      
        '  select convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+' +
        'SCRL.SCDay,111) as PMonth,Sum(SCGS)/Count(BDepartment.ID) as Day' +
        'Hours'
      '  from SCRL'
      
        '  inner join  SCBZCL on SCBZCL.BZDate=convert(smalldatetime,SCRL' +
        '.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) and SCBZCL.DepNO=SCRL.D' +
        'epNo'
      '  left join BDepartment on BDepartment.ID=SCRL.DepNo'
      
        '  where BDepartment.GSBH='#39'VA12'#39' and BDepartment.GXLB='#39'A'#39' and con' +
        'vert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay) ' +
        ' between '#39'2017-02-01'#39' and '#39'2017-02-28'#39' '
      
        '  Group by convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/' +
        #39'+SCRL.SCDay,111)'
      ') SCRL on SCRL.PMonth=SCBZCL.BMonth '
      'Left join ( '
      '  SELECT Convert(varchar,QT_NGAY,111) as HMonth,'
      
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
        'A 3'#39' or CA_MA='#39'CA 4'#39') THEN CC_GIOTANGCA ELSE 0 END) '
      '  FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanvien st_nhanvien ' +
        'on st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC ' +
        'on ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        '  inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI on ST_' +
        'NHANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 '
      
        '  where QT_NGAY>='#39'2017-02-01'#39' and QT_NGAY<='#39'2017-02-28'#39'  and X_M' +
        'A_ like '#39'A%'#39'  and ST_CONGVIEC.CV_MA like '#39'A%'#39
      '  group by QT_NGAY'
      
        ' ) HumData  on   HumData.HMonth COLLATE DATABASE_DEFAULT =SCBZCL' +
        '.BMonth COLLATE DATABASE_DEFAULT'
      '  ')
    Left = 168
    Top = 272
    object HRDQryHMonth: TStringField
      FieldName = 'HMonth'
      FixedChar = True
      Size = 30
    end
    object HRDQryHDays: TIntegerField
      FieldName = 'HDays'
    end
    object HRDQryStdQty: TIntegerField
      FieldName = 'StdQty'
    end
    object HRDQryPodQty: TFloatField
      FieldName = 'PodQty'
    end
    object HRDQryDirStdWorks: TIntegerField
      FieldName = 'DirStdWorks'
    end
    object HRDQryDirRelWorkers: TIntegerField
      FieldName = 'DirRelWorkers'
    end
    object HRDQryDirRelHours: TFloatField
      FieldName = 'DirRelHours'
    end
    object HRDQryDirStdHours: TFloatField
      FieldName = 'DirStdHours'
    end
    object HRDQryDirRelComWorkers: TIntegerField
      FieldName = 'DirRelComWorkers'
    end
  end
  object DS2: TDataSource
    DataSet = HRDQry
    Left = 170
    Top = 304
  end
end
