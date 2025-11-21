object Adjust_CP: TAdjust_CP
  Left = 488
  Top = 301
  Width = 922
  Height = 547
  Caption = 'Adjust_CP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 906
    Height = 65
    Align = alTop
    TabOrder = 0
    object Lbl_LB: TLabel
      Left = 472
      Top = 24
      Width = 3
      Height = 13
    end
    object BB1: TBitBtn
      Left = 14
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
      Left = 62
      Top = 8
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
      Left = 159
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
      TabOrder = 2
      OnClick = BB3Click
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
    object BB4: TBitBtn
      Left = 207
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
      TabOrder = 3
      OnClick = BB4Click
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
    object BB5: TBitBtn
      Left = 255
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
      TabOrder = 4
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 303
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
      TabOrder = 5
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
    object btnDelAll: TBitBtn
      Left = 110
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Del-All'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = btnDelAllClick
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
    object Button1: TButton
      Left = 520
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 906
    Height = 443
    Align = alClient
    DataSource = DataSource1
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24180'|KCYEAR'
        Width = 70
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26376'|KCMONTH'
        Width = 70
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #27597#35330#21934'|DDBH'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'S_CPPB'
        Footers = <>
        Title.Caption = #30452#25509#21407#26009#36027#29992'|CHI PHI NVL NVLTT PB HC + VC '
      end
      item
        EditButtons = <>
        FieldName = 'U_CP622'
        Footers = <>
        Title.Caption = '|'#30452#25509#20154#24037#36027#29992'|CHI PHI NCTT (TK622)'
      end
      item
        EditButtons = <>
        FieldName = 'V_CP627'
        Footers = <>
        Title.Caption = '|'#32317#29983#29986#36027#29992'|CHI PHI SXC (TK627)'
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 150
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|UserID'
        Width = 53
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26356#26032#26085#26399'|UserDate'
        Width = 80
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CW_MatCostMonth_Total_Adjust'
      'where 1=2')
    UpdateObject = UpdateSQL1
    Left = 288
    Top = 259
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.DDBH'
      FixedChar = True
    end
    object Query1S_CPPB: TCurrencyField
      FieldName = 'S_CPPB'
      DisplayFormat = '#,##0'
    end
    object Query1U_CP622: TCurrencyField
      FieldName = 'U_CP622'
      DisplayFormat = '#,##0'
    end
    object Query1V_CP627: TCurrencyField
      FieldName = 'V_CP627'
      DisplayFormat = '#,##0'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.Memo'
      FixedChar = True
      Size = 100
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.UserID'
      FixedChar = True
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CW_MatCostMonth_Total_Adjust.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 259
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update CW_MatCostMonth_Total_Adjust'
      'set'
      '      S_CPPB =:S_CPPB,'
      '      U_CP622 =:U_CP622,'
      '      V_CP627 =:V_CP627,'
      '      Memo =:Memo,'
      '      UserID= :UserID,'
      '      UserDate= :UserDate'
      'where'
      '         KCYEAR=:KCYEAR '
      'and   KCMONTH=:KCMONTH'
      'and   DDBH=:OLD_DDBH')
    InsertSQL.Strings = (
      'insert into CW_MatCostMonth_Total_Adjust'
      
        ' (KCYEAR,KCMONTH,DDBH,S_CPPB,U_CP622,V_CP627, Memo,UserID, UserD' +
        'ate,YN)'
      'values'
      
        '  (:KCYEAR,:KCMONTH, :DDBH, :S_CPPB, :U_CP622, :V_CP627, :Memo, ' +
        ':UserID, :UserDate,:YN)'
      '')
    DeleteSQL.Strings = (
      'Delete CW_MatCostMonth_Total_Adjust'
      'where '
      '           KCYEAR=:OLD_KCYEAR'
      'and     KCMONTH=:OLD_KCMONTH'
      'and     DDBH=:OLD_DDBH')
    Left = 288
    Top = 291
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 259
  end
end
