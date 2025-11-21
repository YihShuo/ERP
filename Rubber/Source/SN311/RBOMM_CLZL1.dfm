object RBOMM_CLZL: TRBOMM_CLZL
  Left = 655
  Top = 416
  Width = 470
  Height = 299
  Caption = 'RBOMM_CLZL'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
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
      Width = 39
      Height = 16
      Caption = 'CLDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 209
      Top = 13
      Width = 45
      Height = 16
      Caption = 'YWPM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 378
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
    object CLDHEdit: TEdit
      Left = 69
      Top = 9
      Width = 106
      Height = 28
      TabOrder = 1
    end
    object YWPMEdit: TEdit
      Left = 256
      Top = 9
      Width = 105
      Height = 28
      TabOrder = 2
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 49
    Width = 462
    Height = 219
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
        FieldName = 'cldh'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 189
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select CLZL.cldh,CLZL.YWPM,CLZL.ZWPM  From LIY_DD.dbo.CLZL  CLZL'
      'where (CLZL.cldh like '#39'%'#39') and (cllb='#39'V'#39') ')
    Left = 168
    Top = 96
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 60
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 60
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 96
  end
end
