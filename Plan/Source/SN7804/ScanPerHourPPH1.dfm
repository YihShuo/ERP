object ScanPerHourPPH: TScanPerHourPPH
  Left = 295
  Top = 291
  Width = 1027
  Height = 489
  Caption = 'ScanPerHourPPH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1019
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 30
      Width = 44
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 240
      Top = 29
      Width = 33
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 0
      Top = 59
      Width = 94
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 200
      Top = 60
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNO:'
    end
    object Label5: TLabel
      Left = 396
      Top = 60
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GXLB:'
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
    object Label7: TLabel
      Left = 8
      Top = 1
      Width = 241
      Height = 25
      AutoSize = False
      Caption = #27599#23567#26178#29986#33021#35330#21934'POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 520
      Top = 60
      Width = 72
      Height = 16
      Caption = 'OrderMode:'
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 27
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
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
      Kind = dtkTime
      TabOrder = 1
    end
    object Button1: TButton
      Left = 656
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 95
      Top = 56
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 287
      Top = 56
      Width = 106
      Height = 24
      CharCase = ecUpperCase
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
      Kind = dtkTime
      TabOrder = 3
    end
    object CBX4: TComboBox
      Left = 458
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
    end
    object Button2: TButton
      Left = 744
      Top = 47
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button2Click
    end
    object CB1: TCheckBox
      Left = 833
      Top = 45
      Width = 176
      Height = 17
      Caption = 'RY=ZS%'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object OrdermodeCB: TComboBox
      Left = 595
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 10
      Items.Strings = (
        ''
        'NEW'
        'OLD')
    end
    object CB2: TCheckBox
      Left = 833
      Top = 65
      Width = 176
      Height = 17
      Caption = 'No Sample Room'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1019
    Height = 369
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
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
        FieldName = 'ScanDate'
        Footers = <>
        Title.Caption = #25475#25551#26085#26399'|ScanDate'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #29983#29986#21934#20301'|DepName'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.Caption = #24037#27573'|GXLB'
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
      end
      item
        EditButtons = <>
        FieldName = 'PHour'
        Footers = <>
        Title.Caption = #29983#29986#26178#27573'|PHour'
      end
      item
        EditButtons = <>
        FieldName = 'PTime'
        Footers = <>
        Title.Caption = #26178#25976'|PTime'
      end
      item
        EditButtons = <>
        FieldName = 'CQQty'
        Footers = <>
        Title.Caption = #30452#24037'|Workers'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'IE_PPH'
        Footers = <>
        Title.Caption = #27161#28310'POH|IE'
      end
      item
        EditButtons = <>
        FieldName = 'IE_T1'
        Footers = <>
        Title.Caption = #27161#28310'POH|'#32026#25976'(4)'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'IE_T2'
        Footers = <>
        Title.Caption = #27161#28310'POH|'#32026#25976'(8)'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'PPH'
        Footers = <>
        Title.Caption = #23526#38555'POH|'#29983#29986
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'T1'
        Footers = <>
        Title.Caption = #23526#38555'POH|'#32026#25976'(4)'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = #23526#38555'POH|'#32026#25976'(8)'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #26028#20992'|DAOMH'
        Width = 109
      end>
  end
  object HourRep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select ScanDate,DepName,YSBH,Article,DAOMH,Qty,XieMing,GXLB,PHou' +
        'r,PTime,CQQty,PPH,'
      '       case when PPH >=1.25 then 1'
      '            when PPH >=1.0 and PPH< 1.25 then 2'
      '            when PPH >= 0.75 and PPH<1.0 then 3'
      '            when PPH<0.75 then 4 end as T1,'
      '       case when PPH>=1.5 then 1'
      '            when PPH>=1.25 and PPH<1.5 then 2'
      '            when PPH>=1.13 and PPH<1.25 then 3'
      '            when PPH>=1.0 and PPH<1.13 then 4'
      '            when PPH>=0.86 and PPH<1.0 then 5'
      '            when PPH>=0.75 and PPH<0.86 then 6'
      '            when PPH>=0.61 and PPH<0.75 then 7'
      '            when PPH<=0.61 then 8 end T2,IE_PPH,'
      '       case when IE_PPH >=1.25 then 1'
      '            when IE_PPH >=1.0 and IE_PPH<1.25 then 2'
      '            when IE_PPH >= 0.75 and IE_PPH<1.0 then 3'
      '            when IE_PPH<0.75 then 4 end as IE_T1,'
      '       case when IE_PPH>=1.5 then 1'
      '            when IE_PPH>=1.25 and IE_PPH<1.5 then 2'
      '            when IE_PPH>=1.13 and IE_PPH<1.25 then 3'
      '            when IE_PPH>=1.0 and IE_PPH<1.13 then 4'
      '            when IE_PPH>=0.86 and IE_PPH<1.0 then 5'
      '            when IE_PPH>=0.75 and IE_PPH<0.86 then 6'
      '            when IE_PPH>=0.61 and IE_PPH<0.75 then 7'
      '            when IE_PPH<=0.61 then 8 end IE_T2     '
      ' from ('
      
        'select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,C' +
        'QQty,Sum(Qty) as Qty'
      
        '     ,Convert(varchar(3),Min( SMZL.TimeGroupID)) +'#39'~'#39'+ Convert(v' +
        'archar(3),Max(SMZL.TimeGroupID )) as PHour ,Sum(mintus) as PTime' +
        ' '
      '     ,Round( sum(Qty) /  Sum(mintus) / CQQty,4) as PPH'
      '    from ('
      
        'select ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH,IE_PPH,T' +
        'imeGroupID,mintus,CQQty,sum(CTS)*Qty as Qty from ('
      
        'select convert(varchar,SMZL.ScanDate,111) as ScanDate,SMDD.YSBH,' +
        'BDepartment.DepName,SMDDSS.GXLB,SMDD.Article,SMDD.XieMing,XXZL.D' +
        'AOMH,'
      '       SMZL.CTS,SMDDSS.Qty,'
      
        '       RSCQ.CQQty,SCXXCL.POH as IE_PPH,SMZLT.TimeGroupID,SMZLT.m' +
        'intus     '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/10/04 00:00:00'#39' union all select SMNO,CODEBAR,' +
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
      'select SMZL.*,SCSJDV.mintus from ('
      
        'select SMZL.SMNO,SMZL.DepNo,((datename(hh,SMZL.ScanDate)*60+date' +
        'name(mi,SMZL.ScanDate))-0)/60 as TimeGroupID '
      
        'from (select SMNO,CODEBAR,CTS,DepNO,ScanDate from SMZL where SMZ' +
        'L.ScanDate>='#39'2018/10/04 00:00:00'#39' union all select SMNO,CODEBAR,' +
        'CTS,DepNO,ScanDate from SMZLOld) SMZL'
      'left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar'
      'left join BDepartment on Bdepartment.ID=SMZL.DepNo'
      'where SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/10/03 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/10/03 23:59:59'#39')  '
      
        '      and SMDDSS.DDBH like '#39'%'#39' and BDepartment.DepName like '#39'A1_' +
        'LEAN1-01_G%'#39
      '      and SMDDSS.GXLB='#39'A'#39
      '      and SMDDSS.DDBH not like '#39'ZS%'#39') SMZL'
      
        'Left join SCSJDV on SCSJDV.ID=SMZL.DepNo and SCSJDV.hors=SMZL.Ti' +
        'meGroupID      '
      '        ) SMZLT on SMZLT.SMNO=SMZL.SMNO'
      'where BDepartment.DepName like '#39'A1_LEAN1-01_G%'#39
      '      and BDepartment.YN=1 '
      '      and SMDDSS.DDBH like '#39'%'#39
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and SMDDSS.GXLB='#39'A'#39
      '      and SMZL.ScanDate between '
      
        '          convert(smalldatetime,'#39'2018/10/03 00:00:00'#39') and conve' +
        'rt(smalldatetime,'#39'2018/10/03 23:59:59'#39')  '
      
        ') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH' +
        ',IE_PPH,TimeGroupID,mintus,Qty,CQQty'
      
        ') SMZL group by ScanDate,YSBH,DepName,GXLB,Article,XieMing,DAOMH' +
        ',IE_PPH,CQQty'
      ') SMDDSS  order by Depname')
    Left = 392
    Top = 120
    object HourRepScanDate: TStringField
      DisplayWidth = 9
      FieldName = 'ScanDate'
      FixedChar = True
      Size = 30
    end
    object HourRepDepName: TStringField
      DisplayWidth = 15
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object HourRepYSBH: TStringField
      DisplayWidth = 11
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object HourRepArticle: TStringField
      DisplayWidth = 9
      FieldName = 'Article'
      FixedChar = True
    end
    object HourRepQty: TIntegerField
      DisplayWidth = 4
      FieldName = 'Qty'
    end
    object HourRepGXLB: TStringField
      DisplayWidth = 5
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object HourRepXieMing: TStringField
      DisplayWidth = 21
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object HourRepPHour: TStringField
      DisplayWidth = 7
      FieldName = 'PHour'
      FixedChar = True
      Size = 7
    end
    object HourRepCQQty: TIntegerField
      DisplayWidth = 6
      FieldName = 'CQQty'
    end
    object HourRepPPH: TFloatField
      DisplayWidth = 5
      FieldName = 'PPH'
    end
    object HourRepT1: TIntegerField
      FieldName = 'T1'
    end
    object HourRepT2: TIntegerField
      FieldName = 'T2'
    end
    object HourRepIE_PPH: TFloatField
      DisplayWidth = 8
      FieldName = 'IE_PPH'
    end
    object HourRepIE_T1: TIntegerField
      FieldName = 'IE_T1'
    end
    object HourRepIE_T2: TIntegerField
      FieldName = 'IE_T2'
    end
    object HourRepDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object HourRepPTime: TFloatField
      FieldName = 'PTime'
    end
  end
  object DS1: TDataSource
    DataSet = HourRep
    Left = 360
    Top = 120
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 184
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
