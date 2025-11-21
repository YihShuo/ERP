object ExtraMat_Ord: TExtraMat_Ord
  Left = 547
  Top = 252
  Width = 1180
  Height = 444
  Caption = 'ExtraMat_Ord'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 708
    Top = 54
    Width = 65
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ArtName:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1164
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
      Left = 4
      Top = 20
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 206
      Top = 19
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Label5: TLabel
      Left = 660
      Top = 18
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label6: TLabel
      Left = 0
      Top = 55
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 192
      Top = 57
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label3: TLabel
      Left = 1040
      Top = 13
      Width = 39
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 441
      Top = 17
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
    end
    object Button1: TButton
      Left = 972
      Top = 48
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 75
      Top = 16
      Width = 114
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
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 729
      Top = 14
      Width = 136
      Height = 24
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 75
      Top = 52
      Width = 114
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = ExtraMaterial.DS4
      ReadOnly = True
      TabOrder = 5
    end
    object DBMemo1: TDBMemo
      Left = 268
      Top = 48
      Width = 389
      Height = 33
      Color = 14286847
      DataField = 'YWPM'
      DataSource = ExtraMaterial.DS4
      ReadOnly = True
      TabOrder = 6
    end
    object CB1: TCheckBox
      Left = 876
      Top = 58
      Width = 85
      Height = 17
      Caption = 'NO OK'
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1068
      Top = 47
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 270
      Top = 16
      Width = 162
      Height = 24
      TabOrder = 1
    end
    object CBX2: TComboBox
      Left = 978
      Top = 10
      Width = 57
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
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
    object CBX3: TComboBox
      Left = 1080
      Top = 9
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 9
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
    object RB1: TRadioButton
      Left = 873
      Top = 13
      Width = 99
      Height = 17
      Caption = 'ETD Year:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 661
      Top = 61
      Width = 65
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object Edit2: TEdit
      Left = 494
      Top = 15
      Width = 162
      Height = 24
      TabOrder = 12
      OnKeyPress = Edit3KeyPress
    end
  end
  object BuyNoEdit: TEdit
    Left = 731
    Top = 51
    Width = 136
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1164
    Height = 316
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'buyno'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Shehao'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'oldCLSL'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = ExtraMaterial.DS4
    RequestLive = True
    SQL.Strings = (
      
        'select ZLZLS2.ZLBH,ddzl.buyno,XXZl.XieXing,XXZL.Shehao,XXZL.Arti' +
        'cle,'
      
        'XXZl.XieMing,ZLZLS2.CLSL,ZLZLS2.CLSL as okQty,ZLZLS2.CLSL as old' +
        'CLSL'
      'from ZLZLS2 '
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      
        'left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      'where ZLZLS2.CLBH='#39'ACS0000001'#39)
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1buyno: TStringField
      FieldName = 'buyno'
      FixedChar = True
      Size = 10
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1oldCLSL: TFloatField
      FieldName = 'oldCLSL'
      DisplayFormat = '##,#0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 384
    Top = 160
  end
end
