object Replenish_Stamp_SCBH: TReplenish_Stamp_SCBH
  Left = 475
  Top = 195
  Width = 717
  Height = 448
  Caption = 'Replenish_Stamp_SCBH'
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
    Width = 701
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 19
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 220
      Top = 19
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Edit1: TEdit
      Left = 77
      Top = 14
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 395
      Top = 11
      Width = 75
      Height = 30
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 273
      Top = 14
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGridEh1: TDBGrid
    Left = 0
    Top = 51
    Width = 701
    Height = 358
    Align = alClient
    DataSource = DS1
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
        Expanded = False
        FieldName = 'DDBH'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GSBH'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KHPO'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pairs'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDZT'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Shipdate'
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DDBH, GSBH, Article, KHPO, Pairs, DDZT, Shipdate'
      'FROM DDZL '
      'WHERE 1=2')
    Left = 224
    Top = 152
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query1Shipdate: TDateTimeField
      FieldName = 'Shipdate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 152
  end
end
