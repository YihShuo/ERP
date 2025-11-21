object QCXXCJ_XX: TQCXXCJ_XX
  Left = 366
  Top = 190
  Width = 510
  Height = 434
  Caption = 'QCXXCJ_XX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 18
      Width = 72
      Height = 20
      Caption = 'ARTICLE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 209
      Top = 18
      Width = 59
      Height = 20
      Caption = 'XieXing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 83
      Top = 16
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 272
      Top = 16
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 401
      Top = 14
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 494
    Height = 339
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
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
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 147
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 193
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 144
  end
  object Query1: TQuery
    OnNewRecord = Query1NewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XieXing,SheHao,ARTICLE,KHDH,KFXXCZ from xxzl'
      'where KHDH = '#39'001'#39
      'order by xiexing')
    UpdateObject = UpdateSQL1
    Left = 160
    Top = 112
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.xxzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.xxzl.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.xxzl.ARTICLE'
      FixedChar = True
    end
    object Query1KHDH: TStringField
      FieldName = 'KHDH'
      Origin = 'DB.xxzl.KHDH'
      FixedChar = True
      Size = 4
    end
    object Query1KFXXCZ: TStringField
      FieldName = 'KFXXCZ'
      Origin = 'DB.xxzl.KFXXCZ'
      FixedChar = True
      Size = 50
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update xxzl'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  ARTICLE = :ARTICLE,'
      '  KHDH = :KHDH,'
      '  KFXXCZ = :KFXXCZ'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  ARTICLE = :OLD_ARTICLE and'
      '  KHDH = :OLD_KHDH and'
      '  KFXXCZ = :OLD_KFXXCZ')
    InsertSQL.Strings = (
      'insert into xxzl'
      '  (XieXing, SheHao, ARTICLE, KHDH, KFXXCZ)'
      'values'
      '  (:XieXing, :SheHao, :ARTICLE, :KHDH, :KFXXCZ)')
    DeleteSQL.Strings = (
      'delete from xxzl'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  ARTICLE = :OLD_ARTICLE and'
      '  KHDH = :OLD_KHDH and'
      '  KFXXCZ = :OLD_KFXXCZ')
    Left = 192
    Top = 112
  end
end
