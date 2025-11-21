object ImportEX: TImportEX
  Left = 332
  Top = 120
  Width = 941
  Height = 488
  Caption = 'ImportEX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 14
      Width = 77
      Height = 20
      Caption = 'JG/CG No:'
    end
    object Label2: TLabel
      Left = 20
      Top = 47
      Width = 59
      Height = 20
      Caption = 'XieXing:'
    end
    object Label3: TLabel
      Left = 263
      Top = 47
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Button1: TButton
      Left = 344
      Top = 2
      Width = 87
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object txtJGNO: TEdit
      Left = 82
      Top = 8
      Width = 138
      Height = 28
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 82
      Top = 45
      Width = 138
      Height = 28
      Color = clScrollBar
      TabOrder = 2
    end
    object Button2: TButton
      Left = 227
      Top = 46
      Width = 25
      Height = 25
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 330
      Top = 45
      Width = 90
      Height = 28
      Color = clScrollBar
      TabOrder = 4
    end
    object Count: TEdit
      Left = 295
      Top = 7
      Width = 41
      Height = 28
      TabOrder = 5
      Visible = False
    end
    object cb1: TComboBox
      Left = 232
      Top = 8
      Width = 57
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 6
      Text = 'JG'
      Items.Strings = (
        'JG'
        'CG')
    end
    object Button3: TButton
      Left = 437
      Top = 2
      Width = 87
      Height = 36
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 925
    Height = 360
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 347
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'Qty1'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 55
      end>
  end
  object JGNO: TQuery
    AfterOpen = JGNOAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT JGZLS.* ,convert(Varchar(8),JGZLS.YQDate,112) AS YQDate1 ' +
        ',clzl.zwpm ,clzl.ywpm,JGZLSS.ZLBH,JGZLSS.Qty as Qty1 '
      'FROM JGZLS JGZLS '
      
        'Left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLSS.CLBH=JGZLS' +
        '.CLBH'
      'LEFT JOIN clzl clzl ON JGZLS.CLBH = clzl.cldh '
      ' where (JGZLS.JGNO='#39'20160100315'#39' AND JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39') ')
    Left = 88
    Top = 166
    object JGNOJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGNOCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGNOZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
    object JGNOQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object JGNOYQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object JGNOYQDate1: TStringField
      FieldName = 'YQDate1'
      FixedChar = True
      Size = 8
    end
    object JGNOzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object JGNOywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object JGNOQty1: TCurrencyField
      FieldName = 'Qty1'
      DisplayFormat = '##,#0.00'
    end
    object JGNOZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = JGNO
    Left = 120
    Top = 166
  end
  object tmp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 166
  end
  object XXZLS1: TQuery
    DatabaseName = 'DB'
    Left = 250
    Top = 166
  end
end
