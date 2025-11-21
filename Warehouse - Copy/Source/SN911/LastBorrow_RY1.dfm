object LastBorrow_RY: TLastBorrow_RY
  Left = 241
  Top = 154
  Width = 985
  Height = 532
  Caption = 'LastBorrow_RY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 14
      Width = 31
      Height = 20
      Caption = 'Tua:'
    end
    object BB5: TBitBtn
      Left = 412
      Top = 0
      Width = 69
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
      TabOrder = 0
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
    object BB7: TBitBtn
      Left = 485
      Top = 0
      Width = 68
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
    object BB4: TBitBtn
      Left = 2
      Top = 0
      Width = 63
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Calculate'
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
    object TuaSpinEdit: TSpinEdit
      Left = 107
      Top = 10
      Width = 38
      Height = 30
      MaxValue = 4
      MinValue = 1
      TabOrder = 3
      Value = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 969
    Height = 445
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1
      Top = 228
      Width = 4
      Height = 216
      Color = clActiveCaption
      ParentColor = False
    end
    object Splitter3: TSplitter
      Left = 1
      Top = 225
      Width = 967
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clActiveCaption
      ParentColor = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 967
      Height = 224
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 409
        Top = 1
        Width = 5
        Height = 222
        Color = clActiveCaption
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 408
        Height = 222
        Align = alLeft
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                FieldName = 'DDBH'
                ValueType = fvtCount
              end>
            Title.Caption = 'RY'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'T1'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'T2'
            Footers = <>
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'XTMH'
            Footers = <>
            Title.Caption = 'LastName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Title.Caption = 'MatNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 105
          end>
      end
      object DBGrid2: TDBGridEh
        Left = 414
        Top = 1
        Width = 552
        Height = 222
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
      end
    end
    object Panel4: TPanel
      Left = 5
      Top = 228
      Width = 963
      Height = 216
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 961
        Height = 214
        Align = alClient
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 959
          Height = 20
          Align = alTop
          Caption = 'RY Tua '
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SMDDSGridEh: TDBGridEh
          Left = 1
          Top = 21
          Width = 959
          Height = 192
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = RYQuery
    Left = 152
    Top = 88
  end
  object RYQuery: TQuery
    CachedUpdates = True
    AfterPost = RYQueryAfterPost
    AfterScroll = RYQueryAfterScroll
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        '  Select DDZL.DDBH,XXZL.XTMH,CLZL.CLDH,null as T1, null as T2  f' +
        'rom DDZL'
      
        '  left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join CLZL on CLZL.YWPM=XXZL.XTMH and CLDH like '#39'VD%'#39' '
      '  where 1=2')
    UpdateObject = UpdateSQL1
    Left = 152
    Top = 120
    object RYQueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object RYQueryXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object RYQueryCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object RYQueryT1: TIntegerField
      FieldName = 'T1'
    end
    object RYQueryT2: TIntegerField
      FieldName = 'T2'
    end
  end
  object DS2: TDataSource
    DataSet = LastQuery
    Left = 328
    Top = 84
  end
  object LastQuery: TQuery
    CachedUpdates = True
    AfterOpen = LastQueryAfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from clzl'
      'order by CLDH')
    UpdateObject = UpdateSQL2
    Left = 328
    Top = 116
  end
  object UpdateSQL1: TUpdateSQL
    Left = 152
    Top = 152
  end
  object TmpQry: TQuery
    AfterPost = RYQueryAfterPost
    DatabaseName = 'DB'
    SQL.Strings = (
      '  Select DDZL.DDBH,XXZL.XTMH,CLZL.CLDH from DDZL'
      
        '  left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join CLZL on CLZL.YWPM=XXZL.XTMH and CLDH like '#39'VD%'#39' '
      '  where 1=2')
    Left = 120
    Top = 120
  end
  object XXGJSQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select DDZL.DDBH,DDZL.XieXing,XXCC,GJCC from xxgjs,DDZL'
      
        'where xxgjs.GJLB=100 and xxgjs.XieXing=DDZL.XieXing and DDZL.DDB' +
        'H=:DDBH')
    Left = 136
    Top = 428
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
  object DS3: TDataSource
    DataSet = XXGJSQry
    Left = 136
    Top = 396
  end
  object UpdateSQL2: TUpdateSQL
    Left = 328
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 174
    Top = 398
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
