object SampleMerge: TSampleMerge
  Left = 268
  Top = 124
  Width = 1024
  Height = 620
  Caption = 'SampleMerge'
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
  object Splitter2: TSplitter
    Left = 0
    Top = 222
    Width = 1008
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 222
    Align = alTop
    TabOrder = 0
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 1006
      Height = 50
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 540
        Top = 6
        Width = 36
        Height = 13
        Caption = 'Season'
      end
      object Label5: TLabel
        Left = 543
        Top = 28
        Width = 31
        Height = 13
        Caption = 'Stage:'
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 1004
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 360
          Top = 2
          Width = 57
          Height = 16
          Caption = 'MergeNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 529
          Top = 2
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
        object Label8: TLabel
          Left = 540
          Top = 27
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
        object Label1: TLabel
          Left = 381
          Top = 27
          Width = 37
          Height = 16
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 635
          Top = 6
          Width = 23
          Height = 13
          Caption = 'From'
        end
        object Label4: TLabel
          Left = 742
          Top = 6
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Edit4: TEdit
          Left = 418
          Top = 25
          Width = 101
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
        object Edit1: TEdit
          Left = 418
          Top = 0
          Width = 100
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = Edit1KeyPress
        end
        object Button1: TButton
          Left = 842
          Top = 12
          Width = 65
          Height = 26
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 661
          Top = 2
          Width = 83
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 752
          Top = 2
          Width = 83
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 4
        end
        object BB2: TBitBtn
          Left = 0
          Top = 0
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
          TabOrder = 5
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
          Left = 49
          Top = 0
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
          TabOrder = 6
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
          Left = 98
          Top = 0
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
          TabOrder = 7
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
          Left = 147
          Top = 0
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
          Left = 196
          Top = 0
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
          Left = 245
          Top = 0
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
          TabOrder = 10
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
        object BB8: TBitBtn
          Left = 294
          Top = 0
          Width = 59
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Calculate'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = BB8Click
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
        object Edit2: TEdit
          Left = 579
          Top = 0
          Width = 51
          Height = 21
          TabOrder = 12
          OnKeyPress = Edit2KeyPress
        end
        object Edit3: TEdit
          Left = 579
          Top = 25
          Width = 53
          Height = 21
          TabOrder = 13
          OnKeyPress = Edit3KeyPress
        end
      end
    end
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 51
      Width = 1006
      Height = 170
      Align = alClient
      DataSource = DS3
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
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      VTitleMargin = 5
      OnDblClick = DBGrid3DblClick
      OnDrawColumnCell = DBGrid3DrawColumnCell
      OnEditButtonClick = DBGrid3EditButtonClick
      OnKeyPress = DBGrid3KeyPress
      Columns = <
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'YPZLBH'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Merge No'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'JiJie'
          Footers = <>
          Title.Caption = 'Season'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'KFJD'
          Footers = <>
          Title.Caption = 'Stage'
          Width = 42
        end
        item
          EditButtons = <>
          FieldName = 'memo'
          Footers = <>
          Title.Caption = 'Memo'
          Width = 232
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'CALDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Cal Date'
          Width = 77
        end
        item
          Color = 11927551
          EditButtons = <>
          FieldName = 'revise'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'BOM Revised'
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User ID'
          Width = 49
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'INSDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Insert Date'
          Width = 74
        end
        item
          Color = clScrollBar
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User Date'
          Width = 75
        end>
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 225
    Width = 1008
    Height = 357
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS4: TTabSheet
      Caption = 'Detail'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 47
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label19: TLabel
          Left = 302
          Top = 18
          Width = 84
          Height = 16
          Caption = 'Sample Order'
        end
        object DBEdit13: TDBEdit
          Left = 389
          Top = 14
          Width = 123
          Height = 24
          CharCase = ecUpperCase
          DataField = 'YPDH'
          DataSource = DS4
          ReadOnly = True
          TabOrder = 1
        end
        object BBTT2: TBitBtn
          Left = 514
          Top = 14
          Width = 19
          Height = 25
          Caption = '...'
          TabOrder = 2
          Visible = False
          OnClick = BBTT2Click
        end
        object btn1: TBitBtn
          Left = 243
          Top = 2
          Width = 50
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btn1Click
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
        object BD2: TBitBtn
          Left = 2
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BD2Click
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
        object BD3: TBitBtn
          Left = 50
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
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
          Left = 98
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BD4Click
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
        object BD5: TBitBtn
          Left = 146
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BD5Click
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
        object BD6: TBitBtn
          Left = 194
          Top = 2
          Width = 49
          Height = 46
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BD6Click
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
      end
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 47
        Width = 1000
        Height = 279
        Align = alClient
        DataSource = DS4
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
        OnEditButtonClick = DBGrid4EditButtonClick
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Season'
            Title.TitleButton = True
            Width = 50
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Width = 66
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <
              item
                FieldName = 'ARTICLE'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 61
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stage'
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <
              item
                FieldName = 'PAIRS'
                ValueType = fvtSum
              end>
            Title.Caption = 'Pairs'
            Title.TitleButton = True
            Width = 51
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample Order'
            Title.TitleButton = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User ID'
            Width = 78
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User Date'
            Width = 103
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Sample Order'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 35
        Width = 1000
        Height = 291
        Align = alClient
        DataSource = DS5
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
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
            FieldName = 'YPDH'
            Footers = <
              item
                FieldName = 'YPDH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Sample Order'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Title.Caption = 'Itm'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Title.Caption = 'Loss'
            Title.TitleButton = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.TitleButton = True
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'Treatment'
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.TitleButton = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 35
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 7
          Top = 9
          Width = 40
          Height = 16
          Caption = 'Article:'
        end
        object Edit5: TEdit
          Left = 49
          Top = 5
          Width = 72
          Height = 24
          TabOrder = 0
        end
        object Button2: TButton
          Left = 130
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cal Result'
      ImageIndex = 3
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 35
        Width = 1000
        Height = 291
        Align = alClient
        DataSource = DS6
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
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
            FieldName = 'YPDH'
            Footers = <
              item
                FieldName = 'YPDH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Sample Order'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Title.Caption = 'Usage'
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'TP'
            Title.TitleButton = True
            Width = 25
          end
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supp ID'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.TitleButton = True
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 35
        Align = alTop
        TabOrder = 1
        object Label10: TLabel
          Left = 7
          Top = 9
          Width = 40
          Height = 16
          Caption = 'Article:'
        end
        object Edit6: TEdit
          Left = 49
          Top = 5
          Width = 72
          Height = 24
          TabOrder = 0
        end
        object Button3: TButton
          Left = 130
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Purchase Status-[Article]'
      ImageIndex = 5
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 35
        Width = 1000
        Height = 291
        Align = alClient
        DataSource = DS_MergeNOCheck
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Purchase
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.TitleButton = True
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
            Title.TitleButton = True
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Title.Caption = 'Pairs'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Mat No'
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Mat name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Qty'
            Title.TitleButton = True
            Width = 59
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PurQty'
            Footers = <>
            Title.TitleButton = True
            Width = 59
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'UseStock'
            Footers = <>
            Title.Caption = 'Use Stock'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'cgdate'
            Footers = <>
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'cgno'
            Footers = <>
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'yqdate'
            Footers = <>
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'Size'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'recs'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.Caption = 'Sample Order'
            Title.TitleButton = True
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supp ID'
            Title.TitleButton = True
            Width = 52
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 35
        Align = alTop
        TabOrder = 1
        object Button4: TButton
          Left = 266
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button4Click
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 8
          Width = 169
          Height = 17
          Caption = 'Only Show Pur. Material'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 192
          Top = 8
          Width = 57
          Height = 17
          Caption = 'All'
          TabOrder = 2
          OnClick = RadioButton2Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Purchase Status-[Material]'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 311
          Top = 8
          Width = 50
          Height = 16
          Caption = 'Supplier'
        end
        object Label11: TLabel
          Left = 499
          Top = 8
          Width = 36
          Height = 16
          Caption = 'Stage'
        end
        object Button5: TButton
          Left = 669
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Radio_PurMat: TRadioButton
          Left = 132
          Top = 8
          Width = 96
          Height = 17
          Caption = 'Pur. Material'
          TabOrder = 1
          OnClick = Radio_PurMatClick
        end
        object Radio_All: TRadioButton
          Left = 233
          Top = 8
          Width = 64
          Height = 17
          Caption = 'All Mat.'
          TabOrder = 2
          OnClick = Radio_AllClick
        end
        object Radio_Wait: TRadioButton
          Left = 6
          Top = 8
          Width = 118
          Height = 17
          Caption = 'Waiting Pur. Mat'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = Radio_WaitClick
        end
        object Chk_Mine: TCheckBox
          Left = 614
          Top = 8
          Width = 51
          Height = 17
          Caption = 'Mine'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 4
        end
        object Edit_Supplier: TEdit
          Left = 363
          Top = 4
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit_Stage: TEdit
          Left = 536
          Top = 3
          Width = 46
          Height = 24
          TabOrder = 6
        end
        object CheckBox1: TCheckBox
          Left = 750
          Top = 8
          Width = 155
          Height = 17
          Caption = 'Order all [for re-order]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 35
        Width = 1000
        Height = 291
        Align = alClient
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 723
          Top = 1
          Height = 289
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 722
          Height = 289
          Align = alLeft
          DataSource = DS_Summary
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
          FrozenCols = 2
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Summary
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGridEh3DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Mat No'
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'CLMC'
              Footers = <>
              Title.Caption = 'Mat name'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ZSDH_VN'
              Footers = <>
              Title.Caption = 'Supp VN ID'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = 'Use Stock'
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
              Title.TitleButton = True
              Width = 27
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.TitleButton = True
              Width = 75
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              Title.Caption = 'Supp ID'
              Title.TitleButton = True
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              Title.TitleButton = True
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'SafeStock'
              Footers = <>
              Title.Caption = 'Safe Stock'
              Width = 48
            end>
        end
        object DBGridEh5: TDBGridEh
          Left = 726
          Top = 1
          Width = 273
          Height = 289
          Align = alClient
          DataSource = DS_Article
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
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          ReadOnly = True
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGridEh4DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.TitleButton = True
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Title.Caption = 'Stage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              Title.Caption = 'Pairs'
              Title.TitleButton = True
              Width = 35
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <
                item
                  FieldName = 'PurQty'
                  ValueType = fvtSum
                end>
              Title.TitleButton = True
              Width = 49
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <
                item
                  FieldName = 'UseStock'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Use Stock'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              Title.TitleButton = True
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'YPCCO'
              Footers = <>
              Title.Caption = 'OS Size'
            end>
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'BOM Revised Detail'
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 0
        Width = 1000
        Height = 326
        Align = alClient
        DataSource = DS_Revise
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
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Purchase
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material ID'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Material'
            Width = 400
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Title.Caption = 'Usage'
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Parts'
            Width = 37
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Merge data Check'
      ImageIndex = 6
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 35
        Align = alTop
        TabOrder = 0
        object Label12: TLabel
          Left = 7
          Top = 9
          Width = 50
          Height = 16
          Caption = 'Supplier'
        end
        object Edit7: TEdit
          Left = 65
          Top = 5
          Width = 120
          Height = 24
          TabOrder = 0
        end
        object Button6: TButton
          Left = 194
          Top = 5
          Width = 73
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 35
        Width = 1000
        Height = 291
        Align = alClient
        TabOrder = 1
        object DBGridEh7: TDBGridEh
          Left = 1
          Top = 1
          Width = 998
          Height = 289
          Align = alClient
          DataSource = DS_MergeNOCheck
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
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = Pop_Purchase
          ReadOnly = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 2
          OnDrawColumnCell = DBGridEh4DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              Title.TitleButton = True
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'KFJD'
              Footers = <>
              Title.Caption = 'Stage'
              Title.TitleButton = True
              Width = 38
            end
            item
              EditButtons = <>
              FieldName = 'PAIRS'
              Footers = <>
              Title.Caption = 'Pairs'
              Title.TitleButton = True
              Width = 42
            end
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Mat No'
              Title.TitleButton = True
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CLMC'
              Footers = <>
              Title.Caption = 'Mat name'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = 'Qty'
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              Title.TitleButton = True
              Width = 59
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = 'Use Stock'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
              Title.TitleButton = True
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'cgdate'
              Footers = <>
              Title.TitleButton = True
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'yqdate'
              Footers = <>
              Title.TitleButton = True
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'LYCC'
              Footers = <>
              Title.Caption = 'Size'
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'recs'
              Footers = <>
              Title.TitleButton = True
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'Sample Order'
              Title.TitleButton = True
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'CSBH'
              Footers = <>
              Title.Caption = 'Supp ID'
              Title.TitleButton = True
              Width = 52
            end>
        end
      end
    end
  end
  object YPZLZLS: TQuery
    AfterOpen = YPZLZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'select YPZLZLS.YPZLBH, YPZLZLS.YPDH, YPZLZLS.PAIRS, YPZLZLS.USER' +
        'ID,'
      
        '       YPZLZLS.USERDATE,YN,ypzl.ARTICLE,ypzl.KFJD,kfxxzl.JiJie ,' +
        'kfxxzl.FD'
      'from YPZLZLS'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        'left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl.SHEH' +
        'AO=ypzl.SHEHAO'
      'where YPZLZLS.YPZLBH=:YPZLBH')
    UpdateObject = UPDet
    Left = 452
    Top = 380
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLZLSYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.YPZLZLS.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLSYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.YPZLZLS.YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YPZLZLS.USERID'
      FixedChar = True
    end
    object YPZLZLSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YPZLZLS.USERDATE'
    end
    object YPZLZLSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YPZLZLS.YN'
      FixedChar = True
      Size = 1
    end
    object YPZLZLSARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.ypzl.ARTICLE'
      FixedChar = True
    end
    object YPZLZLSKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.ypzl.KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLZLSJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object YPZLZLSPAIRS: TFloatField
      FieldName = 'PAIRS'
    end
    object YPZLZLSFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object DS4: TDataSource
    DataSet = YPZLZLS
    Left = 452
    Top = 348
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update YPZLZLS'
      'set'
      '  YPZLBH = :YPZLBH,'
      '  YPDH = :YPDH,'
      '  PAIRS = :PAIRS,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH and'
      '  PAIRS = :OLD_PAIRS and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into YPZLZLS'
      '  (YPZLBH, YPDH, PAIRS, USERID, USERDATE, YN)'
      'values'
      '  (:YPZLBH, :YPDH, :PAIRS, :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from YPZLZLS'
      'where'
      '  YPZLBH = :OLD_YPZLBH and'
      '  YPDH = :OLD_YPDH and'
      '  PAIRS = :OLD_PAIRS and'
      '  USERID = :OLD_USERID and'
      '  USERDATE = :OLD_USERDATE and'
      '  YN = :OLD_YN')
    Left = 452
    Top = 412
  end
  object DS3: TDataSource
    DataSet = YPZLZL
    Left = 396
    Top = 348
  end
  object YPZLZL: TQuery
    AfterOpen = YPZLZLAfterOpen
    AfterScroll = YPZLZLAfterScroll
    OnCalcFields = YPZLZLCalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZL.*'
      'from YPZLZL'
      '')
    UpdateObject = UpMas
    Left = 396
    Top = 380
    object YPZLZLYPZLBH: TStringField
      FieldName = 'YPZLBH'
      Origin = 'DB.YPZLZL.YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.YPZLZL.GSBH'
      FixedChar = True
      Size = 4
    end
    object YPZLZLKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.YPZLZL.KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLZLJiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.YPZLZL.JiJie'
      FixedChar = True
    end
    object YPZLZLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YPZLZL.USERID'
      FixedChar = True
    end
    object YPZLZLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YPZLZL.YN'
      FixedChar = True
      Size = 1
    end
    object YPZLZLINSDATE: TDateTimeField
      FieldName = 'INSDATE'
      Origin = 'DB.YPZLZL.INSDATE'
    end
    object YPZLZLCALDATE: TDateTimeField
      FieldName = 'CALDATE'
      Origin = 'DB.YPZLZL.CALDATE'
    end
    object YPZLZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YPZLZL.USERDATE'
    end
    object YPZLZLPD: TStringField
      FieldName = 'PD'
      Origin = 'DB.YPZLZL.PD'
      FixedChar = True
      Size = 1
    end
    object YPZLZLmemo: TStringField
      FieldName = 'memo'
      Origin = 'DB.YPZLZL.memo'
      FixedChar = True
      Size = 50
    end
    object YPZLZLrevise: TStringField
      FieldKind = fkCalculated
      FieldName = 'revise'
      Size = 15
      Calculated = True
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update YPZLZL'
      'set'
      '  YPZLBH = :YPZLBH,'
      '  GSBH = :GSBH,'
      '  INSDATE = :INSDATE,'
      '  KFJD = :KFJD,'
      '  JiJie = :JiJie,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  memo =:memo,'
      '  YN = :YN'
      'where'
      '  YPZLBH = :OLD_YPZLBH ')
    InsertSQL.Strings = (
      'insert into YPZLZL'
      
        '  (YPZLBH, GSBH, INSDATE, KFJD, JiJie,memo, USERID, USERDATE, YN' +
        ',PD)'
      'values'
      
        '  (:YPZLBH, :GSBH, :INSDATE, :KFJD, :JiJie,:memo, :USERID, :USER' +
        'DATE, :YN,:PD)')
    DeleteSQL.Strings = (
      'delete from YPZLZL'
      'where'
      '  YPZLBH = :OLD_YPZLBH ')
    Left = 396
    Top = 412
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 272
    Top = 376
  end
  object YPZLZLS1: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    Left = 240
    Top = 376
  end
  object YPZLZLS11: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH,BWZL.ywsm BWMC,Y' +
        'PZLZLS1.CLBH,CLZL.YWPM as CLMC, '
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS1.LOSS,YPZLZLS' +
        '1.CLSL,CLZL.CLZMLB ,ypzl.ARTICLE'
      ' FROM YPZLZLS1'
      
        'LEFT JOIN BWZL  ON YPZLZLS1.BWBH = BWZL.bwdh                    ' +
        '           '
      'LEFT JOIN CLZL   ON YPZLZLS1.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS1.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS1.YPDH'
      'where 1=2'
      'order by YPZLZLS1.YPDH,YPZLZLS1.XH, YPZLZLS1.BWBH')
    Left = 500
    Top = 380
    object StringField11: TStringField
      DisplayWidth = 4
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object StringField12: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField13: TStringField
      DisplayWidth = 21
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object StringField14: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField15: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField16: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField17: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField19: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField3: TFloatField
      DisplayWidth = 5
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object FloatField4: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField20: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object YPZLZLS11YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLS11ARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
  end
  object DS5: TDataSource
    DataSet = YPZLZLS11
    Left = 500
    Top = 348
  end
  object YPZLZLS2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,YPZLZLS2.BWBH,BWZL.ywsm BWMC,YPZLZLS2.CLBH,' +
        'CLZL.YWPM as CLMC, '
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,YPZLZLS2.CLSL,CLZL.CL' +
        'ZMLB,YPZLZLS2.USAGE,'
      '            YPZLZLS2.MJBH,YPZLZLS2.CSBH,ypzl.ARTICLE'
      ' FROM YPZLZLS2'
      
        'LEFT JOIN BWZL  ON YPZLZLS2.BWBH = BWZL.bwdh                    ' +
        '           '
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      'where 1=2'
      
        'order by YPZLZLS2.YPDH  ASC, YPZLZLS2.BWBH  ASC,YPZLZLS2.MJBH DE' +
        'SC')
    Left = 548
    Top = 380
    object StringField2: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      DisplayWidth = 21
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object StringField4: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField2: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField10: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object StringField21: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLS2USAGE: TFloatField
      FieldName = 'USAGE'
    end
    object YPZLZLS2MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 10
    end
    object YPZLZLS2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object YPZLZLS2ARTICLE: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
  end
  object DS6: TDataSource
    DataSet = YPZLZLS2
    Left = 548
    Top = 348
  end
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 195
    Top = 376
  end
  object PopupMenu1: TPopupMenu
    Left = 500
    Top = 412
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 548
    Top = 412
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
  object Qry_Purchase: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,'
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS' +
        ' CLSL,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39' '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cgzl.purpose,cs.zlbh,count' +
        '(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate' +
        ') as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      
        '                 group by cs.clbh,cgzl.season,cgzl.purpose,cs.zl' +
        'bh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.season=kfx' +
        'xzl.jijie and cg.purpose=ypzl.kfjd and cg.zlbh=YPZL.Article'
      ''
      'where CLZL.CLZMLB='#39'N'#39' and 1=2'
      'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM ,'
      '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS ,cgkcuse.qty'
      'order by YPZLZLS2.YPDH  ASC'
      ''
      '')
    Left = 588
    Top = 380
    object StringField1: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField22: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField34: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField35: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField37: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField6: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField39: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField41: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object StringField42: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'recs'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object StringField43: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object Qry_PurchaseKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Qry_PurchasePAIRS: TFloatField
      FieldName = 'PAIRS'
    end
    object Qry_PurchaseUseStock: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
  end
  object DS_Purchase: TDataSource
    DataSet = Qry_Purchase
    Left = 588
    Top = 348
  end
  object Pop_Purchase: TPopupMenu
    Left = 588
    Top = 412
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem1Click
    end
  end
  object DS_Summary: TDataSource
    DataSet = Qry_Summary
    Left = 628
    Top = 348
  end
  object Qry_Summary: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as ' +
        'CLMC,'
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS' +
        ' CLSL,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39' '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cgzl.purpose,cs.zlbh,count' +
        '(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate' +
        ') as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      
        '                 group by cs.clbh,cgzl.season,cgzl.purpose,cs.zl' +
        'bh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.season=kfx' +
        'xzl.jijie and cg.purpose=ypzl.kfjd and cg.zlbh=YPZL.Article'
      ''
      'where CLZL.CLZMLB='#39'N'#39' and 1=2'
      
        'group by  YPZLZLS2.YPZLBH,YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM ' +
        ','
      '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS ,cgkcuse.qty'
      'order by YPZLZLS2.YPDH  ASC'
      ''
      '')
    Left = 628
    Top = 380
    object StringField8: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField18: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField23: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField25: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField1: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField27: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object IntegerField2: TIntegerField
      FieldName = 'recs'
    end
    object StringField29: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_SummaryYPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_SummarySafeStock: TStringField
      FieldName = 'SafeStock'
      Size = 10
    end
    object Qry_SummaryZSDH_VN: TStringField
      FieldName = 'ZSDH_VN'
      Size = 10
    end
  end
  object Pop_Summary: TPopupMenu
    Left = 628
    Top = 412
    object MenuItem2: TMenuItem
      Caption = 'Excel'
      OnClick = MenuItem2Click
    end
    object PurchaseOrder1: TMenuItem
      Caption = 'Generate Purchase Order'
      OnClick = PurchaseOrder1Click
    end
  end
  object DS_Article: TDataSource
    DataSet = Qry_Article
    Left = 668
    Top = 348
  end
  object Qry_Article: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Summary
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,SUM(YPZLZLS2.CLSL) ' +
        'AS CLSL,ypzl.ARTICLE ,ypzl.KFJD'
      
        '       ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS.PA' +
        'IRS,cgkcuse.qty as UseStock,ypzl.YPCCO,kfxxzl.FD'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cs.Stage,cs.zlbh,count(cs.' +
        'clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as' +
        ' yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      '                 group by cs.clbh,cgzl.season,cs.Stage,cs.zlbh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl' +
        '.kfjd and cg.zlbh=YPZL.Article'
      'where  YPZLZLS2.CLBH=:CLBH and YPZLZLS2.YPZLBH=:YPZLBH '
      
        'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,ypzl.ARTICLE ,yp' +
        'zl.KFJD'
      
        '          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS' +
        '.PAIRS ,cgkcuse.qty,ypzl.YPCCO,kfxxzl.FD'
      'order by ypzl.ARTICLE  ASC'
      ''
      '')
    Left = 668
    Top = 380
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object StringField24: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField28: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object FloatField5: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField32: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField36: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'recs'
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object StringField38: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object StringField40: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object FloatField7: TFloatField
      FieldName = 'PAIRS'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object Qry_ArticleYPCCO: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 6
    end
    object Qry_ArticleFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object DS_Revise: TDataSource
    DataSet = Qry_Revise
    Left = 708
    Top = 348
  end
  object Qry_Revise: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      ''
      '     select ypzls.YPDH,ypzls.BWBH,ypzls.CSBH,ZSZL.ZSYWJC,'
      '            '#39'ZZZZZZZZZZ'#39' as MJBH,ypzls.CLBH,CLZL.YWPM as CLMC,'
      
        '            ypzls.CLSL as USAGE,ypzl.ARTICLE ,ypzl.KFJD,BWZL.yws' +
        'm BWMC ,kfxxzl.FD'
      '     from YPZLZLS'
      '     left join ypzls on ypzls.YPDH=YPZLZLS.YPDH'
      '     LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        '     left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl' +
        '.SHEHAO=ypzl.SHEHAO'
      '     left join CLZL on CLZL.CLDH=ypzls.CLBH'
      '     LEFT JOIN ZSZL on ZSZL.ZSDH=ypzls.CSBH'
      '     LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      '     where CLZL.CLZMLB='#39'N'#39' and YPZLZLS.YPZLBH=:YPZLBH'
      
        '           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 wh' +
        'ere YPZLZLS2.CLBH=ypzls.CLBH AND YPZLZLS2.YPZLBH=:YPZLBH )'
      '     union all'
      
        '     select ypzls.YPDH,ypzls.BWBH,CLZHZL.zsdh as CSBH,ZSZL.ZSYWJ' +
        'C,'
      
        '            ypzls.CLBH as MJBH,CLZHZL.CLDH1 as CLBH,CLZL.YWPM as' +
        ' CLMC,'
      
        '            ypzls.CLSL as USAGE,ypzl.ARTICLE ,ypzl.KFJD ,BWZL.yw' +
        'sm BWMC ,kfxxzl.FD'
      '     from YPZLZLS'
      '     INNER join ypzls on ypzls.YPDH=YPZLZLS.YPDH'
      '     INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh'
      '     LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS.YPDH'
      
        '     left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl' +
        '.SHEHAO=ypzl.SHEHAO'
      '     left join CLZL on CLZL.CLDH=CLZHZL.CLDH1'
      '     LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.zsdh'
      '     LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      
        '     where CLZHZL.SYL>0 and CLZL.CLZMLB='#39'N'#39' and YPZLZLS.YPZLBH=:' +
        'YPZLBH'
      
        '           and not exists (select YPZLZLS2.CLBH from YPZLZLS2 wh' +
        'ere YPZLZLS2.CLBH=CLZHZL.CLDH1 AND YPZLZLS2.YPZLBH=:YPZLBH )'
      ''
      '')
    Left = 708
    Top = 380
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'YPZLBH'
        ParamType = ptUnknown
      end>
    object Qry_ReviseYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_ReviseCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ReviseZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_ReviseMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ReviseCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Qry_ReviseUSAGE: TFloatField
      FieldName = 'USAGE'
    end
    object Qry_ReviseARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Qry_ReviseKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Qry_ReviseBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object Qry_ReviseFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
  end
  object Qry_Article_PO: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,SUM(YPZLZLS2.CLSL) ' +
        'AS CLSL,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock,ypzl.YPCCO'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cs.Stage,cs.zlbh,count(cs.' +
        'clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as' +
        ' yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      '                 group by cs.clbh,cgzl.season,cs.Stage,cs.zlbh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.Stage=ypzl' +
        '.kfjd and cg.zlbh=YPZL.Article'
      'where  YPZLZLS2.CLBH=:CLBH and 1=2 '
      
        'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.DWBH,ypzl.ARTICLE ,yp' +
        'zl.KFJD'
      
        '          ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZLS' +
        '.PAIRS ,cgkcuse.qty,ypzl.YPCCO'
      'order by ypzl.ARTICLE  ASC'
      ''
      '')
    Left = 668
    Top = 412
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object StringField26: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object FloatField8: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField31: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField33: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object StringField45: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
    object StringField46: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 6
    end
  end
  object DS_MergeNOCheck: TDataSource
    DataSet = Qry_MergeNOCheck
    Left = 748
    Top = 348
  end
  object Qry_MergeNOCheck: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM as CLMC,'
      
        '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,SUM(YPZLZLS2.CLSL) AS' +
        ' CLSL,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS,cgkcuse.qty as UseStock'
      'FROM YPZLZLS2'
      
        'LEFT JOIN YPZLZLS on YPZLZLS.YPZLBH=YPZLZLS2.YPZLBH and YPZLZLS.' +
        'YPDH=YPZLZLS2.YPDH'
      'LEFT JOIN CLZL   ON YPZLZLS2.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLZLS2.CSBH'
      'LEFT JOIN ypzl  ON ypzl.YPDH=YPZLZLS2.YPDH'
      
        'left join cgkcuse on cgkcuse.zlbh=YPZLZLS2.ypdh and cgkcuse.clbh' +
        '=YPZLZLS2.clbh and cgkcuse.GSBH='#39'R&D'#39' '
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join (select cs.clbh,cgzl.season,cgzl.purpose,cs.zlbh,count' +
        '(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate' +
        ') as yqdate, min(cgzls.cgno) as cgno,sum(CS.Qty) as PurQty'
      '                 from cgzlss cs'
      '                 left join cgzl on cgzl.cgno=cs.cgno'
      
        '                 left join cgzls on cgzls.cgno=cs.cgno and cgzls' +
        '.clbh=cs.clbh'
      '                 where cgzl.CGLX='#39'6'#39
      
        '                 group by cs.clbh,cgzl.season,cgzl.purpose,cs.zl' +
        'bh'
      
        '                 ) cg on cg.clbh=YPZLZLS2.CLBH and cg.season=kfx' +
        'xzl.jijie and cg.purpose=ypzl.kfjd and cg.zlbh=YPZL.Article'
      ''
      'where CLZL.CLZMLB='#39'N'#39' and 1=2'
      'group by  YPZLZLS2.YPDH,YPZLZLS2.CLBH,CLZL.YWPM ,'
      '           CLZL.DWBH,CLZL.LYCC,ZSZL.ZSYWJC,'
      '            YPZLZLS2.CSBH,ypzl.ARTICLE ,ypzl.KFJD'
      
        '            ,cg.recs,cg.cgdate,cg.yqdate,cg.cgno,cg.PurQty,YPZLZ' +
        'LS.PAIRS ,cgkcuse.qty'
      'order by YPZLZLS2.YPDH  ASC'
      ''
      '')
    Left = 748
    Top = 380
    object StringField30: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField44: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField47: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField48: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField49: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField9: TFloatField
      DisplayWidth = 6
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField50: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object StringField51: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object StringField52: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ARTICLE'
    end
    object IntegerField4: TIntegerField
      FieldName = 'recs'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Purchase Date'
      FieldName = 'cgdate'
    end
    object DateTimeField6: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'yqdate'
    end
    object StringField53: TStringField
      DisplayLabel = 'Purchase NO'
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'PurQty'
      currency = False
    end
    object StringField54: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object FloatField10: TFloatField
      FieldName = 'PAIRS'
    end
    object CurrencyField9: TCurrencyField
      FieldName = 'UseStock'
      currency = False
    end
  end
end
