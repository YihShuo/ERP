object ScanStockBrand_Det: TScanStockBrand_Det
  Left = 328
  Top = 194
  Width = 844
  Height = 451
  BorderIcons = [biSystemMenu]
  Caption = 'ScanStockBrand_Det'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 828
    Height = 412
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
        Title.Caption = #20837#20489#38617#25976'|okQty'
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
        FieldName = 'LackQty'
        Footers = <
          item
            FieldName = 'LackQty'
            ValueType = fvtSum
          end>
        Title.Caption = #23578#27424#38617#25976'|LackQty'
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
        Title.Caption = #20837#20489#31665#25976'|okCTS'
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
        FieldName = 'LackCTS'
        Footers = <
          item
            FieldName = 'LackCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #23578#27424#31665#25976'|LackCTS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'LastInDate'
        Footers = <>
        Title.Caption = #26368#24460#20837#20489#26178#38291'|LastInDate'
        Width = 89
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.400000000000000000
    Page.LeftMargin = 0.400000000000000000
    Page.RightMargin = 0.400000000000000000
    Page.TopMargin = 0.400000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #25104#21697#20489#24235#23384#26126#32048#34920
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
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
      
        '       YWDD.Qty,sum(YWCP.Qty) as okQty,YWDD.Qty-isnull(sum(YWCP.' +
        'Qty),0) as LackQty,'
      
        '       YWBZPO.CTS,count(YWCP.DDBH) as okCTS,YWBZPO.CTS-count(YWC' +
        'P.DDBH) as LackCTS,max(YWCP.LastInDate) as LastInDate'
      'from YWCP'
      'left join YWDD on YWDD.DDBH=YWCP.DDBH '
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL' +
        '.Shehao '
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS '
      
        '           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS' +
        '.CTS from YWBZPOS ) YWBZPO  '
      
        '           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH' +
        ' '
      'where DDZL.DDBH like '#39'%'#39
      '      and YWCP.KCBH like '#39'%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and LBZLS.YWSM like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      '      and YWCP.SB='#39'1'#39
      '      and DDZL.KHBH='#39'036'#39' '
      '      and DDZL.DDGB='#39'GER'#39' '
      
        'group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,' +
        'LBZLS.YWSM,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS'
      'order by YWCP.DDBH ')
    Left = 240
    Top = 96
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
    object Query1LackQty: TFloatField
      FieldName = 'LackQty'
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
    object Query1LackCTS: TIntegerField
      FieldName = 'LackCTS'
      DisplayFormat = '##,#0'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LastInDate: TDateTimeField
      FieldName = 'LastInDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 176
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
