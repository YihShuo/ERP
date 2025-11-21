object NewEquipment_CLZL: TNewEquipment_CLZL
  Left = 0
  Top = 0
  Caption = 'NewEquipment_CLZL'
  ClientHeight = 302
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 559
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
      Left = 6
      Top = 14
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 134
      Top = 14
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 344
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 33
      Top = 11
      Width = 95
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 183
      Top = 11
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 559
    Height = 253
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
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
    Columns = <
      item
        Expanded = False
        FieldName = 'cldh'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ywpm'
        Width = 392
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 152
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cldh,ywpm, '#39'2'#39' as LB '
      'from CLZL')
    Left = 256
    Top = 192
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
  end
end
