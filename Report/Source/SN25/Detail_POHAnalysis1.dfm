object Detail_POHAnalysis: TDetail_POHAnalysis
  Left = 261
  Top = 163
  Width = 928
  Height = 480
  Caption = 'Order Detail IE POH Analysis'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 912
    Height = 345
    Align = alClient
    DataSource = DS1
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 119
      end
      item
        DisplayFormat = 'YYYY/MM/DD'
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 162
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 48
      end
      item
        DisplayFormat = 'YYYY/MM/DD'
        EditButtons = <>
        FieldName = 'Shipdate'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'IEQty'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'IEPeo'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'IEPOH'
        Footers = <>
        Title.Caption = 'POH'
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'IE_T2'
        Footers = <>
        Title.Caption = 'T2'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'IMGName'
        Footers = <>
        Title.Caption = 'Shoe Picture'
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'POH'
        Footers = <>
        Title.Caption = 'PPH'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CQQty'
        Footers = <>
        Title.Caption = 'Output'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = 'Tier'
        Width = 41
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 253
      Top = 26
      Width = 31
      Height = 20
      Caption = 'RY :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 31
      Top = 26
      Width = 54
      Height = 20
      Caption = 'LEAN : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 450
      Top = 26
      Width = 55
      Height = 20
      Caption = 'BuyNo :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 256
      Top = 72
      Width = 29
      Height = 20
      Caption = 'TO :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 453
      Top = 72
      Width = 52
      Height = 20
      Caption = 'GXLB :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtRY: TEdit
      Left = 288
      Top = 20
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtLean: TEdit
      Left = 90
      Top = 20
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnQuery: TButton
      Left = 632
      Top = 10
      Width = 75
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnQueryClick
    end
    object btnExcel: TButton
      Left = 632
      Top = 56
      Width = 75
      Height = 37
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcelClick
    end
    object ckbPlanDate: TCheckBox
      Left = 13
      Top = 73
      Width = 85
      Height = 17
      Caption = 'PlanDate :'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 110
      Top = 66
      Width = 90
      Height = 24
      Date = 43438.340773854160000000
      Format = 'yyyy/MM/dd'
      Time = 43438.340773854160000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 288
      Top = 66
      Width = 90
      Height = 24
      Date = 43438.341205057870000000
      Format = 'yyyy/MM/dd'
      Time = 43438.341205057870000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtBuyNo: TEdit
      Left = 508
      Top = 20
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object cbbGXLB: TComboBox
      Left = 508
      Top = 66
      Width = 50
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 1
      ParentFont = False
      TabOrder = 8
      Text = 'A'
      Items.Strings = (
        'ALL'
        'A'
        'S'
        'C'
        'O'
        'W'
        'Z')
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 224
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SMDD.*,SMZL.POH,SMZL.CQQty,SMZL.T2 from ('
      
        'select DDZL.BUYNO,DDZL.DDBH,Bdepartment.DepName,max(SMDD.plandat' +
        'e) as PlanDate ,DDZL.ARTICLE'
      
        ',XXZL.YSSM,Sum(SMDD.Qty) as Pairs,DDZL.Shipdate,LBZLS.YWSM as Co' +
        'untry,XXZL.DAOMH,XXZL.XTMH,IEQty,IEPeo,POH as IEPOH,'
      '       case when POH>=1.5 then 1'
      '            when POH>=1.25 and POH<1.5 then 2'
      '            when POH>=1.13 and POH<1.25 then 3'
      '            when POH>=1.0 and POH<1.13 then 4'
      '            when POH>=0.86 and POH<1.0 then 5'
      '            when POH>=0.75 and POH<0.86 then 6'
      '            when POH>=0.61 and POH<0.75 then 7'
      
        '            when POH<=0.6 then 8 end as IE_T2,Max(XXZL.IMGName) ' +
        'as IMGName     '
      'from SMDD '
      'left join Bdepartment on Bdepartment.ID=SMDD.DepNo'
      'left join DDZL on DDZl.DDBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      
        'left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)a' +
        's IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Conver' +
        't(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH'
      
        '            from SCXXCL group by xiexing,shehao) SCXXCL on SCXXC' +
        'L.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.shehao'
      'where 1=1 '
      'and  DDZL.buyno like '#39'%'#39
      'and  DDZL.DDBH like '#39'%'#39
      'and  DDZL.GSBH='#39'VA12'#39' '
      'and  Bdepartment.Depname like '#39'%'#39
      
        'and (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) b' +
        'etween '
      '       '#39'2018/11/01'#39' and  '#39'2018/11/30'#39')'
      'and SMDD.GXLB ='#39'A'#39' '
      'group by  DDZL.BUYNO,DDZL.DDBH,Bdepartment.depname ,DDZL.ARTICLE'
      
        ',XXZL.YSSM,DDZL.SHipdate,LBZLS.YWSM,XXZL.DAOMH,XXZL.XTMH,IEQty,I' +
        'EPeo,POH'
      ') SMDD'
      '-- Join  SMZL PPH'
      'left join ('
      'Select ScanDate,DepName,YSBH,GXLB,CQQty,POH,'
      '       case when POH>=1.5 then 1'
      '            when POH>=1.25 and POH<1.5 then 2'
      '            when POH>=1.13 and POH<1.25 then 3'
      '            when POH>=1.0 and POH<1.13 then 4'
      '            when POH>=0.86 and POH<1.0 then 5'
      '            when POH>=0.75 and POH<0.86 then 6'
      '            when POH>=0.61 and POH<0.75 then 7'
      '            when POH<=0.61 then 8 end as T2  '
      'from ('
      'select * from ('
      
        'select SMZL.*,ROW_NUMBER() over (PARTITION BY YSBH,GXLB ORDER BY' +
        ' POH DESC) as rn from ( '
      '--'
      
        'select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,C' +
        'QQty,Sum(Qty) as Qty'
      
        '     ,Convert(varchar(3),Min( SMZL.TimeGroupID)) +'#39'~'#39'+ Convert(v' +
        'archar(3),Max(SMZL.TimeGroupID )) as PHour ,Sum(minut) as PTime '
      '     ,Round( sum(Qty) /  Sum(minut) / CQQty,4) as POH'
      '    from ('
      
        'select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,T' +
        'imeGroupID,minut,CQQty,sum(CTS)*Qty as Qty from ('
      
        'select convert(varchar,SMZL.ScanDate,111) as ScanDate,SMDD.YSBH,' +
        'BDepartment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,XXZL.D' +
        'AOMH,'
      '       SMZL.CTS,SMDDSS.Qty,'
      
        '       RSCQ.CQQty,SCXXCL.POH as IE_PPH,SMZLT.TimeGroupID,SMZLT.m' +
        'inut     '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/12/03 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      
        'left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=conv' +
        'ert(varchar,SMZL.ScanDate,111)'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      
        'left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL))' +
        ' as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCX' +
        'XCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '           from SCXXCL '
      
        '           Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DD' +
        'ZL.XieXing and SCXXCL.SheHao=DDZL.SheHao           '
      'left join ('
      'select SMZL.*,IsNull(SCSJDV.minut,1) as minut from ('
      
        'select SMZL.SMNO,SMZL.DepNo,((datename(hh,SMZL.ScanDate)*60+date' +
        'name(mi,SMZL.ScanDate))-0)/60 as TimeGroupID '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/12/03 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'where SMDDSS.DDBH in ('
      '         select DDBH from SMDD where'
      
        '         convert(smalldatetime,convert(varchar,SMDD.PlanDate,111' +
        ')) between '
      
        '         '#39'2018/11/01'#39' and  '#39'2018/11/30'#39' and SMDD.GXLB='#39'A'#39' and SM' +
        'DD.DDBH like '#39'%'#39' '
      '      )'
      '      and SMDDSS.DDBH like '#39'%'#39' '
      '      and BDepartment.DepName like '#39'%'#39
      '      and SMDDSS.GXLB='#39'A'#39
      '      ) SMZL '
      
        'Left join SCSJDV on SCSJDV.ID=SMZL.DepNo and SCSJDV.hors=SMZL.Ti' +
        'meGroupID      '
      '        ) SMZLT on SMZLT.SMNO=SMZL.SMNO'
      'where BDepartment.DepName like '#39'%'#39
      '      and SMDDSS.DDBH like '#39'%'#39' '
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and SMDDSS.GXLB='#39'A'#39
      '      and SMDDSS.DDBH in ('
      '         select DDBH from SMDD where'
      
        '         convert(smalldatetime,convert(varchar,SMDD.PlanDate,111' +
        ')) between '
      
        '         '#39'2018/11/01'#39' and  '#39'2018/11/30'#39' and SMDD.GXLB='#39'A'#39' and SM' +
        'DD.DDBH like '#39'%'#39' '
      '      )'
      
        ') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH' +
        ',IE_PPH,TimeGroupID,minut,Qty,CQQty'
      
        ') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH' +
        ',IE_PPH,CQQty'
      '--Get Top 1 PPH'
      ') SMZL ) SMZL where rn=1) SMZL '
      ') SMZL on SMZL.YSBH=SMDD.DDBH'
      ''
      '--order by SMDD.depname,SMDD.plandate')
    Left = 288
    Top = 224
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1Shipdate: TDateTimeField
      FieldName = 'Shipdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1IEQty: TIntegerField
      FieldName = 'IEQty'
    end
    object Query1IEPeo: TIntegerField
      FieldName = 'IEPeo'
    end
    object Query1IEPOH: TFloatField
      FieldName = 'IEPOH'
    end
    object Query1IE_T2: TIntegerField
      FieldName = 'IE_T2'
    end
    object Query1IMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object Query1POH: TFloatField
      FieldName = 'POH'
    end
    object Query1CQQty: TIntegerField
      FieldName = 'CQQty'
    end
    object Query1T2: TIntegerField
      FieldName = 'T2'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 224
  end
end
