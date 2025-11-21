object ScheduleUpload: TScheduleUpload
  Left = 451
  Top = 233
  Width = 1386
  Height = 654
  Caption = 'Production Plan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PC_Main: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 615
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Monthly Plan'
      object DBGridEh_S: TDBGridEh
        Left = 0
        Top = 113
        Width = 1362
        Height = 471
        Align = alClient
        DataSource = DS_S
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        HorzScrollBar.Tracking = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnGetCellParams = DBGridEh_SGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'version'
            Footers = <>
            HideDuplicates = True
            Title.Caption = 'Version'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'building_no'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = 'Building'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'lean_no'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = 'Lean'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'schedule_date'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = 'Date'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'ry_index'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Seq'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ly'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LY'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ry'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'vt'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'VT'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'chat_lieu'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CHAT LIEU'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'last'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'LAST'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'buy'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BUY'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'bts'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BTS'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'cutting'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35009#26039'/C'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'sku'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'stitching'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37341#36554'/M'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'sl'
            Footers = <>
            ReadOnly = True
            Title.Caption = #25976#37327'/SL'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'assembly'
            Footers = <>
            ReadOnly = True
            Title.Caption = #25104#22411'/G'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'csd'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CSD'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'country'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22283#23478'/N'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'De_ok_date'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'hangbu'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'pairs_in'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'pairs_in_lack'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'EXE_date'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'user_id'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User ID'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'user_date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User Date'
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 147
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 270
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 455
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_S1: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.041666666660000000
          Format = 'yyyy/MM/dd'
          Time = 44896.041666666660000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DTP_S1Change
        end
        object DTP_S2: TDateTimePicker
          Left = 159
          Top = 12
          Width = 90
          Height = 24
          Date = 44926.958333333340000000
          Format = 'yyyy/MM/dd'
          Time = 44926.958333333340000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DTP_S2Change
        end
        object Button_QS: TButton
          Left = 622
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button_QSClick
        end
        object CB_Building_S: TComboBox
          Left = 329
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          OnChange = CB_Building_SChange
        end
        object CB_Lean_S: TComboBox
          Left = 490
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 2
        object BS1: TBitBtn
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
          TabOrder = 6
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
        object BS2: TBitBtn
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
          TabOrder = 5
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
        object BS3: TBitBtn
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
          TabOrder = 4
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
        object BS4: TBitBtn
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
        object BS5: TBitBtn
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
          TabOrder = 2
          OnClick = BS5Click
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
        object BS6: TBitBtn
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
          TabOrder = 1
          OnClick = BS6Click
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
        object BS7: TBitBtn
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
          TabOrder = 0
          OnClick = BS7Click
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
        object BS8: TBitBtn
          Left = 368
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BS8Click
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
        object BS9: TBitBtn
          Left = 424
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = BS9Click
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
        object TBUpload: TBitBtn
          Left = 688
          Top = 8
          Width = 65
          Height = 49
          Caption = 'TB Upload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = TBUploadClick
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'GCD Plan'
      ImageIndex = 5
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 0
        object BGCD1: TBitBtn
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
          TabOrder = 7
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
        object BGCD2: TBitBtn
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
          TabOrder = 4
          OnClick = BGCD2Click
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
        object BGCD3: TBitBtn
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
          TabOrder = 3
          OnClick = BGCD3Click
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
        object BGCD4: TBitBtn
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
          TabOrder = 2
          OnClick = BGCD4Click
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
        object BGCD5: TBitBtn
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
          TabOrder = 1
          OnClick = BGCD5Click
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
        object BGCD6: TBitBtn
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
          TabOrder = 0
          OnClick = BGCD6Click
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
        object BGCD8: TBitBtn
          Left = 368
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BGCD8Click
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
        object BGCD9: TBitBtn
          Left = 424
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BGCD9Click
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
        object BGCD7: TBitBtn
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
          TabOrder = 8
          OnClick = BGCD7Click
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
      end
      object Panel11: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label18: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 156
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 341
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_GCD: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DTP_GCDChange
        end
        object Button_QGCD: TButton
          Left = 508
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button_QGCDClick
        end
        object CB_Building_GCD: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnChange = CB_Building_GCDChange
        end
        object CB_Lean_GCD: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
        end
      end
      object DBGridEh_GCD: TDBGridEh
        Left = 0
        Top = 113
        Width = 1362
        Height = 471
        Align = alClient
        DataSource = DS_GCD
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        HorzScrollBar.Tracking = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnGetCellParams = DBGridEh_GCDGetCellParams
        OnKeyPress = DBGridEh_GCDKeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26847#21029'|Building'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            ReadOnly = True
            Title.Caption = #32218#21029'|Lean'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35336#30059#26085#26399'|Plan Date'
            Width = 80
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Title.Caption = #38918#24207'|Seq'
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'RY'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|RY'
            Width = 100
            OnEditButtonClick = DBGridEh_GCDColumns3EditButtonClick
          end
          item
            DisplayFormat = 'M/d'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#26085#26399'|XH'
            Width = 60
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'NT'
            Footers = <>
            PickList.Strings = (
              #24067' (VAI)'
              #30382' (DA)')
            Title.Caption = #39006#22411'|NT'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BUY'#21029'|MG'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#34399'|SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RYPairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|RY Pairs'
            Width = 60
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #27966#24037#38617#25976'|Pairs'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#39636'|LY'
            Width = 100
          end
          item
            Color = clYellow
            DisplayFormat = 'T#'
            EditButtons = <>
            FieldName = 'CycleStart'
            Footers = <>
            Title.Caption = #22238#36681#25976'|Start'
            Width = 40
          end
          item
            Color = clYellow
            DisplayFormat = 'T#'
            EditButtons = <>
            FieldName = 'CycleEnd'
            Footers = <>
            Title.Caption = #22238#36681#25976'|End'
            Width = 40
          end
          item
            ButtonStyle = cbsNone
            Color = clYellow
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            PickList.Strings = (
              '10A TRANG (10A '#30333')'
              'DA ('#30382')'
              'DA TRANG SAO ('#26143#26143#26376#20142#30382')'
              'DAY TALON IN ('#21360#21047#37002#26781')'
              'DON HANG XUAT NHANH ('#24555#36895#35330#21934')'
              'DT THAO KHAC MAU ('#38795#22666#33394#24046')'
              'EP TALON THAN ('#22739#37002#26781')'
              'GIAY NONG LANH ('#21322#20919#36028#21322#21152#30827')'
              'GO THU ('#25104#22411#35430#20316')'
              'HIEN TRUONG LAM THU ('#37327#29986#35430#20570')'
              'KIEM FDPA (FDPA'#27298#26597')'
              'KIEM PEAC (PEAC'#27298#26597')'
              'MTHQ ('#27424#38867#22283#21514#29260')'
              'NHAP KHO ('#20837#24235')'
              'PU TRANG SAO ('#26143#26143#26376#20142'PU)'
              'TAN DINH TALON THAN ('#37002#26781#25171#30524#25187')'
              'THIEU DAY GIAY ('#27424#38795#24118')'
              'THIEU DE TRUNG THAO ('#27424#38795#22666')'
              'THIEU HOP ('#27424#20839#30418')'
              'THIEU MAT TREO ('#27424#21514#29260')'
              'THIEU NHAN ('#27424#27161')'
              'THIEU NHAN HOP ('#27424#20839#30418#27161')'
              'THIEU NHAN TAIWAN ('#27424#21488#28771#27161')'
              'THIEU NHAN THUNG ('#27424#22806#31665#27161')'
              'THIEU THUNG ('#27424#22806#31665')'
              'THIEU THUNG HOP ('#27424#20839#30418'/'#22806#31665')'
              'THU NGHIEM GIAY NOI DIA ('#20839#37559#28204#35430')'
              'THU NGHIEM TQ CHUA KET QUA ('#20013#22283#28204#35430' '#36996#27794#26377#32080#26524')'
              'THU NGHIEM TRUNG QUOC ('#20013#22283#28204#35430')'
              'THU NGHIEM TURKEY ('#22303#32819#20854#28204#35430')'
              'VAI ('#24067')'
              'VAI TRANG SAO ('#26143#26143#26376#20142#24067')'
              #32654#22283'JOURNEY'#35330#21934#35531#27880#24847)
            Title.Caption = #20633#35387'|Remark'
            Width = 300
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = '3-Day Plan'
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 156
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 341
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 501
          Top = 16
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_3D: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DTP_3DChange
        end
        object Button_Q3D: TButton
          Left = 684
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button_Q3DClick
        end
        object CB_Building_3D: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnChange = CB_Building_3DChange
        end
        object CB_Lean_3D: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
        end
        object CB_Type_3D: TComboBox
          Left = 538
          Top = 12
          Width = 119
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
          TabOrder = 4
          Text = '3-Day'
          Items.Strings = (
            '3-Day'
            '3-Day Them')
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 113
        Width = 1362
        Height = 471
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 1
        object DBGridEh_3D: TDBGridEh
          Left = 0
          Top = 0
          Width = 1422
          Height = 479
          Align = alClient
          DataSource = DS_3D
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          HorzScrollBar.Tracking = True
          SumList.Active = True
          SumList.VirtualRecords = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VertScrollBar.Tracking = True
          OnGetCellParams = DBGridEh_3DGetCellParams
          OnKeyPress = DBGridEh_3DKeyPress
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Building'
              Footers = <>
              ReadOnly = True
              Title.Caption = #26847#21029'|Building'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Lean'
              Footers = <>
              ReadOnly = True
              Title.Caption = #32218#21029'|Lean'
              Width = 60
            end
            item
              DisplayFormat = 'yyyy/MM/dd'
              EditButtons = <>
              FieldName = 'PlanDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35336#30059#26085#26399'|Plan Date'
              Width = 80
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'Seq'
              Footers = <>
              Title.Caption = #38918#24207'|Seq'
              Width = 40
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'RY'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = #35330#21934#32232#34399'|RY'
              Width = 100
              OnEditButtonClick = DBGridEh_3DColumns0EditButtonClick
            end
            item
              DisplayFormat = 'M/d'
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = #20986#36008#26085#26399'|XH'
              Width = 60
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'NT'
              Footers = <>
              PickList.Strings = (
                #24067' (VAI)'
                #30382' (DA)')
              Title.Caption = #39006#22411'|NT'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'BUYNO'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'BUY'#21029'|MG'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footers = <>
              ReadOnly = True
              Title.Caption = #22411#34399'|SKU'
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'RYPairs'
              Footers = <>
              ReadOnly = True
              Title.Caption = #35330#21934#38617#25976'|RY Pairs'
              Width = 60
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'Pairs'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #27966#24037#38617#25976'|Pairs'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'DAOMH'
              Footers = <>
              ReadOnly = True
              Title.Caption = #22411#39636'|LY'
              Width = 100
            end
            item
              Color = clYellow
              DisplayFormat = 'T#'
              EditButtons = <>
              FieldName = 'CycleStart'
              Footers = <>
              Title.Caption = #22238#36681#25976'|Start'
              Width = 40
            end
            item
              Color = clYellow
              DisplayFormat = 'T#'
              EditButtons = <>
              FieldName = 'CycleEnd'
              Footers = <>
              Title.Caption = #22238#36681#25976'|End'
              Width = 40
            end
            item
              ButtonStyle = cbsNone
              Color = clYellow
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              PickList.Strings = (
                '10A TRANG (10A '#30333')'
                'DA ('#30382')'
                'DA TRANG SAO ('#26143#26143#26376#20142#30382')'
                'DAY TALON IN ('#21360#21047#37002#26781')'
                'DON HANG XUAT NHANH ('#24555#36895#35330#21934')'
                'DT THAO KHAC MAU ('#38795#22666#33394#24046')'
                'EP TALON THAN ('#22739#37002#26781')'
                'GIAY NONG LANH ('#21322#20919#36028#21322#21152#30827')'
                'GO THU ('#25104#22411#35430#20316')'
                'HIEN TRUONG LAM THU ('#37327#29986#35430#20570')'
                'KIEM FDPA (FDPA'#27298#26597')'
                'KIEM PEAC (PEAC'#27298#26597')'
                'MTHQ ('#27424#38867#22283#21514#29260')'
                'NHAP KHO ('#20837#24235')'
                'PU TRANG SAO ('#26143#26143#26376#20142'PU)'
                'TAN DINH TALON THAN ('#37002#26781#25171#30524#25187')'
                'THIEU DAY GIAY ('#27424#38795#24118')'
                'THIEU DE TRUNG THAO ('#27424#38795#22666')'
                'THIEU HOP ('#27424#20839#30418')'
                'THIEU MAT TREO ('#27424#21514#29260')'
                'THIEU NHAN ('#27424#27161')'
                'THIEU NHAN HOP ('#27424#20839#30418#27161')'
                'THIEU NHAN TAIWAN ('#27424#21488#28771#27161')'
                'THIEU NHAN THUNG ('#27424#22806#31665#27161')'
                'THIEU THUNG ('#27424#22806#31665')'
                'THIEU THUNG HOP ('#27424#20839#30418'/'#22806#31665')'
                'THU NGHIEM GIAY NOI DIA ('#20839#37559#28204#35430')'
                'THU NGHIEM TQ CHUA KET QUA ('#20013#22283#28204#35430' '#36996#27794#26377#32080#26524')'
                'THU NGHIEM TRUNG QUOC ('#20013#22283#28204#35430')'
                'THU NGHIEM TURKEY ('#22303#32819#20854#28204#35430')'
                'VAI ('#24067')'
                'VAI TRANG SAO ('#26143#26143#26376#20142#24067')'
                #32654#22283'JOURNEY'#35330#21934#35531#27880#24847)
              Title.Caption = #20633#35387'|Remark'
              Width = 300
            end>
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 2
        object B3D1: TBitBtn
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
          TabOrder = 7
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
        object B3D2: TBitBtn
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
          TabOrder = 4
          OnClick = B3D2Click
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
        object B3D3: TBitBtn
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
          TabOrder = 3
          OnClick = B3D3Click
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
        object B3D4: TBitBtn
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
          TabOrder = 2
          OnClick = B3D4Click
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
        object B3D5: TBitBtn
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
          TabOrder = 1
          OnClick = B3D5Click
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
        object B3D6: TBitBtn
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
          TabOrder = 0
          OnClick = B3D6Click
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
        object B3D8: TBitBtn
          Left = 368
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = B3D8Click
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
        object B3D9: TBitBtn
          Left = 424
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = B3D9Click
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
        object B3D7: TBitBtn
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
          TabOrder = 8
          OnClick = B3D7Click
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
      end
    end
    object TabSheet7: TTabSheet
      Caption = '1-Day Plan'
      ImageIndex = 4
      object Panel8: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label15: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 156
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 341
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 501
          Top = 16
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_1D: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DTP_1DChange
        end
        object Button_Q1D: TButton
          Left = 684
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button_Q1DClick
        end
        object CB_Building_1D: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnChange = CB_Building_1DChange
        end
        object CB_Lean_1D: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
        end
        object CB_Type_1D: TComboBox
          Left = 538
          Top = 12
          Width = 119
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
          TabOrder = 4
          Text = '1-Day'
          Items.Strings = (
            '1-Day'
            '1-Day Them'
            'THU NGHIEM'
            'IN - EP, CGS')
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 1
        object B1D1: TBitBtn
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
          TabOrder = 5
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
        object B1D2: TBitBtn
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
          TabOrder = 4
          OnClick = B1D2Click
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
        object B1D3: TBitBtn
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
          TabOrder = 3
          OnClick = B1D3Click
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
        object B1D4: TBitBtn
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
          TabOrder = 2
          OnClick = B1D4Click
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
        object B1D5: TBitBtn
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
          TabOrder = 1
          OnClick = B1D5Click
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
        object B1D6: TBitBtn
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
          TabOrder = 0
          OnClick = B1D6Click
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
        object B1D8: TBitBtn
          Left = 368
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Upload'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = B1D8Click
          Glyph.Data = {
            36050000424D360500000000000036040000280000000E000000100000000100
            08000000000000010000120B0000120B00000001000000000000FFFFFF000000
            00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
            8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
            39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
            E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
            9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
            8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
            6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
            F800949494006565650000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000101010101
            01010101000000000000011D373838383838393A3B0000000000011E00000000
            0000000D360000000000011E0000303132323233343235000000011E002B2C2D
            2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
            26272800000000010000011E001A0F0023242500000000010000011E001A0F00
            20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
            1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
            00000000101112130000000000080900000000000A0B010C0000000000000203
            0404040405060700000000000000000101010101010000000000}
          Layout = blGlyphTop
        end
        object B1D9: TBitBtn
          Left = 424
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = B1D9Click
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
        object B1D7: TBitBtn
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
          TabOrder = 8
          OnClick = B1D7Click
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
        object B1D10: TButton
          Left = 504
          Top = 8
          Width = 81
          Height = 49
          Caption = 'Sequence Check'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          WordWrap = True
          OnClick = B1D10Click
        end
      end
      object DBGridEh_1D: TDBGridEh
        Left = 0
        Top = 113
        Width = 1362
        Height = 471
        Align = alClient
        DataSource = DS_1D
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        HorzScrollBar.Tracking = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnGetCellParams = DBGridEh_1DGetCellParams
        OnKeyPress = DBGridEh_1DKeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PlanType'
            Footers = <>
            KeyList.Strings = (
              '1-Day'
              '1-Day U'
              'Testing'
              'R2')
            PickList.Strings = (
              '1-Day'
              'Urgency'
              'THU NGHIEM'
              'IN - EP, CGS')
            ReadOnly = True
            Title.Caption = #35336#30059#39006#22411'|Type'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26847#21029'|Building'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Lean'
            Footers = <>
            ReadOnly = True
            Title.Caption = #32218#21029'|Lean'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35336#30059#26085#26399'|Plan Date'
            Width = 80
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Seq'
            Footers = <>
            Title.Caption = #38918#24207'|Seq'
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'RY'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|RY'
            Width = 100
            OnEditButtonClick = DBGridEh_1DColumns0EditButtonClick
          end
          item
            DisplayFormat = 'M/d'
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#26085#26399'|NXH'
            Width = 60
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'NT'
            Footers = <>
            PickList.Strings = (
              #24067' (VAI)'
              #30382' (DA)')
            Title.Caption = #39006#22411'|DTT'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'BUYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BUY'#21029'|MG'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#34399'|SKU'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'RYPairs'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#38617#25976'|RY Pairs'
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#39636'|LY'
            Width = 100
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #27966#24037#38617#25976'|Pairs'
            Width = 60
          end
          item
            Color = clYellow
            DisplayFormat = 'T#'
            EditButtons = <>
            FieldName = 'CycleStart'
            Footers = <>
            Title.Caption = #36650#36681' Tua|Start'
            Width = 40
          end
          item
            Color = clYellow
            DisplayFormat = 'T#'
            EditButtons = <>
            FieldName = 'CycleEnd'
            Footers = <>
            Title.Caption = #36650#36681' Tua|End'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'XTMH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26982#38957'|Mold'
            Width = 100
          end
          item
            DisplayFormat = 'M/d'
            EditButtons = <>
            FieldName = 'PlanDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #36865#26009#26178#38291'|Date'
            Width = 40
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'DeliveryTime'
            Footers = <>
            KeyList.Strings = (
              '07:30 - 09:30'
              '09:30 - 11:30'
              '12:30 - 14:30'
              '14:30 - 16:30'
              '16:30 - 18:00'
              '16:30 - 18:30'
              '18:30 - 20:30')
            PickList.Strings = (
              '07:30 - 09:30'
              '09:30 - 11:30'
              '12:30 - 14:30'
              '14:30 - 16:30'
              '16:30 - 18:00'
              '16:30 - 18:30'
              '18:30 - 20:30')
            Title.Caption = #36865#26009#26178#38291'|Time'
            Width = 120
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'AssemblyTime'
            Footers = <>
            KeyList.Strings = (
              '07:30 - 09:30'
              '09:30 - 11:30'
              '12:30 - 14:30'
              '14:30 - 16:30'
              '16:30 - 18:00'
              '16:30 - 18:30'
              '18:30 - 20:30')
            PickList.Strings = (
              '07:30 - 09:30'
              '09:30 - 11:30'
              '12:30 - 14:30'
              '14:30 - 16:30'
              '16:30 - 18:00'
              '16:30 - 18:30'
              '18:30 - 20:30')
            Title.Caption = #25104#22411#29983#29986#26178#38291'|Assembly Time'
            Width = 120
          end
          item
            ButtonStyle = cbsNone
            Color = clYellow
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            PickList.Strings = (
              '10A TRANG (10A '#30333')'
              'DA ('#30382')'
              'DA TRANG SAO ('#26143#26143#26376#20142#30382')'
              'DAY TALON IN ('#21360#21047#37002#26781')'
              'DON HANG XUAT NHANH ('#24555#36895#35330#21934')'
              'DT THAO KHAC MAU ('#38795#22666#33394#24046')'
              'EP TALON THAN ('#22739#37002#26781')'
              'GIAY NONG LANH ('#21322#20919#36028#21322#21152#30827')'
              'GO THU ('#25104#22411#35430#20316')'
              'HIEN TRUONG LAM THU ('#37327#29986#35430#20570')'
              'KIEM FDPA (FDPA'#27298#26597')'
              'KIEM PEAC (PEAC'#27298#26597')'
              'MTHQ ('#27424#38867#22283#21514#29260')'
              'NHAP KHO ('#20837#24235')'
              'PU TRANG SAO ('#26143#26143#26376#20142'PU)'
              'TAN DINH TALON THAN ('#37002#26781#25171#30524#25187')'
              'THIEU DAY GIAY ('#27424#38795#24118')'
              'THIEU DE TRUNG THAO ('#27424#38795#22666')'
              'THIEU HOP ('#27424#20839#30418')'
              'THIEU MAT TREO ('#27424#21514#29260')'
              'THIEU NHAN ('#27424#27161')'
              'THIEU NHAN HOP ('#27424#20839#30418#27161')'
              'THIEU NHAN TAIWAN ('#27424#21488#28771#27161')'
              'THIEU NHAN THUNG ('#27424#22806#31665#27161')'
              'THIEU THUNG ('#27424#22806#31665')'
              'THIEU THUNG HOP ('#27424#20839#30418'/'#22806#31665')'
              'THU NGHIEM GIAY NOI DIA ('#20839#37559#28204#35430')'
              'THU NGHIEM TQ CHUA KET QUA ('#20013#22283#28204#35430' '#36996#27794#26377#32080#26524')'
              'THU NGHIEM TRUNG QUOC ('#20013#22283#28204#35430')'
              'THU NGHIEM TURKEY ('#22303#32819#20854#28204#35430')'
              'VAI ('#24067')'
              'VAI TRANG SAO ('#26143#26143#26376#20142#24067')'
              #32654#22283'JOURNEY'#35330#21934#35531#27880#24847)
            Title.Caption = #20633#35387'|Remark'
            Width = 300
          end
          item
            ButtonStyle = cbsNone
            Color = clYellow
            EditButtons = <>
            FieldName = 'Reason'
            Footers = <>
            KeyList.Strings = (
              'X'
              'MATERIAL SHORTAGE'
              'UPPER SHORTAGE'
              'SGS TESTING'
              'MATERIAL COLOR DISCREPANCY'
              'SHORTFALL'
              'UPPER TRANSFERRED'
              'MPPA'
              'RY SEQUENCE ADJUSTMENT'
              'MEET THE GAC DATE'
              'MERGE CYCLE')
            PickList.Strings = (
              #12288
              'THIEU VAT LIEU'
              'THIEU MU GIAY'
              'LAM THU SGS'
              'VAT TU KHAC MAU'
              'SO DUOI'
              'CHUYEN MU GIAY'
              'MPPA'
              'THUAN LUU TRINH'
              'DAT DUOC XUAT HANG'
              'KET HOP')
            Title.Caption = #30064#24120#35519#25972#21407#22240'|Reason'
            Width = 120
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Hourly Capacity'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 21
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 156
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 341
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_HC: TDateTimePicker
          Left = 61
          Top = 12
          Width = 80
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DTP_HCChange
        end
        object Button_QHC: TButton
          Left = 644
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button_QHCClick
        end
        object CB_Building_HC: TComboBox
          Left = 215
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 2
          OnChange = CB_Building_HCChange
        end
        object CB_Lean_HC: TComboBox
          Left = 376
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
        end
        object CB_HC1: TCheckBox
          Left = 504
          Top = 3
          Width = 105
          Height = 12
          Caption = 'NEW SKU ONLY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = CB_HC1Click
        end
        object CB_HC2: TCheckBox
          Left = 504
          Top = 18
          Width = 113
          Height = 12
          Caption = 'NO TARGET ONLY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = CB_HC2Click
        end
        object CB_HC3: TCheckBox
          Left = 504
          Top = 33
          Width = 113
          Height = 12
          Caption = 'NO IE STANDARD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = CB_HC2Click
        end
      end
      object DBGridEh_HC: TDBGridEh
        Left = 0
        Top = 113
        Width = 1362
        Height = 471
        Align = alClient
        DataSource = DS_HC
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        HorzScrollBar.Tracking = True
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.Tracking = True
        OnGetCellParams = DBGridEh_HCGetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'building_no'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = #26847#21029'|Building'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'lean_no'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = #32218#21029'|Lean'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            HideDuplicates = True
            ReadOnly = True
            Title.Caption = #22411#39636'|Die Cut'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#22411'|Model'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Title.Caption = #33394#34399'|Color ID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#34399'|SKU'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = #38617#25976'|Pairs'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DL_C'
            Footers = <>
            Title.Caption = #30452#24037'|Cutting'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DL_S'
            Footers = <>
            Title.Caption = #30452#24037'|Stitching'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DL_A'
            Footers = <>
            Title.Caption = #30452#24037'|Assembly'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'DL_P'
            Footers = <>
            Title.Caption = #30452#24037'|Packing'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'IDL'
            Footers = <>
            Title.Caption = #38291#24037'|Indirect'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'BZCL'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26178#29986#33021'|Standard'
            Width = 70
          end
          item
            Alignment = taRightJustify
            EditButtons = <>
            FieldName = 'Capacity_His'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26178#29986#33021'|Previous'
            Width = 70
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Capacity'
            Footers = <>
            Title.Caption = #26178#29986#33021'|Production'
            Width = 70
          end
          item
            DisplayFormat = '#%'
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26178#29986#33021'|Rate'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773'|UserID'
            Width = 70
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30064#21205#26178#38291'|UserDate'
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 2
        object BHC1: TBitBtn
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
          TabOrder = 6
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
        object BHC2: TBitBtn
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
          TabOrder = 5
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
        object BHC3: TBitBtn
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
          TabOrder = 4
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
        object BHC4: TBitBtn
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
          OnClick = BHC4Click
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
        object BHC5: TBitBtn
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
          TabOrder = 2
          OnClick = BHC5Click
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
        object BHC6: TBitBtn
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
          TabOrder = 1
          OnClick = BHC6Click
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
        object BHC7: TBitBtn
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
          TabOrder = 0
          OnClick = BHC7Click
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
        object BHC8: TBitBtn
          Left = 368
          Top = 8
          Width = 57
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
          OnClick = BHC8Click
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Labor Demand'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 48
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 15
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 147
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 270
          Top = 16
          Width = 54
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Building'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 455
          Top = 16
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Lean'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_SQ1: TDateTimePicker
          Left = 55
          Top = 12
          Width = 90
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DTP_SQ1Change
        end
        object DTP_SQ2: TDateTimePicker
          Left = 159
          Top = 12
          Width = 90
          Height = 24
          Date = 44926.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 44926.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DTP_SQ2Change
        end
        object Button_QSQ: TButton
          Left = 814
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button_QSQClick
        end
        object CB_Building_SQ: TComboBox
          Left = 329
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 3
          OnChange = CB_Building_SQChange
        end
        object CB_Lean_SQ: TComboBox
          Left = 490
          Top = 12
          Width = 105
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 0
          ParentFont = False
          TabOrder = 4
        end
        object RG_SQ: TRadioGroup
          Left = 617
          Top = 1
          Width = 176
          Height = 40
          Caption = ' Labor Type '
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'All Labor'
            'Direct Labor')
          TabOrder = 5
        end
        object Button_ESQ: TButton
          Left = 883
          Top = 11
          Width = 70
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button_ESQClick
        end
      end
      object PC_SQ: TPageControl
        Left = 0
        Top = 48
        Width = 1362
        Height = 536
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = 'Chart'
          ImageIndex = 1
          object Chart_SQ: TChart
            Left = 0
            Top = 0
            Width = 1414
            Height = 513
            BackWall.Brush.Color = clWhite
            MarginBottom = 2
            MarginLeft = 1
            MarginRight = 2
            MarginTop = 2
            Title.Text.Strings = (
              '')
            Title.Visible = False
            BottomAxis.Grid.Visible = False
            LeftAxis.Grid.Color = 14474460
            LeftAxis.Grid.Style = psDashDotDot
            LeftAxis.Grid.SmallDots = True
            Legend.Alignment = laTop
            Legend.Color = 15790320
            Legend.ColorWidth = 25
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -13
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.Frame.Visible = False
            Legend.ShadowColor = 15790320
            Legend.TopPos = 0
            View3D = False
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Series1: TLineSeries
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.BackColor = clWhite
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = clGreen
              Title = 'Cutting'
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              Stairs = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series2: TLineSeries
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.BackColor = clWhite
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 13998939
              Title = 'Stitching'
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              Stairs = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series3: TLineSeries
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.BackColor = clWhite
              Marks.Style = smsValue
              Marks.Visible = True
              SeriesColor = 3243501
              Title = 'Assembly'
              LinePen.Width = 3
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              Stairs = True
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Data'
          object DBGridEh_SQ: TDBGridEh
            Left = 0
            Top = 0
            Width = 1414
            Height = 513
            Align = alClient
            DataSource = DS_SQ
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            HorzScrollBar.Tracking = True
            SumList.Active = True
            SumList.VirtualRecords = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            VertScrollBar.Tracking = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'building_no'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #26847#21029'|Building'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'lean_no'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #29986#32218'|Lean'
                Width = 80
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'schedule_date'
                Footers = <>
                HideDuplicates = True
                Title.Caption = #25104#22411#26085#26399'|Assembly Date'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'ry_index'
                Footers = <>
                Title.Caption = #29983#29986#38918#24207'|Index'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                Title.Caption = #35330#21934#32232#34399'|RY'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = #22411#34399'|SKU'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Pairs'
                Footers = <>
                Title.Caption = #38617#25976'|Pairs'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'C_Labor'
                Footers = <>
                Title.Caption = #38656#27714#20154#25976'|Cutting'
              end
              item
                EditButtons = <>
                FieldName = 'S_Labor'
                Footers = <>
                Title.Caption = #38656#27714#20154#25976'|Stitching'
              end
              item
                EditButtons = <>
                FieldName = 'A_Labor'
                Footers = <>
                Title.Caption = #38656#27714#20154#25976'|Assembly'
              end>
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Model Change Trend'
      ImageIndex = 6
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label23: TLabel
          Left = 21
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 142
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 251
          Top = 16
          Width = 45
          Height = 16
          Alignment = taRightJustify
          Caption = 'Section'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 413
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Mode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 565
          Top = 16
          Width = 35
          Height = 16
          Alignment = taRightJustify
          Caption = 'Labor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DTP_MCF1: TDateTimePicker
          Left = 61
          Top = 12
          Width = 80
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DTP_MCF1Change
        end
        object Button1: TButton
          Left = 672
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP_MCF2: TDateTimePicker
          Left = 153
          Top = 12
          Width = 80
          Height = 24
          Date = 44896.000000000000000000
          Format = 'yyyy/MM'
          Time = 44896.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DTP_MCF2Change
        end
        object CB_Section: TComboBox
          Left = 301
          Top = 12
          Width = 92
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 3
          Text = 'Assembly'
          Items.Strings = (
            'Assembly')
        end
        object CB_Mode: TComboBox
          Left = 453
          Top = 12
          Width = 92
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 1
          TabOrder = 4
          Text = 'Labor'
          OnChange = CB_ModeChange
          Items.Strings = (
            'Cutting Die'
            'Labor')
        end
        object ED_Labor: TEdit
          Left = 605
          Top = 12
          Width = 44
          Height = 24
          TabOrder = 5
          Text = '10'
          OnChange = ED_LaborChange
        end
      end
      object Chart_MCF: TChart
        Left = 0
        Top = 48
        Width = 1362
        Height = 536
        AllowPanning = pmHorizontal
        AllowZoom = False
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 1
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Title.Text.Strings = (
          'Assembly')
        BottomAxis.ExactDateTime = False
        BottomAxis.Grid.Visible = False
        BottomAxis.Increment = 300.000000000000000000
        BottomAxis.MinorTicks.Visible = False
        BottomAxis.Ticks.Visible = False
        LeftAxis.ExactDateTime = False
        LeftAxis.Grid.Color = 14869218
        LeftAxis.Grid.Style = psSolid
        LeftAxis.MinorTicks.Visible = False
        LeftAxis.Title.Angle = 0
        Legend.Alignment = laBottom
        Legend.Color = 15790320
        Legend.ColorWidth = 30
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clBlack
        Legend.Font.Height = -16
        Legend.Font.Name = 'Arial'
        Legend.Font.Style = [fsBold]
        Legend.Frame.Visible = False
        Legend.ShadowSize = 0
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 0
        View3D = False
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 0
        PopupMenu = PopupMenu1
        TabOrder = 1
        object Series_MCF_Planned: TBarSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clBlack
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = 6968388
          Title = 'Planned Changes'
          OnClick = Series_MCF_PlannedClick
          BarPen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series_MCF_Actual: TBarSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clRed
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = 8421631
          Title = 'Actual Changes'
          OnClick = Series_MCF_ActualClick
          BarPen.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series_MCF_Unplanned: TLineSeries
          Cursor = crHandPoint
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 8
          Marks.BackColor = clYellow
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clRed
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = [fsBold]
          Marks.Frame.Visible = False
          Marks.Style = smsValue
          Marks.Visible = True
          SeriesColor = clRed
          Title = 'Unplanned Changes'
          OnClick = Series_MCF_UnplannedClick
          Dark3D = False
          LinePen.Width = 3
          Pointer.Brush.Color = clRed
          Pointer.HorizSize = 3
          Pointer.InflateMargins = False
          Pointer.Style = psRectangle
          Pointer.VertSize = 3
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
    end
  end
  object DS_S: TDataSource
    DataSet = Query_S
    Left = 20
    Top = 225
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'excel'
    Filter = 'Excel|*.xls*'
    Options = [ofHideReadOnly, ofNoChangeDir, ofExtensionDifferent, ofEnableSizing]
    Left = 492
    Top = 47
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 212
    Top = 257
  end
  object QUpload: TQuery
    DatabaseName = 'DB'
    Left = 524
    Top = 47
  end
  object Query_S: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM schedule_crawler'
      'WHERE 1 = 0')
    UpdateObject = UpdateSQL_S
    Left = 20
    Top = 257
    object Query_Sbuilding_no: TStringField
      FieldName = 'building_no'
      Origin = 'LIY_ERP.schedule_crawler.building_no'
      FixedChar = True
      Size = 10
    end
    object Query_Slean_no: TStringField
      FieldName = 'lean_no'
      Origin = 'LIY_ERP.schedule_crawler.lean_no'
      FixedChar = True
      Size = 10
    end
    object Query_Sschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Query_Sry_index: TIntegerField
      FieldName = 'ry_index'
    end
    object Query_Sly: TStringField
      FieldName = 'ly'
      Origin = 'LIY_ERP.schedule_crawler.ly'
      FixedChar = True
    end
    object Query_Sry: TStringField
      FieldName = 'ry'
      Origin = 'LIY_ERP.schedule_crawler.ry'
      FixedChar = True
    end
    object Query_Svt: TStringField
      FieldName = 'vt'
      Origin = 'LIY_ERP.schedule_crawler.vt'
      FixedChar = True
    end
    object Query_Schat_lieu: TStringField
      FieldName = 'chat_lieu'
      Origin = 'LIY_ERP.schedule_crawler.chat_lieu'
      FixedChar = True
    end
    object Query_Slast: TStringField
      FieldName = 'last'
      Origin = 'LIY_ERP.schedule_crawler.last'
      FixedChar = True
    end
    object Query_Sbuy: TStringField
      FieldName = 'buy'
      Origin = 'LIY_ERP.schedule_crawler.buy'
      FixedChar = True
    end
    object Query_Sbts: TStringField
      FieldName = 'bts'
      Origin = 'LIY_ERP.schedule_crawler.bts'
      FixedChar = True
    end
    object Query_Scutting: TStringField
      FieldName = 'cutting'
      Origin = 'LIY_ERP.schedule_crawler.cutting'
      FixedChar = True
    end
    object Query_Ssku: TStringField
      FieldName = 'sku'
      Origin = 'LIY_ERP.schedule_crawler.sku'
      FixedChar = True
    end
    object Query_Sstitching: TStringField
      FieldName = 'stitching'
    end
    object Query_Ssl: TStringField
      FieldName = 'sl'
      Origin = 'LIY_ERP.schedule_crawler.sl'
      FixedChar = True
      Size = 10
    end
    object Query_Sassembly: TStringField
      FieldName = 'assembly'
      Origin = 'LIY_ERP.schedule_crawler.assembly'
      FixedChar = True
    end
    object Query_Scsd: TStringField
      FieldName = 'csd'
      Origin = 'LIY_ERP.schedule_crawler.csd'
      FixedChar = True
    end
    object Query_Scountry: TStringField
      FieldName = 'country'
      Origin = 'LIY_ERP.schedule_crawler.country'
      FixedChar = True
    end
    object Query_Suser_id: TStringField
      FieldName = 'user_id'
      Origin = 'LIY_ERP.schedule_crawler.user_id'
      FixedChar = True
      Size = 10
    end
    object Query_Suser_date: TDateTimeField
      FieldName = 'user_date'
    end
    object Query_SYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query_SVersion: TStringField
      FieldName = 'version'
      Size = 10
    end
    object Query_SGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 10
    end
    object Query_SDe_ok_date: TStringField
      FieldName = 'De_ok_date'
      FixedChar = True
      Size = 100
    end
    object Query_Shangbu: TStringField
      FieldName = 'hangbu'
      FixedChar = True
      Size = 100
    end
    object Query_Spairs_in: TStringField
      FieldName = 'pairs_in'
      FixedChar = True
      Size = 10
    end
    object Query_Spairs_in_lack: TStringField
      FieldName = 'pairs_in_lack'
      FixedChar = True
      Size = 10
    end
    object Query_SEXE_date: TStringField
      FieldName = 'EXE_date'
      FixedChar = True
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 556
    Top = 47
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 212
    Top = 225
  end
  object Query_SQ: TQuery
    DatabaseName = 'DB'
    Left = 180
    Top = 257
    object Query_SQbuilding_no: TStringField
      FieldName = 'building_no'
      Size = 10
    end
    object Query_SQlean_no: TStringField
      FieldName = 'lean_no'
      Size = 10
    end
    object Query_SQschedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Query_SQry_index: TStringField
      FieldName = 'ry_index'
      Size = 10
    end
    object Query_SQDDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query_SQARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query_SQPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query_SQC_Labor: TIntegerField
      FieldName = 'C_Labor'
    end
    object Query_SQS_Labor: TIntegerField
      FieldName = 'S_Labor'
    end
    object Query_SQA_Labor: TIntegerField
      FieldName = 'A_Labor'
    end
  end
  object DS_SQ: TDataSource
    DataSet = Query_SQ
    Left = 180
    Top = 225
  end
  object DS_HC: TDataSource
    DataSet = Query_HC
    Left = 148
    Top = 225
  end
  object Query_HC: TQuery
    AfterOpen = Query_HCAfterOpen
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL_HC
    Left = 148
    Top = 257
    object Query_HCbuilding_no: TStringField
      FieldName = 'building_no'
      Size = 10
    end
    object Query_HClean_no: TStringField
      FieldName = 'lean_no'
      Size = 10
    end
    object Query_HCXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Query_HCSheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Query_HCDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query_HCARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query_HCBZCL: TIntegerField
      FieldName = 'BZCL'
    end
    object Query_HCCapacity: TIntegerField
      FieldName = 'Capacity'
      OnChange = Query_HCCapacityChange
    end
    object Query_HCRate: TIntegerField
      FieldName = 'Rate'
    end
    object Query_HCMonth: TStringField
      FieldName = 'Month'
      Size = 7
    end
    object Query_HCUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query_HCUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query_HCStandard: TIntegerField
      FieldName = 'Standard'
    end
    object Query_HCDL_C: TIntegerField
      FieldName = 'DL_C'
    end
    object Query_HCDL_S: TIntegerField
      FieldName = 'DL_S'
    end
    object Query_HCDL_A: TIntegerField
      FieldName = 'DL_A'
    end
    object Query_HCDL_P: TIntegerField
      FieldName = 'DL_P'
    end
    object Query_HCIDL: TIntegerField
      FieldName = 'IDL'
    end
    object Query_HCPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query_HCCapacity_His: TStringField
      FieldName = 'Capacity_His'
      Size = 10
    end
    object Query_HCCapacityMonth: TStringField
      FieldName = 'CapacityMonth'
      Size = 7
    end
  end
  object UpdateSQL_HC: TUpdateSQL
    Left = 148
    Top = 289
  end
  object UpdateSQL_S: TUpdateSQL
    Left = 20
    Top = 289
  end
  object DS_3D: TDataSource
    DataSet = Query_3D
    Left = 84
    Top = 225
  end
  object DS_1D: TDataSource
    DataSet = Query_1D
    Left = 116
    Top = 225
  end
  object Query_3D: TQuery
    AfterOpen = Query_3DAfterOpen
    OnNewRecord = Query_3DNewRecord
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL_3D
    Left = 84
    Top = 257
    object Query_3DBuilding: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object Query_3DLean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Query_3DPlanType: TStringField
      FieldName = 'PlanType'
      Size = 10
    end
    object Query_3DPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query_3DRY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Query_3DShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query_3DNT: TStringField
      FieldName = 'NT'
      Size = 10
    end
    object Query_3DBUYNO: TStringField
      FieldName = 'BUYNO'
      Size = 10
    end
    object Query_3DARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query_3DPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query_3DDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query_3DCycleStart: TIntegerField
      FieldName = 'CycleStart'
      OnChange = Query_3DCycleStartChange
    end
    object Query_3DCycleEnd: TIntegerField
      FieldName = 'CycleEnd'
      OnChange = Query_3DCycleEndChange
    end
    object Query_3DUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Query_3DUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query_3DYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query_3DMinCycle: TIntegerField
      FieldName = 'MinCycle'
    end
    object Query_3DMaxCycle: TIntegerField
      FieldName = 'MaxCycle'
    end
    object Query_3DRYPairs: TIntegerField
      FieldName = 'RYPairs'
    end
    object Query_3DRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query_3DSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Query_3DSubRY: TStringField
      FieldName = 'SubRY'
    end
    object Query_3DGSBH: TStringField
      FieldName = 'GSBH'
      Size = 10
    end
  end
  object UpdateSQL_3D: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ProductionPlan'
      'SET'
      '  RY = :RY,'
      '  Seq = :Seq,'
      '  NT = :NT,'
      '  CycleStart = :CycleStart,'
      '  CycleEnd = :CycleEnd,'
      '  Pairs = :Pairs,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    InsertSQL.Strings = (
      'INSERT INTO ProductionPlan'
      
        '  (Building, Lean, PlanType, PlanDate, RY, SubRY, Seq, NT, Cycle' +
        'Start, CycleEnd, Pairs, DeliveryTime, AssemblyTime, Remark, User' +
        'ID, UserDate, GSBH, YN)'
      'VALUES'
      
        '  (:Building, :Lean, :PlanType, :PlanDate, :RY, :SubRY, :Seq, :N' +
        'T, :CycleStart, :CycleEnd, :Pairs, '#39#39', '#39#39', :Remark, :UserID, Get' +
        'Date(), :GSBH, '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM ProductionPlan'
      'WHERE '
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    Left = 84
    Top = 289
  end
  object Query_1D: TQuery
    AfterOpen = Query_1DAfterOpen
    OnNewRecord = Query_1DNewRecord
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL_1D
    Left = 116
    Top = 257
    object StringField38: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField39: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object StringField40: TStringField
      FieldName = 'PlanType'
      Size = 10
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'PlanDate'
    end
    object StringField41: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'ShipDate'
    end
    object StringField42: TStringField
      FieldName = 'NT'
      Size = 10
    end
    object StringField43: TStringField
      FieldName = 'BUYNO'
      Size = 10
    end
    object StringField44: TStringField
      FieldName = 'ARTICLE'
    end
    object Query_1DRYPairs: TIntegerField
      FieldName = 'RYPairs'
    end
    object StringField45: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object IntegerField10: TIntegerField
      FieldName = 'Pairs'
    end
    object IntegerField11: TIntegerField
      FieldName = 'CycleStart'
      OnChange = IntegerField11Change
    end
    object IntegerField12: TIntegerField
      FieldName = 'CycleEnd'
      OnChange = IntegerField12Change
    end
    object Query_1DXTMH: TStringField
      FieldName = 'XTMH'
      Size = 30
    end
    object StringField46: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField14: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField47: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object IntegerField13: TIntegerField
      FieldName = 'MinCycle'
    end
    object IntegerField14: TIntegerField
      FieldName = 'MaxCycle'
    end
    object Query_1DDeliveryTime: TStringField
      FieldName = 'DeliveryTime'
      Size = 15
    end
    object Query_1DAssemblyTime: TStringField
      FieldName = 'AssemblyTime'
      Size = 15
    end
    object Query_1DRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query_1DSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Query_1DSubRY: TStringField
      FieldName = 'SubRY'
    end
    object Query_1DReason: TStringField
      FieldName = 'Reason'
      Size = 30
    end
    object Query_1DGSBH: TStringField
      FieldName = 'GSBH'
      Size = 10
    end
  end
  object UpdateSQL_1D: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ProductionPlan'
      'SET'
      '  RY = :RY,'
      '  Seq = :Seq,'
      '  NT = :NT,'
      '  CycleStart = :CycleStart,'
      '  CycleEnd = :CycleEnd,'
      '  Pairs = :Pairs,'
      '  DeliveryTime = :DeliveryTime,'
      '  AssemblyTime = :AssemblyTime,'
      '  Remark = :Remark,'
      '  Reason = :Reason,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    InsertSQL.Strings = (
      'INSERT INTO ProductionPlan'
      
        '  (Building, Lean, PlanType, PlanDate, RY, SubRY, Seq, NT, Cycle' +
        'Start, CycleEnd, Pairs, DeliveryTime, AssemblyTime, Remark, Reas' +
        'on, UserID, UserDate, GSBH, YN)'
      'VALUES'
      
        '  (:Building, :Lean, :PlanType, :PlanDate, :RY, :SubRY, :Seq, :N' +
        'T, :CycleStart, :CycleEnd, :Pairs, :DeliveryTime, :AssemblyTime,' +
        ' :Remark, :Reason, :UserID, GetDate(), :GSBH, '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM ProductionPlan'
      'WHERE '
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    Left = 116
    Top = 289
  end
  object DS_GCD: TDataSource
    DataSet = Query_GCD
    Left = 52
    Top = 225
  end
  object Query_GCD: TQuery
    AfterOpen = Query_GCDAfterOpen
    OnNewRecord = Query_GCDNewRecord
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL_GCD
    Left = 52
    Top = 257
    object StringField1: TStringField
      FieldName = 'Building'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object StringField3: TStringField
      FieldName = 'PlanType'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'PlanDate'
    end
    object StringField4: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ShipDate'
    end
    object StringField5: TStringField
      FieldName = 'NT'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'BUYNO'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'ARTICLE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
    end
    object StringField8: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object IntegerField2: TIntegerField
      FieldName = 'CycleStart'
      OnChange = Query_3DCycleStartChange
    end
    object IntegerField3: TIntegerField
      FieldName = 'CycleEnd'
      OnChange = Query_3DCycleEndChange
    end
    object StringField9: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField10: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object IntegerField4: TIntegerField
      FieldName = 'MinCycle'
    end
    object IntegerField5: TIntegerField
      FieldName = 'MaxCycle'
    end
    object IntegerField6: TIntegerField
      FieldName = 'RYPairs'
    end
    object StringField11: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query_GCDSeq: TIntegerField
      FieldName = 'Seq'
    end
    object Query_GCDGSBH: TStringField
      FieldName = 'GSBH'
      Size = 10
    end
  end
  object UpdateSQL_GCD: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ProductionPlan'
      'SET'
      '  RY = :RY,'
      '  Seq = :Seq,'
      '  NT = :NT,'
      '  CycleStart = :CycleStart,'
      '  CycleEnd = :CycleEnd,'
      '  Pairs = :Pairs,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    InsertSQL.Strings = (
      'INSERT INTO ProductionPlan'
      
        '  (Building, Lean, PlanType, PlanDate, RY, Seq, NT, CycleStart, ' +
        'CycleEnd, Pairs, DeliveryTime, AssemblyTime, Remark, UserID, Use' +
        'rDate, GSBH, YN)'
      'VALUES'
      
        '  (:Building, :Lean, :PlanType, :PlanDate, :RY, :Seq, :NT, :Cycl' +
        'eStart, :CycleEnd, :Pairs, '#39#39', '#39#39', :Remark, :UserID, GetDate(), ' +
        ':GSBH, '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM ProductionPlan'
      'WHERE '
      '  Building = :OLD_Building AND'
      '  Lean = :OLD_Lean AND'
      '  PlanType = :OLD_PlanType AND'
      '  PlanDate = :OLD_PlanDate AND'
      '  RY = :OLD_RY AND'
      '  CycleStart = :OLD_CycleStart AND'
      '  CycleEnd = :OLD_CycleEnd')
    Left = 52
    Top = 289
  end
  object PopupMenu1: TPopupMenu
    Left = 212
    Top = 289
    object Excel1: TMenuItem
      AutoHotkeys = maManual
      AutoLineReduction = maManual
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object IdHTTP2: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 5000
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 588
    Top = 47
  end
end
