object ZSZL: TZSZL
  Left = 324
  Top = 204
  Width = 928
  Height = 480
  Caption = 'GMS_RFT2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 36
      Height = 13
      Caption = 'supplier'
    end
    object Label2: TLabel
      Left = 264
      Top = 24
      Width = 70
      Height = 13
      Caption = 'suppilier_name'
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 345
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 487
      Top = 20
      Width = 75
      Height = 25
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 912
    Height = 369
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT*FROM ZSZL')
    Left = 192
    Top = 240
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.ZSZL.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.ZSZL.zsywjc'
      FixedChar = True
    end
  end
end
