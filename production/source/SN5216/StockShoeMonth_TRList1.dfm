object StockShoeMonth_TRList: TStockShoeMonth_TRList
  Left = 693
  Top = 308
  Width = 577
  Height = 333
  Caption = 'StockShoeMonth_TRList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 569
    Height = 253
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
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'DDBH1'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 81
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 16
      Caption = 'DDBH'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 46
      Height = 16
      Caption = 'DDBH1'
    end
    object Button1: TButton
      Left = 393
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 481
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 63
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 263
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from YWCPMONTH_DDZLTR ')
    Left = 136
    Top = 104
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.YWCPMONTH_DDZLTR.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.YWCPMONTH_DDZLTR.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCPMONTH_DDZLTR.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1DDBH1: TStringField
      FieldName = 'DDBH1'
      Origin = 'DB.YWCPMONTH_DDZLTR.DDBH1'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCPMONTH_DDZLTR.Qty'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCPMONTH_DDZLTR.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCPMONTH_DDZLTR.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCPMONTH_DDZLTR.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 136
    Top = 168
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
