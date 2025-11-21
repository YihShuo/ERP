object ChamCong_Bonus: TChamCong_Bonus
  Left = 0
  Top = 0
  Caption = 'ChamCong_Bonus'
  ClientHeight = 470
  ClientWidth = 1552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1552
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
      OnClick = BB4Click
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
      OnClick = BB3Click
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
      OnClick = BB5Click
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
      OnClick = BB6Click
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
    object ImportBtnHRM: TBitBtn
      Left = 497
      Top = 6
      Width = 88
      Height = 53
      Hint = 'Delete one Record'
      Caption = 'Import HRM'#20154#20107#23566#20837
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
      TabOrder = 8
      WordWrap = True
      OnClick = ImportBtnHRMClick
    end
    object CalBtnHRM: TBitBtn
      Left = 591
      Top = 6
      Width = 74
      Height = 53
      Hint = 'Delete one Record'
      Caption = 'Calu HRM'#35336#31639#29518#37329
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
      TabOrder = 9
      WordWrap = True
      OnClick = CalBtnHRMClick
    end
    object DONVIBtn: TButton
      Left = 671
      Top = 6
      Width = 151
      Height = 26
      Caption = #272#416'N V'#7882'  '#21934#20301
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = DONVIBtnClick
    end
    object ChuvuBtn: TButton
      Left = 672
      Top = 33
      Width = 151
      Height = 26
      Caption = 'CH'#7912'C V'#7908'  '#32887#21209
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = ChuvuBtnClick
    end
    object BB10: TBitBtn
      Left = 406
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'In'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 12
      OnClick = BB10Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1552
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label4: TLabel
      Left = 11
      Top = 16
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'N'#259'm:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 133
      Top = 15
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Th'#225'ng:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object NVMa: TLabel
      Left = 258
      Top = 47
      Width = 44
      Height = 16
      Caption = 'NV M'#227':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 3
      Top = 47
      Width = 41
      Height = 16
      Caption = #272#417'n v'#7883':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 243
      Top = 16
      Width = 58
      Height = 16
      Caption = #272'i'#7873'u ki'#7879'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Query3: TButton
      Left = 488
      Top = 12
      Width = 65
      Height = 54
      Caption = 'T'#236'm ki'#7871'm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Query3Click
    end
    object CBX1: TComboBox
      Left = 45
      Top = 11
      Width = 73
      Height = 25
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 15
      ParentFont = False
      TabOrder = 1
      Text = '2021'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX2: TComboBox
      Left = 174
      Top = 11
      Width = 65
      Height = 25
      DropDownCount = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object NV_MAEdit: TEdit
      Left = 300
      Top = 43
      Width = 182
      Height = 24
      TabOrder = 3
    end
    object DonviCombo: TComboBox
      Left = 45
      Top = 44
      Width = 210
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'VPIT'
    end
    object DieukienComb: TComboBox
      Left = 300
      Top = 11
      Width = 182
      Height = 24
      TabOrder = 5
      Items.Strings = (
        'HESO  = null'
        'HESONGAYCONG >0'
        'HESONGAYCONG >0 & <>TYTHAC'
        'HESONGAYCONG >0 &  = TYTHAC'
        'HESONGAYCONG >0 & <>CHUYENGIA'
        'HESONGAYCONG >0 & = CHUYENGIA'
        'HESONGAYCONG =0'
        'Flag = CHUYENGIA')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 146
    Width = 1552
    Height = 324
    Align = alClient
    BiDiMode = bdLeftToRight
    DataSource = DS1
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    FrozenCols = 10
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentBiDiMode = False
    ParentFont = False
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
        FieldName = 'T_MA'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26376#24180'|T_MA'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_MA'
        Footer.FieldName = 'NV_MA'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #21729#24037#24037#34399'|NV_MA'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_Ten'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21729#24037#22995#21517'|NV_Ten'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_MA'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301#20195#30908'|DV_MA'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DV_Ten'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301#21517#31281'|DV_TEN'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_NGAYVAO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21040#32887#26085'|NGAYVAO'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CVU_MA'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32887#32026#20195#30908'|CVU_MA'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CVU_TEN'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32887#32026#21517#31281'|CVU_TEN'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CV_MA'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24037#20316#20195#30908'|CV_MA'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CV_TEN'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24037#20316#25551#36848'|CV_TEN'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NV_THOIVIEC'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38626#32887'|THOIVIEC'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TV_NgayThoiVIec'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38626#32887#26085'|NgayThoiViec'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SONGAYCONG'
        Footers = <>
        Title.Caption = #24037#20316#22825#25976'|SONGAYCONG'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_SONGAYCONGTRONGTHANG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26376#22825#25976'|SONGAYCONGTRONGTHANG'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIDQ'
        Footers = <>
        Title.Caption = #27665#20853'|NGHIDQ'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIR1'
        Footers = <>
        Title.Caption = #23130#21930#20551'|NGHIR1'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIP'
        Footers = <>
        Title.Caption = #24180#20551'|NGHIP'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIR'
        Footers = <>
        Title.Caption = #31680#26085'|NGHIR'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIRO'
        Footers = <>
        Title.Caption = #20107#20551'|NGHIRO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIOM'
        Footers = <>
        Title.Caption = #30149#20551'|NGHIOM'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIST'
        Footers = <>
        Title.Caption = #27969#29986#20551'|NGHIST'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITS'
        Footers = <>
        Title.Caption = #29986#20551'|NGHITS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIO'
        Footers = <>
        Title.Caption = #26336#24037'|NGHIO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINO'
        Footers = <>
        Title.Caption = #28961#34218#20551'|NGHINO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIKHAMTHAI'
        Footers = <>
        Title.Caption = #29986#27298#20551'|NGHIKHAMTHAI'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIDS'
        Footers = <>
        Title.Caption = #20581#24247#35519#39178'|NGHIDS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIKHHGD'
        Footers = <>
        Title.Caption = #29983#32946#35336#30059'|NGHIKHHGD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIPD'
        Footers = <>
        Title.Caption = #26202#29677#20572#24037'|NGHIPD'
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIQS'
        Footers = <>
        Title.Caption = #36557#20107#20551'|NGHIQS'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITNLD'
        Footers = <>
        Title.Caption = #28797#38627#21214#21205'|NGHITNLD'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHITS1'
        Footers = <>
        Title.Caption = #38506#29986'|NGHITS1'
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo1'
        Footers = <>
        Title.Caption = #28961#34218#20551'|NGHINo1'
        Width = 54
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHICO'
        Footers = <>
        Title.Caption = #23401#23376#30149'|NGHICO'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIPt'
        Footers = <>
        Title.Caption = #22825#28797'|NGHIPt'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHICC'
        Footers = <>
        Title.Caption = #25563#29677'|NGHICC'
        Width = 46
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo2'
        Footers = <>
        Title.Caption = #20572#24037#24213#34218'|L_NGHINo2'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo3'
        Footers = <>
        Title.Caption = 'No3 '#20572#24037'|L_NGHINo3'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo4'
        Footers = <>
        Title.Caption = 'No4 '#20572#24037'|L_NGHINo4'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo5'
        Footers = <>
        Title.Caption = 'No5 '#20572#24037'|L_NGHINo5'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo6'
        Footers = <>
        Title.Caption = 'No6 '#20572#24037'|L_NGHINo6'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHINo7'
        Footers = <>
        Title.Caption = 'No7 '#20572#24037'|L_NGHINo7'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'L_NGHIF0'
        Footers = <>
        Title.Caption = #30906#35386#32773#25918#20551' |L_NGHIF0'
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'StaffVNPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24179#22343#29518#37329'/'#20154'|StaffVNPrice'
        Width = 85
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'HESOSANLUONG'
        Footers = <>
        ReadOnly = True
        Title.Caption = #29986#33021#20418#25976'|HESOSANLUONG'
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'HESONGAYCONG'
        Footers = <>
        PickList.Strings = (
          '0'
          '0.5'
          '1')
        Title.Caption = #24046#21220#31995#25976'|HESONGAYCONG'
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'HESODONVI'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301#20418#25976'|HESODONVI'
        Width = 83
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'HESOCVUVU'
        Footers = <>
        Title.Caption = #32887#32026#20418#25976'|HESOCVUVU'
        Width = 98
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'TIENVUOTSANLUONG'
        Footer.FieldName = 'TIENVUOTSANLUONG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#37329#38989'|TIENVUOTSANLUONG'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26356#26032'ID|UserID'
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26356#26032#26085#26399'|UserDate'
        Width = 109
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CalUserID'
        Footers = <>
        Title.Caption = #35336#31639'ID|CalUserID'
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CalUserDate'
        Footers = <>
        Title.Caption = #35336#30059#26085#26399'|CalUserDate'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ModUserID'
        Footers = <>
        Title.Caption = #20462#25913'ID|ModUserID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ModUserDate'
        Footers = <>
        Title.Caption = #20462#25913#26085#26399'|ModUserDate'
        Width = 87
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qtemp: TADOQuery
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
    Left = 120
    Top = 192
  end
  object DS1: TDataSource
    DataSet = HRMQry
    Left = 170
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 219
    Top = 190
  end
  object Upd_HRMQry: TMyADOUpdateSQL
    DataSet = HRMQry
    ZModifyCommandObj.Connection = DM2.ADOConn
    ZModifyCommandObj.Parameters = <>
    ZDeleteCommandObj.Connection = DM2.ADOConn
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_T_MA'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'OLD_NV_MA'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'Delete '
      'from IT_NHANVIENCHAMCONG'
      'where T_MA =:OLD_T_MA and   '
      '          NV_MA =:OLD_NV_MA')
    ZInsertCommandObj.Connection = DM2.ADOConn
    ZInsertCommandObj.Parameters = <>
    SQLDelete = 
      'Delete '#13#10'from IT_NHANVIENCHAMCONG'#13#10'where T_MA =:OLD_T_MA and   '#13 +
      #10'          NV_MA =:OLD_NV_MA'
    Left = 168
    Top = 288
  end
  object HRMQry: TMyADOQuery
    CacheSize = 100
    Connection = DM2.ADOConn
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = HRMQryAfterOpen
    BeforeClose = HRMQryBeforeClose
    CommandTimeout = 300
    Parameters = <>
    SQL.Strings = (
      'Select * from ('
      
        'Select IT_NHANVIE.*,ROW_NUMBER() over (PARTITION BY NV_MA ORDER ' +
        'BY Sort asc) as  RN from ( '
      
        'Select  IT_NHANVIE.T_MA, IT_NHANVIE.GSBH, IT_NHANVIE.NV_MA, IT_N' +
        'HANVIE.NV_Ten, IT_NHANVIE.DV_MA, ST_DONVI.DV_Ten, NV_NGAYVAO, IT' +
        '_NHANVIE.CVU_MA, ST_CHUCVU.CVU_TEN, IT_NHANVIE.CV_MA, IT_NHANVIE' +
        '.CV_TEN,'
      
        '        IT_NHANVIE.NV_THOIVIEC, IT_NHANVIE.TV_NgayThoiVIec, IT_N' +
        'HANVIE.L_SONGAYCONGTRONGTHANG, IT_NHANVIE.SONGAYCONG/8 as SONGAY' +
        'CONG,'
      
        '        L_NGHIDQ/8 as L_NGHIDQ, L_NGHIR1/8 as L_NGHIR1, L_NGHIP/' +
        '8 as L_NGHIP, L_NGHIR/8 as L_NGHIR, L_NGHIRO/8 as L_NGHIRO, L_NG' +
        'HIOM/8 as L_NGHIOM,'
      
        '        L_NGHIST/8 as L_NGHIST, L_NGHITS/8 as L_NGHITS, L_NGHIO/' +
        '8 as L_NGHIO, L_NGHINO/8 as L_NGHINO, L_NGHIKHAMTHAI/8 as L_NGHI' +
        'KHAMTHAI,L_NGHIDS/8 as L_NGHIDS,'
      
        '        L_NGHIKHHGD/8 as L_NGHIKHHGD,L_NGHIPD/8 as L_NGHIPD,L_NG' +
        'HIQS/8 as L_NGHIQS,L_NGHITNLD/8 as L_NGHITNLD,L_NGHITS1/8 as L_N' +
        'GHITS1,L_NGHINo1/8 as L_NGHINo1,L_NGHICO/8 as L_NGHICO,L_NGHIPt/' +
        '8 as L_NGHIPt,L_NGHICC/8 as L_NGHICC,L_NGHINo2/8 as L_NGHINo2,'
      
        '        L_NGHINo3/8 as L_NGHINo3,L_NGHINo4/8 as L_NGHINo4,L_NGHI' +
        'No5/8 as L_NGHINo5,L_NGHINo6/8 as L_NGHINo6,L_NGHINo7/8 as L_NGH' +
        'INo7,L_NGHIF0/8 as L_NGHIF0,'
      
        '        IT_TIENSANLUONG.StaffVNPrice,IT_NHANVIE.HESONGAYCONG,IsN' +
        'ull(IT_NHANVIE.HESOSANLUONG,IT_HESOSANLUONG.HESO) as HESOSANLUON' +
        'G,IsNull(IT_NHANVIE.HESODONVI,ST_DONVI.TienSanluongHeso) as HESO' +
        'DONVI,'
      
        '        IsNull(IT_NHANVIE.HESOCVUVU,ST_CHUCVU.TienSanluongHeso) ' +
        'as HESOCVUVU,IT_NHANVIE.TIENVUOTSANLUONG,'
      
        '        IT_NHANVIE.UserID,IT_NHANVIE.UserDate,IT_NHANVIE.CalUser' +
        'ID,IT_NHANVIE.CalUserDate,IT_NHANVIE.ModUserID,IT_NHANVIE.ModUse' +
        'rDate,IT_NHANVIE.YN'
      
        '        ,ST_CHUCVU.CV_MA as ERP_CV_MA,case when ST_CHUCVU.CV_MA=' +
        'IT_NHANVIE.CV_MA then 0   when ST_CHUCVU.CV_MA='#39'ZZZZ'#39' then 1 whe' +
        'n ST_CHUCVU.CV_MA<>IT_NHANVIE.CV_MA then 2  end as Sort,ST_DONVI' +
        '.Flag as  DONVI_Flag '
      'from LIY_TYXUAN.dbo.IT_NHANVIENCHAMCONG IT_NHANVIE '
      
        'Left join LIY_TYXUAN.dbo.IT_HESOSANLUONG IT_HESOSANLUONG on IT_N' +
        'HANVIE.T_MA=IT_HESOSANLUONG.T_MA and  IT_NHANVIE.DV_MA=IT_HESOSA' +
        'NLUONG.DV_MA and IT_HESOSANLUONG.GSBH=IT_NHANVIE.GSBH  '
      
        'Left join LIY_TYXUAN.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_' +
        'NHANVIE.DV_MA '
      
        'Left join LIY_TYXUAN.dbo.ST_CHUCVU ST_CHUCVU on ST_CHUCVU.CVU_MA' +
        '=IT_NHANVIE.CVU_MA '
      
        'left join LIY_TYXUAN.dbo.IT_TIENSANLUONG IT_TIENSANLUONG on IT_T' +
        'IENSANLUONG.T_MA=IT_NHANVIE.T_MA and IT_TIENSANLUONG.GSBH=IT_NHA' +
        'NVIE.GSBH '
      'where IT_NHANVIE.T_MA='#39'01-2021'#39' and IT_NHANVIE.GSBH='#39'VA12'#39' '
      ')  IT_NHANVIE )  IT_NHANVIE where RN=1')
    Left = 168
    Top = 193
    object HRMQryT_MA: TWideStringField
      FieldName = 'T_MA'
      Size = 50
    end
    object HRMQryGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object HRMQryNV_MA: TWideStringField
      FieldName = 'NV_MA'
      Size = 50
    end
    object HRMQryNV_Ten: TWideStringField
      FieldName = 'NV_Ten'
      Size = 50
    end
    object HRMQryDV_MA: TWideStringField
      FieldName = 'DV_MA'
      Size = 50
    end
    object HRMQryDV_Ten: TWideStringField
      FieldName = 'DV_Ten'
      Size = 50
    end
    object HRMQryNV_NGAYVAO: TDateTimeField
      FieldName = 'NV_NGAYVAO'
    end
    object HRMQryCVU_MA: TWideStringField
      FieldName = 'CVU_MA'
      Size = 50
    end
    object HRMQryCVU_TEN: TWideStringField
      FieldName = 'CVU_TEN'
      Size = 50
    end
    object HRMQryCV_MA: TWideStringField
      FieldName = 'CV_MA'
      Size = 50
    end
    object HRMQryCV_TEN: TWideStringField
      FieldName = 'CV_TEN'
      Size = 500
    end
    object HRMQryNV_THOIVIEC: TBooleanField
      FieldName = 'NV_THOIVIEC'
    end
    object HRMQryTV_NgayThoiVIec: TDateTimeField
      FieldName = 'TV_NgayThoiVIec'
    end
    object HRMQryL_SONGAYCONGTRONGTHANG: TFloatField
      FieldName = 'L_SONGAYCONGTRONGTHANG'
    end
    object HRMQrySONGAYCONG: TFloatField
      FieldName = 'SONGAYCONG'
      ReadOnly = True
    end
    object HRMQryL_NGHIDQ: TFloatField
      FieldName = 'L_NGHIDQ'
      OnChange = HRMQryL_NGHIDQChange
    end
    object HRMQryL_NGHILE: TFloatField
      FieldName = 'L_NGHIR1'
      OnChange = HRMQryL_NGHILEChange
    end
    object HRMQryL_NGHIP: TFloatField
      FieldName = 'L_NGHIP'
      OnChange = HRMQryL_NGHIPChange
    end
    object HRMQryL_NGHIR: TFloatField
      FieldName = 'L_NGHIR'
      OnChange = HRMQryL_NGHIRChange
    end
    object HRMQryL_NGHIRO: TFloatField
      FieldName = 'L_NGHIRO'
      OnChange = HRMQryL_NGHIROChange
    end
    object HRMQryL_NGHIOM: TFloatField
      FieldName = 'L_NGHIOM'
      OnChange = HRMQryL_NGHIOMChange
    end
    object HRMQryL_NGHIST: TFloatField
      FieldName = 'L_NGHIST'
    end
    object HRMQryL_NGHITS: TFloatField
      FieldName = 'L_NGHITS'
    end
    object HRMQryL_NGHIO: TFloatField
      FieldName = 'L_NGHIO'
    end
    object HRMQryL_NGHINO: TFloatField
      FieldName = 'L_NGHINO'
    end
    object HRMQryL_NGHIKHAMTHAI: TFloatField
      FieldName = 'L_NGHIKHAMTHAI'
      OnChange = HRMQryL_NGHIKHAMTHAIChange
    end
    object HRMQryL_NGHIDS: TFloatField
      FieldName = 'L_NGHIDS'
      OnChange = HRMQryL_NGHIDSChange
    end
    object HRMQryL_NGHIKHHGD: TFloatField
      FieldName = 'L_NGHIKHHGD'
      OnChange = HRMQryL_NGHIKHHGDChange
    end
    object HRMQryL_NGHIPD: TFloatField
      FieldName = 'L_NGHIPD'
      OnChange = HRMQryL_NGHIPDChange
    end
    object HRMQryL_NGHIQS: TFloatField
      FieldName = 'L_NGHIQS'
      OnChange = HRMQryL_NGHIQSChange
    end
    object HRMQryL_NGHITNLD: TFloatField
      FieldName = 'L_NGHITNLD'
      OnChange = HRMQryL_NGHITNLDChange
    end
    object HRMQryL_NGHITS1: TFloatField
      FieldName = 'L_NGHITS1'
      OnChange = HRMQryL_NGHITS1Change
    end
    object HRMQryL_NGHINo1: TFloatField
      FieldName = 'L_NGHINo1'
      OnChange = HRMQryL_NGHINo1Change
    end
    object HRMQryL_NGHICO: TFloatField
      FieldName = 'L_NGHICO'
      OnChange = HRMQryL_NGHICOChange
    end
    object HRMQryL_NGHIPt: TFloatField
      FieldName = 'L_NGHIPt'
      OnChange = HRMQryL_NGHIPtChange
    end
    object HRMQryL_NGHICC: TFloatField
      FieldName = 'L_NGHICC'
      OnChange = HRMQryL_NGHICCChange
    end
    object HRMQryL_NGHINo2: TFloatField
      FieldName = 'L_NGHINo2'
      OnChange = HRMQryL_NGHINo2Change
    end
    object HRMQryL_NGHINo3: TFloatField
      FieldName = 'L_NGHINo3'
      ReadOnly = True
    end
    object HRMQryL_NGHINo4: TFloatField
      FieldName = 'L_NGHINo4'
      ReadOnly = True
    end
    object HRMQryL_NGHINo5: TFloatField
      FieldName = 'L_NGHINo5'
      ReadOnly = True
    end
    object HRMQryL_NGHINo6: TFloatField
      FieldName = 'L_NGHINo6'
      ReadOnly = True
    end
    object HRMQryL_NGHINo7: TFloatField
      FieldName = 'L_NGHINo7'
      ReadOnly = True
    end
    object HRMQryL_NGHIF0: TFloatField
      FieldName = 'L_NGHIF0'
      ReadOnly = True
    end
    object HRMQryStaffVNPrice: TLargeintField
      FieldName = 'StaffVNPrice'
      DisplayFormat = '#,##0'
    end
    object HRMQryHESONGAYCONG: TFloatField
      FieldName = 'HESONGAYCONG'
    end
    object HRMQryHESOSANLUONG: TFloatField
      FieldName = 'HESOSANLUONG'
    end
    object HRMQryHESODONVI: TFloatField
      FieldName = 'HESODONVI'
    end
    object HRMQryHESOCVUVU: TFloatField
      FieldName = 'HESOCVUVU'
      OnChange = HRMQryHESOCVUVUChange
    end
    object HRMQryTIENVUOTSANLUONG: TLargeintField
      FieldName = 'TIENVUOTSANLUONG'
      DisplayFormat = '#,##0'
    end
    object HRMQryUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object HRMQryUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object HRMQryCalUserID: TStringField
      FieldName = 'CalUserID'
      Size = 10
    end
    object HRMQryCalUserDate: TDateTimeField
      FieldName = 'CalUserDate'
    end
    object HRMQryModUserID: TStringField
      FieldName = 'ModUserID'
      Size = 10
    end
    object HRMQryModUserDate: TDateTimeField
      FieldName = 'ModUserDate'
    end
    object HRMQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object HRMQryERP_CV_MA: TWideStringField
      FieldName = 'ERP_CV_MA'
      Size = 50
    end
    object HRMQrySort: TIntegerField
      FieldName = 'Sort'
      ReadOnly = True
    end
    object HRMQryRN: TLargeintField
      FieldName = 'RN'
      ReadOnly = True
    end
    object HRMQryDONVI_Flag: TStringField
      FieldName = 'DONVI_Flag'
      Size = 10
    end
  end
end
