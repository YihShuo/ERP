object DelChemical_SCBH: TDelChemical_SCBH
  Left = 418
  Top = 242
  Width = 553
  Height = 364
  BorderIcons = [biSystemMenu]
  Caption = 'DelChemical_SCBH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 264
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 545
    Height = 273
    Align = alClient
    DataSource = DS1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH1'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SB'
        Width = 35
        Visible = True
      end>
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select DDBH,ZLBH1,XieXing,SheHao,Article,YN as SB'
      'from LIY_DD.dbo.DDZL DDZL')
    Left = 224
    Top = 152
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object DDZLZLBH1: TStringField
      FieldName = 'ZLBH1'
      FixedChar = True
      Size = 18
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object DDZLSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 256
    Top = 152
  end
end
