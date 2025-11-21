object ColorStandardDatabase: TColorStandardDatabase
  Left = 283
  Top = 183
  Width = 1305
  Height = 675
  Caption = 'Color Standard Database'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 206
    Top = 109
    Width = 77
    Height = 13
    Caption = 'Classifed Group:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
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
    object BBT1: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT2: TBitBtn
      Left = 416
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT3: TBitBtn
      Left = 464
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT4: TBitBtn
      Left = 512
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 584
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
      ParentFont = False
      TabOrder = 11
      OnClick = bbt6Click
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1289
    Height = 98
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 5
      Top = 11
      Width = 69
      Height = 20
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
    object Label3: TLabel
      Left = 30
      Top = 71
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 186
      Top = 71
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object sampleimg: TImage
      Left = 583
      Top = 2
      Width = 113
      Height = 93
      Center = True
      Stretch = True
    end
    object Label2: TLabel
      Left = 192
      Top = 12
      Width = 75
      Height = 16
      Caption = 'Color Name:'
    end
    object Label5: TLabel
      Left = 419
      Top = 12
      Width = 22
      Height = 16
      Caption = 'PO:'
    end
    object Label6: TLabel
      Left = 5
      Top = 41
      Width = 71
      Height = 16
      Caption = 'Color Code:'
    end
    object Label8: TLabel
      Left = 211
      Top = 42
      Width = 99
      Height = 16
      Caption = 'Classifed Group:'
    end
    object Edit1: TEdit
      Left = 81
      Top = 7
      Width = 68
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 474
      Top = 54
      Width = 81
      Height = 36
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 77
      Top = 68
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 218
      Top = 68
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 2
    end
    object Check: TCheckBox
      Left = 336
      Top = 75
      Width = 57
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object UPBTN: TButton
      Left = 711
      Top = 0
      Width = 56
      Height = 48
      Caption = 'Upload'
      Enabled = False
      TabOrder = 5
      Visible = False
      OnClick = UPBTNClick
    end
    object SAVEBTN: TButton
      Left = 711
      Top = 50
      Width = 56
      Height = 45
      Caption = 'Save'
      Enabled = False
      TabOrder = 6
      Visible = False
      OnClick = SAVEBTNClick
    end
    object CheckBox1: TCheckBox
      Left = 14
      Top = 71
      Width = 14
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 270
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 8
    end
    object Edit3: TEdit
      Left = 443
      Top = 9
      Width = 114
      Height = 24
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 80
      Top = 38
      Width = 121
      Height = 24
      TabOrder = 10
    end
    object Edit5: TEdit
      Left = 312
      Top = 39
      Width = 114
      Height = 24
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 163
    Width = 1289
    Height = 473
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
    FrozenCols = 4
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = DBGridEh1CellClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Season'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ColorName'
        Footers = <>
        Width = 118
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'ColorCode'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'ClassifedGroup'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'Avialable_Old_Code'
        Footers = <>
        Title.Caption = 'Is There Avialable Old Code?'
        Width = 190
      end
      item
        EditButtons = <>
        FieldName = 'Color_Standard_Vendor'
        Footers = <>
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'Initial_Season_Used'
        Footers = <>
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'Carryover_Season_Purchased'
        Footers = <>
        Width = 201
      end
      item
        EditButtons = <>
        FieldName = 'PO#'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Latest_Date_of_Receipt'
        Footers = <>
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'Expired_Date'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Tolerance_Group'
        Footers = <>
        PickList.Strings = (
          'Solid'
          'Neutral'
          'White'
          'Fluorescent')
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Vissually_Approved'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'Spectro_Approved'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'Spectro_Report#'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'Tracking#'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Date_DC'
        Footers = <>
        Title.Caption = 'Distributed Team|DC Color Team'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DC_Barcode_Serial'
        Footers = <>
        Title.Caption = 'Distributed Team|Barcode Serial Number'
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'Date_Development'
        Footers = <>
        Title.Caption = 'Distributed Team|Development'
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'DVL_Barcode_Serial'
        Footers = <>
        Title.Caption = 'Distributed Team|Barcode Serial Number'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'Date_Production'
        Footers = <>
        Title.Caption = 'Distributed Team|Production'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'P_Barcode_Serial'
        Footers = <>
        Title.Caption = 'Distributed Team|Barcode Serial Number'
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'Date_Factory_Team'
        Footers = <>
        Title.Caption = 'Distributed Team|In- House Factory Team'
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'IH_Barcode_Serial'
        Footers = <>
        Title.Caption = 'Distributed Team|Barcode Serial Number'
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'Flat_Color_Chip'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'RGB_Value'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'NRF_Color_Code'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'Color_Standard_Fabrication'
        Footers = <>
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'Color_Limited_Use'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'remark'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 76
      end>
  end
  object Color: TQuery
    AfterOpen = ColorAfterOpen
    AfterScroll = ColorAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from Pur_Color'
      '')
    UpdateObject = UpdateSQL1
    Left = 392
    Top = 272
    object ColorSeason: TStringField
      DisplayWidth = 30
      FieldName = 'Season'
      Origin = 'DB.Pur_Color.Season'
      FixedChar = True
      Size = 30
    end
    object ColorColorName: TStringField
      FieldName = 'ColorName'
      Origin = 'DB.Pur_Color.ColorName'
      FixedChar = True
      Size = 30
    end
    object ColorColorCode: TStringField
      FieldName = 'ColorCode'
      Origin = 'DB.Pur_Color.ColorCode'
      FixedChar = True
      Size = 15
    end
    object ColorClassifedGroup: TStringField
      FieldName = 'ClassifedGroup'
      Origin = 'DB.Pur_Color.ClassifedGroup'
      FixedChar = True
      Size = 15
    end
    object ColorAvialable_Old_Code: TStringField
      FieldName = 'Avialable_Old_Code'
      Origin = 'DB.Pur_Color.Avialable_Old_Code'
      FixedChar = True
      Size = 30
    end
    object ColorColor_Standard_Vendor: TStringField
      FieldName = 'Color_Standard_Vendor'
      Origin = 'DB.Pur_Color.Color_Standard_Vendor'
      FixedChar = True
      Size = 10
    end
    object ColorInitial_Season_Used: TStringField
      FieldName = 'Initial_Season_Used'
      Origin = 'DB.Pur_Color.Initial_Season_Used'
      FixedChar = True
      Size = 10
    end
    object ColorCarryover_Season_Purchased: TStringField
      FieldName = 'Carryover_Season_Purchased'
      Origin = 'DB.Pur_Color.Carryover_Season_Purchased'
      FixedChar = True
      Size = 10
    end
    object ColorPO: TStringField
      FieldName = 'PO#'
      Origin = 'DB.Pur_Color.PO#'
      FixedChar = True
      Size = 30
    end
    object ColorLatest_Date_of_Receipt: TDateTimeField
      FieldName = 'Latest_Date_of_Receipt'
      Origin = 'DB.Pur_Color.Latest_Date_of_Receipt'
    end
    object ColorExpired_Date: TDateTimeField
      FieldName = 'Expired_Date'
      Origin = 'DB.Pur_Color.Expired_Date'
    end
    object ColorTolerance_Group: TStringField
      FieldName = 'Tolerance_Group'
      Origin = 'DB.Pur_Color.Tolerance_Group'
      FixedChar = True
    end
    object ColorVissually_Approved: TStringField
      FieldName = 'Vissually_Approved'
      Origin = 'DB.Pur_Color.Vissually_Approved'
      FixedChar = True
      Size = 10
    end
    object ColorSpectro_Approved: TStringField
      FieldName = 'Spectro_Approved'
      Origin = 'DB.Pur_Color.Spectro_Approved'
      FixedChar = True
      Size = 10
    end
    object ColorSpectro_Report: TStringField
      FieldName = 'Spectro_Report#'
      Origin = 'DB.Pur_Color.Spectro_Report#'
      FixedChar = True
    end
    object ColorTracking: TStringField
      FieldName = 'Tracking#'
      Origin = 'DB.Pur_Color.Tracking#'
      FixedChar = True
      Size = 10
    end
    object ColorDate_DC: TDateTimeField
      FieldName = 'Date_DC'
      Origin = 'DB.Pur_Color.Date_DC'
    end
    object ColorDC_Barcode_Serial: TStringField
      FieldName = 'DC_Barcode_Serial'
      Origin = 'DB.Pur_Color.DC_Barcode_Serial'
      FixedChar = True
      Size = 50
    end
    object ColorDate_Development: TDateTimeField
      FieldName = 'Date_Development'
      Origin = 'DB.Pur_Color.Date_Development'
    end
    object ColorDVL_Barcode_Serial: TStringField
      FieldName = 'DVL_Barcode_Serial'
      Origin = 'DB.Pur_Color.DVL_Barcode_Serial'
      FixedChar = True
      Size = 50
    end
    object ColorDate_Production: TDateTimeField
      FieldName = 'Date_Production'
      Origin = 'DB.Pur_Color.Date_Production'
    end
    object ColorP_Barcode_Serial: TStringField
      FieldName = 'P_Barcode_Serial'
      Origin = 'DB.Pur_Color.P_Barcode_Serial'
      FixedChar = True
      Size = 50
    end
    object ColorDate_Factory_Team: TDateTimeField
      FieldName = 'Date_Factory_Team'
      Origin = 'DB.Pur_Color.Date_Factory_Team'
    end
    object ColorIH_Barcode_Serial: TStringField
      FieldName = 'IH_Barcode_Serial'
      Origin = 'DB.Pur_Color.IH_Barcode_Serial'
      FixedChar = True
      Size = 50
    end
    object ColorFlat_Color_Chip: TStringField
      FieldName = 'Flat_Color_Chip'
      Origin = 'DB.Pur_Color.Flat_Color_Chip'
      FixedChar = True
      Size = 255
    end
    object ColorRGB_Value: TStringField
      FieldName = 'RGB_Value'
      Origin = 'DB.Pur_Color.RGB_Value'
      FixedChar = True
    end
    object ColorNRF_Color_Code: TStringField
      FieldName = 'NRF_Color_Code'
      Origin = 'DB.Pur_Color.NRF_Color_Code'
      FixedChar = True
      Size = 10
    end
    object ColorColor_Standard_Fabrication: TStringField
      FieldName = 'Color_Standard_Fabrication'
      Origin = 'DB.Pur_Color.Color_Standard_Fabrication'
      FixedChar = True
      Size = 50
    end
    object ColorColor_Limited_Use: TStringField
      FieldName = 'Color_Limited_Use'
      Origin = 'DB.Pur_Color.Color_Limited_Use'
      FixedChar = True
      Size = 10
    end
    object Colorremark: TStringField
      FieldName = 'remark'
      Origin = 'DB.Pur_Color.remark'
      FixedChar = True
      Size = 255
    end
    object ColorUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.Pur_Color.USERID'
      FixedChar = True
      Size = 15
    end
    object ColorUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.Pur_Color.USERDate'
    end
    object ColorYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.Pur_Color.YN'
      FixedChar = True
      Size = 5
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Pur_Color'
      'Set'
      '  ColorName =:ColorName,'
      '  ColorCode =:ColorCode,'
      '  ClassifedGroup =:ClassifedGroup,'
      '  Avialable_Old_Code =:Avialable_Old_Code,'
      '  Color_Standard_Vendor =:Color_Standard_Vendor ,'
      '  Initial_Season_Used =:Initial_Season_Used,'
      '  Carryover_Season_Purchased =:Carryover_Season_Purchased,'
      '  PO# =:PO#,'
      '  Latest_Date_of_Receipt =:Latest_Date_of_Receipt,'
      '  Expired_Date =:Expired_Date,'
      '  Tolerance_Group =:Tolerance_Group,'
      '  Vissually_Approved =:Vissually_Approved,'
      '  Spectro_Approved =:Spectro_Approved,'
      '  Spectro_Report# =:Spectro_Report#,'
      '  Tracking# =:Tracking#,'
      '  Date_DC =:Date_DC,'
      '  DC_Barcode_Serial =:DC_Barcode_Serial,'
      '  Date_Development =:Date_Development,'
      '  DVL_Barcode_Serial =:DVL_Barcode_Serial,'
      '  Date_Production =:Date_Production,'
      '  P_Barcode_Serial =:P_Barcode_Serial,'
      '  Date_Factory_Team =:Date_Factory_Team,'
      '  IH_Barcode_Serial =:IH_Barcode_Serial,'
      '  Flat_Color_Chip =:Flat_Color_Chip,'
      '  RGB_Value =:RGB_Value,'
      '  NRF_Color_Code =:NRF_Color_Code,'
      '  Color_Standard_Fabrication =:Color_Standard_Fabrication,'
      '  Color_Limited_Use =:Color_Limited_Use,'
      '  remark =:remark,'
      '  USERID =:USERID,'
      '  USERDate =:USERDate'
      'where'
      '  Season =:OLD_Season and'
      '  ColorCode=:OLD_ColorCode')
    InsertSQL.Strings = (
      'insert into Pur_Color'
      
        '  (Season, ColorName, ColorCode, ClassifedGroup, Avialable_Old_C' +
        'ode, Color_Standard_Vendor ,Initial_Season_Used, Carryover_Seaso' +
        'n_Purchased, PO#'
      
        '  , Latest_Date_of_Receipt, Expired_Date, Tolerance_Group , Viss' +
        'ually_Approved, Spectro_Approved, Spectro_Report#, Tracking#, Da' +
        'te_DC, DC_Barcode_Serial, Date_Development'
      
        '  , DVL_Barcode_Serial, Date_Production, P_Barcode_Serial, Date_' +
        'Factory_Team, IH_Barcode_Serial, Flat_Color_Chip, RGB_Value, NRF' +
        '_Color_Code'
      
        '  , Color_Standard_Fabrication, Color_Limited_Use, remark, USERI' +
        'D, USERDate)'
      'values'
      
        '  (:Season, :ColorName, :ColorCode, :ClassifedGroup, :Avialable_' +
        'Old_Code, :Color_Standard_Vendor ,:Initial_Season_Used, :Carryov' +
        'er_Season_Purchased, :PO#'
      
        '  , :Latest_Date_of_Receipt, :Expired_Date, :Tolerance_Group , :' +
        'Vissually_Approved, :Spectro_Approved, :Spectro_Report#, :Tracki' +
        'ng#, :Date_DC, :DC_Barcode_Serial'
      
        '  , :Date_Development, :DVL_Barcode_Serial, :Date_Production, :P' +
        '_Barcode_Serial, :Date_Factory_Team, :IH_Barcode_Serial, :Flat_C' +
        'olor_Chip, :RGB_Value, :NRF_Color_Code'
      
        '  , :Color_Standard_Fabrication, :Color_Limited_Use, :remark, :U' +
        'SERID, :USERDate)')
    DeleteSQL.Strings = (
      'delete from Pur_Color'
      'where'
      'Season = :OLD_Season and'
      'Colorcode =:OLD_Colorcode')
    Left = 392
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = Color
    Left = 392
    Top = 352
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = '*.JPG|*.JPG'
    Left = 452
    Top = 272
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 452
    Top = 312
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 272
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 345
    Top = 307
  end
end
