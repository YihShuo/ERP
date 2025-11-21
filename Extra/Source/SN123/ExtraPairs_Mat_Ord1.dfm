object ExtraPairs_Mat_Ord: TExtraPairs_Mat_Ord
  Left = 361
  Top = 245
  Width = 772
  Height = 415
  Caption = 'ExtraPairs_Mat_Ord'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
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
      Left = 2
      Top = 17
      Width = 55
      Height = 16
      Caption = 'OrderNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 150
      Top = 17
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 500
      Top = 18
      Width = 31
      Height = 16
      Caption = 'ETD:'
    end
    object Label5: TLabel
      Left = 312
      Top = 50
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 11
      Top = 53
      Width = 44
      Height = 16
      Caption = 'BuyNo:'
    end
    object Label6: TLabel
      Left = 326
      Top = 19
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label7: TLabel
      Left = 156
      Top = 52
      Width = 53
      Height = 16
      Caption = 'DAOMH:'
    end
    object Button1: TButton
      Left = 654
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 58
      Top = 16
      Width = 89
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object YearCBX: TComboBox
      Left = 536
      Top = 13
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 3
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
    object MonthCBX: TComboBox
      Left = 601
      Top = 13
      Width = 49
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 4
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
    object Edit3: TEdit
      Left = 371
      Top = 16
      Width = 97
      Height = 24
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object CB1: TCheckBox
      Left = 481
      Top = 51
      Width = 65
      Height = 17
      Caption = 'NO OK'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object Button2: TButton
      Left = 654
      Top = 43
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 211
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 1
      Text = 'Converse'
    end
    object Edit5: TEdit
      Left = 58
      Top = 48
      Width = 87
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
      OnKeyPress = Edit5KeyPress
    end
    object Edit2: TEdit
      Left = 372
      Top = 47
      Width = 97
      Height = 24
      TabOrder = 9
    end
    object Edit6: TEdit
      Left = 209
      Top = 48
      Width = 97
      Height = 24
      TabOrder = 10
    end
    object ETDck: TCheckBox
      Left = 480
      Top = 18
      Width = 17
      Height = 17
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 89
    Width = 756
    Height = 288
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'OrderNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = 'ArtNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = 'Color'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'ArtName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.FieldName = 'Pairs'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'OkQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 59
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select DDZL.BUYNO,DDZL.DDBH,XXZL.XieXing,XXZL.SheHao,XXZL.ARTICL' +
        'E,DDZL.ShipDate,XXZL.XieMing,XXZL.ARTICLE,DDZL.Pairs,EXTRASS.OkQ' +
        'ty'
      'from DDZL'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      
        'left join (select ZLBH,SUM(Qty) as OkQty from EXTRASS where CLBH' +
        '='#39'VJ10000001'#39' and XieXing='#39'CNS02'#39' and SheHao='#39'08'#39' Group by ZLBH)' +
        ' EXTRASS on EXTRASS.ZLBH=DDZL.DDBH'
      'where  DDZL.XieXing='#39'CNS02'#39' and DDZL.SheHao='#39'08'#39' ')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
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
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1OkQty: TFloatField
      FieldName = 'OkQty'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
end
