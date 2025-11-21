object Purtrace: TPurtrace
  Left = 192
  Top = 143
  Width = 1341
  Height = 500
  Caption = 'Purtrace'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1323
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 20
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 239
      Top = 19
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 240
      Top = 52
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 640
      Top = 18
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 440
      Top = 19
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 51
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 441
      Top = 54
      Width = 85
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 640
      Top = 51
      Width = 140
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier(cgcgzl):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 960
      Top = 45
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 336
      Top = 16
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 536
      Top = 16
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit5: TEdit
      Left = 336
      Top = 48
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 736
      Top = 16
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1048
      Top = 45
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Button3: TButton
      Left = 1048
      Top = 9
      Width = 81
      Height = 33
      Caption = 'PRINT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 893
      Top = 17
      Width = 60
      Height = 17
      Caption = 'TW'
      Color = 10395294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object CheckBox2: TCheckBox
      Left = 962
      Top = 17
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object cb1: TComboBox
      Left = 537
      Top = 50
      Width = 88
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 11
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'No Buy or Stork In'
        'No Enough'
        'More')
    end
    object SuppEdit: TEdit
      Left = 784
      Top = 48
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1323
    Height = 364
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    RowHeight = 22
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <
          item
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #21046#20196#34399'|ZLBH'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 350
      end
      item
        EditButtons = <>
        FieldName = 'zs_zsywjc'
        Footers = <>
        Title.Caption = #38928#35336#20379#25033#21830'|cgzlzs'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #37319#21312'|CQDH'
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #21046#20196#25976#37327'|CLSL'
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = #37319#36092#25976#37327'|CGQty'
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20132#36008#25976#37327'|RKQty'
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'UseStock'
        Footers = <>
        Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #37319#36092#26085#26399'|CGDate'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#20132#26399'|YQDate'
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#24489#20132#26399'|CFMDate'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = #20132#36008#26085#26399'|RKDate'
        Title.TitleButton = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'cg_zsjc'
        Footers = <>
        Title.Caption = #23526#38555#20379#25033#21830'|cgcgzl'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = #37319#36092#21934#34399'|CGNO'
        Title.TitleButton = True
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Title.TitleButton = True
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #38617#25976'|Pairs'
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 350
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XX' +
        'ZL.Article,XXZL.XieMing,DDZL.Pairs,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMD' +
        'ate,CGZl.CGDate,'
      '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,'
      
        '        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL' +
        '.ShipDate '
      
        '        ,zlzls2.csbh,cgzl.zsbh as cgcsbh,cgzl_zszl.zsjc as cg_zs' +
        'jc,zlzls2_zszl.zsywjc as zs_zsywjc'
      'from ZLZLS2  with (nolock) '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH'
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39'and DDZL.DDBH like '#39'SO150%'#39
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join SCZL  with (nolock) on SCZL.ZLBH=ZLZL.ZLBH '
      
        'left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and' +
        ' CGKCUSE.CLBH=ZLZLS2.CLBH'
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZl.XieXing and X' +
        'XZL.SheHao=DDZl.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate '
      '                  ,cgzl.zsbh '
      '           from CGZLSS with (nolock) '
      
        '           left join CGZL  with (nolock) on CGZl.CGNO=CGZLSS.CGN' +
        'O'
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CGZLSS.ZLBH like '#39'SO1509-00%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,cgzl.zsbh ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      'left join zszl as cgzl_zszl on cgzl_zszl.zsdh=cgzl.zsbh'
      'left join zszl as zlzls2_zszl on zlzls2_zszl.zsdh=zlzls2.csbh'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate '
      '           from  KCRKS with (nolock) '
      
        '           left join KCRK  with (nolock) on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      '           where KCRKS.CLBH like '#39'%'#39
      '                 and KCRKS.CGBH like '#39'SO1509-00%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'join (select zlbh,clbh,sum(clsl) as Sqty from zlzls2 '
      ' where  ZLZLS2.ZLBH like '#39'SO1509-00%'#39
      
        ' group by zlbh,clbh) su on su.zlbh=zlzls2.zlbh and su.clbh=zlzls' +
        '2.clbh'
      'where ZLZLS2.CLBH like '#39'%'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'SO1509-00%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and XXZl.XieMing like '#39'%%'#39
      '       and XXZL.Article like '#39'%'#39
      '       and DDZL.GSBH='#39'VB1'#39
      '       and KFZL.KFJC like '#39'%%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and SCZL.SCBH=SCZl.ZLBH '
      '       and SCZL.SCBH is not null '
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      '        and cgzl_zszl.zsjc   like '#39'%EVERYIELD%'#39
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,C' +
        'LZL.ZWPM,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.C' +
        'GQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate'
      
        '         ,zlzls2.csbh,cgzl.zsbh,cgzl_zszl.zsjc,zlzls2_zszl.zsywj' +
        'c'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    Left = 416
    Top = 120
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
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
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1csbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object Query1cgcsbh: TStringField
      FieldName = 'cgcsbh'
      FixedChar = True
      Size = 6
    end
    object Query1cg_zsjc: TStringField
      FieldName = 'cg_zsjc'
      FixedChar = True
    end
    object Query1zs_zsywjc: TStringField
      FieldName = 'zs_zsywjc'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 448
    Top = 120
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '&[Page] /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 384
    Top = 120
  end
end
