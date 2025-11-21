object MonthOutPut: TMonthOutPut
  Left = 323
  Top = 306
  Width = 1068
  Height = 485
  Caption = 'MonthOutPut'
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
    Width = 1052
    Height = 89
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 176
      Top = 51
      Width = 35
      Height = 18
      Caption = 'Year:'
    end
    object Label7: TLabel
      Left = 288
      Top = 51
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
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 217
      Height = 25
      AutoSize = False
      Caption = #21508#24288#29986#33021#26376#32317#32113#35336#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 44
      Width = 73
      Height = 18
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 400
      Top = 40
      Width = 41
      Height = 18
      AutoSize = False
      Caption = #24037#27573':'
    end
    object Label6: TLabel
      Left = 400
      Top = 64
      Width = 43
      Height = 18
      Caption = 'GXLB'
    end
    object Label8: TLabel
      Left = 397
      Top = 13
      Width = 104
      Height = 18
      Caption = 'Sample Room:'
    end
    object Label9: TLabel
      Left = 633
      Top = 12
      Width = 73
      Height = 18
      Caption = 'Baby lean:'
    end
    object Label10: TLabel
      Left = 528
      Top = 40
      Width = 32
      Height = 18
      Caption = #20998#32068
    end
    object Label11: TLabel
      Left = 528
      Top = 60
      Width = 35
      Height = 20
      Caption = 'DFL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 668
      Top = 44
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 216
      Top = 48
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
      TabOrder = 1
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
        '2030')
    end
    object CBX2: TComboBox
      Left = 328
      Top = 48
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
      TabOrder = 2
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
    object Edit1: TEdit
      Left = 88
      Top = 49
      Width = 81
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button2: TButton
      Left = 744
      Top = 44
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 841
      Top = 44
      Width = 73
      Height = 33
      Caption = 'Print'
      TabOrder = 5
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 203
      Top = 13
      Width = 177
      Height = 17
      Caption = 'produced('#21482#35336#29983#29986#26085')'
      TabOrder = 6
    end
    object CBX3: TComboBox
      Left = 456
      Top = 48
      Width = 57
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 18
      ItemIndex = 3
      ParentFont = False
      TabOrder = 7
      Text = 'A'
      Items.Strings = (
        'All'
        'C'
        'S'
        'A'
        'W')
    end
    object editPM: TEdit
      Left = 503
      Top = 11
      Width = 97
      Height = 26
      TabOrder = 8
      Text = 'A12KHA01'
    end
    object editBB: TEdit
      Left = 711
      Top = 9
      Width = 92
      Height = 26
      TabOrder = 9
      Text = 'A01L0522'
    end
    object btnPM: TButton
      Left = 602
      Top = 10
      Width = 21
      Height = 23
      Caption = '...'
      TabOrder = 10
      OnClick = btnPMClick
    end
    object btnBB: TButton
      Left = 806
      Top = 9
      Width = 21
      Height = 23
      Caption = '...'
      TabOrder = 11
      OnClick = btnBBClick
    end
    object EditDFL: TEdit
      Left = 568
      Top = 49
      Width = 81
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1052
    Height = 357
    Align = alClient
    DataSource = DataSource1
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) a' +
        's SCDate ,SCBB.DepNo,BDepartment.DepName,BDepartment.DepName as ' +
        'DepName2,'
      
        '       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as b' +
        'zQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,'
      
        '        sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepar' +
        'tment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join SCBZCL on convert(varchar,SCBZCL.BZDate,111)=convert(v' +
        'archar,SCBB.SCDate,111) and SCBZCL.DepNo=SCBB.DepNo'
      
        'left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCY' +
        'EAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay))'
      '                         =convert(varchar,SCBB.SCDate)  '
      '                  and SCRL.DepNO=SCBB.DepNO '
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by convert(smalldatetime,convert(varchar,SCBB.SCDate,111))' +
        ',SCBB.DepNo,BDepartment.DepName ,'
      
        '         RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ,SCBZCL.Qty,S' +
        'CRL.SCGS,BDepartment.Worker_Qty  '
      'union  '
      
        'select '#39'2008/12/31'#39' as SCDate ,SCBB.DepNo,'#39'Total'#39' as DepName,BDe' +
        'partment.DepName as DepName2,'
      
        '        isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as' +
        ' bzQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,'
      
        '        RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS)' +
        ' as Act_Hours,BDepartment.Worker_Qty '
      'from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      'left join DDZL on DDZl.ZLBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZC' +
        'L '
      '           where SCBZCL.BZDate between'
      '                 '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '              and  exists(select convert(varchar,SCBB.SCDate,111' +
        ') as NowDay from  SCBB '
      
        '                          left join BDepartment on BDepartment.I' +
        'D=SCBB.DepNO '
      
        '                          where convert(smalldatetime,convert(va' +
        'rchar,SCBB.SCDate,111)) between '
      '                                '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '                                and BDepartment.DepName like '#39'%%' +
        #39
      '                                and SCBB.GSBH like'#39'VA3%'#39
      
        '                                and convert(varchar,SCBB.SCDate,' +
        '111)=convert(varchar,SCBZCL.BZDate,111) )'
      
        '           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCB' +
        'B.DepNo'
      'left join (select DepNo,sum(SCGS) as SCGS from SCRL '
      
        '           where convert(smalldatetime,SCRL.SCYEAR+'#39'/'#39'+SCRL.SCMO' +
        'NTH+'#39'/'#39'+SCRL.SCDay) between '
      '           '#39'2008/12/01'#39' and '#39'2008/12/31'#39
      '           group by DepNo ) SCRL on SCRL.DepNo=SCBB.DepNO '
      
        'left join (select RSCQ.DepNo,sum(RSCQ.CQQty) as CQQty,sum(RSCQ.Q' +
        'JQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS '
      
        '           from RSCQ where convert(smalldatetime,convert(varchar' +
        ',RSDate,111)) between '
      '                 '#39'2008/12/01'#39'and '#39'2008/12/31'#39
      
        '           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO   ' +
        ' '
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      '       '#39'2008/12/01'#39' and '#39'2008/12/31'#39
      '       and BDepartment.DepName like '#39'%%'#39
      '       and SCBB.GSBH like'#39'VA3%'#39
      '       and (SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'A'#39')'
      
        'Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty,SCRL.SCGS,R' +
        'SCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,BDepartment.Worker_Qty ' +
        ' '
      'Order by  SCBB.DepNo,BDepartment.DepName,SCDate,SCBZCLA.Qty ')
    Left = 448
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 488
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 152
    Top = 120
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#38795#24288#26376#29983#29986#29986#37327#32113#35336#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 280
    Top = 200
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B446174655D0D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 240
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 448
    Top = 240
  end
end
