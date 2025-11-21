object MatMoSon_S: TMatMoSon_S
  Left = 378
  Top = 239
  Width = 687
  Height = 418
  BorderIcons = [biSystemMenu]
  Caption = 'MatMoSon_S'
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
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 671
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 192
      Top = 32
      Width = 64
      Height = 16
      Caption = 'EngName:'
    end
    object Label3: TLabel
      Left = 384
      Top = 32
      Width = 62
      Height = 16
      Caption = 'TWName:'
    end
    object Button1: TButton
      Left = 584
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 256
      Top = 24
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 448
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 671
    Height = 305
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 183
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 214
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
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
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.clzl.zwpm'
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
