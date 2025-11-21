object SKU_Price_BUYNO: TSKU_Price_BUYNO
  Left = 275
  Top = 228
  Width = 1305
  Height = 675
  Caption = 'SKU_Price_BUYNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 65
    Align = alTop
    TabOrder = 0
  end
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
    TabOrder = 1
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
    TabOrder = 2
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
    TabOrder = 3
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
    Left = 152
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
    TabOrder = 4
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
    Left = 200
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
    TabOrder = 5
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
    Left = 248
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
    TabOrder = 6
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
  object B_Exit: TBitBtn
    Left = 296
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
    TabOrder = 7
    OnClick = B_ExitClick
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
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1289
    Height = 41
    Align = alTop
    TabOrder = 8
    object Label1: TLabel
      Left = 168
      Top = 14
      Width = 38
      Height = 13
      Caption = 'BUYNO'
    end
    object Label2: TLabel
      Left = 16
      Top = 14
      Width = 29
      Height = 13
      Caption = 'SKU#'
    end
    object Edit1: TEdit
      Left = 208
      Top = 11
      Width = 97
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 48
      Top = 11
      Width = 97
      Height = 21
      TabOrder = 2
    end
    object Button2: TButton
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 360
    Top = 106
    Width = 929
    Height = 530
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'Price'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 106
    Width = 360
    Height = 530
    Align = alLeft
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'SELECT distinct DDZL.Article, DDZL.BUYNO, DDZL_Price_BUY.Price, ' +
        'DDZL_Price_BUY.UserID, '
      
        '         DDZL_Price_BUY.UserDate, DDZL_Price_BUY.YN, DDZL_Price_' +
        'BUY.Article AS Flag FROM DDZL '
      
        '  LEFT JOIN DDZL_Price_BUY ON DDZL_Price_BUY.Article = DDZL.Arti' +
        'cle AND DDZL_Price_BUY.BUYNO = DDZL.BUYNO '
      '  WHERE DDZL.Article = :Article AND 1=2'
      '  ORDER BY DDZL.BUYNO DESC ')
    UpdateObject = UpdateSQL1
    Left = 184
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Article'
        ParamType = ptUnknown
      end>
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object Query1Price: TCurrencyField
      FieldName = 'Price'
      DisplayFormat = '##,#0.00'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1Flag: TStringField
      FieldName = 'Flag'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 152
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE DDZL_Price_BUY'
      'SET'
      '  Price = :Price,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  Article = :OLD_Article AND'
      '  BUYNO = :OLD_BUYNO')
    InsertSQL.Strings = (
      
        'INSERT INTO DDZL_Price_BUY (Article, BUYNO, Price, UserID, UserD' +
        'ate, YN)'
      'VALUES (:Article, :BUYNO, :Price, :UserID, GETDATE(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM DDZL_Price_BUY'
      'WHERE'
      '  Article = :OLD_Article AND'
      '  BUYNO = :OLD_BUYNO')
    Left = 184
    Top = 216
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 24
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DDZL.ARTICLE,KFXXZL.DEVCODE FROM DDZL'
      
        'left join KFXXZL on KFXXZL.SheHao=DDZL.SheHao and  KFXXZL.XieXin' +
        'g=DDZL.XieXing'
      'WHERE 1 = 1')
    Left = 24
    Top = 184
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.CBYtoSpec.ARTICLE'
      FixedChar = True
    end
    object Query2DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
  end
end
