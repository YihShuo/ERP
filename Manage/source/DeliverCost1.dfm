object DeliverCost: TDeliverCost
  Left = 265
  Top = 186
  Width = 870
  Height = 500
  Caption = 'DeliverCost'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 704
      Top = 32
      Width = 74
      Height = 24
      Caption = 'Master'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
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
      Left = 608
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
      TabOrder = 11
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
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    ActivePage = TS2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'OrdList'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 105
        Width = 854
        Height = 265
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
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
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Alignment = taCenter
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'ArtNO'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Color'
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Alignment = taCenter
            Width = 138
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Article Name'
            Width = 203
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
          end
          item
            EditButtons = <>
            FieldName = 'CCGB'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Size'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            Title.Alignment = taCenter
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 27
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 105
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 336
          Top = 32
          Width = 53
          Height = 16
          Caption = 'SpecNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 496
          Top = 32
          Width = 55
          Height = 16
          Caption = 'ArtName:'
        end
        object Label3: TLabel
          Left = 664
          Top = 32
          Width = 60
          Height = 16
          Caption = 'Customer:'
        end
        object Label12: TLabel
          Left = 136
          Top = 80
          Width = 41
          Height = 16
          Caption = 'GSBH:'
        end
        object Label13: TLabel
          Left = 24
          Top = 80
          Width = 27
          Height = 16
          Caption = 'Dep:'
        end
        object Panel7: TPanel
          Left = 8
          Top = 0
          Width = 313
          Height = 49
          PopupMenu = PopupMenu2
          TabOrder = 6
          Visible = False
          OnDblClick = Panel7DblClick
          object Label14: TLabel
            Left = 16
            Top = 24
            Width = 31
            Height = 16
            Caption = 'CSD:'
          end
          object Label15: TLabel
            Left = 168
            Top = 24
            Width = 14
            Height = 16
            Caption = 'To'
          end
          object DTP1: TDateTimePicker
            Left = 56
            Top = 16
            Width = 105
            Height = 24
            Date = 39783.568310717590000000
            Format = 'yyyy/MM/dd'
            Time = 39783.568310717590000000
            TabOrder = 0
          end
          object DTP2: TDateTimePicker
            Left = 200
            Top = 16
            Width = 106
            Height = 24
            Date = 39783.569282222220000000
            Format = 'yyyy/MM/dd'
            Time = 39783.569282222220000000
            TabOrder = 1
          end
        end
        object Panel6: TPanel
          Left = 8
          Top = 0
          Width = 313
          Height = 49
          PopupMenu = PopupMenu2
          TabOrder = 5
          OnDblClick = Panel6DblClick
          object Label4: TLabel
            Left = 168
            Top = 16
            Width = 49
            Height = 20
            Caption = 'Month:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 24
            Top = 16
            Width = 38
            Height = 20
            Caption = 'Year:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object CBX3: TComboBox
            Left = 240
            Top = 8
            Width = 57
            Height = 28
            Style = csDropDownList
            DropDownCount = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
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
          object CBX2: TComboBox
            Left = 80
            Top = 8
            Width = 73
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 0
            ParentFont = False
            TabOrder = 1
            Text = '2006'
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
              '2020')
          end
        end
        object Edit1: TEdit
          Left = 392
          Top = 24
          Width = 97
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
        object Edit2: TEdit
          Left = 552
          Top = 24
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button1: TButton
          Left = 720
          Top = 64
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 728
          Top = 24
          Width = 73
          Height = 24
          TabOrder = 3
        end
        object RadG1: TRadioGroup
          Left = 280
          Top = 52
          Width = 401
          Height = 49
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Shipping order('#26989#21209#35330#21934')'
            'Produce order('#29983#29986#35330#21934')')
          TabOrder = 4
        end
        object CBX4: TComboBox
          Left = 192
          Top = 72
          Width = 65
          Height = 24
          ItemHeight = 16
          TabOrder = 7
        end
        object Edit8: TEdit
          Left = 64
          Top = 72
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 8
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'SpecDet'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 49
        Width = 854
        Height = 321
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 277
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Width = 31
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label5: TLabel
          Left = 344
          Top = 24
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 528
          Top = 24
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 392
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 576
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBNavigator2: TDBNavigator
          Left = 8
          Top = 16
          Width = 320
          Height = 25
          DataSource = DS2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
        object Button2: TButton
          Left = 728
          Top = 8
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
    end
    object Matset: TTabSheet
      Caption = 'Matset'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 344
          Top = 24
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 528
          Top = 24
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit3: TDBEdit
          Left = 392
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 576
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBNavigator3: TDBNavigator
          Left = 8
          Top = 16
          Width = 320
          Height = 25
          DataSource = DS3
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
        object Button3: TButton
          Left = 728
          Top = 8
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 3
          OnClick = Button3Click
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 49
        Width = 854
        Height = 321
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ZCLBH'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <
              item
                FieldName = 'USPrice'
                ValueType = fvtAvg
              end>
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <
              item
                FieldName = 'USACC'
                ValueType = fvtSum
              end>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Width = 95
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'AccCost'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 344
          Top = 24
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 528
          Top = 24
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit5: TDBEdit
          Left = 392
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 576
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBNavigator4: TDBNavigator
          Left = 8
          Top = 16
          Width = 320
          Height = 25
          DataSource = DS3
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
        object Button4: TButton
          Left = 728
          Top = 8
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 3
          OnClick = Button4Click
        end
      end
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 49
        Width = 854
        Height = 321
        Align = alClient
        DataSource = DS4
        Flat = False
        FooterColor = 16755370
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 363
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Width = 100
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 168
    Top = 344
  end
  object SpecMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DD' +
        'ZL.DDZT,'
      
        'SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMin' +
        'g,DDZL.YN'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'order by SCZL.SCBH')
    Left = 208
    Top = 344
    object SpecMasSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasQty: TFloatField
      FieldName = 'Qty'
    end
    object SpecMasCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object SpecDet: TQuery
    OnCalcFields = SpecDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select  ZLZLS2.BWBH,BWZL.YWSM,ZLZLS2.USAGE,XXBWFLS.DFL,ZLZLS2.CL' +
        'BH,'
      '          sum(ZLZLS2.CLSL) as CLSL, CLZL.YWPM,CLZL.DWBH, '
      
        '          #BUSPrice.USPrice, round(#BUSPrice.USprice*sum(ZLZLS2.' +
        'CLSL),2) as USACC'
      'from ZLZLS2'
      'left join BWZl on ZLZLS2.BWBH=BWZL.BWDH'
      'left join DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH '
      
        'left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing  and  XXBWFL.BWB' +
        'H=ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH'
      'left join CLZL on CLZl.CLDh=ZLZLS2.CLBH'
      'left join #BUSPrice on #BUSPrice.CLBH=ZLZLS2.CLBH'
      'where ZLZLS2.ZLBH=:ZLBH'
      '        and ZLZLS2.ZMLB='#39'N'#39
      '       and XXBWFL.FLBH<>'#39'16'#39
      
        'group by ZLZLS2.BWBH,BWZL.YWSM,ZLZLS2.USAGE,XXBWFLS.DFL,ZLZLS2.C' +
        'LBH,'
      '               CLZL.YWPM,CLZL.DWBH,#BUSPrice.USPrice')
    Left = 276
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object SpecDetBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object SpecDetYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object SpecDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object SpecDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object SpecDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object SpecDetUSAGE: TFloatField
      FieldName = 'USAGE'
      DisplayFormat = '##,#0.0000'
    end
    object SpecDetCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object SpecDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object SpecDetUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object SpecDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = SpecDet
    Left = 308
    Top = 348
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 172
    Top = 156
  end
  object MatCost: TQuery
    OnCalcFields = MatCostCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select KCLLS.CLBH,KCLLS.ZCLBH,CLZL.YWPM,CLZl.DWBH,KCLLS.CLSL,KCL' +
        'LS.Qty,KCLLS.LLNO,'
      
        '         #BUSPrice.USPrice, round(isnull(#BUSPrice.USprice*KCLLS' +
        '.Qty,0),2)  as USACC'
      
        'from (select (case when CLZHZL.CLDH1 is null then KCLLS.CLBH els' +
        'e CLZHZL.CLDH1 end) ZCLBH,'
      
        '                   max(KCLLS.CLSL) as CLSL,KCLLS.CLBH,sum(KCLLS.' +
        'Qty) as Qty,max(KCLLS.LLNO) as LLNO'
      '         from KCLLS '
      '         left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH '
      '         where KCLLS.SCBH=:SCBH'
      '         group by KCLLS.CLBH,CLZHZL.CLDH1 ) KCLLS'
      'left join CLZl on CLZl.CLDH=KCLLS.ZCLBH'
      'left join  #BUSPrice on #BUSPrice.CLBH=KCLLS.ZCLBH '
      'order by KCLLS.CLBH')
    Left = 368
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
    object MatCostCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object MatCostZCLBH: TStringField
      FieldName = 'ZCLBH'
      FixedChar = True
      Size = 15
    end
    object MatCostYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object MatCostDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object MatCostCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object MatCostQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object MatCostUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object MatCostUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object MatCostLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
  end
  object DS3: TDataSource
    DataSet = MatCost
    Left = 400
    Top = 352
  end
  object AccMat: TQuery
    OnCalcFields = AccMatCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select KCLLS.SCBH,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCLLS.Qty,KCLLS' +
        '.VNACC,KCLLS.LLNO'
      'from KCLLS '
      'left join CLZL on CLZl.CLDH=KCLLS.CLBH'
      'where KCLLS.SCBH=:ZLBH'
      'order by KCLLS.CLBH')
    Left = 468
    Top = 348
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object AccMatSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object AccMatCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object AccMatYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object AccMatDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object AccMatQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object AccMatVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object AccMatLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
  end
  object DS4: TDataSource
    DataSet = AccMat
    Left = 500
    Top = 348
  end
  object PopupMenu2: TPopupMenu
    Left = 16
    Top = 136
    object N1: TMenuItem
      Caption = 'CSD Date'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Plan Month'
      OnClick = N2Click
    end
  end
end
