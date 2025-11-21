object XXZLRuber: TXXZLRuber
  Left = 697
  Top = 254
  Width = 625
  Height = 285
  Caption = 'XXZLRuber'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
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
    Width = 609
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
      Left = 332
      Top = 13
      Width = 37
      Height = 20
      Caption = 'SKU:'
    end
    object Label2: TLabel
      Left = 13
      Top = 13
      Width = 59
      Height = 20
      Caption = 'XieXing:'
    end
    object Label3: TLabel
      Left = 193
      Top = 13
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Button1: TButton
      Left = 530
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
    object SKUEdit: TEdit
      Left = 373
      Top = 8
      Width = 138
      Height = 28
      TabOrder = 1
    end
    object XieXingEdit: TEdit
      Left = 77
      Top = 9
      Width = 106
      Height = 28
      TabOrder = 2
    end
    object SheHaoEdit: TEdit
      Left = 264
      Top = 9
      Width = 65
      Height = 28
      TabOrder = 3
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 49
    Width = 609
    Height = 198
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
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select top 100 XieXing,SheHao,Article,YSSM from LIY_DD.dbo.XXZL ' +
        'XXZL where 1=1')
    Left = 304
    Top = 160
    object Query1XieXing: TStringField
      DisplayWidth = 18
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object Query1SheHao: TStringField
      DisplayWidth = 7
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      DisplayWidth = 20
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1YSSM: TStringField
      DisplayWidth = 200
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 336
    Top = 160
  end
end
