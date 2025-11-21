object SpecDet: TSpecDet
  Left = 296
  Top = 221
  Width = 870
  Height = 500
  Caption = 'SpecDet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 185
      Height = 36
      Caption = 'TW New&Modified'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 736
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB4Click
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
    object DTP1: TDateTimePicker
      Left = 544
      Top = 16
      Width = 161
      Height = 28
      Date = 39207.445870763890000000
      Time = 39207.445870763890000000
      TabOrder = 2
    end
    object BB2: TBitBtn
      Left = 216
      Top = 8
      Width = 177
      Height = 36
      Hint = 'Insert one New Record'
      Caption = 'TW Deleted'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object Edit1: TEdit
      Left = 408
      Top = 24
      Width = 41
      Height = 28
      TabOrder = 4
      Text = '1'
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 862
    Height = 230
    Align = alTop
    DataSource = DSTW
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLCC'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MS'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUT'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 109
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 287
    Width = 862
    Height = 56
    Align = alTop
    TabOrder = 2
    object BD1: TBitBtn
      Left = 8
      Top = 8
      Width = 121
      Height = 36
      Caption = 'VN Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BD1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BD2: TBitBtn
      Left = 144
      Top = 8
      Width = 121
      Height = 36
      Hint = 'Insert one New Record'
      Caption = 'VN Modified'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BD2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BD3: TBitBtn
      Left = 280
      Top = 8
      Width = 121
      Height = 36
      Hint = 'Insert one New Record'
      Caption = 'VN Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BD3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BD4: TBitBtn
      Left = 416
      Top = 8
      Width = 121
      Height = 36
      Hint = 'Insert one New Record'
      Caption = 'VN Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BD4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BD5: TBitBtn
      Left = 552
      Top = 8
      Width = 121
      Height = 36
      Hint = 'Insert one New Record'
      Caption = 'VN Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BD5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 343
    Width = 862
    Height = 89
    Align = alClient
    DataSource = DSVN
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLCC'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OS'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MS'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUT'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 108
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 432
    Width = 862
    Height = 34
    Panels = <>
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update zlzls'
      'set'
      '  ZLBH = :ZLBH,'
      '  ZLCC = :ZLCC,'
      '  XXCC = :XXCC,'
      '  QTY = :QTY,'
      '  LAST = :LAST,'
      '  OS = :OS,'
      '  MS = :MS,'
      '  CUT = :CUT,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  ZLBH = :OLD_ZLBH and'
      '  ZLCC = :OLD_ZLCC')
    InsertSQL.Strings = (
      'insert into zlzls'
      
        '  (ZLBH, ZLCC, XXCC, QTY, LAST, OS, MS, CUT, USERID, USERDATE, Y' +
        'N)'
      'values'
      
        '  (:ZLBH, :ZLCC, :XXCC, :QTY, :LAST, :OS, :MS, :CUT, :USERID, :U' +
        'SERDATE, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from zlzls'
      'where'
      '  ZLBH = :OLD_ZLBH and'
      '  ZLCC = :OLD_ZLCC')
    Left = 416
    Top = 376
  end
  object QVN: TQuery
    AfterOpen = QVNAfterOpen
    DatabaseName = 'DB'
    DataSource = DSTW
    SQL.Strings = (
      'select *'
      'from zlzls'
      'where zlbh=:zlbh'
      'and zlcc=:zlcc'
      ''
      '')
    UpdateObject = UpSQL1
    Left = 376
    Top = 376
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZLCC'
        ParamType = ptUnknown
        Size = 7
      end>
  end
  object DSVN: TDataSource
    DataSet = QVN
    Left = 336
    Top = 376
  end
  object DSTW: TDataSource
    DataSet = QTW
    Left = 344
    Top = 96
  end
  object QTW: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select *'
      'from LY_SHOE.dbo.zlzls'
      'order by userdate')
    Left = 304
    Top = 96
  end
end
