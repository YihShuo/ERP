object SKU_SA_CODE: TSKU_SA_CODE
  Left = 277
  Top = 253
  Width = 1251
  Height = 598
  Caption = 'SKU_SA_CODE'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1235
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB2: TBitBtn
      Left = 56
      Top = 8
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
      TabOrder = 1
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
      Left = 104
      Top = 8
      Width = 48
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
      TabOrder = 2
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
      Left = 151
      Top = 8
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
      TabOrder = 3
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
      Left = 199
      Top = 8
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
      TabOrder = 4
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
      Left = 247
      Top = 8
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
      TabOrder = 5
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
      Left = 295
      Top = 8
      Width = 50
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1235
    Height = 46
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 544
      Top = 15
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label5: TLabel
      Left = 221
      Top = 18
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label2: TLabel
      Left = 686
      Top = 15
      Width = 19
      Height = 16
      Caption = 'SR'
    end
    object Label3: TLabel
      Left = 342
      Top = 15
      Width = 43
      Height = 16
      Caption = 'Die Cut'
    end
    object ED_SKU: TEdit
      Left = 576
      Top = 11
      Width = 89
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 992
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 127
      Top = 11
      Width = 90
      Height = 24
      Date = 45322.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45322.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 234
      Top = 11
      Width = 90
      Height = 24
      Date = 45322.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45322.000000000000000000
      TabOrder = 3
    end
    object ED_SR: TEdit
      Left = 710
      Top = 11
      Width = 133
      Height = 24
      TabOrder = 4
    end
    object ED_DieCut: TEdit
      Left = 390
      Top = 11
      Width = 133
      Height = 24
      TabOrder = 5
    end
    object CB_CodeNotSet: TCheckBox
      Left = 872
      Top = 15
      Width = 105
      Height = 17
      Caption = 'Code Not Set'
      TabOrder = 6
    end
    object CB_Schedule: TCheckBox
      Left = 16
      Top = 15
      Width = 106
      Height = 17
      Caption = 'Schedule Date'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object Button2: TButton
      Left = 1067
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 111
    Width = 1235
    Height = 448
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'XieXing'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Model'
        Width = 130
        OnEditButtonClick = DBGridEh1Columns0EditButtonClick
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Color ID'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Die Cut'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SKU'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SR'
        Width = 150
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'StitchingCode'
        Footers = <>
        Title.Caption = 'Stitching Code'
        Width = 120
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'AssemblyCode'
        Footers = <>
        Title.Caption = 'Assembly Code'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User ID'
        Width = 60
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Width = 100
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from SKU_SA_CODE'
      'where 1 = 2')
    UpdateObject = UpSQL1
    Left = 16
    Top = 192
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1SKU: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1Stiching: TStringField
      FieldName = 'StitchingCode'
      FixedChar = True
    end
    object Query1Asembely: TStringField
      FieldName = 'AssemblyCode'
      FixedChar = True
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE SKU_SA_CODE'
      'SET'
      '  StitchingCode = :StitchingCode,'
      '  AssemblyCode = :AssemblyCode,'
      '  USERID = :USERID,'
      '  USERDATE = GetDate()'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao')
    InsertSQL.Strings = (
      'INSERT INTO SKU_SA_CODE'
      
        '  (XieXing, SheHao, StitchingCode, AssemblyCode, USERID, USERDAT' +
        'E, YN)'
      'values'
      
        '  (:XieXing, :SheHao, :StitchingCode, :AssemblyCode, :USERID, Ge' +
        'tDate(), '#39'1'#39')'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM SKU_SA_CODE'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao')
    Left = 16
    Top = 224
  end
end
