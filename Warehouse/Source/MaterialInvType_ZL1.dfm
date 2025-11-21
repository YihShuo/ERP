object MaterialInvType_ZL: TMaterialInvType_ZL
  Left = 410
  Top = 209
  Width = 403
  Height = 370
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialInvType_ZL'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 395
    Height = 336
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'Shipdate'
        Footers = <>
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = MaterialInvType.DS1
    SQL.Strings = (
      'select ZLZLS2.CLBH,DDZL.DDBH,DDZL.Shipdate'
      'from ZLZLS2'
      'left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH'
      'where ZLZLS2.CLBH=:CLBH'
      'and DDZL.ShipDate>getdate()'
      'order by DDZL.ZLBH')
    Left = 200
    Top = 104
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Shipdate: TDateTimeField
      FieldName = 'Shipdate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 104
  end
end
