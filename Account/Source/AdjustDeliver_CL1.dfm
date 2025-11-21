object AdjustDeliver_CL: TAdjustDeliver_CL
  Left = 319
  Top = 205
  Width = 658
  Height = 298
  BorderIcons = [biSystemMenu]
  Caption = 'AdjustDeliver_CL'
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
    Width = 650
    Height = 57
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
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Button1: TButton
      Left = 536
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 256
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 344
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 432
      Top = 24
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyPress = Edit4KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 650
    Height = 207
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'cldh'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'VNI-Times'
        Font.Style = []
        Width = 451
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dwbh'
        Width = 53
        Visible = True
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
