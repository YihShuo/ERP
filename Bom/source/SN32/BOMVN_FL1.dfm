object BOMVN_FL: TBOMVN_FL
  Left = 298
  Top = 182
  Width = 411
  Height = 502
  BorderIcons = [biSystemMenu]
  Caption = 'BOMVN_FL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 395
    Height = 463
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
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
        FieldName = 'FLBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XFL'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 102
        Visible = True
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
