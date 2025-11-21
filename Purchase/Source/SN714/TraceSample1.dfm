object TraceSample: TTraceSample
  Left = 248
  Top = 53
  Width = 933
  Height = 706
  Caption = 'TraceSample'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 559
    Width = 917
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 917
    Height = 54
    Align = alTop
    TabOrder = 0
    object Label9: TLabel
      Left = 512
      Top = 8
      Width = 97
      Height = 13
      Caption = 'Not inclue V material'
    end
    object BB2: TBitBtn
      Left = 51
      Top = 3
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
      Left = 99
      Top = 3
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
      Left = 147
      Top = 3
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
      Left = 195
      Top = 3
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
      Left = 243
      Top = 3
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
      Left = 291
      Top = 3
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
      Left = 3
      Top = 3
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
    object bbt6: TBitBtn
      Left = 347
      Top = 3
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
      TabOrder = 7
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
    object BitBtn1: TBitBtn
      Left = 401
      Top = 3
      Width = 101
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Old NG Function'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn1Click
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
    Top = 54
    Width = 917
    Height = 62
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
      Left = 292
      Top = 9
      Width = 42
      Height = 16
      Caption = 'PO NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 130
      Top = 9
      Width = 45
      Height = 16
      Caption = 'SuppID'
    end
    object Label4: TLabel
      Left = 597
      Top = 10
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label5: TLabel
      Left = 105
      Top = 38
      Width = 69
      Height = 16
      Caption = 'SuppName'
    end
    object lbl1: TLabel
      Left = 290
      Top = 38
      Width = 43
      Height = 16
      Caption = 'Invoice'
    end
    object Label6: TLabel
      Left = 1
      Top = 9
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 9
      Top = 38
      Width = 36
      Height = 16
      Caption = 'Stage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 469
      Top = 38
      Width = 35
      Height = 16
      Caption = 'MatID'
    end
    object Label10: TLabel
      Left = 614
      Top = 38
      Width = 96
      Height = 16
      Caption = 'Invoice customs'
    end
    object Edit1: TEdit
      Left = 336
      Top = 5
      Width = 102
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 764
      Top = 6
      Width = 72
      Height = 23
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 507
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 609
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 176
      Top = 5
      Width = 105
      Height = 24
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 176
      Top = 34
      Width = 105
      Height = 24
      TabOrder = 13
      OnKeyPress = Edit3KeyPress
    end
    object edt1: TEdit
      Left = 336
      Top = 34
      Width = 102
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 48
      Top = 5
      Width = 51
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
      OnKeyPress = Edit1KeyPress
    end
    object Check: TCheckBox
      Left = 707
      Top = 8
      Width = 51
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 48
      Top = 34
      Width = 51
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 457
      Top = 10
      Width = 50
      Height = 17
      Caption = 'From'
      TabOrder = 10
    end
    object Chk_ETD: TCheckBox
      Left = 847
      Top = 9
      Width = 75
      Height = 17
      Caption = 'No ETD'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object Chk_Price: TCheckBox
      Left = 1011
      Top = 9
      Width = 79
      Height = 17
      Caption = 'No Price'
      Checked = True
      State = cbChecked
      TabOrder = 9
      Visible = False
    end
    object Chk_PDT: TCheckBox
      Left = 947
      Top = 9
      Width = 79
      Height = 17
      Caption = 'Hide PDT'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 507
      Top = 35
      Width = 102
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnKeyPress = Edit1KeyPress
    end
    object Chk_NGPending: TCheckBox
      Left = 941
      Top = 35
      Width = 92
      Height = 17
      Caption = 'NG Pending'
      Checked = True
      State = cbChecked
      TabOrder = 17
      Visible = False
    end
    object Chk_Confirm: TCheckBox
      Left = 848
      Top = 33
      Width = 101
      Height = 17
      Caption = 'No Confirm'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Edit7: TEdit
      Left = 715
      Top = 35
      Width = 121
      Height = 24
      TabOrder = 16
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 116
    Width = 917
    Height = 443
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid4: TDBGridEh
    Left = 0
    Top = 116
    Width = 917
    Height = 443
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 2
    OnDrawColumnCell = DBGrid4DrawColumnCell
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SEASON'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sea'
        Title.TitleButton = True
        Width = 32
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'PURPOSE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur'
        Title.TitleButton = True
        Width = 28
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PO NO'
        Title.TitleButton = True
        Width = 74
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'YWPM'
        Footer.FieldName = 'YWPM'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.TitleButton = True
        Width = 274
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 48
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.TitleButton = True
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Request Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = 'Order Memo'
        Title.TitleButton = True
        Width = 83
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'ETD'
        Title.TitleButton = True
        Width = 74
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'INV_ETA'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Invoice ETA'
        Title.TitleButton = True
        Width = 62
      end
      item
        Color = clBlack
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 3
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'NG_Date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Confirm Date'
        Title.TitleButton = True
        Width = 109
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'NG_Reason'
        Footers = <>
        PickList.Strings = (
          'OK'
          'Color NG'
          'Dimension NG'
          'Quality NG'
          'Emboss NG'
          'Lab Test NG')
        Title.Caption = 'Confirm Status'
        Title.TitleButton = True
        Width = 74
        OnNotInList = DBGrid4Columns11NotInList
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Lab'
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        Title.Caption = 'Lab Test'
        Width = 45
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Lab_reason'
        Footers = <>
        Width = 200
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'C_window'
        Footers = <>
        Title.Caption = 'color window'
        Width = 165
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'QC_skin'
        Footers = <>
        Title.Caption = 'Skin QC'
        Title.TitleButton = True
        Width = 34
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Softness'
        Footers = <>
        Width = 100
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_ETD'
        Footers = <>
        Title.Caption = 'NG|ETD'
        Title.TitleButton = True
        Width = 61
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_ETA'
        Footers = <>
        Title.Caption = 'NG|ETA'
        Title.TitleButton = True
        Width = 61
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'Result'
        Footers = <>
        PickList.Strings = (
          'Improved'
          'Can not improve'
          'Special release'
          'Guarantee'
          'Change Suuplier')
        Title.Caption = 'NG|Result'
        Title.TitleButton = True
        Width = 49
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_Remark'
        Footers = <>
        Title.Caption = 'NG|Remark'
        Title.TitleButton = True
        Width = 165
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'File_Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Guarantee|Name'
        Title.TitleButton = True
        Width = 46
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'File_Size'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Guarantee|Size'
        Title.TitleButton = True
        Width = 34
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Invoice_Customs'
        Footers = <>
        Title.Caption = 'Invoice Customs'
        Width = 87
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Invoice'
        Footers = <>
        Title.TitleButton = True
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Skin_Size'
        Footers = <>
        Title.Caption = 'Skin Size'
        Title.TitleButton = True
        Width = 45
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Skin_Quality'
        Footers = <>
        Title.Caption = 'Skin Quality'
        Title.TitleButton = True
        Width = 45
      end
      item
        Color = clBlack
        EditButtons = <>
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 4
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Footer.Color = cl3DLight
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Purchaser'
        Title.TitleButton = True
        Width = 66
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = 'Price|USD|Pur.'
        Title.TitleButton = True
        Visible = False
        Width = 44
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'USPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|USD|ERP'
        Title.TitleButton = True
        Visible = False
        Width = 41
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'RKUSPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|USD|Pay'
        Title.TitleButton = True
        Visible = False
        Width = 41
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = 'Price|VND|Pur'
        Title.TitleButton = True
        Visible = False
        Width = 58
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'VNPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|VND|ERP'
        Title.TitleButton = True
        Visible = False
        Width = 58
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'RKVNPrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|VND|Pay'
        Title.TitleButton = True
        Visible = False
        Width = 52
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Charge_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Charge'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 37
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'FreeQty_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free Qty'
        Title.TitleButton = True
        Visible = False
        Width = 36
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Q_USPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|USD'
        Title.TitleButton = True
        Visible = False
        Width = 41
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Q_VNPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|VND'
        Title.TitleButton = True
        Visible = False
        Width = 56
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur Order Date'
        Title.TitleButton = True
        Width = 67
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material No'
        Title.TitleButton = True
        Width = 76
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UserID'
        Title.TitleButton = True
        Width = 44
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UserDate'
        Title.TitleButton = True
        Width = 70
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'QC_File_Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QC Inspection|File Name'
        Width = 81
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'QC_File_Size'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QC Inspection|File Size'
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 585
    Width = 917
    Height = 83
    Align = alBottom
    Color = cl3DLight
    DataSource = DS_ETDHistory
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Width = 65
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Title.Caption = 'UserDate'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'User ID'
        Width = 61
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 562
    Width = 917
    Height = 23
    Align = alBottom
    TabOrder = 4
    object Label8: TLabel
      Left = 4
      Top = 4
      Width = 124
      Height = 16
      Caption = 'ETD Revised history'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object DS4: TDataSource
    DataSet = CGDet
    Left = 516
    Top = 340
  end
  object CGDet: TQuery
    AfterOpen = CGDetAfterOpen
    OnCalcFields = CGDetCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZLS.CGNO '
      '       ,CGZLS.CLBH'
      '       ,CGZLInvoiceS_1.Invoice_Customs '
      '       ,CGZLS.Qty '
      '       ,CGZLS.YQDate '
      '       ,CGZLS.CFMDate '
      '       ,CGZLS.CFMDate as old_CFMDate'
      '       ,CGZLS.USERDate '
      '       ,CGZLS.USERID '
      '       ,CGZLS.Memo '
      '       ,CGZLS.USPrice '
      '       ,CGZLS.VNPrice '
      
        '       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE' +
        ',CGZL.CGDate,CGZL.ZSBH'
      
        '       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reas' +
        'on '
      '       ,MaterialNG.NG_Reason as old_NG_Reason'
      '       ,MaterialNG.NG_ETD'
      '       ,MaterialNG.NG_ETA'
      '       ,MaterialNG.Result'
      '       ,MaterialNG.NG_Date'
      '       ,MaterialNG.NG_Date as old_NG_Date'
      
        '       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_wind' +
        'ow '
      
        '       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,Mate' +
        'rialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice' +
        '_1.invoice,'#39#39') as invoice '
      
        ',RKACC.RKUSPrice,RKACC.RKVNPrice,BUSERS.USERNAME as SamplePurcha' +
        'ser_Name  '
      '       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  '
      
        '       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Si' +
        'ze   '
      'from CGZLS  '
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      'left join BUSERS on BUSERS.USERID=ZSZL.SamplePurchaser'
      
        'left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO '
      
        'left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH an' +
        'd CGZLS.CGNO=SampleLeatherQC.CGNO '
      
        'left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.S' +
        'EASON=MaterialMOQ.Season   '
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1,Invoice_Customs  from CGZLInvoiceS GROUP BY CGNO,CLBH,Invoi' +
        'ce_Customs  ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH a' +
        'nd '
      'CGZLS.CGNO=CGZLInvoiceS_1.CGNO '
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      
        'left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKU' +
        'SPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFM' +
        'ID<>'#39'NO'#39' and kcrk.RKNO=KCRKS.RKNO '
      
        'group by kcrk.zsno,KCRKS.CLBH) RKACC on RKACC.zsno=cgzls.cgno an' +
        'd RKACC.clbh=cgzls.clbh '
      ''
      '    WHERE 1=2'
      'order by CGZLS.CGNO DESC')
    UpdateObject = UPDet
    Left = 516
    Top = 372
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
      currency = False
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/mm/dd'
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
    end
    object CGDetACCUS: TCurrencyField
      DisplayLabel = 'US Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      currency = False
      Calculated = True
    end
    object CGDetACCVN: TCurrencyField
      DisplayLabel = 'VN Amount'
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      currency = False
      Calculated = True
    end
    object CGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      currency = False
    end
    object CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      currency = False
    end
    object CGDetUSPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USPrice_'
      currency = False
      Calculated = True
    end
    object CGDetVNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNPrice_'
      currency = False
      Calculated = True
    end
    object CGDetQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object CGDetQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object CGDetFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object CGDetCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object CGDetZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object CGDetSEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object CGDetPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object CGDetCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object CGDetZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CGDetNG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object CGDetNG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object CGDetNG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object CGDetResult: TStringField
      FieldName = 'Result'
      FixedChar = True
    end
    object CGDetFile_Name: TStringField
      FieldName = 'File_Name'
      FixedChar = True
      Size = 50
    end
    object CGDetFile_Size: TFloatField
      FieldName = 'File_Size'
    end
    object CGDetINV_ETA: TDateTimeField
      FieldName = 'INV_ETA'
    end
    object CGDetNG_Remark: TStringField
      FieldName = 'NG_Remark'
      Size = 50
    end
    object CGDetNG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object CGDetRKUSPrice: TCurrencyField
      FieldName = 'RKUSPrice'
      currency = False
    end
    object CGDetRKVNPrice: TCurrencyField
      FieldName = 'RKVNPrice'
      currency = False
    end
    object CGDetSamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object CGDetold_NG_Date: TDateTimeField
      FieldName = 'old_NG_Date'
    end
    object CGDetold_NG_Reason: TStringField
      FieldName = 'old_NG_Reason'
      FixedChar = True
    end
    object CGDetold_CFMDate: TDateTimeField
      FieldName = 'old_CFMDate'
    end
    object CGDetQC_skin: TCurrencyField
      FieldName = 'QC_skin'
      DisplayFormat = '##%'
      currency = False
    end
    object CGDetSkin_Size: TCurrencyField
      FieldName = 'Skin_Size'
      currency = False
    end
    object CGDetSkin_Quality: TCurrencyField
      FieldName = 'Skin_Quality'
      DisplayFormat = '##%'
      currency = False
    end
    object CGDetQC_File_Name: TStringField
      FieldName = 'QC_File_Name'
      FixedChar = True
      Size = 50
    end
    object CGDetQC_File_Size: TFloatField
      FieldName = 'QC_File_Size'
    end
    object CGDetC_window: TStringField
      FieldName = 'C_window'
      FixedChar = True
      Size = 50
    end
    object CGDetLab: TStringField
      FieldName = 'Lab'
      FixedChar = True
      Size = 4
    end
    object CGDetLab_reason: TStringField
      FieldName = 'Lab_reason'
      FixedChar = True
      Size = 200
    end
    object CGDetInvoice_Customs: TStringField
      FieldName = 'Invoice_Customs'
      FixedChar = True
      Size = 100
    end
    object CGDetSoftness: TStringField
      FieldName = 'Softness'
      FixedChar = True
      Size = 50
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZLS'
      'set'
      '  CFMDate = :CFMDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  memo = :memo,'
      '  Invoice =:Invoice,'
      '  BILLNO=:BILLNO,'
      '  WAY=:WAY,'
      '  REMARK=:REMARK,'
      '  MEMO1=:MEMO1,'
      '  ETA=:ETA'
      '  where'
      '  CGNO = :OLD_CGNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      '')
    Left = 516
    Top = 405
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 144
    Top = 344
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 792
    Top = 368
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 832
    Top = 368
  end
  object Qry_zszlSamplePayment: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 792
    Top = 416
    object Qry_zszlSamplePaymentFreeQty: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentCharge: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  SamplePrice,SamplePriceVN ,EffectiveDate'
      'from MaterialMOQ'
      'where 1=2'
      '')
    Left = 832
    Top = 416
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialMOQ.SamplePrice'
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialMOQ.SamplePriceVN'
    end
    object Qry_MaterialPriceEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
      Origin = 'DB.MaterialMOQ.EffectiveDate'
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 627
    Top = 224
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 564
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 516
    Top = 440
    object S4: TMenuItem
      Caption = 'Upload Guarantee File'
      Enabled = False
      OnClick = S4Click
    end
    object S5: TMenuItem
      Caption = 'Download Guarantee File'
      Enabled = False
      OnClick = S5Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object S6: TMenuItem
      Caption = 'Upload QC Inspection File'
      OnClick = S6Click
    end
    object S7: TMenuItem
      Caption = 'Download QC Inspection File'
      OnClick = S7Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ShowPrice1: TMenuItem
      Caption = 'Link to Quotation Price'
      Enabled = False
      OnClick = ShowPrice1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 596
    Top = 226
  end
  object Qry_SamplePayment_Unit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 792
    Top = 456
    object CurrencyField1: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object DS_ETDHistory: TDataSource
    DataSet = Qry_ETDHistory
    Left = 120
    Top = 624
  end
  object Qry_ETDHistory: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'SELECT     ETD, USERDate, USERID'
      'FROM         ETDTemp'
      'where CGNO=:CGNO'
      '      AND CLBH =:CLBH'
      'GROUP BY ETD, USERDate, USERID'
      'ORDER BY USERDate DESC'
      ''
      ''
      '')
    Left = 120
    Top = 656
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Qry_ETDHistoryETD: TDateTimeField
      FieldName = 'ETD'
      Origin = 'DB.ETDTemp.ETD'
    end
    object Qry_ETDHistoryUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.ETDTemp.USERDate'
    end
    object Qry_ETDHistoryUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.ETDTemp.USERID'
      FixedChar = True
      Size = 15
    end
  end
end
