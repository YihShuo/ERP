object OrderList: TOrderList
  Left = 190
  Top = 124
  Width = 844
  Height = 500
  Caption = 'OrderList'
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
    Width = 828
    Height = 97
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 328
      Top = 16
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 325
      Top = 64
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 6
      Top = 60
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArticleNo:'
    end
    object Label1: TLabel
      Left = 9
      Top = 16
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ETD Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 182
      Top = 16
      Width = 59
      Height = 16
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
    object Edit2: TEdit
      Left = 413
      Top = 12
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 413
      Top = 58
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button1: TButton
      Left = 589
      Top = 56
      Width = 80
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 101
      Top = 58
      Width = 212
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 589
      Top = 8
      Width = 80
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 101
      Top = 12
      Width = 73
      Height = 24
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
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
        '2020')
    end
    object CBX3: TComboBox
      Left = 253
      Top = 12
      Width = 57
      Height = 24
      Color = clYellow
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 6
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 828
    Height = 364
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnTitleClick = DBGridEh1TitleClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'DDLB'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'ZLDW'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 109
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  SCZL.SCBH,SCZL.DDLB,SCZL.ZLDW,SCZL.Qty,XXZL.ARTICLE,XXZL' +
        '.XieXing,XXZL.SheHao,XXZL.XieMing,DDZL.ShipDate'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao')
    Left = 760
    Top = 8
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1DDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 8
    end
    object Query1ZLDW: TStringField
      FieldName = 'ZLDW'
      FixedChar = True
      Size = 10
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
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 792
    Top = 8
  end
end
