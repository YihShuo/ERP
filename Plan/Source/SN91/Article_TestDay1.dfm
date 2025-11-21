object Article_TestDay: TArticle_TestDay
  Left = 524
  Top = 190
  Width = 1305
  Height = 629
  Caption = 'Modify Approve|Activation'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 51
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 19
      Width = 39
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = -283
      Top = 41
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Plan Day:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 723
      Top = 19
      Width = 39
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VER:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EDSKU: TEdit
      Left = 57
      Top = 14
      Width = 664
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BB1: TBitBtn
      Left = 865
      Top = 7
      Width = 88
      Height = 42
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 959
      Top = 7
      Width = 49
      Height = 42
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 1007
      Top = 7
      Width = 49
      Height = 42
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 1055
      Top = 7
      Width = 49
      Height = 42
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
    object Edit1: TEdit
      Left = 766
      Top = 16
      Width = 86
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 51
    Width = 1289
    Height = 539
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh3EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 161
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Activation_Time'
        Footers = <>
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Approve_Time'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Production_Category'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VERSION'
        Footers = <>
        Width = 99
      end>
  end
  object IE1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      
        'select ARTICLE,Activation_Time,Approve_Time,XieXing,SheHao,Produ' +
        'ction_Category,VERSION from (select xxzl.ARTICLE,IE_ARTICLEDATA.' +
        'Activation_Time,IE_ARTICLEDATA.Approve_Time,IE_ARTICLEDATA.XieXi' +
        'ng,IE_ARTICLEDATA.SheHao'
      ',Production_Category,IE_ARTICLEDATA.VERSION'
      'from XXZL'
      
        'left join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = XXZL.XieXi' +
        'ng AND  IE_ARTICLEDATA.SheHao = XXZL.SheHao '
      'where 1=1 '
      'and  XXZL.ARTICLE  in ('#39'121759'#39','#39'121756'#39','#39'121757'#39','#39'121752'#39') '
      'union all'
      
        'select kfxxzl.ARTICLE,IE_ARTICLEDATA.Activation_Time,IE_ARTICLED' +
        'ATA.Approve_Time,IE_ARTICLEDATA.XieXing,IE_ARTICLEDATA.SheHao,Pr' +
        'oduction_Category,IE_ARTICLEDATA.VERSION'
      'from kfxxzl'
      
        'left join IE_ARTICLEDATA ON  IE_ARTICLEDATA.XieXing = kfxxzl.Xie' +
        'Xing AND  IE_ARTICLEDATA.SheHao = kfxxzl.SheHao '
      'where 1=1'
      'and  kfxxzl.ARTICLE  in ('#39'121759'#39','#39'121756'#39','#39'121757'#39','#39'121752'#39') '
      
        ') xxzl group by ARTICLE,Activation_Time,Approve_Time,XieXing,She' +
        'Hao,Production_Category,VERSION')
    UpdateObject = UpSQL1
    Left = 256
    Top = 201
    object IE1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object IE1Activation_Time: TDateTimeField
      FieldName = 'Activation_Time'
    end
    object IE1Approve_Time: TDateTimeField
      FieldName = 'Approve_Time'
    end
    object IE1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object IE1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object IE1Production_Category: TStringField
      FieldName = 'Production_Category'
      FixedChar = True
    end
    object IE1VERSION: TStringField
      FieldName = 'VERSION'
      FixedChar = True
      Size = 6
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update IE_ARTICLEDATA'
      'set'
      '  XieXing =:XieXing,'
      '  SheHao =:SheHao,'
      '  Approve_Time = :Approve_Time,'
      '  Activation_Time = :Activation_Time'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category =:Production_Category'
      '  and VERSION =:VERSION'
      ''
      '')
    InsertSQL.Strings = (
      'insert into IE_ARTICLEDATA'
      '  (XieXing, SheHao, Production_Category, VERSION, VERSION_MEMO,'
      
        '   Hourly_Output, IE_DL, Actual_DL, IDL, LBR, Status, Test_Day, ' +
        'Approve_Time,Activation_Time,'
      '   USERID, USERDATE, YN, File_Name, TCT)'
      'values'
      
        '  (:XieXing, :SheHao, :Production_Category, :VERSION, :VERSION_M' +
        'EMO,'
      
        '   :Hourly_Output, :IE_DL, :Actual_DL, :IDL, :LBR, :Status, :Tes' +
        't_Day, :Approve_Time,:Activation_Time,'
      '   :USERID, :USERDATE, :YN, :File_Name, :TCT)'
      '')
    DeleteSQL.Strings = (
      'delete from IE_ARTICLEDATA'
      'where'
      '  XieXing = :OLD_XieXing'
      '  and SheHao = :OLD_SheHao'
      '  and Production_Category =:Production_Category'
      '  and VERSION =:VERSION'
      '')
    Left = 256
    Top = 240
  end
  object DS1: TDataSource
    DataSet = IE1
    Left = 296
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 200
  end
end
