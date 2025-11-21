object DelOther_Mat: TDelOther_Mat
  Left = 343
  Top = 195
  Width = 812
  Height = 455
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_Mat'
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
    Width = 796
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 51
      Height = 20
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 224
      Top = 32
      Width = 73
      Height = 20
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 648
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 304
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 80
      Top = 24
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 448
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 796
    Height = 343
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 403
      end
      item
        Color = clInfoBk
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Width = 85
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
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
  end
end
