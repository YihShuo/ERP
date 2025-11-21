object CartonXXZL: TCartonXXZL
  Left = 393
  Top = 257
  Width = 1259
  Height = 570
  Caption = 'CartonXXZL'
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
  object Splitter1: TSplitter
    Left = 489
    Top = 137
    Height = 402
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1251
    Height = 65
    Align = alTop
    TabOrder = 0
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1251
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 42
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Brand:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 328
      Top = 42
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 168
      Top = 10
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieXing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 328
      Top = 10
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SheHao:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 42
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 480
      Top = 10
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ArticleEdit: TEdit
      Left = 78
      Top = 6
      Width = 91
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 628
      Top = 31
      Width = 94
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object KFJDEdit: TEdit
      Left = 238
      Top = 38
      Width = 91
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object XieMingEdit: TEdit
      Left = 398
      Top = 38
      Width = 131
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object XieXingEdit: TEdit
      Left = 238
      Top = 6
      Width = 91
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object SheHaoEdit: TEdit
      Left = 398
      Top = 6
      Width = 75
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object BuyNoEdit: TEdit
      Left = 78
      Top = 38
      Width = 91
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object JiJieEdit: TEdit
      Left = 550
      Top = 6
      Width = 75
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 137
    Width = 489
    Height = 402
    Align = alLeft
    DataSource = DS1
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footer.FieldName = 'Article'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 37
      end>
  end
  object DBGrid2: TDBGridEh
    Left = 492
    Top = 137
    Width = 759
    Height = 402
    Align = alClient
    DataSource = DS2
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGrid2EditButtonClick
    OnGetCellParams = DBGrid2GetCellParams
  end
  object XXZLQry: TQuery
    AfterOpen = XXZLQryAfterOpen
    AfterScroll = XXZLQryAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.J' +
        'iJie,YWWX2S.iCLBH '
      'from XXZL'
      'left join kfzl on KFZL.kfdh=XXZL.KHDH '
      
        'left join (select XieXing,SheHao,Count(CLBH) iCLBH from YWWX2S G' +
        'roup by XieXing,SheHao) YWWX2S on YWWX2S.XieXing=XXZL.XieXing an' +
        'd YWWX2S.SheHao=XXZL.SheHao '
      'where 1=1 '
      
        '  and exists (select distinct Article from DDZL where DDZL.XieXi' +
        'ng=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like ' +
        #39'202012%'#39' and GSBH='#39'VA12'#39')')
    Left = 52
    Top = 216
    object XXZLQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object XXZLQryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLQryJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object XXZLQryiCLBH: TIntegerField
      FieldName = 'iCLBH'
    end
  end
  object DS1: TDataSource
    DataSet = XXZLQry
    Left = 84
    Top = 216
  end
  object YWWX2SQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select YWWX2S.CLBH,CLZL.ywpm '
      '       ,Max(case when CC='#39'03.0'#39' then 1 else 0 end) as [03.0] '
      '       ,Max(case when CC='#39'03.5'#39' then 1 else 0 end) as [03.5] '
      '       ,Max(case when CC='#39'04.0'#39' then 1 else 0 end) as [04.0] '
      '       ,Max(case when CC='#39'04.5'#39' then 1 else 0 end) as [04.5] '
      '       ,Max(case when CC='#39'05.0'#39' then 1 else 0 end) as [05.0] '
      '       ,Max(case when CC='#39'05.5'#39' then 1 else 0 end) as [05.5] '
      '       ,Max(case when CC='#39'06.0'#39' then 1 else 0 end) as [06.0] '
      '       ,Max(case when CC='#39'06.5'#39' then 1 else 0 end) as [06.5] '
      '       ,Max(case when CC='#39'07.0'#39' then 1 else 0 end) as [07.0] '
      '       ,Max(case when CC='#39'07.5'#39' then 1 else 0 end) as [07.5] '
      '       ,Max(case when CC='#39'08.0'#39' then 1 else 0 end) as [08.0] '
      '       ,Max(case when CC='#39'08.5'#39' then 1 else 0 end) as [08.5] '
      '       ,Max(case when CC='#39'09.0'#39' then 1 else 0 end) as [09.0] '
      '       ,Max(case when CC='#39'09.5'#39' then 1 else 0 end) as [09.5] '
      '       ,Max(case when CC='#39'10.0'#39' then 1 else 0 end) as [10.0] '
      '       ,Max(case when CC='#39'10.5'#39' then 1 else 0 end) as [10.5] '
      '       ,Max(case when CC='#39'11.0'#39' then 1 else 0 end) as [11.0] '
      '       ,Max(case when CC='#39'11.5'#39' then 1 else 0 end) as [11.5] '
      '       ,Max(case when CC='#39'12.0'#39' then 1 else 0 end) as [12.0] '
      '       ,Max(case when CC='#39'12.5'#39' then 1 else 0 end) as [12.5] '
      '       ,Max(case when CC='#39'13.0'#39' then 1 else 0 end) as [13.0] '
      '       ,Max(case when CC='#39'14.0'#39' then 1 else 0 end) as [14.0] '
      '       ,Max(case when CC='#39'15.0'#39' then 1 else 0 end) as [15.0] '
      '       ,Max(case when CC='#39'16.0'#39' then 1 else 0 end) as [16.0] '
      'from YWWX2S '
      'left join CLZL on CLZL.cldh=YWWX2S.CLBH '
      'where XieXing=:XieXing and SheHao=:SheHao  '
      'Group by YWWX2S.CLBH,CLZL.ywpm')
    UpdateObject = UpdateSQL1
    Left = 426
    Top = 224
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
  end
  object DS2: TDataSource
    DataSet = YWWX2SQry
    Left = 427
    Top = 192
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 395
    Top = 225
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPO'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  CLBH = :CLBH,'
      '  CTQ = :CTQ,'
      '  CTZ = :CTZ,'
      '  CTS = :CTS,'
      '  NW = :NW,'
      '  GW = :GW,'
      '  L = :L,'
      '  W = :W,'
      '  H = :H,'
      '  CBM = :CBM,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH')
    InsertSQL.Strings = (
      'insert into YWBZPO'
      
        '  (DDBH, XH, CLBH, CTQ, CTZ, CTS, NW, GW, L, W, H, CBM, USERDATE' +
        ', '
      'USERID, '
      '   YN)'
      'values'
      
        '  (:DDBH, :XH, :CLBH, :CTQ, :CTZ, :CTS, :NW, :GW, :L, :W, :H, :C' +
        'BM, :USERDATE, '
      '   :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from YWBZPO'
      'where'
      '  DDBH = :OLD_DDBH')
    Left = 425
    Top = 257
  end
  object PopupMenu1: TPopupMenu
    Left = 54
    Top = 248
    object Copy1: TMenuItem
      Caption = 'Copy'
      OnClick = Copy1Click
    end
    object Paste1: TMenuItem
      Caption = 'Paste'
      OnClick = Paste1Click
    end
  end
end
