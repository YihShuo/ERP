object Choose_Supplier_Dev: TChoose_Supplier_Dev
  Left = 406
  Top = 215
  Width = 544
  Height = 543
  Caption = 'Choose Supplier'
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 66
      Height = 16
      Caption = 'Supplier ID'
    end
    object Label2: TLabel
      Left = 176
      Top = 16
      Width = 90
      Height = 16
      Caption = 'Supplier Name'
    end
    object ED_SupID: TEdit
      Left = 87
      Top = 13
      Width = 74
      Height = 24
      TabOrder = 0
    end
    object ED_SupName: TEdit
      Left = 271
      Top = 13
      Width = 138
      Height = 24
      TabOrder = 1
    end
    object Button1: TButton
      Left = 432
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 528
    Height = 455
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #24288#21830#32232#34399'|Supplier ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|Supplier Name'
        Width = 400
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 160
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 128
  end
end
