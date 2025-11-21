object PurchaseMerge_SupplierName: TPurchaseMerge_SupplierName
  Left = 406
  Top = 243
  BorderStyle = bsDialog
  Caption = 'PurchaseMerge_SupplierName'
  ClientHeight = 288
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 32
      Top = 12
      Width = 74
      Height = 16
      Caption = 'Supplier No:'
    end
    object Label7: TLabel
      Left = 12
      Top = 44
      Width = 93
      Height = 16
      Caption = 'Supplier Name:'
    end
    object Button1: TButton
      Left = 264
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object SupplierNoEdit: TEdit
      Left = 113
      Top = 10
      Width = 136
      Height = 24
      TabOrder = 1
    end
    object SupplierNMEdit: TEdit
      Left = 112
      Top = 40
      Width = 137
      Height = 24
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 485
    Height = 207
    Align = alClient
    DataSource = ZSZL_DS
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'No.'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier Name'
        Width = 271
      end>
  end
  object ZSZL_DS: TDataSource
    DataSet = ZSZL
    Left = 264
    Top = 152
  end
  object ZSZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select zsdh,zsywjc from zszl'
      'order by zsdh,zsywjc')
    Left = 264
    Top = 184
    object ZSZLzsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl.zsdh'
      FixedChar = True
      Size = 6
    end
    object ZSZLzsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
    end
  end
end
