object ExtraMat_CL: TExtraMat_CL
  Left = 260
  Top = 165
  Width = 816
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'ExtraMat_CL'
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
    Width = 800
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
      Left = 208
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
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label4: TLabel
      Left = 208
      Top = 56
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 344
      Top = 56
      Width = 43
      Height = 16
      Caption = 'OrdNo:'
    end
    object Label6: TLabel
      Left = 392
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Button1: TButton
      Left = 584
      Top = 48
      Width = 97
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 272
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
      Left = 456
      Top = 16
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
      Left = 80
      Top = 48
      Width = 81
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
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
      Left = 256
      Top = 48
      Width = 65
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 5
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
      Left = 392
      Top = 48
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = Edit5KeyPress
    end
    object CB1: TCheckBox
      Left = 584
      Top = 24
      Width = 97
      Height = 17
      Caption = 'All Material'
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 800
    Height = 373
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
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
        FieldName = 'CLBH'
        Width = 89
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
        Width = 447
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CQDH'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okQty'
        Width = 63
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
      'select distinct ZLZLS2.CLBH,ZLZLS2.CLSL,'
      'CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CGZLSS.Qty as okQty'
      'from ZLZLS2 left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      
        'left join CGZLSS on CGZLSS.ZLBH=ZLZLS2.ZLBH and CGZLSS.CLBH=ZLZL' +
        'S2.CLBH'
      'left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH'
      'where ZLZLS2.CLBH='#39'ACS0000001'#39)
    Left = 424
    Top = 160
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
      DisplayFormat = '##,#0.0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.0'
    end
  end
end
