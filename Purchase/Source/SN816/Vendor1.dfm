object Vendor: TVendor
  Left = 647
  Top = 311
  Width = 578
  Height = 565
  Caption = 'Vendor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 91
      Height = 16
      Caption = 'ERP Vendor ID'
    end
    object Label2: TLabel
      Left = 248
      Top = 14
      Width = 88
      Height = 16
      Caption = 'Flex Vendor ID'
    end
    object Label3: TLabel
      Left = 24
      Top = 39
      Width = 84
      Height = 16
      Caption = 'Vendor Name'
    end
    object ED_ERPVendorID: TEdit
      Left = 114
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 475
      Top = 10
      Width = 75
      Height = 48
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ED_FlexVendorID: TEdit
      Left = 343
      Top = 10
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object ED_VendorName: TEdit
      Left = 114
      Top = 35
      Width = 351
      Height = 24
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 562
    Height = 461
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'ERP Vendor ID'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'zsdhflex'
        Footers = <>
        Title.Caption = 'Flex Vendor ID'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Vendor Name'
        Width = 320
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT zszl_flex.zsdh, zszl_flex.zsdhflex, ZSZL.zsywjc FROM zszl' +
        '_flex'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = zszl_flex.ZSDH')
    Left = 16
    Top = 128
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'LIY_ERP.zszl_flex.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsdhflex: TStringField
      FieldName = 'zsdhflex'
      Origin = 'LIY_ERP.zszl_flex.zsdhflex'
      FixedChar = True
      Size = 15
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'LIY_ERP.ZSZL.zsywjc'
      FixedChar = True
    end
  end
end
