object ExpData: TExpData
  Left = 0
  Top = 0
  Caption = 'ExpData'
  ClientHeight = 639
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1128
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Th'#234'm'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 1
    end
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Xo'#769'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
    end
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'S'#7917'a'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 3
    end
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'L'#432'u'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 4
    end
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Hu'#777'y'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 5
    end
    object BB7: TBitBtn
      Left = 296
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Tho'#225't'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Truy v'#7845'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
    end
    object bbt6: TBitBtn
      Left = 351
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
      OnClick = bbt6Click
    end
    object btImport: TBitBtn
      Left = 418
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 8
      OnClick = btImportClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 1128
    Height = 72
    Align = alTop
    TabOrder = 1
    object Label14: TLabel
      Left = 384
      Top = 41
      Width = 40
      Height = 16
      Caption = 'S'#7889' TK:'
    end
    object Label15: TLabel
      Left = 351
      Top = 12
      Width = 73
      Height = 16
      Caption = 'M'#227' NPL/SP:'
    end
    object Label1: TLabel
      Left = 199
      Top = 11
      Width = 8
      Height = 16
      Caption = '~'
    end
    object Label2: TLabel
      Left = 199
      Top = 35
      Width = 8
      Height = 16
      Caption = '~'
    end
    object Query4: TButton
      Left = 572
      Top = 9
      Width = 88
      Height = 48
      Caption = 'T'#236'm ki'#7871'm'
      TabOrder = 0
      OnClick = Query4Click
    end
    object Edt_SoTK: TEdit
      Left = 428
      Top = 36
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object Edt_MaSP: TEdit
      Left = 428
      Top = 6
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object chkXH: TCheckBox
      Left = 8
      Top = 12
      Width = 78
      Height = 17
      Caption = 'Ng'#224'y XH:'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 91
      Top = 9
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 213
      Top = 8
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 5
    end
    object chkDK: TCheckBox
      Left = 8
      Top = 36
      Width = 78
      Height = 17
      Caption = 'Ng'#224'y DK:'
      TabOrder = 6
    end
    object DTP3: TDateTimePicker
      Left = 91
      Top = 35
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 7
    end
    object DTP4: TDateTimePicker
      Left = 213
      Top = 35
      Width = 102
      Height = 21
      Date = 44576.668729398140000000
      Format = 'yyyy/MM/dd'
      Time = 44576.668729398140000000
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 1128
    Height = 502
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentFont = False
    PopupMenu = PopupMenu1
    RowHeight = 20
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STT'
        Footers = <>
        Width = 35
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STK'
        Footers = <>
        Title.Caption = 'S'#7889' TK'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SoHD'
        Footers = <>
        Title.Caption = 'S'#7889' h'#243'a '#273#417'n'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TenNuoc'
        Footers = <>
        Title.Caption = 'T'#234'n n'#432#7899'c'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NgayXH'
        Footers = <>
        Title.Caption = 'Ng'#224'y XH'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NgayDK'
        Footers = <>
        Title.Caption = 'Ng'#224'y DK'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CBYCode'
        Footers = <>
        Title.Caption = 'CBY Code'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MaSP'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'M'#227' NPL/SP'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TenHang'
        Footers = <>
        Title.Caption = 'T'#234'n h'#224'ng'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Giay'
        Footers = <>
        Title.Caption = 'Gi'#224'y'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TongSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'T'#7893'ng s'#7889' l'#432#7907'ng'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DonGia'
        Footers = <>
        Title.Caption = #272#417'n gi'#225
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TriGiaNT'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Tr'#7883' gi'#225' NT'
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TenDoiTac'
        Footers = <>
        Title.Caption = 'T'#234'n '#273#7889'i t'#225'c'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NgayKHVC'
        Footers = <>
        Title.Caption = 'Ng'#224'y kh'#7903'i h'#224'nh v'#7853'n chuy'#7875'n'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DiaDiemDH'
        Footers = <>
        Title.Caption = #272#7883'a '#273'i'#7875'm d'#7905' h'#224'ng'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PTVC'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 25
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 496
    Top = 312
    Width = 337
    Height = 137
    TabOrder = 3
    Visible = False
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 335
      Height = 32
      Align = alTop
      Caption = 'Import'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 296
        Top = 1
        Width = 38
        Height = 30
        Align = alRight
        Caption = 'X'
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        OnClick = Panel3Click
      end
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 112
      Width = 335
      Height = 24
      Align = alBottom
      TabOrder = 1
    end
    object Button1: TButton
      Left = 136
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Select File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Query1: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 50
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From LIY_TYXUAN.dbo.ExpData ExpData'
      'Where 1=2')
    Left = 312
    Top = 193
    object Query1STT: TIntegerField
      FieldName = 'STT'
    end
    object Query1STK: TStringField
      FieldName = 'STK'
    end
    object Query1SoHD: TStringField
      FieldName = 'SoHD'
      Size = 50
    end
    object Query1TenNuoc: TStringField
      FieldName = 'TenNuoc'
      Size = 50
    end
    object Query1NgayXH: TDateTimeField
      FieldName = 'NgayXH'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1NgayDK: TDateTimeField
      FieldName = 'NgayDK'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CBYCode: TStringField
      FieldName = 'CBYCode'
    end
    object Query1MaSP: TStringField
      FieldName = 'MaSP'
    end
    object Query1TenHang: TWideStringField
      FieldName = 'TenHang'
      Size = 250
    end
    object Query1Giay: TStringField
      FieldName = 'Giay'
      Size = 50
    end
    object Query1TongSL: TBCDField
      FieldName = 'TongSL'
      Precision = 19
    end
    object Query1DonGia: TBCDField
      FieldName = 'DonGia'
      Precision = 19
    end
    object Query1TriGiaNT: TBCDField
      FieldName = 'TriGiaNT'
      Precision = 19
    end
    object Query1TenDoiTac: TStringField
      FieldName = 'TenDoiTac'
      Size = 100
    end
    object Query1NgayKHVC: TDateTimeField
      FieldName = 'NgayKHVC'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1DiaDiemDH: TStringField
      FieldName = 'DiaDiemDH'
      Size = 150
    end
    object Query1PTVC: TStringField
      FieldName = 'PTVC'
      Size = 5
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 312
    Top = 241
  end
  object Qry_Temp: TADOQuery
    Connection = DM2.ADOConn
    Parameters = <>
    SQL.Strings = (
      '--//[1] Create Linkserver'
      'set ansi_nulls on '
      'set ansi_warnings on '
      ' '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39') '
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39'192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\s' +
        'ql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 256
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    Left = 232
    Top = 384
  end
  object Qry_Import: TADOQuery
    Connection = DM2.ADOConn
    Parameters = <>
    SQL.Strings = (
      '--//[1] Create Linkserver'
      'set ansi_nulls on '
      'set ansi_warnings on '
      ' '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39') '
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39'192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\s' +
        'ql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER                        '
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 256
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 312
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object DeleteAll1: TMenuItem
      Caption = 'Delete All'
      OnClick = DeleteAll1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object U_Query1: TMyADOUpdateSQL
    DataSet = Query1
    ZModifyCommandObj.Connection = DM2.ADOConn
    ZModifyCommandObj.Parameters = <>
    ZDeleteCommandObj.Connection = DM2.ADOConn
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_STK'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_SoHD'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_NgayXH'
        Size = -1
        Value = Null
      end
      item
        Name = 'OLD_MaSP'
        Size = -1
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'Delete'
      'From ExpData'
      'Where STK =:OLD_STK AND'
      '        SoHD =:OLD_SoHD AND'
      '        NgayXH =:OLD_NgayXH AND'
      '        MaSP =:OLD_MaSP')
    ZInsertCommandObj.Connection = DM2.ADOConn
    ZInsertCommandObj.Parameters = <>
    SQLDelete = 
      'Delete'#13#10'From ExpData'#13#10'Where STK =:OLD_STK AND'#13#10'        SoHD =:OL' +
      'D_SoHD AND'#13#10'        NgayXH =:OLD_NgayXH AND'#13#10'        MaSP =:OLD_' +
      'MaSP'
    Left = 312
    Top = 288
  end
end
