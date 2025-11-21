object HourArticlePPH: THourArticlePPH
  Left = 290
  Top = 140
  Width = 1414
  Height = 648
  Caption = 'HourArticlePPH'
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
    Width = 1406
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
      Left = 472
      Top = -1
      Width = 505
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
      Date = 43185.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 43185.610104166670000000
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
      Date = 43185.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 43185.610104166670000000
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
      Date = 39983.999305555550000000
      Format = 'HH:mm:ss'
      Time = 39983.999305555550000000
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
    object CBHuman: TCheckBox
      Left = 776
      Top = 64
      Width = 113
      Height = 17
      Caption = 'Human System'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object CB2: TCheckBox
      Left = 776
      Top = 44
      Width = 185
      Height = 17
      Caption = #20013#25991#32218#21029'DepName CN '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 1406
    Height = 528
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'HourArtickePPH'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1398
        Height = 497
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            Title.Caption = #29983#29986#26085#26399'|ScanDate'
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = 'Lean'#32218'|DepName'
          end
          item
            EditButtons = <>
            FieldName = 'GXLB'
            Footers = <>
            Title.Caption = #24037#27573'|GX'
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'SB'
            Footers = <>
            Title.Caption = #38917#30446'|SB'
          end
          item
            EditButtons = <>
            FieldName = '7'
            Footers = <>
            Title.Caption = #26178#27573'|7'
          end
          item
            EditButtons = <>
            FieldName = '8'
            Footers = <>
            Title.Caption = #26178#27573'|8'
          end
          item
            EditButtons = <>
            FieldName = '9'
            Footers = <>
            Title.Caption = #26178#27573'|9'
          end
          item
            EditButtons = <>
            FieldName = '10'
            Footers = <>
            Title.Caption = #26178#27573'|10'
          end
          item
            EditButtons = <>
            FieldName = '11'
            Footers = <>
            Title.Caption = #26178#27573'|11'
          end
          item
            EditButtons = <>
            FieldName = '12'
            Footers = <>
            Title.Caption = #26178#27573'|12'
          end
          item
            EditButtons = <>
            FieldName = '13'
            Footers = <>
            Title.Caption = #26178#27573'|13'
          end
          item
            EditButtons = <>
            FieldName = '14'
            Footers = <>
            Title.Caption = #26178#27573'|14'
          end
          item
            EditButtons = <>
            FieldName = '15'
            Footers = <>
            Title.Caption = #26178#27573'|15'
          end
          item
            EditButtons = <>
            FieldName = '16'
            Footers = <>
            Title.Caption = #26178#27573'|16'
          end
          item
            EditButtons = <>
            FieldName = '17'
            Footers = <>
            Title.Caption = #26178#27573'|17'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = '18'
            Footers = <>
            Title.Caption = #26178#27573'|18'
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = '19'
            Footers = <>
            Title.Caption = #26178#27573'|19'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = '20'
            Footers = <>
            Title.Caption = #26178#27573'|20'
            Width = 80
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'HourArticleDet'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1390
        Height = 490
        Align = alClient
        DataSource = DataSource2
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
            FieldName = 'IE_T2'
            Footers = <>
            Title.Caption = #31561#32026'|IE_T2'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = #26028#20992#32232#34399'|DAOMH'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footer.FieldName = 'Article'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #22411#34399'|Article'
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'IE_PPH'
            Footers = <>
            Title.Caption = #27161#28310'|IE_PPH'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            Title.Caption = #29983#29986#26085#26399'|ScanDate'
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'TimeGroupID'
            Footers = <>
            Title.Caption = #26178#27573'|TimeGroupID'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = #32218#21029'|DepName'
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'PPH'
            Footers = <>
            Title.Caption = #23526#38555'|PPH'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Quantity'
            Footers = <>
            Title.Caption = #25976#37327'|Quantity'
            Width = 58
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'HourArticleStatics'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1390
        Height = 490
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
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Caption = #22411#34399' |Article'
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'PPH'
            Footers = <>
            Title.Caption = #32317#25976'|PPH'
          end
          item
            EditButtons = <>
            FieldName = 'PPH_Cnt'
            Footer.FieldName = 'PPH_Cnt'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #31558#25976'|Article_Cnt'
          end
          item
            EditButtons = <>
            FieldName = 'PPH_Avg'
            Footers = <>
            Title.Caption = #24179#22343'|PPH_Avg'
          end
          item
            EditButtons = <>
            FieldName = 'IE_PPH'
            Footers = <>
            Title.Caption = #27161#28310'|IE_PPH'
          end
          item
            EditButtons = <>
            FieldName = 'IE_T2'
            Footers = <>
            Title.Caption = 'Tier'
          end>
      end
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#HumData'#39') is not null'
      ' begin   drop table #HumData end'
      
        ' select HumData.tk_ngay,BDepartment.Sumline,sum(dv_dilam) as dv_' +
        'dilam into #HumData from ('
      
        ' SELECT tk_ngay=Convert(varchar,ST_GIOQUETTHE.QT_NGAY,111),ST_GI' +
        'OQUETTHE.dv_ma,'
      
        '        dv_dilam=SUM(case when CC_GIOBINHTHUONG=8 then 1 else 0 ' +
        'end) '
      ' FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE ST_GIOQUETTHE'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.st_nhanvien st_nhanvien o' +
        'n st_nhanvien.nv_ma=ST_GIOQUETTHE.nv_ma'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.ST_CONGVIEC ST_CONGVIEC o' +
        'n ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA'
      
        ' inner join HumanDB.[P0104-TYXUAN].dbo.ST_DONVI ST_DONVI on ST_G' +
        'IOQUETTHE.DV_MA = ST_DONVI.DV_MA '
      
        ' where ST_GIOQUETTHE.QT_NGAY>='#39'2021/04/06'#39' and ST_GIOQUETTHE.QT_' +
        'NGAY<='#39'2021/04/06'#39'  and X_MA_ in ('#39'A1'#39','#39'A2'#39','#39'A1A2'#39') and ST_CONGV' +
        'IEC.CV_MA like '#39'A%'#39
      '       and 1=2 '
      ' group by ST_GIOQUETTHE.QT_NGAY,ST_GIOQUETTHE.dv_ma ) HumData'
      
        ' inner join BDepartment on HumData.dv_ma COLLATE DATABASE_DEFAUL' +
        'T =BDepartment.ID_HRM COLLATE DATABASE_DEFAULT'
      ' Group by HumData.tk_ngay,BDepartment.Sumline'
      ''
      'if object_id('#39'tempdb..#RSCQPOH'#39') is not null'
      'begin  drop table #RSCQPOH end'
      
        'Select RSDate,BDepartment.sumline,Sum(RSCQ.CQQty) as CQQty into ' +
        ' #RSCQPOH '
      'from RSCQ '
      'inner join BDepartment on Bdepartment.ID=RSCQ.DepNo'
      
        'where convert(smalldatetime,convert(varchar,RSCQ.RSDate,111))  b' +
        'etween  '#39'2021/04/06'#39' and '#39'2021/04/06'#39' '
      'Group by  RSDate,BDepartment.sumline '
      'if object_id('#39'tempdb..#PerhourPPH'#39') is not null'
      'begin   drop table #PerhourPPH end'
      ''
      'select SMZL.*,IsNull(SCSJDV.minut,1) as minut '
      
        '       ,SCBZCL.Qty as  StdQty,SCBZCL.SCGS ,#HumData.dv_dilam int' +
        'o #PerhourPPH  from ( '
      
        'select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartmen' +
        't.ID,BDepartment.DepName as DepName,SMDDSS.GXLB'
      
        '       ,case when Max(DDZL.ordermode) in ('#39'MU'#39','#39'NU'#39') then  '#39' '#39'+S' +
        'MDD.Article+'#39'('#39'+XXZL.DAOMH+'#39')'#39'  when Max(DDZL.ordermode) in ('#39'TN' +
        #39') then  '#39'  '#39'+SMDD.Article+'#39'('#39'+XXZL.DAOMH+'#39')'#39'  else SMDD.Article' +
        '+'#39'('#39'+XXZL.DAOMH+'#39')'#39' end as Article'
      
        '       ,SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeG' +
        'roupID,'
      
        '       RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) ' +
        '/ Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,BDepa' +
        'rtment.Sumline,'
      
        '       SCXXCL.POH as IE_PPH,SCXXCL.IEQty as IE_Qty,SCXXCL.IEPeo ' +
        'as IE_Peo '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2021/04/07 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      
        'left join #RSCQPOH as RSCQ on RSCQ.sumline=BDepartment.sumline a' +
        'nd RSCQ.RSDate=convert(varchar,SMZL.ScanDate,111)'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        'left join xxzl on ddzl.xiexing = xxzl.xiexing and ddzl.shehao=xx' +
        'zl.shehao '
      
        'left join (Select XieXing,SheHao,BZLB,Max(Convert(float,SCXXCL.B' +
        'ZCL)) as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCX' +
        'XCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '           from SCXXCL '
      
        '           Group by XieXing,SheHao,BZLB ) SCXXCL on SCXXCL.XieXi' +
        'ng=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.BZLB=BD' +
        'epartment.BZLB '
      'left join ('
      
        'select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZ' +
        'L.ScanDate))-0)/60 as TimeGroupID '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2021/04/07 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'where SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2021/04/06 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2021/04/06 23:59:59'#39')  '
      
        '      and SMDDSS.DDBH like '#39'%'#39' and BDepartment.DepName like '#39'%'#39' ' +
        'and BDepartment.YN=1 '
      '      and SMDDSS.GXLB='#39'A'#39' '
      ' ) SMZLT on SMZLT.SMNO=SMZL.SMNO'
      'where BDepartment.DepName like '#39'%'#39' and BDepartment.YN=1 '
      '      and SMDDSS.DDBH like '#39'%'#39
      '      and SMDDSS.GXLB='#39'A'#39
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2021/04/06 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2021/04/06 23:59:59'#39')  '
      
        'group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartm' +
        'ent.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeG' +
        'roupID,RSCQ.CQQty,SCXXCL.POH,SCXXCL.IEQty,SCXXCL.IEPeo,XXZL.DAOM' +
        'H,BDepartment.Sumline  '
      ') SMZL '
      'left join ('
      
        '  select convert(varchar,SCBZCL.BZDate,111) as BZDate,SCBZCL.Dep' +
        'No,CEILING(SCBZCL.Qty/SCRL.SCGS)  as Qty,SCRL.SCGS from SCBZCL'
      
        '  left join SCRL on SCRL.SCYEAR=year(SCBZCL.BZDate)and SCRL.SCMO' +
        'NTH=month(SCBZCL.BZDate)and SCRL.SCDAY=day(SCBZCL.BZDate)and SCR' +
        'L.DepNo=SCBZCL.Depno'
      '  left join BDepartment on BDepartment.ID=SCBZCL.DepNo'
      '  where   SCBZCL.BZDate between '
      
        '          convert(smalldatetime,'#39'2021/04/06 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2021/04/06 23:59:59'#39')  '
      '          and BDepartment.DepName like '#39'%'#39' and BDepartment.YN=1 '
      '          and BDepartment.GSBH='#39'VA12'#39' '
      '       '
      
        ') SCBZCL on SCBZCL.BZDate=SMZL.ScanDate and SMZL.ID=SCBZCL.DepNo' +
        '  '
      
        'Left join SCSJDV on SCSJDV.ID=SMZL.ID and SCSJDV.hors=TimeGroupI' +
        'D '
      
        'left join #HumData on #HumData.Sumline=SMZL.Sumline and #HumData' +
        '.tk_ngay=SMZL.ScanDate ')
    Left = 72
    Top = 256
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      'Select * from ('
      #9'select ScanDate,DepName,GXLB,'#39'1.Hour'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then '#39'07:00-08:00' +
        #39' end)) as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then '#39'08:00-09:00' +
        #39' end)) as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then '#39'09:00-10:00' +
        #39' end)) as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then '#39'10:00-11:0' +
        '0'#39' end)) as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then '#39'11:00-12:0' +
        '0'#39' end)) as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then '#39'12:00-13:0' +
        '0'#39' end)) as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then '#39'13:00-14:0' +
        '0'#39' end)) as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then '#39'14:00-15:0' +
        '0'#39' end)) as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then '#39'15:00-16:0' +
        '0'#39' end)) as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then '#39'16:00-17:0' +
        '0'#39' end)) as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then '#39'17:00-18:0' +
        '0'#39' end)) as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then '#39'18:00-19:0' +
        '0'#39' end)) as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then '#39'19:00-20:0' +
        '0'#39' end)) as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then '#39'20:00-21:0' +
        '0'#39' end)) as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '
      #9'Union all'
      #9'select ScanDate,DepName,GXLB,'#39'2.Article'#39' as SB'
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=7 then Article' +
        ' end)) as '#39'7'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=8 then Article' +
        ' end)) as '#39'8'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=9 then Article' +
        ' end)) as '#39'9'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=10 then Articl' +
        'e end)) as '#39'10'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=11 then Articl' +
        'e end)) as '#39'11'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=12 then Articl' +
        'e end)) as '#39'12'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=13 then Articl' +
        'e end)) as '#39'13'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=14 then Articl' +
        'e end)) as '#39'14'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=15 then Articl' +
        'e end)) as '#39'15'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=16 then Articl' +
        'e end)) as '#39'16'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=17 then Articl' +
        'e end)) as '#39'17'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=18 then Articl' +
        'e end)) as '#39'18'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=19 then Articl' +
        'e end)) as '#39'19'#39' '
      
        #9#9',convert(varchar(100),Max(case when TimeGroupID=20 then Articl' +
        'e end)) as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'Union all'
      #9'select ScanDate,DepName,GXLB,'#39'2.IE Qty'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then IE_Qty end))' +
        ' as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then IE_Qty end))' +
        ' as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then IE_Qty end))' +
        ' as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then IE_Qty end)' +
        ') as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then IE_Qty end)' +
        ') as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then IE_Qty end)' +
        ') as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then IE_Qty end)' +
        ') as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then IE_Qty end)' +
        ') as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then IE_Qty end)' +
        ') as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then IE_Qty end)' +
        ') as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then IE_Qty end)' +
        ') as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then IE_Qty end)' +
        ') as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then IE_Qty end)' +
        ') as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then IE_Qty end)' +
        ') as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'Union all'
      #9'select ScanDate,DepName,GXLB,'#39'3.IE Peo'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then IE_Peo end))' +
        ' as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then IE_Peo end))' +
        ' as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then IE_Peo end))' +
        ' as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then IE_Peo end)' +
        ') as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then IE_Peo end)' +
        ') as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then IE_Peo end)' +
        ') as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then IE_Peo end)' +
        ') as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then IE_Peo end)' +
        ') as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then IE_Peo end)' +
        ') as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then IE_Peo end)' +
        ') as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then IE_Peo end)' +
        ') as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then IE_Peo end)' +
        ') as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then IE_Peo end)' +
        ') as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then IE_Peo end)' +
        ') as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'Union all'
      #9'select ScanDate,DepName,GXLB,'#39'4.IE PPH'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then IE_PPH end))' +
        ' as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then IE_PPH end))' +
        ' as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then IE_PPH end))' +
        ' as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then IE_PPH end)' +
        ') as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then IE_PPH end)' +
        ') as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then IE_PPH end)' +
        ') as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then IE_PPH end)' +
        ') as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then IE_PPH end)' +
        ') as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then IE_PPH end)' +
        ') as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then IE_PPH end)' +
        ') as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then IE_PPH end)' +
        ') as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then IE_PPH end)' +
        ') as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then IE_PPH end)' +
        ') as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then IE_PPH end)' +
        ') as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'Union all'
      #9'select ScanDate,DepName,GXLB,'#39'5.Qty'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then Qty end)) as' +
        ' '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then Qty end)) as' +
        ' '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then Qty end)) as' +
        ' '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then Qty end)) a' +
        's '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then Qty end)) a' +
        's '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then Qty end)) a' +
        's '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then Qty end)) a' +
        's '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then Qty end)) a' +
        's '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then Qty end)) a' +
        's '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then Qty end)) a' +
        's '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then Qty end)) a' +
        's '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then Qty end)) a' +
        's '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then Qty end)) a' +
        's '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then Qty end)) a' +
        's '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB'
      #9'union all'
      #9'select ScanDate,DepName,GXLB,'#39'6.Workers'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then dv_dilam end' +
        ')) as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then dv_dilam end' +
        ')) as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then dv_dilam end' +
        ')) as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then dv_dilam en' +
        'd)) as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then dv_dilam en' +
        'd)) as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then dv_dilam en' +
        'd)) as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then dv_dilam en' +
        'd)) as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then dv_dilam en' +
        'd)) as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then dv_dilam en' +
        'd)) as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then dv_dilam en' +
        'd)) as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then dv_dilam en' +
        'd)) as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then dv_dilam en' +
        'd)) as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then dv_dilam en' +
        'd)) as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then dv_dilam en' +
        'd)) as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'union all'
      #9'select ScanDate,DepName,GXLB,'#39'7.ProdWorkers'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then CQQty end)) ' +
        'as '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then CQQty end)) ' +
        'as '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then CQQty end)) ' +
        'as '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then CQQty end))' +
        ' as '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then CQQty end))' +
        ' as '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then CQQty end))' +
        ' as '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then CQQty end))' +
        ' as '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then CQQty end))' +
        ' as '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then CQQty end))' +
        ' as '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then CQQty end))' +
        ' as '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then CQQty end))' +
        ' as '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=18 then CQQty end))' +
        ' as '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=19 then CQQty end))' +
        ' as '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=20 then CQQty end))' +
        ' as '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB '#9
      #9'union all'
      #9'select ScanDate,DepName,GXLB,'#39'8.POH'#39' as SB'
      
        #9#9',convert(varchar,Max(case when TimeGroupID=7 then PPH end)) as' +
        ' '#39'7'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=8 then PPH end)) as' +
        ' '#39'8'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=9 then PPH end)) as' +
        ' '#39'9'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=10 then PPH end)) a' +
        's '#39'10'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=11 then PPH end)) a' +
        's '#39'11'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=12 then PPH end)) a' +
        's '#39'12'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=13 then PPH end)) a' +
        's '#39'13'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=14 then PPH end)) a' +
        's '#39'14'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=15 then PPH end)) a' +
        's '#39'15'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=16 then PPH end)) a' +
        's '#39'16'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then PPH end)) a' +
        's '#39'17'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then PPH end)) a' +
        's '#39'18'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then PPH end)) a' +
        's '#39'19'#39' '
      
        #9#9',convert(varchar,Max(case when TimeGroupID=17 then PPH end)) a' +
        's '#39'20'#39' '
      #9'from ('
      
        #9'select ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,Sum(Qty) ' +
        'as Qty,Round(Convert(float,Sum(Qty))/CQQty/minut,4) as PPH,Avg(I' +
        'E_PPH) as IE_PPH,Avg(IE_Qty) as IE_Qty,Avg(IE_Peo) as  IE_Peo,dv' +
        '_dilam '
      
        #9#9'   ,(select A.Article+'#39':'#39'+Convert(varchar,A.Qty)+'#39','#39' from #Per' +
        'hourPPH A where A.TimeGroupID=#PerhourPPH.TimeGroupID and A.Scan' +
        'Date=#PerhourPPH.ScanDate '
      
        '      and A.DepName=#PerhourPPH.DepName  and A.GXLB=#PerhourPPH.' +
        'GXLB  Group by A.Article,A.Qty for XML Path ('#39#39') ) as Article'
      #9'from #PerhourPPH'
      
        #9'Group by ScanDate,DepName,GXLB,TimeGroupID,CQQty,StdQty,minut,d' +
        'v_dilam '
      #9') PerhourPPH'
      #9'Group by ScanDate,DepName,GXLB'
      ') PerhourPPH'
      'order by ScanDate,DepName,GXLB,SB'
      '')
    Left = 112
    Top = 288
    object Query1ScanDate: TStringField
      DisplayWidth = 10
      FieldName = 'ScanDate'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      DisplayWidth = 15
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1GXLB: TStringField
      DisplayWidth = 3
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object Query1SB: TStringField
      DisplayWidth = 9
      FieldName = 'SB'
      FixedChar = True
      Size = 9
    end
    object Query1BDEDesigner7: TStringField
      DisplayWidth = 12
      FieldName = '7'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner8: TStringField
      DisplayWidth = 12
      FieldName = '8'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner9: TStringField
      DisplayWidth = 13
      FieldName = '9'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner10: TStringField
      DisplayWidth = 12
      FieldName = '10'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner11: TStringField
      DisplayWidth = 13
      FieldName = '11'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner12: TStringField
      DisplayWidth = 11
      FieldName = '12'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner13: TStringField
      DisplayWidth = 12
      FieldName = '13'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner14: TStringField
      DisplayWidth = 13
      FieldName = '14'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner15: TStringField
      DisplayWidth = 13
      FieldName = '15'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner16: TStringField
      DisplayWidth = 14
      FieldName = '16'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner17: TStringField
      DisplayWidth = 13
      FieldName = '17'
      FixedChar = True
      Size = 30
    end
    object Query1BDEDesigner18: TStringField
      FieldName = '18'
      FixedChar = True
      Size = 100
    end
    object Query1BDEDesigner19: TStringField
      FieldName = '19'
      FixedChar = True
      Size = 100
    end
    object Query1BDEDesigner20: TStringField
      FieldName = '20'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 256
  end
  object query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select case when IE_PPH>=1.5 then 1'
      '            when IE_PPH>=1.25 and IE_PPH<1.5 then 2'
      '            when IE_PPH>=1.13 and IE_PPH<1.25 then 3'
      '            when IE_PPH>=1.0 and IE_PPH<1.13 then 4'
      '            when IE_PPH>=0.86 and IE_PPH<1.0 then 5'
      '            when IE_PPH>=0.75 and IE_PPH<0.86 then 6'
      '            when IE_PPH>=0.61 and IE_PPH<0.75 then 7'
      '            when IE_PPH<=0.61 then 8 end IE_T2'
      
        ',SMZL.DAOMH,SMZL.Article,SMZL.IE_PPH,SMZL.ScanDate,SMZL.TimeGrou' +
        'pID,SMZL.DepName,Round((SMZL.Qty/Convert(float,SMZL.CQQty)/IsNul' +
        'l(SCSJDV.minut,1)),4) as PPH,Qty as Quantity from('
      
        'select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartmen' +
        't.ID,BDepartment.DepName,SMDDSS.GXLB'
      
        ',case when Max(DDZL.ordermode) in ('#39'MU'#39','#39'NU'#39') then  '#39' '#39'+SMDD.Art' +
        'icle when Max(DDZL.ordermode) in ('#39'TN'#39') then  '#39'  '#39'+SMDD.Article ' +
        'else SMDD.Article end as Article'
      ',SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeGroupID,'
      
        'RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) / Count' +
        '(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,SCXXCL.POH a' +
        's IE_PPH,XXZL.DAOMH'
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/11/21 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      
        'left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=conv' +
        'ert(varchar,SMZL.ScanDate,111)'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL' +
        '.Shehao'
      
        'left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL))' +
        ' as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '(Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZ' +
        'JS),4)) as POH from SCXXCL'
      
        'Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DDZL.XieXing ' +
        'and SCXXCL.SheHao=DDZL.SheHao'
      'left join ('
      
        'select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZ' +
        'L.ScanDate))-0)/60 as TimeGroupID,Qty as Quantity '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/11/21 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'where SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/11/20 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/11/20 23:59:59'#39')  '
      
        'and SMDDSS.DDBH like '#39'%'#39' and BDepartment.DepName like '#39'%'#39' and BD' +
        'epartment.YN=1 '
      'and SMDDSS.GXLB='#39'A'#39' ) SMZLT on SMZLT.SMNO=SMZL.SMNO'
      'where BDepartment.DepName like '#39'%'#39' and BDepartment.YN=1'
      'and SMDDSS.DDBH like '#39'%'#39
      'and SMDDSS.GXLB='#39'A'#39
      'and DDZL.GSBH='#39'VA12'#39' '
      'and SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/11/20 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/11/20 23:59:59'#39')  '
      
        'group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartm' +
        'ent.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeG' +
        'roupID,RSCQ.CQQty,SCXXCL.POH,XXZL.DAOMH ) SMZL'
      
        'Left join SCSJDV on SCSJDV.ID=SMZL.ID and SCSJDV.hors=TimeGroupI' +
        'D')
    Left = 260
    Top = 289
    object query2IE_T2: TIntegerField
      FieldName = 'IE_T2'
    end
    object query2DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 22
    end
    object query2IE_PPH: TFloatField
      FieldName = 'IE_PPH'
    end
    object query2ScanDate: TStringField
      FieldName = 'ScanDate'
      FixedChar = True
      Size = 30
    end
    object query2TimeGroupID: TIntegerField
      FieldName = 'TimeGroupID'
    end
    object query2DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object query2PPH: TFloatField
      FieldName = 'PPH'
    end
    object query2Quantity: TIntegerField
      FieldName = 'Quantity'
    end
  end
  object DataSource2: TDataSource
    DataSet = query2
    Left = 260
    Top = 257
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 404
    Top = 260
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select Article,Sum(PPH) as PPH,Count(PPH) as PPH_Cnt,Round(Avg(P' +
        'PH),4) as PPH_Avg,Max(IE_PPH) as IE_PPH,Max(IE_T2) as IE_T2 from' +
        ' ('
      'select SMZL.*,'
      '       case when IE_PPH>=1.5 then 1'
      '            when IE_PPH>=1.25 and IE_PPH<1.5 then 2'
      '            when IE_PPH>=1.13 and IE_PPH<1.25 then 3'
      '            when IE_PPH>=1.0 and IE_PPH<1.13 then 4'
      '            when IE_PPH>=0.86 and IE_PPH<1.0 then 5'
      '            when IE_PPH>=0.75 and IE_PPH<0.86 then 6'
      '            when IE_PPH>=0.61 and IE_PPH<0.75 then 7'
      '            when IE_PPH<=0.61 then 8 end IE_T2    '
      'from ( '
      
        'select convert(varchar,SMZL.ScanDate,111) as ScanDate,BDepartmen' +
        't.ID,BDepartment.DepName,SMDDSS.GXLB'
      
        '       ,case when Max(DDZL.ordermode) in ('#39'MU'#39','#39'NU'#39') then  '#39' '#39'+S' +
        'MDD.Article when Max(DDZL.ordermode) in ('#39'TN'#39') then  '#39'  '#39'+SMDD.A' +
        'rticle else SMDD.Article end as Article'
      
        '       ,SMDD.XieMing,sum(SMZL.CTS*SMDDSS.Qty) as Qty,SMZLT.TimeG' +
        'roupID,'
      
        '       RSCQ.CQQty,Round(Convert(float,sum(SMZL.CTS*SMDDSS.Qty)) ' +
        '/ Count(distinct SMZLT.TimeGroupID) / RSCQ.CQQty,4) as PPH,'
      '       SCXXCL.POH as IE_PPH,XXZL.DAOMH'
      '                '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/05/29 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      
        'left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXL' +
        'B '
      
        'left join RSCQ on RSCQ.DepNO=BDepartment.ID and RSCQ.RSDate=conv' +
        'ert(varchar,SMZL.ScanDate,111)'
      'left join DDZL on DDZL.DDBH=SMDD.YSBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.Shehao=DDZL' +
        '.Shehao'
      
        'left join (Select XieXing,SheHao,Max(Convert(float,SCXXCL.BZCL))' +
        ' as IEQty,Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,'
      
        '                  (Round(Max(Convert(float,SCXXCL.BZCL))/Sum(SCX' +
        'XCL.BZRS+SCXXCL.BZJS),4)) as POH '
      '           from SCXXCL '
      
        '           Group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=DD' +
        'ZL.XieXing and SCXXCL.SheHao=DDZL.SheHao           '
      'left join ('
      
        'select SMZL.SMNO,((datename(hh,SMZL.ScanDate)*60+datename(mi,SMZ' +
        'L.ScanDate))-0)/60 as TimeGroupID '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/05/29 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'where SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/05/28 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/05/28 23:59:59'#39')  '
      
        '      and SMDDSS.DDBH like '#39'%'#39' and BDepartment.DepName like '#39'%'#39' ' +
        'and BDepartment.YN=1 '
      '      and SMDDSS.GXLB='#39'B'#39' '
      ' ) SMZLT on SMZLT.SMNO=SMZL.SMNO'
      'where BDepartment.DepName like '#39'%'#39' and BDepartment.YN=1 '
      '      and SMDDSS.DDBH like '#39'%'#39
      '      and SMDDSS.GXLB='#39'B'#39
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/05/28 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/05/28 23:59:59'#39')  '
      
        'group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB,BDepartm' +
        'ent.ID,BDepartment.DepName,SMDD.Article,SMDD.XieMing,SMZLT.TimeG' +
        'roupID,RSCQ.CQQty,SCXXCL.POH,XXZL.DAOMH '
      ') SMZL  ) SMZL'
      'Group by Article')
    Left = 404
    Top = 292
    object Query3Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 22
    end
    object Query3PPH: TFloatField
      FieldName = 'PPH'
    end
    object Query3PPH_Cnt: TIntegerField
      FieldName = 'PPH_Cnt'
    end
    object Query3PPH_Avg: TFloatField
      FieldName = 'PPH_Avg'
    end
    object Query3IE_PPH: TFloatField
      FieldName = 'IE_PPH'
    end
    object Query3IE_T2: TIntegerField
      FieldName = 'IE_T2'
    end
  end
  object PerhourPPHQry: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select SCGS from  #PerhourPPH where ScanDate=:ScanDate and DepNa' +
        'me=:DepName')
    Left = 152
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ScanDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DepName'
        ParamType = ptUnknown
      end>
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39') '
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39'192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\s' +
        'ql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908
      ''
      'set ansi_nulls on '
      'set ansi_warnings on')
    Left = 72
    Top = 216
  end
end
