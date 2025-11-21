object OrderMark: TOrderMark
  Left = 565
  Top = 291
  Width = 727
  Height = 466
  BorderIcons = []
  Caption = 'OrderMark'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 57
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 8
      Top = 0
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 56
      Top = 0
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB3Click
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
    object BB4: TBitBtn
      Left = 104
      Top = 0
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 152
      Top = 0
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB6: TBitBtn
      Left = 200
      Top = 0
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB6Click
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
    object BB7: TBitBtn
      Left = 248
      Top = 0
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
      TabOrder = 5
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
    object BD4: TBitBtn
      Left = 427
      Top = -1
      Width = 49
      Height = 50
      Hint = 'Import from old order'
      Caption = 'import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BD4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 711
    Height = 370
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.TitleButton = True
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'MTBH1'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'MTLR1'
        Footers = <>
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'MTBH2'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MTLR2'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'MTBH3'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'MTLR3'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'MTBH4'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'MTLR4'
        Footers = <>
        Width = 103
      end>
  end
  object YWDDMT: TQuery
    AfterOpen = YWDDMTAfterOpen
    AfterInsert = YWDDMTAfterInsert
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDDMT.*'
      'from YWDDMT'
      '')
    UpdateObject = UpYWMT
    Left = 192
    Top = 136
    object YWDDMTDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDMT.DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDMTXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDMT.XH'
      FixedChar = True
      Size = 3
    end
    object YWDDMTMTBH1: TStringField
      FieldName = 'MTBH1'
      Origin = 'DB.YWDDMT.MTBH1'
      FixedChar = True
      Size = 6
    end
    object YWDDMTMTLR1: TStringField
      FieldName = 'MTLR1'
      Origin = 'DB.YWDDMT.MTLR1'
      FixedChar = True
      Size = 50
    end
    object YWDDMTMTBH2: TStringField
      FieldName = 'MTBH2'
      Origin = 'DB.YWDDMT.MTBH2'
      FixedChar = True
      Size = 6
    end
    object YWDDMTMTLR2: TStringField
      FieldName = 'MTLR2'
      Origin = 'DB.YWDDMT.MTLR2'
      FixedChar = True
      Size = 50
    end
    object YWDDMTMTBH3: TStringField
      FieldName = 'MTBH3'
      Origin = 'DB.YWDDMT.MTBH3'
      FixedChar = True
      Size = 6
    end
    object YWDDMTMTLR3: TStringField
      FieldName = 'MTLR3'
      Origin = 'DB.YWDDMT.MTLR3'
      FixedChar = True
      Size = 50
    end
    object YWDDMTMTBH4: TStringField
      FieldName = 'MTBH4'
      Origin = 'DB.YWDDMT.MTBH4'
      FixedChar = True
      Size = 6
    end
    object YWDDMTMTLR4: TStringField
      FieldName = 'MTLR4'
      Origin = 'DB.YWDDMT.MTLR4'
      FixedChar = True
      Size = 50
    end
    object YWDDMTUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWDDMT.USERDATE'
    end
    object YWDDMTUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDMT.USERID'
      FixedChar = True
    end
    object YWDDMTYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDMT.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpYWMT: TUpdateSQL
    ModifySQL.Strings = (
      'update YWDDMT'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  MTBH1 = :MTBH1,'
      '  MTLR1 = :MTLR1,'
      '  MTBH2 = :MTBH2,'
      '  MTLR2 = :MTLR2,'
      '  MTBH3 = :MTBH3,'
      '  MTLR3 = :MTLR3,'
      '  MTBH4 = :MTBH4,'
      '  MTLR4 = :MTLR4,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH')
    InsertSQL.Strings = (
      'insert into YWDDMT'
      
        '  (DDBH, XH, MTBH1, MTLR1, MTBH2, MTLR2, MTBH3, MTLR3, MTBH4, MT' +
        'LR4, '
      'USERDATE, '
      '   USERID, YN)'
      'values'
      
        '  (:DDBH, :XH, :MTBH1, :MTLR1, :MTBH2, :MTLR2, :MTBH3, :MTLR3, :' +
        'MTBH4, '
      '   :MTLR4, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from YWDDMT'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH')
    Left = 232
    Top = 136
  end
  object DS1: TDataSource
    DataSet = YWDDMT
    Left = 272
    Top = 136
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 508
    Top = 249
  end
end
