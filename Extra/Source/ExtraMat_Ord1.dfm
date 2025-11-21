object ExtraMat_Ord: TExtraMat_Ord
  Left = 288
  Top = 213
  Width = 826
  Height = 500
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
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
      Left = 8
      Top = 24
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
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label3: TLabel
      Left = 496
      Top = 24
      Width = 31
      Height = 16
      Caption = 'ETD:'
    end
    object Label5: TLabel
      Left = 328
      Top = 24
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label7: TLabel
      Left = 200
      Top = 56
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 736
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 64
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
      OnKeyPress = Edit1KeyPress
    end
    object CBX2: TComboBox
      Left = 536
      Top = 16
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
        '2020')
    end
    object CBX3: TComboBox
      Left = 600
      Top = 16
      Width = 49
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 4
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
    object Edit3: TEdit
      Left = 392
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 48
      Width = 121
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = ExtraMaterial.DS4
      ReadOnly = True
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 272
      Top = 48
      Width = 457
      Height = 33
      Color = 14286847
      DataField = 'YWPM'
      DataSource = ExtraMaterial.DS4
      ReadOnly = True
      TabOrder = 8
    end
    object CB1: TCheckBox
      Left = 664
      Top = 24
      Width = 65
      Height = 17
      Caption = 'NO OK'
      TabOrder = 5
    end
    object Button2: TButton
      Left = 736
      Top = 48
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 224
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 818
    Height = 377
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shehao'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oldCLSL'
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 128
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
      'select ZLZLS2.ZLBH,XXZl.XieXing,XXZL.Shehao,XXZL.Article,'
      
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
end
