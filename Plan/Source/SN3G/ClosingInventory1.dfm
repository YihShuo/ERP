object ClosingInventory: TClosingInventory
  Left = 612
  Top = 243
  Width = 650
  Height = 474
  Caption = 'Closing Inventory'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 634
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 36
      Height = 16
      Caption = 'Month'
    end
    object Label2: TLabel
      Left = 160
      Top = 13
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object DTP1: TDateTimePicker
      Left = 57
      Top = 9
      Width = 81
      Height = 24
      Date = 45539.369693611110000000
      Format = 'yyyy/MM'
      Time = 45539.369693611110000000
      MinDate = 45505.000000000000000000
      TabOrder = 0
    end
    object Button1: TButton
      Left = 545
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ED_RY: TEdit
      Left = 184
      Top = 9
      Width = 113
      Height = 24
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 634
    Height = 394
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
    HorzScrollBar.Tracking = True
    PopupMenu = PopupMenu1
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        Title.Caption = 'Year'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        Title.Caption = 'Month'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Building'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'Cycle'
        Width = 100
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Title.Caption = 'User ID'
        Width = 60
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'User Date'
        Width = 80
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 128
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Size = 2
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query1Building: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Query1Lean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 160
    object RegenerateClosingInventory1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Regenerate Closing Inventory'
      OnClick = RegenerateClosingInventory1Click
    end
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 128
  end
end
