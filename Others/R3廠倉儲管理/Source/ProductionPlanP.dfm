object ProductionPlan: TProductionPlan
  Left = 307
  Top = 121
  Width = 915
  Height = 480
  Caption = 'Production Plan'
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 899
    Height = 65
    Align = alTop
    TabOrder = 0
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
      OnClick = BBT1Click
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
      OnClick = BBT2Click
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
      OnClick = BBT3Click
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
      OnClick = BBT4Click
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
    object bbt5: TBitBtn
      Left = 584
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = bbt5Click
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
    end
    object bbt6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
  object pc1: TPageControl
    Left = 0
    Top = 145
    Width = 899
    Height = 297
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    OnChange = pc1Change
    object TabSheet1: TTabSheet
      Caption = 'WorkPlan'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 891
        Height = 269
        Align = alClient
        DataSource = WP
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'WorkID'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            ReadOnly = True
            Width = 39
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'mjname'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'colorname'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'WorkQty'
            Footers = <>
            ReadOnly = True
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'WorkStartDate'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'WorkEndDate'
            Footers = <>
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SizeList'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 891
        Height = 269
        Align = alClient
        DataSource = WPS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sno'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Size'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OKQTY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NBarCode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pbarcode'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'DDBHList'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 41
        Width = 891
        Height = 228
        Align = alClient
        DataSource = WPSS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'WorkID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DDBh'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 891
        Height = 41
        Align = alTop
        TabOrder = 1
        object Button2: TButton
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Comput'
          TabOrder = 0
          OnClick = Button2Click
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 899
    Height = 80
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 107
      Height = 20
      Caption = 'WorkStartDate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 16
      Width = 21
      Height = 20
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 67
      Height = 20
      Caption = 'Mode NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 224
      Top = 48
      Width = 37
      Height = 20
      Caption = 'Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 144
      Top = 16
      Width = 89
      Height = 21
      Date = 40904.646302638890000000
      Time = 40904.646302638890000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 280
      Top = 16
      Width = 89
      Height = 21
      Date = 40904.646444421300000000
      Time = 40904.646444421300000000
      TabOrder = 1
    end
    object MJCB: TComboBox
      Left = 96
      Top = 48
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object CLCB: TComboBox
      Left = 272
      Top = 48
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'ALL'
      OnChange = CLCBChange
      Items.Strings = (
        'ALL')
    end
    object Edit1: TEdit
      Left = 880
      Top = 8
      Width = 57
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object Button1: TButton
      Left = 477
      Top = 46
      Width = 75
      Height = 25
      Caption = 'QUERY'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object workplan: TQuery
    CachedUpdates = True
    DatabaseName = 'db'
    Constrained = True
    SQL.Strings = (
      'select * from workplan')
    UpdateObject = upwp
    Left = 32
    Top = 240
    object workplanWorkID: TStringField
      FieldName = 'WorkID'
      Origin = 'DB.workplan.WorkID'
      FixedChar = True
      Size = 12
    end
    object workplanCQDH: TStringField
      FieldName = 'CQDH'
      Origin = 'DB.workplan.CQDH'
      FixedChar = True
      Size = 3
    end
    object workplanMjbh: TStringField
      FieldName = 'Mjbh'
      Origin = 'DB.workplan.Mjbh'
      FixedChar = True
      Size = 50
    end
    object workplanmjname: TStringField
      FieldKind = fkLookup
      FieldName = 'mjname'
      LookupDataSet = Query1
      LookupKeyFields = 'mjdh'
      LookupResultField = 'mjdh'
      KeyFields = 'Mjbh'
      Size = 30
      Lookup = True
    end
    object workplanColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.workplan.ColorNo'
      FixedChar = True
      Size = 4
    end
    object workplancolorname: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'colorname'
      LookupDataSet = Query2
      LookupKeyFields = 'ColorNo'
      LookupResultField = 'EnglishName'
      KeyFields = 'ColorNo'
      Size = 100
      Lookup = True
    end
    object workplanWorkQty: TIntegerField
      FieldName = 'WorkQty'
      Origin = 'DB.workplan.WorkQty'
    end
    object workplanWorkStartDate: TDateTimeField
      FieldName = 'WorkStartDate'
      Origin = 'DB.workplan.WorkStartDate'
    end
    object workplanWorkEndDate: TDateTimeField
      FieldName = 'WorkEndDate'
      Origin = 'DB.workplan.WorkEndDate'
    end
    object workplanUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.workplan.UserID'
      FixedChar = True
    end
    object workplanCreatDate: TDateTimeField
      FieldName = 'CreatDate'
      Origin = 'DB.workplan.CreatDate'
    end
    object workplanUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
      Origin = 'DB.workplan.UpdateDate'
    end
    object workplanLastUser: TStringField
      FieldName = 'LastUser'
      Origin = 'DB.workplan.LastUser'
      FixedChar = True
    end
    object workplanyn: TStringField
      FieldKind = fkCalculated
      FieldName = 'yn'
      FixedChar = True
      Size = 1
      Calculated = True
    end
  end
  object WP: TDataSource
    DataSet = workplan
    Left = 88
    Top = 240
  end
  object upwp: TUpdateSQL
    ModifySQL.Strings = (
      'update workplan'
      'set'
      '  WorkID = :WorkID,'
      '  CQDH = :CQDH,'
      '  Mjbh = :Mjbh,'
      '  ColorNo = :ColorNo,'
      '  WorkQty = :WorkQty,'
      '  WorkStartDate = :WorkStartDate,'
      '  WorkEndDate = :WorkEndDate,'
      '  UpdateDate = :UpdateDate,'
      '  LastUser = :LastUser'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  CQDH = :OLD_CQDH')
    InsertSQL.Strings = (
      'insert into workplan'
      
        '  (WorkID, CQDH, Mjbh, ColorNo, WorkQty, WorkStartDate, WorkEndD' +
        'ate, UserID, '
      '   CreatDate, UpdateDate, LastUser)'
      'values'
      
        '  (:WorkID, :CQDH, :Mjbh, :ColorNo, :WorkQty, :WorkStartDate, :W' +
        'orkEndDate, '
      '   :UserID, :CreatDate, :UpdateDate, :LastUser)')
    DeleteSQL.Strings = (
      'delete from workplan'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  CQDH = :OLD_CQDH')
    Left = 32
    Top = 280
  end
  object WorkPlanS: TQuery
    DatabaseName = 'db'
    DataSource = WP
    SQL.Strings = (
      'select * from workplans'
      'where workID=:workid'
      'order by size,sno')
    UpdateObject = upwps
    Left = 192
    Top = 241
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'WorkID'
        ParamType = ptUnknown
        Size = 13
      end>
    object WorkPlanSWorkID: TStringField
      FieldName = 'WorkID'
      Origin = 'DB.workplans.WorkID'
      FixedChar = True
      Size = 12
    end
    object WorkPlanSSno: TIntegerField
      FieldName = 'Sno'
      Origin = 'DB.workplans.Sno'
    end
    object WorkPlanSMjbh: TStringField
      FieldName = 'Mjbh'
      Origin = 'DB.workplans.Mjbh'
      FixedChar = True
    end
    object WorkPlanSColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.workplans.ColorNo'
      FixedChar = True
      Size = 4
    end
    object WorkPlanSSize: TStringField
      FieldName = 'Size'
      Origin = 'DB.workplans.Size'
      FixedChar = True
      Size = 6
    end
    object WorkPlanSQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.workplans.Qty'
    end
    object WorkPlanSOKQTY: TIntegerField
      FieldName = 'OKQTY'
      Origin = 'DB.workplans.OKQTY'
    end
    object WorkPlanSNBarCode: TIntegerField
      FieldName = 'NBarCode'
      Origin = 'DB.workplans.NBarCode'
    end
    object WorkPlanSPbarcode: TIntegerField
      FieldName = 'Pbarcode'
      Origin = 'DB.workplans.Pbarcode'
    end
    object WorkPlanSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.workplans.UserID'
      FixedChar = True
    end
    object WorkPlanSCreatDate: TDateTimeField
      FieldName = 'CreatDate'
      Origin = 'DB.workplans.CreatDate'
    end
    object WorkPlanSUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
      Origin = 'DB.workplans.UpdateDate'
    end
    object WorkPlanSLastUser: TStringField
      FieldName = 'LastUser'
      Origin = 'DB.workplans.LastUser'
      FixedChar = True
    end
    object WorkPlanScodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
  end
  object upwps: TUpdateSQL
    ModifySQL.Strings = (
      'update workplans'
      'set'
      '  WorkID = :WorkID,'
      '  Sno = :Sno,'
      '  Mjbh = :Mjbh,'
      '  ColorNo = :ColorNo,'
      '  Size = :Size,'
      '  Qty = :Qty,'
      '  OKQTY = :OKQTY,'
      '  NBarCode = :NBarCode,'
      '  Pbarcode = :Pbarcode,'
      '  UserID = :UserID,'
      '  CreatDate = :CreatDate,'
      '  UpdateDate = :UpdateDate,'
      '  LastUser = :LastUser,'
      '  codebar = :codebar'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Sno = :OLD_Sno and'
      '  Mjbh = :OLD_Mjbh and'
      '  ColorNo = :OLD_ColorNo and'
      '  Size = :OLD_Size')
    InsertSQL.Strings = (
      'insert into workplans'
      
        '  (WorkID, Sno, Mjbh, ColorNo, Size, Qty, OKQTY, NBarCode, Pbarc' +
        'ode, UserID, '
      '   CreatDate, UpdateDate, LastUser, codebar)'
      'values'
      
        '  (:WorkID, :Sno, :Mjbh, :ColorNo, :Size, :Qty, :OKQTY, :NBarCod' +
        'e, :Pbarcode, '
      '   :UserID, :CreatDate, :UpdateDate, :LastUser, :codebar)')
    DeleteSQL.Strings = (
      'delete from workplans'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Sno = :OLD_Sno and'
      '  Mjbh = :OLD_Mjbh and'
      '  ColorNo = :OLD_ColorNo and'
      '  Size = :OLD_Size')
    Left = 192
    Top = 280
  end
  object WorkPlanSS: TQuery
    DatabaseName = 'db'
    DataSource = WP
    SQL.Strings = (
      'select *'
      'from workplanss as wpss'
      'where workid=:workid ')
    UpdateObject = upwpss
    Left = 338
    Top = 241
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'WorkID'
        ParamType = ptUnknown
        Size = 13
      end>
    object WorkPlanSSWorkID: TStringField
      FieldName = 'WorkID'
      Origin = 'DB.workplanss.WorkID'
      FixedChar = True
      Size = 12
    end
    object WorkPlanSSSno: TIntegerField
      FieldName = 'Sno'
      Origin = 'DB.workplanss.Sno'
    end
    object WorkPlanSSMjbh: TStringField
      FieldName = 'Mjbh'
      Origin = 'DB.workplanss.Mjbh'
      FixedChar = True
    end
    object WorkPlanSSColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.workplanss.ColorNo'
      FixedChar = True
      Size = 4
    end
    object WorkPlanSSDDBh: TStringField
      FieldName = 'DDBh'
      Origin = 'DB.workplanss.DDBh'
      FixedChar = True
      Size = 18
    end
    object WorkPlanSSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.workplanss.UserID'
      FixedChar = True
    end
    object WorkPlanSSCreatDate: TDateTimeField
      FieldName = 'CreatDate'
      Origin = 'DB.workplanss.CreatDate'
    end
    object WorkPlanSSUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
      Origin = 'DB.workplanss.UpdateDate'
    end
    object WorkPlanSSLastUser: TStringField
      FieldName = 'LastUser'
      Origin = 'DB.workplanss.LastUser'
      FixedChar = True
    end
  end
  object upwpss: TUpdateSQL
    ModifySQL.Strings = (
      'update workplanss'
      'set'
      '  WorkID = :WorkID,'
      '  Sno = :Sno,'
      '  Mjbh = :Mjbh,'
      '  ColorNo = :ColorNo,'
      '  DDBh = :DDBh,'
      '  UserID = :UserID,'
      '  CreatDate = :CreatDate,'
      '  UpdateDate = :UpdateDate,'
      '  LastUser = :LastUser'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Sno = :OLD_Sno and'
      '  DDBh = :OLD_DDBh')
    InsertSQL.Strings = (
      'insert into workplanss'
      
        '  (WorkID, Sno, Mjbh, ColorNo, DDBh, UserID, CreatDate, UpdateDa' +
        'te, LastUser)'
      'values'
      
        '  (:WorkID, :Sno, :Mjbh, :ColorNo, :DDBh, :UserID, :CreatDate, :' +
        'UpdateDate, '
      '   :LastUser)')
    DeleteSQL.Strings = (
      'delete from workplanss'
      'where'
      '  WorkID = :OLD_WorkID and'
      '  Sno = :OLD_Sno and'
      '  DDBh = :OLD_DDBh')
    Left = 340
    Top = 281
  end
  object WPS: TDataSource
    DataSet = WorkPlanS
    Left = 236
    Top = 241
  end
  object WPSS: TDataSource
    DataSet = WorkPlanSS
    Left = 388
    Top = 241
  end
  object Query1: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select bz2 as mjdh from mjzl group by bz2')
    Left = 492
    Top = 241
    object Query1mjdh: TStringField
      FieldName = 'mjdh'
      Origin = 'DB.mjzl.bz2'
      FixedChar = True
      Size = 50
    end
  end
  object Query2: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select * from colorclass')
    Left = 492
    Top = 273
    object Query2ColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.colorclass.ColorNo'
      FixedChar = True
      Size = 4
    end
    object Query2EnglishName: TStringField
      FieldName = 'EnglishName'
      Origin = 'DB.colorclass.EnglishName'
      FixedChar = True
      Size = 50
    end
  end
  object tq: TQuery
    DatabaseName = 'db'
    Left = 492
    Top = 313
  end
end
