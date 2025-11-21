object ReplenishDaily_Det: TReplenishDaily_Det
  Left = 425
  Top = 208
  Width = 1502
  Height = 423
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishDaily_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1486
    Height = 384
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24037#24288'|GSBH'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272'|DepName'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Width = 258
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729'|USPrice'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footer.FieldName = 'ACCUS'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37329#38989'|ACCUS'
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'BLSB'
        Footers = <>
        Title.Caption = #35036'|BLSB'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'YYBH'
        Footers = <>
        Title.Caption = #21407#22240#32232#34399#21450#21517#31281'|YYBH'
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #21407#22240#32232#34399#21450#21517#31281'|YWSM'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #20986#26448#26009#21934#34399'|LLNO'
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30332#26009#26085#26399'|CFMDate'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 198
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #35036#26009#20013#25991#21407#22240'|ZWSM'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = 'RY#|SCBH'
        Width = 120
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #21508#24288#27599#26085#35036#26009#26126#32048
      'Replenish Daily Detail')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -32
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 248
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishOrd.DS1
    SQL.Strings = (
      'if object_id('#39'tempdb..#DayllyKCLLS'#39') is not null  '
      'begin   drop table #DayllyKCLLS end   '
      
        'select substring(BDepartment.DepName,1,case when charindex('#39'_'#39',B' +
        'Department.DepName)=0 then 4 else  charindex('#39'_'#39',BDepartment.Dep' +
        'Name)-1 end ) as GSBH'
      
        '       ,isnull(KCLLS.YYBH,'#39#39') as YYBH,KCLL.DepID,KCLLS.Qty,isnul' +
        'l(CLZHZL.SYL,1) as SYL,CLLBFYS.FYLB,'
      
        '       case when CLZHZL.CLDH1 is null then KCLLS.CLBH else CLZHZ' +
        'L.CLDH1 end as CLBH'
      
        '       ,isnull(KCLLS.BLSB,'#39#39') as BLSB,convert(smalldatetime,conv' +
        'ert(varchar,KCLL.CFMDate,111)) as CFMDate,KCLLS.SCBH'
      'into #DayllyKCLLS from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'#39'3'#39
      
        'left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBF' +
        'YS.GSBH'
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween'
      '         '#39'2009/06/05'#39' and '#39'2009/06/11'#39
      '      and KCLL.CFMID<>'#39'NO'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KCLLS.Qty<>0'
      ''
      
        'select #DayllyKCLLS.*,CLZL.YWPM,CLZL.ZWPM,Bdepartment.DepName,CL' +
        'ZL.DWBH,#DayllyKCLLS.Qty*CWDJ.USPrice as ACCUS'
      'from #DayllyKCLLS'
      'left join CLZL on CLZL.CLDH=#DayllyKCLLS.CLBH'
      'left join Bdepartment on BDepartment.ID=#DayllyKCLLS.DepID'
      'left join CWDJ on CWDj.CLBH=#DayllyKCLLS.CLBH')
    Left = 56
    Top = 64
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 50
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1ACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 152
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end
