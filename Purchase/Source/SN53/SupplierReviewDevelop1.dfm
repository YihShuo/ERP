object SupplierReviewDevelop: TSupplierReviewDevelop
  Left = 218
  Top = 122
  Width = 1191
  Height = 725
  Caption = 'SupplierReviewDevelop'
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
  object PC2: TPageControl
    Left = 0
    Top = 0
    Width = 1183
    Height = 694
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    OnChanging = PC2Changing
    object TabSheet3: TTabSheet
      Caption = 'Monthly Review'
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1175
        Height = 65
        Align = alTop
        TabOrder = 0
        Visible = False
        object BD8: TBitBtn
          Left = 376
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BD8Click
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
        object BD2: TBitBtn
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
          TabOrder = 2
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
          TabOrder = 4
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
          TabOrder = 5
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
          TabOrder = 6
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
        object BD7: TBitBtn
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
          OnClick = BD7Click
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
      object PC1: TPageControl
        Left = 0
        Top = 178
        Width = 1175
        Height = 485
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 1
        OnChange = PC1Change
        OnChanging = PC1Changing
        object TabSheet1: TTabSheet
          Caption = 'Master'
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 1167
            Height = 454
            Align = alClient
            DataSource = DS1
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
            UseMultiTitle = True
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'LNO'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = #32232#34399'|ListNo'
                Width = 120
              end
              item
                EditButtons = <>
                FieldName = 'GSBH'
                Footers = <>
                Title.Caption = #24288#21029'|GSBH'
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'Year'
                Footers = <>
                Title.Caption = #24180#20221'|Year'
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'Month'
                Footers = <>
                KeyList.Strings = (
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
                PickList.Strings = (
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
                Title.Caption = #26376#20221'|Month'
                Width = 50
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'|UserID'
                Width = 80
              end
              item
                Color = cl3DLight
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #30064#21205#26085#26399'|UserDate'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Status'
                Footers = <>
                Title.Caption = #29376#24907'|Status'
              end
              item
                EditButtons = <>
                FieldName = 'SFL'
                Footers = <>
                PickList.Strings = (
                  'TM'
                  'GC')
                Width = 47
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 1159
            Height = 446
            Align = alClient
            DataSource = DS2
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
            UseMultiTitle = True
            OnGetCellParams = DBGridEh2GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SupplierID'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = #20379#25033#21830#32232#34399'|Supplier ID'
                Width = 80
                OnEditButtonClick = DBGridEh2Columns0EditButtonClick
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20379#25033#21830#21517#31281'|Supplier Name'
                Width = 150
              end
              item
                EditButtons = <>
                FieldName = 'totalsamples'
                Footers = <>
                Title.Caption = 'Total samples'
                OnUpdateData = DBGridEh2Columns2UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'Times'
                Footers = <>
                Title.Caption = #20132#36008#25209#25976'|Times'
                Width = 60
                OnUpdateData = DBGridEh2Columns3UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'Qualified'
                Footers = <>
                Title.Caption = #21512#26684#25209#25976'|Qualified'
                Width = 60
                OnUpdateData = DBGridEh2Columns4UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'OnTime'
                Footers = <>
                Title.Caption = #28310#26178#25209#25976'|OnTime'
                Width = 60
                OnUpdateData = DBGridEh2Columns5UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'ETD_within_3days'
                Footers = <>
                Title.Caption = 'ETD within 3days'
                Width = 69
                OnUpdateData = DBGridEh2Columns6UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'ETD_within_Leadtime'
                Footers = <>
                Title.Caption = 'ETD within Leadtime'
                Width = 77
                OnUpdateData = DBGridEh2Columns7UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'Quality'
                Footers = <>
                Title.Caption = #21697#36074'|Quailty'
                Width = 60
                OnUpdateData = DBGridEh2Columns8UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'ETD'
                Footers = <>
                Title.Caption = #20132#26399'|ETD'
                Width = 60
                OnUpdateData = DBGridEh2Columns9UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'ETD_within_3days_score'
                Footers = <>
                Title.Caption = 'ETD within 3days (Score)'
                OnUpdateData = DBGridEh2Columns10UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'ETD_within_Leadtime_score'
                Footers = <>
                Title.Caption = 'ETD within Leadtime (Score)'
                OnUpdateData = DBGridEh2Columns11UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'Cooperation'
                Footers = <>
                Title.Caption = #37197#21512#24230'|Cooperation'
                Width = 80
                OnUpdateData = DBGridEh2Columns12UpdateData
              end
              item
                EditButtons = <>
                FieldName = 'Total'
                Footers = <>
                ReadOnly = True
                Title.Caption = #32317#20998'|Total'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Remark'
                Footers = <>
                Title.Caption = #20633#35387'|Remark'
                Width = 150
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'|UserID'
                Width = 80
              end
              item
                Color = cl3DLight
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #30064#21205#26085#26399'|UserDate'
                Width = 100
              end>
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 130
        Width = 1175
        Height = 48
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 36
          Height = 16
          Caption = 'Month'
        end
        object Label3: TLabel
          Left = 148
          Top = 20
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Button1: TButton
          Left = 296
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 57
          Top = 12
          Width = 88
          Height = 24
          Date = 44932.664823113420000000
          Format = 'yyyy/MM/dd'
          Time = 44932.664823113420000000
          TabOrder = 1
        end
        object DTP2: TDateTimePicker
          Left = 168
          Top = 12
          Width = 90
          Height = 24
          Date = 44932.664823113420000000
          Format = 'yyyy/MM/dd'
          Time = 44932.664823113420000000
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 65
        Align = alTop
        TabOrder = 3
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
        object BB8: TBitBtn
          Left = 376
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BB8Click
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
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Yearly Review'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 129
        Width = 1175
        Height = 48
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 23
          Top = 16
          Width = 29
          Height = 16
          Caption = 'Year'
        end
        object Label4: TLabel
          Left = 122
          Top = 19
          Width = 9
          Height = 16
          Caption = '~'
        end
        object DTP3: TDateTimePicker
          Left = 57
          Top = 12
          Width = 63
          Height = 24
          Date = 44933.665035185190000000
          Format = 'yyyy'
          Time = 44933.665035185190000000
          TabOrder = 0
        end
        object Button2: TButton
          Left = 216
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button2Click
        end
        object DTP4: TDateTimePicker
          Left = 135
          Top = 12
          Width = 63
          Height = 24
          Date = 44933.665035185190000000
          Format = 'yyyy'
          Time = 44933.665035185190000000
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1175
        Height = 65
        Align = alTop
        TabOrder = 1
        object BR1: TBitBtn
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
        object BR2: TBitBtn
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
          OnClick = BR2Click
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
        object BR3: TBitBtn
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
          OnClick = BR3Click
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
        object BR4: TBitBtn
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
          OnClick = BR4Click
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
        object BR5: TBitBtn
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
          OnClick = BR5Click
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
        object BR6: TBitBtn
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
          OnClick = BR6Click
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
        object BR7: TBitBtn
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
          OnClick = BR7Click
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
        object BR8: TBitBtn
          Left = 376
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = BR8Click
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
      end
      object PC3: TPageControl
        Left = 0
        Top = 177
        Width = 1175
        Height = 486
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 2
        OnChange = PC3Change
        OnChanging = PC3Changing
        object TabSheet5: TTabSheet
          Caption = 'Master'
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 1167
            Height = 455
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
            PopupMenu = PopupMenu2
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = DBGridEh4GetCellParams
            Columns = <
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'LNO'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = #32232#34399'|ListNo'
                Width = 120
              end
              item
                EditButtons = <>
                FieldName = 'GSBH'
                Footers = <>
                Title.Caption = #24288#21029'|GSBH'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'Year'
                Footers = <>
                Title.Caption = #24180#20221'|Year'
                Width = 50
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'|UserID'
                Width = 80
              end
              item
                Color = cl3DLight
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #30064#21205#26085#26399'|UserDate'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Status'
                Footers = <>
                Title.Caption = #29376#24907'|Status'
              end
              item
                EditButtons = <>
                FieldName = 'flowflag'
                Footers = <>
                Title.Caption = #31805#26680'|flowflag'
                Width = 53
              end
              item
                EditButtons = <>
                FieldName = 'flowflag1'
                Footers = <>
                Title.Caption = #31805#26680'1|flowflag1'
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'flowflag2'
                Footers = <>
                Title.Caption = #31805#26680'2|flowflag2'
                Width = 65
              end
              item
                EditButtons = <>
                FieldName = 'flowflag3'
                Footers = <>
                Title.Caption = #31805#26680'3|flowflag3'
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'flowflag4'
                Footers = <>
                Title.Caption = #31805#26680'4|flowflag4'
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'SFL'
                Footers = <>
                PickList.Strings = (
                  'TM'
                  'GC')
                Width = 42
              end>
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object Splitter1: TSplitter
            Left = 665
            Top = 0
            Height = 447
          end
          object Splitter2: TSplitter
            Left = 257
            Top = 0
            Height = 447
          end
          object DBGridEh3: TDBGridEh
            Left = 668
            Top = 0
            Width = 491
            Height = 447
            Align = alClient
            DataSource = DS6
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
            UseMultiTitle = True
            Columns = <
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Month'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = #26376#20221'|Month'
                Width = 50
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Quality'
                Footer.ValueType = fvtAvg
                Footers = <>
                Title.Caption = #21697#36074'|Quality'
                Width = 80
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'ETD'
                Footer.ValueType = fvtAvg
                Footers = <>
                Title.Caption = #20132#26399'|ETD'
                Width = 80
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'ETD_within_3days_score'
                Footers = <>
                Width = 73
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'ETD_within_Leadtime_score'
                Footers = <>
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Cooperation'
                Footer.ValueType = fvtAvg
                Footers = <>
                Title.Caption = #37197#21512#24230'|Cooperation'
                Width = 80
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Total'
                Footer.ValueType = fvtAvg
                Footers = <>
                Title.Caption = #32317#20998'|Total'
                Width = 80
              end>
          end
          object DBGridEh5: TDBGridEh
            Left = 0
            Top = 0
            Width = 257
            Height = 447
            Align = alLeft
            DataSource = DS4
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnEditButtonClick = DBGridEh5EditButtonClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SupplierID'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = #24288#21830#32232#34399'|Supplier ID'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Title.Caption = #24288#21830#21517#31281'|Supplier Name'
                Width = 150
              end>
          end
          object DBGridEh6: TDBGridEh
            Left = 260
            Top = 0
            Width = 405
            Height = 447
            Align = alLeft
            DataSource = DS5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -13
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            PopupMenu = PopupMenu1
            SumList.Active = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Year'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24180#20221'|Year'
                Width = 40
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Quarter'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = #23395#24230'|Quarter'
                Width = 50
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Month'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26376#20221'|Month'
                Width = 90
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'Result'
                Footers = <>
                PickList.Strings = (
                  'OK'
                  'NG')
                Title.Caption = #35413#37969'|Result'
                Width = 45
                OnUpdateData = DBGridEh6Columns3UpdateData
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'|UserID'
                Width = 60
              end
              item
                Color = cl3DLight
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = #30064#21205#26085#26399'|UserDate'
                Width = 80
              end>
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 65
        Width = 1175
        Height = 64
        Align = alTop
        TabOrder = 3
        Visible = False
        object BS2: TBitBtn
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
          TabOrder = 0
          OnClick = BS2Click
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
        object BS4: TBitBtn
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
          TabOrder = 2
          OnClick = BS4Click
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
          TabOrder = 3
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
          TabOrder = 4
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
          TabOrder = 5
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
          Left = 376
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = BS8Click
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
      end
    end
  end
  object UP_Supplier: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  WF_SupplierReview_Dev'
      'SET'
      '  GSBH = :GSBH,'
      '  Year = :Year,'
      '  Month = :Month,'
      '  UserID = :UserID,'
      '  UserDate = GetDate(),'
      '  SFL = :SFL'
      'WHERE'
      '  LNO = :OLD_LNO and '
      '  Type = :OLD_Type')
    InsertSQL.Strings = (
      'INSERT INTO WF_SupplierReview_Dev'
      '  (LNO, Type, GSBH,Year, Month, UserID, UserDate, YN, SFL)'
      'VALUES'
      
        '  (:LNO, '#39'Monthly'#39', :GSBH, :Year, :Month, :UserID, GetDate(), '#39'1' +
        #39', :SFL)')
    DeleteSQL.Strings = (
      'DELETE FROM  WF_SupplierReview_Dev'
      'WHERE '
      '  LNO = :OLD_LNO AND'
      '  Type = :OLD_Type')
    Left = 24
    Top = 376
  end
  object UP_SupplierS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  WF_SupplierReviewS_Dev'
      'SET'
      '  SupplierID = :SupplierID,'
      '  Times = :Times,'
      '  Qualified = :Qualified,'
      '  OnTime = :OnTime,'
      '  totalsamples = :totalsamples,'
      '  ETD_within_3days = :ETD_within_3days,'
      '  ETD_within_Leadtime = :ETD_within_Leadtime,'
      '  Quality = :Quality,'
      '  ETD = :ETD,'
      '  ETD_within_3days_score = :ETD_within_3days_score,'
      '  ETD_within_Leadtime_score = :ETD_within_Leadtime_score,'
      '  Cooperation = :Cooperation,'
      '  Total = :Total,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  LNO = :OLD_LNO AND'
      '  SupplierID = :OLD_SupplierID')
    InsertSQL.Strings = (
      'INSERT INTO WF_SupplierReviewS_Dev'
      
        '  (LNO, SupplierID, Times, Qualified, OnTime, totalsamples, ETD_' +
        'within_3days, ETD_within_Leadtime, Quality, ETD, ETD_within_3day' +
        's_score, ETD_within_Leadtime_score, Cooperation, Total, Remark, ' +
        'UserID, UserDate, YN)'
      'VALUES'
      
        '  (:LNO, :SupplierID, :Times, :Qualified, :OnTime, :totalsamples' +
        ', :ETD_within_3days, :ETD_within_Leadtime, :Quality, :ETD, :ETD_' +
        'within_3days_score, :ETD_within_Leadtime_score, :Cooperation, :T' +
        'otal, :Remark, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM  WF_SupplierReviewS_Dev'
      'WHERE '
      '  LNO = :OLD_LNO AND'
      '  SupplierID = :OLD_SupplierID')
    Left = 56
    Top = 376
  end
  object UP_Report: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  WF_SupplierReview_Dev'
      'SET'
      '  GSBH = :GSBH,'
      '  Year = :Year,'
      '  UserID = :UserID,'
      '  UserDate = GetDate(),'
      '  flowflag = :flowflag,'
      '  SFL = :SFL'
      'WHERE'
      '  LNO = :OLD_LNO and '
      '  Type = :OLD_Type')
    InsertSQL.Strings = (
      'INSERT INTO WF_SupplierReview_Dev'
      '  (LNO, Type, GSBH,Year, Month, UserID, UserDate, YN, SFL)'
      'VALUES'
      
        '  (:LNO, '#39'Yearly'#39',:GSBH, :Year, '#39#39', :UserID, GetDate(), '#39'1'#39', :SF' +
        'L)')
    DeleteSQL.Strings = (
      'DELETE FROM  WF_SupplierReview_Dev'
      'WHERE '
      '  LNO = :OLD_LNO and '
      '  Type = :OLD_Type')
    Left = 88
    Top = 376
  end
  object UP_Quarter: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE WF_SupplierReviewSS_Dev'
      'SET'
      '  Result = :Result,'
      '  UseriD = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  LNO = :OLD_LNO AND '
      '  SupplierID = :OLD_SupplierID AND'
      '  Quarter = :OLD_Quarter')
    InsertSQL.Strings = (
      'INSERT INTO WF_SupplierReviewSS_Dev'
      '  (LNO, SupplierID, Quarter, Result, UserID, UserDate, YN)'
      'VALUES'
      
        '  (:LNO, :SupplierID, :Quarter, :Result, :UserID, GetDate(), '#39'1'#39 +
        ')')
    Left = 152
    Top = 375
  end
  object UP_SupList: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  WF_SupplierReviewS_Dev'
      'SET'
      '  SupplierID = :SupplierID,'
      '  Times = :Times,'
      '  Qualified = :Qualified,'
      '  OnTime = :OnTime,'
      '  totalsamples = :totalsamples,'
      '  ETD_within_3days = :ETD_within_3days,'
      '  ETD_within_Leadtime = :ETD_within_Leadtime,'
      '  Quality = :Quality,'
      '  ETD = :ETD,'
      '  ETD_within_3days_score = :ETD_within_3days_score,'
      '  ETD_within_Leadtime_score = :ETD_within_Leadtime_score,'
      '  Cooperation = :Cooperation,'
      '  Total = :Total,'
      '  Remark = :Remark,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  LNO = :OLD_LNO AND'
      '  SupplierID = :OLD_SupplierID'
      '')
    InsertSQL.Strings = (
      'INSERT INTO WF_SupplierReviewS_Dev'
      
        '  (LNO, SupplierID, Times, Qualified, OnTime, totalsamples, ETD_' +
        'within_3days, ETD_within_Leadtime, Quality, ETD, ETD_within_3day' +
        's_score, ETD_within_Leadtime_score, Cooperation, Total, Remark, ' +
        'UserID, UserDate, YN)'
      'VALUES'
      
        '  (:LNO, :SupplierID, :Times, :Qualified, :OnTime, :totalsamples' +
        ',, :ETD_within_3days, :ETD_within_Leadtime, :Quality, :ETD, :ETD' +
        '_within_3days_score, :ETD_within_Leadtime_score, :Cooperation, :' +
        'Total, :Remark, :UserID, GetDate(), '#39'1'#39')'
      '')
    DeleteSQL.Strings = (
      'DELETE FROM  WF_SupplierReviewS_Dev'
      'WHERE '
      '  LNO = :OLD_LNO AND'
      '  SupplierID = :OLD_SupplierID'
      '')
    Left = 121
    Top = 375
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 153
    Top = 410
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 87
    Top = 410
    object Resend: TMenuItem
      Caption = 'Resend'
      OnClick = ResendClick
    end
  end
  object DS1: TDataSource
    DataSet = QSupplier
    Left = 24
    Top = 312
  end
  object DS2: TDataSource
    DataSet = QSupplierS
    Left = 56
    Top = 312
  end
  object QSupplierS: TQuery
    AfterOpen = QSupplierSAfterOpen
    OnNewRecord = QSupplierSNewRecord
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(ORDER BY WF_SupplierReviewS_Dev.Supplie' +
        'rID) AS Seq, WF_SupplierReviewS_Dev.LNO, WF_SupplierReviewS_Dev.' +
        'SupplierID, '
      
        'ZSZL.ZSYWJC, WF_SupplierReviewS_Dev.Times, WF_SupplierReviewS_De' +
        'v.Qualified, WF_SupplierReviewS_Dev.OnTime,WF_SupplierReviewS_De' +
        'v.totalsamples,WF_SupplierReviewS_Dev.ETD_within_3days,WF_Suppli' +
        'erReviewS_Dev.ETD_within_Leadtime, WF_SupplierReviewS_Dev.Qualit' +
        'y, '
      
        'WF_SupplierReviewS_Dev.ETD,WF_SupplierReviewS_Dev.ETD_within_3da' +
        'ys_score,WF_SupplierReviewS_Dev.ETD_within_Leadtime_score, WF_Su' +
        'pplierReviewS_Dev.Cooperation, WF_SupplierReviewS_Dev.Total, WF_' +
        'SupplierReviewS_Dev.Remark, WF_SupplierReviewS_Dev.UserID, '
      
        'WF_SupplierReviewS_Dev.UserDate, WF_SupplierReviewS_Dev.YN FROM ' +
        'WF_SupplierReviewS_Dev'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = WF_SupplierReviewS_Dev.SupplierID'
      'WHERE WF_SupplierReviewS_Dev.LNO = :LNO')
    UpdateObject = UP_SupplierS
    Left = 56
    Top = 344
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LNO'
        ParamType = ptUnknown
        Size = 16
      end>
    object QSupplierSLNO: TStringField
      FieldName = 'LNO'
      Origin = 'LIY_ERP.WF_SupplierReviewS.LNO'
      FixedChar = True
      Size = 15
    end
    object QSupplierSSupplierID: TStringField
      FieldName = 'SupplierID'
      Origin = 'LIY_ERP.WF_SupplierReviewS.SupplierID'
      FixedChar = True
      Size = 6
    end
    object QSupplierSTimes: TIntegerField
      FieldName = 'Times'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Times'
    end
    object QSupplierSQualified: TIntegerField
      FieldName = 'Qualified'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Qualified'
    end
    object QSupplierSOnTime: TIntegerField
      FieldName = 'OnTime'
      Origin = 'LIY_ERP.WF_SupplierReviewS.OnTime'
    end
    object QSupplierSETD_within_3days: TIntegerField
      FieldName = 'ETD_within_3days'
    end
    object QSupplierSETD_within_Leadtime: TIntegerField
      FieldName = 'ETD_within_Leadtime'
    end
    object QSupplierSQuality: TFloatField
      FieldName = 'Quality'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Quailty'
    end
    object QSupplierSETD: TFloatField
      FieldName = 'ETD'
      Origin = 'LIY_ERP.WF_SupplierReviewS.ETD'
    end
    object QSupplierSETD_within_3days_score: TFloatField
      FieldName = 'ETD_within_3days_score'
    end
    object QSupplierSETD_within_Leadtime_score: TFloatField
      FieldName = 'ETD_within_Leadtime_score'
    end
    object QSupplierSCooperation: TFloatField
      FieldName = 'Cooperation'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Cooperation'
    end
    object QSupplierSTotal: TFloatField
      FieldName = 'Total'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Total'
      OnChange = QSupplierSTotalChange
    end
    object QSupplierSRemark: TStringField
      FieldName = 'Remark'
      Origin = 'LIY_ERP.WF_SupplierReviewS.Remark'
      FixedChar = True
      Size = 50
    end
    object QSupplierSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'LIY_ERP.WF_SupplierReviewS.UserID'
      FixedChar = True
      Size = 10
    end
    object QSupplierSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'LIY_ERP.WF_SupplierReviewS.UserDate'
    end
    object QSupplierSYN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.WF_SupplierReviewS.YN'
      FixedChar = True
      Size = 1
    end
    object QSupplierSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object QSupplierSSeq: TFloatField
      FieldName = 'Seq'
    end
    object QSupplierStotalsamples: TIntegerField
      FieldName = 'totalsamples'
    end
  end
  object QReport: TQuery
    AfterOpen = QReportAfterOpen
    OnNewRecord = QReportNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT LNO, GSBH, Year, Month, UserID, UserDate, YN, flowflag, f' +
        'lowflag1, flowflag2, flowflag3, flowflag4, SFL FROM WF_SupplierR' +
        'eview_Dev')
    UpdateObject = UP_Report
    Left = 88
    Top = 344
    object StringField1: TStringField
      FieldName = 'LNO'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'Year'
      FixedChar = True
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField5: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QReportType: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object QReportStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object QReportGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QReportflowflag: TStringField
      FieldName = 'flowflag'
      Size = 1
    end
    object QReportflowflag1: TStringField
      FieldName = 'flowflag1'
      FixedChar = True
      Size = 1
    end
    object QReportflowflag2: TStringField
      FieldName = 'flowflag2'
      FixedChar = True
      Size = 1
    end
    object QReportflowflag3: TStringField
      FieldName = 'flowflag3'
      FixedChar = True
      Size = 1
    end
    object QReportflowflag4: TStringField
      FieldName = 'flowflag4'
      FixedChar = True
      Size = 1
    end
    object QReportSFL: TStringField
      FieldName = 'SFL'
      FixedChar = True
      Size = 2
    end
  end
  object DS3: TDataSource
    DataSet = QReport
    Left = 88
    Top = 312
  end
  object DS4: TDataSource
    DataSet = QSupList
    Left = 120
    Top = 312
  end
  object QSupList: TQuery
    AfterOpen = QSupListAfterOpen
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'select WF_SupplierReviewS_Dev.*,ZSZL.ZSYWJC,:Year as Year,:GSBH ' +
        'as GSBH, :SFL as SFL'
      'from WF_SupplierReviewS_Dev'
      'left join ZSZL on ZSZL.ZSDH = WF_SupplierReviewS_Dev.SupplierID'
      'where WF_SupplierReviewS_Dev.LNO=:LNO'
      'order by WF_SupplierReviewS_Dev.SupplierID')
    UpdateObject = UP_SupList
    Left = 120
    Top = 344
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Year'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'SFL'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftFixedChar
        Name = 'LNO'
        ParamType = ptUnknown
        Size = 16
      end>
    object QSupListLNO: TStringField
      FieldName = 'LNO'
      FixedChar = True
      Size = 15
    end
    object QSupListSupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 6
    end
    object QSupListTimes: TIntegerField
      FieldName = 'Times'
    end
    object QSupListQualified: TIntegerField
      FieldName = 'Qualified'
    end
    object QSupListOnTime: TIntegerField
      FieldName = 'OnTime'
    end
    object QSupListETD_within_3days: TIntegerField
      FieldName = 'ETD_within_3days'
    end
    object QSupListETD_within_Leadtime: TIntegerField
      FieldName = 'ETD_within_Leadtime'
    end
    object QSupListQuality: TFloatField
      FieldName = 'Quality'
    end
    object QSupListETD: TFloatField
      FieldName = 'ETD'
    end
    object QSupListETD_within_3days_score: TFloatField
      FieldName = 'ETD_within_3days_score'
    end
    object QSupListETD_within_Leadtime_score: TFloatField
      FieldName = 'ETD_within_Leadtime_score'
    end
    object QSupListCooperation: TFloatField
      FieldName = 'Cooperation'
    end
    object QSupListTotal: TFloatField
      FieldName = 'Total'
    end
    object QSupListRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object QSupListUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object QSupListUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QSupListYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QSupListZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object QSupListYear: TStringField
      FieldName = 'Year'
      Size = 4
    end
    object QSupListGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object QSupListSFL: TStringField
      FieldName = 'SFL'
      Size = 2
    end
  end
  object QQuarter: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'SELECT :LNO AS LNO, :Year AS Year, Season.Quarter, Season.Month,' +
        ' WF_SupplierReviewSS_Dev.Result, WF_SupplierReviewSS_Dev.UserID,' +
        ' WF_SupplierReviewSS_Dev.UserDate, WF_SupplierReviewSS_Dev.YN, :' +
        'SupplierID AS SupplierID, :GSBH AS GSBH, :SFL AS SFL FROM ('
      '  SELECT 1 AS Quarter, '#39'Jan. Feb. Mar.'#39' AS Month'
      '  UNION ALL'
      '  SELECT 2 AS Quarter, '#39'Apr. May. Jun.'#39' AS Month'
      '  UNION ALL'
      '  SELECT 3 AS Quarter, '#39'Jul. Aug. Sep.'#39' AS Month'
      '  UNION ALL'
      '  SELECT 4 AS Quarter, '#39'Oct. Nov. Dec.'#39' AS Month'
      ') AS Season'
      
        'LEFT JOIN WF_SupplierReviewSS_Dev ON WF_SupplierReviewSS_Dev.Qua' +
        'rter = Season.Quarter AND WF_SupplierReviewSS_Dev.LNO = :LNO AND' +
        ' WF_SupplierReviewSS_Dev.SupplierID = :SupplierID'
      'ORDER BY Season.Quarter')
    UpdateObject = UP_Quarter
    Left = 152
    Top = 344
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LNO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'Year'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'SupplierID'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftString
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftString
        Name = 'SFL'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftFixedChar
        Name = 'LNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SupplierID'
        ParamType = ptUnknown
      end>
    object QQuarterQuarter: TIntegerField
      FieldName = 'Quarter'
    end
    object QQuarterMonth: TStringField
      FieldName = 'Month'
      Size = 15
    end
    object QQuarterResult: TStringField
      FieldName = 'Result'
      Size = 5
    end
    object QQuarterUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object QQuarterUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QQuarterYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object QQuarterYear: TStringField
      FieldName = 'Year'
      Size = 4
    end
    object QQuarterSupplierID: TStringField
      FieldName = 'SupplierID'
      Size = 6
    end
    object QQuarterLNO: TStringField
      FieldName = 'LNO'
      Size = 15
    end
    object QQuarterGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object QQuarterSFL: TStringField
      FieldName = 'SFL'
      Size = 2
    end
  end
  object DS5: TDataSource
    DataSet = QQuarter
    Left = 152
    Top = 312
  end
  object DS6: TDataSource
    DataSet = QReportS
    Left = 184
    Top = 312
  end
  object QReportS: TQuery
    DatabaseName = 'DB'
    DataSource = DS5
    SQL.Strings = (
      
        'SELECT WF_SupplierReview_Dev.Month, WF_SupplierReviewS_Dev.Quali' +
        'ty, WF_SupplierReviewS_Dev.ETD,WF_SupplierReviewS_Dev.ETD_within' +
        '_3days_score,'
      
        'WF_SupplierReviewS_Dev.ETD_within_Leadtime_score,WF_SupplierRevi' +
        'ewS_Dev.Cooperation, WF_SupplierReviewS_Dev.Total FROM WF_Suppli' +
        'erReview_Dev'
      
        'LEFT JOIN WF_SupplierReviewS_Dev ON WF_SupplierReviewS_Dev.LNO =' +
        ' WF_SupplierReview_Dev.LNO'
      
        'WHERE WF_SupplierReview_Dev.Type = '#39'Monthly'#39' AND WF_SupplierRevi' +
        'ewS_Dev.SupplierID = :SupplierID AND WF_SupplierReview_Dev.Year ' +
        '= :Year and WF_SupplierReview_Dev.GSBH=:GSBH and WF_SupplierRevi' +
        'ew_Dev.SFL=:SFL'
      
        'AND CASE WHEN WF_SupplierReview_Dev.Month IN ('#39'01'#39', '#39'02'#39', '#39'03'#39') ' +
        'THEN 1 ELSE CASE WHEN WF_SupplierReview_Dev.Month IN ('#39'04'#39', '#39'05'#39 +
        ', '#39'06'#39') THEN 2'
      
        'ELSE CASE WHEN WF_SupplierReview_Dev.Month IN ('#39'07'#39', '#39'08'#39', '#39'09'#39')' +
        ' THEN 3 ELSE CASE WHEN WF_SupplierReview_Dev.Month IN ('#39'10'#39', '#39'11' +
        #39', '#39'12'#39') THEN 4 END END END END = :Quarter')
    Left = 184
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'SupplierID'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftString
        Name = 'Year'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftString
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftString
        Name = 'SFL'
        ParamType = ptUnknown
        Size = 3
      end
      item
        DataType = ftInteger
        Name = 'Quarter'
        ParamType = ptUnknown
        Size = 4
      end>
    object QReportSMonth: TStringField
      FieldName = 'Month'
      FixedChar = True
      Size = 2
    end
    object QReportSQuality: TFloatField
      FieldName = 'Quality'
    end
    object QReportSETD: TFloatField
      FieldName = 'ETD'
    end
    object QReportSETD_within_3days_score: TFloatField
      FieldName = 'ETD_within_3days_score'
    end
    object QReportSETD_within_Leadtime_score: TFloatField
      FieldName = 'ETD_within_Leadtime_score'
    end
    object QReportSCooperation: TFloatField
      FieldName = 'Cooperation'
    end
    object QReportSTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 344
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 251
    Top = 344
  end
  object QSupplier: TQuery
    AfterOpen = QSupplierAfterOpen
    OnNewRecord = QSupplierNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT LNO,GSBH, Year, Month, UserID, UserDate, YN, SFL FROM WF_' +
        'SupplierReview_Dev')
    UpdateObject = UP_Supplier
    Left = 24
    Top = 344
    object QSupplierLNO: TStringField
      FieldName = 'LNO'
      FixedChar = True
      Size = 15
    end
    object QSupplierType: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object QSupplierYear: TStringField
      FieldName = 'Year'
      FixedChar = True
      Size = 4
    end
    object QSupplierMonth: TStringField
      FieldName = 'Month'
      FixedChar = True
      Size = 2
    end
    object QSupplierUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object QSupplierUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QSupplierYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QSupplierStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object QSupplierflowflag: TStringField
      FieldName = 'flowflag'
      Size = 1
    end
    object QSupplierGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QSupplierSFL: TStringField
      FieldName = 'SFL'
      FixedChar = True
      Size = 2
    end
  end
end
