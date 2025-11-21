object UpperRYDialog: TUpperRYDialog
  Left = 433
  Top = 282
  Width = 859
  Height = 512
  Caption = 'RY'
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
    Width = 843
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 48
      Height = 16
      Caption = 'Building'
    end
    object Label3: TLabel
      Left = 152
      Top = 13
      Width = 30
      Height = 16
      Caption = 'Lean'
    end
    object Label4: TLabel
      Left = 304
      Top = 13
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object CB_Building: TComboBox
      Left = 69
      Top = 9
      Width = 63
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 0
      OnChange = CB_BuildingChange
    end
    object CB_Lean: TComboBox
      Left = 187
      Top = 9
      Width = 94
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 1
    end
    object ED_RY: TEdit
      Left = 328
      Top = 9
      Width = 97
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 843
    Height = 432
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    HorzScrollBar.Tracking = True
    ReadOnly = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'building_no'
        Footers = <>
        Title.Caption = 'Building'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'lean_no'
        Footers = <>
        Title.Caption = 'Lean'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'schedule_date'
        Footers = <>
        Title.Caption = 'Plan Date'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 120
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = 'GAC'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'country'
        Footers = <>
        Title.Caption = 'Country'
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 128
    object Query1building_no: TStringField
      FieldName = 'building_no'
      Size = 10
    end
    object Query1lean_no: TStringField
      FieldName = 'lean_no'
      Size = 10
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1country: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 96
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 128
  end
end
