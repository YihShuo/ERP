object PurSampleInvoice_ZS: TPurSampleInvoice_ZS
  Left = 441
  Top = 210
  Width = 578
  Height = 445
  BorderIcons = [biSystemMenu]
  Caption = 'PurSampleInvoice_ZS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 10
      Width = 17
      Height = 20
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 90
      Top = 10
      Width = 42
      Height = 20
      Caption = 'Name'
    end
    object Button1: TButton
      Left = 288
      Top = 6
      Width = 79
      Height = 26
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 27
      Top = 6
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 138
      Top = 6
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object SupplierOP: TRadioGroup
      Left = 8
      Top = 34
      Width = 553
      Height = 41
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Supplier VS Purchaser'
        'Show VN Supplier'
        'Show All Supplier')
      ParentFont = False
      TabOrder = 3
    end
    object mineCK: TCheckBox
      Left = 377
      Top = 13
      Width = 97
      Height = 17
      Caption = 'mine'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 562
    Height = 324
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Footers = <>
        Width = 123
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
      
        'select ZSDH,ZSYWJC,ZSQM,BUSERS.USERNAME as SamplePurchaser_Name ' +
        'from ZSZL'
      'left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser')
    Left = 424
    Top = 160
    object Query1ZSDH: TStringField
      DisplayLabel = 'ID'
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier Name'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSQM: TStringField
      FieldName = 'ZSQM'
      FixedChar = True
      Size = 50
    end
    object Query1SamplePurchaser_Name: TStringField
      DisplayLabel = 'Purchaser'
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
  end
end
