object PurSize_BL: TPurSize_BL
  Left = 341
  Top = 224
  Width = 806
  Height = 473
  BorderIcons = [biSystemMenu]
  Caption = 'PurSize_BL'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 798
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
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
      Left = 208
      Top = 32
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
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 74
      Height = 20
      Caption = 'ETD Year:'
    end
    object Label4: TLabel
      Left = 208
      Top = 72
      Width = 49
      Height = 20
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 360
      Top = 72
      Width = 50
      Height = 20
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 568
      Top = 24
      Width = 53
      Height = 20
      Caption = 'BWBH:'
    end
    object Button1: TButton
      Left = 568
      Top = 64
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 288
      Top = 24
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
      Left = 80
      Top = 24
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
    object Edit3: TEdit
      Left = 384
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 472
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object CBX2: TComboBox
      Left = 88
      Top = 64
      Width = 105
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 7
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
      Left = 264
      Top = 64
      Width = 65
      Height = 28
      DropDownCount = 12
      ItemHeight = 20
      TabOrder = 8
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
    object Edit5: TEdit
      Left = 424
      Top = 64
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = Edit5KeyPress
    end
    object Edit6: TEdit
      Left = 624
      Top = 16
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit6KeyPress
    end
    object Button2: TButton
      Left = 664
      Top = 64
      Width = 75
      Height = 33
      Caption = 'Calculate'
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 798
    Height = 334
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
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BWBH'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'VNI-Times'
        Font.Style = []
        Width = 515
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 57
        Visible = True
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
      'select  ZLZLS2.ZLBH,ZLZLS2.BWBH,BWZL.YWSM,ZLZLS2.CLBH,'
      'ZLZLS2.CLSL,CLZL.YWPM,CLZL.DWBH'
      'from ZLZLS2 left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      'left join BWZL on BWZL.BWDH=ZLZLS2.BWBH'
      'where ZLZLS2.CLBH='#39'ACS0000001'#39)
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
  end
end
