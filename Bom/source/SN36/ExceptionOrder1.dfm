object ExceptionOrder: TExceptionOrder
  Left = 318
  Top = 97
  Width = 818
  Height = 563
  Caption = 'Exception Order'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 97
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 29
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 184
      Top = 29
      Width = 41
      Height = 16
      Caption = 'Article:'
    end
    object lbCSD: TLabel
      Left = 29
      Top = 66
      Width = 31
      Height = 16
      Caption = 'CSD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbTo: TLabel
      Left = 210
      Top = 64
      Width = 20
      Height = 16
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 96
      Width = 320
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 395
      Top = 55
      Width = 94
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 232
      Top = 24
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button2: TButton
      Left = 395
      Top = 16
      Width = 94
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object dtpStart: TDateTimePicker
      Left = 63
      Top = 61
      Width = 89
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dtpEnd: TDateTimePicker
      Left = 233
      Top = 59
      Width = 91
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 506
      Top = 18
      Width = 247
      Height = 71
      Caption = 'Color info'
      TabOrder = 7
      object Label19: TLabel
        Left = 8
        Top = 20
        Width = 147
        Height = 16
        Caption = 'Red color : 07.0-quote >0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 42
        Width = 165
        Height = 16
        Caption = 'Blue color : No quote usage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 802
    Height = 428
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            ValueType = fvtCount
          end>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 90
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDBH, ddzl.gsbh, ddzl.XieXing, ddzl.Shehao, ddzl.Article,' +
        ' ddzl.Pairs, ddzl.Shipdate,xtbwyl.expect as exp1,xtbwyl1.expect ' +
        'as exp2,QuoteUsg.XieXing as exp3 from DDZL'
      
        'left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,'#39'1'#39' as expec' +
        't from QuoteUsg,xtbwyl'
      
        'where QuoteUsg.XieXing=xtbwyl.XieXing and QuoteUsg.SheHao=xtbwyl' +
        '.SheHao and QuoteUsg.XTCC=QuoteUsg.XTCC  and (xtbwyl.CLSL-QuoteU' +
        'sg.CLSL)>0'
      
        'Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl on DDZL.XieXi' +
        'ng=xtbwyl.XieXing and DDZL.SheHao=xtbwyl.SheHao'
      
        'left join  (select QuoteUsg.XieXing,QuoteUsg.SheHao,'#39'2'#39' as expec' +
        't from QuoteUsg,xtbwyl1'
      
        'where QuoteUsg.XieXing=xtbwyl1.XieXing and QuoteUsg.SheHao=xtbwy' +
        'l1.SheHao and QuoteUsg.XTCC=QuoteUsg.XTCC  and (xtbwyl1.CLSL-Quo' +
        'teUsg.CLSL)>0'
      
        'Group by QuoteUsg.XieXing,QuoteUsg.SheHao ) xtbwyl1 on DDZL.XieX' +
        'ing=xtbwyl.XieXing and DDZL.SheHao=xtbwyl1.SheHao'
      
        'left join (select XieXing,SheHao from QuoteUsg Group by XieXing,' +
        'SheHao) QuoteUsg on QuoteUsg.XieXing=DDZL.XieXing and QuoteUsg.S' +
        'heHao=DDZL.SheHao '
      
        'where ((xtbwyl.expect is not null or xtbwyl1.expect is not null)' +
        ' or (QuoteUsg.XieXing is null))'
      'and ddbh like '#39'%'#39
      'and article like '#39'93324-086-M%'#39
      'and gsbh='#39'VB2'#39
      
        'and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) be' +
        'tween '
      #39'2015/08/06'#39' and '#39'2015/09/05'#39
      'order by DDBH'
      '')
    Left = 160
    Top = 184
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
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
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1exp1: TStringField
      FieldName = 'exp1'
      FixedChar = True
      Size = 1
    end
    object Query1exp2: TStringField
      FieldName = 'exp2'
      FixedChar = True
      Size = 1
    end
    object Query1exp3: TStringField
      FieldName = 'exp3'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 186
  end
end
