object PurchaseCheck: TPurchaseCheck
  Left = 264
  Top = 206
  Width = 870
  Height = 500
  Caption = 'PurchaseCheck'
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
    Width = 862
    Height = 57
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
    object Label5: TLabel
      Left = 216
      Top = 24
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Button1: TButton
      Left = 432
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
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
    end
    object Edit5: TEdit
      Left = 264
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 560
      Top = 8
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 862
    Height = 409
    Align = alClient
    DataSource = DS1
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
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.TitleButton = True
        Width = 273
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.TitleButton = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.TitleButton = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.TitleButton = True
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 180
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
      
        'select CGZLSS.CGNO,CGZLSS.CLBH,CGZLSS.ZLBH,sum(CGZLSS.Qty) as Qt' +
        'y,sum(CGZLSS.CLSL) as CLSL,'
      
        '       CGZLSS.YQDate,CGZLSS.CFMDate,DDZl.XieXing,DDZl.SheHao,DDZ' +
        'l.Article,XXZl.XieMing,'
      '       CLZl.YWPM,CLZl.DWBH,CGZl.CGDate'
      'from CGZLSS'
      'left join CGZL on CGZL.CGNO=CGZLSS.CGNO '
      'left join DDZL on DDZl.ZLBH=CGZLSS.ZLBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao '
      'left join CLZl on CLZl.CLDh=CGZLSS.CLBH '
      'where CGZLSS.CLBH like '#39'%'#39
      '  and CGZLSS.ZLBH like '#39'Y0812-00%'#39
      '  and CGZl.GSBH='#39'VA12'#39
      
        'group by CGZLSS.CGNO,CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.YQDate,CGZLS' +
        'S.CFMDate,DDZl.XieXing,'
      
        '      DDZl.SheHao,DDZl.Article,XXZl.XieMing,CLZl.YWPM,CLZl.DWBH,' +
        'CGZl.CGDate'
      'order by CGZLSS.ZLBH ')
    Left = 424
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
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
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
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
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 240
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
