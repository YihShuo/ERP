object PurOther_safe: TPurOther_safe
  Left = 337
  Top = 204
  Width = 796
  Height = 433
  Caption = 'PurOther_safe'
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
    Width = 780
    Height = 73
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
      Width = 51
      Height = 20
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 192
      Top = 32
      Width = 73
      Height = 20
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 576
      Top = 24
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 272
      Top = 24
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 80
      Top = 24
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 376
      Top = 24
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 472
      Top = 24
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 780
    Height = 321
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 468
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 113
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
      'select clzl.CLdH,CLZL.YWPM,CLZL.DWBH from clzl'
      ' where cldh like '#39'A%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and CLZL.YWPM like '#39'%%'#39
      ' and clzl.yn='#39'1'#39
      ' order by cldh ')
    Left = 424
    Top = 160
    object Query1CLdH: TStringField
      FieldName = 'CLdH'
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
  end
end
