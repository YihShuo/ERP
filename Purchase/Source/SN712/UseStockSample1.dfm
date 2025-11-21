object UseStockSample: TUseStockSample
  Left = 199
  Top = 163
  Width = 1380
  Height = 554
  Caption = 'UseStockSample'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1913
    Height = 77
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 144
      Top = 12
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 543
      Top = 12
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label2: TLabel
      Left = 273
      Top = 12
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 143
      Top = 44
      Width = 44
      Height = 16
      Caption = 'Pur No:'
    end
    object Label7: TLabel
      Left = 282
      Top = 44
      Width = 53
      Height = 16
      Caption = 'Supplier:'
    end
    object lbl1: TLabel
      Left = 429
      Top = 12
      Width = 50
      Height = 16
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 440
      Top = 44
      Width = 39
      Height = 16
      Caption = 'Stage:'
    end
    object lbl3: TLabel
      Left = 562
      Top = 44
      Width = 21
      Height = 16
      Caption = 'FD:'
    end
    object Label4: TLabel
      Left = 10
      Top = 12
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Label6: TLabel
      Left = 1
      Top = 44
      Width = 55
      Height = 16
      Caption = 'Category'
    end
    object Edit3: TEdit
      Left = 585
      Top = 8
      Width = 144
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object EDIT1: TEdit
      Left = 187
      Top = 8
      Width = 78
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
    object Edit2: TEdit
      Left = 337
      Top = 8
      Width = 86
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 187
      Top = 40
      Width = 78
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 337
      Top = 40
      Width = 87
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
    object CheckBox1: TCheckBox
      Left = 943
      Top = 35
      Width = 178
      Height = 17
      Caption = 'only Selection to Excel'
      TabOrder = 5
      Visible = False
    end
    object Button1: TButton
      Left = 662
      Top = 37
      Width = 65
      Height = 28
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 999
      Top = 4
      Width = 47
      Height = 28
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 936
      Top = 4
      Width = 57
      Height = 28
      Caption = 'PRINT'
      TabOrder = 8
      Visible = False
      OnClick = Button2Click
    end
    object chk1: TCheckBox
      Left = 735
      Top = 7
      Width = 194
      Height = 17
      Caption = 'FD cancel but still use stock'
      TabOrder = 9
    end
    object edt1: TEdit
      Left = 480
      Top = 8
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object edt2: TEdit
      Left = 480
      Top = 40
      Width = 58
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object edt3: TEdit
      Left = 585
      Top = 40
      Width = 72
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object cbb2: TComboBox
      Left = 60
      Top = 8
      Width = 80
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        ''
        'Inline'
        'SMU')
    end
    object cbb1: TComboBox
      Left = 60
      Top = 40
      Width = 80
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Items.Strings = (
        ''
        'Sports'
        'Originals')
    end
    object chk2: TCheckBox
      Left = 735
      Top = 28
      Width = 195
      Height = 17
      Caption = 'Only Show Purchase Material'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object chk3: TCheckBox
      Left = 736
      Top = 51
      Width = 195
      Height = 17
      Caption = 'Only Show UseStock Material'
      TabOrder = 16
    end
    object CKBSel: TCheckBox
      Left = 944
      Top = 54
      Width = 127
      Height = 17
      Caption = 'Selected Only'
      TabOrder = 17
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 77
    Width = 1913
    Height = 828
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'jijie'
        Footers = <
          item
            FieldName = 'jijie'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'Season'
        Title.TitleButton = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'kfjd'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Stage'
        Title.TitleButton = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SR#'
        Title.TitleButton = True
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'fd'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'FD'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mal. No'
        Title.TitleButton = True
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CLMC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material'
        Title.TitleButton = True
        Width = 350
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'clsl'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Require Qty'
        Title.TitleButton = True
        Width = 49
      end
      item
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'cgqty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur Qty'
        Title.TitleButton = True
        Width = 54
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'clbhys'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Substitude'
        Title.TitleButton = True
        Width = 55
      end
      item
        Color = 11927551
        DisplayFormat = '0.0'
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UseStock'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'cgno'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur. NO'
        Title.TitleButton = True
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.TitleButton = True
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'SamplePurchaser'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Purchaser|ID'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Purchaser|Name'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'UseStock|User ID'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = 'UseStock|User Date'
        Width = 66
      end>
  end
  object Panel2: TPanel
    Left = 1592
    Top = 80
    Width = 321
    Height = 825
    Caption = 'Panel2'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 319
      Height = 823
      Align = alClient
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = 14822282
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Lines.Strings = (
        '----------------------------------------'
        #31243#24335#20027#35201#21151#33021#35498#26126
        ''
        #20027#35201#29992#26044#35352#37636#20351#29992#30340#24235#23384#27171#26412
        ''
        '----------------------------------------'
        #36039#26009#31721#36984#25805#20316#35498#26126
        ''
        'DEV Tp: '#30740#30332#25216#34899#21253#35065
        'Mat No: '#26448#26009#21934#34399
        'Category: '#39006#22411
        'PurNo: '#25505#36092#21934#34399
        'MatName: '#26448#26009#21517#31281
        'Supplier: '#20379#25033#21830
        'FD: '#38283#30332#21729
        ''
        '----------------------------------------'
        #37325#40670#27396#20301#35498#26126
        ''
        'Stage: '#38283#30332#38542#27573
        'SR#: '#38795#23376#22411#39636#21517#31281
        'Material: '#26448#26009
        'Unit: '#21934#20301
        #8594#21508#21934#20301#35036#20805
        '/BAG: '#21253' /BOX: '#30418'/GRN: '#31890' '
        '/KGS: '#20844#26020' /M: '#20844#23610' / PC: '#25903' '
        '/PCE: '#24373' / PRS: '#38617' /ROLL: '#21367
        '/SET: '#22871' /SHT: '#29255' / SQF: '#21582' '
        '/SQM: '#24179#31859' /YRD: '#30908
        'Require Qty: '#35201#27714#25976#37327
        'Pur Qty: '#25505#36092#25976#37327
        'Substitude: '#26367#20195
        'Usesyock: '#20351#29992#24235#23384
        'purchaser'#8594' ID: '#25505#36092#20154#21729#32232#34399
        'purchaser'#8594' NAME: '#25505#36092#20154#21729#21517#31281
        'Usestock'#8594' UserID: '#38936#26009#24235#23384#20154#21729#32232#34399
        'Usestock'#8594' UserDate: '#38936#26009#24235#23384#26178#38291
        '----------------------------------------')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 192
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM as CLMC, c' +
        'lzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqt' +
        'y,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.Samp' +
        'lePurchaser,BUSERS.USERNAME as SamplePurchaser_Name'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE'
      ' FROM YPZLS'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh'
      
        ' LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND L' +
        'BZLS.LB='#39'05'#39
      ' LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLS.CSBH'
      
        ' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser ' +
        'FROM ZSZL_DEV where GSBH='#39'CDC'#39' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN' +
        '.ZSDH=YPZLS.CSBH'
      ' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  '
      ' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh'
      ' left join clzlfilter on clzlfilter.cldh=ypzls.clbh'
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=yp' +
        'zls.clbh'
      
        ' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.sheh' +
        'ao=YPZL.shehao'
      
        ' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0' +
        ')) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, ' +
        'min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cg' +
        'no) as cgno from cgzlss cs'
      '             left join cgzl on cgzl.cgno=cs.cgno'
      
        '             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clb' +
        'h=cs.clbh'
      '             where cgzl.CGLX='#39'6'#39' '
      '                and cs.Stage='#39'CR2'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=yp' +
        'zls.clbh and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where clzl.clzmlb='#39'N'#39' '
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      ' and ypzl.kfjd = '#39'CR2'#39
      ' and kfxxzl.jijie = '#39'19S'#39
      
        ' group by ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM , clzl.' +
        'dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,KFXXZL.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE'
      ' UNION ALL'
      
        'select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM ' +
        'as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as cl' +
        'sl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.Samp' +
        'lePurchaser,BUSERS.USERNAME as SamplePurchaser_Name'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE'
      ' FROM YPZLS'
      ' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      
        ' LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND' +
        ' LBZLS.LB='#39'05'#39
      ' LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        ' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser ' +
        'FROM ZSZL_DEV where GSBH='#39'CDC'#39' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN' +
        '.ZSDH=CLZHZL.ZSDH'
      ' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  '
      
        ' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=CL' +
        'ZHZL.CLDH1'
      
        ' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.sheh' +
        'ao=YPZL.shehao'
      ' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh'
      ' left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1'
      
        ' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0' +
        ')) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, ' +
        'min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cg' +
        'no) as cgno from cgzlss cs'
      '             left join cgzl on cgzl.cgno=cs.cgno'
      
        '             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clb' +
        'h=cs.clbh'
      '             where cgzl.CGLX='#39'6'#39' '
      ' and cs.Stage = '#39'CR2'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where CLZHZL.syl<>0 and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR2'#39
      ' and kfxxzl.jijie = '#39'19S'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE'
      'UNION ALL'
      
        'select temp.ypdh,temp.devcode,CLZHZL.CLDH1 AS CLBH,temp.CLMC,tem' +
        'p.dwbh,temp.clsl,temp.cgqty,temp.clbhys,temp.qty,temp.ZSYWJC,tem' +
        'p.CLZMLB,temp.jijie,temp.fd,temp.kfjd,temp.xieming,'
      
        '       temp.recs,temp.cgdate,temp.yqdate,temp.ETA,temp.cgno,temp' +
        '.SamplePurchaser,temp.SamplePurchaser_Name,temp.USERID,temp.USER' +
        'DATE'
      
        'From (select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL' +
        '.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity)' +
        ' as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty,ZSZL.ZSYWJC,CLZL.CL' +
        'ZMLB,'
      
        '             kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.' +
        'recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,' +
        'BUSERS.USERNAME as SamplePurchaser_Name,cgkcuse.USERID,cgkcuse.U' +
        'SERDATE'
      '      FROM YPZLS'
      '      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '      left join ypzl on ypzl.ypdh=ypzls.ypdh'
      '      LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      '      LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      
        '      LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbd' +
        'h AND LBZLS.LB='#39'05'#39
      '      LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        '      LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurch' +
        'aser FROM ZSZL_DEV where GSBH='#39'CDC'#39' GROUP BY ZSDH) ZSZL_VN on ZS' +
        'ZL_VN.ZSDH=CLZHZL.ZSDH'
      
        '      left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser' +
        '  '
      
        '      left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.cl' +
        'bh=CLZHZL.CLDH1'
      
        '      left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl' +
        '.shehao=YPZL.shehao'
      '      left join zszlfilter on zszlfilter.zsdh=ypzls.csbh'
      '      left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1'
      
        '      left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.' +
        'qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgd' +
        'ate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgz' +
        'ls.cgno) as cgno from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39' '
      ' and cs.Stage = '#39'CR2'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      '     where CLZHZL.syl<>0 and clzl.clzmlb='#39'Y'#39' '
      '   and ypzl.kfjd = '#39'CR2'#39
      '   and kfxxzl.jijie = '#39'19S'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE)temp inner join clzhzl ON  tem' +
        'p.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'where CLZHZL.SYL<>0   and clzl.clzmlb='#39'N'#39' '
      ' UNION ALL'
      
        'select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,C' +
        'LZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.q' +
        'ty, '
      
        '  '#39'CANCEL'#39' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfj' +
        'd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,cgkc' +
        'use.USERID as SamplePurchaser,BUSERS.USERNAME as SamplePurchaser' +
        '_Name'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE'
      ' from cgkcuse'
      ' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH'
      ' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH'
      ' left join BUSERS  on BUSERS.USERID=cgkcuse.USERID  '
      
        ' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.sheh' +
        'ao=YPZL.shehao'
      
        ' left join (select cs.clbh,cs.stage,cs.zlbh, sum(isnull(cs.qty,0' +
        ')) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, ' +
        'min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cg' +
        'no) as cgno from cgzlss cs'
      '             left join cgzl on cgzl.cgno=cs.cgno'
      
        '             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clb' +
        'h=cs.clbh'
      '             where cgzl.CGLX='#39'6'#39' '
      '                 and cs.stage = '#39'CR2'#39
      '             group by cs.clbh,cs.stage,cs.zlbh'
      
        '           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd a' +
        'nd cg.zlbh=kfxxzl.devcode '
      ' where cgkcuse.gsbh='#39'R&D'#39' and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR2'#39
      ' and kfxxzl.jijie = '#39'19S'#39
      ' and not exists'
      '      ( select * from '
      '           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  '
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '             and ypzl.kfjd = '#39'CR2'#39
      '             and kfxxzl.jijie = '#39'19S'#39
      '            UNION ALL'
      '            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS'
      '            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '              and ypzl.kfjd = '#39'CR2'#39
      '              and kfxxzl.jijie = '#39'19S'#39
      '             GROUP BY CLZHZL.cldh1,YPZL.YPDH   '
      
        '          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZL' +
        'BH '
      '     ) ')
    UpdateObject = UpSql1
    Left = 424
    Top = 160
    object strngfldQuery1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object strngfldQuery1CLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object strngfldQuery1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object fltfldQuery1clsl: TFloatField
      FieldName = 'clsl'
    end
    object crncyfldQuery1qty: TCurrencyField
      FieldName = 'qty'
    end
    object strngfldQuery1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object strngfldQuery1CLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object strngfldQuery1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object strngfldQuery1fd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object strngfldQuery1kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object strngfldQuery1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object intgrfldQuery1recs: TIntegerField
      FieldName = 'recs'
    end
    object dtmfldQuery1cgdate: TDateTimeField
      FieldName = 'cgdate'
    end
    object dtmfldQuery1yqdate: TDateTimeField
      FieldName = 'yqdate'
    end
    object dtmfldQuery1ETA: TDateTimeField
      FieldName = 'ETA'
    end
    object strngfldQuery1cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object crncyfldQuery1cgqty: TCurrencyField
      FieldName = 'cgqty'
    end
    object strngfldQuery1clbhys: TStringField
      FieldName = 'clbhys'
      FixedChar = True
      Size = 15
    end
    object strngfldQuery1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1SamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
    object Query1SamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object UpSql1: TUpdateSQL
    Left = 424
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 568
    Top = 200
    object S1: TMenuItem
      Caption = 'Modify'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S3Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 392
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 539
    Top = 160
  end
  object qrUsestock: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 158
  end
end
