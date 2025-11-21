object RepairDevice: TRepairDevice
  Left = 0
  Top = 0
  Caption = 'Repair Device'
  ClientHeight = 635
  ClientWidth = 1444
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
  object Splitter1: TSplitter
    Left = 457
    Top = 48
    Width = 13
    Height = 587
    ExplicitLeft = 426
  end
  object Splitter2: TSplitter
    Left = 921
    Top = 48
    Width = 9
    Height = 587
    ExplicitLeft = 856
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1444
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 14
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VN_Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 411
      Top = 9
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CH_Name:'
    end
    object Button1: TButton
      Left = 766
      Top = 4
      Width = 81
      Height = 27
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBLSBH: TComboBox
      Left = 96
      Top = 6
      Width = 257
      Height = 24
      TabOrder = 1
    end
    object CBLSBH1: TComboBox
      Left = 487
      Top = 6
      Width = 273
      Height = 24
      TabOrder = 2
    end
    object BB7: TBitBtn
      Left = 1394
      Top = 1
      Width = 49
      Height = 46
      Hint = 'Exit Current Form'
      Align = alRight
      Caption = 'Exit'
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
      TabOrder = 3
      OnClick = BB7Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 48
    Width = 457
    Height = 587
    Align = alLeft
    Caption = 'Panel3'
    TabOrder = 1
    object Label3: TLabel
      Left = 1
      Top = 68
      Width = 455
      Height = 23
      Align = alTop
      Caption = '    Title Name'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 114
    end
    object DBG1: TDBGrid
      Left = 1
      Top = 91
      Width = 455
      Height = 495
      Align = alClient
      DataSource = DS1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VN_Fault'
          Title.Caption = 'Title|VN_Fault'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Chinese_Fault'
          Width = 200
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 67
      Align = alTop
      TabOrder = 1
      object BB2: TBitBtn
        Left = 19
        Top = 8
        Width = 49
        Height = 49
        Hint = 'Insert one New Record'
        Caption = 'Insert'
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
        TabOrder = 0
        OnClick = BB2Click
      end
      object BB4: TBitBtn
        Left = 64
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
        TabOrder = 1
        OnClick = BB4Click
      end
      object BB5: TBitBtn
        Left = 159
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
        TabOrder = 2
        OnClick = BB5Click
      end
      object BB6: TBitBtn
        Left = 207
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
        TabOrder = 3
        OnClick = BB6Click
      end
      object BB3: TBitBtn
        Left = 111
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
        TabOrder = 4
        OnClick = BB3Click
      end
    end
  end
  object Panel4: TPanel
    Left = 470
    Top = 48
    Width = 451
    Height = 587
    Align = alLeft
    Caption = 'Panel3'
    TabOrder = 2
    object Label4: TLabel
      Left = 1
      Top = 68
      Width = 449
      Height = 23
      Align = alTop
      Caption = '    Items Name'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 126
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 91
      Width = 449
      Height = 495
      Align = alClient
      DataSource = DS2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VN_Fault'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Chinese_Fault'
          Width = 200
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 449
      Height = 67
      Align = alTop
      TabOrder = 1
      object TIB1: TBitBtn
        Left = 19
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
        TabOrder = 0
        OnClick = TIB1Click
      end
      object TMB1: TBitBtn
        Left = 64
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
        TabOrder = 1
        OnClick = TMB1Click
      end
      object TSB1: TBitBtn
        Left = 159
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
        TabOrder = 2
        OnClick = TSB1Click
      end
      object TCB1: TBitBtn
        Left = 207
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
        TabOrder = 3
        OnClick = TCB1Click
      end
      object TDB1: TBitBtn
        Left = 111
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
        TabOrder = 4
        OnClick = TDB1Click
      end
    end
  end
  object Panel6: TPanel
    Left = 930
    Top = 48
    Width = 514
    Height = 587
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 3
    object Label5: TLabel
      Left = 1
      Top = 68
      Width = 512
      Height = 23
      Align = alTop
      Caption = '    Method Content'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 158
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 512
      Height = 67
      Align = alTop
      TabOrder = 0
      object TIB2: TBitBtn
        Left = 19
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
        TabOrder = 0
        OnClick = TIB2Click
      end
      object TMB2: TBitBtn
        Left = 64
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
        TabOrder = 1
        OnClick = TMB2Click
      end
      object TSB2: TBitBtn
        Left = 160
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
        TabOrder = 2
        OnClick = TSB2Click
      end
      object TCB2: TBitBtn
        Left = 208
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
        TabOrder = 3
        OnClick = TCB2Click
      end
      object BitBtn13: TBitBtn
        Left = 342
        Top = 12
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
        TabOrder = 4
        Visible = False
      end
      object TDB2: TBitBtn
        Left = 112
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
        TabOrder = 5
        OnClick = TDB2Click
      end
    end
    object DBG2: TDBGrid
      Left = 1
      Top = 91
      Width = 512
      Height = 495
      Align = alClient
      DataSource = DS3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VN_Repair'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Chinese_Repair'
          Width = 200
          Visible = True
        end>
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE [TSCD_Fault]'
      '   SET [Chinese_Fault] = :Chinese_Fault'
      '      ,[VN_Fault] = :VN_Fault'
      '      ,[USERID] = :USERID'
      '      ,[USERDATE] = getdate()'
      ',[YN]=:YN'
      ' WHERE [Fault_NO] =:Fault_NO')
    InsertSQL.Strings = (
      'insert into TSCD_Fault'
      '  ( Chinese_Fault, VN_Fault, USERID, USERDATE, YN,UPID)'
      'values'
      '  (:Chinese_Fault,:VN_Fault, :USERID, getdate(), '#39'Y'#39',0 )')
    DeleteSQL.Strings = (
      'UPDATE TSCD_Fault SET YN='#39'N'#39
      'where'
      '  Fault_NO= :OLD_Fault_NO')
    Left = 244
    Top = 380
  end
  object TSCD_Fault: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    SQL.Strings = (
      'SELECT * FROM [TSCD_Fault] where 1<>1')
    UpdateObject = UpMas
    Left = 244
    Top = 236
    object TSCD_FaultChinese_Fault: TStringField
      FieldName = 'Chinese_Fault'
      Origin = 'DB.TSCD_Fault.Chinese_Fault'
      FixedChar = True
      Size = 200
    end
    object TSCD_FaultUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_Fault.USERID'
      FixedChar = True
      Size = 10
    end
    object TSCD_FaultUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_Fault.USERDATE'
    end
    object TSCD_FaultYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_Fault.YN'
      FixedChar = True
      Size = 1
    end
    object TSCD_FaultFault_NO: TAutoIncField
      FieldName = 'Fault_NO'
      Origin = 'DB.TSCD_Fault.Fault_NO'
    end
    object TSCD_FaultVN_Fault: TStringField
      FieldName = 'VN_Fault'
    end
    object TSCD_FaultUPID: TIntegerField
      FieldName = 'UPID'
    end
  end
  object DS1: TDataSource
    DataSet = TSCD_Fault
    Left = 244
    Top = 308
  end
  object DS2: TDataSource
    DataSet = TSCD_Fault1
    Left = 628
    Top = 292
  end
  object LSBHQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT [Chinese_Fault],[VN_Fault] FROM [TSCD_Fault] where [YN]='#39 +
        'Y'#39' and [UPID]=0')
    Left = 76
    Top = 252
  end
  object UpFaults: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE [TSCD_Fault]'
      '   SET [Chinese_Fault] = :Chinese_Fault'
      '      ,[VN_Fault] = :VN_Fault'
      '      ,[USERID] = :USERID'
      '      ,[USERDATE] = getdate()'
      ',[YN]=:YN'
      ' WHERE [Fault_NO] =:Fault_NO')
    InsertSQL.Strings = (
      'insert into TSCD_Fault'
      '  (  Chinese_Fault, VN_Fault, USERID, USERDATE, YN,UPID)'
      'values'
      '  ( :Chinese_Fault,:VN_Fault, :USERID, getdate(), '#39'Y'#39' ,:UPID)')
    DeleteSQL.Strings = (
      'UPDATE TSCD_Fault SET YN='#39'N'#39
      'where'
      '  Fault_NO= :OLD_Fault_NO')
    Left = 628
    Top = 372
  end
  object TSCDFaultss: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select [Fault_NO]'
      '      ,[Repair_NO]'
      '      ,[Repair_Item]'
      '      ,[Chinese_Repair]'
      '      ,[VN_Repair]'
      '      ,[USERID]'
      '      ,[USERDATE]'
      '      ,[YN] from TSCD_Faults'
      'where [Fault_NO]=:Fault_NO and [YN]='#39'Y'#39)
    UpdateObject = UpFaultss
    Left = 996
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fault_NO'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_Fault.USERID'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_Fault.YN'
      FixedChar = True
      Size = 1
    end
    object AutoIncField2: TAutoIncField
      FieldName = 'Fault_NO'
      Origin = 'DB.TSCD_Fault.Fault_NO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Repair_NO'
    end
    object StringField3: TStringField
      FieldName = 'Repair_Item'
    end
    object StringField7: TStringField
      FieldName = 'Chinese_Repair'
    end
    object StringField8: TStringField
      FieldName = 'VN_Repair'
    end
    object TSCDFaultssUSERDATE: TStringField
      FieldName = 'USERDATE'
    end
  end
  object DS3: TDataSource
    DataSet = TSCDFaultss
    Left = 996
    Top = 292
  end
  object UpFaultss: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE [TSCD_Faults]'
      '   SET [Chinese_Repair] = :Chinese_Repair'
      '      ,[VN_Repair] = :VN_Repair'
      '      ,[USERID] = :USERID'
      '      ,[USERDATE] = getdate()'
      ',[YN]=:YN'
      ' WHERE [Repair_NO]= :Repair_NO')
    InsertSQL.Strings = (
      'insert into TSCD_Faults  ([Fault_NO],[Chinese_Repair]'
      ',[VN_Repair],[USERID],[USERDATE],[YN])'
      'values'
      
        '  (:Fault_NO, :Chinese_Repair,:VN_Repair, :USERID, getdate(), '#39'Y' +
        #39' )')
    DeleteSQL.Strings = (
      'UPDATE TSCD_Faults SET YN='#39'N'#39
      'where'
      '  Fault_NO= :OLD_Fault_NO')
    Left = 996
    Top = 372
  end
  object TSCD_Fault1: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT * FROM [TSCD_Fault] where [YN]='#39'Y'#39' and [UPID]=:Fault_NO')
    UpdateObject = UpFaults
    Left = 604
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fault_NO'
        ParamType = ptUnknown
      end>
    object StringField4: TStringField
      FieldName = 'Chinese_Fault'
      Origin = 'DB.TSCD_Fault.Chinese_Fault'
      FixedChar = True
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_Fault.USERID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_Fault.USERDATE'
    end
    object StringField6: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_Fault.YN'
      FixedChar = True
      Size = 1
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'Fault_NO'
      Origin = 'DB.TSCD_Fault.Fault_NO'
    end
    object StringField9: TStringField
      FieldName = 'VN_Fault'
    end
    object IntegerField2: TIntegerField
      FieldName = 'UPID'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 84
    Top = 348
  end
end
