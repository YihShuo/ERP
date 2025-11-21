object Budget_Setting: TBudget_Setting
  Left = 400
  Top = 265
  Width = 1228
  Height = 601
  Caption = 'Budget_Setting('#38928#31639#35373#23450')'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1220
    Height = 570
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Budget('#27599#26376#38928#31639')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1212
        Height = 65
        Align = alTop
        TabOrder = 0
        object BB2: TBitBtn
          Left = 248
          Top = 8
          Width = 169
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Insert New Month Budget'
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
          Left = 744
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
          Visible = False
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
          Left = 56
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
          Left = 104
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
          Left = 152
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
          Visible = False
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
        object DTP1: TDateTimePicker
          Left = 440
          Top = 24
          Width = 81
          Height = 28
          Date = 45056.642683217590000000
          Format = 'yyyy/MM/dd'
          Time = 45056.642683217590000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 1212
        Height = 470
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGridEh
          Left = 1
          Top = 57
          Width = 1210
          Height = 412
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
          FooterFont.Height = -11
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
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DepMemo_1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DEP_NAME|'#37096#38272#21517#31281
              Width = 194
            end
            item
              EditButtons = <>
              FieldName = 'YM'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Year|'#24180#20221
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Month|'#26376#20221
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'DepMemo'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Memo|'#20633#35387
              Width = 190
            end
            item
              EditButtons = <>
              FieldName = 'Budget_B'
              Footers = <>
              Title.Caption = 'Budget|'#38928#31639
            end>
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1210
          Height = 56
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = -16
            Top = 21
            Width = 78
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'YEAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 208
            Top = 20
            Width = 64
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
          object Edit1: TEdit
            Left = 72
            Top = 16
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 280
            Top = 16
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            TabOrder = 1
          end
          object Button1: TButton
            Left = 448
            Top = 12
            Width = 89
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
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Capex('#36039#26412#25903#20986')'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 769
        Height = 535
        Align = alLeft
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 122
          Width = 767
          Height = 412
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'VNI-Times'
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
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DepMemo_1'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DEP_NAME|'#37096#38272#21517#31281
              Width = 194
            end
            item
              EditButtons = <>
              FieldName = 'YM'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Year|'#24180#20221
              Width = 108
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Month|'#26376#20221
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'DepMemo'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Memo|'#20633#35387
              Width = 260
            end
            item
              EditButtons = <>
              FieldName = 'Budget'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Budget|'#36039#26412#25903#20986
            end>
        end
        object Panel6: TPanel
          Left = 1
          Top = 66
          Width = 767
          Height = 56
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label3: TLabel
            Left = -16
            Top = 21
            Width = 78
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'YEAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 208
            Top = 20
            Width = 64
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit3: TEdit
            Left = 72
            Top = 16
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            TabOrder = 0
          end
          object Button2: TButton
            Left = 448
            Top = 12
            Width = 89
            Height = 33
            Caption = 'QUERY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button2Click
          end
          object ComboBox1: TComboBox
            Left = 280
            Top = 16
            Width = 49
            Height = 28
            Style = csDropDownList
            ItemHeight = 20
            ItemIndex = 0
            TabOrder = 2
            Items.Strings = (
              ''
              '01'
              '02')
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 767
          Height = 65
          Align = alTop
          TabOrder = 2
          object BitBtn1: TBitBtn
            Left = 248
            Top = 8
            Width = 169
            Height = 49
            Hint = 'Insert one New Record'
            Caption = 'Insert New Season Capex'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
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
          object BitBtn2: TBitBtn
            Left = 744
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
            Visible = False
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
          object BitBtn3: TBitBtn
            Left = 56
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
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 104
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
            OnClick = BitBtn4Click
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
          object BitBtn5: TBitBtn
            Left = 152
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
            OnClick = BitBtn5Click
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
          object BitBtn6: TBitBtn
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
            Visible = False
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
        end
      end
      object Panel7: TPanel
        Left = 769
        Top = 0
        Width = 443
        Height = 535
        Align = alClient
        TabOrder = 1
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 441
          Height = 65
          Align = alTop
          TabOrder = 0
          object BitBtn7: TBitBtn
            Left = 272
            Top = 8
            Width = 89
            Height = 49
            Hint = 'Insert one New Record'
            Caption = 'Import Excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn1Click
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
          object BitBtn8: TBitBtn
            Left = 744
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
            Visible = False
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
          object BitBtn9: TBitBtn
            Left = 56
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
            OnClick = BitBtn9Click
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
          object BitBtn10: TBitBtn
            Left = 104
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
            OnClick = BitBtn10Click
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
          object BitBtn11: TBitBtn
            Left = 152
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
            OnClick = BitBtn11Click
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
            Visible = False
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
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 66
          Width = 441
          Height = 468
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'VNI-Times'
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
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Serno'
              Footers = <>
              Title.Caption = 'Serno|'#32232#34399
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'Items'
              Footers = <>
              Title.Caption = 'Items|'#38917#30446
              Width = 273
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Qty|'#25976#37327
            end
            item
              EditButtons = <>
              FieldName = 'US_Price'
              Footers = <>
              Title.Caption = 'US_Price|'#32654#37329#21934#20729
            end
            item
              EditButtons = <>
              FieldName = 'US_Total'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'US_Total|'#32654#37329#32317#20729
            end
            item
              EditButtons = <>
              FieldName = 'Need_Month'
              Footers = <>
              Title.Caption = 'Need_Month|'#38656#27714#26376#20221
              Width = 96
            end
            item
              EditButtons = <>
              FieldName = 'Need_Season'
              Footers = <>
              Title.Caption = 'Need_Season|'#38656#27714#23395#24230
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'Pay_Month'
              Footers = <>
              Title.Caption = 'Pay_Month|'#20184#27454#26376#20221
              Width = 91
            end
            item
              EditButtons = <>
              FieldName = 'Memo'
              Footers = <>
              Title.Caption = 'Memo|'#20633#35387
              Width = 145
            end>
        end
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 200
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SGDH_Budget.*,BDepartment.DepMemo from SGDH_Budget'
      'left join BDepartment on BDepartment.ID = SGDH_Budget.ID'
      'order by YM desc')
    UpdateObject = UpSQL1
    Left = 136
    Top = 200
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.SGDH_Budget.ID'
      FixedChar = True
      Size = 10
    end
    object Query1YM: TStringField
      FieldName = 'YM'
      Origin = 'DB.SGDH_Budget.YM'
      FixedChar = True
      Size = 50
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.SGDH_Budget.Season'
      FixedChar = True
      Size = 1
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.SGDH_Budget.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1Budget: TIntegerField
      FieldName = 'Budget'
      Origin = 'DB.SGDH_Budget.Budget'
    end
    object Query1Budget_B: TIntegerField
      FieldName = 'Budget_B'
      Origin = 'DB.SGDH_Budget.Budget_B'
    end
    object Query1Budget_S: TIntegerField
      FieldName = 'Budget_S'
      Origin = 'DB.SGDH_Budget.Budget_S'
    end
    object Query1DepMemo_1: TStringField
      FieldName = 'DepMemo_1'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1Budget_02: TIntegerField
      FieldName = 'Budget_02'
      Origin = 'DB.SGDH_Budget.Budget_02'
    end
    object Query1Budget_03: TIntegerField
      FieldName = 'Budget_03'
      Origin = 'DB.SGDH_Budget.Budget_03'
    end
    object Query1Budget_04: TIntegerField
      FieldName = 'Budget_04'
      Origin = 'DB.SGDH_Budget.Budget_04'
    end
    object Query1Budget_05: TIntegerField
      FieldName = 'Budget_05'
      Origin = 'DB.SGDH_Budget.Budget_05'
    end
    object Query1Budget_09: TIntegerField
      FieldName = 'Budget_09'
      Origin = 'DB.SGDH_Budget.Budget_09'
    end
    object Query1Budget_01: TIntegerField
      FieldName = 'Budget_01'
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update SGDH_Budget'
      'set'
      '  Budget = :Budget,'
      '  Budget_B = :Budget_B,'
      '  Budget_S = :Budget_S'
      'where'
      '  ID = :OLD_ID'
      'and YM = :OLD_YM'
      'and Season = :OLD_Season')
    Left = 136
    Top = 232
  end
  object Qtmp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BLimits.*,BLimit.YN'
      'from BLimits'
      
        'Left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=B' +
        'Limits.FORMID'
      'where BLimits.USERID=:userid'
      '      and BLimits.MKID=:mkid'
      '      and BLimits.GSBH=:GSBH')
    Left = 248
    Top = 216
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
  object Query2: TQuery
    AfterScroll = Query2AfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SGDH_Capex.*,BDepartment.DepMemo from SGDH_Capex'
      'left join BDepartment on BDepartment.ID = SGDH_Capex.ID'
      'order by YM desc')
    UpdateObject = UPSQL2
    Left = 136
    Top = 312
    object StringField1: TStringField
      FieldName = 'ID'
      Origin = 'DB.SGDH_Budget.ID'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'YM'
      Origin = 'DB.SGDH_Budget.YM'
      FixedChar = True
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Season'
      Origin = 'DB.SGDH_Budget.Season'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.SGDH_Budget.DepMemo'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Budget'
      Origin = 'DB.SGDH_Budget.Budget'
    end
    object StringField5: TStringField
      FieldName = 'DepMemo_1'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
  end
  object UPSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update SGDH_Capex'
      'set'
      '  Budget = :Budget'
      'where'
      '  ID = :OLD_ID'
      'and YM = :OLD_YM'
      'and Season = :OLD_Season')
    Left = 136
    Top = 344
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 168
    Top = 312
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select SGDH_CapexS.* from SGDH_CapexS'
      'where ID = :ID'
      'and YM = :YM'
      'and Season = :Season'
      'order by Serno,YM desc')
    UpdateObject = UPSQL3
    Left = 280
    Top = 320
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ID'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'YM'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftFixedChar
        Name = 'Season'
        ParamType = ptUnknown
        Size = 2
      end>
    object Query3ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.SGDH_CapexS.ID'
      FixedChar = True
      Size = 10
    end
    object Query3YM: TStringField
      FieldName = 'YM'
      Origin = 'DB.SGDH_CapexS.YM'
      FixedChar = True
      Size = 50
    end
    object Query3Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.SGDH_CapexS.Season'
      FixedChar = True
      Size = 2
    end
    object Query3Serno: TIntegerField
      FieldName = 'Serno'
      Origin = 'DB.SGDH_CapexS.Serno'
    end
    object Query3Items: TStringField
      FieldName = 'Items'
      Origin = 'DB.SGDH_CapexS.Items'
      FixedChar = True
      Size = 100
    end
    object Query3Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SGDH_CapexS.Qty'
    end
    object Query3US_Price: TFloatField
      FieldName = 'US_Price'
      Origin = 'DB.SGDH_CapexS.US_Price'
    end
    object Query3US_Total: TFloatField
      FieldName = 'US_Total'
      Origin = 'DB.SGDH_CapexS.US_Total'
    end
    object Query3Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.SGDH_CapexS.Memo'
      FixedChar = True
      Size = 255
    end
    object Query3Need_Month: TStringField
      FieldName = 'Need_Month'
      FixedChar = True
      Size = 2
    end
    object Query3Need_Season: TStringField
      FieldName = 'Need_Season'
      FixedChar = True
      Size = 2
    end
    object Query3Pay_Month: TStringField
      FieldName = 'Pay_Month'
      FixedChar = True
      Size = 2
    end
  end
  object UPSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update SGDH_CapexS'
      'set'
      '  Items = :Items'
      '  ,Qty = :Qty'
      '  ,US_Price = :US_Price'
      '  ,US_Total = :US_Total'
      '  ,Need_Month = :Need_Month'
      '  ,Need_Season = :Need_Season'
      '  ,Pay_Month = :Pay_Month'
      '  ,Memo = :Memo'
      'where'
      '  ID = :OLD_ID'
      'and YM = :OLD_YM'
      'and Season = :OLD_Season'
      'and Serno = :OLD_Serno')
    Left = 280
    Top = 352
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 312
    Top = 320
  end
end
