object ScanReturnRep: TScanReturnRep
  Left = 285
  Top = 276
  Width = 1145
  Height = 500
  Caption = 'ScanReturnRep'
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
    Width = 1137
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 44
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 186
      Top = 44
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 384
      Top = 43
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 195
      Height = 19
      Caption = #25104#21697#20489#32763#31665#20837#24235#26126#32048#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 552
      Top = 44
      Width = 38
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 683
      Top = 44
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 83
      Top = 41
      Width = 105
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
    object Edit2: TEdit
      Left = 267
      Top = 40
      Width = 118
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 459
      Top = 40
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 803
      Top = 33
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 592
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 704
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1137
    Height = 396
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
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
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
        FieldName = 'EverQty'
        Footers = <
          item
            FieldName = 'EverQty'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#38617#25976'|EverQty'
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
        Title.Caption = #30070#26399#20837#31665'|NowQty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 70
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
        FieldName = 'EverCTS'
        Footers = <
          item
            FieldName = 'EverCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #32047#35336#31665#25976'|EverCTS'
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
        Title.Caption = #30070#26399#20837#31665#25976'|NowCTS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = #26032#32048#26126#39636
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 78
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
      #25104#21697#20489#32763#31665#29376#27841#34920)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    PageHeader.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 248
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanStockBrand.DS1
    SQL.Strings = (
      
        'select YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LB' +
        'ZLS.YWSM as Country,KFZL.KFJC,'
      
        '       YWDD.Qty,okYWCP.EverQty,sum(YWCP.Qty) as NowQty,YWBZPO.CT' +
        'S,okYWCP.EverCTS,count(YWCP.DDBH) as NowCTS'
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
      'left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS '
      
        '           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS' +
        '.CTS from YWBZPOS  with (nolock) ) YWBZPO  '
      
        '           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH' +
        ' '
      
        'left join (select DDBH,sum(OutCS) as EverCTS,sum(Qty*OutCS) as E' +
        'verQty from YWCP with (nolock) '
      '           where  YWCP.CARTONBAR like '#39'%'#39
      '                  and OutCS is not null '
      '           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and BDepartment.DepName like '#39'%%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and convert(varchar,YWCP.OutDate,111) between '
      '      '#39'2009/04/02'#39' and '#39'2009/04/08'#39
      
        'group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,' +
        'LBZLS.YWSM,KFZL.KFJC,'
      '         YWDD.Qty,okYWCP.EverQty,YWBZPO.CTS,okYWCP.EverCTS'
      'order by YWCP.DDBH ')
    Left = 280
    Top = 160
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
    object Query1EverQty: TIntegerField
      FieldName = 'EverQty'
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
    object Query1EverCTS: TIntegerField
      FieldName = 'EverCTS'
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 192
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 160
  end
end
