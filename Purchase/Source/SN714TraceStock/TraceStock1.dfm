object TraceStock: TTraceStock
  Left = 386
  Top = 225
  Width = 1399
  Height = 675
  Caption = 'Trace Stock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
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
    Width = 1383
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
      Left = 16
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
    object Label5: TLabel
      Left = 15
      Top = 44
      Width = 72
      Height = 16
      Caption = 'SampleOrd:'
    end
    object lbl1: TLabel
      Left = 221
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
      Left = 224
      Top = 44
      Width = 39
      Height = 16
      Caption = 'Stage:'
    end
    object Label3: TLabel
      Left = 392
      Top = 11
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 539
      Top = 11
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object EditMatNo: TEdit
      Left = 91
      Top = 8
      Width = 110
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
    object EditSampleOrd: TEdit
      Left = 91
      Top = 40
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 406
      Top = 37
      Width = 65
      Height = 28
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object EditSeason: TEdit
      Left = 272
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
      TabOrder = 3
    end
    object edt2: TEdit
      Left = 272
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
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 440
      Top = 8
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 560
      Top = 8
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object chk1: TCheckBox
      Left = 343
      Top = 11
      Width = 58
      Height = 16
      Caption = 'Time'
      TabOrder = 7
    end
    object Button2: TButton
      Left = 472
      Top = 37
      Width = 75
      Height = 28
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 77
    Width = 1383
    Height = 559
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
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
        FieldName = 'ypdh'
        Footers = <>
        Title.Caption = 'SampleOrderNo'
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
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.TitleButton = True
        Width = 103
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
      end
      item
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'UseStock|Qty Use Stock'
      end
      item
        EditButtons = <>
        FieldName = 'QtyIn'
        Footers = <>
        Title.Caption = 'Stock In Qty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'QtyOut'
        Footers = <>
        Title.Caption = 'Stock Out Qty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footers = <>
        Title.Caption = 'Left Over'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
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
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' FROM YPZLS'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh'
      ''
      
        'left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from K' +
        'CRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.c' +
        'ldh and kcrks.CGBH=ypzl.ypdh'#9
      ''
      ''
      
        'left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCB' +
        'H from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.' +
        'CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      ''
      
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
      '                and cs.Stage='#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=yp' +
        'zls.clbh and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where clzl.clzmlb='#39'N'#39' '
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and YPZLS.CLBH like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      
        ' group by ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM , clzl.' +
        'dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,KFXXZL.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut'
      ' UNION ALL'
      
        'select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM ' +
        'as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as cl' +
        'sl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.Samp' +
        'lePurchaser,BUSERS.USERNAME as SamplePurchaser_Name'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' FROM YPZLS'
      ' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      ''
      ''
      ''
      
        ' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SC' +
        'BH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS' +
        '.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        ' LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND' +
        ' LBZLS.LB='#39'05'#39
      ' LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        ' left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      
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
      ' and cs.Stage = '#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where CLZHZL.syl<>0 and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut'
      'UNION ALL'
      
        'select temp.ypdh,temp.devcode,CLZHZL.CLDH1 AS CLBH,temp.CLMC,tem' +
        'p.dwbh,temp.clsl,temp.cgqty,temp.clbhys,temp.qty,temp.ZSYWJC,tem' +
        'p.CLZMLB,temp.jijie,temp.fd,temp.kfjd,temp.xieming,'
      
        '       temp.recs,temp.cgdate,temp.yqdate,temp.ETA,temp.cgno,temp' +
        '.SamplePurchaser,temp.SamplePurchaser_Name,temp.USERID,temp.USER' +
        'DATE, temp.QtyIn, temp.QtyOut, (QtyIn - QtyOut) as Total'
      
        'From (select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL' +
        '.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity)' +
        ' as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty,ZSZL.ZSYWJC,CLZL.CL' +
        'ZMLB,'
      
        '             kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.' +
        'recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,' +
        'BUSERS.USERNAME as SamplePurchaser_Name,cgkcuse.USERID,cgkcuse.U' +
        'SERDATE,KCRKS.Qty as QtyIn,QtyOut,(KCRKS.Qty - QtyOut) as Total'
      '      FROM YPZLS'
      '      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '      left join ypzl on ypzl.ypdh=ypzls.ypdh'
      '      LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      '      LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      ''
      ''
      ''
      
        #9' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.S' +
        'CBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLL' +
        'S.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        '      LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbd' +
        'h AND LBZLS.LB='#39'05'#39
      '      LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        '      LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurch' +
        'aser FROM ZSZL_DEV where GSBH='#39'CDC'#39' GROUP BY ZSDH) ZSZL_VN on ZS' +
        'ZL_VN.ZSDH=CLZHZL.ZSDH'
      
        #9'  left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as Qty from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      
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
      ' and cs.Stage = '#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      '     where CLZHZL.syl<>0 and clzl.clzmlb='#39'Y'#39' '
      '   and ypzl.kfjd = '#39'CR1'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '   and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE, KCRKS.Qty, QtyOut)temp inner ' +
        'join clzhzl ON  temp.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'where CLZHZL.SYL<>0   and clzl.clzmlb='#39'N'#39' '
      '  and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      ' UNION ALL'
      
        'select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,C' +
        'LZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.q' +
        'ty, '
      
        '  '#39'CANCEL'#39' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfj' +
        'd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,cgkc' +
        'use.USERID as SamplePurchaser,BUSERS.USERNAME as SamplePurchaser' +
        '_Name'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' from cgkcuse'
      ' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH'
      ' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH'
      ''
      
        ' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SC' +
        'BH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS' +
        '.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        ' left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      ''
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
      '                 and cs.stage = '#39'CR1'#39
      '             group by cs.clbh,cs.stage,cs.zlbh'
      
        '           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd a' +
        'nd cg.zlbh=kfxxzl.devcode '
      ' where cgkcuse.gsbh='#39'R&D'#39' and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and CGKCUSE.CLBH like '#39'%D020002682%'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and not exists'
      '      ( select * from '
      '           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  '
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '             and ypzl.kfjd = '#39'CR1'#39
      '             and YPZLS.CLBH like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '             and kfxxzl.jijie = '#39'25S'#39
      '            UNION ALL'
      '            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS'
      '            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '              and ypzl.kfjd = '#39'CR1'#39
      '              and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '              and kfxxzl.jijie = '#39'25S'#39
      '             GROUP BY CLZHZL.cldh1,YPZL.YPDH   '
      
        '          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZL' +
        'BH '
      '     ) ')
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
    object Query1QtyIn: TFloatField
      FieldName = 'QtyIn'
    end
    object Query1QtyOut: TFloatField
      FieldName = 'QtyOut'
    end
    object Query1Total: TFloatField
      FieldName = 'Total'
    end
    object Query1qty: TFloatField
      FieldName = 'qty'
    end
  end
  object qrUsestock: TQuery
    DatabaseName = 'DB'
    Left = 488
    Top = 158
  end
  object QryTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM as CLMC, c' +
        'lzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqt' +
        'y,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.Samp' +
        'lePurchaser,BUSERS.USERNAME as SamplePurchaser_Name'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' FROM YPZLS'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh'
      ''
      
        'left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from K' +
        'CRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.c' +
        'ldh and kcrks.CGBH=ypzl.ypdh'#9
      ''
      ''
      
        'left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCB' +
        'H from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.' +
        'CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      ''
      
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
      '                and cs.Stage='#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=yp' +
        'zls.clbh and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where clzl.clzmlb='#39'N'#39' '
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and YPZLS.CLBH like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      
        ' group by ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM , clzl.' +
        'dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,KFXXZL.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut'
      ' UNION ALL'
      
        'select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM ' +
        'as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as cl' +
        'sl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.Samp' +
        'lePurchaser,BUSERS.USERNAME as SamplePurchaser_Name'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' FROM YPZLS'
      ' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      ' left join ypzl on ypzl.ypdh=ypzls.ypdh'
      ' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      ' LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      ''
      ''
      ''
      
        ' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SC' +
        'BH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS' +
        '.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        ' LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND' +
        ' LBZLS.LB='#39'05'#39
      ' LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        ' left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      
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
      ' and cs.Stage = '#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      ' where CLZHZL.syl<>0 and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut'
      'UNION ALL'
      
        'select temp.ypdh,temp.devcode,CLZHZL.CLDH1 AS CLBH,temp.CLMC,tem' +
        'p.dwbh,temp.clsl,temp.cgqty,temp.clbhys,temp.qty,temp.ZSYWJC,tem' +
        'p.CLZMLB,temp.jijie,temp.fd,temp.kfjd,temp.xieming,'
      
        '       temp.recs,temp.cgdate,temp.yqdate,temp.ETA,temp.cgno,temp' +
        '.SamplePurchaser,temp.SamplePurchaser_Name,temp.USERID,temp.USER' +
        'DATE, temp.QtyIn, temp.QtyOut, (QtyIn - QtyOut) as Total'
      
        'From (select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL' +
        '.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity)' +
        ' as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty,ZSZL.ZSYWJC,CLZL.CL' +
        'ZMLB,'
      
        '             kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.' +
        'recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,' +
        'BUSERS.USERNAME as SamplePurchaser_Name,cgkcuse.USERID,cgkcuse.U' +
        'SERDATE,KCRKS.Qty as QtyIn,QtyOut,(KCRKS.Qty - QtyOut) as Total'
      '      FROM YPZLS'
      '      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '      left join ypzl on ypzl.ypdh=ypzls.ypdh'
      '      LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh'
      '      LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      ''
      ''
      ''
      
        #9' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.S' +
        'CBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLL' +
        'S.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        '      LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbd' +
        'h AND LBZLS.LB='#39'05'#39
      '      LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH'
      
        '      LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurch' +
        'aser FROM ZSZL_DEV where GSBH='#39'CDC'#39' GROUP BY ZSDH) ZSZL_VN on ZS' +
        'ZL_VN.ZSDH=CLZHZL.ZSDH'
      
        #9'  left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as Qty from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      
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
      ' and cs.Stage = '#39'CR1'#39
      
        '             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CL' +
        'ZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode '
      '     where CLZHZL.syl<>0 and clzl.clzmlb='#39'Y'#39' '
      '   and ypzl.kfjd = '#39'CR1'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '   and kfxxzl.jijie = '#39'25S'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and zszlfilter.zsdh is null'
      ' and clzlfilter.cldh is null'
      
        ' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clz' +
        'l.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, '
      
        ' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl' +
        '.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqd' +
        'ate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE, KCRKS.Qty, QtyOut)temp inner ' +
        'join clzhzl ON  temp.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'where CLZHZL.SYL<>0   and clzl.clzmlb='#39'N'#39' '
      '  and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      ' UNION ALL'
      
        'select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,C' +
        'LZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.q' +
        'ty, '
      
        '  '#39'CANCEL'#39' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfj' +
        'd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,cgkc' +
        'use.USERID as SamplePurchaser,BUSERS.USERNAME as SamplePurchaser' +
        '_Name'
      
        ' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut)' +
        ' as Total'
      ' from cgkcuse'
      ' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH'
      ' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH'
      ''
      
        ' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SC' +
        'BH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS' +
        '.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH'
      ''
      
        ' left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from ' +
        'KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.' +
        'cldh and kcrks.CGBH=ypzl.ypdh'
      ''
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
      '                 and cs.stage = '#39'CR1'#39
      '             group by cs.clbh,cs.stage,cs.zlbh'
      
        '           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd a' +
        'nd cg.zlbh=kfxxzl.devcode '
      ' where cgkcuse.gsbh='#39'R&D'#39' and clzl.clzmlb='#39'N'#39' '
      ' and ypzl.kfjd = '#39'CR1'#39
      ' and CGKCUSE.CLBH like '#39'%D020002682%'#39
      ' and kfxxzl.jijie = '#39'25S'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      
        'and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))' +
        '  between '
      #39'2024/04/20'#39' and  '#39'2024/05/08'#39
      ' and not exists'
      '      ( select * from '
      '           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  '
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '             and ypzl.kfjd = '#39'CR1'#39
      '             and YPZLS.CLBH like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '             and kfxxzl.jijie = '#39'25S'#39
      '            UNION ALL'
      '            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS'
      '            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh'
      '            left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and ' +
        'kfxxzl.shehao=YPZL.shehao'
      '            where clzl.clzmlb='#39'N'#39' '
      '              and ypzl.kfjd = '#39'CR1'#39
      '              and CLZHZL.CLDH1 like '#39'%D020002682%'#39
      '                and ypzl.YPDH='#39'LAIK240300223'#39
      '              and kfxxzl.jijie = '#39'25S'#39
      '             GROUP BY CLZHZL.cldh1,YPZL.YPDH   '
      
        '          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZL' +
        'BH '
      '     ) '
      ' ')
    Left = 376
    Top = 160
  end
end
