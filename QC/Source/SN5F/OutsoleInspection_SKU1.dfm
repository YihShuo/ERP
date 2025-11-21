object OutsoleInspection_SKU: TOutsoleInspection_SKU
  Left = 419
  Top = 294
  Width = 511
  Height = 494
  Caption = 'OutsoleInspection_SKU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 65
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 35
      Height = 19
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ED_SKU: TEdit
      Left = 65
      Top = 21
      Width = 248
      Height = 26
      TabOrder = 0
    end
    object Button1: TButton
      Left = 344
      Top = 18
      Width = 113
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 503
    Height = 398
    Align = alClient
    Color = clBlack
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -24
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 450
      end>
  end
  object QSKU: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 168
    object QSKUArticle: TStringField
      FieldName = 'Article'
    end
  end
  object DS1: TDataSource
    DataSet = QSKU
    Left = 16
    Top = 136
  end
end
