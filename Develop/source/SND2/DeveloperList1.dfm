object DeveloperList: TDeveloperList
  Left = 421
  Top = 304
  Width = 621
  Height = 480
  Caption = 'DeveloperList'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 613
    Height = 368
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
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FDTeam'
        Footers = <>
        Title.Caption = 'Developer Team'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'FDID'
        Footers = <>
        Title.Caption = 'Developer ID'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Caption = 'Developer Name'
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 81
    Align = alTop
    TabOrder = 1
    object BB7: TBitBtn
      Left = 0
      Top = -1
      Width = 89
      Height = 82
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 24
    object Query1FDTeam: TStringField
      FieldName = 'FDTeam'
    end
    object Query1FDID: TStringField
      FieldName = 'FDID'
      Size = 0
    end
    object Query1USERNAME: TStringField
      FieldName = 'USERNAME'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 24
  end
end
