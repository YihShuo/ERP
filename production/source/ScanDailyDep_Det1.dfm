object ScanDailyDep_Det: TScanDailyDep_Det
  Left = 159
  Top = 182
  Width = 1014
  Height = 365
  BorderIcons = [biSystemMenu]
  Caption = 'ScanDailyDep_Det'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 998
    Height = 327
    Align = alClient
    DataSource = DS1
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
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20986#36008#26085'|ETD'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = #20986#36008#22283#23478'|Country'
        Title.TitleButton = True
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 85
      end
      item
        Color = 11599792
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#38617#25976'|Qty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 11599792
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#38617#25976'|okQty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 11599792
        EditButtons = <>
        FieldName = 'NowQty'
        Footers = <
          item
            FieldName = 'NowQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#26085#38617#25976'|PeriodQty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 11599792
        EditButtons = <>
        FieldName = 'VarianceQty'
        Footers = <
          item
            DisplayFormat = '0'
            FieldName = 'VarianceQty'
            ValueType = fvtSum
          end>
        Title.Caption = #24046#30064#38617#25976'|VarianceQty'
        Width = 68
      end
      item
        Color = 16759225
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#31665#25976'|CTS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 16759225
        EditButtons = <>
        FieldName = 'okCTS'
        Footers = <
          item
            FieldName = 'okCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#31665#25976'|okCTS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 16759225
        EditButtons = <>
        FieldName = 'NowCTS'
        Footers = <
          item
            FieldName = 'NowCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#26085#31665#25976'|PeriodCTS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 16759225
        EditButtons = <>
        FieldName = 'VarianceCTS'
        Footers = <
          item
            DisplayFormat = '0'
            FieldName = 'VarianceCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #24046#30064#31665#25976'|VarianceCTS'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'TotalSGW'
        Footers = <
          item
            DisplayFormat = '0.000'
            FieldName = 'TotalSGW'
            ValueType = fvtSum
          end>
        Title.Caption = #27161#28310#32317#37325'|TotalSGW'
      end
      item
        EditButtons = <>
        FieldName = 'TotalRGW'
        Footers = <
          item
            DisplayFormat = '0.000'
            FieldName = 'TotalRGW'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#32317#37325'|TotalRGW'
      end
      item
        EditButtons = <>
        FieldName = 'AvgSGW'
        Footers = <
          item
            DisplayFormat = '0.000'
            FieldName = 'AvgSGW'
            ValueType = fvtSum
          end>
        Title.Caption = #27161#28310#24179#22343'|AvgSGW'
      end
      item
        EditButtons = <>
        FieldName = 'AvgRGW'
        Footers = <
          item
            DisplayFormat = '0.000'
            FieldName = 'AvgRGW'
            ValueType = fvtSum
          end>
        Title.Caption = #20837#24235#24179#22343'|AvgRGW'
      end>
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
      #24050#38283#22987#20837#24235#35330#21934#20998#21697#29260#21450#20986#36008#22283#23478#20837#24235#26126#32048#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    PageHeader.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 152
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanStockBrand.DS1
    SQL.Strings = (
      
        'select YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LB' +
        'ZLS.YWSM as Country,KFZL.KFJC,'
      
        '       YWDD.Qty,okYWCP.okQty,sum(YWCP.Qty) as NowQty,YWBZPO.CTS,' +
        'okYWCP.okCTS,count(YWCP.DDBH) as NowCTS'
      
        '       ,convert(varchar,YWCP.InDate,111) as InDate,BDepartment.D' +
        'epName,'
      
        '       (YWDD.Qty-okYWCP.okQty) as VarianceQty,(YWBZPO.CTS-okYWCP' +
        '.okCTS) as VarianceCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.Av' +
        'gSGW,okYWCP.AvgRGW '
      'from YWCP  with (nolock)'
      'left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH '
      'left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and D' +
        'DZL.SheHao=XXZL.Shehao '
      
        'left join LBZLS  with (nolock) on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=D' +
        'DZL.DDGB'
      'left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH '
      
        'left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepN' +
        'o '
      'left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS'
      
        '           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS' +
        '.CTS from YWBZPOS  with (nolock) ) YWBZPO  '
      
        '           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH' +
        ' '
      
        'left join (select DDBH,count(DDBH) as okCTS,sum(Qty) as okQty,Ro' +
        'und(SUM(sgw),3) as TotalSGW,Round(AVG(sgw),3) as AvgSGW,Round(SU' +
        'M(rgw),3) as TotalRGW,Round(AVG(rgw),3) as AvgRGW  from YWCP wit' +
        'h (nolock) '
      '           where InDate is not null '
      '           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and convert(varchar,YWCP.Indate,111)='#39'2013/11/12'#39
      '      and YWCP.DepNo='#39'VB102'#39
      
        'group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,' +
        'LBZLS.YWSM,KFZL.KFJC,'
      
        '         YWDD.Qty,okYWCP.okQty,YWBZPO.CTS,okYWCP.okCTS,convert(v' +
        'archar,YWCP.InDate,111),BDepartment.DepName,okYWCP.TotalSGW,okYW' +
        'CP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW'
      'order by YWCP.DDBH')
    Left = 184
    Top = 88
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
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
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TIntegerField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1NowQty: TIntegerField
      FieldName = 'NowQty'
      DisplayFormat = '##,#0'
    end
    object Query1CTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object Query1okCTS: TIntegerField
      FieldName = 'okCTS'
      DisplayFormat = '##,#0'
    end
    object Query1NowCTS: TIntegerField
      FieldName = 'NowCTS'
      DisplayFormat = '##,#0'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1InDate: TStringField
      FieldName = 'InDate'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1VarianceQty: TFloatField
      FieldName = 'VarianceQty'
    end
    object Query1VarianceCTS: TIntegerField
      FieldName = 'VarianceCTS'
    end
    object Query1TotalSGW: TFloatField
      FieldName = 'TotalSGW'
    end
    object Query1TotalRGW: TFloatField
      FieldName = 'TotalRGW'
    end
    object Query1AvgSGW: TFloatField
      FieldName = 'AvgSGW'
    end
    object Query1AvgRGW: TFloatField
      FieldName = 'AvgRGW'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 120
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
