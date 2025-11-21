object forecastorder: Tforecastorder
  Left = 238
  Top = 222
  Width = 1682
  Height = 596
  Caption = 'forecastorder'
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
  object PageControl2: TPageControl
    Left = 0
    Top = 0
    Width = 1666
    Height = 557
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Sales_Forecast'
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1658
        Height = 526
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        object TabSheet5: TTabSheet
          Caption = 'New_Forecast'
          ImageIndex = 5
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 64
            Align = alTop
            TabOrder = 0
            object Label19: TLabel
              Left = 528
              Top = 12
              Width = 89
              Height = 20
              Caption = 'Process Info'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 527
              Top = 35
              Width = 78
              Height = 16
              Caption = 'Input Season'
              Color = clYellow
              ParentColor = False
            end
            object Button5: TButton
              Left = 464
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Import'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button5Click
            end
            object Edit4: TEdit
              Left = 608
              Top = 32
              Width = 49
              Height = 24
              Color = clYellow
              TabOrder = 1
            end
            object BitBtn10: TBitBtn
              Left = 308
              Top = 8
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
              TabOrder = 2
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
            object BitBtn11: TBitBtn
              Left = 258
              Top = 8
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
              TabOrder = 3
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
            object BitBtn12: TBitBtn
              Left = 210
              Top = 8
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
            object BitBtn13: TBitBtn
              Left = 162
              Top = 8
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
              TabOrder = 5
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
            object BitBtn14: TBitBtn
              Left = 114
              Top = 8
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
              TabOrder = 6
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
            object BitBtn15: TBitBtn
              Left = 66
              Top = 8
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
              TabOrder = 7
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
            object BitBtn16: TBitBtn
              Left = 18
              Top = 8
              Width = 49
              Height = 49
              Caption = 'Query'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnClick = BitBtn16Click
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
            object BitBtn17: TBitBtn
              Left = 360
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
              TabOrder = 9
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
          end
          object Panel10: TPanel
            Left = 0
            Top = 64
            Width = 1650
            Height = 72
            Align = alTop
            TabOrder = 1
            Visible = False
            object Label21: TLabel
              Left = 22
              Top = 7
              Width = 34
              Height = 20
              Caption = 'Year'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 137
              Top = 7
              Width = 45
              Height = 20
              Caption = 'Month'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 230
              Top = 9
              Width = 34
              Height = 20
              Caption = 'Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 335
              Top = 7
              Width = 55
              Height = 20
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 466
              Top = 7
              Width = 61
              Height = 20
              Caption = 'Location'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 598
              Top = 7
              Width = 58
              Height = 20
              Caption = 'Supplier'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 579
              Top = 44
              Width = 43
              Height = 20
              Caption = 'Stage'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 436
              Top = 44
              Width = 33
              Height = 20
              Caption = 'SKU'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 227
              Top = 44
              Width = 23
              Height = 20
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 5
              Top = 42
              Width = 50
              Height = 20
              Caption = 'MatNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 742
              Top = 7
              Width = 141
              Height = 20
              Caption = 'Production Location'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ComboBox3: TComboBox
              Left = 59
              Top = 9
              Width = 74
              Height = 24
              ItemHeight = 0
              TabOrder = 0
            end
            object ComboBox4: TComboBox
              Left = 185
              Top = 7
              Width = 42
              Height = 24
              ItemHeight = 0
              TabOrder = 1
            end
            object ComboBox6: TComboBox
              Left = 268
              Top = 7
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 2
              Items.Strings = (
                'SRA'
                'GTM')
            end
            object ComboBox7: TComboBox
              Left = 393
              Top = 6
              Width = 64
              Height = 24
              ItemHeight = 16
              TabOrder = 3
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object ComboBox8: TComboBox
              Left = 531
              Top = 7
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 4
              Items.Strings = (
                ''
                'VN'
                'TW')
            end
            object ComboBox9: TComboBox
              Left = 662
              Top = 7
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 5
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object Edit5: TEdit
              Left = 624
              Top = 40
              Width = 89
              Height = 24
              TabOrder = 6
            end
            object Edit6: TEdit
              Left = 472
              Top = 40
              Width = 98
              Height = 24
              TabOrder = 7
            end
            object Edit7: TEdit
              Left = 252
              Top = 40
              Width = 178
              Height = 24
              TabOrder = 8
            end
            object Edit8: TEdit
              Left = 59
              Top = 40
              Width = 168
              Height = 24
              TabOrder = 9
            end
            object Button6: TButton
              Left = 737
              Top = 33
              Width = 81
              Height = 33
              Caption = 'QUERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnClick = Button1Click
            end
            object CheckBox1: TCheckBox
              Left = 821
              Top = 40
              Width = 89
              Height = 17
              Caption = 'Total CLSL'
              TabOrder = 11
            end
            object ComboBox10: TComboBox
              Left = 888
              Top = 6
              Width = 98
              Height = 24
              ItemHeight = 0
              TabOrder = 12
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 136
            Width = 1650
            Height = 359
            Align = alClient
            DataSource = DS_FC_xxzls
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'year'
                Footers = <>
                Title.Caption = 'Year'
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'month'
                Footers = <>
                Title.Caption = 'Month'
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'jijie'
                Footers = <>
                Title.Caption = 'Season'
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'type'
                Footers = <>
                Title.Caption = 'Type'
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'article'
                Footers = <>
                Title.Caption = 'Article'
                Width = 145
              end
              item
                EditButtons = <>
                FieldName = 'devcode'
                Footer.FieldName = 'devcode'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'SR'
              end
              item
                EditButtons = <>
                FieldName = 'clbh'
                Footers = <>
                Title.Caption = 'Mat.NO'
              end
              item
                EditButtons = <>
                FieldName = 'dwbh'
                Footers = <>
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'ywpm'
                Footers = <>
                Title.Caption = 'Mat.Description'
                Width = 200
              end
              item
                EditButtons = <>
                FieldName = 'Forecast_Leadtime'
                Footers = <>
                Title.Caption = 'LeadTime'
              end
              item
                EditButtons = <>
                FieldName = 'pairs'
                Footers = <>
                Title.Caption = 'Pairs'
              end
              item
                EditButtons = <>
                FieldName = 'cscl'
                Footers = <>
                Title.Caption = 'Usage'
              end
              item
                EditButtons = <>
                FieldName = 'total'
                Footers = <>
                Title.Caption = 'Total'
              end
              item
                EditButtons = <>
                FieldName = 'csbh'
                Footers = <>
                Title.Caption = 'Supplier.NO'
              end
              item
                EditButtons = <>
                FieldName = 'zsywjc'
                Footers = <>
                Title.Caption = 'Supplier'
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 75
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'New SR_Check'
          ImageIndex = 4
          object Splitter1: TSplitter
            Left = 929
            Top = 105
            Width = 721
            Height = 390
            Align = alClient
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 65
            Align = alTop
            TabOrder = 0
            object BitBtn1: TBitBtn
              Left = 20
              Top = 8
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
              OnClick = BC1Click
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
            object BitBtn2: TBitBtn
              Left = 68
              Top = 8
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
            object BitBtn3: TBitBtn
              Left = 116
              Top = 8
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
              OnClick = BC3Click
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
            object BitBtn4: TBitBtn
              Left = 164
              Top = 8
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
              OnClick = BC4Click
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
            object BitBtn5: TBitBtn
              Left = 212
              Top = 8
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
              OnClick = BC5Click
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
            object BitBtn6: TBitBtn
              Left = 260
              Top = 8
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
              OnClick = BC6Click
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
            object BitBtn7: TBitBtn
              Left = 308
              Top = 8
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
            object BitBtn8: TBitBtn
              Left = 382
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
              TabOrder = 7
              OnClick = BC8Click
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
            object BitBtn9: TBitBtn
              Left = 512
              Top = 24
              Width = 121
              Height = 25
              Caption = 'Set Sample Order'
              TabOrder = 8
              OnClick = BitBtn9Click
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 65
            Width = 1650
            Height = 40
            Align = alTop
            TabOrder = 1
            object Label13: TLabel
              Left = 8
              Top = 12
              Width = 55
              Height = 20
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 143
              Top = 12
              Width = 34
              Height = 20
              Caption = 'Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 251
              Top = 12
              Width = 34
              Height = 20
              Caption = 'Year'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 355
              Top = 12
              Width = 45
              Height = 20
              Caption = 'Month'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 483
              Top = 12
              Width = 23
              Height = 20
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object ComboBox1: TComboBox
              Left = 68
              Top = 8
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 0
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object Edit1: TEdit
              Left = 290
              Top = 8
              Width = 59
              Height = 24
              TabOrder = 2
            end
            object Edit2: TEdit
              Left = 407
              Top = 8
              Width = 59
              Height = 24
              TabOrder = 3
            end
            object Edit3: TEdit
              Left = 512
              Top = 8
              Width = 161
              Height = 24
              TabOrder = 4
            end
            object ComboBox2: TComboBox
              Left = 184
              Top = 8
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 1
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object Button4: TButton
              Left = 682
              Top = 5
              Width = 81
              Height = 33
              Caption = 'QUERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Button4Click
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 929
            Top = 105
            Width = 721
            Height = 390
            Align = alClient
            DataSource = DS_YPZL
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = DBGridEh3DblClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'YPDH'
                Footers = <>
                Title.Caption = 'Sample Order'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Title.Caption = 'SKU'
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'DEVCODE'
                Footers = <>
                Title.Caption = 'SR#'
                Width = 273
              end
              item
                EditButtons = <>
                FieldName = 'KFJD'
                Footers = <>
                Title.Caption = 'Stage'
                Width = 39
              end>
          end
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 105
            Width = 929
            Height = 390
            Align = alLeft
            DataSource = DS_SR_check
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnGetCellParams = DBGridEh4GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'JiJie'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Season'
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'Year'
                Footers = <>
                ReadOnly = True
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'Month'
                Footers = <>
                ReadOnly = True
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'type'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Type'
                Width = 55
              end
              item
                EditButtons = <>
                FieldName = 'Devcode'
                Footer.FieldName = 'Devcode'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SR#'
              end
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SKU'
              end
              item
                EditButtons = <>
                FieldName = 'Total'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Width = 89
              end
              item
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'YPDH'
                Footers = <>
                Width = 118
              end>
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Forecast'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 495
            Align = alClient
            TabOrder = 0
            object Panel2: TPanel
              Left = 1
              Top = 1
              Width = 1648
              Height = 64
              Align = alTop
              TabOrder = 0
              object label35: TLabel
                Left = 528
                Top = 12
                Width = 89
                Height = 20
                Caption = 'Process Info'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label4: TLabel
                Left = 527
                Top = 35
                Width = 78
                Height = 16
                Caption = 'Input Season'
                Color = clYellow
                ParentColor = False
                Visible = False
              end
              object BB9: TButton
                Left = 464
                Top = 8
                Width = 49
                Height = 49
                Caption = 'Import'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = BB9Click
              end
              object SeaEdit: TEdit
                Left = 608
                Top = 32
                Width = 49
                Height = 24
                Color = clYellow
                TabOrder = 1
                Visible = False
              end
              object BB7: TBitBtn
                Left = 308
                Top = 8
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
                TabOrder = 2
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
              object BB6: TBitBtn
                Left = 258
                Top = 8
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
                TabOrder = 3
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
              object BB5: TBitBtn
                Left = 210
                Top = 8
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
              object BB4: TBitBtn
                Left = 162
                Top = 8
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
                TabOrder = 5
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
              object BB3: TBitBtn
                Left = 114
                Top = 8
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
                TabOrder = 6
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
              object BB2: TBitBtn
                Left = 66
                Top = 8
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
                TabOrder = 7
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
              object BB1: TBitBtn
                Left = 18
                Top = 8
                Width = 49
                Height = 49
                Caption = 'Query'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
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
              object BB8: TBitBtn
                Left = 360
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
                TabOrder = 9
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
            end
            object Panel3: TPanel
              Left = 1
              Top = 137
              Width = 464
              Height = 357
              Align = alLeft
              TabOrder = 1
              Visible = False
              object ExcelDBGridEh: TDBGridEh
                Left = 1
                Top = 1
                Width = 462
                Height = 355
                Align = alClient
                DataSource = ExcelDS
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -13
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'YEAR'
                    Footers = <>
                    Width = 60
                  end
                  item
                    EditButtons = <>
                    FieldName = 'MONTH'
                    Footers = <>
                    Width = 50
                  end
                  item
                    EditButtons = <>
                    FieldName = 'type'
                    Footers = <>
                    Width = 53
                  end
                  item
                    EditButtons = <>
                    FieldName = 'devcode'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'article'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'total'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'GSBH'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'USERID'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'USERDATE'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'JIJIE'
                    Footers = <>
                  end>
              end
            end
            object Panel4: TPanel
              Left = 465
              Top = 137
              Width = 1184
              Height = 357
              Align = alClient
              Caption = 'Panel4'
              TabOrder = 2
              object Panel12: TPanel
                Left = 1
                Top = 1
                Width = 286
                Height = 355
                Align = alLeft
                Caption = 'Panel12'
                TabOrder = 0
                Visible = False
                object DBGridEh6: TDBGridEh
                  Left = 1
                  Top = 79
                  Width = 284
                  Height = 275
                  Align = alClient
                  DataSource = DS_not_CFM
                  Flat = False
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -13
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  FooterRowCount = 1
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
                      FieldName = 'year'
                      Footers = <>
                      Title.Caption = 'Year'
                      Width = 39
                    end
                    item
                      EditButtons = <>
                      FieldName = 'month'
                      Footers = <>
                      Title.Caption = 'Month'
                      Width = 35
                    end
                    item
                      EditButtons = <>
                      FieldName = 'jijie'
                      Footers = <>
                      Title.Caption = 'Season'
                      Width = 46
                    end
                    item
                      EditButtons = <>
                      FieldName = 'type'
                      Footers = <>
                      Title.Caption = 'Type'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'devcode'
                      Footer.ValueType = fvtCount
                      Footers = <>
                      Title.Caption = 'SR'
                      Width = 145
                    end
                    item
                      EditButtons = <>
                      FieldName = 'userdate'
                      Footers = <>
                    end>
                end
                object Panel17: TPanel
                  Left = 1
                  Top = 1
                  Width = 284
                  Height = 78
                  Align = alTop
                  Caption = '`'
                  Color = clYellow
                  TabOrder = 1
                  object Label23: TLabel
                    Left = 13
                    Top = 0
                    Width = 188
                    Height = 16
                    Caption = 'Hint:some SR dont have Usage'
                  end
                  object Label24: TLabel
                    Left = 100
                    Top = 15
                    Width = 28
                    Height = 16
                    Caption = 'CFM'
                  end
                  object Label25: TLabel
                    Left = 59
                    Top = 13
                    Width = 39
                    Height = 16
                    Caption = 'Stage:'
                  end
                  object Memo3: TMemo
                    Left = 12
                    Top = 33
                    Width = 213
                    Height = 33
                    Lines.Strings = (
                      #27880#24847':'#20197#19979#21015#34920#27794#26377'CFM'#38542#27573#29992#37327
                      #38656#21478#22806#36984#25799#38542#27573#25235#21462)
                    TabOrder = 0
                  end
                  object No_CFM: TBitBtn
                    Left = 229
                    Top = 20
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
                    TabOrder = 1
                    OnClick = No_CFMClick
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
              object Panel13: TPanel
                Left = 287
                Top = 1
                Width = 896
                Height = 355
                Align = alClient
                Caption = 'Panel13'
                TabOrder = 1
                object DBGridEh1: TDBGridEh
                  Left = 1
                  Top = 1
                  Width = 894
                  Height = 353
                  Align = alClient
                  DataSource = DS_FC_xxzls
                  Flat = False
                  FooterColor = clWindow
                  FooterFont.Charset = DEFAULT_CHARSET
                  FooterFont.Color = clWindowText
                  FooterFont.Height = -13
                  FooterFont.Name = 'MS Sans Serif'
                  FooterFont.Style = []
                  FooterRowCount = 1
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
                      FieldName = 'year'
                      Footers = <>
                      Title.Caption = 'Year'
                      Width = 43
                    end
                    item
                      EditButtons = <>
                      FieldName = 'month'
                      Footers = <>
                      Title.Caption = 'Month'
                      Width = 45
                    end
                    item
                      EditButtons = <>
                      FieldName = 'jijie'
                      Footers = <>
                      Title.Caption = 'Season'
                      Width = 49
                    end
                    item
                      EditButtons = <>
                      FieldName = 'type'
                      Footers = <>
                      Title.Caption = 'Type'
                      Width = 44
                    end
                    item
                      EditButtons = <>
                      FieldName = 'article'
                      Footers = <>
                      Title.Caption = 'Article'
                      Width = 145
                    end
                    item
                      EditButtons = <>
                      FieldName = 'devcode'
                      Footer.FieldName = 'devcode'
                      Footer.ValueType = fvtCount
                      Footers = <>
                      Title.Caption = 'SR'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'clbh'
                      Footers = <>
                      Title.Caption = 'Mat.NO'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'dwbh'
                      Footers = <>
                      Width = 39
                    end
                    item
                      EditButtons = <>
                      FieldName = 'ywpm'
                      Footers = <>
                      Title.Caption = 'Mat.Description'
                      Width = 200
                    end
                    item
                      EditButtons = <>
                      FieldName = 'Forecast_Leadtime'
                      Footers = <>
                      Title.Caption = 'LeadTime'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'pairs'
                      Footers = <>
                      Title.Caption = 'Pairs'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'cscl'
                      Footers = <>
                      Title.Caption = 'Usage'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'total'
                      Footers = <>
                      Title.Caption = 'Total'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'csbh'
                      Footers = <>
                      Title.Caption = 'Supplier.NO'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'zsywjc'
                      Footers = <>
                      Title.Caption = 'Supplier'
                    end
                    item
                      EditButtons = <>
                      FieldName = 'userdate'
                      Footers = <>
                    end
                    item
                      EditButtons = <>
                      FieldName = 'cldhflex'
                      Footers = <>
                      Title.Caption = 'FlexCode'
                    end>
                end
              end
            end
            object Panel22: TPanel
              Left = 1
              Top = 65
              Width = 1648
              Height = 72
              Align = alTop
              TabOrder = 3
              Visible = False
              object Label1: TLabel
                Left = 22
                Top = 7
                Width = 34
                Height = 20
                Caption = 'Year'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label2: TLabel
                Left = 137
                Top = 7
                Width = 45
                Height = 20
                Caption = 'Month'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label3: TLabel
                Left = 230
                Top = 9
                Width = 34
                Height = 20
                Caption = 'Type'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 335
                Top = 7
                Width = 55
                Height = 20
                Caption = 'Season'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 466
                Top = 7
                Width = 61
                Height = 20
                Caption = 'Location'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 598
                Top = 7
                Width = 58
                Height = 20
                Caption = 'Supplier'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 579
                Top = 44
                Width = 43
                Height = 20
                Caption = 'Stage'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 436
                Top = 44
                Width = 33
                Height = 20
                Caption = 'SKU'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 227
                Top = 44
                Width = 23
                Height = 20
                Caption = 'SR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 5
                Top = 42
                Width = 50
                Height = 20
                Caption = 'MatNO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 742
                Top = 7
                Width = 141
                Height = 20
                Caption = 'Production Location'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 723
                Top = 44
                Width = 83
                Height = 20
                Caption = 'FLEX Code'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object YearcoBox: TComboBox
                Left = 59
                Top = 9
                Width = 74
                Height = 24
                ItemHeight = 16
                TabOrder = 0
              end
              object MonCoBox: TComboBox
                Left = 185
                Top = 7
                Width = 42
                Height = 24
                ItemHeight = 16
                TabOrder = 1
              end
              object TypeCoBox: TComboBox
                Left = 268
                Top = 7
                Width = 57
                Height = 24
                ItemHeight = 16
                TabOrder = 2
                Items.Strings = (
                  'SRA'
                  'GTM')
              end
              object SeaCoBox: TComboBox
                Left = 393
                Top = 6
                Width = 64
                Height = 24
                ItemHeight = 16
                TabOrder = 3
                Items.Strings = (
                  ''
                  'SRA'
                  'GTM')
              end
              object LocCoBox: TComboBox
                Left = 531
                Top = 7
                Width = 57
                Height = 24
                ItemHeight = 16
                TabOrder = 4
                Items.Strings = (
                  ''
                  'VN'
                  'TW')
              end
              object ComboBox5: TComboBox
                Left = 662
                Top = 7
                Width = 57
                Height = 24
                ItemHeight = 16
                TabOrder = 5
                Items.Strings = (
                  ''
                  'SRA'
                  'GTM')
              end
              object StageEdit: TEdit
                Left = 624
                Top = 40
                Width = 89
                Height = 24
                TabOrder = 6
              end
              object SKUEdit: TEdit
                Left = 472
                Top = 40
                Width = 98
                Height = 24
                TabOrder = 7
              end
              object SREdit: TEdit
                Left = 252
                Top = 40
                Width = 178
                Height = 24
                TabOrder = 8
              end
              object MatNoEdit: TEdit
                Left = 59
                Top = 40
                Width = 168
                Height = 24
                TabOrder = 9
              end
              object Button1: TButton
                Left = 945
                Top = 33
                Width = 81
                Height = 33
                Caption = 'QUERY'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
                OnClick = Button1Click
              end
              object CBSum: TCheckBox
                Left = 1029
                Top = 40
                Width = 89
                Height = 17
                Caption = 'Total CLSL'
                TabOrder = 11
              end
              object cbPro_loc: TComboBox
                Left = 888
                Top = 6
                Width = 98
                Height = 24
                ItemHeight = 16
                TabOrder = 12
              end
              object Edit9: TEdit
                Left = 816
                Top = 40
                Width = 89
                Height = 24
                TabOrder = 13
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'SR_Check'
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 65
            Align = alTop
            TabOrder = 0
            object BC1: TBitBtn
              Left = 20
              Top = 8
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
              OnClick = BC1Click
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
            object BC2: TBitBtn
              Left = 68
              Top = 8
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
            object BC3: TBitBtn
              Left = 116
              Top = 8
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
              OnClick = BC3Click
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
            object BC4: TBitBtn
              Left = 164
              Top = 8
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
              OnClick = BC4Click
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
            object BC5: TBitBtn
              Left = 212
              Top = 8
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
              OnClick = BC5Click
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
            object BC6: TBitBtn
              Left = 260
              Top = 8
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
              OnClick = BC6Click
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
            object BC7: TBitBtn
              Left = 308
              Top = 8
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
            object BC8: TBitBtn
              Left = 382
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
              TabOrder = 7
              OnClick = BC8Click
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
          object Panel6: TPanel
            Left = 0
            Top = 105
            Width = 1650
            Height = 390
            Align = alClient
            TabOrder = 1
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 1
              Width = 1648
              Height = 388
              Align = alClient
              DataSource = DS_SR_check
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnGetCellParams = DBGridEh2GetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'JiJie'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Season'
                  Width = 43
                end
                item
                  EditButtons = <>
                  FieldName = 'Year'
                  Footers = <>
                  ReadOnly = True
                  Width = 43
                end
                item
                  EditButtons = <>
                  FieldName = 'Month'
                  Footers = <>
                  ReadOnly = True
                  Width = 41
                end
                item
                  EditButtons = <>
                  FieldName = 'type'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Type'
                  Width = 55
                end
                item
                  EditButtons = <>
                  FieldName = 'Devcode'
                  Footer.FieldName = 'Devcode'
                  Footer.ValueType = fvtCount
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'SR#'
                end
                item
                  EditButtons = <>
                  FieldName = 'ARTICLE'
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'SKU'
                end
                item
                  EditButtons = <>
                  FieldName = 'Total'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'UserID'
                  Footers = <>
                  ReadOnly = True
                  Width = 89
                end
                item
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  ReadOnly = True
                end
                item
                  EditButtons = <>
                  FieldName = 'YPDH'
                  Footers = <>
                  Visible = False
                end>
            end
          end
          object Panel23: TPanel
            Left = 0
            Top = 65
            Width = 1650
            Height = 40
            Align = alTop
            TabOrder = 2
            Visible = False
            object Label10: TLabel
              Left = 8
              Top = 12
              Width = 55
              Height = 20
              Caption = 'Season'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 143
              Top = 12
              Width = 34
              Height = 20
              Caption = 'Type'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 251
              Top = 12
              Width = 34
              Height = 20
              Caption = 'Year'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 355
              Top = 12
              Width = 45
              Height = 20
              Caption = 'Month'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 483
              Top = 12
              Width = 23
              Height = 20
              Caption = 'SR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Sea2Cobox: TComboBox
              Left = 68
              Top = 8
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 0
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object YearEdit: TEdit
              Left = 290
              Top = 8
              Width = 59
              Height = 24
              TabOrder = 1
            end
            object MonthEdit: TEdit
              Left = 407
              Top = 8
              Width = 59
              Height = 24
              TabOrder = 2
            end
            object SR2Edit: TEdit
              Left = 512
              Top = 8
              Width = 161
              Height = 24
              TabOrder = 3
            end
            object Type2CoBox: TComboBox
              Left = 184
              Top = 8
              Width = 57
              Height = 24
              ItemHeight = 16
              TabOrder = 4
              Items.Strings = (
                ''
                'SRA'
                'GTM')
            end
            object Button2: TButton
              Left = 682
              Top = 5
              Width = 81
              Height = 33
              Caption = 'QUERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Button2Click
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Check_Stage'
          ImageIndex = 2
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 495
            Align = alClient
            Caption = 'Panel14'
            TabOrder = 0
            object Panel15: TPanel
              Left = 1
              Top = 1
              Width = 1648
              Height = 48
              Align = alTop
              TabOrder = 0
              object Label22: TLabel
                Left = 22
                Top = 16
                Width = 32
                Height = 20
                Caption = 'SR#'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object SR3Edit: TEdit
                Left = 56
                Top = 16
                Width = 193
                Height = 24
                TabOrder = 0
              end
              object Button8: TButton
                Left = 255
                Top = 16
                Width = 75
                Height = 25
                Caption = 'Query'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = Button8Click
              end
              object Button3: TButton
                Left = 339
                Top = 16
                Width = 75
                Height = 25
                Caption = 'Excel'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = Button3Click
              end
            end
            object Panel16: TPanel
              Left = 1
              Top = 49
              Width = 1648
              Height = 445
              Align = alClient
              Caption = 'Panel16'
              TabOrder = 1
              object DBGridEh7: TDBGridEh
                Left = 1
                Top = 1
                Width = 1646
                Height = 443
                Align = alClient
                DataSource = DS_CheckStage
                Flat = False
                FooterColor = clWindow
                FooterFont.Charset = DEFAULT_CHARSET
                FooterFont.Color = clWindowText
                FooterFont.Height = -13
                FooterFont.Name = 'MS Sans Serif'
                FooterFont.Style = []
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'devcode'
                    Footers = <>
                    Title.Caption = 'SR'
                    Width = 171
                  end
                  item
                    EditButtons = <>
                    FieldName = 'kfjd'
                    Footers = <>
                    Title.Caption = 'Stage'
                    Width = 97
                  end
                  item
                    EditButtons = <>
                    FieldName = 'BuyNo'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ProductionLocation'
                    Footers = <>
                    Width = 150
                  end>
              end
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'For_XXZL'
          ImageIndex = 3
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 1650
            Height = 41
            Align = alTop
            TabOrder = 0
            object Button9: TButton
              Left = 13
              Top = 10
              Width = 60
              Height = 23
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button9Click
            end
            object Button10: TButton
              Left = 75
              Top = 10
              Width = 60
              Height = 23
              Caption = 'EXCEL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button10Click
            end
            object NoUsageList: TButton
              Left = 136
              Top = 8
              Width = 89
              Height = 25
              Caption = 'NoUsageList'
              TabOrder = 2
              OnClick = NoUsageListClick
            end
          end
          object Panel19: TPanel
            Left = 377
            Top = 41
            Width = 1273
            Height = 454
            Align = alClient
            TabOrder = 1
            object ForXXZLDSS: TDBGridEh
              Left = 1
              Top = 1
              Width = 1271
              Height = 452
              Align = alClient
              DataSource = ForXXZLDS
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              FooterRowCount = 1
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
                  FieldName = 'status'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'year'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'month'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'jijie'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'type'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'article'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'devcode'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'clbh'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'dwbh'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'pairs'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'cscl'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'total'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'csbh'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'zsywjc'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'ywpm'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'clzmlb'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'userdate'
                  Footers = <>
                end>
            end
          end
          object Panel20: TPanel
            Left = 0
            Top = 41
            Width = 377
            Height = 454
            Align = alLeft
            Caption = 'Panel20'
            TabOrder = 2
            object DBGridEh8: TDBGridEh
              Left = 1
              Top = 25
              Width = 375
              Height = 428
              Align = alClient
              DataSource = DS_not_xxzl
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -13
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = []
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'year'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'month'
                  Footers = <>
                  Width = 39
                end
                item
                  EditButtons = <>
                  FieldName = 'jijie'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'type'
                  Footers = <>
                  Width = 33
                end
                item
                  EditButtons = <>
                  FieldName = 'article'
                  Footers = <>
                  Width = 76
                end
                item
                  EditButtons = <>
                  FieldName = 'devcode'
                  Footers = <>
                end>
            end
            object Panel21: TPanel
              Left = 1
              Top = 1
              Width = 375
              Height = 24
              Align = alTop
              Caption = 'Panel21'
              TabOrder = 1
              object Memo2: TMemo
                Left = 1
                Top = 1
                Width = 373
                Height = 24
                Align = alTop
                Lines.Strings = (
                  #20197#19979#21015#34920#27794#26377#37327#29986#29992#37327#65292#35531#38989#22806#25235#21462)
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  object FC: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select YEAR,MONTH,type,devcode,article,total,GSBH,USERID,USERDAT' +
        'E,JIJIE,YPDH from FC_import ')
    UpdateObject = upFC_IMPORT
    Left = 104
    Top = 368
    object FCYEAR: TStringField
      FieldName = 'YEAR'
      FixedChar = True
      Size = 4
    end
    object FCMONTH: TStringField
      FieldName = 'MONTH'
      FixedChar = True
      Size = 2
    end
    object FCtype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object FCdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object FCarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object FCtotal: TFloatField
      FieldName = 'total'
    end
    object FCGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object FCUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object FCUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object FCJIJIE: TStringField
      FieldName = 'JIJIE'
      FixedChar = True
      Size = 4
    end
    object FCYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object ExcelDS: TDataSource
    DataSet = FC
    Left = 105
    Top = 336
  end
  object opendialog: TOpenDialog
    Left = 536
    Top = 48
  end
  object upFC_IMPORT: TUpdateSQL
    InsertSQL.Strings = (
      ''
      'insert into fc_import'
      
        '  (Year, Month, Type,devcode,article,total,jijie,gsbh,userid,use' +
        'rdate)'
      'values'
      
        '  (:Year, :Month,:Type,:devcode,:article,:total,:jijie,:gsbh,:us' +
        'erid,:userdate)')
    Left = 103
    Top = 400
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 73
    Top = 366
  end
  object FC_xxzls: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select MAX(ypcc) as ypcc,[YEAR],[MONTH],jijie,[type],'#39'All'#39' as ar' +
        'ticle,'#39'All'#39' as devcode,clbh,ywpm,dwbh,clzmlb,SUM(pairs) as pairs' +
        ',MAX(cscl) as cscl,SUM(total) as total,MAX(csbh) as csbh,MAX(zsy' +
        'wjc) as zsywjc,MAX(userdate) as userdate from ('
      
        'select max(ypcc) as ypcc,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,mo' +
        'nth,jijie,type,article,devcode,clbh,pairs,sum(total) as cscl,pai' +
        'rs*sum(total) as total,csbh,zsywjc,a.userdate from('
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,ypzls.clbh,FC_import.total as pairs,ypzls.clsl' +
        ' as total,ypzls.csbh,zszl.zsywjc,FC_import.userdate '
      'from FC_import '
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39' group by xiexing+shehao,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'left join zszl on zszl.zsdh=ypzls.csbh'
      'where ypzls.clbh is not null'
      'and FC_import.year='#39'2020'#39' '
      'and FC_import.month='#39'2'#39' '
      'and FC_import.type='#39'HO20'#39' '
      'and FC_import.jijie='#39'HO20'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'group by ypzl.ypcc,ypzls.bwbh,xxzl.article,ypzls.clsl,FC_import.' +
        'year,FC_import.month,FC_import.jijie,FC_import.type,FC_import.ar' +
        'ticle,FC_import.devcode,ypzls.clbh,FC_import.total ,ypzls.csbh,z' +
        'szl.zsywjc,FC_import.userdate'
      'union'
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdat' +
        'e'
      'FROM FC_import'
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao'
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'article,kfjd,xiexing,shehao from ypzl where kfjd='#39'CFM'#39' group by ' +
        'article,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '           ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao' +
        '=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and FC_import.year='#39'2020'#39' '
      'and FC_import.month='#39'2'#39' '
      'and FC_import.type='#39'HO20'#39' '
      'and FC_import.jijie='#39'HO20'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate'
      'union'
      
        'select ypcc,bwbh,article,year,month,jijie,type,devcode,clzhzl.cl' +
        'dh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc,clzhzl2.userdate from(  '
      
        'select ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_impor' +
        't.month,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,ypzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc,FC_import.userdat' +
        'e'
      'FROM FC_import'
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode '
      
        'left join xxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=kf' +
        'xxzl.shehao '
      
        'left join ( select * from (select size.*,ypzl.ypdh,row_number() ' +
        'over(PARTITION by size.article ORDER BY size.article desc) as sc' +
        'ore from (select max(ypcc) as ypcc,'
      
        'xiexing+shehao as article,kfjd,xiexing,shehao from ypzl where kf' +
        'jd='#39'CFM'#39' group by xiexing+shehao,kfjd,xiexing,shehao) size'
      
        '           left join (select * from ypzl where kfjd='#39'CFM'#39') ypzl ' +
        'on size.xiexing = ypzl.xiexing and size.shehao = ypzl.shehao and' +
        ' size.ypcc = ypzl.ypcc)ypzl where score=1'
      
        '            ) ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.sheha' +
        'o=kfxxzl.shehao'
      'left join ypzls on ypzls.ypdh=ypzl.ypdh'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'LEFT JOIN BWZL  ON ypzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(ypzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  ypzls.clbh is not null'
      'and CLZHZL.SYL>0  and clzl.clzmlb='#39'Y'#39
      'and FC_import.year='#39'2020'#39' '
      'and FC_import.month='#39'2'#39' '
      'and FC_import.type='#39'HO20'#39' '
      'and FC_import.jijie='#39'HO20'#39' '
      'and ypzl.kfjd='#39'CFM'#39' '
      
        'GROUP BY ypzl.ypcc,ypzls.bwbh,xxzl.article,FC_import.year,FC_imp' +
        'ort.month,FC_import.jijie,FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,ypzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc,FC_import.userdate)clzhzl2'
      'inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'WHERE CLZHZL.cldh1 is not null'
      ' ) a '
      'left join clzl on clzl.cldh=a.clbh '
      'where clzl.clzmlb <>'#39'Y'#39
      
        'group by clzl.clzmlb,clzl.dwbh,year,month,jijie,ywpm,type,articl' +
        'e,devcode,clbh,pairs,csbh,zsywjc,a.userdate'
      ') YPZLS'
      'Group by [YEAR],[MONTH],jijie,[type],clbh,ywpm,dwbh,clzmlb')
    Left = 169
    Top = 369
    object FC_xxzlsyear: TStringField
      FieldName = 'year'
      FixedChar = True
      Size = 4
    end
    object FC_xxzlsmonth: TStringField
      FieldName = 'month'
      FixedChar = True
      Size = 2
    end
    object FC_xxzlsjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
      Size = 4
    end
    object FC_xxzlstype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object FC_xxzlsarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object FC_xxzlsdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object FC_xxzlsclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object FC_xxzlspairs: TFloatField
      FieldName = 'pairs'
    end
    object FC_xxzlscscl: TFloatField
      FieldName = 'cscl'
    end
    object FC_xxzlstotal: TFloatField
      FieldName = 'total'
    end
    object FC_xxzlscsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object FC_xxzlszsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object FC_xxzlsywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object FC_xxzlsdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object FC_xxzlsuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object FC_xxzlsypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object FC_xxzlsclzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object FC_xxzlsForecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object FC_xxzlsStage: TStringField
      FieldName = 'Stage'
    end
    object FC_xxzlscldhflex: TStringField
      FieldName = 'cldhflex'
      Size = 15
    end
  end
  object DS_FC_xxzls: TDataSource
    DataSet = FC_xxzls
    Left = 168
    Top = 336
  end
  object DS_SR_check: TDataSource
    DataSet = SR_check
    Left = 252
    Top = 337
  end
  object SR_check: TQuery
    AfterOpen = SR_checkAfterOpen
    DatabaseName = 'dB'
    SQL.Strings = (
      'select  FC_import.*,'#39'1'#39'  as YN  from FC_import'
      'where devcode is not null'
      'and FC_import.jijie='#39'16FH'#39' ')
    UpdateObject = upSR_check
    Left = 252
    Top = 369
    object SR_checkJiJie: TStringField
      FieldName = 'JiJie'
      Origin = 'DB.FC_import.JiJie'
      FixedChar = True
      Size = 4
    end
    object SR_checkGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.FC_import.GSBH'
      FixedChar = True
      Size = 4
    end
    object SR_checkARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.FC_import.ARTICLE'
      FixedChar = True
    end
    object SR_checkDevcode: TStringField
      FieldName = 'Devcode'
      Origin = 'DB.FC_import.Devcode'
      FixedChar = True
    end
    object SR_checkYear: TStringField
      FieldName = 'Year'
      Origin = 'DB.FC_import.Year'
      FixedChar = True
      Size = 4
    end
    object SR_checkMonth: TStringField
      FieldName = 'Month'
      Origin = 'DB.FC_import.Month'
      FixedChar = True
      Size = 2
    end
    object SR_checkTotal: TFloatField
      FieldName = 'Total'
      Origin = 'DB.FC_Import.Total'
    end
    object SR_checkUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.FC_import.UserID'
      FixedChar = True
    end
    object SR_checkUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.FC_import.UserDate'
    end
    object SR_checktype: TStringField
      FieldName = 'type'
      Origin = 'DB.FC_import.type'
      FixedChar = True
      Size = 4
    end
    object SR_checkYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object SR_checkYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_not_CFM: TDataSource
    DataSet = not_CFM
    Left = 138
    Top = 337
  end
  object not_CFM: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select FC_import.year,FC_import.month,FC_import.jijie,FC_import.' +
        'type,'
      'FC_import.devcode,FC_import.userdate from FC_import'
      'where FC_import.devcode is not null'
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'6'#39' '
      'and FC_import.type='#39'CO'#39' '
      'and FC_import.jijie='#39'SP20'#39' '
      'and FC_import.devcode not in ('
      'select FC_import.devcode from FC_import'
      'left join kfxxzl on kfxxzl.devcode=fc_import.devcode'
      'left join (select * from ypzl where'
      'kfjd='#39'CFM'#39' '
      
        ')ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.sheh' +
        'ao'
      'where FC_import.devcode is not null  and ypdh is not null'
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'6'#39' '
      'and FC_import.type='#39'CO'#39' '
      'and FC_import.jijie='#39'SP20'#39' '
      'group by FC_import.devcode,FC_import.userdate)')
    Left = 138
    Top = 369
    object not_CFMyear: TStringField
      FieldName = 'year'
      FixedChar = True
      Size = 4
    end
    object not_CFMmonth: TStringField
      FieldName = 'month'
      FixedChar = True
      Size = 2
    end
    object not_CFMjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
      Size = 4
    end
    object not_CFMtype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object not_CFMdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object not_CFMuserdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DS_CheckStage: TDataSource
    DataSet = CheckStage
    Left = 313
    Top = 337
  end
  object CheckStage: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.devcode,ypzl.kfjd,BuyNo,ypzl.ProductionLocation fr' +
        'om ypzl'
      
        'left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=' +
        'kfxxzl.shehao'
      
        'left join (select distinct  buyno,xiexing,shehao from ddzl where' +
        ' GSBH='#39'VA12'#39' and BUYNO is not null ) ddzl '
      'on ddzl.XieXing=kfxxzl.XieXing and ddzl.SheHao=kfxxzl.SheHao'
      'where 1=2')
    Left = 313
    Top = 369
    object CheckStagedevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object CheckStagekfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object CheckStageBuyNo: TStringField
      FieldName = 'BuyNo'
      FixedChar = True
      Size = 10
    end
    object CheckStageProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 10
    end
  end
  object ForXXZL: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select case bwlb when '#39'3'#39' then '#39'Special'#39' else '#39'Normal'#39' end as st' +
        'atus ,clzl.clzmlb,year,clzl.ywpm,clzl.dwbh,month,a.userdate,jiji' +
        'e,type,article,devcode,clbh,pairs,sum(total) as cscl,pairs*sum(t' +
        'otal) as total,isnull(csbh,'#39#39') csbh,isnull(zsywjc,'#39#39') zsywjc  fr' +
        'om('
      
        'select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_impo' +
        'rt.month,FC_import.userdate,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,xxzls.clbh,FC_import.total as pairs,xxzls.clsl' +
        ' as total,xxzls.csbh,zszl.zsywjc from FC_import'
      'left join xxzl on xxzl.article=fc_import.article'
      
        'left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao' +
        ' = xxzl.shehao'
      'left join zszl on zszl.zsdh=xxzls.csbh'
      'where xxzls.clbh is not null and len(FC_import.article )>1  '
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'6'#39' '
      'and FC_import.type='#39'CO'#39' '
      'and FC_import.jijie='#39'SP20'#39' '
      
        'group by xxzls.bwlb,xxzls.bwbh,xxzl.article,xxzls.clsl,FC_import' +
        '.year,FC_import.month,FC_import.userdate,FC_import.jijie,FC_impo' +
        'rt.type,FC_import.article,FC_import.devcode,xxzls.clbh,FC_import' +
        '.total ,xxzls.csbh,zszl.zsywjc'
      'union'
      
        'select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_impo' +
        'rt.month,FC_import.userdate,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,xxzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc'
      'FROM FC_import'
      'left join xxzl on xxzl.article=fc_import.article'
      
        'left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao' +
        ' = xxzl.shehao'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  xxzls.clbh is not null and len(FC_import.article )>1 '
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'6'#39' '
      'and FC_import.type='#39'CO'#39' '
      'and FC_import.jijie='#39'SP20'#39' '
      
        'GROUP BY xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_im' +
        'port.month,FC_import.userdate,FC_import.jijie,FC_import.type,FC_' +
        'import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,xxzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc'
      'union'
      
        'select bwlb,bwbh,article,year,month,clzhzl2.userdate,jijie,type,' +
        'devcode,clzhzl.cldh1,pairs,total,clzhzl.zsdh,ZSZL.zsywjc from('
      
        'select xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_impo' +
        'rt.month,FC_import.userdate,FC_import.jijie,FC_import.type,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total as pairs,xxzls.cl' +
        'sl*clzhzl.syl as total,clzhzl.zsdh,zszl.zsywjc'
      'FROM FC_import'
      'left join xxzl on xxzl.article=fc_import.article'
      
        'left join xxzls on xxzls.xiexing = xxzl.xiexing and xxzls.shehao' +
        ' = xxzl.shehao'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  xxzls.clbh is not null  '
      
        'and CLZHZL.SYL>0  and clzl.clzmlb='#39'Y'#39' and len(FC_import.article ' +
        ')>1'
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'6'#39' '
      'and FC_import.type='#39'CO'#39' '
      'and FC_import.jijie='#39'SP20'#39' '
      
        'GROUP BY xxzls.bwlb,xxzls.bwbh,xxzl.article,FC_import.year,FC_im' +
        'port.month,FC_import.userdate,FC_import.userdate,FC_import.jijie' +
        ',FC_import.type,FC_import.article,'
      
        'FC_import.devcode,clzhzl.cldh1,FC_import.total,xxzls.clsl*clzhzl' +
        '.syl,clzhzl.zsdh,zszl.zsywjc)clzhzl2'
      'inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'WHERE CLZHZL.cldh1 is not null'
      ' )a'
      'left join clzl on clzl.cldh=a.clbh'
      'where clzl.clzmlb <>'#39'Y'#39
      
        'group by bwlb,clzl.clzmlb,clzl.dwbh,year,month,jijie,ywpm,type,a' +
        'rticle,devcode,clbh,pairs,csbh,zsywjc,a.userdate')
    Left = 408
    Top = 369
    object ForXXZLstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 7
    end
    object ForXXZLyear: TStringField
      FieldName = 'year'
      FixedChar = True
      Size = 4
    end
    object ForXXZLmonth: TStringField
      FieldName = 'month'
      FixedChar = True
      Size = 2
    end
    object ForXXZLjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
      Size = 4
    end
    object ForXXZLtype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object ForXXZLarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object ForXXZLdevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object ForXXZLclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object ForXXZLdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object ForXXZLcscl: TFloatField
      FieldName = 'cscl'
    end
    object ForXXZLpairs: TFloatField
      FieldName = 'pairs'
    end
    object ForXXZLtotal: TFloatField
      FieldName = 'total'
    end
    object ForXXZLcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object ForXXZLzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object ForXXZLywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object ForXXZLclzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object ForXXZLuserdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object ForXXZLDS: TDataSource
    DataSet = ForXXZL
    Left = 409
    Top = 338
  end
  object upSR_check: TUpdateSQL
    ModifySQL.Strings = (
      'update FC_import'
      'set'
      '  total= :total,'
      '  userID= :UserID,'
      '  userDate= :UserDate,'
      '  YPDH= :YPDH'
      'where'
      '  year = :OLD_year and'
      '  month = :OLD_month and'
      '  type = :OLD_type  and'
      '  jijie = :OLD_jijie and'
      '  devcode = :OLD_devcode  and'
      '  article= :OLD_article'
      '')
    DeleteSQL.Strings = (
      'delete from FC_import'
      'where'
      '  year = :OLD_year and'
      '  month = :OLD_month and'
      '  type = :OLD_type  and'
      '  jijie = :OLD_jijie and'
      '  devcode = :OLD_devcode  and'
      '  article= :OLD_article'
      ''
      '')
    Left = 252
    Top = 398
  end
  object DS_not_xxzl: TDataSource
    DataSet = not_xxzl
    Left = 377
    Top = 337
  end
  object not_xxzl: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      ''
      
        'select FC_import.year,FC_import.month,FC_import.jijie,FC_import.' +
        'type,'
      'FC_import.article,FC_import.devcode from FC_import'
      'where len(isnull(FC_import.article,'#39#39'))>1 '
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'4'#39' '
      'and FC_import.type='#39'AF'#39' '
      'and FC_import.jijie='#39'sp20'#39'  '
      
        'and not exists (select article from xxzl where FC_import.article' +
        '=article)'
      'union '
      
        'select FC_import.year,FC_import.month,FC_import.jijie,FC_import.' +
        'type,'
      'FC_import.article,FC_import.devcode from FC_import'
      'where len(isnull(FC_import.article,'#39#39'))<1 '
      'and FC_import.year='#39'2019'#39' '
      'and FC_import.month='#39'4'#39' '
      'and FC_import.type='#39'AF'#39' '
      'and FC_import.jijie='#39'sp20'#39'  ')
    Left = 377
    Top = 369
    object not_xxzlyear: TStringField
      FieldName = 'year'
      FixedChar = True
      Size = 4
    end
    object not_xxzlmonth: TStringField
      FieldName = 'month'
      FixedChar = True
      Size = 2
    end
    object not_xxzljijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
      Size = 4
    end
    object not_xxzltype: TStringField
      FieldName = 'type'
      FixedChar = True
      Size = 4
    end
    object not_xxzlarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object not_xxzldevcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 496
    Top = 351
  end
  object DS_YPZL: TDataSource
    DataSet = Ypzl
    Left = 572
    Top = 353
  end
  object Ypzl: TQuery
    AfterOpen = SR_checkAfterOpen
    DatabaseName = 'dB'
    DataSource = DS_SR_check
    SQL.Strings = (
      'select YPDH,YPZL.ARTICLE,KFJD,DEVCODE,YSSM from YPZL'
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao'
      'where kfxxzl.devcode = :Devcode'
      'order by YPZL.Userdate,YPZL.YPCC desc')
    Left = 572
    Top = 385
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'devcode'
        ParamType = ptUnknown
      end>
    object YpzlYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.YPZL.YPDH'
      FixedChar = True
      Size = 15
    end
    object YpzlARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.YPZL.ARTICLE'
      FixedChar = True
    end
    object YpzlKFJD: TStringField
      FieldName = 'KFJD'
      Origin = 'DB.YPZL.KFJD'
      FixedChar = True
      Size = 3
    end
    object YpzlDEVCODE: TStringField
      FieldName = 'DEVCODE'
      Origin = 'DB.kfxxzl.DEVCODE'
      FixedChar = True
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 33
    Top = 366
  end
end
