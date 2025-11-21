object GMS_RFT2: TGMS_RFT2
  Left = 257
  Top = 227
  Width = 928
  Height = 432
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
      Left = 55
      Top = 28
      Width = 44
      Height = 13
      Caption = 'SUPNO :'
    end
    object Label2: TLabel
      Left = 258
      Top = 27
      Width = 37
      Height = 13
      Caption = 'NAME :'
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 312
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 461
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
    Height = 321
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
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
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
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
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
    DataSource = GMS_RFT.DS2
    SQL.Strings = (
      'SELECT*FROM ZSZL')
    UpdateObject = UpdateSQL1
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
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ZSZL.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.ZSZL.USERDATE'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 264
    Top = 192
  end
end
