object TraceSample: TTraceSample
  Left = 228
  Top = 61
  Width = 1647
  Height = 722
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
    Top = 510
    Width = 1631
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1631
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
    object Label17: TLabel
      Left = 1103
      Top = 30
      Width = 83
      Height = 13
      Caption = 'CommitedETD:'
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Width = 104
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Old NG Function'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
    object Button2: TButton
      Left = 512
      Top = 24
      Width = 145
      Height = 25
      Caption = 'ETD Revised EXCEL'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 664
      Top = 24
      Width = 161
      Height = 25
      Caption = 'Transfer data to N762 (PO Date)'
      TabOrder = 10
      OnClick = Button3Click
    end
    object DTP3: TDateTimePicker
      Left = 1184
      Top = 27
      Width = 105
      Height = 21
      Date = 44835.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 44835.000000000000000000
      TabOrder = 11
    end
    object below: TButton
      Left = 1302
      Top = 22
      Width = 49
      Height = 25
      Caption = 'Copy'
      TabOrder = 12
      Visible = False
      OnClick = belowClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 54
    Width = 1631
    Height = 122
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 238
      Top = 9
      Width = 42
      Height = 16
      Caption = 'PO NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Left = 600
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
      Left = 236
      Top = 38
      Width = 43
      Height = 16
      Caption = 'Invoice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1
      Top = 9
      Width = 47
      Height = 16
      Caption = 'Season'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 235
      Top = 70
      Width = 35
      Height = 16
      Caption = 'MatID'
    end
    object Label10: TLabel
      Left = 4
      Top = 69
      Width = 96
      Height = 16
      Caption = 'Invoice customs'
    end
    object Label14: TLabel
      Left = 471
      Top = 38
      Width = 36
      Height = 16
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 398
      Top = 38
      Width = 41
      Height = 16
      Caption = 'Frozen'
    end
    object Label13: TLabel
      Left = 382
      Top = 70
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label18: TLabel
      Left = 703
      Top = 9
      Width = 77
      Height = 16
      Caption = 'Brand GSBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label15: TLabel
      Left = 614
      Top = 38
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Label58: TLabel
      Left = 1069
      Top = 28
      Width = 115
      Height = 16
      Caption = 'ProductionLocation'
    end
    object Label16: TLabel
      Left = 3
      Top = 98
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Edit1: TEdit
      Left = 284
      Top = 5
      Width = 100
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 739
      Top = 64
      Width = 72
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 512
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 610
      Top = 6
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object Edit2: TEdit
      Left = 176
      Top = 5
      Width = 56
      Height = 24
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 176
      Top = 34
      Width = 56
      Height = 24
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
    object edt1: TEdit
      Left = 284
      Top = 34
      Width = 101
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 48
      Top = 5
      Width = 51
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Check: TCheckBox
      Left = 845
      Top = 76
      Width = 51
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 48
      Top = 34
      Width = 51
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 395
      Top = 10
      Width = 19
      Height = 17
      TabOrder = 13
    end
    object Chk_ETD: TCheckBox
      Left = 846
      Top = 5
      Width = 75
      Height = 17
      Caption = 'No ETD'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object Chk_Price: TCheckBox
      Left = 946
      Top = 53
      Width = 79
      Height = 17
      Caption = 'No Price'
      Checked = True
      State = cbChecked
      TabOrder = 12
      Visible = False
    end
    object Chk_PDT: TCheckBox
      Left = 845
      Top = 53
      Width = 79
      Height = 17
      Caption = 'Hide PDT'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Edit6: TEdit
      Left = 274
      Top = 66
      Width = 102
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnKeyPress = Edit1KeyPress
    end
    object Chk_NGPending: TCheckBox
      Left = 947
      Top = 76
      Width = 92
      Height = 17
      Caption = 'NG Pending'
      Checked = True
      State = cbChecked
      TabOrder = 17
      Visible = False
    end
    object Chk_Confirm: TCheckBox
      Left = 846
      Top = 29
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object Edit7: TEdit
      Left = 102
      Top = 66
      Width = 121
      Height = 24
      TabOrder = 16
    end
    object chk_CGQty: TCheckBox
      Left = 947
      Top = 6
      Width = 79
      Height = 17
      Caption = 'Qty>0'
      Checked = True
      State = cbChecked
      TabOrder = 18
    end
    object NoInvoiceETA: TCheckBox
      Left = 947
      Top = 28
      Width = 113
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'No InvoiceETA'
      ParentBiDiMode = False
      TabOrder = 19
    end
    object BrandCombo: TComboBox
      Left = 513
      Top = 34
      Width = 89
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 20
    end
    object Edit8: TEdit
      Left = 444
      Top = 33
      Width = 13
      Height = 24
      TabOrder = 21
      Text = '5'
    end
    object Edit9: TEdit
      Left = 450
      Top = 67
      Width = 96
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 22
    end
    object Edit10: TEdit
      Left = 548
      Top = 67
      Width = 88
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 23
    end
    object Edit11: TEdit
      Left = 639
      Top = 67
      Width = 93
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 24
    end
    object ComboBox14: TComboBox
      Left = 781
      Top = 6
      Width = 58
      Height = 24
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 25
      Visible = False
      Items.Strings = (
        ''
        'SKX'
        'SRL')
    end
    object Chk_NG: TCheckBox
      Left = 1070
      Top = 5
      Width = 75
      Height = 17
      Caption = 'NG'
      TabOrder = 26
    end
    object ComboBox1: TComboBox
      Left = 409
      Top = 6
      Width = 101
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 27
      Text = 'PO Date'
      Items.Strings = (
        'PO Date'
        'Return Date'
        'PurReceive Date')
    end
    object Edit12: TEdit
      Left = 648
      Top = 34
      Width = 169
      Height = 24
      TabOrder = 28
    end
    object ComboBox2: TComboBox
      Left = 1186
      Top = 20
      Width = 103
      Height = 24
      ItemHeight = 16
      TabOrder = 29
      Items.Strings = (
        ''
        'LYN'
        'YZBY'
        'LYN/YZBY'
        'YZBY/LYN')
    end
    object Chk_NoDC: TCheckBox
      Left = 1070
      Top = 53
      Width = 147
      Height = 17
      Caption = 'No DC Shipped Date'
      TabOrder = 30
    end
    object PurReDate: TCheckBox
      Left = 1070
      Top = 77
      Width = 147
      Height = 17
      Caption = 'No Pur Receive Date'
      TabOrder = 31
    end
    object Cb_DevTP: TComboBox
      Left = 51
      Top = 94
      Width = 88
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 32
      Items.Strings = (
        ''
        'Inline'
        'Incubate'
        'CTM')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 515
    Width = 1631
    Height = 168
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid4: TDBGridEh
    Left = 0
    Top = 176
    Width = 1631
    Height = 334
    Align = alTop
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
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
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 2
    OnCellClick = DBGrid4CellClick
    OnDrawColumnCell = DBGrid4DrawColumnCell
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SEASON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sea'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'ProductionLocation'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'PURPOSE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Stage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'sampleorder'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'SampleOrder'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Devtype'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'P.O.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur Order Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Mat. No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 92
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'YWPM'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 274
      end
      item
        EditButtons = <>
        FieldName = 'FlexCode'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MatRemark'
        Footers = <>
        Title.Caption = 'Mat.Remark'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Qty_not'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Qty. not yet received'
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 40
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'YQDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Request Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Order Memo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = 'Commited ETD'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CommitedETD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Actual ETD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'DelayReason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        PickList.Strings = (
          'D1  Rework internally for color mismatching '
          'D2  Rework internally for wrong dimension, size or pattern'
          'D3  Rework internally for physical property'
          'D4  Rework internally for cosmetics'
          'D5  Capacity Issues (Labor/Machine)'
          'D6  Material rejected by factory'
          'D7  Miscommunication'
          'D8  Lack of raw materials'
          'D9  Machine malfunction at vendor location'
          'D10  Late color swatch'
          'D11  Confirmed MBOM was late'
          'D12  Late changes to footwear other than color'
          'D13  Customs declarations issues'
          'D14  Unforseen Issues'
          'D15  Local Government Regulation'
          'D16  RSL issue'
          'D17  Lack of forecast information'
          'Q1  Color mismatching'
          'Q2  Wrong dimensions, size or pattern'
          'Q3  Physical property failure'
          'Q4  Cosmetics other than color'
          'Q5  Wrong label information'
          'Q6  Wrong material'
          'Q7  Material shortage'
          'Q8  SATRA Grading (leathers)')
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'New ETA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'RFCDeadlineDate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Material_ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LateETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'INV_ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Invoice ETA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'PurReceiveDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'DTMReceivedDate'
        Footers = <>
        Title.Caption = 'DTM ReceivedDate'
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Article_All'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 111
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'visually'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|Visually Approved?'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'spectro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|Spectro Approved?'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 83
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'spectro_file'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|Spectro Report#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 108
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'result_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|Final Result'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'USERDate_1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|USERDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'remark'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Color Swatch Card Tracking Report|Remark'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'A4Comfirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|A4CFM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 74
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'trackingA4Comfirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|TrackingA4CFM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DateA4Comfirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|DateA4CFM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ColorWindow'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|ColorWindow'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 99
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DateColorWindow'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|DateColorWindow'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'PC_Confirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ColorRoom|PC_Confirm'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'NG_Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Confirm Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 109
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'NG_Reason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        PickList.Strings = (
          'Dimension NG'
          'Quality NG'
          'Emboss NG'
          'Lab Test NG')
        Title.Caption = 'Confirm Quality Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 102
        OnNotInList = DBGrid4Columns11NotInList
      end
      item
        EditButtons = <>
        FieldName = 'CheckResult'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Confirm Color Status'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        ButtonStyle = cbsNone
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Lab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        PickList.Strings = (
          'Pass'
          'Fail')
        Title.Caption = 'Lab Test'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Lab_reason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 202
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'C_window'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'color window'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 163
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'QC_skin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Skin QC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 34
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Softness'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 102
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'ReturnDate'
        Footers = <>
        Title.Caption = 'NG|ReturnDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'ReturnQuantity'
        Footers = <>
        Title.Caption = 'NG|ReturnQuantity'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'SerialNumber'
        Footers = <>
        Title.Caption = 'NG|SerialNumber'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 94
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_ETD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'NG|ETD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 59
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_ETA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'NG|ETA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 62
      end
      item
        ButtonStyle = cbsNone
        Color = 11927551
        EditButtons = <>
        FieldName = 'Result'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        PickList.Strings = (
          'OK'
          'Improve more')
        Title.Caption = 'NG|Result'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 49
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'NG_Remark'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'NG|Remark'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 165
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'File_Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Guarantee|Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 46
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'File_Size'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Guarantee|Size'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 35
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Invoice_Customs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Invoice Customs'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Invoice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 124
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ZSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Supplier ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 59
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 81
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Skin_Size'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Skin Size'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 45
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Skin_Quality'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Skin Quality'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 44
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Color = cl3DLight
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Purchaser'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 66
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'USPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Price|USD|Pur.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 45
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'USPrice_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|USD|ERP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 40
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'RKUSPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|USD|Pay'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 42
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'VNPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Price|VND|Pur'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 58
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'VNPrice_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|VND|ERP'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 57
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'RKVNPrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Price|VND|Pay'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Charge_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Charge'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 38
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'FreeQty_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 36
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Q_USPrice_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|USD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 40
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Q_VNPrice_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|VND'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Visible = False
        Width = 58
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'USERID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UserID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 43
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'USERDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UserDate'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 70
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'QC_File_Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QC Inspection|File Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'QC_File_Size'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'QC Inspection|File Size'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'DCName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|DC Name'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Signer'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Who Signed?'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'shippedDate'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|When DC Shipped?'
        Title.Color = clYellow
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'signedDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Signed Date'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'PRO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PRODUCTION SOURCE|PRO'
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'Senter'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'WHO SENT CFM SWATCH TO VENDOR?'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'SharedDC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Shared DCs?'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ExpireDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC RECORD FOR CFM SWATCH|When to expire?'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'Updater'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Who Updated Excel File?'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'color2remark'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Remark'
        Width = 226
      end
      item
        EditButtons = <>
        FieldName = 'AWB'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|AWB#'
        Title.Color = clYellow
        Width = 117
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 515
    Width = 1631
    Height = 168
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 4
    object Splitter2: TSplitter
      Left = 441
      Top = 1
      Width = 5
      Height = 166
      Color = clSkyBlue
      ParentColor = False
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 440
      Height = 166
      Align = alLeft
      Caption = 'Panel5'
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 438
        Height = 23
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 4
          Top = 4
          Width = 124
          Height = 16
          Caption = 'ETD Revised history'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 24
        Width = 438
        Height = 141
        Align = alClient
        Color = cl3DLight
        DataSource = DS_ETDHistory
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
    end
    object Panel6: TPanel
      Left = 446
      Top = 1
      Width = 1184
      Height = 166
      Align = alClient
      Caption = 'Panel6'
      TabOrder = 1
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 1182
        Height = 24
        Align = alTop
        TabOrder = 0
        object Label11: TLabel
          Left = 4
          Top = 4
          Width = 116
          Height = 16
          Caption = 'NG Remark History'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 25
        Width = 1182
        Height = 140
        Align = alClient
        Color = cl3DLight
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 229
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            Title.Caption = 'UserDate'
            Width = 163
          end
          item
            EditButtons = <>
            FieldName = 'userid'
            Footers = <>
            Title.Caption = 'UserID'
            Width = 101
          end>
      end
      object Panel8: TPanel
        Left = 1064
        Top = 27
        Width = 369
        Height = 401
        Caption = 'Panel8'
        TabOrder = 2
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 367
          Height = 399
          Align = alClient
          Color = clMenuBar
          Font.Charset = ANSI_CHARSET
          Font.Color = 14822282
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Lines.Strings = (
            '----------------------------------------------'
            '-'
            #31243#24335#20027#35201#21151#33021#35498#26126
            ''
            #20027#35201#29992#26044#36861#36452#27171#26412#36914#24230#33287#29376#27841
            #20358#28304#30001'Develop N22 '#27171#21697#21934#24314#31435
            ''
            '----------------------------------------------'
            '-'
            #36039#26009#31721#36984#25805#20316#35498#26126
            ''
            'SuppID: '#20379#25033#21830#32232#34399
            'SuppName: '#20379#25033#21830#21517#31281
            'PO NO: '#25505#36092#21934#34399
            'Invoice: '#30332#31080
            'MatID:'#26448#26009#32232#34399
            'Invoice customs: '#28023#38364#24115
            'No ETD: '#27794#26377#20986#36008#26085
            'No Confirm:'#27794#26377#30906#35469
            'Hide PDT: '#38577#34255#35430#36067
            'NG Pending: NG'#30906#35469
            '----------------------------------------------'
            '-'
            #37325#40670#27396#20301#35498#26126
            ''
            'Pur No: '#25505#36092#21934#34399
            'Pur order Date: '#25505#36092#35330#36092#26085#26399
            'Material Name: '#26448#26009#21517#31281
            'ETD: '#20986#36008#26085
            'Invoice ETA: '#30332#31080#21040#36008#26085
            'Visually Approved: '#30446#35222#35377#21487
            'Spectro Approved: '#33394#24425#35377#21487
            'Spectro Report: '#33394#24425#22577#21578
            'Final Result: '#26368#24460#32080#26524
            'User Date: '#20351#29992#32773#26085#26399
            'Remark: '#20633#35387
            'Skin QC: '#34920#38754#27298#39511
            'Softness: '#26580#36575#24230
            'clbh :'#26448#26009#32232#34399
            'Ywpm :'#25551#36848
            ''
            '----------------------------------------------'
            '-')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Button4: TButton
    Left = 832
    Top = 24
    Width = 185
    Height = 25
    Caption = 'Transfer data to N762 (ReceivedDate)'
    TabOrder = 5
    OnClick = Button4Click
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
      ''
      'select CGZLS.CGNO '
      '       ,CGZLS.CLBH '
      '       ,CGZLInvoiceS_1.Invoice_Customs '
      
        '       ,CGZLS.Qty ,(cgzls.Qty - isnull(CGZLInvoiceS_1.Qty,0)) as' +
        ' Qty_not '
      '       ,CGZLS.YQDate '
      '       ,CGZLS.CFMDate '
      '       ,CGZLS.CFMDate as old_CFMDate'
      '       ,CGZLS.USERDate '
      '       ,CGZLS.USERID '
      '       ,CGZLS.Memo '
      '       ,CGZLS.USPrice '
      '       ,CGZLS.VNPrice '
      '       ,CGZLS.Article_All '
      
        '       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZ' +
        'L.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH'
      
        '       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reas' +
        'on '
      '       ,MaterialNG.NG_Reason as old_NG_Reason'
      '       ,MaterialNG.NG_ETD'
      '       ,MaterialNG.NG_ETA'
      '       ,MaterialNG.Result'
      '       ,MaterialNG.NG_Date'
      '       ,MaterialNG.NG_Date as old_NG_Date'
      '       ,CGZL_color.visually'
      '       ,CGZL_color.spectro'
      '       ,CGZL_color.spectro_file'
      '       ,CGZL_color.result'
      '       ,CGZL_color.userdate'
      '       ,CGZL_color.userid'
      #9'      ,CGZL_color.remark remark'
      
        '       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_wind' +
        'ow '
      
        '       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,Mate' +
        'rialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice' +
        '_1.invoice,'#39#39') as invoice ,RKACC.USPrice as RKUSPrice,RKACC.VNPr' +
        'ice as RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  '
      '       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  '
      
        '       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Si' +
        'ze'
      
        '       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl' +
        '_color2.DateA4Comfirm'
      
        '       ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl' +
        '_color2.PC_Confirm,cgzl_color2.shippedDate'
      
        '       ,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signe' +
        'r,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_col' +
        'or2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_col' +
        'or2.color2remark,cgzls.ETA'
      
        '       ,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber' +
        ',CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZLInvoiceS_1.CheckRe' +
        'sult,CGZLS.DelayReason,kfxxzl.Devtype'
      
        '       ,max(case when ((left(CGZLS.Article_All,1)='#39'S'#39' or left(CG' +
        'ZLS.Article_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39') then convert' +
        '(smalldatetime,R1Sample.RSD,111)-14  '
      
        #9#9'      when (left(CGZLS.Article_All,1)='#39'C'#39' and KFXXZL.Devtype =' +
        ' '#39'CTM'#39') then convert(smalldatetime,R3Sample.RSD,111)-14'
      
        #9#9'      when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype =' +
        ' '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR1'#39') then convert(smalldatetime,R' +
        '1Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39') then convert(smalldatetime' +
        ',R2Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39') then convert(smalldatetime' +
        ',R3Sample.RSD,111)-14'
      '          else GamePlan.Material_ETA end ) as Material_ETA'
      'from CGZLS  '
      'inner join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'inner join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH'
      
        'left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH=' +
        #39'CDC'#39
      'left join BUSERS on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      
        'left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO '
      
        'left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH an' +
        'd CGZLS.CGNO=SampleLeatherQC.CGNO '
      
        'left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.S' +
        'EASON=MaterialMOQ.Season   '
      'left join cgzl_color2  on CGZLS.CLBH=cgzl_color2.CLBH'
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1,Invoice_Customs, qty, CheckResult from CGZLInvoiceS GROUP B' +
        'Y CGNO,CLBH,Invoice_Customs, qty, CheckResult ) CGZLInvoiceS_1 o' +
        'n CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.C' +
        'GNO'
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      
        'left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_colo' +
        'r.clbh=cgzls.clbh'
      
        'left join KCRKS RKACC  on RKACC.DOCNO=cgzls.cgno and RKACC.clbh=' +
        'cgzls.clbh '
      
        'inner join CGZLSS on CGZL.CGNO=CGZLSs.CGNO and cgzlss.CLBH = CGZ' +
        'LS.CLBH  '
      
        'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH   Left join KFXXZL  on K' +
        'FXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing'
      
        'Left join xxzlkf  on  KFXXZL.XieXing=xxzlkf.XieXing  and KFXXZL.' +
        'SheHao=xxzlkf.SheHao'
      'left join ('
      
        '  select Season, Stage, MAX(Material_ETA) AS Material_ETA from G' +
        'amePlan'
      '  GROUP BY Season,Stage'
      
        ') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=Ga' +
        'mePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao '
      'where 1=2'
      
        'group by CGZLS.CGNO,CGZLS.CLBH,CGZLInvoiceS_1.Invoice_Customs,CL' +
        'ZL_FLEX.CLDHFLEX'
      ',CGZLS.Qty,CGZLS.YQDate,CGZLS.CFMDate'
      ',CGZLS.CFMDate,CGZLS.USERDate,CGZLS.USERID'
      ',CGZLS.Memo,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Article_All'
      
        ',ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.C' +
        'GDate,CGZL.ZSBH'
      ',MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason'
      ',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA'
      
        ',MaterialNG.Result,MaterialNG.NG_Date,MaterialNG.NG_Date,CGZL_co' +
        'lor.visually'
      ',CGZL_color.spectro,CGZL_color.spectro_file'
      ',CGZL_color.result,CGZL_color.userdate'
      ',CGZL_color.userid,CGZL_color.remark'
      ',MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window'
      
        ',MaterialNG.Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZ' +
        'LInvoice_1.ETA'
      
        ',isnull(CGZLInvoice_1.invoice,'#39#39') ,RKACC.USPrice,RKACC.VNPrice,B' +
        'USERS.USERNAME'
      ',MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality'
      ',SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size'
      
        ',cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2' +
        '.DateA4Comfirm'
      
        ',cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2' +
        '.PC_Confirm'
      
        ',cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,' +
        'cgzl_color2.Signer,cgzl_color2.DCName'
      
        ',cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_' +
        'color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgz' +
        'ls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber,' +
        ' CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate,CGZ' +
        'LInvoiceS_1.CheckResult,CGZLS.DelayReason,kfxxzl.Devtype'
      'order by CGZLS.CGNO DESC'
      '')
    UpdateObject = UPDet
    Left = 516
    Top = 372
    object CGDetSEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object CGDetPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object CGDetCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCGDate: TDateTimeField
      FieldName = 'CGDate'
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
    object CGDetMatRemark: TStringField
      FieldName = 'MatRemark'
      Size = 80
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
      currency = False
    end
    object CGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/mm/dd'
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object CGDetArticle_All: TStringField
      FieldName = 'Article_All'
      FixedChar = True
      Size = 255
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
    object CGDetvisually: TStringField
      FieldName = 'visually'
      FixedChar = True
      Size = 10
    end
    object CGDetspectro: TStringField
      FieldName = 'spectro'
      FixedChar = True
      Size = 10
    end
    object CGDetspectro_file: TStringField
      FieldName = 'spectro_file'
      FixedChar = True
      Size = 30
    end
    object CGDetresult_1: TStringField
      FieldName = 'result_1'
      FixedChar = True
      Size = 10
    end
    object CGDetSamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object CGDetUSERDate_1: TDateTimeField
      FieldName = 'USERDate_1'
    end
    object CGDetremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object CGDetA4Comfirm: TStringField
      FieldName = 'A4Comfirm'
      FixedChar = True
      Size = 50
    end
    object CGDettrackingA4Comfirm: TStringField
      FieldName = 'trackingA4Comfirm'
      FixedChar = True
      Size = 50
    end
    object CGDetDateA4Comfirm: TDateTimeField
      FieldName = 'DateA4Comfirm'
    end
    object CGDetColorWindow: TStringField
      FieldName = 'ColorWindow'
      FixedChar = True
      Size = 50
    end
    object CGDetDateColorWindow: TDateTimeField
      FieldName = 'DateColorWindow'
    end
    object CGDetPC_Confirm: TStringField
      FieldName = 'PC_Confirm'
      FixedChar = True
    end
    object CGDetshippedDate: TDateTimeField
      FieldName = 'shippedDate'
    end
    object CGDetsignedDate: TDateTimeField
      FieldName = 'signedDate'
    end
    object CGDetSigner: TStringField
      FieldName = 'Signer'
      FixedChar = True
      Size = 10
    end
    object CGDetDCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 10
    end
    object CGDetPRO: TStringField
      FieldName = 'PRO'
      FixedChar = True
      Size = 10
    end
    object CGDetSenter: TStringField
      FieldName = 'Senter'
      FixedChar = True
      Size = 10
    end
    object CGDetExpireDate: TDateTimeField
      FieldName = 'ExpireDate'
    end
    object CGDetSharedDC: TStringField
      FieldName = 'SharedDC'
      FixedChar = True
      Size = 10
    end
    object CGDetUpdater: TStringField
      FieldName = 'Updater'
      FixedChar = True
      Size = 10
    end
    object CGDetcolor2remark: TStringField
      FieldName = 'color2remark'
      FixedChar = True
      Size = 60
    end
    object CGDetAWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
      Size = 60
    end
    object CGDetETA: TDateTimeField
      FieldName = 'ETA'
    end
    object CGDetReturnDate: TDateTimeField
      FieldName = 'ReturnDate'
    end
    object CGDetReturnQuantity: TCurrencyField
      FieldName = 'ReturnQuantity'
      DisplayFormat = '#,##0.0'
    end
    object CGDetSerialNumber: TStringField
      FieldName = 'SerialNumber'
      FixedChar = True
      Size = 40
    end
    object CGDetQty_not: TFloatField
      FieldName = 'Qty_not'
      DisplayFormat = '#,##0.0'
    end
    object CGDetCommitedETD: TDateTimeField
      FieldName = 'CommitedETD'
    end
    object CGDetMaterial_ETA: TDateTimeField
      FieldName = 'Material_ETA'
      ReadOnly = True
    end
    object CGDetLateETA: TStringField
      FieldKind = fkCalculated
      FieldName = 'LateETA'
      ReadOnly = True
      Calculated = True
    end
    object CGDetProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      ReadOnly = True
    end
    object CGDetsampleorder: TStringField
      FieldName = 'sampleorder'
      ReadOnly = True
    end
    object CGDetFlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object CGDetPurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
    end
    object CGDetRFCDeadlineDate: TDateTimeField
      FieldName = 'RFCDeadlineDate'
    end
    object CGDetCheckResult: TStringField
      FieldName = 'CheckResult'
      FixedChar = True
      Size = 15
    end
    object CGDetDelayReason: TStringField
      FieldName = 'DelayReason'
      FixedChar = True
      Size = 150
    end
    object CGDetDevtype: TStringField
      FieldName = 'Devtype'
      FixedChar = True
      Size = 15
    end
    object DTMReceivedDate: TDateTimeField
      FieldName = 'DTMReceivedDate'
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
      '  ETA=:ETA,'
      '  ReturnDate=:ReturnDate,'
      '  ReturnQuantity=:ReturnQuantity,'
      '  SerialNumber=:SerialNumber,'
      '  CommitedETD=:CommitedETD'
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
    Left = 472
    Top = 336
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
  object NGremark: TQuery
    DatabaseName = 'dB'
    DataSource = DS4
    SQL.Strings = (
      'select remark,userid,userdate from cgzl_colors'
      'where CGNO=:CGNO'
      '      AND CLBH =:CLBH')
    Left = 889
    Top = 610
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
    object NGremarkremark: TStringField
      FieldName = 'remark'
      FixedChar = True
      Size = 255
    end
    object NGremarkuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 15
    end
    object NGremarkuserdate: TStringField
      FieldName = 'userdate'
      FixedChar = True
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = NGremark
    Left = 825
    Top = 610
  end
  object UpdateSQL1: TUpdateSQL
    Left = 448
    Top = 408
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 352
    Top = 336
  end
  object Timer1: TTimer
    Left = 1032
    Top = 8
  end
end
