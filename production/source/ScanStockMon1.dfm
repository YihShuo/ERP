object ScanStockMon: TScanStockMon
  Left = 312
  Top = 191
  Width = 870
  Height = 500
  Caption = 'ScanStockMon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 320
      Top = 18
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 192
      Top = 58
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 8
      Top = 59
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
    end
    object Label2: TLabel
      Left = 544
      Top = 19
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Label13: TLabel
      Left = 376
      Top = 59
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dep:'
    end
    object Label16: TLabel
      Left = 0
      Top = 96
      Width = 369
      Height = 20
      AutoSize = False
      Caption = #26376#20221#35330#21934#20837#24235#29376#27841#34920
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 544
      Top = 59
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
    end
    object Panel3: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 8
      Visible = False
      OnDblClick = Panel3DblClick
      object Label14: TLabel
        Left = 0
        Top = 20
        Width = 87
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CSD:'
      end
      object Label15: TLabel
        Left = 184
        Top = 19
        Width = 31
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To'
      end
      object DTP1: TDateTimePicker
        Left = 88
        Top = 16
        Width = 97
        Height = 24
        Date = 39783.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 39783.568310717590000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 216
        Top = 16
        Width = 89
        Height = 24
        Date = 39783.569282222220000000
        Format = 'yyyy/MM/dd'
        Time = 39783.569282222220000000
        TabOrder = 1
      end
    end
    object RadG1: TRadioGroup
      Left = 376
      Top = 80
      Width = 425
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Shipping order('#26989#21209#35330#21934')'
        'Produce order('#29983#29986#35330#21934')')
      TabOrder = 9
    end
    object Edit2: TEdit
      Left = 408
      Top = 16
      Width = 137
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 257
      Top = 56
      Width = 120
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 736
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 72
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 736
      Top = 8
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 624
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit8: TEdit
      Left = 456
      Top = 56
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Panel2: TPanel
      Left = 8
      Top = 0
      Width = 313
      Height = 49
      PopupMenu = PopupMenu2
      TabOrder = 7
      OnDblClick = Panel2DblClick
      object Label11: TLabel
        Left = 160
        Top = 12
        Width = 76
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Month:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 68
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Year:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CBX1: TComboBox
        Left = 240
        Top = 8
        Width = 57
        Height = 28
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
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
      object CBX2: TComboBox
        Left = 80
        Top = 8
        Width = 73
        Height = 28
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 20
        ItemIndex = 14
        ParentFont = False
        TabOrder = 1
        Text = '2020'
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
    end
    object Edit5: TEdit
      Left = 624
      Top = 56
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 129
    Width = 862
    Height = 340
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
      end>
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 312
    Top = 176
  end
  object PopupMenu2: TPopupMenu
    Left = 8
    Top = 88
    object N1: TMenuItem
      Caption = 'ETD Date'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Plan Month'
      OnClick = N2Click
    end
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
        'P.DDBH) as LackCTS'
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
    Left = 216
    Top = 128
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 128
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
      #25104#21697#20489#24235#23384#26126#32048#34920
      '')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 152
    Top = 88
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
