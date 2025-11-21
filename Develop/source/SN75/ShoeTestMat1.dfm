object ShoeTestMat: TShoeTestMat
  Left = 190
  Top = 127
  Width = 928
  Height = 480
  Caption = 'ShoeTestMat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 89
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 80
      Top = 24
      Width = 81
      Height = 20
      Caption = 'Mat. Code :'
    end
    object lbl2: TLabel
      Left = 312
      Top = 24
      Width = 85
      Height = 20
      Caption = 'Mat. Name :'
    end
    object Codeedt: TEdit
      Left = 168
      Top = 24
      Width = 121
      Height = 28
      TabOrder = 0
    end
    object Nameedt: TEdit
      Left = 408
      Top = 24
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object btn1: TButton
      Left = 592
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 912
    Height = 353
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Title.Caption = 'Mat. Code'
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Mat. Name'
        Width = 500
      end>
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 112
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * '
      'from CLZL'
      'where 1=2')
    Left = 120
    Top = 152
    object qry1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object qry1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
  end
end
