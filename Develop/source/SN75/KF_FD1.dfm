object KF_FD: TKF_FD
  Left = 624
  Top = 164
  Width = 363
  Height = 559
  Caption = 'KF_FD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 347
    Height = 521
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfxxzl.FD from kfxxzl'
      'where isnull(kfxxzl.FD,'#39#39') <> '#39#39
      'group by kfxxzl.FD'
      'order by kfxxzl.FD'
      '')
    Left = 184
    Top = 152
    object Query1FD: TStringField
      FieldName = 'FD'
      Origin = 'DB.xxzlKF.FD'
      FixedChar = True
    end
  end
end
