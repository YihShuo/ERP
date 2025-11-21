object UseStock_CL: TUseStock_CL
  Left = 390
  Top = 332
  Width = 602
  Height = 335
  BorderIcons = [biSystemMenu]
  Caption = 'UseStock_CL'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 17
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 188
      Top = 17
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 504
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 252
      Top = 14
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 72
      Top = 14
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 337
      Top = 14
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 423
      Top = 14
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 594
    Height = 255
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
        FieldName = 'cldh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 234
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 77
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
      'select *'
      'from clzl'
      'order by CLDH')
    Left = 424
    Top = 160
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      DisplayWidth = 6
      FieldName = 'cllb'
      Origin = 'DB.clzl.cllb'
      FixedChar = True
      Size = 3
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
    end
  end
end
