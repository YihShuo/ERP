object MonthStock: TMonthStock
  Left = 219
  Top = 250
  Width = 1351
  Height = 621
  Caption = 'MonthStock'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1343
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 569
      Height = 24
      AutoSize = False
      Caption = 'Month Material Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 3
      Top = 56
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 190
      Top = 56
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 234
      Top = 92
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Location:'
    end
    object Label4: TLabel
      Left = 0
      Top = 92
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 128
      Top = 92
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Edit2: TEdit
      Left = 267
      Top = 54
      Width = 98
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 71
      Top = 54
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 487
      Top = 80
      Width = 88
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 371
      Top = 54
      Width = 90
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 584
      Top = 80
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 64
      Top = 89
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 5
      Text = '2007'
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
      Left = 177
      Top = 89
      Width = 50
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 6
      Text = '01'
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
    object Button3: TButton
      Left = 584
      Top = 40
      Width = 97
      Height = 33
      Caption = 'PRINT'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit4: TEdit
      Left = 467
      Top = 54
      Width = 106
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object DB1: TCheckBox
      Left = 383
      Top = 93
      Width = 96
      Height = 18
      Caption = 'Including 0'
      TabOrder = 9
    end
    object CBX1: TComboBox
      Left = 309
      Top = 89
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 10
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 1343
    Height = 469
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Width = 432
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CKBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LBBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KCBH'
        Width = 47
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH'
      'from KCCLMONTH'
      'left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH'
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDH'
      ''
      'order by KCCLMONTH.CLBH')
    Left = 496
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      KeyFields = 'CLBH'
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
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 144
  end
end
