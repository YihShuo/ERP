object CheckingReport: TCheckingReport
  Left = 328
  Top = 290
  Width = 1305
  Height = 675
  Caption = 'Daily Assembling Checking Report'
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
    Width = 1289
    Height = 61
    Align = alTop
    Caption = 'MA Defect'
    Color = clBlack
    TabOrder = 0
    object Label5: TLabel
      Left = 29
      Top = 21
      Width = 51
      Height = 25
      Caption = 'DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 195
      Top = 17
      Width = 9
      Height = 25
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 339
      Top = 20
      Width = 51
      Height = 25
      Caption = 'LEAN'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 587
      Top = 20
      Width = 95
      Height = 25
      Caption = 'BUILDING'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button1: TButton
      Left = 779
      Top = 10
      Width = 82
      Height = 38
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 871
      Top = 9
      Width = 76
      Height = 40
      Caption = 'Report'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 85
      Top = 15
      Width = 108
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 206
      Top = 15
      Width = 106
      Height = 32
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 27
      Width = 17
      Height = 17
      Caption = 'CheckBox1'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object edtLine: TEdit
      Left = 392
      Top = 15
      Width = 191
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditXuong: TEdit
      Left = 687
      Top = 14
      Width = 76
      Height = 33
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGrdh1: TDBGridEh
    Left = 0
    Top = 61
    Width = 1289
    Height = 575
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Depname'
        Footers = <>
        Width = 139
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Title.Caption = 'Process'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Defect'
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = '7-8'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '9-10'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '11-12'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '13-14'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '15-16'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '17-18'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = '19-20'
        Footers = <>
      end>
  end
  object WOPR_AE: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select *from ('
      'select Depname,SCBH,GXLB,YYBH,YWSM,Total'
      ',isnull(sum(case  when NHour in ('#39'7'#39','#39'8'#39')'
      ' then Qty  end),0) as '#39'7-8'#39
      ',isnull(sum(case  when NHour in ('#39'9'#39','#39'10'#39')'
      ' then Qty  end),0) as '#39'9-10'#39
      ',isnull(sum(case  when NHour in ('#39'11'#39','#39'12'#39')'
      ' then Qty  end),0) as '#39'11-12'#39
      ',isnull(sum(case  when NHour in ('#39'13'#39','#39'14'#39')'
      ' then Qty  end),0) as '#39'13-14'#39
      ' ,isnull(sum(case  when NHour in ('#39'15'#39','#39'16'#39')'
      ' then Qty  end),0) as '#39'15-16'#39
      ' ,isnull(sum(case  when NHour in ('#39'17'#39','#39'18'#39')'
      ' then Qty  end),0) as '#39'17-18'#39
      ' ,isnull(sum(case  when NHour in ('#39'19'#39','#39'20'#39')'
      ' then Qty  end),0) as '#39'19-20'#39
      ''
      
        'from (select BDepartment.Depname,QCR_AE.SCBH,QCR_AE.GXLB,QCRD_AE' +
        '.YYBH,QCBLYY.ZWSM as YWSM'
      
        '      ,QCT.Qty as Total,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_' +
        'AE.userdate) as NHour'
      '      from QCRD_AE'
      #9'  left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      
        #9'  left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH ' +
        '= QCBLYY.GSBH'
      #9'  left join bdepartment on bdepartment.id=QCR_AE.depno'
      
        #9'  left join (select QCR_AE.Depno,QCR_AE.SCBH,QCRD_AE.YYBH,sum(Q' +
        'CRD_AE.qty) as Qty'
      #9#9#9#9' from QCRD_AE'
      #9#9'         left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      #9#9#9'     left join bdepartment on bdepartment.id=QCR_AE.depno'
      
        #9#9#9#9' left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSB' +
        'H = QCBLYY.GSBH'
      
        '                 where  convert(smalldatetime,convert(varchar,QC' +
        'R_AE.USERDATE,111)) between '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      #9'   '#9#9'     and QCR_AE.GSBH ='#39'VA12'#39
      '                 and (  QCR_AE.GXLB = '#39'AE'#39')'
      #9#9#9'     and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      
        #9#9#9#9' group by QCR_AE.Depno,QCRD_AE.YYBH,QCR_AE.SCBH) as QCT on Q' +
        'CR_AE.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH and QCR_AE.SC' +
        'BH=QCT.SCBH'
      
        'where  convert(smalldatetime,convert(varchar,QCR_AE.USERDATE,111' +
        ')) between  '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      'and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      'and QCR_AE.GSBH ='#39'VA12'#39
      'and (  QCR_AE.GXLB = '#39'AE'#39')'
      
        'group by QCR_AE.SCBH,BDepartment.Depname,QCR_AE.GXLB,QCRD_AE.YYB' +
        'H,qcblyy.zwsm,QCT.Qty,datepart(hh,QCR_AE.userdate) ) QCR group b' +
        'y Depname,SCBH,GXLB,YYBH,YWSM,Total'
      'union '
      'select Depname,SCBH,GXLB,YYBH,YWSM,Total'
      ',isnull(sum(case  when NHour in ('#39'7'#39','#39'8'#39')'
      ' then Qty  end),0) as '#39'7-8'#39
      ',isnull(sum(case  when NHour in ('#39'9'#39','#39'10'#39')'
      ' then Qty  end),0) as '#39'9-10'#39
      ',isnull(sum(case  when NHour in ('#39'11'#39','#39'12'#39')'
      ' then Qty  end),0) as '#39'11-12'#39
      ',isnull(sum(case  when NHour in ('#39'13'#39','#39'14'#39')'
      ' then Qty  end),0) as '#39'13-14'#39
      ' ,isnull(sum(case  when NHour in ('#39'15'#39','#39'16'#39')'
      ' then Qty  end),0) as '#39'15-16'#39
      ' ,isnull(sum(case  when NHour in ('#39'17'#39','#39'18'#39')'
      ' then Qty  end),0) as '#39'17-18'#39
      ' ,isnull(sum(case  when NHour in ('#39'19'#39','#39'20'#39')'
      ' then Qty  end),0) as '#39'19-20'#39
      
        'from (select BDepartment.Depname,'#39#39' as SCBH,QCR_AE.GXLB,'#39'Z1'#39' as ' +
        'YYBH,'#39'Bi-Hour Defect_Total'#39' as ywsm,QCT.Qty  as Total'
      #9' ,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_AE.userdate) as NHour'
      '     from QCRD_AE'
      '     left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      
        '     left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSB' +
        'H = QCBLYY.GSBH'
      '     left join bdepartment on bdepartment.id=QCR_AE.depno'
      
        '     left join (select QCR_AE.Depno,QCR_AE.GXLB,sum(QCRD_AE.qty)' +
        ' as Qty'
      #9#9'        from QCRD_AE'
      #9#9'        left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      #9#9'        left join bdepartment on bdepartment.id=QCR_AE.depno'
      
        #9#9'        left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_A' +
        'E.GSBH = QCBLYY.GSBH'
      
        '                where  convert(smalldatetime,convert(varchar,QCR' +
        '_AE.USERDATE,111)) between '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      #9'   '#9'        and QCR_AE.GSBH ='#39'VA12'#39' and (  QCR_AE.GXLB = '#39'AE'#39')'
      #9#9'        and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      
        #9#9'        group by QCR_AE.Depno,QCR_AE.GXLB) as QCT on QCR_AE.De' +
        'pNo = QCT.DepNo and QCR_AE.GXLB=QCT.GXLB --and QCR_AE.SCBH=QCT.S' +
        'CBH'
      
        'where  convert(smalldatetime,convert(varchar,QCR_AE.USERDATE,111' +
        ')) between '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      
        'and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39' and QCR_AE.GSBH ='#39 +
        'VA12'#39
      'and (  QCR_AE.GXLB = '#39'AE'#39')'
      
        'group by BDepartment.Depname,QCT.Qty,QCR_AE.GXLB,datepart(hh,QCR' +
        '_AE.userdate) ) QCR group by Depname,SCBH,GXLB,YYBH,YWSM,Total'
      'union '
      'select Depname,SCBH,GXLB,YYBH,YWSM,Total'
      ',isnull(sum(case  when NHour in ('#39'7'#39','#39'8'#39')'
      ' then Qty  end),0) as '#39'7-8'#39
      ',isnull(sum(case  when NHour in ('#39'9'#39','#39'10'#39')'
      ' then Qty  end),0) as '#39'9-10'#39
      ',isnull(sum(case  when NHour in ('#39'11'#39','#39'12'#39')'
      ' then Qty  end),0) as '#39'11-12'#39
      ',isnull(sum(case  when NHour in ('#39'13'#39','#39'14'#39')'
      ' then Qty  end),0) as '#39'13-14'#39
      ' ,isnull(sum(case  when NHour in ('#39'15'#39','#39'16'#39')'
      ' then Qty  end),0) as '#39'15-16'#39
      ' ,isnull(sum(case  when NHour in ('#39'17'#39','#39'18'#39')'
      ' then Qty  end),0) as '#39'17-18'#39
      ' ,isnull(sum(case  when NHour in ('#39'19'#39','#39'20'#39')'
      ' then Qty  end),0) as '#39'19-20'#39
      
        'from (select BDepartment.DepName,'#39#39' as SCBH,'#39'AE'#39' as GXLB ,'#39'Z2'#39' a' +
        's YYBH,'#39'Output'#39' as ywsm,PerDay.TotQty as Total,sum(SMZL.CTS*SMDD' +
        'SS.Qty) as Qty,datepart(Hour,SMZL.ScanDate) as NHour '
      #9' from SMZL '
      '     left join BDepartment on BDepartment.ID=SMZL.DepNO '
      '     left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR '
      
        '     left join (select convert(varchar,SMZL.ScanDate,111) as Dat' +
        'es,BDepartment.ID as DepNo,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) ' +
        'as TotQty '
      '                from SMZL '
      
        '                left join BDepartment on BDepartment.ID=SMZL.Dep' +
        'NO '
      '                left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR '
      '                where BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      '                and BDepartment.ID like '#39'%%'#39
      '                and BDepartment.GSBH='#39'VA12'#39
      '                and SMDDSS.GXLB='#39'A'#39
      
        '                and SMZL.ScanDate between convert(smalldatetime,' +
        #39'2023/10/02 00:00:00'#39') and convert(smalldatetime,'#39'2023/10/02 23:' +
        '59:59'#39') '
      
        '                group by convert(varchar,SMZL.ScanDate,111),SMDD' +
        'SS.GXLB,BDepartment.ID ) PerDay on PerDay.DepNO=BDepartment.ID a' +
        'nd PerDay.GXLB='#39'A'#39' and PerDay.Dates=convert(varchar,SMZL.ScanDat' +
        'e,111)'
      'where  BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      'and BDepartment.ID like '#39'%%'#39
      'and BDepartment.GSBH='#39'VA12'#39
      'and SMDDSS.GXLB='#39'A'#39
      
        'and SMZL.ScanDate between convert(smalldatetime,'#39'2023/10/02 00:0' +
        '0:00'#39') and convert(smalldatetime,'#39'2023/10/02 23:59:59'#39') '
      
        'group by convert(varchar,SMZL.ScanDate,111),datepart(Hour,SMZL.S' +
        'canDate),BDepartment.DepName,PerDay.TotQty ) SMZL group by Depna' +
        'me,SCBH,GXLB,YYBH,YWSM,Total'
      'union '
      'select T1.Depname,'#39#39' as SCBH ,T1.GXLB,'#39'Z3'#39' as YYBH,T1.ywsm'
      
        ',case when isnull(T2.Total,0)<>0 then (Round(Max(Convert(float,i' +
        'snull(T2.Total,0)-isnull(T1.Total,0)))/isnull(T2.Total,0)*100,2)' +
        ') end Total'
      
        ',case when isnull(T2.[7-8],0)<>0 then (Round(Max(Convert(float,i' +
        'snull(T2.[7-8],0)-isnull(T1.[7-8],0)))/isnull(T2.[7-8],0)*100,2)' +
        ') end '#39'7-8'#39
      
        ',case when isnull(T2.[9-10],0)<>0 then (Round(Max(Convert(float,' +
        'isnull(T2.[9-10],0)-isnull(T1.[9-10],0)))/isnull(T2.[9-10],0)*10' +
        '0,2)) end '#39'9-10'#39
      
        ',case when isnull(T2.[11-12],0)<>0 then (Round(Max(Convert(float' +
        ',isnull(T2.[11-12],0)-isnull(T1.[11-12],0)))/isnull(T2.[11-12],0' +
        ')*100,2)) end '#39'11-12'#39
      
        ',case when isnull(T2.[13-14],0)<>0 then (Round(Max(Convert(float' +
        ',isnull(T2.[13-14],0)-isnull(T1.[13-14],0)))/isnull(T2.[13-14],0' +
        ')*100,2)) end '#39'13-14'#39
      
        ',case when isnull(T2.[15-16],0)<>0 then (Round(Max(Convert(float' +
        ',isnull(T2.[15-16],0)-isnull(T1.[15-16],0)))/isnull(T2.[15-16],0' +
        ')*100,2)) end '#39'15-16'#39
      
        ',case when isnull(T2.[17-18],0)<>0 then (Round(Max(Convert(float' +
        ',isnull(T2.[17-18],0)-isnull(T1.[15-16],0)))/isnull(T2.[17-18],0' +
        ')*100,2)) end '#39'17-18'#39
      
        ',case when isnull(T2.[19-20],0)<>0 then (Round(Max(Convert(float' +
        ',isnull(T2.[19-20],0)-isnull(T1.[19-20],0)))/isnull(T2.[19-20],0' +
        ')*100,2)) end '#39'19-20'#39
      'from ('
      #9'  select Depname,DepNo,GXLB,YYBH,YWSM,Total'
      #9'  ,isnull(sum(case  when NHour in ('#39'7'#39','#39'8'#39')'
      #9'  then Qty  end),0) as '#39'7-8'#39
      '       ,isnull(sum(case  when NHour in ('#39'9'#39','#39'10'#39')'
      #9'  then Qty  end),0) as '#39'9-10'#39
      '      ,isnull(sum(case  when NHour in ('#39'11'#39','#39'12'#39')'
      '      then Qty  end),0) as '#39'11-12'#39
      '      ,isnull(sum(case  when NHour in ('#39'13'#39','#39'14'#39')'
      '      then Qty  end),0) as '#39'13-14'#39
      '      ,isnull(sum(case  when NHour in ('#39'15'#39','#39'16'#39')'
      '      then Qty  end),0) as '#39'15-16'#39
      '      ,isnull(sum(case  when NHour in ('#39'17'#39','#39'18'#39')'
      '      then Qty  end),0) as '#39'17-18'#39
      '      ,isnull(sum(case  when NHour in ('#39'19'#39','#39'20'#39')'
      '      then Qty  end),0) as '#39'19-20'#39
      
        #9'  from (select QCR_AE.DepNo,BDepartment.Depname,QCR_AE.GXLB,'#39'Z1' +
        #39' as YYBH,'#39'Pass rate'#39' as ywsm,QCT.Qty  as Total'
      
        #9'        ,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_AE.userdate) a' +
        's NHour'
      #9#9#9'from QCRD_AE'
      #9#9#9'left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      
        #9#9#9'left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH ' +
        '= QCBLYY.GSBH'
      #9#9#9'left join bdepartment on bdepartment.id=QCR_AE.depno'
      
        #9#9#9'left join (select QCR_AE.Depno,QCR_AE.GXLB,sum(QCRD_AE.qty) a' +
        's Qty'
      #9#9#9#9#9'   from QCRD_AE'
      #9#9'               left join QCR_AE on QCR_AE.prono= QCRD_AE.prono'
      
        #9#9'               left join bdepartment on bdepartment.id=QCR_AE.' +
        'depno'
      
        #9#9'               left join qcblyy on qcblyy.yybh=QCRD_AE.yybh an' +
        'd QCR_AE.GSBH = QCBLYY.GSBH'
      
        '                       where  convert(smalldatetime,convert(varc' +
        'har,QCR_AE.USERDATE,111)) between '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      
        #9'   '#9'               and QCR_AE.GSBH ='#39'VA12'#39' and (  QCR_AE.GXLB =' +
        ' '#39'AE'#39')'
      #9#9'               and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      
        #9#9'               group by QCR_AE.Depno,QCR_AE.GXLB) as QCT on QC' +
        'R_AE.DepNo = QCT.DepNo and QCR_AE.GXLB=QCT.GXLB'
      
        '             where  convert(smalldatetime,convert(varchar,QCR_AE' +
        '.USERDATE,111)) between '#39'2023/10/2'#39' and '#39'2023/10/2'#39
      
        '             and BDepartment.DepName like '#39'%A07_LEAN04_G%'#39' and Q' +
        'CR_AE.GSBH ='#39'VA12'#39
      '             and (  QCR_AE.GXLB = '#39'AE'#39')'
      
        'group by QCR_AE.Depno,BDepartment.Depname,QCT.Qty,QCR_AE.GXLB,da' +
        'tepart(hh,QCR_AE.userdate) ) QCR group by Depname,Depno,GXLB,YYB' +
        'H,YWSM,Total ) T1'
      ''
      'left join '
      #9'    (select Depname,ID,SCBH,GXLB,YYBH,YWSM,Total'
      #9#9',isnull(sum(case  when NHour in ('#39'7'#39','#39'8'#39')'
      #9'    then Qty  end),0) as '#39'7-8'#39
      '        ,isnull(sum(case  when NHour in ('#39'9'#39','#39'10'#39')'
      #9'   then Qty  end),0) as '#39'9-10'#39
      '       ,isnull(sum(case  when NHour in ('#39'11'#39','#39'12'#39')'
      '       then Qty  end),0) as '#39'11-12'#39
      '       ,isnull(sum(case  when NHour in ('#39'13'#39','#39'14'#39')'
      '       then Qty  end),0) as '#39'13-14'#39
      '       ,isnull(sum(case  when NHour in ('#39'15'#39','#39'16'#39')'
      '       then Qty  end),0) as '#39'15-16'#39
      '       ,isnull(sum(case  when NHour in ('#39'17'#39','#39'18'#39')'
      '       then Qty  end),0) as '#39'17-18'#39
      '       ,isnull(sum(case  when NHour in ('#39'19'#39','#39'20'#39')'
      '       then Qty  end),0) as '#39'19-20'#39
      
        #9#9'from (select BDepartment.DepName,BDepartment.ID,'#39#39' as SCBH,'#39'AE' +
        #39' as GXLB ,'#39'Z2'#39' as YYBH,'#39'Output'#39' as ywsm,PerDay.TotQty as Total,' +
        'sum(SMZL.CTS*SMDDSS.Qty) as Qty,datepart(Hour,SMZL.ScanDate) as ' +
        'NHour '
      #9#9#9'  from SMZL '
      #9#9#9'  left join BDepartment on BDepartment.ID=SMZL.DepNO '
      #9#9#9'  left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR '
      ''
      
        #9#9#9'  left join (select convert(varchar,SMZL.ScanDate,111) as Dat' +
        'es,BDepartment.ID as DepNo,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) ' +
        'as TotQty '
      '                         from SMZL '
      
        '                         left join BDepartment on BDepartment.ID' +
        '=SMZL.DepNO '
      
        '                         left join SMDDSS on SMDDSS.CODEBAR=SMZL' +
        '.CODEBAR '
      
        '                         where BDepartment.DepName like '#39'%A07_LE' +
        'AN04_G%'#39
      '                         and BDepartment.ID like '#39'%%'#39
      '                         and BDepartment.GSBH='#39'VA12'#39
      '                         and SMDDSS.GXLB='#39'A'#39
      
        '                         and SMZL.ScanDate between convert(small' +
        'datetime,'#39'2023/10/02 00:00:00'#39') and convert(smalldatetime,'#39'2023/' +
        '10/02 23:59:59'#39') '
      
        '                        group by convert(varchar,SMZL.ScanDate,1' +
        '11),SMDDSS.GXLB,BDepartment.ID ) PerDay on PerDay.DepNO=BDepartm' +
        'ent.ID and PerDay.GXLB='#39'A'#39' and PerDay.Dates=convert(varchar,SMZL' +
        '.ScanDate,111)'
      '              where  BDepartment.DepName like '#39'%A07_LEAN04_G%'#39
      '              and BDepartment.ID like '#39'%%'#39
      '              and BDepartment.GSBH='#39'VA12'#39
      '              and SMDDSS.GXLB='#39'A'#39
      
        '              and SMZL.ScanDate between convert(smalldatetime,'#39'2' +
        '023/10/02 00:00:00'#39') and convert(smalldatetime,'#39'2023/10/02 23:59' +
        ':59'#39') '
      
        '              group by convert(varchar,SMZL.ScanDate,111),datepa' +
        'rt(Hour,SMZL.ScanDate),BDepartment.DepName,PerDay.TotQty,BDepart' +
        'ment.ID ) SMZL group by Depname,ID,SCBH,GXLB,YYBH,YWSM,Total ) T' +
        '2 on T1.DepNo =T2.ID '
      
        'group by T1.DepNo,T1.Depname,T1.GXLB,T1.ywsm,T1.Total,T2.Total,T' +
        '2.[7-8],T1.[7-8],T1.[9-10],T2.[9-10],T1.[11-12],T2.[11-12],T1.[1' +
        '3-14],T2.[13-14],T1.[15-16],T2.[15-16]'
      ',T1.[17-18],T2.[17-18],T1.[19-20],T2.[19-20]'
      ' ) as QCC'
      'order by qcc.DepName,QCC.YYBH'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 304
    Top = 264
    object WOPR_AEDepname: TStringField
      FieldName = 'Depname'
      FixedChar = True
      Size = 50
    end
    object WOPR_AESCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object WOPR_AEGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 10
    end
    object WOPR_AEYYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object WOPR_AEYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object WOPR_AETotal: TFloatField
      FieldName = 'Total'
    end
    object WOPR_AEBDEDesigner78: TFloatField
      FieldName = '7-8'
    end
    object WOPR_AEBDEDesigner910: TFloatField
      FieldName = '9-10'
    end
    object WOPR_AEBDEDesigner1112: TFloatField
      FieldName = '11-12'
    end
    object WOPR_AEBDEDesigner1314: TFloatField
      FieldName = '13-14'
    end
    object WOPR_AEBDEDesigner1516: TFloatField
      FieldName = '15-16'
    end
    object WOPR_AEBDEDesigner1718: TFloatField
      FieldName = '17-18'
    end
    object WOPR_AEBDEDesigner1920: TFloatField
      FieldName = '19-20'
    end
  end
  object DataSource1: TDataSource
    DataSet = WOPR_AE
    Left = 304
    Top = 296
  end
end
