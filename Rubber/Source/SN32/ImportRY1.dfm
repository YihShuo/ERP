object ImportRY: TImportRY
  Left = 608
  Top = 222
  Width = 458
  Height = 298
  Caption = 'ImportRY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 442
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
      Left = 23
      Top = 11
      Width = 27
      Height = 20
      Caption = 'RY:'
    end
    object Button1: TButton
      Left = 202
      Top = 3
      Width = 75
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object RYEdit: TEdit
      Left = 55
      Top = 8
      Width = 138
      Height = 28
      TabOrder = 1
    end
    object chkOutsoleSize: TCheckBox
      Left = 284
      Top = 13
      Width = 121
      Height = 17
      Caption = 'Outsole Size'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 49
    Width = 442
    Height = 211
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gdMainDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
      end>
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT top 10 *  from LIY_ERP.dbo.DDZL')
    Left = 88
    Top = 80
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZLPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DDZLShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object DDZLGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object DDZLCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object DDZLKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object DDZLBB: TStringField
      FieldName = 'BB'
      FixedChar = True
      Size = 3
    end
    object DDZLKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object DDZLVersion: TSmallintField
      FieldName = 'Version'
    end
    object DDZLTrader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object DDZLTraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object DDZLDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object DDZLDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object DDZLCPLB: TStringField
      FieldName = 'CPLB'
      FixedChar = True
      Size = 1
    end
    object DDZLBZFS: TStringField
      FieldName = 'BZFS'
      FixedChar = True
      Size = 1
    end
    object DDZLDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object DDZLDDGB: TStringField
      FieldName = 'DDGB'
      FixedChar = True
      Size = 4
    end
    object DDZLDDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object DDZLJYTJ: TStringField
      FieldName = 'JYTJ'
      FixedChar = True
      Size = 4
    end
    object DDZLFKTJ: TStringField
      FieldName = 'FKTJ'
      FixedChar = True
      Size = 4
    end
    object DDZLTotals: TFloatField
      FieldName = 'Totals'
    end
    object DDZLZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object DDZLGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object DDZLCFNO: TStringField
      FieldName = 'CFNO'
      FixedChar = True
    end
    object DDZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DDZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object DDZLDDCZ: TStringField
      FieldName = 'DDCZ'
      FixedChar = True
    end
    object DDZLDDPACKSM: TStringField
      FieldName = 'DDPACKSM'
      FixedChar = True
      Size = 150
    end
    object DDZLLABELCHARGE: TFloatField
      FieldName = 'LABELCHARGE'
    end
    object DDZLGender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
    object DDZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DDZLordermode: TStringField
      FieldName = 'ordermode'
      FixedChar = True
      Size = 3
    end
    object DDZLBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object DDZLPairs2: TIntegerField
      FieldName = 'Pairs2'
    end
    object DDZLbalance2: TStringField
      FieldName = 'balance2'
      FixedChar = True
      Size = 2
    end
    object DDZLFlag: TStringField
      FieldName = 'Flag'
      FixedChar = True
      Size = 1
    end
    object DDZLRYTYPE: TStringField
      FieldName = 'RYTYPE'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 120
    Top = 80
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT top 10 DDBH, Pairs, ShipDate   from LIY_ERP.dbo.DDZL')
    Left = 88
    Top = 112
  end
end
