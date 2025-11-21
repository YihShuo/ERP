object ShippingImport: TShippingImport
  Left = 280
  Top = 205
  Width = 800
  Height = 500
  Caption = 'ShippingImport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 72
    Width = 233
    Height = 394
    Align = alLeft
    DataSource = DS1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTNO'
        Width = 51
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BB1: TBitBtn
      Left = 16
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB2: TBitBtn
      Left = 96
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Upload'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 176
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 256
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
      TabOrder = 3
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
  end
  object DBGrid2: TDBGrid
    Left = 233
    Top = 72
    Width = 559
    Height = 394
    Align = alClient
    DataSource = DS2
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTNO'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 205
        Visible = True
      end>
  end
  object ScanData: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMCH'
      'where DDBH='#39'aaaaaa'#39
      'order by DDBH')
    UpdateObject = UpScan
    Left = 136
    Top = 152
    object ScanDataDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCCH.DDBH'
      FixedChar = True
      Size = 15
    end
    object ScanDataCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCCH.CTNO'
      FixedChar = True
      Size = 5
    end
    object ScanDataUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SCCH.USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object ScanDataUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCCH.USERID'
      FixedChar = True
      Size = 15
    end
    object ScanDataYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCCH.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = ScanData
    Left = 168
    Top = 152
  end
  object UpScan: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMCH'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  USERDate = :OLD_USERDate and'
      '  USERID = :OLD_USERID and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into SCSMCH'
      '  (DDBH, CTNO, USERDate, USERID, YN)'
      'values'
      '  (:DDBH, :CTNO, :USERDate, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from SCSMCH'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  USERDate = :OLD_USERDate and'
      '  USERID = :OLD_USERID and'
      '  YN = :OLD_YN')
    Left = 200
    Top = 152
  end
  object SCSMCH: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SCSMCH.DDBH,SCSMCH.CTNO,DDZL.Article,XXZl.XieMing '
      'from SCSMCH'
      'left join DDZL on SCSMCH.DDBH=DDZL.DDBH '
      
        'left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHao=DDZl' +
        '.SheHao'
      'where  SCSMCH.DDBH=:DDBH'
      'order by SCSMCH.DDBH,SCSMCH.CTNO DESC')
    Left = 416
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object SCSMCHDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SCSMCHCTNO: TStringField
      FieldName = 'CTNO'
      FixedChar = True
      Size = 5
    end
    object SCSMCHArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SCSMCHXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = SCSMCH
    Left = 456
    Top = 168
  end
  object OpenDialog1: TOpenDialog
    Filter = 'TXT FILES|*.txt'
    Left = 168
    Top = 200
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 304
    Top = 216
  end
end
