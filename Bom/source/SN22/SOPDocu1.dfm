object SOPDocu: TSOPDocu
  Left = 311
  Top = 188
  Width = 1386
  Height = 704
  Caption = 'SOPDocu'
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 665
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TabSheet2: TTabSheet
      Caption = 'Cutting SOP'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 56
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 95
          Top = 34
          Width = 27
          Height = 16
          Alignment = taRightJustify
          Caption = 'SKU'
        end
        object Label22: TLabel
          Left = 516
          Top = 8
          Width = 41
          Height = 16
          Alignment = taRightJustify
          Caption = 'BuyNo'
        end
        object Label3: TLabel
          Left = 350
          Top = 34
          Width = 38
          Height = 16
          Alignment = taRightJustify
          Caption = 'Model'
        end
        object Label4: TLabel
          Left = 525
          Top = 34
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'Color'
        end
        object Label5: TLabel
          Left = 341
          Top = 8
          Width = 47
          Height = 16
          Alignment = taRightJustify
          Caption = 'Season'
        end
        object Label7: TLabel
          Left = 219
          Top = 11
          Width = 9
          Height = 16
          Alignment = taRightJustify
          Caption = '~'
        end
        object ArticleEdit: TEdit
          Left = 127
          Top = 30
          Width = 194
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button3: TButton
          Left = 790
          Top = 13
          Width = 74
          Height = 30
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button3Click
        end
        object BuyNoEdit: TEdit
          Left = 562
          Top = 4
          Width = 62
          Height = 24
          TabOrder = 2
        end
        object XieXingEdit: TEdit
          Left = 393
          Top = 30
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object SheHaoEdit: TEdit
          Left = 562
          Top = 30
          Width = 62
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object JiJieEdit: TEdit
          Left = 393
          Top = 4
          Width = 105
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
        object CB1: TCheckBox
          Left = 648
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Show R2 Parts'
          TabOrder = 6
        end
        object CB_Schedule: TCheckBox
          Left = 16
          Top = 8
          Width = 106
          Height = 17
          Caption = 'Schedule Date'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object DTP1: TDateTimePicker
          Left = 127
          Top = 4
          Width = 90
          Height = 24
          Date = 45323.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45323.000000000000000000
          TabOrder = 8
        end
        object DTP2: TDateTimePicker
          Left = 231
          Top = 4
          Width = 90
          Height = 24
          Date = 45323.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 45323.000000000000000000
          TabOrder = 9
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 1
        object BT1: TBitBtn
          Left = 8
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT2: TBitBtn
          Left = 56
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BT2Click
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
        object BT3: TBitBtn
          Left = 104
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BT3Click
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
        object BT4: TBitBtn
          Left = 152
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BT4Click
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
        object BT5: TBitBtn
          Left = 200
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BT5Click
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
        object BT6: TBitBtn
          Left = 248
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BT6Click
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
        object BT7: TBitBtn
          Left = 296
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT8: TBitBtn
          Left = 368
          Top = 8
          Width = 49
          Height = 49
          Caption = 'First'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT9: TBitBtn
          Left = 416
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Prior'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT10: TBitBtn
          Left = 464
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Next'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT11: TBitBtn
          Left = 512
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Last'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BT12: TBitBtn
          Left = 584
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
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
        object BT13: TBitBtn
          Left = 632
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = BT13Click
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
        object BT14: TBitBtn
          Left = 704
          Top = 8
          Width = 57
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Syn'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = BT14Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF55C068FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDA5AFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3FB24C60FA7B3C8E454A8B53458C4E538A5AFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5344E15C4BE26560FA7B60
            FA7B58ED713DD6572F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF3CCB514ACF6044D35A4BE2654EDD6548D65E48D65E44DE5F2AB43CFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5335BC4850D5664EDD655C
            8D63FFFFFFFFFFFF5B956335BC482F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF57955D3CC35057755CFFFFFFFFFFFFFFFFFFFFFFFF3C8E
            45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F71FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF2F943B3C8E45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF4AB55653A55CFFFFFFFFFFFFFFFFFF4A8B533DD65722AB333C8E45FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57955D58ED714AB5563C8E4544
            9F4B46995147D95D39C84D24BF3917A327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF57955D58ED716BF78478FD9060FA7B58ED714EDD6544D35A4A8B
            53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA6253A55C5C
            CF6966D26F60DC7472F18A52BA5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA626BF784FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF57A85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 121
        Width = 1362
        Height = 513
        Align = alClient
        Caption = 'Panel7'
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 369
          Top = 1
          Height = 511
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 368
          Height = 511
          Align = alLeft
          DataSource = DS1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          PopupMenu = ArticlePopmenu
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnCellClick = DBGridEh1CellClick
          OnDblClick = DBGridEh1DblClick
          OnGetCellParams = DBGridEh1GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.Caption = #22411#39636'|SKU'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'XieXing'
              Footers = <
                item
                  FieldName = 'XieXing'
                  ValueType = fvtCount
                end>
              Title.Caption = #38795#22411'|Model'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'SheHao'
              Footers = <>
              Title.Caption = #33394#34399'|Color'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'XieMing'
              Footers = <>
              Title.Caption = #38795#21517'|Name'
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'LB'
              Footers = <>
              Title.Caption = 'SOP '#27284#26696'|File Name'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'SOPFile'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsUnderline]
              Footers = <>
              Title.Caption = 'SOP '#27284#26696'|File Link'
              Width = 80
            end>
        end
        object Panel8: TPanel
          Left = 372
          Top = 1
          Width = 989
          Height = 511
          Align = alClient
          Caption = 'Panel8'
          TabOrder = 1
          object Splitter3: TSplitter
            Left = 699
            Top = 1
            Width = 4
            Height = 509
            Align = alRight
          end
          object DBGrid1: TDBGridEh
            Left = 1
            Top = 1
            Width = 698
            Height = 509
            Align = alClient
            DataSource = DS2
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGrid1CellClick
            OnEditButtonClick = DBGrid1EditButtonClick
            OnGetCellParams = DBGrid1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'BWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #37096#20301'|ID'
                Title.TitleButton = True
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'vwsm'
                Footers = <>
                Title.Caption = #37096#20301'|VN'
                Width = 60
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'ZWSM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #37096#20301'|CH'
                Width = 60
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'ywsm'
                Footers = <>
                ReadOnly = True
                Title.Caption = #37096#20301'|EN'
                Width = 120
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'BWLB'
                Footers = <>
                Title.Caption = #37096#20301#39006#21029'|BWLB'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'Type'
                Footers = <>
                KeyList.Strings = (
                  'Manual'
                  'AutoCutting')
                PickList.Strings = (
                  'Manual'
                  'AutoCutting')
                Title.Caption = #35009#26039#39006#22411'|Type'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Layer'
                Footers = <>
                Title.Caption = #23652#25976'|Layer'
                Title.TitleButton = True
                Width = 40
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'piece'
                Footers = <>
                Title.Caption = #29255#25976'|Piece'
                Title.TitleButton = True
                Width = 40
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'joinnum'
                Footers = <>
                Title.Caption = #32879#20992#25976'|Join Num'
                Width = 60
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'LRcom'
                Footers = <>
                Title.Caption = #24038#21491#20849#20992'|LR Com'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'IMGName'
                Footers = <>
                Title.Caption = #22294#29255'|Image'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'PartID'
                Footers = <>
                Title.Caption = #21312#22602'|PID'
                Width = 30
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'CLDH'
                Footers = <>
                Title.Caption = #26448#26009'|Mat. ID'
                Width = 76
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26448#26009'|Mat. Name'
                Width = 150
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'CSBH'
                Footers = <>
                Title.Caption = #20379#25033#21830'|Sup. ID'
                Width = 50
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'ZSJC'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20379#25033#21830'|Sup. Name'
                Width = 80
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'ID|User ID'
                Width = 60
              end
              item
                Color = clBtnFace
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26356#26032#26085#26399'|User Date'
                Width = 80
              end>
          end
          object Panel9: TPanel
            Left = 703
            Top = 1
            Width = 285
            Height = 509
            Align = alRight
            Caption = 'Panel9'
            TabOrder = 1
            object Panel10: TPanel
              Left = 1
              Top = 1
              Width = 283
              Height = 80
              Align = alTop
              TabOrder = 0
              object BD1: TBitBtn
                Left = 0
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Insert one New Record'
                Caption = 'Insert'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                OnClick = BD1Click
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
              object BD7: TBitBtn
                Left = 93
                Top = 0
                Width = 48
                Height = 41
                Hint = 'Delete one Record'
                Caption = 'Delete All'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                OnClick = BD7Click
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
              object BD2: TBitBtn
                Left = 47
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Modify Current'
                Caption = 'Modify'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = BD2Click
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
              object BD3: TBitBtn
                Left = 94
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Delete one Record'
                Caption = 'Delete'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                OnClick = BD3Click
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
              object BD4: TBitBtn
                Left = 141
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Save Current'
                Caption = 'Save'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = BD4Click
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
              object BD5: TBitBtn
                Left = 188
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Cancel'
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BD5Click
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
              object BD6: TBitBtn
                Left = 235
                Top = 40
                Width = 48
                Height = 41
                Hint = 'Modify Current'
                Caption = 'import'
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = BD6Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                  FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                  00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                  F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                  00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                  F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                  3333777777777777333333399033333333333337773333333333333903333333
                  3333333773333333333333303333333333333337333333333333}
                Layout = blGlyphTop
                NumGlyphs = 2
              end
            end
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 81
              Width = 283
              Height = 427
              Align = alClient
              DataSource = DS3
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -12
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              ParentFont = False
              PopupMenu = SOPCutSPop
              SumList.Active = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = DBGridEh2CellClick
              OnGetCellParams = DBGridEh2GetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'SIZE'
                  Footers = <>
                  Title.Caption = #35330#21934#23610#30908'|Shoe Size'
                  Width = 90
                end
                item
                  EditButtons = <>
                  FieldName = 'XXCC'
                  Footers = <>
                  Title.Caption = #26028#20992#23610#30908'|Die-Cut Size'
                  Width = 90
                end>
            end
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'SOP Doc'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 57
        Align = alTop
        TabOrder = 0
        object SB1: TSpeedButton
          Left = 12
          Top = 4
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000002020200000000000000000000000000000001D1D1D0000000000
            000000000000000000000101010101010000001E1E1EFFFFFFA5A5A500000000
            0000000000B5B5B5FFFFFF141414000000000000000000000000010101000000
            000000F1F1F1FFFFFFFFFFFF969696000000A9A9A9FFFFFFFFFFFFE0E0E00000
            00000000000000000000000000000000000000000000FBFBFBFFFFFFFFFFFFD4
            D4D4FFFFFFFFFFFFF3F3F3000000000000000000000000000000000000FFFFFF
            494949000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000005D5D
            5DFFFFFF000000000000F5F5F5FFFFFFFFFFFF3C3C3C0000000C0C0CFFFFFFF8
            F8F8FAFAFA0404040000004C4C4CFFFFFFFFFFFFFFFFFF0000002D2D2DFFFFFF
            FFFFFFFFFFFF282828000000101010FFFFFF060606000000393939FFFFFFFFFF
            FFFFFFFF252525000000000000414141FFFFFFFFFFFFFFFFFF1C1C1C00000000
            00000000002C2C2CFFFFFFFFFFFFFFFFFF2D2D2D000000000000010101000000
            4F4F4FFFFFFFFFFFFFFFFFFF1111110000001F1F1FFFFFFFFFFFFFFFFFFF3B3B
            3B000000010101000000010101010101000000606060FFFFFFFFFFFFFFFFFF30
            3030FFFFFFFFFFFFFFFFFF494949000000010101010101000000010101010101
            000000000000717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A0000000101
            010101010101010000000101010101010101010000000000007F7F7FFFFFFFF8
            F8F8FFFFFF676767000000010101010101010101010101000000010101010101
            0101010101010000000000008C8C8CFFFFFF7575750000000000000101010101
            0101010101010100000001010101010101010101010101010100000000000048
            4848000000000000010101010101010101010101010101000000}
          OnClick = SB1Click
        end
        object SB2: TSpeedButton
          Left = 12
          Top = 27
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000010101
            0101010101010101010101010000000000004848480000000000000101010101
            0101010101010101010100000001010101010101010101010100000000000075
            7575FFFFFF8C8C8C000000000000010101010101010101010101000000010101
            010101010101010101000000676767FFFFFFF8F8F8FFFFFF7F7F7F0000000000
            000101010101010101010000000101010101010101010000005A5A5AFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF717171000000000000010101010101000000010101
            010101000000494949FFFFFFFFFFFFFFFFFF303030FFFFFFFFFFFFFFFFFF6060
            600000000101010101010000000101010000003B3B3BFFFFFFFFFFFFFFFFFF1F
            1F1F000000111111FFFFFFFFFFFFFFFFFF4F4F4F000000010101000000000000
            2D2D2DFFFFFFFFFFFFFFFFFF2C2C2C0000000000000000001C1C1CFFFFFFFFFF
            FFFFFFFF414141000000000000252525FFFFFFFFFFFFFFFFFF39393900000006
            0606FFFFFF101010000000282828FFFFFFFFFFFFFFFFFF2D2D2D000000FFFFFF
            FFFFFFFFFFFF4C4C4C000000040404FAFAFAF8F8F8FFFFFF0C0C0C0000003C3C
            3CFFFFFFFFFFFFF5F5F5000000000000FFFFFF5D5D5D000000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000000000494949FFFFFF000000000000000000
            000000000000000000F3F3F3FFFFFFFFFFFFD4D4D4FFFFFFFFFFFFFBFBFB0000
            00000000000000000000000000000000000000000000E0E0E0FFFFFFFFFFFFA9
            A9A9000000969696FFFFFFFFFFFFF1F1F1000000000000010101000000000000
            000000000000141414FFFFFFB5B5B5000000000000000000A5A5A5FFFFFF1E1E
            1E0000000101010101010000000000000000000000000000001D1D1D00000000
            0000000000000000000000202020000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SB2Click
        end
        object SKULabel: TLabel
          Left = 674
          Top = 3
          Width = 72
          Height = 20
          Caption = 'SKULabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LBLabel: TLabel
          Left = 676
          Top = 28
          Width = 59
          Height = 20
          Caption = 'LBLabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 634
          Top = 3
          Width = 37
          Height = 20
          Caption = 'SKU:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 634
          Top = 27
          Width = 38
          Height = 20
          Caption = 'Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BB1: TBitBtn
          Left = 40
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Load'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
        object BBT4: TBitBtn
          Left = 392
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Size+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 1
          OnClick = BBT4Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E50000000000009F9F9FFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CFCFCFFFFFFFFFFFFFFFFFFFEFEFEF0000
            000000000000005A5A5AFFFFFFFFFFFFFFFFFFFFFFFF6D6D6D00000000000000
            0000000000222222CACACA000000000000000000000000F6F6F6FFFFFFFFFFFF
            FFFFFF0000000000000000000404041B1B1B0000000000000000000000000000
            00000000F2F2F2FFFFFFFFFFFFFFFFFF050505000000080808DFDFDFFFFFFFFF
            FFFFFFFFFF686868000000000000000000EDEDEDFFFFFFFFFFFFFFFFFF9C9C9C
            000000000000FFFFFFFFFFFF777777000000A0A0A0FFFFFF8080800000002828
            28FFFFFFFFFFFFFFFFFFFFFFFF292929000000A9A9A9FFFFFFFFFFFF84848400
            0000B8B8B8FFFFFFFFFFFF000000000000EBEBEBFFFFFFFFFFFFFFFFFF090909
            000000FFFFFF979797000000000000000000000000000000DCDCDC6666660000
            00AEAEAEFFFFFFFFFFFFFFFFFF040404000000FFFFFF88888800000000000000
            0000000000000000D3D3D36F6F6F000000B0B0B0FFFFFFFFFFFFFFFFFF1E1E1E
            000000C9C9C9FFFFFFFFFFFF767676000000A5A5A5FFFFFFFFFFFF0303030000
            00DBDBDBFFFFFFFFFFFFFFFFFF8282820000001A1A1AFFFFFFFFFFFF6F6F6F00
            00009C9C9CFFFFFFADADAD000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000000000000434343FFFFFFFFFFFFFFFFFFFFFFFFB1B1B10000000000009090
            90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE0000000000000000004C4C4C67
            67670404040000000000004F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F4F4202020000000000000000000000000000000858585FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0B7B7B7B7
            B7B7CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
        object BBT5: TBitBtn
          Left = 440
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Size-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 2
          OnClick = BBT5Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C60A0A0A696969FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA0000
            00000000000000E8E8E8FFFFFFFFFFFFFFFFFFFFFFFF6060600E0E0E00000007
            0707282828CFCFCFB0B0B00000000000000000001A1A1AFFFFFFFFFFFFFFFFFF
            ABABAB0000000000000000000000000000000000000000000000000000000000
            00222222FFFFFFFFFFFFFFFFFFDFDFDF000000000000515151F1F1F1FFFFFFFF
            FFFFB0B0B0000000000000000000313131FFFFFFFFFFFFFFFFFFFFFFFF020202
            000000868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000D7D7
            D7FFFFFFFFFFFFFFFFFFE1E1E1000000040404FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF909090000000444444FFFFFFFFFFFFFFFFFFACACAC000000
            6D6D6DFFFFFF000000000000000000000000000000020202FFFFFF0000001919
            19FFFFFFFFFFFFFFFFFFAEAEAE0000006C6C6CFFFFFF00000000000000000000
            0000000000000000FFFFFF0000001B1B1BFFFFFFFFFFFFFFFFFFD9D9D9000000
            101010FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A10000003939
            39FFFFFFFFFFFFFFFFFFFFFFFF0000000000009A9A9AFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF000000000000ABABABFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1
            000000000000767676FEFEFEFFFFFFFFFFFFCECECE000000000000232323FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696960000000000000000000B0B0B00
            0000000000000000121212FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF0F0F0454545000000000000000000161616989898FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
        object BBT1: TBitBtn
          Left = 489
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Image'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 3
          OnClick = BBT1Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F60000000000
            00000000000000000053A40053A4A4A4A4A4A4A4A4A4A4A45200A50000F6FFFF
            FFFFFFFFFFFFFFFFA400A5000000F6FFF6F6F6F6F6F6F6FFA400A500000000F6
            FFF6F6F6F6F6F6FFA400A50000000000F6FFFF07FFF6F6FFA400A50000000000
            00075B0053FFF6FFA400A500000000000000000000A4FFFF4A00A50000000000
            000000000000FF080000A5000000A40000000000000000000000A5000008FFFF
            00000000000000000000A50000FFF6FFA4000000000000000000A5000008FF08
            00000000000000000000A4000000000000000000000000000000070000000000
            00000000000000000000FF07A4A4A4A4A4A4A4A4A4A4A4A4A4F6}
          Layout = blGlyphTop
        end
        object BBT2: TBitBtn
          Left = 537
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Text'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 4
          OnClick = BBT2Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000F5F5F5F5F5F5
            F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF9B9C9CFFFFFFF4F4F4F5F5F5F5F5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FEFDFDDEDFDF00
            0000575B5BFFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F5F5F5F6F6F6FDFEFE000000000000000000AEAEAEFEFEFEF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F8F7F7E3E5E5E5E7E7EB
            EDEDEBEDEDD8DADAFCFCFCF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F4F4F4FFFFFF9899992C3131373C3C353A3A373B3BFFFFFFF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF7C7B7B00000003
            0D0D000B0B000B0BFFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F4F4F4FFFFFF807E7E0006060A1414071111061111FFFFFFF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF807E7E0006060A
            1414071111061111FFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F4F4F4FFFFFF807E7E0006060A1414071111061111FFFFFFF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF807E7E0006060A
            1414071111061111FFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F4F4F4FFFFFF7F7E7E000505091313061010051010FFFFFFF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF71747400000000
            0000000000000000FFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F5F5F5F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2F5F5F5F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4FFFFFF71707000000000
            0000000000000000FFFFFFF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5
            F5F5F5F4F4F4FFFFFF747777000000000909000505000808FFFFFFF4F4F4F5F5
            F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FFFFFF7A797981
            8181787878D6D8D8FBFBFBF4F4F4F5F5F5F5F5F5F5F5F5F5F5F5}
          Layout = blGlyphTop
        end
        object BBT3: TBitBtn
          Left = 585
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Arrow'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 5
          OnClick = BBT3Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFF00FFFFFFFFFFFF7000FFFF
            FFFFFF870000FFFFFFFFF8000000778778787000000000700707700000000070
            0707F700000000700707FFF0000088F88F8FFFFF7000FFFFFFFFFFFFF800FFFF
            FFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
        object BB2: TBitBtn
          Left = 88
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
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
          Left = 136
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
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
        object BB5: TBitBtn
          Left = 184
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
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
          Left = 232
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
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
          Left = 280
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = BB7Click
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
        object BBT6: TBitBtn
          Left = 867
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Merge'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 11
          OnClick = BBT6Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F5F5F5F5F5F5F7F7F7FBFBFBFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECD6D6D6C9C9C9BDBDBDB3
            B3B3B3B3B3BDBDBDC9C9C9D5D6D6ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFA9A9A9D1D1D1D5D5D5D7D7D7DADADADCDCDCDADADADADBDCDCE0E0AAAA
            AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1F1F1F1D1D1D1D6D6D6D8
            D8D8D9D9D9F4F7F7FCFFFF984F3CBDC8C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC2C2C2EEEEEED1D1D1D6D6D6D9D9D9DEE0E0D4D6D39A372AB53529A84D
            3DAE5040A64435A36153FFFFFFFFFFFFFFFFFFC5C5C5EDEDEDD1D1D1D5D5D5D9
            D9D9DCE1E0821B0E8F0200A0221BAF3129B1352EA8251FA45148FFFFFFFFFFFF
            FFFFFFC8C8C8EEEEEDD0D0D0D5D5D5D7D7D7DCDEDECACCC89B4840A541419848
            3F9641388E3129975448FFFFFFFFFFFFFFFFFFCDCDCBE0E0E4D8D8D3D3D3D3D5
            D5D5D7D7D7DBDDDECFD5D4975849BAC1C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF6F6D33131B8B0B0BDE1E1D7D4D4D4D4D4D4E2E2E2F9FAFAF5F8F8BFBF
            BFFFFFFFFFFFFFFFFFFF6D6DC00000A10505B60C0CC70E0ED70202C19090B3DF
            DFD6D3D3D3D3D3D3CFCFCFE9E9E9C2C2C2FFFFFFFFFFFFFFFFFF7A7ACA0000AB
            1313BE1212CB0C0CC50000B30E0EADB7B7C5D4D4D2D1D1D1CFCFCFE6E6E6C2C2
            C2FFFFFFFFFFFFFFFFFF8C8CCD4545B75555BB5858B94A4AC04040B6BDBDC5CD
            CDC7C7C7C7C7C7C7C4C4C4E1E1E1C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F4DE4E4EAFD3D3D3DADAD5D6D6D6D7D7D7D8D8D8D7D7D7E6E6E6C4C4
            C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDE0E0D9D9D9D7D3D3D3D0
            D0D0CECECECACACAC7C7C7C4C4C4B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
        object BBT7: TBitBtn
          Left = 915
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Split'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 12
          OnClick = BBT7Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F5F5F5F5F5F5F7F7F7FBFBFBFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECD6D6D6C9C9C9BDBDBDB3
            B3B3B3B3B3BDBDBDC9C9C9D5D6D6ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFA9A9A9D1D1D1D5D5D5D7D7D7DADADADCDCDCDADADADADBDCDCE0E0AAAA
            AAA45148FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1F1F1F1D1D1D1D6D6D6D8
            D8D8D9D9D9CFD5D4CFD5D4F5F8F8BDC8C9A45148A45148FFFFFFFFFFFFFFFFFF
            FFFFFFC2C2C2EEEEEED1D1D1D6D6D6D9D9D9DEE0E0D4D6D39A372AB53529A84D
            3DAE5040A64435A36153FFFFFFFFFFFFFFFFFFC5C5C5EDEDEDD1D1D1D5D5D5D9
            D9D9DCE1E0CFD5D48F0200A0221BAF3129B1352EA8251FA45148FFFFFFFFFFFF
            FFFFFFC8C8C8EEEEEDD0D0D0D5D5D5D7D7D7DCDEDECACCC89B4840A541419848
            3F964138A45148975448FFFFFFFFFFFF1313BECDCDCBE0E0E4D8D8D3D3D3D3D5
            D5D5D7D7D7DBDDDECFD5D4F5F8F8BAC1C0A45148A45148FFFFFFFFFFFF1313BE
            1313BEF6F6D3CFD5D4B0B0BDE1E1D7D4D4D4D4D4D4E2E2E2CFD5D4F5F8F8BFBF
            BFA45148FFFFFFFFFFFF6D6DC00000A10505B60C0CC70E0ED70202C1CFD5D4DF
            DFD6D3D3D3D3D3D3CFCFCFE9E9E9C2C2C2FFFFFFFFFFFFFFFFFF7A7ACA0000AB
            1313BE1212CB0C0CC50000B3CFD5D4CFD5D4D4D4D2D1D1D1CFCFCFE6E6E6C2C2
            C2FFFFFFFFFFFFFFFFFF8C8CCD4545B75555BB5858B94A4AC04040B6BDBDC5CD
            CDC7C7C7C7C7C7C7C4C4C4E1E1E1C3C3C3FFFFFFFFFFFFFFFFFFFFFFFF1313BE
            1313BEF4F4DECFD5D4CFD5D4DADAD5D6D6D6D7D7D7D8D8D8D7D7D7E6E6E6C4C4
            C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1313BECDCDCDE0E0D9D9D9D7D3D3D3D0
            D0D0CECECECACACAC7C7C7C4C4C4B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
        object BBT8: TBitBtn
          Left = 963
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Copy'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 13
          OnClick = BBT8Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000B9EFFDBAEFFD
            BEF1FDC2F2FDC7F3FDC9F5FDCBFCFFC9CBC0C5C8C1C4C8C0C1C7BDBFC6BDBCC4
            BDBDC3BDBABDB7C6E9ECAEECFDB0ECFDB3EFFDB7F1FDBEF0FDC1F3FDC5FFFFB8
            521AAB461AA547199A420E913E0F873A0F89340D812100AEBBB79CE8FD9DEAFE
            A2EDFFA6EEFFABF0FFB0F1FFAFFBFFDB9F7EFFFFFFD39D7FD4A389D0A58ACBA3
            88C9AE9DB68D75A6B5B396E8FE99E3F68ACFDE91D3E295D5E39AD6E495DDECE1
            A484FFFFFFDC8A59D4895DD4885AD78555CA9C86B187759FB6B389EAFFA9A99F
            AF8D7DA588729B84719B7E68937463E7B59DFFFFFFF6CFBBF2C9B7E5B393E2A8
            88D4AD98BC8D7394B2B385E9FFA5ADA6FFFFFFF4DEC9E4CFBEE5C8B3E0C0B3E9
            B9A2FFFFFFEBAB87E3AA88DD996ED59167D7AA91C9927A91B1B383E8FFACB1A5
            FFFFFFF3DDC8E8CDBAE9C9B0E1C1A5E8C5B5FFFFFFFFCDB9FFD8C8F0D7C8E3B1
            92BF7C5FB762398EB6B682E8FFB2B3A9FFFFFFFFEBDBEEDED3EAD5BFEBCAADEB
            CBB8FFFFFFFFBA9FFFC8B2EBBCA3DF8757B55A33AC47188DC3CC86E8FFB2B7B3
            FFFFFFFEEFE4FBE3DDF4D9C9EBD0BAF5D6C2FFFFFFFFFFFFFFFFFFFAD8C6EF98
            6AB3937798B3B489E9FF89E9FFB8BCB7FFFFFFFFF0E7FFE6DDF2E5DFD0CBC3F9
            D3BEFFF1ECFFE4D9FFE2D6FFC2A5F09A6C9CB1A990DCEE8CE6FF8FEBFFC2C6C0
            FFFFFFFFF6F0FFF5ECEFE8E0B0977DCAB5A89B68539CD1DCA4DAE7A4DAE5A3DF
            ED91EAFF93E8FF94E6FD92EAFFC8C7C0FFFFFFFFFFFFFFFFFFF7F6F4BBA58EAA
            9B88868F8B90E5FB94EAFF94E9FF94E9FF97E8FD97E7FD97E7FD9CEDFFD5C6BD
            EAC1AFD8C1B0D6C2B1D5B8ACD5A6919ECFD99FEFFFA2EBFFA1E9FDA1E9FDA1E9
            FDA1E9FDA1E9FDA1E9FD9EEBFFB7DCE3C0D7D9B8D7DAB7D8DAB7D4D9BBCFD1A4
            E4F5A5ECFFA5EAFDA5EAFDA5EAFDA5EAFDA5EAFDA5EAFDA5EAFDEAF9FDB9F1FF
            AAEFFFACEFFFACEFFFACF0FFACF0FFAFEEFEAFEDFDAFEDFDAFEDFDAFEDFDAFED
            FDAFEDFDAFEDFDAFEDFDE9F9FDDCF6FDD8F5FDD9F5FDD9F5FDD9F5FDD9F5FDD9
            F5FDD9F5FDD9F5FDD9F5FDD9F5FDD9F5FDD9F5FDD9F5FDD9F5FD}
          Layout = blGlyphTop
        end
        object BBT9: TBitBtn
          Left = 1011
          Top = 0
          Width = 49
          Height = 49
          Caption = 'Paste'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 14
          OnClick = BBT9Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000ACF1FDABF1FD
            AEF4FFADE9F2B1E8EEB6D9DAECDDD5FFFEFDFBF8F7FBF7F5FBF5F3FDF7F6E7D9
            D289A5A2A7F7FFE7FBFF9DECFE9DEFFF9CD8E775C4E76FCAF07FC0DAF2E0D5FF
            FFFEFCF9F8FBF7F6FBF6F4FEF9F7E9DCD480A2A196F1FFE3FAFF97E9FE96EDFF
            96CDE069BEE961C7F773BEE0F7E5D9DDD7D4DED5D1DED6D0DED6CEDDD2CFE9D9
            D17CA0A28FEEFFE1F8FF91E8FE8FEAFF92CDE06CBFE963C8F674BEDFF6E4D9E3
            DEDCE3DCD8E3DCD7E3DCD5E3D9D6E9DAD4799FA288EBFFE0F8FF8AE6FE89E8FF
            8FCBDF6BBFE963C8F674BFE0F4E2D7FFFFFFFFFFFFFFFFFFFFFCFBFFFFFFEEE2
            DB769EA181EAFFDEF8FF86E5FE85E6FF8BCAE06BC0E963C7F675BFE0F9E7DDDF
            DCDBDFDAD6EBE7E6FEFCFCE9E3DED8C8BD759EA17CE7FFDCF7FF87E5FE85E6FF
            8BCAE06CC0E862C7F675C0E0F8E7DCF7F7F7F4F3F2FAF7F6FDFCFCD5C4B87E64
            4E82CBDE7CE5FFDDF7FF8BE5FE89E7FF8CCAE06DC1E864C9F777C2E1F9E8DDE9
            E9EAE7E6E5F2F0F0FFFFFFBCB3AA7CC4D887E6FF80E2FEDEF7FF8CE6FE8BE7FF
            8EC9E06EC0E965CBF77AC2E1FFE9DBFFFFFFFFFFFFFFFFFFFFFBF7829BA276CE
            E989E3FC82E3FEDFF8FF92E6FE91E9FF8FCADF70C2EA6ACCF877CBEEADBFC3A1
            B9BFA0B7BE9FB5BA98B3BB58CAFF7FCDE48FE4FB88E5FEE0F7FF98E7FE97EAFF
            92C9DE72C4EC6FCEF866C2EB60C4F15CC2F25CC2F15DC3F360C8F963C6F484CD
            E495E5FB8FE5FEE2F7FFA0E9FEA1EDFF95CADD6FCAF472A0B2B29D90937F6C8C
            7866826F5B715F4D56B0D654C4F98AD5EB9EE7FB98E8FEE4F9FFABECFEABEFFF
            99CDE095D0ECA0C7D4BFBEB4868581F5EAE9EEE4E3ECDFDDE6E3E5EFECF08793
            96AAF2FFA3EAFEE7F9FFADECFEAEEEFFA3DEF07C9DB47A9BB67AA3BE677681FB
            EEEDF7ECEBF3EAEBF4E8E8FFF1F0868C8DAFF5FFA6EBFEE8FAFFCBF5FEC0F3FF
            C1F4FFC2F4FFC2F5FFC7FDFF83979BFDF0EFDAD3DEF6EADFF3EBECFFF4F4898E
            90C5FDFFBBF2FEEDFCFF80D7F573D4F574D5F575D5F575D5F575DDFF668B97FF
            FEF87F7EAFFFE5B7F5F1F5FFF9F87E8A8E72DCFF6AD1F4D7F3FC}
          Layout = blGlyphTop
        end
        object EditObjctCB: TRadioButton
          Left = 754
          Top = 0
          Width = 113
          Height = 17
          Caption = 'Image/Text'
          Checked = True
          TabOrder = 15
          TabStop = True
          OnClick = EditObjctCBClick
        end
        object EditCB: TRadioButton
          Left = 754
          Top = 18
          Width = 113
          Height = 17
          Caption = 'Key In'
          Color = clYellow
          ParentColor = False
          TabOrder = 16
          OnClick = EditCBClick
        end
        object MergCB: TRadioButton
          Left = 754
          Top = 37
          Width = 113
          Height = 17
          Caption = 'Size Run'
          Color = clLime
          ParentColor = False
          TabOrder = 17
          OnClick = MergCBClick
        end
        object BB8: TBitBtn
          Left = 328
          Top = 0
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Web'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnClick = BB8Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000F6F6F6F9F9F9
            DADAD69E9C8B19268B000E9D021BA50535BD0140C8034BC7005FD32A4C83908C
            96DFDCD8F8F8F8F6F6F6F6F6F6FFFFF9B3B4BA0000890000870934B50F56CF0C
            59D10A5DD30960D50C6ADE026AE5004CC9C9C2BBFFFCF8F6F6F6FAFAF7F4F5F7
            00007C0106830E45C5104FC91158C90F5ED40963DC0C56D20A52C80866D41991
            E20085EBD5F3FDFCF8F6FFFFFF0F179F00007F114BC81358CA1665D00D7BFC1E
            51A11630670B4284007CFB0E8FF20A73D5004DC9216084FFFFFFC6CCE800008D
            0A31B3155ACB1567D21472E6431418881500701B00450400570C002B6BA6139C
            EF0583E3002A9FE4DCEF6974CE001CA91253C90E5ED3015AE3031B970052DE00
            4FE5522C349738006621004D0C000CACFF16A7EB006ADBBFD4E92A4FC80639BF
            155FCE002CB90145D1127BEF63636C2469BF0CA1FF8586686E2A006C0F001F91
            CE22BFF50C9AE55EAAEC0440CE0A42C61361D4000E8C0030C7D36700B7650DC4
            6500C05B00C06D116E320E78300352595A33BAFB1EC9FE43879E1764DA0941C7
            0F4DCB0E49BB021A9C615F65D07E16C3812BCB882C8848158244127F3A07666F
            6233DAFF36D4FC2C498E1570DF073DCA0B41C80C48C71A67D42397FFBF5D00EA
            AD3FD59A3DBB802F9153199C56128A6A4A2F89CD45D9F74D91D65D9EE80039CB
            0741C80A40C6094DC73062CB5DB1FF9F7F4FEFC35ADDA94AE5A741A663219E35
            0035CEFF43D5F1A3E4EFD9E7EC0051DA0A46CC0C4BCA1155CD0031B6577AC191
            978EFDED87EEE080F1DD6EFAC54F7C4A2450F1FF31A8D5C8EFF4F3EFF00022C9
            0977F70B76F8003AD872878FFFFF84FDF1A8F2EAA9E5CE72D0A34BCA77217CB6
            B55AF0FF17498DFFFFFEFFFFF40067FF500D008E4310CA8144002AC5CFD2ADF6
            EAB9F1E8B9EDE4A7E7D77FCF853369BDBD3A5177DAE4FDFBF8F5FBF8F7DDEBF0
            FFFFFF4E1402C57A2CFFFF94F7F4CFF3EDCBF4EECAF4EFC9F5E89F8F8969B5A5
            88DEE5FFFFFEF8F6F6F6F5F6F6F9F7F5F6F7F7FFFFFFAC9188AE8746DFCD89F0
            ECC1F3EED0EEE2A6C0A165DECABDFFFFFFF9F8F5F6F6F6F6F6F6}
          Layout = blGlyphTop
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 57
        Width = 1362
        Height = 577
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 49
          Top = 1
          Width = 5
          Height = 575
          Color = clActiveCaption
          ParentColor = False
        end
        object Panel3: TPanel
          Left = 54
          Top = 1
          Width = 1307
          Height = 575
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 0
          object WebBrowser: TWebBrowser
            Left = 1
            Top = 1
            Width = 1305
            Height = 573
            Align = alClient
            TabOrder = 0
            OnDocumentComplete = WebBrowserDocumentComplete
            ControlData = {
              4C000000E0860000393B00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 48
          Height = 575
          Align = alLeft
          Caption = 'Panel3'
          TabOrder = 1
          object ListView: TListView
            Left = 1
            Top = 1
            Width = 46
            Height = 573
            Align = alClient
            Columns = <
              item
                Caption = 'No.'
              end>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -23
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            GridLines = True
            ReadOnly = True
            RowSelect = True
            ParentFont = False
            PopupMenu = PopupMenu
            TabOrder = 0
            ViewStyle = vsList
            OnClick = ListViewClick
          end
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 93
    Top = 248
    object rename1: TMenuItem
      Caption = 'Rename'
      OnClick = rename1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = BB2Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = BB3Click
    end
  end
  object ExeQuery: TQuery
    DatabaseName = 'SOPDB'
    SQL.Strings = (
      'select *'
      'from BLimits'
      'where USERID=:userid'
      'and MKID=:mkid'
      'and GSBH=:GSBH')
    Left = 310
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
  end
  object SOPDB: TDatabase
    AliasName = 'LIY_ERP'
    DatabaseName = 'SOPDB'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 28
    Top = 249
  end
  object XXZL: TQuery
    AfterScroll = XXZLAfterScroll
    OnCalcFields = XXZLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,KT_SOP' +
        'Doc.LB from XXZL '
      
        'Left join KT_SOPDoc on KT_SOPDoc.XieXing=XXZL.XieXing and KT_SOP' +
        'Doc.Shehao=XXZL.Shehao '
      'where  XXZL.ARTICLE like '#39'%163758C%'#39)
    Left = 348
    Top = 241
    object XXZLXieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLARTICLE: TStringField
      DisplayWidth = 10
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 15
    end
    object XXZLSOPFile: TStringField
      FieldKind = fkCalculated
      FieldName = 'SOPFile'
      Size = 100
      Calculated = True
    end
  end
  object XXZLS: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select * from ('
      
        'select XXZLS.XieXing,XXZLS.SheHao,XXZLS.BWBH,bwzl.ywsm,KT_SOPcut' +
        '.BWBH as SOPBWBH, KT_SOPcut.Type'
      
        '       ,KT_SOPcut.joinnum, KT_SOPcut.LRcom ,KT_SOPcut.Layer,KT_S' +
        'OPcut.piece,KT_SOPcut.PartID,KT_SOPcut.userdate,KT_SOPcut.userid' +
        ',KT_SOPcut.YN,KT_SOPcut.IMGName'
      
        '       ,XXBWFLS.DFL,CLZL.YWPM,BWZL.ZWSM,ZSZL.ZSJC,CLZL.CLDH,bwzl' +
        'vn.vwsm,XXZLS.BWLB'
      'from XXZLS'
      'left join CLZL on CLZL.cldh=XXZLS.CLBH'
      
        'left join xxbwfl on xxbwfl.xiexing=XXZLS.xiexing and xxbwfl.bwbh' +
        '=XXZLS.bwbh'
      'left join XXBWFLS on XXBWFLS.FLBH=xxbwfl.FLBH'
      'left join bwzl on XXZLS.BWBH=bwzl.bwdh'
      
        'left join KT_SOPcut on XXZLS.BWBH=KT_SOPcut.BWBH and XXZLS.XieXi' +
        'ng=KT_SOPcut.XieXing and XXZLS.SheHao=KT_SOPcut.SheHao'
      'left join ZSZL on ZSZL.zsdh=XXZLS.CSBH'
      'left join BWZLVN on BWZLVN.BWDH=bwzl.BWDH'
      'where XXZLS.XieXing=:XieXing  and XXZLS.SheHao=:SheHao'
      'union all'
      
        'select KT_SOPcut.XieXing,KT_SOPcut.SheHao,KT_SOPcut.BWBH,bwzl.yw' +
        'sm,KT_SOPcut.BWBH as SOPBWBH, KT_SOPcut.Type'
      
        '       ,KT_SOPcut.joinnum, KT_SOPcut.LRcom ,KT_SOPcut.Layer,KT_S' +
        'OPcut.piece,KT_SOPcut.PartID,KT_SOPcut.userdate,KT_SOPcut.userid' +
        ',KT_SOPcut.YN,KT_SOPcut.IMGName'
      
        '       ,XXBWFLS.DFL,null as YWPM,BWZL.ZWSM,null as ZSJC,null as ' +
        'CLDH,bwzlvn.vwsm,XXZLS.BWLB'
      'from KT_SOPcut'
      
        'left join xxbwfl on xxbwfl.xiexing=KT_SOPcut.xiexing and xxbwfl.' +
        'bwbh=KT_SOPcut.bwbh'
      'left join XXBWFLS on XXBWFLS.FLBH=xxbwfl.FLBH'
      'left join bwzl on KT_SOPcut.BWBH=bwzl.bwdh'
      'left join BWZLVN on BWZLVN.BWDH=bwzl.BWDH'
      
        'left join XXZLS on xxbwfl.xiexing=XXZLS.xiexing and xxbwfl.bwbh=' +
        'XXZLS.bwbh'
      'where KT_SOPcut.XieXing=:XieXing  and KT_SOPcut.SheHao=:SheHao'
      
        '  and not exists (Select BWBH from XXZLS where XXZLS.XieXing=:Xi' +
        'eXing  and XXZLS.SheHao=:SheHao and XXZLS.BWBH=KT_SOPcut.BWBH an' +
        'd XXZLS.XieXing=KT_SOPcut.XieXing and XXZLS.SheHao=KT_SOPcut.She' +
        'Hao)'
      ') XXZL'
      
        'order by IsNull(PartID,'#39'Z'#39') ,case when DFL='#39'C'#39' then 1 else 2 end' +
        ',BWBH')
    UpdateObject = XXZLSUpd
    Left = 388
    Top = 242
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
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object XXZLSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSvwsm: TStringField
      FieldName = 'vwsm'
      FixedChar = True
      Size = 40
    end
    object XXZLSywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object XXZLSSOPBWBH: TStringField
      FieldName = 'SOPBWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSjoinnum: TSmallintField
      FieldName = 'joinnum'
    end
    object XXZLSLRcom: TBooleanField
      FieldName = 'LRcom'
    end
    object XXZLSLayer: TIntegerField
      FieldName = 'Layer'
    end
    object XXZLSpiece: TIntegerField
      FieldName = 'piece'
    end
    object XXZLSDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object XXZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object XXZLSZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object XXZLSPartID: TStringField
      FieldName = 'PartID'
      FixedChar = True
      Size = 5
    end
    object XXZLSCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object XXZLSuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object XXZLSuserdate: TDateTimeField
      FieldName = 'userdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object XXZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object XXZLSIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object XXZLSType: TStringField
      FieldName = 'Type'
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSCSBH: TStringField
      FieldName = 'CSBH'
      Size = 6
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 388
    Top = 272
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 348
    Top = 271
  end
  object XXZLSUpd: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '   KT_SOPCut'
      'Set'
      '  Type = :Type,'
      '  piece=:piece,'
      '  layer=:layer,'
      '  joinnum=:joinnum,'
      '  LRcom=:LRcom,'
      '  PartID=:PartID,'
      '  IMGName=:IMGName,'
      '  userID=:userID,'
      '  userdate=GetDate()'
      'where'
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  BWBH=:OLD_BWBH'
      '')
    InsertSQL.Strings = (
      'Insert into KT_SOPCut'
      
        '  (XieXing, SheHao, BWBH, Type, piece, layer , joinnum, LRcom, P' +
        'artID, IMGName, USERID, USERDATE ,YN)'
      'Values'
      
        '  (:XieXing, :SheHao, :BWBH, :Type, :piece, :layer, :joinnum, :L' +
        'Rcom , :PartID, :IMGName, :USERID, GetDate(), :YN)')
    DeleteSQL.Strings = (
      'Delete from'
      '  KT_SOPCut'
      'where'
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  BWBH=:OLD_BWBH')
    Left = 388
    Top = 303
  end
  object KT_SOPCutS: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select *'
      'from KT_SOPCutS'
      
        'where KT_SOPCutS.XieXing=:XieXing and KT_SOPCutS.SheHao=:SheHao ' +
        'and KT_SOPCutS.BWBH=:BWBH'
      'order by  SIZE'
      '')
    UpdateObject = KT_SOPCutSUpd
    Left = 428
    Top = 242
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
      end
      item
        DataType = ftFixedChar
        Name = 'BWBH'
        ParamType = ptUnknown
        Size = 5
      end>
    object KT_SOPCutSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object KT_SOPCutSSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object KT_SOPCutSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object KT_SOPCutSSIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object KT_SOPCutSXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object KT_SOPCutSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object KT_SOPCutSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object KT_SOPCutSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = KT_SOPCutS
    Left = 428
    Top = 272
  end
  object KT_SOPCutSUpd: TUpdateSQL
    ModifySQL.Strings = (
      'Update'
      '   KT_SOPCutS'
      'Set'
      '  SIZE=:SIZE,'
      '  XXCC=:XXCC,'
      '  userID=:userID,'
      '  userdate=GetDate()'
      'where'
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  BWBH=:OLD_BWBH and'
      '  SIZE=:OLD_SIZE'
      '')
    InsertSQL.Strings = (
      'Insert into KT_SOPCutS'
      '  (XieXing, SheHao, BWBH, SIZE, XXCC, USERID, USERDATE, YN)'
      'Values'
      
        '  (:XieXing, :SheHao, :BWBH, :SIZE, :XXCC, :USERID, GetDate(), :' +
        'YN)')
    DeleteSQL.Strings = (
      'Delete from'
      '  KT_SOPCutS'
      'where'
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  BWBH=:OLD_BWBH and'
      '  SIZE=:OLD_SIZE')
    Left = 428
    Top = 303
  end
  object OpenDialog1: TOpenDialog
    Filter = 'HTML|*.html|XLS|*.xls'
    Left = 1180
    Top = 67
  end
  object ArticlePopmenu: TPopupMenu
    Left = 60
    Top = 248
    object CopyArticle1: TMenuItem
      Caption = 'Copy Article'
      OnClick = CopyArticle1Click
    end
    object DownSOP: TMenuItem
      Caption = 'Download SOP File'
      Visible = False
      OnClick = DownSOPClick
    end
  end
  object SOPCutSPop: TPopupMenu
    Left = 1069
    Top = 272
    object SOPCutSCopy: TMenuItem
      Caption = 'Copy All SIZE'
      Enabled = False
      OnClick = SOPCutSCopyClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SOPCutSPaste: TMenuItem
      Caption = 'Paste All SIZE'
      Enabled = False
      OnClick = SOPCutSPasteClick
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 1147
    Top = 69
  end
  object SaveDialog2: TSaveDialog
    Filter = 'PDF Files(*.pdf)|*.pdf'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 251
    Top = 242
  end
end
