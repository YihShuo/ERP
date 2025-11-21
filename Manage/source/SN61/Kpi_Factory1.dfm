object KPI_Factory: TKPI_Factory
  Left = 130
  Top = 209
  Width = 1386
  Height = 740
  Caption = 'KPI_Factory'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 701
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'KPI_Factory Keyin(KPI'#24037#24288#36664#20837')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 129
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 72
          Width = 73
          Height = 20
          AutoSize = False
          Caption = 'YM('#24180#26376')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 360
          Top = 88
          Width = 4
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 100
          Width = 84
          Height = 20
          Caption = 'EX: 202301'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 64
          Align = alTop
          TabOrder = 0
          object BB1: TBitBtn
            Left = 8
            Top = 7
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
          object bbt6: TBitBtn
            Left = 384
            Top = 7
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
            Visible = False
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
          object BB2: TBitBtn
            Left = 56
            Top = 7
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
            TabOrder = 2
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
            Top = 7
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
            Top = 7
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
            TabOrder = 4
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
            Top = 7
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
            TabOrder = 5
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
            Top = 7
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
            TabOrder = 6
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
            Top = 7
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
            TabOrder = 7
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
        object Ed_YM: TEdit
          Left = 88
          Top = 72
          Width = 81
          Height = 21
          Color = clYellow
          TabOrder = 1
        end
        object Button1: TButton
          Left = 384
          Top = 69
          Width = 145
          Height = 52
          Caption = 'KPI Monthly('#26376#32080')'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 129
        Width = 1362
        Height = 537
        Align = alClient
        DataSource = DS1
        DrawMemoText = True
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        RowHeight = 26
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh6DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            ReadOnly = True
            Title.Caption = 'YM|'#24180#26376
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'Item|'#38917#30446
            Width = 204
          end
          item
            EditButtons = <>
            FieldName = 'norm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'Norm|'#25351#27161
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'Score|'#20998#25976
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'A2_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A2|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A2_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A2|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A3_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A3|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A3_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A3|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A7_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A7|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A7_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A7|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A8_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A8|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A8_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A8|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A9_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A9|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A9_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A9|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A11_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A11|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A11_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A11|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A12_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A12|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A12_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A12|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A15_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A15|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A15_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A15|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'A16_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A16|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'A16_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'A16|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TDA_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'TDA|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'TDA_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'TDA|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TDB_achieve'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'TDB|'#36948#25104#29376#27841
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'TDB_Score'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'TDB|'#24471#20998
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'MEMO_V'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'MEMO_V|'#36234#25991#20633#35387
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'MEMO_C'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Footers = <>
            Title.Caption = 'MEMO_C|'#20013#25991#20633#35387
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'KPI_R Keyin(KPI_R'#24288#36664#20837')'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 129
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 72
          Width = 73
          Height = 20
          AutoSize = False
          Caption = 'YM('#24180#26376')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 360
          Top = 88
          Width = 4
          Height = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 100
          Width = 84
          Height = 20
          Caption = 'EX: 202301'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 64
          Align = alTop
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 8
            Top = 7
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
            OnClick = BitBtn1Click
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
            Left = 384
            Top = 7
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
          object BitBtn3: TBitBtn
            Left = 56
            Top = 7
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
            TabOrder = 2
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 104
            Top = 7
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
            OnClick = BitBtn4Click
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
          object BitBtn5: TBitBtn
            Left = 152
            Top = 7
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
            TabOrder = 4
            OnClick = BitBtn5Click
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
          object BitBtn6: TBitBtn
            Left = 200
            Top = 7
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
            TabOrder = 5
            OnClick = BitBtn6Click
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
          object BitBtn7: TBitBtn
            Left = 248
            Top = 7
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
            TabOrder = 6
            OnClick = BitBtn7Click
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
          object BitBtn8: TBitBtn
            Left = 296
            Top = 7
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
            TabOrder = 7
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
        object Ed_YM_R: TEdit
          Left = 88
          Top = 72
          Width = 81
          Height = 28
          Color = clYellow
          TabOrder = 1
        end
        object Button2: TButton
          Left = 368
          Top = 69
          Width = 153
          Height = 44
          Caption = 'KPI Monthly('#26376#32080')'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button2Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 129
        Width = 1362
        Height = 537
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
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YM'
            Footers = <>
            Title.Caption = 'YM|'#24180#26376
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Item'
            Footers = <>
            Title.Caption = 'Item|'#38917#30446
            Width = 204
          end
          item
            EditButtons = <>
            FieldName = 'norm'
            Footers = <>
            Title.Caption = 'Norm|'#25351#27161
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'score'
            Footers = <>
            Title.Caption = 'Score|'#20998#25976
          end
          item
            EditButtons = <>
            FieldName = 'R2_achieve'
            Footers = <>
            Title.Caption = 'R2|'#36948#25104#29376#27841
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'R2_Score'
            Footers = <>
            Title.Caption = 'R2|'#24471#20998
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'R3_achieve'
            Footers = <>
            Title.Caption = 'R3|'#36948#25104#29376#27841
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'R3_Score'
            Footers = <>
            Title.Caption = 'R3|'#24471#20998
          end
          item
            EditButtons = <>
            FieldName = 'Process_achieve'
            Footers = <>
            Title.Caption = 'Process('#21152#24037')|'#36948#25104#29376#27841
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'Process_Score'
            Footers = <>
            Title.Caption = 'Process('#21152#24037')|'#24471#20998
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'MEMO_V'
            Footers = <>
            Title.Caption = 'MEMO_V|'#36234#25991#20633#35387
            Width = 260
          end
          item
            EditButtons = <>
            FieldName = 'MEMO_C'
            Footers = <>
            Title.Caption = 'MEMO_C|'#20013#25991#20633#35387
            Width = 294
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'KPI_Factory Analyze(KPI'#24037#24288#20998#26512')'
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1362
        Height = 666
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1354
            Height = 57
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 5
              Width = 73
              Height = 20
              AutoSize = False
              Caption = 'YM('#24180#26376')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 8
              Top = 29
              Width = 84
              Height = 20
              Caption = 'EX: 202301'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Button4: TButton
              Left = 352
              Top = 8
              Width = 121
              Height = 41
              Caption = 'Chart Analysis'
              TabOrder = 0
              OnClick = Button4Click
            end
            object Button3: TButton
              Left = 200
              Top = 8
              Width = 75
              Height = 33
              Caption = 'Query'
              TabOrder = 1
              OnClick = Button3Click
            end
            object Ed_YM_M: TEdit
              Left = 96
              Top = 12
              Width = 89
              Height = 28
              Color = clYellow
              TabOrder = 2
              Text = '202302'
            end
          end
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 419
            Width = 1354
            Height = 326
            Align = alTop
            DataSource = DS4
            EvenRowColor = clWindow
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Score_1'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_1'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_2'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_2'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Score_3'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_3'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Score_4'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_4'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_5'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_5'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_6'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_6'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'Score_7'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_7'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'Score_8'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_8'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_9'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_9'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Score_10'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_9'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 36
              end
              item
                EditButtons = <>
                FieldName = 'Score_11'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_11'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 37
              end
              item
                EditButtons = <>
                FieldName = 'Score_12'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_12'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Score_avg'
                Footers = <>
                Title.Caption = #32317#24179#22343
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'Sort_avg'
                Footers = <>
                Title.Caption = #32317#25490#21517
                Width = 68
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 361
            Width = 1354
            Height = 58
            Align = alTop
            TabOrder = 2
            object Label7: TLabel
              Left = 8
              Top = 13
              Width = 73
              Height = 20
              AutoSize = False
              Caption = 'Year'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Ed_YM_M2: TEdit
              Left = 48
              Top = 12
              Width = 65
              Height = 28
              Color = clYellow
              TabOrder = 0
              Text = '2023'
            end
            object Button5: TButton
              Left = 440
              Top = 10
              Width = 75
              Height = 31
              Caption = 'Query'
              TabOrder = 1
              OnClick = Button5Click
            end
            object RG1: TRadioGroup
              Left = 160
              Top = -4
              Width = 249
              Height = 57
              Columns = 3
              ItemIndex = 0
              Items.Strings = (
                '01~06'
                '07~12'
                'ALL')
              TabOrder = 2
              OnClick = RG1Click
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 57
            Width = 1354
            Height = 304
            Align = alTop
            TabOrder = 3
            object DBGridEh3: TDBGridEh
              Left = 1209
              Top = 1
              Width = 144
              Height = 302
              Align = alClient
              DataSource = DS5
              EvenRowColor = clWindow
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = [fsBold]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ITEM'
                  Footers = <>
                  Width = 154
                end
                item
                  EditButtons = <>
                  FieldName = 'TDA_Score'
                  Footers = <>
                  Title.Caption = 'TDA'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'TDB_Score'
                  Footers = <>
                  Title.Caption = 'TDB'
                  Width = 100
                end>
            end
            object DBGridEh4: TDBGridEh
              Left = 1
              Top = 1
              Width = 1208
              Height = 302
              Align = alLeft
              DataSource = DS3
              EvenRowColor = clWindow
              Flat = False
              FooterColor = clWindow
              FooterFont.Charset = DEFAULT_CHARSET
              FooterFont.Color = clWindowText
              FooterFont.Height = -16
              FooterFont.Name = 'MS Sans Serif'
              FooterFont.Style = [fsBold]
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDrawColumnCell = DBGridEh4DrawColumnCell
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'ITEM'
                  Footers = <>
                  Width = 154
                end
                item
                  EditButtons = <>
                  FieldName = 'A2_Score'
                  Footers = <>
                  Title.Caption = 'A2'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A3_Score'
                  Footers = <>
                  Title.Caption = 'A3'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A7_Score'
                  Footers = <>
                  Title.Caption = 'A7'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A8_Score'
                  Footers = <>
                  Title.Caption = 'A8'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A9_Score'
                  Footers = <>
                  Title.Caption = 'A9'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A11_Score'
                  Footers = <>
                  Title.Caption = 'A11'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A12_Score'
                  Footers = <>
                  Title.Caption = 'A12'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A15_Score'
                  Footers = <>
                  Title.Caption = 'A15'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'A16_Score'
                  Footers = <>
                  Title.Caption = 'A16'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = #24149#20698#37096#38272
                  Footers = <>
                  Width = 100
                end>
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 745
            Width = 1354
            Height = 202
            Align = alClient
            DataSource = DS6
            EvenRowColor = clWindow
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = [fsBold]
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGridEh2DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Factory'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Score_1'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_1'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_2'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_2'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Score_3'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_3'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Score_4'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_4'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_5'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_5'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_6'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_6'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'Score_7'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_7'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_8'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_8'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_9'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_9'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_10'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_10'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_11'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_11'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_12'
                Footers = <>
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'Sort_12'
                Footers = <>
                Title.Caption = #25490#21517
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'Score_avg'
                Footers = <>
                Title.Caption = #32317#24179#22343
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'Sort_avg'
                Footers = <>
                Title.Caption = #32317#25490#21517
                Width = 68
              end>
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'KPI_R Analyze(KPI_R'#24288#20998#26512')'
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 8
          Top = 5
          Width = 73
          Height = 20
          AutoSize = False
          Caption = 'YM('#24180#26376')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 29
          Width = 84
          Height = 20
          Caption = 'EX: 202301'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button6: TButton
          Left = 352
          Top = 8
          Width = 121
          Height = 41
          Caption = 'Chart Analysis'
          TabOrder = 0
          Visible = False
          OnClick = Button4Click
        end
        object Button7: TButton
          Left = 200
          Top = 8
          Width = 75
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button7Click
        end
        object Ed_YM_MR: TEdit
          Left = 96
          Top = 12
          Width = 89
          Height = 28
          Color = clYellow
          TabOrder = 2
          Text = '202302'
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 57
        Width = 1362
        Height = 312
        Align = alTop
        DataSource = DS7
        EvenRowColor = clWindow
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ITEM'
            Footers = <>
            Width = 154
          end
          item
            EditButtons = <>
            FieldName = 'R2_Score'
            Footers = <>
            Title.Caption = 'R2'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'R3_Score'
            Footers = <>
            Title.Caption = 'R3'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Process_Score'
            Footers = <>
            Title.Caption = 'Process'
            Width = 100
          end>
      end
      object Panel7: TPanel
        Left = 0
        Top = 369
        Width = 1362
        Height = 58
        Align = alTop
        TabOrder = 2
        object Label12: TLabel
          Left = 8
          Top = 13
          Width = 73
          Height = 20
          AutoSize = False
          Caption = 'Year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Ed_YM_M2R: TEdit
          Left = 48
          Top = 12
          Width = 65
          Height = 28
          Color = clYellow
          TabOrder = 0
          Text = '2023'
        end
        object Button8: TButton
          Left = 448
          Top = 10
          Width = 75
          Height = 31
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button8Click
        end
        object RG2: TRadioGroup
          Left = 160
          Top = -4
          Width = 249
          Height = 57
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            '01~06'
            '07~12'
            'ALL')
          TabOrder = 2
          OnClick = RG2Click
        end
      end
      object DBGridEh8: TDBGridEh
        Left = 0
        Top = 427
        Width = 1362
        Height = 239
        Align = alClient
        DataSource = DS8
        EvenRowColor = clWindow
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = [fsBold]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Factory'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Score_1'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_1'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_2'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_2'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_3'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_3'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_4'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_4'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_5'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_5'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_6'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_6'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_7'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_7'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_8'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_8'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_9'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_9'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_10'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_10'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_11'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_11'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_12'
            Footers = <>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Sort_12'
            Footers = <>
            Title.Caption = #25490#21517
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'Score_avg'
            Footers = <>
            Title.Caption = #32317#24179#22343
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Sort_avg'
            Footers = <>
            Title.Caption = #32317#25490#21517
            Width = 68
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = QKpi_factory
    Left = 22
    Top = 122
  end
  object QKpi_factory: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from [LIY_TYXUAN].[dbo].[KPI_Factory]'
      'where 1 = 0')
    UpdateObject = UPKpi_Factory
    Left = 22
    Top = 170
    object QKpi_factoryYM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 6
    end
    object QKpi_factoryItem: TStringField
      FieldName = 'Item'
      FixedChar = True
      Size = 50
    end
    object QKpi_factorynorm: TStringField
      FieldName = 'norm'
      FixedChar = True
    end
    object QKpi_factoryscore: TStringField
      FieldName = 'score'
      FixedChar = True
      Size = 10
    end
    object QKpi_factoryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object QKpi_factoryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object QKpi_factoryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKpi_factoryA2_Score: TFloatField
      FieldName = 'A2_Score'
    end
    object QKpi_factoryA3_Score: TFloatField
      FieldName = 'A3_Score'
    end
    object QKpi_factoryA7_Score: TFloatField
      FieldName = 'A7_Score'
    end
    object QKpi_factoryA8_Score: TFloatField
      FieldName = 'A8_Score'
    end
    object QKpi_factoryA9_Score: TFloatField
      FieldName = 'A9_Score'
    end
    object QKpi_factoryA11_Score: TFloatField
      FieldName = 'A11_Score'
    end
    object QKpi_factoryA12_Score: TFloatField
      FieldName = 'A12_Score'
    end
    object QKpi_factoryA15_Score: TFloatField
      FieldName = 'A15_Score'
    end
    object QKpi_factoryA16_Score: TFloatField
      FieldName = 'A16_Score'
    end
    object QKpi_factoryMEMO_V: TStringField
      FieldName = 'MEMO_V'
      FixedChar = True
      Size = 255
    end
    object QKpi_factoryMEMO_C: TStringField
      FieldName = 'MEMO_C'
      FixedChar = True
      Size = 255
    end
    object QKpi_factoryA2_achieve: TStringField
      FieldName = 'A2_achieve'
      FixedChar = True
    end
    object QKpi_factoryA3_achieve: TStringField
      FieldName = 'A3_achieve'
      FixedChar = True
    end
    object QKpi_factoryA7_achieve: TStringField
      FieldName = 'A7_achieve'
      FixedChar = True
    end
    object QKpi_factoryA8_achieve: TStringField
      FieldName = 'A8_achieve'
      FixedChar = True
    end
    object QKpi_factoryA9_achieve: TStringField
      FieldName = 'A9_achieve'
      FixedChar = True
    end
    object QKpi_factoryA11_achieve: TStringField
      FieldName = 'A11_achieve'
      FixedChar = True
    end
    object QKpi_factoryA12_achieve: TStringField
      FieldName = 'A12_achieve'
      FixedChar = True
    end
    object QKpi_factoryA15_achieve: TStringField
      FieldName = 'A15_achieve'
      FixedChar = True
    end
    object QKpi_factoryA16_achieve: TStringField
      FieldName = 'A16_achieve'
      FixedChar = True
    end
    object QKpi_factoryTDA_achieve: TStringField
      FieldName = 'TDA_achieve'
      FixedChar = True
    end
    object QKpi_factoryTDA_Score: TFloatField
      FieldName = 'TDA_Score'
    end
    object QKpi_factoryTDB_achieve: TStringField
      FieldName = 'TDB_achieve'
      FixedChar = True
    end
    object QKpi_factoryTDB_Score: TFloatField
      FieldName = 'TDB_Score'
    end
  end
  object UPKpi_Factory: TUpdateSQL
    ModifySQL.Strings = (
      'update [LIY_TYXUAN].dbo.KPI_Factory'
      'set'
      '    norm=:norm,'
      '    score = :score,'
      '    A2_achieve = :A2_achieve ,'
      '    A2_Score = :A2_Score ,'
      '    A3_achieve = :A3_achieve ,'
      '    A3_Score = :A3_Score ,'
      '    A7_achieve = :A7_achieve ,'
      '    A7_Score = :A7_Score ,'
      '    A8_achieve = :A8_achieve ,'
      '    A8_Score = :A8_Score ,'
      '    A9_achieve = :A9_achieve ,'
      '    A9_Score = :A9_Score ,'
      '    A11_achieve = :A11_achieve ,'
      '    A11_Score = :A11_Score ,'
      '    A12_achieve = :A12_achieve ,'
      '    A12_Score = :A12_Score ,'
      '    A15_achieve = :A15_achieve ,'
      '    A15_Score = :A15_Score ,'
      '    A16_achieve = :A16_achieve ,'
      '    A16_Score = :A16_Score ,'
      '    TDA_achieve = :TDA_achieve ,'
      '    TDA_Score = :TDA_Score ,'
      '    TDB_achieve = :TDB_achieve ,'
      '    TDB_Score = :TDB_Score ,'
      '    MEMO_V = :MEMO_V ,'
      '    MEMO_C = :MEMO_C'
      '  where'
      '   YM= :OLD_YM and'
      '   Item =:OLD_Item')
    InsertSQL.Strings = (
      'insert into [LIY_TYXUAN].dbo.KPI_Factory'
      
        '  (YM,Item,norm,score,A2_achieve,A2_Score,A3_achieve,A3_Score,A7' +
        '_achieve,A7_Score,A8_achieve,A8_Score,A9_achieve,A9_Score'
      
        '  ,A11_achieve,A11_Score,A12_achieve,A12_Score,A15_achieve,A15_S' +
        'core,A16_achieve,A16_Score,TDA_achieve,TDA_Score,TDB_achieve,TDB' +
        '_Score,USERID,USERDATE,YN,MEMO_V,MEMO_C)'
      'values'
      
        '  (:YM,:Item,:norm,:score,:A2_achieve,:A2_Score,:A3_achieve,:A3_' +
        'Score,:A7_achieve,:A7_Score,:A8_achieve,:A8_Score,:A9_achieve,:A' +
        '9_Score'
      
        '  ,:A11_achieve,:A11_Score,:A12_achieve,:A12_Score,:A15_achieve,' +
        ':A15_Score,:A16_achieve,:A16_Score,:TDA_achieve,:TDA_Score,:TDB_' +
        'achieve,:TDB_Score,:USERID,:USERDATE,:YN,:MEMO_V,:MEMO_C)'
      '')
    DeleteSQL.Strings = (
      'Delete From [LIY_TYXUAN].dbo.KPI_Factory'
      'where'
      '  YM=:OLD_YM'
      '  and Item = :OLD_Item')
    Left = 20
    Top = 224
  end
  object Qtemp: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from [LIY_TYXUAN].[dbo].[KPI_Factory]'
      'where 1 = 0')
    Left = 22
    Top = 370
  end
  object Qtemp1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from [LIY_TYXUAN].[dbo].[KPI_Factory]'
      'where 1 = 0')
    Left = 62
    Top = 370
  end
  object UPKpi_R: TUpdateSQL
    ModifySQL.Strings = (
      'update [LIY_TYXUAN].dbo.KPI_R'
      'set'
      '    norm=:norm,'
      '    score = :score,'
      '    R2_achieve = :R2_achieve ,'
      '    R2_Score = :R2_Score ,'
      '    R3_achieve = :R3_achieve ,'
      '    R3_Score = :R3_Score ,'
      '    Process_achieve = :Process_achieve ,'
      '    Process_Score = :Process_Score ,'
      '    MEMO_V = :MEMO_V ,'
      '    MEMO_C = :MEMO_C'
      '  where'
      '   YM= :OLD_YM and'
      '   Item =:OLD_Item')
    InsertSQL.Strings = (
      'insert into [LIY_TYXUAN].dbo.KPI_R'
      
        '  (YM,Item,norm,score,R2_achieve,R2_Score,R3_achieve,R3_Score,Pr' +
        'ocess_achieve,Process_Score,USERID,USERDATE,YN,MEMO_V,MEMO_C)'
      'values'
      
        '  (:YM,:Item,:norm,:score,:R2_achieve,:R2_Score,:R3_achieve,:R3_' +
        'Score,:Process_achieve,:Process_Score,:USERID,:USERDATE,:YN,:MEM' +
        'O_V,:MEMO_C)'
      '')
    DeleteSQL.Strings = (
      'Delete From [LIY_TYXUAN].dbo.KPI_R'
      'where'
      '  YM=:OLD_YM'
      '  and Item = :OLD_Item')
    Left = 84
    Top = 224
  end
  object DS2: TDataSource
    DataSet = QKpi_r
    Left = 86
    Top = 122
  end
  object QKpi_r: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from [LIY_TYXUAN].[dbo].[KPI_R]'
      'where 1 = 0')
    UpdateObject = UPKpi_R
    Left = 86
    Top = 170
    object StringField1: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'Item'
      FixedChar = True
      Size = 50
    end
    object StringField4: TStringField
      FieldName = 'norm'
      FixedChar = True
    end
    object StringField5: TStringField
      FieldName = 'score'
      FixedChar = True
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField7: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKpi_rR2_achieve: TStringField
      FieldName = 'R2_achieve'
      FixedChar = True
    end
    object QKpi_rR2_Score: TFloatField
      FieldName = 'R2_Score'
    end
    object QKpi_rR3_achieve: TStringField
      FieldName = 'R3_achieve'
      FixedChar = True
    end
    object QKpi_rR3_Score: TFloatField
      FieldName = 'R3_Score'
    end
    object QKpi_rProcess_achieve: TStringField
      FieldName = 'Process_achieve'
      FixedChar = True
    end
    object QKpi_rProcess_Score: TFloatField
      FieldName = 'Process_Score'
    end
    object QKpi_rMEMO_V: TStringField
      FieldName = 'MEMO_V'
      FixedChar = True
      Size = 255
    end
    object QKpi_rMEMO_C: TStringField
      FieldName = 'MEMO_C'
      FixedChar = True
      Size = 255
    end
  end
  object QKpi_Factory_M: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YM,'#39'01'#37327#29986#21152#27402#39' as ITEM, cast(sum(A2_Score)*0.5 as varchar) a' +
        's A2_Score,cast(sum(A3_Score)*0.5 as varchar) as A3_Score,cast(s' +
        'um(A7_Score)*0.5 as varchar) as A7_Score,'
      
        'cast(sum(A8_Score)*0.5 as varchar) as A8_Score,cast(sum(A9_Score' +
        ')*0.5 as varchar) as A9_Score,'
      
        ' cast(sum(A11_Score)*0.5 as varchar) as A11_Score,cast(sum(A12_S' +
        'core)*0.5 as varchar) as A12_Score,cast(sum(A15_Score)*0.5 as va' +
        'rchar) as A15_Score,cast(sum(A16_Score)*0.5 as varchar) as A16_S' +
        'core,'#39'abc'#39' as '#24149#20698#37096#38272' '
      ' from [LIY_TYXUAN].dbo.KPI_Factory '
      ' where YM = '#39'202302'#39' '
      ' and Item like '#39'01%'#39' '
      ' group by YM ')
    Left = 144
    Top = 174
    object QKpi_Factory_MYM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 6
    end
    object QKpi_Factory_MITEM: TStringField
      FieldName = 'ITEM'
      FixedChar = True
      Size = 10
    end
    object QKpi_Factory_MA2_Score: TStringField
      FieldName = 'A2_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA3_Score: TStringField
      FieldName = 'A3_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA7_Score: TStringField
      FieldName = 'A7_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA8_Score: TStringField
      FieldName = 'A8_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA9_Score: TStringField
      FieldName = 'A9_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA11_Score: TStringField
      FieldName = 'A11_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA12_Score: TStringField
      FieldName = 'A12_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA15_Score: TStringField
      FieldName = 'A15_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MA16_Score: TStringField
      FieldName = 'A16_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_MBDEDesigner: TStringField
      FieldName = #24149#20698#37096#38272
      FixedChar = True
      Size = 3
    end
  end
  object DS3: TDataSource
    DataSet = QKpi_Factory_M
    Left = 168
    Top = 118
  end
  object DS4: TDataSource
    DataSet = QKpi_Factory_M2
    Left = 144
    Top = 230
  end
  object QKpi_Factory_M2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id(N'#39'tempdb..#Factory_M2'#39') is not null  '
      'begin  '
      '  drop table #Factory_M2 '
      'end  '
      'create table #Factory_M2(  '
      '  Factory VarCHAR(6), '
      '  Score_1 Float, '
      '  Sort_1 integer, '
      '  Score_2 Float, '
      '  Sort_2 integer, '
      '  Score_3 Float, '
      '  Sort_3 integer, '
      '  Score_4 Float, '
      '  Sort_4 integer, '
      '  Score_5 Float, '
      '  Sort_5 integer, '
      '  Score_6 Float, '
      '  Sort_6 integer, '
      '  Score_7 Float,'
      '  Sort_7 integer,'
      '  Score_8 Float,'
      '  Sort_8 integer,'
      '  Score_9 Float,'
      '  Sort_9 integer,'
      '  Score_10 Float,'
      '  Sort_10 integer,'
      '  Score_11 Float,'
      '  Sort_11 integer,'
      '  Score_12 Float,'
      '  Sort_12 integer,'
      '  Score_avg Float,'
      '  Sort_avg integer '
      ')   '
      'select * from #Factory_M2'
      '')
    Left = 144
    Top = 294
    object QKpi_Factory_M2Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 6
    end
    object QKpi_Factory_M2Score_1: TFloatField
      FieldName = 'Score_1'
    end
    object QKpi_Factory_M2Sort_1: TIntegerField
      FieldName = 'Sort_1'
    end
    object QKpi_Factory_M2Score_2: TFloatField
      FieldName = 'Score_2'
    end
    object QKpi_Factory_M2Sort_2: TIntegerField
      FieldName = 'Sort_2'
    end
    object QKpi_Factory_M2Score_3: TFloatField
      FieldName = 'Score_3'
    end
    object QKpi_Factory_M2Sort_3: TIntegerField
      FieldName = 'Sort_3'
    end
    object QKpi_Factory_M2Score_4: TFloatField
      FieldName = 'Score_4'
    end
    object QKpi_Factory_M2Sort_4: TIntegerField
      FieldName = 'Sort_4'
    end
    object QKpi_Factory_M2Score_5: TFloatField
      FieldName = 'Score_5'
    end
    object QKpi_Factory_M2Sort_5: TIntegerField
      FieldName = 'Sort_5'
    end
    object QKpi_Factory_M2Score_6: TFloatField
      FieldName = 'Score_6'
    end
    object QKpi_Factory_M2Sort_6: TIntegerField
      FieldName = 'Sort_6'
    end
    object QKpi_Factory_M2Score_avg: TFloatField
      FieldName = 'Score_avg'
    end
    object QKpi_Factory_M2Sort_avg: TIntegerField
      FieldName = 'Sort_avg'
    end
    object QKpi_Factory_M2Score_7: TFloatField
      FieldName = 'Score_7'
    end
    object QKpi_Factory_M2Sort_7: TIntegerField
      FieldName = 'Sort_7'
    end
    object QKpi_Factory_M2Score_8: TFloatField
      FieldName = 'Score_8'
    end
    object QKpi_Factory_M2Sort_8: TIntegerField
      FieldName = 'Sort_8'
    end
    object QKpi_Factory_M2Score_9: TFloatField
      FieldName = 'Score_9'
    end
    object QKpi_Factory_M2Sort_9: TIntegerField
      FieldName = 'Sort_9'
    end
    object QKpi_Factory_M2Score_10: TFloatField
      FieldName = 'Score_10'
    end
    object QKpi_Factory_M2Sort_10: TIntegerField
      FieldName = 'Sort_10'
    end
    object QKpi_Factory_M2Score_11: TFloatField
      FieldName = 'Score_11'
    end
    object QKpi_Factory_M2Sort_11: TIntegerField
      FieldName = 'Sort_11'
    end
    object QKpi_Factory_M2Score_12: TFloatField
      FieldName = 'Score_12'
    end
    object QKpi_Factory_M2Sort_12: TIntegerField
      FieldName = 'Sort_12'
    end
  end
  object DS5: TDataSource
    DataSet = QKpi_Factory_TDM
    Left = 248
    Top = 118
  end
  object QKpi_Factory_TDM: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YM,'#39'01'#37327#29986#21152#27402#39' as ITEM, cast(sum(TDA_Score)*0.5 as varchar) ' +
        'as TDA_Score,cast(sum(TDB_Score)*0.5 as varchar) as TDB_Score'
      ' from [LIY_TYXUAN].dbo.KPI_Factory'
      ' where YM = '#39'202302'#39' '
      ' and Item like '#39'01%'#39' '
      ' group by YM ')
    Left = 248
    Top = 174
    object StringField2: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'ITEM'
      FixedChar = True
      Size = 10
    end
    object QKpi_Factory_TDMTDA_Score: TStringField
      FieldName = 'TDA_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_Factory_TDMTDB_Score: TStringField
      FieldName = 'TDB_Score'
      FixedChar = True
      Size = 30
    end
  end
  object DS6: TDataSource
    DataSet = QKpi_Factory_TDM2
    Left = 248
    Top = 230
  end
  object QKpi_Factory_TDM2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id(N'#39'tempdb..#Factory_M2'#39') is not null  '
      'begin  '
      '  drop table #Factory_M2 '
      'end  '
      'create table #Factory_M2(  '
      '  Factory VarCHAR(6), '
      '  Score_1 Float, '
      '  Sort_1 integer, '
      '  Score_2 Float, '
      '  Sort_2 integer, '
      '  Score_3 Float, '
      '  Sort_3 integer, '
      '  Score_4 Float, '
      '  Sort_4 integer, '
      '  Score_5 Float, '
      '  Sort_5 integer, '
      '  Score_6 Float, '
      '  Sort_6 integer, '
      '  Score_7 Float,'
      '  Sort_7 integer,'
      '  Score_8 Float,'
      '  Sort_8 integer,'
      '  Score_9 Float,'
      '  Sort_9 integer,'
      '  Score_10 Float,'
      '  Sort_10 integer,'
      '  Score_11 Float,'
      '  Sort_11 integer,'
      '  Score_12 Float,'
      '  Sort_12 integer,'
      '  Score_avg Float, '
      '  Sort_avg integer '
      ')   '
      'select * from #Factory_M2'
      '')
    Left = 248
    Top = 294
    object StringField19: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'Score_1'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Sort_1'
    end
    object FloatField2: TFloatField
      FieldName = 'Score_2'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Sort_2'
    end
    object FloatField3: TFloatField
      FieldName = 'Score_3'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Sort_3'
    end
    object FloatField4: TFloatField
      FieldName = 'Score_4'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Sort_4'
    end
    object FloatField5: TFloatField
      FieldName = 'Score_5'
    end
    object IntegerField5: TIntegerField
      FieldName = 'Sort_5'
    end
    object FloatField6: TFloatField
      FieldName = 'Score_6'
    end
    object IntegerField6: TIntegerField
      FieldName = 'Sort_6'
    end
    object FloatField7: TFloatField
      FieldName = 'Score_avg'
    end
    object IntegerField7: TIntegerField
      FieldName = 'Sort_avg'
    end
    object QKpi_Factory_TDM2Score_7: TFloatField
      FieldName = 'Score_7'
    end
    object QKpi_Factory_TDM2Sort_7: TIntegerField
      FieldName = 'Sort_7'
    end
    object QKpi_Factory_TDM2Score_8: TFloatField
      FieldName = 'Score_8'
    end
    object QKpi_Factory_TDM2Sort_8: TIntegerField
      FieldName = 'Sort_8'
    end
    object QKpi_Factory_TDM2Score_9: TFloatField
      FieldName = 'Score_9'
    end
    object QKpi_Factory_TDM2Sort_9: TIntegerField
      FieldName = 'Sort_9'
    end
    object QKpi_Factory_TDM2Score_10: TFloatField
      FieldName = 'Score_10'
    end
    object QKpi_Factory_TDM2Sort_10: TIntegerField
      FieldName = 'Sort_10'
    end
    object QKpi_Factory_TDM2Score_11: TFloatField
      FieldName = 'Score_11'
    end
    object QKpi_Factory_TDM2Sort_11: TIntegerField
      FieldName = 'Sort_11'
    end
    object QKpi_Factory_TDM2Score_12: TFloatField
      FieldName = 'Score_12'
    end
    object QKpi_Factory_TDM2Sort_12: TIntegerField
      FieldName = 'Sort_12'
    end
  end
  object DS7: TDataSource
    DataSet = QKpi_R_M
    Left = 360
    Top = 126
  end
  object QKpi_R_M: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YM,'#39'01'#37327#29986#21152#27402#39' as ITEM, cast(sum(R2_Score) as varchar) as R2' +
        '_Score,cast(sum(R3_Score) as varchar) as R3_Score,cast(sum(Proce' +
        'ss_Score) as varchar) as Process_Score'
      ' from [LIY_TYXUAN].dbo.KPI_R'
      ' where YM = '#39'202302'#39' '
      ' and Item like '#39'01%'#39' '
      ' group by YM ')
    Left = 360
    Top = 182
    object StringField9: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 6
    end
    object StringField10: TStringField
      FieldName = 'ITEM'
      FixedChar = True
      Size = 10
    end
    object QKpi_R_MR2_Score: TStringField
      FieldName = 'R2_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_R_MR3_Score: TStringField
      FieldName = 'R3_Score'
      FixedChar = True
      Size = 30
    end
    object QKpi_R_MProcess_Score: TStringField
      FieldName = 'Process_Score'
      FixedChar = True
      Size = 30
    end
  end
  object DS8: TDataSource
    DataSet = QKpi_R_M2
    Left = 360
    Top = 230
  end
  object QKpi_R_M2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'if object_id(N'#39'tempdb..#Factory_M2'#39') is not null  '
      'begin  '
      '  drop table #Factory_M2 '
      'end  '
      'create table #Factory_M2(  '
      '  Factory VarCHAR(6), '
      '  Score_1 Float, '
      '  Sort_1 integer, '
      '  Score_2 Float, '
      '  Sort_2 integer, '
      '  Score_3 Float, '
      '  Sort_3 integer, '
      '  Score_4 Float, '
      '  Sort_4 integer, '
      '  Score_5 Float, '
      '  Sort_5 integer, '
      '  Score_6 Float, '
      '  Sort_6 integer, '
      '  Score_7 Float,'
      '  Sort_7 integer,'
      '  Score_8 Float,'
      '  Sort_8 integer,'
      '  Score_9 Float,'
      '  Sort_9 integer,'
      '  Score_10 Float,'
      '  Sort_10 integer,'
      '  Score_11 Float,'
      '  Sort_11 integer,'
      '  Score_12 Float,'
      '  Sort_12 integer,'
      '  Score_avg Float, '
      '  Sort_avg integer '
      ')   '
      'select * from #Factory_M2'
      '')
    Left = 360
    Top = 294
    object StringField11: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 6
    end
    object FloatField8: TFloatField
      FieldName = 'Score_1'
    end
    object IntegerField8: TIntegerField
      FieldName = 'Sort_1'
    end
    object FloatField9: TFloatField
      FieldName = 'Score_2'
    end
    object IntegerField9: TIntegerField
      FieldName = 'Sort_2'
    end
    object FloatField10: TFloatField
      FieldName = 'Score_3'
    end
    object IntegerField10: TIntegerField
      FieldName = 'Sort_3'
    end
    object FloatField11: TFloatField
      FieldName = 'Score_4'
    end
    object IntegerField11: TIntegerField
      FieldName = 'Sort_4'
    end
    object FloatField12: TFloatField
      FieldName = 'Score_5'
    end
    object IntegerField12: TIntegerField
      FieldName = 'Sort_5'
    end
    object FloatField13: TFloatField
      FieldName = 'Score_6'
    end
    object IntegerField13: TIntegerField
      FieldName = 'Sort_6'
    end
    object FloatField14: TFloatField
      FieldName = 'Score_avg'
    end
    object IntegerField14: TIntegerField
      FieldName = 'Sort_avg'
    end
    object QKpi_R_M2Score_7: TFloatField
      FieldName = 'Score_7'
    end
    object QKpi_R_M2Sort_7: TIntegerField
      FieldName = 'Sort_7'
    end
    object QKpi_R_M2Score_8: TFloatField
      FieldName = 'Score_8'
    end
    object QKpi_R_M2Sort_8: TIntegerField
      FieldName = 'Sort_8'
    end
    object QKpi_R_M2Score_9: TFloatField
      FieldName = 'Score_9'
    end
    object QKpi_R_M2Sort_9: TIntegerField
      FieldName = 'Sort_9'
    end
    object QKpi_R_M2Score_10: TFloatField
      FieldName = 'Score_10'
    end
    object QKpi_R_M2Sort_10: TIntegerField
      FieldName = 'Sort_10'
    end
    object QKpi_R_M2Score_11: TFloatField
      FieldName = 'Score_11'
    end
    object QKpi_R_M2Sort_11: TIntegerField
      FieldName = 'Sort_11'
    end
    object QKpi_R_M2Score_12: TFloatField
      FieldName = 'Score_12'
    end
    object QKpi_R_M2Sort_12: TIntegerField
      FieldName = 'Sort_12'
    end
  end
end
