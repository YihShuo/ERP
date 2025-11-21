object FlexCode: TFlexCode
  Left = 394
  Top = 171
  Width = 1300
  Height = 707
  Caption = 'Flex code Mat&Supplier'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 668
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1282
      Height = 666
      ActivePage = Supplier
      Align = alClient
      TabOrder = 0
      object Supplier: TTabSheet
        Caption = 'Material'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 153
          Align = alTop
          TabOrder = 0
          object Panel7: TPanel
            Left = 1
            Top = 81
            Width = 1272
            Height = 72
            Align = alTop
            TabOrder = 0
            object bbb1: TBitBtn
              Left = 8
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
              OnClick = bbb1Click
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
            object bbb2: TBitBtn
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
            object bbb3: TBitBtn
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
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
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
            object bbb4: TBitBtn
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
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = bbb4Click
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
            object bbb5: TBitBtn
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
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = bbb5Click
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
            object bbb6: TBitBtn
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
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = bbb6Click
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
            object btExcel_Mat: TBitBtn
              Left = 320
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = btExcel_MatClick
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
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 1272
            Height = 80
            Align = alTop
            TabOrder = 1
            Visible = False
            object Label3: TLabel
              Left = 32
              Top = 11
              Width = 44
              Height = 20
              Caption = 'MatID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 8
              Top = 34
              Width = 69
              Height = 20
              Caption = 'MatName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 256
              Top = 34
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
            object Label6: TLabel
              Left = 240
              Top = 11
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
            object Label7: TLabel
              Left = 448
              Top = 10
              Width = 94
              Height = 20
              Caption = 'SampleOrder'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 473
              Top = 34
              Width = 67
              Height = 20
              Caption = 'FlexCode'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit3: TEdit
              Left = 89
              Top = 10
              Width = 121
              Height = 21
              TabOrder = 0
            end
            object Button2: TButton
              Left = 696
              Top = 22
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
              OnClick = Button2Click
            end
            object Edit4: TEdit
              Left = 88
              Top = 33
              Width = 121
              Height = 21
              TabOrder = 2
            end
            object CheckBox2: TCheckBox
              Left = 776
              Top = 32
              Width = 97
              Height = 17
              Caption = 'not Set up'
              TabOrder = 3
            end
            object Edit5: TEdit
              Left = 305
              Top = 10
              Width = 121
              Height = 21
              TabOrder = 4
            end
            object Edit6: TEdit
              Left = 304
              Top = 33
              Width = 121
              Height = 21
              TabOrder = 5
            end
            object Edit7: TEdit
              Left = 552
              Top = 9
              Width = 121
              Height = 21
              TabOrder = 6
            end
            object Edit10: TEdit
              Left = 552
              Top = 33
              Width = 121
              Height = 21
              TabOrder = 7
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 153
          Width = 1274
          Height = 485
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 1
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1272
            Height = 483
            Align = alClient
            DataSource = DataSource2
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnEditButtonClick = DBGridEh2EditButtonClick
            Columns = <
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'cldhflex'
                Footers = <>
                Title.Caption = 'Flex|Code'
              end
              item
                EditButtons = <>
                FieldName = 'cldhflexdes'
                Footers = <>
                Title.Caption = 'Flex|Description'
                Width = 429
              end
              item
                EditButtons = <>
                FieldName = 'ColorFlex'
                Footers = <>
                Title.Caption = 'Flex|ColorCode'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'cldh'
                Footer.FieldName = 'cldh'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'ERP|Code'
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'ywpm'
                Footers = <>
                Title.Caption = 'ERP|EnglishName'
                Width = 512
              end
              item
                EditButtons = <>
                FieldName = 'zwpm'
                Footers = <>
                Title.Caption = 'ERP|ChineseName'
                Width = 337
              end
              item
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                Title.Caption = 'UserID'
              end
              item
                DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'UserDate'
              end>
          end
        end
      end
      object Material: TTabSheet
        Caption = 'Supplier'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 105
          Align = alTop
          Caption = 'Panel3'
          TabOrder = 0
          object Panel5: TPanel
            Left = 1
            Top = 41
            Width = 1272
            Height = 64
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
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
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
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
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
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
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
              Font.Height = -15
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
            object btExcel_Sup: TBitBtn
              Left = 320
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Modify Current'
              Caption = 'Excel'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = btExcel_SupClick
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
            Left = 1
            Top = 1
            Width = 1272
            Height = 40
            Align = alTop
            TabOrder = 1
            Visible = False
            object Label1: TLabel
              Left = 24
              Top = 11
              Width = 75
              Height = 20
              Caption = 'SupplierID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 248
              Top = 10
              Width = 100
              Height = 20
              Caption = 'SupplierName'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 113
              Top = 10
              Width = 121
              Height = 24
              TabOrder = 0
            end
            object Button1: TButton
              Left = 496
              Top = 6
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
              OnClick = Button1Click
            end
            object Edit2: TEdit
              Left = 360
              Top = 9
              Width = 121
              Height = 24
              TabOrder = 2
            end
            object CheckBox1: TCheckBox
              Left = 584
              Top = 8
              Width = 97
              Height = 17
              Caption = 'not Set up'
              TabOrder = 3
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 105
          Width = 1274
          Height = 533
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1272
            Height = 531
            Align = alClient
            DataSource = DataSource1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                Color = clSkyBlue
                EditButtons = <>
                FieldName = 'zsdhflex'
                Footers = <>
                Title.Caption = 'Flex|SupplierCode'
                Width = 155
              end
              item
                EditButtons = <>
                FieldName = 'zsdh'
                Footer.FieldName = 'zsdh'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'ERP|SupplierCode'
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'zsywjc'
                Footers = <>
                Title.Caption = 'ERP|EnglishName'
                Width = 145
              end
              item
                EditButtons = <>
                FieldName = 'zsqm'
                Footers = <>
                Title.Caption = 'ERP|ChineseName'
                Width = 251
              end
              item
                EditButtons = <>
                FieldName = 'zsjc'
                Footers = <>
                Title.Caption = 'ERP|Description'
              end
              item
                EditButtons = <>
                FieldName = 'userid'
                Footers = <>
                Title.Caption = 'UserID'
                Width = 102
              end
              item
                DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = 'UserDate'
                Width = 264
              end>
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'FlexdataImport'
        ImageIndex = 2
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1274
          Height = 113
          Align = alTop
          TabOrder = 0
          object Label8: TLabel
            Left = 16
            Top = 88
            Width = 44
            Height = 13
            Caption = 'FlexCode'
          end
          object Label9: TLabel
            Left = 200
            Top = 88
            Width = 97
            Height = 13
            Caption = 'FlexCodeDescription'
          end
          object Btn1: TButton
            Left = 40
            Top = 16
            Width = 49
            Height = 49
            Caption = 'Import'
            Enabled = False
            TabOrder = 0
            OnClick = Btn1Click
          end
          object Btn2: TBitBtn
            Left = 88
            Top = 16
            Width = 49
            Height = 49
            Caption = 'Query'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Btn2Click
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
          object Btn3: TBitBtn
            Left = 136
            Top = 16
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
            TabOrder = 2
            OnClick = Btn3Click
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
          object Btn6: TBitBtn
            Left = 280
            Top = 16
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
            TabOrder = 3
            OnClick = Btn6Click
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
          object Btn4: TBitBtn
            Left = 184
            Top = 16
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
            OnClick = Btn4Click
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
          object Btn5: TBitBtn
            Left = 232
            Top = 16
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
            OnClick = Btn5Click
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
          object Btn7: TBitBtn
            Left = 328
            Top = 16
            Width = 49
            Height = 49
            Hint = 'Delete one Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = Btn7Click
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
          object Edit8: TEdit
            Left = 64
            Top = 80
            Width = 121
            Height = 21
            TabOrder = 7
          end
          object Edit9: TEdit
            Left = 304
            Top = 80
            Width = 121
            Height = 21
            TabOrder = 8
          end
          object btExcel_Flex: TBitBtn
            Left = 393
            Top = 16
            Width = 49
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Excel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnClick = btExcel_FlexClick
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
        object Panel11: TPanel
          Left = 0
          Top = 113
          Width = 1274
          Height = 525
          Align = alClient
          Caption = 'Panel11'
          TabOrder = 1
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 1
            Width = 1272
            Height = 523
            Align = alClient
            DataSource = DataSource3
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDrawColumnCell = DBGridEh3DrawColumnCell
            OnGetCellParams = DBGridEh3GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'cldhflex'
                Footer.FieldName = 'cldhflex'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = 'Flex|Code'
              end
              item
                EditButtons = <>
                FieldName = 'cldhflexdes'
                Footers = <>
                Title.Caption = 'Flex|Description'
                Width = 747
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
              end>
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select zszl.zsdh,zszl_flex.zsdhflex,zszl.zsywjc,zszl.zsqm,zszl.z' +
        'sjc,zszl_flex.userid,zszl_flex.userdate,zszl_flex.zsdh as mainzs' +
        'dh from zszl'
      'left join zszl_flex on zszl_flex.zsdh=zszl.zsdh'
      'where zszl.zsywjc<>'#39'X'#39)
    UpdateObject = UpdateSQL1
    Left = 117
    Top = 226
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsdhflex: TStringField
      FieldName = 'zsdhflex'
      Origin = 'DB.zszl_flex.zsdhflex'
      FixedChar = True
      Size = 12
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      Origin = 'DB.zszl.zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.zszl.zsjc'
      FixedChar = True
    end
    object Query1userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query1mainzsdh: TStringField
      FieldName = 'mainzsdh'
      FixedChar = True
      Size = 6
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update zszl_flex'
      'Set'
      '  zsdhflex=:zsdhflex,userid=:userid,userdate=:userdate'
      'where'
      '  zsdh=:OLD_zsdh'
      ''
      '')
    InsertSQL.Strings = (
      'insert into zszl_flex'
      '  (zsdh,zsdhflex ,userid,userdate)'
      'values'
      '  (:zsdh,:zsdhflex, :userid,:userdate)')
    Left = 117
    Top = 274
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 157
    Top = 226
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 69
    Top = 226
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select top 300 a.cldh,clzl_flex.cldhflex,a.ywpm,a.zwpm,clzl_flex' +
        '.userid,clzl_flex.userdate,clzl_flex.cldh as maincldh,clzl_flexs' +
        '.cldhflexdes from clzl a'
      'left join clzl_flex on clzl_flex.cldh=a.cldh'
      'left join clzl_flexs on clzl_flex.cldhflex=clzl_flexs.cldhflex'
      'where 1=1 ')
    UpdateObject = UpdateSQL2
    Left = 365
    Top = 234
    object Query2cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query2cldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
    object Query2cldhflexdes: TStringField
      FieldName = 'cldhflexdes'
      FixedChar = True
      Size = 200
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query2userid: TStringField
      FieldName = 'userid'
      FixedChar = True
    end
    object Query2userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query2maincldh: TStringField
      FieldName = 'maincldh'
      FixedChar = True
      Size = 10
    end
    object Query2ColorFlex: TStringField
      FieldName = 'ColorFlex'
      Size = 25
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 413
    Top = 234
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'Update clzl_flex'
      'Set'
      '  cldhflex=:cldhflex,userid=:userid,userdate=:userdate'
      'where'
      '  cldh=:OLD_cldh')
    Left = 365
    Top = 274
  end
  object FC: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select cldhflex,cldhflexdes ,'#39#39' as YN from clzl_flexs where 1=2')
    UpdateObject = UpFC
    Left = 597
    Top = 298
    object FCcldhflex: TStringField
      FieldName = 'cldhflex'
      Origin = 'DB.clzl_flexs.cldhflex'
      FixedChar = True
      Size = 15
    end
    object FCcldhflexdes: TStringField
      FieldName = 'cldhflexdes'
      Origin = 'DB.clzl_flexs.cldhflexdes'
      FixedChar = True
      Size = 200
    end
    object FCYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource3: TDataSource
    DataSet = FC
    Left = 645
    Top = 298
  end
  object OpenDialog: TOpenDialog
    Left = 609
    Top = 249
  end
  object UpFC: TUpdateSQL
    ModifySQL.Strings = (
      'update clzl_flexs'
      'set'
      '    cldhflexdes=:cldhflexdes'
      '  where'
      '   cldhflex= :OLD_cldhflex')
    InsertSQL.Strings = (
      ''
      'insert into clzl_flexs'
      '  (cldhflex, cldhflexdes)'
      'values'
      '  (:cldhflex, :cldhflexdes)')
    DeleteSQL.Strings = (
      'Delete From clzl_flexs'
      '  where'
      '   cldhflex= :OLD_cldhflex and'
      '   cldhflexdes= :OLD_cldhflexdes')
    Left = 601
    Top = 337
  end
end
