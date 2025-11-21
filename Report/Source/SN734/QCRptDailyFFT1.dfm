object QCRptDailyFFT: TQCRptDailyFFT
  Left = 268
  Top = 228
  Width = 1305
  Height = 675
  Caption = 'QCRptDailyFFT'
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
    Width = 1297
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object RefreshLabel: TLabel
      Left = 304
      Top = 16
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 20
      Width = 32
      Height = 16
      Caption = 'Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 167
      Top = 19
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Button1: TButton
      Left = 584
      Top = 8
      Width = 75
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 392
      Top = 0
      Width = 185
      Height = 49
      Caption = 'Defect Issue'
      TabOrder = 1
      object RB1: TRadioButton
        Left = 8
        Top = 24
        Width = 73
        Height = 17
        Caption = 'English'
        TabOrder = 0
      end
      object RB2: TRadioButton
        Left = 88
        Top = 24
        Width = 89
        Height = 17
        Caption = 'VietName'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object TDate: TDateTimePicker
      Left = 48
      Top = 16
      Width = 105
      Height = 24
      Date = 41712.328943414350000000
      Time = 41712.328943414350000000
      TabOrder = 2
    end
    object DepNameEdit: TEdit
      Left = 240
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object Button2: TButton
      Left = 672
      Top = 8
      Width = 75
      Height = 41
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1297
    Height = 587
    Align = alClient
    DataSource = DS
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
        FieldName = 'DepName'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'C'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'S'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'A'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'AR'
        Footers = <>
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'FTT'
        Footer.FieldName = 'FTT'
        Footer.ValueType = fvtAvg
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'Daily_Defect'
        Footers = <>
        Width = 192
      end
      item
        EditButtons = <>
        FieldName = 'Hourly_Defect'
        Footers = <>
        Title.Caption = 'Last Hourly_Defect'
        Width = 207
      end>
  end
  object FFTQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FTT.sumline,'
      'Case '
      
        'when SubString(FTT.Sumline,4,1)='#39'L'#39' then SubString(FTT.Sumline,1' +
        ',3)+'#39'-LEAN'#39'+SubString(FTT.Sumline,5,2)+'#39'-'#39'+SubString(FTT.Sumline' +
        ',7,2) '
      
        'when SubString(FTT.Sumline,4,1)='#39'B'#39' then SubString(FTT.Sumline,1' +
        ',3)+'#39'-L'#39'+SubString(FTT.Sumline,5,2)+'#39'-'#39'+SubString(FTT.Sumline,7,' +
        '2)  '
      'end as DepName, '
      'sum(case when GXLB = '#39'C'#39' then Qty end) as '#39'C'#39', '
      'sum(case when GXLB = '#39'S'#39' then Qty end) as '#39'S'#39', '
      'sum(case when GXLB = '#39'A'#39' then Qty end) as '#39'A'#39', '
      'sum(case when GXLB = '#39'AR'#39' then Qty end) as '#39'AR'#39', '
      'power(10.0000,sum(LOG10(QTY*0.01)))*100 as '#39'FTT'#39', '
      
        #39'                                                               ' +
        '            '#39' as Daily_Defect,'#39'                                 ' +
        '                            '#39' as Hourly_Defect '
      
        'from(select WOPRB.DepNo,WOPRB.DepName,WOPRB.sumline,Replace(WOPR' +
        'B.GXLB,'#39'C+S'#39','#39'S'#39') as GXLB,'#39'4.Pass%'#39' as SB, '
      
        #9#9'    Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*' +
        '100),2) as Qty,WOPRB.NDay '
      
        #9' from(select WOPR.DepNo,BDepartment.DepName,BDepartment.sumline' +
        ',WOPR.GXLB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty '
      #9#9#9#9' ,DATEPART(DAY,WOPR.USERDATE) as NDay'
      #9#9'  from WOPR '
      #9#9'  left join BDepartment on WOPR.DepNo = BDepartment.ID '
      
        ' '#9#9'  where convert(smalldatetime,WOPR.USERDATE,111) between '#39'201' +
        '4/03/12'#39' and '#39'2014/03/13'#39' '
      #9#9#9#9'and WOPR.GSBH ='#39'VA12'#39' and WOPR.GXLB in ('#39'A'#39','#39'AR'#39','#39'C'#39','#39'C+S'#39') '
      
        #9#9'  group by WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,' +
        'WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)) as WOPRB '
      
        #9#9'  left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qt' +
        'y,DATEPART(DAY,WOPR.USERDATE) as NDay '
      #9#9#9#9#9' from WOPR'
      
        #9#9#9#9#9' where convert(smalldatetime,WOPR.USERDATE,111) between '#39'20' +
        '14/03/12'#39' and '#39'2014/03/13'#39' '
      
        #9#9#9#9#9#9'   and WOPR.GSBH = '#39'VA12'#39' and WOPR.GXLB in ('#39'A'#39','#39'AR'#39','#39'C'#39','#39 +
        'C+S'#39') '
      
        #9#9#9#9#9' group by WOPR.DepNo,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE))' +
        ' as QCRDB '
      
        #9#9#9#9#9#9#9'  on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXL' +
        'B and WOPRB.NDay = QCRDB.NDay'
      '     where WOPRB.sumline is not null) as FTT '
      'group by FTT.sumline '
      'order by FTT.sumline ')
    UpdateObject = FFTUpd
    Left = 64
    Top = 160
    object FFTQrysumline: TStringField
      FieldName = 'sumline'
      FixedChar = True
      Size = 8
    end
    object FFTQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
    end
    object FFTQryC: TFloatField
      FieldName = 'C'
    end
    object FFTQryS: TFloatField
      FieldName = 'S'
    end
    object FFTQryA: TFloatField
      FieldName = 'A'
    end
    object FFTQryAR: TFloatField
      FieldName = 'AR'
    end
    object FFTQryFTT: TFloatField
      FieldName = 'FTT'
    end
    object FFTQryDaily_Defect: TStringField
      FieldName = 'Daily_Defect'
      FixedChar = True
      Size = 100
    end
    object FFTQryHourly_Defect: TStringField
      FieldName = 'Hourly_Defect'
      FixedChar = True
      Size = 100
    end
  end
  object FFTUpd: TUpdateSQL
    ModifySQL.Strings = (
      'Update QC_RFT_DEP set'
      '   RFT=0'
      'where'
      '  1=2')
    Left = 64
    Top = 192
  end
  object DS: TDataSource
    DataSet = FFTQry
    Left = 104
    Top = 160
  end
  object YYBHQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Daily.sumline,Daily.YWSM as DYWSM,Daily.ZWSM as D_ZWSM,Ho' +
        'urly.YWSM as H_YWSM,Hourly.ZWSM as H_ZWSM from '
      '( '
      'select DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM '
      
        #9#9'   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH' +
        ' '
      #9#9#9'    from (select QCR_A.*,QCR_B.YYBH '
      #9#9#9#9'      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty '
      
        #9#9#9#9#9#9'   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max' +
        '(QCRD.Qty) as Qty '
      #9#9#9#9#9'            from QCR'
      #9#9#9#9#9#9#9'    left join QCRD on QCR.Prono=QCRD.Prono'
      #9#9#9#9#9#9#9#9'left join bdepartment on qcr.depno = bdepartment.ID'
      
        #9#9#9#9#9#9#9'    where convert(smalldatetime,QCR.USERDATE,111) between' +
        ' '#39'2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' '
      
        #9#9#9#9#9#9#9'    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as ' +
        'G_QCR'
      #9#9#9#9#9#9#9'    group by G_QCR.sumline) as QCR_A'
      
        #9#9#9'    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH' +
        ',Max(QCRD.Qty) as Qty '
      #9#9#9#9#9#9'   from QCR '
      #9#9#9#9#9#9'   left join QCRD on QCR.Prono=QCRD.Prono '
      #9#9#9#9#9#9'   left join bdepartment on qcr.depno = bdepartment.ID '
      
        #9#9#9#9#9#9'   where convert(smalldatetime,QCR.USERDATE,111) between '#39 +
        '2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39'  '
      
        #9#9#9#9#9#9'   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QC' +
        'R_B '
      
        #9#9#9#9#9#9#9#9'  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty' +
        ') as F_QCR '
      #9#9#9'    where F_QCR.sumline is not null '
      #9#9#9#9'group by F_QCR.sumline,F_QCR.Qty) as DAYQCR '
      
        #9#9'   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GS' +
        'BH = '#39'VA12'#39' '
      ') as Daily '
      'left join '
      '( '
      'select DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM '
      
        #9#9'   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH' +
        ' '
      #9#9#9'    from (select QCR_A.*,QCR_B.YYBH '
      #9#9#9#9'      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty '
      
        #9#9#9#9#9#9'   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max' +
        '(QCRD.Qty) as Qty '
      #9#9#9#9#9'            from QCR'
      #9#9#9#9#9#9#9'    left join QCRD on QCR.Prono=QCRD.Prono'
      #9#9#9#9#9#9#9#9'left join bdepartment on qcr.depno = bdepartment.ID'
      
        #9#9#9#9#9#9#9'    where convert(smalldatetime,QCR.USERDATE,111) between' +
        ' '#39'2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' and datepart(' +
        'HH,QCRD.userdate) = datepart(HH,getdate())-1 '
      
        #9#9#9#9#9#9#9'    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as ' +
        'G_QCR'
      #9#9#9#9#9#9#9'    group by G_QCR.sumline) as QCR_A'
      
        #9#9#9'    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH' +
        ',Max(QCRD.Qty) as Qty '
      #9#9#9#9#9#9'   from QCR '
      #9#9#9#9#9#9'   left join QCRD on QCR.Prono=QCRD.Prono '
      #9#9#9#9#9#9'   left join bdepartment on qcr.depno = bdepartment.ID '
      
        #9#9#9#9#9#9'   where convert(smalldatetime,QCR.USERDATE,111) between '#39 +
        '2014/03/12'#39' and '#39'2014/03/13'#39' and QCR.GSBH='#39'VA12'#39' and datepart(HH' +
        ',QCRD.userdate) = datepart(HH,getdate())-1 '
      
        #9#9#9#9#9#9'   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QC' +
        'R_B '
      
        #9#9#9#9#9#9#9#9'  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty' +
        ') as F_QCR '
      #9#9#9'    where F_QCR.sumline is not null '
      #9#9#9#9'group by F_QCR.sumline,F_QCR.Qty) as DAYQCR '
      
        #9#9'   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GS' +
        'BH = '#39'VA12'#39' '
      ') as Hourly on Daily.sumline=Hourly.sumline '
      ' order by Daily.sumline')
    Left = 136
    Top = 160
  end
end
