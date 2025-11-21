object Replenish_Stamp_CL: TReplenish_Stamp_CL
  Left = 524
  Top = 168
  Width = 984
  Height = 515
  Caption = 'Replenish_Stamp_CL'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 968
    Height = 52
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 227
      Top = 20
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 433
      Top = 20
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 20
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 806
      Top = 11
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 281
      Top = 14
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 505
      Top = 14
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 649
      Top = 14
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 70
      Top = 14
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 52
    Width = 968
    Height = 424
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'CLLB'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 217
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'CLZMLB'
        Footers = <>
        Width = 55
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
      
        'select ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZ' +
        'L.DWBH,CLZL.CLZMLB '
      'from ZLZLS2 '
      'left join CLZL on CLZL.CLDH = ZLZLS2.CLBH'
      'where 1=2')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1CLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 4
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
  end
end
