object ArticleHourPPH: TArticleHourPPH
  Left = 288
  Top = 249
  Width = 942
  Height = 480
  Caption = 'ArticleHourPPH'
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
    Width = 934
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 30
      Width = 34
      Height = 16
      Caption = 'From:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 29
      Width = 17
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 57
      Width = 66
      Height = 16
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 207
      Top = 60
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 383
      Top = 60
      Width = 37
      Height = 16
      Caption = 'GXLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 1
      Width = 241
      Height = 25
      AutoSize = False
      Caption = #27599#23567#26178#29986#33021'SKU POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object InfoLabel: TLabel
      Left = 471
      Top = -1
      Width = 386
      Height = 50
      AutoSize = False
      Caption = 'InfoLabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 27
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DTP1Change
    end
    object DTP2: TDateTimePicker
      Left = 152
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.000000000000000000
      Format = 'HH:mm:ss'
      Time = 39983.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 512
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 79
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 255
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP3: TDateTimePicker
      Left = 272
      Top = 27
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 376
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.540972222220000000
      Format = 'HH:mm:ss'
      Time = 39983.540972222220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
    end
    object CBX4: TComboBox
      Left = 426
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 7
    end
    object Button2: TButton
      Left = 600
      Top = 47
      Width = 81
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 696
      Top = 56
      Width = 81
      Height = 17
      Caption = 'RY=ZS%'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 934
    Height = 360
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ScanDate,DepName,GXLB,TimeGroupId,'
      
        '       Max(case when Article='#39'660005C'#39' then Qty else null end) a' +
        's '#39'660005C'#39','
      
        '       Max(case when Article='#39'661928C'#39' then Qty else null end) a' +
        's '#39'661928C'#39','
      
        '       Max(case when Article='#39'661927C'#39' then Qty else null end) a' +
        's '#39'661927C'#39','
      '       '
      
        '       Max(case when Article='#39'660005C'#39' then PPH else null end) a' +
        's '#39'660005C_PPH'#39','
      
        '       Max(case when Article='#39'661928C'#39' then PPH else null end) a' +
        's '#39'661928C_PPH'#39','
      
        '       Max(case when Article='#39'661927C'#39' then PPH else null end) a' +
        's '#39'661927C_PPH'#39','
      '       --PPH--,IE_PPH'
      
        '       Max(case when Article='#39'660005C'#39' then IE_PPH else null end' +
        ') as '#39'660005C_IE_PPH'#39','
      
        '       Max(case when Article='#39'661928C'#39' then IE_PPH else null end' +
        ') as '#39'661928C_IE_PPH'#39','
      
        '       Max(case when Article='#39'661927C'#39' then IE_PPH else null end' +
        ') as '#39'661927C_IE_PPH'#39','
      '       '
      
        '       sum(Qty) as Total,Sum(PPH) as AvgPPH,Avg(IE_PPH) as AvgIE' +
        '_PPH,CQQty'
      'from ('
      
        '      select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDep' +
        'artment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,'
      
        '             sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,R' +
        'SCQ.CQQty,'
      
        '             Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Cou' +
        'nt(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,'
      '             SCXXCL.POH as IE_PPH'
      '       '
      
        '     from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL wher' +
        'e SMZL.ScanDate>='#39'2018/03/20 00:00:00'#39' union all select SMNO,COD' +
        'EBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL'
      '     left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      '     left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        '     left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDS' +
        'S.GXLB '
      
        '     left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate' +
        '=convert(varchar,SMZL.ScanDate,111)'
      '     left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        '     left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.B' +
        'ZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                       (Round(Max(Convert(float,SCXXCL.BZCL))/Su' +
        'm(SCXXCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '                from SCXXCL '
      
        '                Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXi' +
        'ng=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao           '
      '     left join ('
      ''
      
        '                select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60' +
        '+datename(mi,SMZL.ScanDate))-0)/60 as TimeGroupID '
      
        '                from (select SMNO,CODEBAR,CTS,DepNO,ScanDate fro' +
        'm SMZL where SMZL.ScanDate>='#39'2018/03/20 00:00:00'#39' union all sele' +
        'ct SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZLOld) SMZL'
      '                left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        '                left join BDepartment on Bdepartment.ID=SMZL.Dep' +
        'No'
      '                where SMZL.ScanDate between '
      
        '                    convert(smalldatetime,'#39'2018/03/17 00:00:00'#39')' +
        ' and convert(smalldatetime,'#39'2018/03/17 23:59:59'#39')  '
      
        '                and SMDDSS.DDBH like '#39'%'#39' and BDepartment.DepName' +
        ' like '#39'%%'#39
      '                and SMDDSS.GXLB='#39'B'#39
      
        '                and SMDDSS.DDBH not like '#39'ZS%'#39'  ) SMZLT on SMZLT' +
        '.SMNO=SMZL.SMNO'
      '      where BDepartment.DepName like '#39'A1_LEAN1-01_G%'#39
      '      and SMDDSS.DDBH like '#39'%'#39
      '      and SMDDSS.GXLB='#39'B'#39
      '      and SMDDSS.DDBH not like '#39'ZS%'#39' '
      '      and SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/03/17 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/03/17 23:59:59'#39')  '
      
        '      group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BD' +
        'epartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeGroupID,RS' +
        'CQ.CQQty,SCXXCL.POH '
      '  ) SMZL'
      'Group by ScanDate,DepName,GXLB,CQQty,TimeGroupId'
      'order by ScanDate,Depname,GXLB,TimeGroupID')
    Left = 216
    Top = 152
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 184
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 152
  end
end
