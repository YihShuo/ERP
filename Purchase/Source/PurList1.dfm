object PurList: TPurList
  Left = 298
  Top = 214
  Width = 819
  Height = 480
  Caption = 'PurList'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
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
      Left = 192
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
      Left = 200
      Top = 56
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 528
      Top = 24
      Width = 51
      Height = 16
      Caption = 'XieMing:'
    end
    object Label7: TLabel
      Left = 360
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 16
      Top = 56
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Button1: TButton
      Left = 632
      Top = 48
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 256
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
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit4: TEdit
      Left = 424
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
      TabOrder = 2
      OnKeyPress = Edit4KeyPress
    end
    object Edit5: TEdit
      Left = 248
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 584
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit6KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 376
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Including TW'
      TabOrder = 7
    end
    object CheckBox2: TCheckBox
      Left = 488
      Top = 56
      Width = 129
      Height = 17
      Caption = 'Including VN BOM'
      TabOrder = 8
    end
    object Button2: TButton
      Left = 720
      Top = 48
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 89
    Width = 811
    Height = 357
    Align = alClient
    Color = clWhite
    DataSource = DS1
    EvenRowColor = clWhite
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.TitleButton = True
        Width = 342
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.TitleButton = True
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.TitleButton = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'UseStock'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.XieMing' +
        ','
      'CLZL.CQDH,isnull(CGZL.okQty,0) as okQty,'
      
        'isnull(sum(ZLZLS2.CLSL),0) as CLSL,CGZL.CFMDate,isnull(CGKCUSE.Q' +
        'ty,0) as UseStock'
      'from ZLZLS2 left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      
        'left join CGKCUSE on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=Z' +
        'LZLS2.CLBH'
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBh,sum(CGZLSS.Qty) as okQ' +
        'ty,'
      'max(CGZLSS.CFMDate) as CFMDate from CGZLSS'
      'left join CLZL on CLZL.CLDH=CGZLSS.CLBH'
      'left join DDZl on DDZl.ZLBH=CGZLSS.ZLBH'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH '
      'left join ZLZL on ZLZL.ZLBH=CGZLSS.ZLBH'
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      'where CGZLSS.CLBH like '#39'%'#39
      'and CGZLSS.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and XXZl.XieMing like '#39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/11/01'#39'and '#39'2008/11/30'#39
      'and DDZL.GSBH='#39'VA12'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and CLZL.CQDH='#39'VN'#39
      'group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      'on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH'
      'where ZLZLS2.CLBH like '#39'%'#39
      'and ZLZLS2.XH<>'#39'VN'#39
      'and ZLZLS2.ZLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and XXZl.XieMing like '#39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/11/01'#39'and '#39'2008/11/30'#39
      'and DDZL.GSBH='#39'VA12'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and ZLZLS2.ZMLB='#39'N'#39
      'and CLZL.CQDH='#39'VN'#39
      'and ZLZLS2.CLSL<>0'
      
        'group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,X' +
        'XZL.XieMing,CGZl.okQty,CGZL.CFMDate,CGKCUSE.Qty'
      'order by ZLZLS2.ZLBH,CLZL.CQDH,ZLZLS2.CLBH')
    Left = 424
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
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
      DisplayFormat = '#,##0.0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/mm/dd'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '#,##0.0'
    end
  end
end
