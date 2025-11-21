object OutsoleDDZLRpt_XXGJ: TOutsoleDDZLRpt_XXGJ
  Left = 650
  Top = 319
  Width = 309
  Height = 450
  Caption = 'OutsoleDDZLRpt_XXGJ'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 301
    Height = 419
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object XXGJQry: TQuery
    DatabaseName = 'DB'
    DataSource = OutsoleDDZLRtp.DS2
    SQL.Strings = (
      'select top 100 XXZL.ARTICLE,XXGJS.XXCC,XXGJS.GJCC from XXZL'
      
        'left join XXGJS on XXGJS.XieXing=XXZL.XieXing  and XXGJS.GJLB=10' +
        '1'
      'where XXZL.ARTICLE=:Article')
    Left = 100
    Top = 86
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ARTICLE'
        ParamType = ptUnknown
        Size = 21
      end>
    object XXGJQryARTICLE: TStringField
      DisplayWidth = 20
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object XXGJQryXXCC: TStringField
      DisplayWidth = 7
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object XXGJQryGJCC: TStringField
      DisplayWidth = 6
      FieldName = 'GJCC'
      FixedChar = True
      Size = 6
    end
  end
  object DS1: TDataSource
    DataSet = XXGJQry
    Left = 100
    Top = 119
  end
end
