object FeeMaterialOth: TFeeMaterialOth
  Left = 321
  Top = 241
  Width = 870
  Height = 500
  Caption = 'FeeMaterialOth'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label4: TLabel
      Left = 144
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Button1: TButton
      Left = 336
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 48
      Top = 15
      Width = 73
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
      TabOrder = 1
      Text = '2009'
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
        '2020')
    end
    object CBX2: TComboBox
      Left = 184
      Top = 15
      Width = 65
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
  end
  object DBGrideh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 862
    Height = 417
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowHeight = 30
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FYACC.GSBH '
      ',sum(case  when FYACC.FYLB='#39'In'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'In'#39
      ',sum(case  when FYACC.FYLB='#39'A'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A'#39
      ',sum(case  when FYACC.FYLB='#39'B'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'B'#39
      ',sum(case  when FYACC.FYLB='#39'C'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'C'#39
      ',sum(case  when FYACC.FYLB='#39'D'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'D'#39
      ',sum(case  when FYACC.FYLB='#39'E'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'E'#39
      ',sum(case  when FYACC.FYLB='#39'F'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'F'#39
      ',sum(case  when FYACC.FYLB='#39'G'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'G'#39
      ',sum(case  when FYACC.FYLB='#39'H'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'H'#39
      ',sum(case  when FYACC.FYLB='#39'I'#39
      ' then isnull(FYACC.ACCUS,0) else 0  end) as '#39'I'#39
      'from ('
      'select FYACC.GSBH,FYACC.FYLB,sum(FYACC.ACCUS) as ACCUS   '
      
        'from (select LL.GSBH,LL.CLBH,substring(LL.FYLB,1,1) as FYLB,sum(' +
        'LL.Qty*LL.SYL*CWDJ.USPrice) as ACCUS'
      
        '      from (select substring(BDepartment.DepName,1,case when cha' +
        'rindex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDe' +
        'partment.DepName)-1 end ) as GSBH'
      
        '            ,KCLL.DepID,KCLLS.Qty,isnull(CLZHZL.SYL,1) as SYL,CL' +
        'LBFYS.FYLB,'
      
        '                   case when CLZHZL.CLDH1 is null then KCLLS.CLB' +
        'H else CLZHZL.CLDH1 end as CLBH'
      '            from KCLLS'
      '            left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '            left join BDepartment on BDepartment.ID=KCLL.DepID'
      
        '            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH and CLZHZ' +
        'L.YN<>'#39'3'#39
      
        '            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCL' +
        'L.GSBH=CLLBFYS.GSBH'
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'Date,111)) between'
      '                  '#39'2009/05/31'#39' and '#39'2009/06/06'#39
      '                  and KCLL.CFMID<>'#39'NO'#39
      '                  and BDepartment.DepName like '#39'%%'#39
      '                  and KCLLS.Qty<>0'
      '            ) LL  '
      
        '           left join (select CWDJ.CLBH,avg(CWDJ.USPrice) as USPr' +
        'ice from CWDJ '
      '                      group by CLBH ) CWDJ on CWDJ.CLBH=LL.CLBH '
      '      group by LL.GSBH,LL.CLBH,LL.FYLB,CWDJ.USPrice) FYACC'
      'left join CLLBFY on CLLBFY.LBBH=FYACC.FYLB  and CLLBFY.XH='#39'01'#39
      'group by FYACC.GSBH,FYACC.FYLB'
      ' union all '
      
        'select YWCPin.GSBH,'#39'In'#39' as FYLB,sum(YWCPin.Qty*YWDDS.IPrice) as ' +
        'ACCUS'
      
        'from (select substring(BDepartment.DepName,1,case when charindex' +
        '('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartme' +
        'nt.DepName)-1 end ) as GSBH '
      '             ,YWCP.DDBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty) as Qty  '
      '      from YWCP '
      '      left join BDepartment on BDepartment.ID=YWCP.DepNO '
      
        '      left join YWBZPOS on YWBZPOS.DDBH=YWCP.DDBH and YWBZPOS.XH' +
        '=YWCP.XH '
      '      where BDepartment.DepName like '#39'%%'#39
      
        '            and convert(smalldatetime,convert(varchar,YWCP.InDat' +
        'e,111)) between '
      '                '#39'2009/05/31'#39' and '#39'2009/06/06'#39
      
        '      group by  substring(BDepartment.DepName,1,case when charin' +
        'dex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDepar' +
        'tment.DepName)-1 end ) '
      '             ,YWCP.DDBH,YWBZPOS.DDCC) YWCPin '
      
        'left join YWDDS on YWDDS.DDBH=YWCPin.DDBH and YWDDS.DDCC=YWCPin.' +
        'DDCC '
      'left join YWDD on YWDD.DDBH=YWCPin.DDBH '
      'group by YWCPin.GSBH'
      ') FYACC '
      'group by FYACC.GSBH '
      'order by FYACC.GSBH')
    Left = 296
    Top = 160
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 424
    Top = 160
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrideh1
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #21508#24037#24288#21508#38917#36027#29992#32317#35336#34920
      'Factory Fee Total report')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #27161#26999#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 296
    Top = 192
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 232
    object Print1: TMenuItem
      Caption = 'Print'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
    end
  end
end
