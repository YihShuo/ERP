object ReplenishDaily: TReplenishDaily
  Left = 472
  Top = 356
  Width = 870
  Height = 500
  Caption = 'ReplenishDaily'
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
    Width = 854
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 12
      Top = 20
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label1: TLabel
      Left = 160
      Top = 20
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 316
      Top = 20
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Button1: TButton
      Left = 512
      Top = 11
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 11
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 16
      Width = 105
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 184
      Top = 16
      Width = 105
      Height = 24
      Date = 39739.762229814810000000
      Format = 'yyyy/MM/dd'
      Time = 39739.762229814810000000
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 384
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object DBGrideh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 854
    Height = 404
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowHeight = 20
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrideh1EditButtonClick
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#ReanUSPrice'#39') is not null  '
      'begin   drop table #ReanUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice,VNPrice'
      'into #ReanUSPrice from (select CLZL.CLDH,'
      '                      (select top 1 USPrice from KCRKS'
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))  '
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))'
      '                         order by USERDATE  desc)  as USPrice,'
      '                      (select top 1 VNPrice from KCRKS  '
      
        '                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.' +
        'VNPrice is not null) or (KCRKS.USPrice is not null ))'
      
        '                               and ((KCRKS.VNPrice<>0) or (KCRKS' +
        '.USPrice<>0))    '
      '                         order by USERDATE  desc)  as VNPrice'
      'from CLZL ) CLZL  '
      'where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  '
      ' order by CLZL.CLDH  '
      ''
      'select FYACC.CFMDate '
      '      ,sum(case  when FYACC.GSBH='#39'A1'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A1'#39
      '      ,sum(case  when FYACC.GSBH='#39'A12'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A12'#39
      '      ,sum(case  when FYACC.GSBH='#39'A2'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A2'#39
      '      ,sum(case  when FYACC.GSBH='#39'A3'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'A3'#39
      '      ,sum(case  when FYACC.GSBH='#39'B1'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'B1'#39
      '      ,sum(case  when FYACC.GSBH='#39'R1'#39
      '      then isnull(FYACC.ACCUS,0) else 0  end) as '#39'R1'#39
      
        'from (select LL.CFMDate,LL.GSBH,sum(LL.Qty*LL.SYL*#ReanUSPrice.U' +
        'SPrice) as ACCUS'
      
        '      from (select substring(BDepartment.DepName,1,case when cha' +
        'rindex('#39'_'#39',BDepartment.DepName)=0 then 4 else  charindex('#39'_'#39',BDe' +
        'partment.DepName)-1 end ) as GSBH'
      
        '                   ,isnull(KCLLS.YYBH,'#39#39') as YYBH,KCLL.DepID,KCL' +
        'LS.Qty,isnull(CLZHZL.SYL,1) as SYL,CLLBFYS.FYLB,'
      
        '                   case when CLZHZL.CLDH1 is null then KCLLS.CLB' +
        'H else CLZHZL.CLDH1 end as CLBH'
      
        '                   ,convert(smalldatetime,convert(varchar,KCLL.C' +
        'FMDate,111)) as CFMDate'
      '            from KCLLS'
      '            left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      '            left join BDepartment on BDepartment.ID=KCLL.DepID'
      '            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      
        '            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCL' +
        'L.GSBH=CLLBFYS.GSBH'
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'Date,111)) between'
      '                  '#39'2009/05/01'#39' and '#39'2009/05/18'#39
      '                  and KCLL.CFMID<>'#39'NO'#39
      '                  and BDepartment.DepName like '#39'%%'#39
      '                  and KCLLS.Qty<>0'
      '                  and KCLLS.BLSB='#39'Y'#39
      '            ) LL  '
      '      left join #ReanUSPrice on #ReanUSPrice.CLBH=LL.CLBH '
      '      group by LL.CFMDate,LL.GSBH) FYACC'
      'group by FYACC.CFMDate'
      'order by FYACC.CFMDate'
      ''
      '')
    Left = 296
    Top = 160
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 296
    Top = 232
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Detail1: TMenuItem
      Caption = 'Excel'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 160
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrideh1
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.CenterText.Strings = (
      #21508#24288#27599#26085#35036#26009#37329#38989#34920
      'Replenish Daily Report')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #27161#26999#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 296
    Top = 192
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
end
