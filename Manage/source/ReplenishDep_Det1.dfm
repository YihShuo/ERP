object ReplenishDep_Det: TReplenishDep_Det
  Left = 390
  Top = 230
  Width = 741
  Height = 402
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishDep_Det'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #26032#32048#26126#39636
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 733
    Height = 368
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    RowHeight = 4
    RowLines = 2
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
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #20986#26448#26009#21934#34399'|LLNO'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #38283#21934#26085'|USERDATE'
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #30332#26009#26085#26399'|CFMDate'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #38936#26009#37096#38272'|DepName'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#30908'|CLBH'
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 263
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #21046#20196#25976#37327'|CLSL'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #30332#26009#25976#37327'|Qty'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #26368#26032#21934#20729'|USPrice'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footers = <>
        Title.Caption = #32654#37329#37329#38989'|ACCUS'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'PerSon'
        Footers = <>
        Title.Caption = #35036#26009#27604#29575'|PerSon'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|ZLBH'
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240#33521#25991'|YWSM'
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #35036#26009#21407#22240#20013#25991'|ZWSM'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Width = 223
      end
      item
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Caption = #29992#25142#21517#31281'|USERNAME'
        Width = 79
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = ReplenishDep.DS1
    SQL.Strings = (
      'if object_id('#39'tempdb..#FUSPrice'#39') is not null  '
      'begin   drop table #FUSPrice end   '
      'declare @HL int '
      
        'set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMON' +
        'TH DESC,HLDAY DESC)  '
      
        'select CLDH as CLBH ,case when USPrice is null then round(conver' +
        't(money,VNPrice)/@HL,4) else USPrice end as USPrice'
      'into #FUSPrice from (select CLZL.CLDH,'
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
      
        'select KCLLS.LLNO,KCLLS.CFMDate,KCLLS.USERDate,KCLLS.DepName,KCL' +
        'LS.ZLBH,KCLLS.Article,KCLLS.XieMing,KCLLS.YSCLBH,KCLLS.CLBH,'
      
        '       KCLLS.Qty*KCLLS.SYL as Qty,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,' +
        'KCLLS.CLSL,KCLLS.Pairs,SCBLYY.YWSM,SCBLYY.ZWSM,'
      
        '       #FUSPrice.USPrice,KCLLS.Qty*KCLLS.SYL*#FUSPrice.USPrice a' +
        's ACCUS,Busers.USERNAME'
      
        'from (select KCLL.LLNO,KCLL.CFMDate,KCLL.USERDATE,Bdepartment.De' +
        'pName,KCLLS.SCBH AS ZLBH ,XXZL.Article,XXZl.XieMing,'
      
        '             KCLLS.CLBH as YSCLBH,case when CLZHZL.CLDH1 is null' +
        ' then KCLLS.CLBH else CLZHZL.CLDH1 end as CLBH,KCLLS.SCBH,'
      
        '             KCLLS.Qty,KCLLS.CLSL,DDZL.Pairs,KCLLS.YYBH,isnull(C' +
        'LZHZL.SYL,1) as SYL,KCLL.USERID'
      '      from  KCLL'
      '      left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      '      left join BDepartment on BDepartment.[ID]=KCLL.DepID'
      '      left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      '      left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH'
      '      left join DDZL on DDZL.ZLBH=ZLZL.ZLBH'
      
        '      left join XXZl on XXZL.XieXing=DDZl.XieXing and DDZL.SheHa' +
        'o=XXZl.SheHao '
      
        '      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,1' +
        '11)) between '
      '            '#39'2009/04/18'#39' and '#39'2009/04/25'#39
      '            and KCLLS.SCBH like '#39'%'#39
      '            and KCLL.DepID='#39'A120203'#39
      '            and KCLLS.BLSB='#39'Y'#39
      '            and KCLLS.Qty<>0'
      '      ) KCLLS    '
      'left join #FUSPrice on #FUSPrice.CLBH=KCLLS.CLBH '
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'left join Busers on Busers.USERID=KCLLS.USERID'
      'order by KCLLS.USERDate,KCLLS.LLNO,KCLLS.DepName')
    Left = 104
    Top = 128
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
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
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1ACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.00'
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
    object Query1PerSon: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PerSon'
      DisplayFormat = '#,##0.0%'
      Calculated = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query1USERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 136
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
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
    PageFooter.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 80
    Top = 128
  end
end
