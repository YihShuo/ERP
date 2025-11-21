object SampleMaterial_SupplierDev: TSampleMaterial_SupplierDev
  Left = 337
  Top = 217
  Width = 762
  Height = 410
  Caption = 'SampleMaterial_SupplierDev'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 86
      Height = 20
      Caption = 'Supplier No:'
    end
    object Label3: TLabel
      Left = 160
      Top = 15
      Width = 56
      Height = 20
      Caption = 'English:'
    end
    object zsdhEdit: TEdit
      Left = 96
      Top = 13
      Width = 57
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = zsqmEditKeyDown
    end
    object Button1: TButton
      Left = 556
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ZSYWJCEdit: TEdit
      Left = 218
      Top = 10
      Width = 319
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = zsqmEditKeyDown
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 746
    Height = 323
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = #24288#21830#20195#30908'|No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'zsqm'
        Footers = <>
        Title.Caption = #20013#25991#35498#26126'|Chinese'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = #33521#25991#35498#26126'|English'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 331
      end
      item
        EditButtons = <>
        FieldName = 'SamplePurchaser'
        Footers = <>
        Title.Caption = #25505#36092'|Purchaser'
        Width = 89
      end>
  end
  object DS1: TDataSource
    DataSet = SupplierQry
    Left = 424
    Top = 128
  end
  object SupplierQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select zsdh,zsqm,ZSYWJC,SamplePurchaser from ZSZL where zsdh<>'#39 +
        #39' and YN=1 ')
    Left = 424
    Top = 160
    object SupplierQryzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object SupplierQryzsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object SupplierQryZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object SupplierQrySamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
  end
end
