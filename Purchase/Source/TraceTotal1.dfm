object TraceTotal: TTraceTotal
  Left = 314
  Top = 229
  Width = 1793
  Height = 606
  Caption = 'TraceTotal'
  Color = clBtnFace
  TransparentColorValue = clFuchsia
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
  object Label3: TLabel
    Left = 504
    Top = 232
    Width = 41
    Height = 16
    Caption = 'Label3'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1777
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 12
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'English:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 408
      Top = 10
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode:'
    end
    object Label5: TLabel
      Left = 785
      Top = 42
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 595
      Top = 42
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGDate From:'
    end
    object Label7: TLabel
      Left = 824
      Top = 12
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 708
      Top = 11
      Width = 35
      Height = 16
      Caption = 'count:'
    end
    object Label10: TLabel
      Left = 184
      Top = 44
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chinese:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 0
      Top = 45
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
    end
    object Label12: TLabel
      Left = 392
      Top = 40
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupName:'
    end
    object Button1: TButton
      Left = 909
      Top = 34
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 250
      Top = 8
      Width = 141
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
    object Edit1: TEdit
      Left = 82
      Top = 9
      Width = 103
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
    object Button2: TButton
      Left = 996
      Top = 34
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1082
      Top = 34
      Width = 81
      Height = 33
      Caption = 'PRINT'
      TabOrder = 4
      Visible = False
      OnClick = Button3Click
    end
    object cb1: TComboBox
      Left = 467
      Top = 7
      Width = 232
      Height = 24
      ItemHeight = 16
      TabOrder = 5
      Text = 'ALL'
      Items.Strings = (
        'ALL('#20840#37096')'
        'Stock OK('#24050#20837#24235'OK)'
        'No Stork In('#23578#26410#20837#24235')'
        'CFMDate Is Over Today and No Stock In('#25505#36092#21934#20729#26410#30906#35469')'
        'Stock Is Not Enough('#20837#24235#25976#37327#19981#36275#25505#36092#37327')'
        'Stock Is Over('#20837#24235#36229#38989#25505#36092')'
        'YQDate Is Over CGDate 30 days('#35201#27714#20132#26399'>30'#22825')'
        'CG_ZSBH and RK_ZSBH are different('#20837#24235#24288#21830#38750#25505#36092#24288#21830')')
    end
    object cb2: TComboBox
      Left = 882
      Top = 9
      Width = 105
      Height = 24
      ItemHeight = 16
      TabOrder = 6
      Text = 'ALL'
    end
    object Edit3: TEdit
      Left = 748
      Top = 9
      Width = 73
      Height = 24
      Color = cl3DDkShadow
      ReadOnly = True
      TabOrder = 7
      Text = '0'
    end
    object Edit4: TEdit
      Left = 248
      Top = 39
      Width = 139
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 83
      Top = 41
      Width = 102
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit6: TEdit
      Left = 470
      Top = 38
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object chkDep: TCheckBox
      Left = 1000
      Top = 12
      Width = 145
      Height = 17
      Caption = 'Show DepName'
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1777
    Height = 494
    Align = alClient
    Color = clMenu
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
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
        Title.Caption = #24288#21312'|GSBH'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #37319#36092#21934#34399'|CGNO'
        Title.TitleButton = True
        Width = 96
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
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = #37319#36092#25976#37327'|CGQty'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20132#36008#25976#37327'|RKQty'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #21934#20729'|VNPrice'
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Title.Caption = #32317#20729'|VNACC'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CG_ZSBH'
        Footers = <>
        Title.Caption = #25505#36092#24288#21830'|CG_ZSBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'RK_ZSBH'
        Footers = <>
        Title.Caption = #20837#24235#24288#21830'|RK_ZSBH'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'SupName'
        Footers = <>
        Title.Caption = #24288#21830'|SupName'
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #37319#36092#26085#26399'|CGDate'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#20132#26399'|YQDate'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#24489#20132#26399'|CFMDate'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = #20132#36008#26085#26399'|RKDate'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272#21517#31281'|DepName'
        Width = 120
      end>
  end
  object DTP1: TDateTimePicker
    Left = 685
    Top = 40
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 2
  end
  object DTP2: TDateTimePicker
    Left = 810
    Top = 39
    Width = 97
    Height = 24
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    TabOrder = 3
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
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
        'GQty,CGZL.YQDate,'
      
        '         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDat' +
        'e,RKZL.RKQty,DDZL.ShipDate'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    Left = 520
    Top = 216
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
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
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1CG_ZSBH: TStringField
      FieldName = 'CG_ZSBH'
    end
    object Query1RK_ZSBH: TStringField
      FieldName = 'RK_ZSBH'
    end
    object Query1SupName: TStringField
      FieldName = 'SupName'
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
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 600
    Top = 208
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
    Left = 440
    Top = 208
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 288
  end
end
