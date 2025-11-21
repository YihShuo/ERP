object UseStock: TUseStock
  Left = 203
  Top = 210
  Width = 1146
  Height = 554
  Caption = 'UseStock'
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1138
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
      Left = 16
      Top = 24
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 168
      Top = 56
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 472
      Top = 24
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label7: TLabel
      Left = 336
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 37
      Height = 16
      Caption = 'SKU#:'
    end
    object Button1: TButton
      Left = 448
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 16
      Width = 89
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
    object EDIT1: TEdit
      Left = 64
      Top = 16
      Width = 97
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
    object Edit4: TEdit
      Left = 400
      Top = 16
      Width = 65
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
    object Edit5: TEdit
      Left = 216
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 528
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 352
      Top = 46
      Width = 80
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 7
    end
    object Button2: TButton
      Left = 544
      Top = 48
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 64
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button3: TButton
      Left = 640
      Top = 48
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 9
      OnClick = Button3Click
    end
    object CheckBox2: TCheckBox
      Left = 352
      Top = 67
      Width = 80
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 10
    end
  end
  object UseStockPage: TPageControl
    Left = 0
    Top = 89
    Width = 1138
    Height = 431
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Default'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1130
        Height = 400
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh1EditButtonClick
        OnGetCellParams = DBGridEh1GetCellParams
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#25976#37327'|CGQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
            Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
            Title.TitleButton = True
            Width = 68
          end
          item
            Color = 14680063
            EditButtons = <>
            FieldName = 'CLBHYS'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20195#29992#26448#26009'|CLBHYS'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#26085#26399'|CGDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35201#27714#20132#26399'|YQDate'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22238#24489#20132#26399'|CFMDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#26085#26399'|RKDate'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
            Title.TitleButton = True
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#21934#34399'|CGNO'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Converse'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1130
        Height = 400
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGridEh2EditButtonClick
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#34399'|ZLBH'
            Title.TitleButton = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#32232#34399'|CLBH'
            Title.TitleButton = True
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|DWBH'
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#21312'|CQDH'
            Title.TitleButton = True
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21046#20196#25976#37327'|CLSL'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CGQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#25976#37327'|CGQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#25976#37327'|RKQty'
            Title.TitleButton = True
            Width = 54
          end
          item
            Color = 11927551
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
            Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
            Title.TitleButton = True
            Width = 68
          end
          item
            Color = 14680063
            EditButtons = <>
            FieldName = 'CLBHYS'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20195#29992#26448#26009'|CLBHYS'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CGDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#26085#26399'|CGDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35201#27714#20132#26399'|YQDate'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22238#24489#20132#26399'|CFMDate'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'RKDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20132#36008#26085#26399'|RKDate'
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#20986#36008#26399'|ShipDate'
            Title.TitleButton = True
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37319#36092#21934#34399'|CGNO'
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#21934#34399'|RKNO'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|Article'
            Title.TitleButton = True
            Width = 112
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#22411#21517#31281'|XieMing'
            Title.TitleButton = True
            Width = 167
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38617#25976'|Pairs'
            Title.TitleButton = True
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
            Title.TitleButton = True
            Width = 350
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 208
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XX' +
        'ZL.Article,XXZL.XieMing,DDZL.Pairs,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMD' +
        'ate,CGZl.CGDate,'
      
        '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBH' +
        'YS,'
      
        '        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL' +
        '.ShipDate '
      'from ZLZLS2 '
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.ZLBH=ZLZL.ZLBH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH'
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      
        'left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=' +
        'ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate '
      '           from CGZLSS'
      '           left join CGZL on CGZl.CGNO=CGZLSS.CGNO'
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CGZLSS.ZLBH like '#39'SP0812-0%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      '           where KCRKS.CLBH like '#39'%'#39
      '                 and KCRKS.CGBH like '#39'SP0812-0%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'where ZLZLS2.CLBH like '#39'%'#39
      '      and ZLZLS2.CLBH not like '#39'W%'#39
      
        '      and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=Z' +
        'LZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'SP0812-0%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and XXZl.XieMing like '#39'%%'#39
      '       and XXZL.Article like '#39'%'#39
      '       and DDZL.GSBH='#39'VA3'#39
      '       and KFZL.KFJC like '#39'%%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and SCZL.SCBH=SCZl.ZLBH '
      '       and SCZL.SCBH is not null '
      '       and ZLZLS2.CLSL<>0'
      '       and XXBWFLS.DFL<>'#39'G'#39
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,C' +
        'LZL.ZWPM,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.C' +
        'GQty,CGZL.YQDate,CGKCUSE.CLBHYS,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH'
      '')
    UpdateObject = UpSql1
    Left = 288
    Top = 208
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
    object Query1CLBHYS: TStringField
      FieldName = 'CLBHYS'
      FixedChar = True
      Size = 15
    end
  end
  object UpSql1: TUpdateSQL
    Left = 288
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 296
    object S1: TMenuItem
      Caption = 'Modify'
      OnClick = S1Click
    end
    object S2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S3Click
    end
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
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 176
    Top = 232
  end
  object qrUsestock: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 248
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 456
    Top = 200
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XX' +
        'ZL.Article,XXZL.XieMing,DDZL.Pairs,'
      '        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,'
      
        '        isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.YQDate,CGZL.CFMD' +
        'ate,CGZl.CGDate,'
      
        '        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGKCUSE.CLBH' +
        'YS,'
      
        '        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,DDZL' +
        '.ShipDate '
      'from ZLZLS2 '
      'left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join SCZL on SCZL.ZLBH=ZLZL.ZLBH '
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH'
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      
        'left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=' +
        'ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate '
      '           from CGZLSS'
      '           left join CGZL on CGZl.CGNO=CGZLSS.CGNO'
      '           where CGZLSS.CLBH like '#39'%'#39
      '                 and CGZLSS.ZLBH like '#39'SP0812-0%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      '           where KCRKS.CLBH like '#39'%'#39
      '                 and KCRKS.CGBH like '#39'SP0812-0%'#39
      '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      'where ZLZLS2.CLBH like '#39'%'#39
      '      and ZLZLS2.CLBH not like '#39'W%'#39
      
        '      and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=Z' +
        'LZLS2.CLBH )'
      '       and ZLZLS2.ZLBH like '#39'SP0812-0%'#39
      '       and CLZL.YWPM like '#39'%%'#39
      '       and XXZl.XieMing like '#39'%%'#39
      '       and XXZL.Article like '#39'%'#39
      '       and DDZL.GSBH='#39'VA3'#39
      '       and KFZL.KFJC like '#39'%%'#39
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and CLZL.CQDH='#39'VN'#39
      '       and SCZL.SCBH=SCZl.ZLBH '
      '       and SCZL.SCBH is not null '
      '       and ZLZLS2.CLSL<>0'
      '       and XXBWFLS.DFL<>'#39'G'#39
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,C' +
        'LZL.ZWPM,'
      
        '         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.C' +
        'GQty,CGZL.YQDate,CGKCUSE.CLBHYS,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH'
      '')
    UpdateObject = UpSql2
    Left = 416
    Top = 200
    object Query2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query2CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query2RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query2UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query2CGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object Query2YQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Query2CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query2RKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object Query2ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query2CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query2RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query2ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query2CLBHYS: TStringField
      FieldName = 'CLBHYS'
      FixedChar = True
      Size = 15
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 456
    Top = 232
    object S11: TMenuItem
      Caption = 'Modify'
      OnClick = S11Click
    end
    object S22: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S22Click
    end
    object S33: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S33Click
    end
  end
  object UpSql2: TUpdateSQL
    Left = 416
    Top = 232
  end
  object PrintDBGridEh2: TPrintDBGridEh
    DBGridEh = DBGridEh2
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
    PageHeader.CenterText.Strings = (
      'MATERIAL PURCHASE TRACE')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -19
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = [fsBold]
    Units = MM
    Left = 504
    Top = 208
  end
end
