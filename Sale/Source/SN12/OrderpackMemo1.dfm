object OrderpackMemo: TOrderpackMemo
  Left = 498
  Top = 187
  Width = 1060
  Height = 561
  BorderIcons = [biSystemMenu]
  Caption = 'OrderpackMemo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 57
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 8
      Top = 4
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
      Top = 4
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
      Top = 4
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
      Top = 4
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
      Top = 4
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
      Top = 4
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
      Left = 563
      Top = 3
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
    object total: TRadioButton
      Left = 496
      Top = 24
      Width = 57
      Height = 17
      Caption = 'total'
      TabOrder = 7
      OnClick = totalClick
    end
    object production: TRadioButton
      Left = 392
      Top = 24
      Width = 89
      Height = 17
      Caption = 'production'
      Checked = True
      TabOrder = 8
      TabStop = True
      OnClick = productionClick
    end
    object shipping: TRadioButton
      Left = 304
      Top = 24
      Width = 73
      Height = 17
      Caption = 'shipping'
      TabOrder = 9
      OnClick = shippingClick
    end
    object GroupBox1: TGroupBox
      Left = 616
      Top = 0
      Width = 121
      Height = 57
      Caption = 'BZDate'
      TabOrder = 10
      object BD1: TBitBtn
        Left = 9
        Top = 14
        Width = 49
        Height = 36
        Hint = 'Save Current'
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnClick = BD1Click
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
      object BD2: TBitBtn
        Left = 65
        Top = 15
        Width = 49
        Height = 36
        Hint = 'Cancel'
        Caption = 'Cancel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnClick = BD2Click
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
    end
    object Edit1: TEdit
      Left = 752
      Top = 24
      Width = 281
      Height = 24
      Enabled = False
      TabOrder = 11
      Text = 'Edit1'
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1044
    Height = 465
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'MENO'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'LX'
        Footers = <>
        PickList.Strings = (
          'C1'
          'C2'
          'C3'
          'C4'
          'C5'
          'C6'
          'C7'
          'C8'
          'C9'
          'C10'
          'C11'
          'C12'
          'C13')
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 313
      end
      item
        EditButtons = <>
        FieldName = 'VNSM'
        Footers = <>
        Width = 226
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 39
      end>
  end
  object YWDDBZ: TQuery
    AfterOpen = YWDDBZAfterOpen
    AfterInsert = YWDDBZAfterInsert
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YWDDBZ.*'
      'from YWDDBZ'
      ''
      '')
    UpdateObject = UpYWBZ
    Left = 192
    Top = 136
    object YWDDBZDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWDDBZ.DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDBZMENO: TStringField
      FieldName = 'MENO'
      Origin = 'DB.YWDDBZ.MENO'
      FixedChar = True
      Size = 8
    end
    object YWDDBZXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWDDBZ.XH'
      FixedChar = True
      Size = 3
    end
    object YWDDBZLX: TStringField
      FieldName = 'LX'
      Origin = 'DB.YWDDBZ.LX'
      FixedChar = True
      Size = 3
    end
    object YWDDBZZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.YWDDBZ.ZWSM'
      FixedChar = True
      Size = 250
    end
    object YWDDBZVNSM: TStringField
      FieldName = 'VNSM'
      Origin = 'DB.YWDDBZ.VNSM'
      FixedChar = True
      Size = 250
    end
    object YWDDBZUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWDDBZ.USERID'
      FixedChar = True
    end
    object YWDDBZUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.YWDDBZ.USERDate'
    end
    object YWDDBZYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWDDBZ.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpYWBZ: TUpdateSQL
    ModifySQL.Strings = (
      'update YWDDBZ'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  MENO = :MENO,'
      '  ZWSM = :ZWSM,'
      '  VNSM = :VNSM,'
      '  LX = :LX,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH')
    InsertSQL.Strings = (
      'insert into YWDDBZ'
      '  (DDBH, XH, MENO, ZWSM, VNSM, LX, USERID, USERDate, YN)'
      'values'
      
        '  (:DDBH, :XH, :MENO, :ZWSM, :VNSM, :LX, :USERID, :USERDate, :YN' +
        ')')
    DeleteSQL.Strings = (
      'delete from YWDDBZ'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH')
    Left = 232
    Top = 136
  end
  object DS1: TDataSource
    DataSet = YWDDBZ
    Left = 272
    Top = 136
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 152
    object Shipping1: TMenuItem
      Caption = 'Shipping'
      OnClick = Shipping1Click
    end
    object Production1: TMenuItem
      Caption = 'Production'
      OnClick = Production1Click
    end
  end
end
