object DKorganization: TDKorganization
  Left = 0
  Top = 0
  Caption = 'DKorganization'
  ClientHeight = 639
  ClientWidth = 1184
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1184
    Height = 639
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'User'
      object Panel1: TPanel
        Left = 0
        Top = 65
        Width = 1176
        Height = 51
        Align = alTop
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1174
          Height = 44
          Align = alTop
          TabOrder = 0
          object NVMa: TLabel
            Left = 5
            Top = 6
            Width = 52
            Height = 16
            Caption = 'USERID:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 183
            Top = 6
            Width = 78
            Height = 16
            Caption = 'USERNAME:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Button1: TButton
            Left = 417
            Top = 2
            Width = 75
            Height = 25
            Caption = 'Truy v'#7845'n'
            TabOrder = 0
            OnClick = Button1Click
          end
          object UserIDEdit: TEdit
            Left = 54
            Top = 2
            Width = 123
            Height = 24
            TabOrder = 1
          end
          object USERNAMEEdit: TEdit
            Left = 267
            Top = 2
            Width = 144
            Height = 24
            TabOrder = 2
          end
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 116
        Width = 1176
        Height = 492
        Align = alClient
        DataSource = DS1
        DynProps = <>
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERID'
            Footer.FieldName = 'USERID'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERNAME'
            Footers = <>
            Width = 103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AGENT'
            Footers = <>
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATEDATE'
            Footers = <>
            Width = 95
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CREATER'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EMAIL'
            Footers = <>
            Width = 191
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AUTOLOGIN'
            Footers = <>
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'LASTDATE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SIGNATURE'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MSAD'
            Footers = <>
            Width = 42
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1176
        Height = 65
        Align = alTop
        TabOrder = 2
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
        object bbt1: TBitBtn
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
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Group'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 569
        Top = 97
        Width = 5
        Height = 511
        ExplicitLeft = 665
        ExplicitHeight = 505
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1176
        Height = 65
        Align = alTop
        TabOrder = 0
        object CC2: TBitBtn
          Left = 55
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
          OnClick = CC2Click
        end
        object CC4: TBitBtn
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
          OnClick = CC4Click
        end
        object CC3: TBitBtn
          Left = 103
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
          OnClick = CC3Click
        end
        object CC5: TBitBtn
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
          OnClick = CC5Click
        end
        object CC6: TBitBtn
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
          OnClick = CC6Click
        end
        object CC7: TBitBtn
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
        object CC1: TBitBtn
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
        object bbt2: TBitBtn
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
          OnClick = bbt2Click
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 65
        Width = 1176
        Height = 32
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 5
          Top = 6
          Width = 66
          Height = 16
          Caption = 'GROUIPID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 205
          Top = 6
          Width = 89
          Height = 16
          Caption = 'GROUPNAME:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 590
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Truy v'#7845'n'
          TabOrder = 0
          OnClick = Button2Click
        end
        object GroupIDEdit: TEdit
          Left = 75
          Top = 3
          Width = 123
          Height = 24
          TabOrder = 1
        end
        object GroupNameEdit: TEdit
          Left = 300
          Top = 2
          Width = 144
          Height = 24
          TabOrder = 2
        end
        object CheckBox1: TCheckBox
          Left = 464
          Top = 8
          Width = 120
          Height = 17
          Caption = 'For Organization'
          TabOrder = 3
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 97
        Width = 569
        Height = 511
        Align = alLeft
        DataSource = DS2
        DynProps = <>
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GROUPID'
            Footer.FieldName = 'GROUPID'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GROUPNAME'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'MSAD'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ISROLE'
            Footers = <>
            PickList.Strings = (
              'Y')
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel10: TPanel
        Left = 574
        Top = 97
        Width = 602
        Height = 511
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 3
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 49
          Width = 600
          Height = 461
          Align = alClient
          DataSource = DS4
          DynProps = <>
          FooterRowCount = 1
          SumList.Active = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          OnDrawColumnCell = DBGridEh5DrawColumnCell
          Columns = <
            item
              CellButtons = <>
              Color = clBtnFace
              DynProps = <>
              EditButtons = <>
              FieldName = 'GROUPID'
              Footers = <>
              Width = 61
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'USERNAME'
              Footers = <>
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'DESCRIPTION'
              Footers = <>
              Width = 87
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 600
          Height = 48
          Align = alTop
          TabOrder = 1
          object EE2: TBitBtn
            Left = 0
            Top = -1
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
            TabOrder = 0
            OnClick = EE2Click
          end
          object EE4: TBitBtn
            Left = 96
            Top = -2
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
            TabOrder = 1
            OnClick = EE4Click
          end
          object EE3: TBitBtn
            Left = 48
            Top = -1
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
            TabOrder = 2
            OnClick = EE3Click
          end
          object EE5: TBitBtn
            Left = 144
            Top = -1
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
            TabOrder = 3
            OnClick = EE5Click
          end
          object EE6: TBitBtn
            Left = 192
            Top = -1
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
            TabOrder = 4
            OnClick = EE6Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Organization'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 833
        Top = 131
        Width = 5
        Height = 477
        ExplicitLeft = 665
        ExplicitTop = 97
        ExplicitHeight = 505
      end
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1176
        Height = 66
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 5
          Top = 6
          Width = 59
          Height = 16
          Caption = 'ORG_NO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 199
          Top = 7
          Width = 76
          Height = 16
          Caption = 'ORG_DESC:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 450
          Top = 8
          Width = 70
          Height = 16
          Caption = 'ORG_KIND:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 675
          Top = 6
          Width = 52
          Height = 16
          Caption = 'USERID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 649
          Top = 36
          Width = 78
          Height = 16
          Caption = 'USERNAME:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 32
          Top = 37
          Width = 32
          Height = 16
          Caption = 'RNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 206
          Top = 38
          Width = 70
          Height = 16
          Caption = 'RNO TYPE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Button3: TButton
          Left = 888
          Top = 31
          Width = 75
          Height = 25
          Caption = 'Truy v'#7845'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button3Click
        end
        object ORG_NOEdit: TEdit
          Left = 70
          Top = 2
          Width = 123
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ORG_DESCEdit: TEdit
          Left = 281
          Top = 3
          Width = 144
          Height = 24
          TabOrder = 2
        end
        object ORG_KINDEdit: TEdit
          Left = 525
          Top = 4
          Width = 144
          Height = 24
          TabOrder = 3
          Text = '1000'
        end
        object USEREdit: TEdit
          Left = 733
          Top = 2
          Width = 144
          Height = 24
          TabOrder = 4
        end
        object UONameEdit: TEdit
          Left = 733
          Top = 32
          Width = 144
          Height = 24
          TabOrder = 5
        end
        object OrgCheckBox: TCheckBox
          Left = 890
          Top = 7
          Width = 239
          Height = 17
          Caption = 'Show Relative Level Orgination'
          TabOrder = 6
        end
        object RNOEdit: TEdit
          Left = 70
          Top = 32
          Width = 123
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object RNOTypeCombo: TComboBox
          Left = 280
          Top = 36
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 8
          Text = 'WF_ITService'
          Items.Strings = (
            'WF_ITService'
            'WF_SystemRequest')
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1176
        Height = 65
        Align = alTop
        TabOrder = 1
        object DD2: TBitBtn
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
          OnClick = DD2Click
        end
        object DD4: TBitBtn
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
          OnClick = DD4Click
        end
        object DD3: TBitBtn
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
          OnClick = DD3Click
        end
        object DD5: TBitBtn
          Left = 193
          Top = 10
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
          OnClick = DD5Click
        end
        object DD6: TBitBtn
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
          OnClick = DD6Click
        end
        object DD7: TBitBtn
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
        object DD1: TBitBtn
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
        object bbt3: TBitBtn
          Left = 351
          Top = 10
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
          OnClick = bbt3Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 131
        Width = 833
        Height = 477
        Align = alLeft
        DataSource = DS3
        DynProps = <>
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        OnEditButtonClick = DBGridEh4EditButtonClick
        Columns = <
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_NO'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_DESC'
            Footers = <>
            Width = 125
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_FULLNAME'
            Footers = <>
            Width = 157
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_KIND'
            Footers = <>
            Width = 78
          end
          item
            CellButtons = <>
            Color = clAqua
            DynProps = <>
            EditButtons = <>
            FieldName = 'UPPER_ORG'
            Footers = <>
            Width = 85
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'ORG_MAN'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'GROUPNAME'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRIPTION'
            Footers = <>
            ReadOnly = True
            Width = 82
          end
          item
            CellButtons = <>
            Color = clYellow
            DynProps = <>
            EditButtons = <>
            FieldName = 'LEVEL_NO'
            Footers = <>
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'LEVEL_DESC'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            Color = clAqua
            DynProps = <>
            EditButtons = <>
            FieldName = 'ROLE_ID'
            Footers = <>
            Width = 56
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'ROLE_GROUPNAME'
            Footers = <>
            ReadOnly = True
            Width = 129
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'ROLE_DESCRIPTION'
            Footers = <>
            ReadOnly = True
            Width = 55
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel8: TPanel
        Left = 838
        Top = 131
        Width = 338
        Height = 477
        Align = alClient
        TabOrder = 3
        object Splitter3: TSplitter
          Left = 1
          Top = 169
          Width = 336
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitTop = 257
          ExplicitWidth = 247
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 336
          Height = 168
          Align = alTop
          TabOrder = 0
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 334
            Height = 48
            Align = alTop
            TabOrder = 0
            object Label6: TLabel
              Left = 263
              Top = 13
              Width = 77
              Height = 19
              Caption = 'Chu Quan'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object FF2: TBitBtn
              Left = 0
              Top = -1
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
              TabOrder = 0
              OnClick = FF2Click
            end
            object FF4: TBitBtn
              Left = 96
              Top = -1
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
              TabOrder = 1
              OnClick = FF4Click
            end
            object FF3: TBitBtn
              Left = 48
              Top = -1
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
              TabOrder = 2
              OnClick = FF3Click
            end
            object FF5: TBitBtn
              Left = 144
              Top = -1
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
              TabOrder = 3
              OnClick = FF5Click
            end
            object FF6: TBitBtn
              Left = 192
              Top = -1
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
              TabOrder = 4
              OnClick = FF6Click
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 49
            Width = 334
            Height = 118
            Align = alClient
            DataSource = DS5
            DynProps = <>
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            OnDrawColumnCell = DBGridEh3DrawColumnCell
            Columns = <
              item
                CellButtons = <>
                Color = clBtnFace
                DynProps = <>
                EditButtons = <>
                FieldName = 'GROUPID'
                Footers = <>
                Width = 61
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USERNAME'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 172
          Width = 336
          Height = 304
          Align = alClient
          Caption = 'Panel13'
          TabOrder = 1
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 334
            Height = 48
            Align = alTop
            TabOrder = 0
            object Label7: TLabel
              Left = 263
              Top = 13
              Width = 111
              Height = 19
              Caption = 'Nguoi De Nghi'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object GG2: TBitBtn
              Left = 0
              Top = -1
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
              TabOrder = 0
              OnClick = GG2Click
            end
            object GG4: TBitBtn
              Left = 96
              Top = -1
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
              TabOrder = 1
              OnClick = GG4Click
            end
            object GG3: TBitBtn
              Left = 48
              Top = -1
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
              TabOrder = 2
              OnClick = GG3Click
            end
            object GG5: TBitBtn
              Left = 144
              Top = -1
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
              TabOrder = 3
              OnClick = GG5Click
            end
            object GG6: TBitBtn
              Left = 192
              Top = -1
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
              TabOrder = 4
              OnClick = GG6Click
            end
          end
          object DBGridEh6: TDBGridEh
            Left = 1
            Top = 49
            Width = 334
            Height = 254
            Align = alClient
            DataSource = DS6
            DynProps = <>
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleParams.MultiTitle = True
            OnDrawColumnCell = DBGridEh6DrawColumnCell
            Columns = <
              item
                CellButtons = <>
                Color = clBtnFace
                DynProps = <>
                EditButtons = <>
                FieldName = 'GROUPID'
                Footers = <>
                Width = 61
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'USERNAME'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'DESCRIPTION'
                Footers = <>
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = UsersQry
    Left = 120
    Top = 144
  end
  object UsersQry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select USERID,USERNAME,AGENT,CREATEDATE,CREATER,DESCRIPTION,EMAI' +
        'L,AUTOLOGIN,LASTDATE,SIGNATURE,MSAD  '
      'FROM [EEP].[LingYi].[dbo].[USERS] ')
    Left = 120
    Top = 192
    object UsersQryUSERID: TStringField
      DisplayWidth = 8
      FieldName = 'USERID'
    end
    object UsersQryUSERNAME: TWideStringField
      DisplayWidth = 15
      FieldName = 'USERNAME'
      Size = 30
    end
    object UsersQryAGENT: TWideStringField
      DisplayWidth = 17
      FieldName = 'AGENT'
    end
    object UsersQryCREATEDATE: TWideStringField
      DisplayWidth = 16
      FieldName = 'CREATEDATE'
      Size = 8
    end
    object UsersQryCREATER: TWideStringField
      DisplayWidth = 11
      FieldName = 'CREATER'
    end
    object UsersQryDESCRIPTION: TWideStringField
      DisplayWidth = 20
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object UsersQryEMAIL: TWideStringField
      DisplayWidth = 22
      FieldName = 'EMAIL'
      Size = 40
    end
    object UsersQryAUTOLOGIN: TWideStringField
      DisplayWidth = 6
      FieldName = 'AUTOLOGIN'
      Size = 1
    end
    object UsersQryLASTDATE: TWideStringField
      DisplayWidth = 8
      FieldName = 'LASTDATE'
      Size = 8
    end
    object UsersQrySIGNATURE: TWideStringField
      DisplayWidth = 15
      FieldName = 'SIGNATURE'
      Size = 30
    end
    object UsersQryMSAD: TWideStringField
      DisplayWidth = 1
      FieldName = 'MSAD'
      Size = 1
    end
  end
  object SYS_ORGQry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = SYS_ORGQryAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'Select SYS_ORG.*,GROUPS.GROUPNAME,GROUPS.DESCRIPTION,SYS_ORGLEVE' +
        'L.LEVEL_DESC'
      
        '       ,SYS_ORGROLES.ROLE_ID,GROUPS_ROLE.GROUPNAME as ROLE_GROUP' +
        'NAME,GROUPS_ROLE.DESCRIPTION as ROLE_DESCRIPTION'
      'from [EEP].[LingYi].[dbo].[SYS_ORG] SYS_ORG'
      
        'Left join [EEP].[LingYi].[dbo].[GROUPS] GROUPS on GROUPS.GROUPID' +
        '=SYS_ORG.ORG_MAN'
      
        'left join [EEP].[LingYi].[dbo].[SYS_ORGLEVEL] SYS_ORGLEVEL on SY' +
        'S_ORGLEVEL.LEVEL_NO=SYS_ORG.LEVEL_NO'
      
        'left join [EEP].[LingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES on SY' +
        'S_ORGROLES.ORG_NO=SYS_ORG.ORG_NO'
      
        'Left join [EEP].[LingYi].[dbo].[GROUPS] GROUPS_ROLE on GROUPS_RO' +
        'LE.GROUPID=SYS_ORGROLES.ROLE_ID'
      'where 1=1'
      ' and SYS_ORG.ORG_KIND = '#39'1000'#39
      ' and'
      ' ('
      
        '   (SYS_ORG.ORG_MAN in (Select GROUPID from  [EEP].[LingYi].[dbo' +
        '].[USERGROUPS] USERGROUPS where ((USERID like '#39'%'#39') and (USERID i' +
        'n (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS  where ' +
        'UserName like '#39'%VO_THI%'#39')))   GROUP BY GROUPID))'
      '    or'
      
        '   (SYS_ORG.ORG_NO in (Select SYS_ORGROLES.ORG_NO from  [EEP].[L' +
        'ingYi].[dbo].[SYS_ORGROLES] SYS_ORGROLES,[EEP].[LingYi].[dbo].[U' +
        'SERGROUPS] USERGROUPS where SYS_ORGROLES.ROLE_ID=USERGROUPS.GROU' +
        'PID and ((USERGROUPS.USERID like '#39'%'#39') and (USERGROUPS.USERID in'
      
        '     (select USERID from [EEP].[LingYi].[dbo].[USERS] USERS wher' +
        'e UserName like '#39'%VO_THI%'#39')))  GROUP BY SYS_ORGROLES.ORG_NO))'
      ' )')
    Left = 247
    Top = 191
    object SYS_ORGQryORG_NO: TWideStringField
      DisplayWidth = 10
      FieldName = 'ORG_NO'
      Size = 8
    end
    object SYS_ORGQryORG_DESC: TWideStringField
      DisplayWidth = 19
      FieldName = 'ORG_DESC'
      Size = 40
    end
    object SYS_ORGQryORG_KIND: TWideStringField
      DisplayWidth = 8
      FieldName = 'ORG_KIND'
      Size = 4
    end
    object SYS_ORGQryUPPER_ORG: TWideStringField
      DisplayWidth = 8
      FieldName = 'UPPER_ORG'
      Size = 8
    end
    object SYS_ORGQryORG_MAN: TWideStringField
      DisplayWidth = 10
      FieldName = 'ORG_MAN'
    end
    object SYS_ORGQryGROUPNAME: TWideStringField
      DisplayWidth = 30
      FieldName = 'GROUPNAME'
      Size = 50
    end
    object SYS_ORGQryDESCRIPTION: TWideStringField
      DisplayWidth = 10
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object SYS_ORGQryLEVEL_NO: TWideStringField
      DisplayWidth = 6
      FieldName = 'LEVEL_NO'
      Size = 6
    end
    object SYS_ORGQryLEVEL_DESC: TWideStringField
      DisplayWidth = 19
      FieldName = 'LEVEL_DESC'
      Size = 40
    end
    object SYS_ORGQryROLE_ID: TStringField
      FieldName = 'ROLE_ID'
    end
    object SYS_ORGQryROLE_GROUPNAME: TWideStringField
      FieldName = 'ROLE_GROUPNAME'
      Size = 50
    end
    object SYS_ORGQryROLE_DESCRIPTION: TWideStringField
      FieldName = 'ROLE_DESCRIPTION'
      Size = 100
    end
    object SYS_ORGQryORG_TREE: TWideStringField
      FieldName = 'ORG_TREE'
      Size = 40
    end
    object SYS_ORGQryEND_ORG: TWideStringField
      FieldName = 'END_ORG'
      Size = 4
    end
    object SYS_ORGQryORG_FULLNAME: TWideStringField
      FieldName = 'ORG_FULLNAME'
      Size = 254
    end
    object SYS_ORGQrySYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object SYS_ORGQrySYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object SYS_ORGQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = SYS_ORGQry
    Left = 248
    Top = 144
  end
  object GroupQry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = GroupQryAfterOpen
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from [EEP].[LingYi].[dbo].[GROUPS] GROUPS')
    Left = 184
    Top = 192
    object GroupQryGROUPID: TStringField
      DisplayWidth = 9
      FieldName = 'GROUPID'
    end
    object GroupQryGROUPNAME: TWideStringField
      DisplayWidth = 26
      FieldName = 'GROUPNAME'
      Size = 50
    end
    object GroupQryDESCRIPTION: TWideStringField
      DisplayWidth = 11
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object GroupQryMSAD: TWideStringField
      DisplayWidth = 6
      FieldName = 'MSAD'
      Size = 1
    end
    object GroupQryISROLE: TStringField
      DisplayWidth = 6
      FieldName = 'ISROLE'
      FixedChar = True
      Size = 1
    end
    object GroupQrySYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object GroupQrySYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object GroupQryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = GroupQry
    Left = 184
    Top = 144
  end
  object USERGroup2Qry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = USERGroup2QryAfterOpen
    DataSource = DS3
    Parameters = <
      item
        Name = 'ORG_MAN'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'Select USERGROUPS.GROUPID, USERS.USERID,USERS.USERNAME,USERS.DES' +
        'CRIPTION,USERGROUPS.SYSUSERID,USERGROUPS.SYSUSERDATE,USERGROUPS.' +
        'YN'
      'from  [EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS'
      
        'Left join [EEP].[LingYi].[dbo].[USERS] USERS on USERS.USERID=USE' +
        'RGROUPS.USERID'
      'where USERGROUPS.GROUPID=:ORG_MAN')
    Left = 690
    Top = 287
    object USERGroup2QryGROUPID: TStringField
      FieldName = 'GROUPID'
    end
    object USERGroup2QryUSERID: TStringField
      FieldName = 'USERID'
    end
    object USERGroup2QryUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Size = 30
    end
    object USERGroup2QryDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object USERGroup2QrySYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object USERGroup2QrySYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object USERGroup2QryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS5: TDataSource
    DataSet = USERGroup2Qry
    Left = 688
    Top = 240
  end
  object USERGroup1Qry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = USERGroup1QryAfterOpen
    DataSource = DS2
    Parameters = <
      item
        Name = 'GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'Select USERGROUPS.GROUPID, USERS.USERID,USERS.USERNAME,USERS.DES' +
        'CRIPTION,USERGROUPS.SYSUSERID,USERGROUPS.SYSUSERDATE,USERGROUPS.' +
        'YN'
      'from  [EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS'
      
        'Left join [EEP].[LingYi].[dbo].[USERS] USERS on USERS.USERID=USE' +
        'RGROUPS.USERID'
      'where USERGROUPS.GROUPID=:GROUPID')
    Left = 593
    Top = 287
    object USERGroup1QryGROUPID: TStringField
      FieldName = 'GROUPID'
    end
    object USERGroup1QryUSERID: TStringField
      FieldName = 'USERID'
    end
    object USERGroup1QryUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Size = 30
    end
    object USERGroup1QryDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object USERGroup1QrySYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object USERGroup1QrySYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object USERGroup1QryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS4: TDataSource
    DataSet = USERGroup1Qry
    Left = 592
    Top = 240
  end
  object USERGroup3Qry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = USERGroup3QryAfterOpen
    DataSource = DS3
    Parameters = <
      item
        Name = 'ROLE_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'Select USERGROUPS.GROUPID, USERS.USERID,USERS.USERNAME,USERS.DES' +
        'CRIPTION,USERGROUPS.SYSUSERID,USERGROUPS.SYSUSERDATE,USERGROUPS.' +
        'YN'
      'from  [EEP].[LingYi].[dbo].[USERGROUPS] USERGROUPS'
      
        'Left join [EEP].[LingYi].[dbo].[USERS] USERS on USERS.USERID=USE' +
        'RGROUPS.USERID'
      'where USERGROUPS.GROUPID=:ROLE_ID')
    Left = 746
    Top = 287
    object USERGroup3QryGROUPID: TStringField
      FieldName = 'GROUPID'
    end
    object USERGroup3QryUSERID: TStringField
      FieldName = 'USERID'
    end
    object USERGroup3QryUSERNAME: TWideStringField
      FieldName = 'USERNAME'
      Size = 30
    end
    object USERGroup3QryDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 100
    end
    object USERGroup3QrySYSUSERID: TStringField
      FieldName = 'SYSUSERID'
      Size = 10
    end
    object USERGroup3QrySYSUSERDATE: TDateTimeField
      FieldName = 'SYSUSERDATE'
    end
    object USERGroup3QryYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS6: TDataSource
    DataSet = USERGroup3Qry
    Left = 744
    Top = 240
  end
  object UpdateSQL2: TMyADOUpdateSQL
    DataSet = GroupQry
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'GROUPNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'DESCRIPTION'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'MSAD'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ISROLE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update [EEP].[LingYi].[dbo].[GROUPS]'
      ' Set'
      '   GROUPNAME =:GROUPNAME,'
      '   DESCRIPTION =:DESCRIPTION,'
      '   MSAD =:MSAD, '
      '   ISROLE =:ISROLE,'
      '   SYSUSERID =:SYSUSERID,'
      '   SYSUSERDATE =:SYSUSERDATE'
      'where'
      ' GROUPID=:OLD_GROUPID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM [EEP].[LingYi].[dbo].[GROUPS]'
      'WHERE'
      '  GROUPID= :OLD_GROUPID')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'GROUPNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'DESCRIPTION'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'MSAD'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ISROLE'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO  [EEP].[LingYi].[dbo].[GROUPS]'
      
        '  (GROUPID, GROUPNAME, DESCRIPTION, MSAD, ISROLE, SYSUSERID, SYS' +
        'USERDATE, YN )'
      'VALUES '
      
        '  (:GROUPID, :GROUPNAME, :DESCRIPTION, :MSAD, :ISROLE , :SYSUSER' +
        'ID, :SYSUSERDATE, :YN)')
    SQLDelete = 
      'DELETE FROM [EEP].[LingYi].[dbo].[GROUPS]'#13#10'WHERE'#13#10'  GROUPID= :OL' +
      'D_GROUPID'
    SQLInsert = 
      'INSERT INTO  [EEP].[LingYi].[dbo].[GROUPS]'#13#10'  (GROUPID, GROUPNAM' +
      'E, DESCRIPTION, MSAD, ISROLE, SYSUSERID, SYSUSERDATE, YN )'#13#10'VALU' +
      'ES '#13#10'  (:GROUPID, :GROUPNAME, :DESCRIPTION, :MSAD, :ISROLE , :SY' +
      'SUSERID, :SYSUSERDATE, :YN)'
    SQLModify = 
      'Update [EEP].[LingYi].[dbo].[GROUPS]'#13#10' Set'#13#10'   GROUPNAME =:GROUP' +
      'NAME,'#13#10'   DESCRIPTION =:DESCRIPTION,'#13#10'   MSAD =:MSAD, '#13#10'   ISROL' +
      'E =:ISROLE,'#13#10'   SYSUSERID =:SYSUSERID,'#13#10'   SYSUSERDATE =:SYSUSER' +
      'DATE'#13#10'where'#13#10' GROUPID=:OLD_GROUPID'
    Left = 184
    Top = 248
  end
  object UpdateSQL4: TMyADOUpdateSQL
    DataSet = USERGroup1Qry
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'
      ' Set'
      '   USERID =:USERID'
      '   SYSUSERID =:SYSUSERID,'
      '   SYSUSERDATE =:SYSUSERDATE'
      'where'
      ' GROUPID=:OLD_GROUPID'
      ' AND USERID=:OLD_USERID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'
      'WHERE'
      '  GROUPID= :OLD_GROUPID'
      '  AND  USERID =:OLD_USERID')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'
      '  (USERID, GROUPID, SYSUSERID, SYSUSERDATE, YN )'
      'VALUES '
      '  (:USERID, :GROUPID, :SYSUSERID, :SYSUSERDATE, :YN )')
    SQLDelete = 
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'WHERE'#13#10'  GROUPID=' +
      ' :OLD_GROUPID'#13#10'  AND  USERID =:OLD_USERID'
    SQLInsert = 
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'  (USERID, GROUP' +
      'ID, SYSUSERID, SYSUSERDATE, YN )'#13#10'VALUES '#13#10'  (:USERID, :GROUPID,' +
      ' :SYSUSERID, :SYSUSERDATE, :YN )'
    SQLModify = 
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10' Set'#13#10'   USERID =:USER' +
      'ID'#13#10'   SYSUSERID =:SYSUSERID,'#13#10'   SYSUSERDATE =:SYSUSERDATE'#13#10'whe' +
      're'#13#10' GROUPID=:OLD_GROUPID'#13#10' AND USERID=:OLD_USERID'
    Left = 592
    Top = 344
  end
  object UpdateSQL5: TMyADOUpdateSQL
    DataSet = USERGroup2Qry
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'
      ' Set'
      '   USERID =:USERID,'
      '   SYSUSERID =:SYSUSERID,'
      '   SYSUSERDATE =:SYSUSERDATE'
      'where'
      ' GROUPID=:OLD_GROUPID'
      ' AND USERID=:OLD_USERID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'
      'WHERE'
      '  GROUPID= :OLD_GROUPID'
      '  AND  USERID =:OLD_USERID')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'
      '  (USERID, GROUPID, SYSUSERID, SYSUSERDATE, YN )'
      'VALUES '
      '  (:USERID, :GROUPID, :SYSUSERID, :SYSUSERDATE, :YN )')
    SQLDelete = 
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'WHERE'#13#10'  GROUPID=' +
      ' :OLD_GROUPID'#13#10'  AND  USERID =:OLD_USERID'
    SQLInsert = 
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'  (USERID, GROUP' +
      'ID, SYSUSERID, SYSUSERDATE, YN )'#13#10'VALUES '#13#10'  (:USERID, :GROUPID,' +
      ' :SYSUSERID, :SYSUSERDATE, :YN )'
    SQLModify = 
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10' Set'#13#10'   USERID =:USER' +
      'ID,'#13#10'   SYSUSERID =:SYSUSERID,'#13#10'   SYSUSERDATE =:SYSUSERDATE'#13#10'wh' +
      'ere'#13#10' GROUPID=:OLD_GROUPID'#13#10' AND USERID=:OLD_USERID'
    Left = 696
    Top = 344
  end
  object UpdateSQL6: TMyADOUpdateSQL
    DataSet = USERGroup3Qry
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'
      ' Set'
      '   USERID =:USERID,'
      '   SYSUSERID =:SYSUSERID,'
      '   SYSUSERDATE =:SYSUSERDATE'
      'where'
      ' GROUPID=:OLD_GROUPID'
      ' AND USERID=:OLD_USERID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'OLD_USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'
      'WHERE'
      '  GROUPID= :OLD_GROUPID'
      '  AND  USERID =:OLD_USERID')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'USERID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'GROUPID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'
      '  (USERID, GROUPID, SYSUSERID, SYSUSERDATE, YN )'
      'VALUES '
      '  (:USERID, :GROUPID, :SYSUSERID, :SYSUSERDATE, :YN )')
    SQLDelete = 
      'DELETE FROM [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'WHERE'#13#10'  GROUPID=' +
      ' :OLD_GROUPID'#13#10'  AND  USERID =:OLD_USERID'
    SQLInsert = 
      'INSERT INTO  [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10'  (USERID, GROUP' +
      'ID, SYSUSERID, SYSUSERDATE, YN )'#13#10'VALUES '#13#10'  (:USERID, :GROUPID,' +
      ' :SYSUSERID, :SYSUSERDATE, :YN )'
    SQLModify = 
      'Update [EEP].[LingYi].[dbo].[USERGROUPS]'#13#10' Set'#13#10'   USERID =:USER' +
      'ID,'#13#10'   SYSUSERID =:SYSUSERID,'#13#10'   SYSUSERDATE =:SYSUSERDATE'#13#10'wh' +
      'ere'#13#10' GROUPID=:OLD_GROUPID'#13#10' AND USERID=:OLD_USERID'
    Left = 744
    Top = 344
  end
  object UpdateSQL3: TMyADOUpdateSQL
    DataSet = SYS_ORGQry
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'ORG_DESC'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'ORG_KIND'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'UPPER_ORG'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'ORG_MAN'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'LEVEL_NO'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'ORG_TREE'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'END_ORG'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ORG_FULLNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 254
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'OLD_ORG_NO'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'Update [EEP].[LingYi].[dbo].[SYS_ORG]'
      ' Set'
      '   ORG_DESC =:ORG_DESC,'
      '   ORG_KIND =:ORG_KIND,'
      '   UPPER_ORG =:UPPER_ORG, '
      '   ORG_MAN =:ORG_MAN,'
      '   LEVEL_NO =:LEVEL_NO,'
      '   ORG_TREE =:ORG_TREE,'
      '   END_ORG =:END_ORG,'
      '   ORG_FULLNAME =:ORG_FULLNAME,'
      '   SYSUSERID =:SYSUSERID,'
      '   SYSUSERDATE =:SYSUSERDATE'
      'where'
      ' ORG_NO=:OLD_ORG_NO')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_ORG_NO'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM [EEP].[LingYi].[dbo].[SYS_ORG]'
      'WHERE'
      '  ORG_NO= :OLD_ORG_NO')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'ORG_NO'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'ORG_DESC'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'ORG_KIND'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'UPPER_ORG'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end
      item
        Name = 'ORG_MAN'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'LEVEL_NO'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end
      item
        Name = 'ORG_TREE'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 40
        Value = Null
      end
      item
        Name = 'END_ORG'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'ORG_FULLNAME'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 254
        Value = Null
      end
      item
        Name = 'SYSUSERID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'SYSUSERDATE'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'Insert into  [EEP].[LingYi].[dbo].[SYS_ORG]'
      
        ' (ORG_NO, ORG_DESC, ORG_KIND, UPPER_ORG, ORG_MAN, LEVEL_NO, ORG_' +
        'TREE, END_ORG, ORG_FULLNAME, SYSUSERID, SYSUSERDATE, YN )'
      'VALUES '
      
        ' (:ORG_NO, :ORG_DESC, :ORG_KIND, :UPPER_ORG, :ORG_MAN, :LEVEL_NO' +
        ', :ORG_TREE, :END_ORG, :ORG_FULLNAME, :SYSUSERID, :SYSUSERDATE, ' +
        ':YN )')
    SQLDelete = 
      'DELETE FROM [EEP].[LingYi].[dbo].[SYS_ORG]'#13#10'WHERE'#13#10'  ORG_NO= :OL' +
      'D_ORG_NO'
    SQLInsert = 
      'Insert into  [EEP].[LingYi].[dbo].[SYS_ORG]'#13#10' (ORG_NO, ORG_DESC,' +
      ' ORG_KIND, UPPER_ORG, ORG_MAN, LEVEL_NO, ORG_TREE, END_ORG, ORG_' +
      'FULLNAME, SYSUSERID, SYSUSERDATE, YN )'#13#10'VALUES '#13#10' (:ORG_NO, :ORG' +
      '_DESC, :ORG_KIND, :UPPER_ORG, :ORG_MAN, :LEVEL_NO, :ORG_TREE, :E' +
      'ND_ORG, :ORG_FULLNAME, :SYSUSERID, :SYSUSERDATE, :YN )'
    SQLModify = 
      'Update [EEP].[LingYi].[dbo].[SYS_ORG]'#13#10' Set'#13#10'   ORG_DESC =:ORG_D' +
      'ESC,'#13#10'   ORG_KIND =:ORG_KIND,'#13#10'   UPPER_ORG =:UPPER_ORG, '#13#10'   OR' +
      'G_MAN =:ORG_MAN,'#13#10'   LEVEL_NO =:LEVEL_NO,'#13#10'   ORG_TREE =:ORG_TRE' +
      'E,'#13#10'   END_ORG =:END_ORG,'#13#10'   ORG_FULLNAME =:ORG_FULLNAME,'#13#10'   S' +
      'YSUSERID =:SYSUSERID,'#13#10'   SYSUSERDATE =:SYSUSERDATE'#13#10'where'#13#10' ORG' +
      '_NO=:OLD_ORG_NO'
    Left = 248
    Top = 248
  end
  object tmpQry: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 56
    Top = 192
  end
end
