object RBOMM_KFZL: TRBOMM_KFZL
  Left = 585
  Top = 410
  Width = 452
  Height = 313
  Caption = 'RBOMM_KFZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 444
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 31
      Top = 13
      Width = 34
      Height = 16
      Caption = 'KFZL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 201
      Top = 13
      Width = 35
      Height = 16
      Caption = 'KFJC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 354
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
    object KFDHEdit: TEdit
      Left = 69
      Top = 9
      Width = 84
      Height = 28
      TabOrder = 1
    end
    object KFJCEdit: TEdit
      Left = 240
      Top = 9
      Width = 105
      Height = 28
      TabOrder = 2
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 49
    Width = 444
    Height = 233
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
        FieldName = 'KFDH'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 284
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KFDH,KFJC from LIY_DD.dbo.KFZL KFZL where 1=1')
    Left = 168
    Top = 96
    object Query1KFDH: TStringField
      FieldName = 'KFDH'
      FixedChar = True
      Size = 4
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 96
  end
end
