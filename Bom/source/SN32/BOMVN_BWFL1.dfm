object BOMVN_BWFL: TBOMVN_BWFL
  Left = 434
  Top = 244
  Width = 531
  Height = 468
  BorderIcons = [biSystemMenu]
  Caption = 'BOMVN_BWFL'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 515
    Height = 429
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XFL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from XXBWFLS'
      'order by DFL,FLBH')
    Left = 168
    Top = 160
    object Query1FLBH: TStringField
      DisplayWidth = 9
      FieldName = 'FLBH'
      Origin = 'DB.XXBWFLS.FLBH'
      FixedChar = True
      Size = 2
    end
    object Query1DFL: TStringField
      DisplayWidth = 10
      FieldName = 'DFL'
      Origin = 'DB.XXBWFLS.DFL'
      FixedChar = True
      Size = 1
    end
    object Query1XFL: TStringField
      DisplayWidth = 9
      FieldName = 'XFL'
      Origin = 'DB.XXBWFLS.XFL'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      DisplayWidth = 14
      FieldName = 'USERDATE'
      Origin = 'DB.XXBWFLS.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERID: TStringField
      DisplayWidth = 14
      FieldName = 'USERID'
      Origin = 'DB.XXBWFLS.USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 128
  end
end
