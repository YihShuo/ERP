object ColorGroup_History: TColorGroup_History
  Left = 402
  Top = 202
  Width = 623
  Height = 350
  Caption = 'ColorGroup_History'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 607
    Height = 311
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'ColorGroup'
        Footers = <>
        Title.Caption = 'Color Group'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Title.Caption = 'Remark of Color Group'
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = MaterialMOQ.DS1
    SQL.Strings = (
      'select * from CLZL_ColorGroup_His'
      'where CLDH =:CLBH'
      'order by VER'
      '')
    Left = 176
    Top = 64
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1VER: TIntegerField
      FieldName = 'VER'
    end
    object Query1ColorGroup: TStringField
      FieldName = 'ColorGroup'
      FixedChar = True
      Size = 50
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 250
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 64
  end
end
