object MaterialCompany: TMaterialCompany
  Left = 286
  Top = 196
  Width = 1428
  Height = 802
  Caption = 'BOM Material Manufacturer'
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
    Width = 1420
    Height = 771
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Mom_Mat'
      object Panel3: TPanel
        Left = 0
        Top = 196
        Width = 1412
        Height = 544
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 361
          Height = 311
          Align = alLeft
          DataSource = DataSource1
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
              EditButtons = <>
              FieldName = 'article'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'Article'
            end
            item
              EditButtons = <>
              FieldName = 'khdh'
              Footers = <>
              Title.Caption = 'Customer'
              Width = 53
            end
            item
              EditButtons = <>
              FieldName = 'jijie'
              Footers = <>
              Title.Caption = 'Season'
            end>
        end
        object DBGridEh1: TDBGridEh
          Left = 362
          Top = 1
          Width = 1049
          Height = 311
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'KHDH'
              Footers = <>
              Title.Caption = 'Customer'
              Width = 49
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Title.Caption = 'Article'
              Width = 92
            end
            item
              EditButtons = <>
              FieldName = 'csbh'
              Footers = <>
              Title.Caption = #24288#21830#32232#34399
              Width = 30
            end
            item
              EditButtons = <>
              FieldName = 'zsqm'
              Footers = <>
              Title.Caption = #24288#21830#21517#31281
              Width = 161
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footers = <>
              Title.Caption = 'Mat.NO'
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Title.Caption = 'Mat Name'
              Width = 240
            end
            item
              EditButtons = <>
              FieldName = 'xiexing'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'shehao'
              Footers = <>
              Width = 51
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 312
          Width = 1410
          Height = 231
          Align = alBottom
          DataSource = DataSource3
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 65
        Width = 1412
        Height = 131
        Align = alTop
        TabOrder = 1
        Visible = False
        object Label2: TLabel
          Left = 8
          Top = 37
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat.English'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 9
          Top = 96
          Width = 78
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendor NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 154
          Top = 97
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 7
          Top = 8
          Width = 79
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 208
          Top = 8
          Width = 117
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat.Name Not In'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 299
          Top = 96
          Width = 59
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Buyno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 67
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MatNo Not in '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object OnlyMat1: TLabel
          Left = 220
          Top = 66
          Width = 137
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat. NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ArticleLab: TLabel
          Left = 488
          Top = 37
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CLZLedit: TEdit
          Left = 89
          Top = 34
          Width = 391
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object SplitCK: TCheckBox
          Left = 496
          Top = 67
          Width = 70
          Height = 17
          Caption = 'Split=*'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
        end
        object Button1: TButton
          Left = 495
          Top = 6
          Width = 75
          Height = 24
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object Panel4: TPanel
          Left = 765
          Top = 47
          Width = 421
          Height = 71
          Color = clGradientActiveCaption
          TabOrder = 3
          Visible = False
          object Label4: TLabel
            Left = 92
            Top = 11
            Width = 60
            Height = 16
            Caption = 'UpdateAll'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 3
            Top = 36
            Width = 66
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendor ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 208
            Top = 37
            Width = 66
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vendor ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 297
            Top = 11
            Width = 76
            Height = 16
            Caption = 'UpdateRight'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object rightAll: TEdit
            Left = 274
            Top = 32
            Width = 121
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object leftall: TEdit
            Left = 70
            Top = 33
            Width = 121
            Height = 24
            ReadOnly = True
            TabOrder = 1
          end
          object BBTT2: TBitBtn
            Left = 188
            Top = 36
            Width = 17
            Height = 21
            Caption = '...'
            TabOrder = 2
            OnClick = BBTT2Click
          end
          object BitBtn1: TBitBtn
            Left = 396
            Top = 34
            Width = 17
            Height = 20
            Caption = '...'
            TabOrder = 3
            OnClick = BitBtn1Click
          end
        end
        object CSBHedit: TEdit
          Left = 90
          Top = 92
          Width = 65
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object companyEdit: TEdit
          Left = 223
          Top = 92
          Width = 73
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit1: TEdit
          Left = 90
          Top = 4
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object notclzl: TEdit
          Left = 328
          Top = 4
          Width = 154
          Height = 24
          TabOrder = 7
        end
        object BuynoCB: TComboBox
          Left = 362
          Top = 92
          Width = 119
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 8
        end
        object ddsell: TCheckBox
          Left = 496
          Top = 95
          Width = 145
          Height = 17
          Caption = 'Not include ZS Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object nomat: TEdit
          Left = 90
          Top = 62
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object OnlyMat: TEdit
          Left = 361
          Top = 61
          Width = 121
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object ArticleEdit: TEdit
          Left = 548
          Top = 34
          Width = 137
          Height = 24
          TabOrder = 12
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1412
        Height = 65
        Align = alTop
        TabOrder = 2
        object MCB1: TBitBtn
          Left = 8
          Top = 7
          Width = 49
          Height = 48
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = MCB1Click
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
        object MCB2: TBitBtn
          Left = 57
          Top = 7
          Width = 49
          Height = 48
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
        object MCB3: TBitBtn
          Left = 106
          Top = 7
          Width = 48
          Height = 48
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = MCB3Click
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
        object MCB4: TBitBtn
          Left = 154
          Top = 7
          Width = 49
          Height = 48
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = MCB4Click
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
        object MCB5: TBitBtn
          Left = 203
          Top = 7
          Width = 49
          Height = 48
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = MCB5Click
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
        object MCB6: TBitBtn
          Left = 252
          Top = 7
          Width = 49
          Height = 48
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = MCB6Click
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
        object updateall: TButton
          Left = 344
          Top = 7
          Width = 65
          Height = 48
          Caption = 'UpdateAll'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = UpdateAllClick
        end
        object UpdateRight: TButton
          Left = 410
          Top = 7
          Width = 78
          Height = 48
          Caption = 'UpdateRight'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = UpdateRightClick
        end
        object Button2: TButton
          Left = 488
          Top = 7
          Width = 75
          Height = 48
          Caption = 'EXCEL'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 564
          Top = 7
          Width = 75
          Height = 48
          Caption = 'ALL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = Button3Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Son_Mat'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1412
        Height = 65
        Align = alTop
        TabOrder = 0
        object MCB1a: TBitBtn
          Left = 8
          Top = 3
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
          OnClick = MCB1aClick
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
        object MCB2a: TBitBtn
          Left = 57
          Top = 3
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
        object MCB3a: TBitBtn
          Left = 106
          Top = 3
          Width = 48
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
          OnClick = MCB3aClick
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
        object MCB4a: TBitBtn
          Left = 154
          Top = 3
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
          OnClick = MCB4aClick
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
        object MCB5a: TBitBtn
          Left = 203
          Top = 3
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
          OnClick = MCB5aClick
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
        object MCB6a: TBitBtn
          Left = 252
          Top = 3
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
          TabOrder = 5
          OnClick = MCB6Click
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
        object Button7: TButton
          Left = 301
          Top = 3
          Width = 55
          Height = 49
          Caption = 'EXCEL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button7Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 65
        Width = 1412
        Height = 104
        Align = alTop
        TabOrder = 1
        Visible = False
        object Label12: TLabel
          Left = 15
          Top = 30
          Width = 69
          Height = 16
          Caption = 'Mat.English'
        end
        object Label13: TLabel
          Left = 18
          Top = 79
          Width = 65
          Height = 16
          Caption = 'Vendor No'
        end
        object Label14: TLabel
          Left = 161
          Top = 80
          Width = 44
          Height = 16
          Caption = 'Vendor'
        end
        object Label15: TLabel
          Left = 37
          Top = 7
          Width = 47
          Height = 16
          Caption = 'Season'
        end
        object Label16: TLabel
          Left = 190
          Top = 6
          Width = 99
          Height = 16
          Caption = 'Mat.Name Not In'
        end
        object Label17: TLabel
          Left = 285
          Top = 80
          Width = 38
          Height = 16
          Caption = 'Buyno'
        end
        object Label18: TLabel
          Left = 6
          Top = 54
          Width = 80
          Height = 16
          Caption = 'MatNo Not in '
        end
        object Label19: TLabel
          Left = 232
          Top = 52
          Width = 48
          Height = 16
          Caption = 'Mat. NO'
        end
        object CLZLedita: TEdit
          Left = 88
          Top = 28
          Width = 337
          Height = 24
          TabOrder = 0
        end
        object SplitCKa: TCheckBox
          Left = 440
          Top = 22
          Width = 121
          Height = 17
          Caption = 'Split=*'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object Button8: TButton
          Left = 440
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button8Click
        end
        object CSBHedita: TEdit
          Left = 87
          Top = 76
          Width = 65
          Height = 24
          TabOrder = 3
        end
        object companyEdita: TEdit
          Left = 207
          Top = 76
          Width = 73
          Height = 24
          TabOrder = 4
        end
        object Edit1a: TEdit
          Left = 88
          Top = 4
          Width = 97
          Height = 24
          TabOrder = 5
        end
        object notclzla: TEdit
          Left = 288
          Top = 4
          Width = 137
          Height = 24
          TabOrder = 6
        end
        object BuynoCBa: TComboBox
          Left = 327
          Top = 76
          Width = 98
          Height = 24
          ItemHeight = 16
          TabOrder = 7
        end
        object ddsella: TCheckBox
          Left = 439
          Top = 39
          Width = 170
          Height = 17
          Caption = 'Not include ZS Order'
          TabOrder = 8
        end
        object nomata: TEdit
          Left = 88
          Top = 49
          Width = 121
          Height = 24
          TabOrder = 9
        end
        object OnlyMata: TEdit
          Left = 304
          Top = 48
          Width = 121
          Height = 24
          TabOrder = 10
        end
        object showson: TCheckBox
          Left = 440
          Top = 5
          Width = 177
          Height = 17
          Caption = 'Only show Child Mat.'
          Checked = True
          State = cbChecked
          TabOrder = 11
        end
        object Panel7: TPanel
          Left = 616
          Top = 16
          Width = 225
          Height = 71
          Color = clGradientActiveCaption
          TabOrder = 12
          Visible = False
          object Label20: TLabel
            Left = 72
            Top = 11
            Width = 45
            Height = 16
            Caption = 'Update'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 13
            Top = 36
            Width = 44
            Height = 16
            Caption = 'Vendor'
          end
          object leftalla: TEdit
            Left = 60
            Top = 33
            Width = 121
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 184
            Top = 35
            Width = 17
            Height = 21
            Caption = '...'
            TabOrder = 1
            OnClick = BitBtn2Click
          end
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 169
        Width = 1412
        Height = 571
        Align = alClient
        DataSource = DataSource4
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
            FieldName = 'XH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DType'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DTypeBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'clbh'
            Footer.ValueType = fvtCount
            Footer.WordWrap = True
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'csbh'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'XXZLKHDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CLZLKHDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'xiexing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'shehao'
            Footers = <>
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Only_Son'
      ImageIndex = 2
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1412
        Height = 65
        Align = alTop
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 8
          Top = 3
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn3Click
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
        object BitBtn4: TBitBtn
          Left = 56
          Top = 3
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
        object BitBtn5: TBitBtn
          Left = 104
          Top = 3
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
          Left = 152
          Top = 3
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
          TabOrder = 3
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
          Left = 200
          Top = 3
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
          TabOrder = 4
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
          Left = 248
          Top = 3
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn8Click
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
        object Button4: TButton
          Left = 296
          Top = 3
          Width = 55
          Height = 49
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button4Click
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 65
        Width = 1412
        Height = 80
        Align = alTop
        TabOrder = 1
        Visible = False
        object Label22: TLabel
          Left = 23
          Top = 42
          Width = 53
          Height = 16
          Caption = 'Son_Mat'
        end
        object Label23: TLabel
          Left = 200
          Top = 16
          Width = 110
          Height = 16
          Caption = 'Son_Mat_Supplier'
        end
        object Label24: TLabel
          Left = 0
          Top = 15
          Width = 80
          Height = 16
          Caption = 'Son_Mat_NO'
        end
        object Label25: TLabel
          Left = 211
          Top = 46
          Width = 95
          Height = 16
          Caption = 'Not_In_Supplier'
        end
        object Label28: TLabel
          Left = 436
          Top = 16
          Width = 38
          Height = 16
          Caption = 'KHDH'
        end
        object Edit2: TEdit
          Left = 80
          Top = 40
          Width = 121
          Height = 24
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 308
          Top = 12
          Width = 121
          Height = 24
          TabOrder = 1
        end
        object Button5: TButton
          Left = 440
          Top = 41
          Width = 123
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button5Click
        end
        object Edit4: TEdit
          Left = 80
          Top = 12
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 308
          Top = 44
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object Panel11: TPanel
          Left = 568
          Top = 0
          Width = 201
          Height = 71
          Color = clGradientActiveCaption
          TabOrder = 5
          Visible = False
          object Label26: TLabel
            Left = 72
            Top = 11
            Width = 45
            Height = 16
            Caption = 'Update'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 10
            Top = 35
            Width = 44
            Height = 16
            Caption = 'Vendor'
          end
          object leftallson: TEdit
            Left = 56
            Top = 33
            Width = 109
            Height = 24
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn9: TBitBtn
            Left = 168
            Top = 36
            Width = 17
            Height = 21
            Caption = '...'
            TabOrder = 1
            OnClick = BitBtn9Click
          end
        end
        object Edit6: TEdit
          Left = 476
          Top = 13
          Width = 85
          Height = 24
          TabOrder = 6
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 145
        Width = 1412
        Height = 595
        Align = alClient
        TabOrder = 2
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 1410
          Height = 593
          Align = alClient
          DataSource = DataSource5
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
              FieldName = 'mom'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'son'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footer.FieldName = 'ywpm'
              Footer.ValueType = fvtCount
              Footers = <>
              Width = 555
            end
            item
              EditButtons = <>
              FieldName = 'zsdh'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'supplier'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'KHDH'
              Footers = <>
              Width = 23
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'MEMO'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1412
        Height = 740
        Align = alClient
        Lines.Strings = (
          #27597#26009#24288#21830#26356#25913' Mom_Mat:'
          '1.'#21482#25628#23563#27597#26448#26009
          '2.'#21482#26356#25913#27597#26448#26009#24288#21830#65292#25563#21477#35441#35498#25351#26356#25913'BOM'#34920#26448#26009#35041#38754#30340#24288#21830
          '3.'#21487#20197#20381#23395#31680#25110'BUY'#21029#26781#20214#32302#23567#36942#28670'BOM'#30340#31684#22285#65292#36991#20813#33836#19968#25209#27425#26356#25913#25913#37679
          '4.Season='#23395#31680',Mat.English='#27597#26448#26009#26781#20214#38364#37749#23383',Notin='#27597#26448#26009#26781#20214#19981#21253#25324#30340#38364#37749#23383
          '  NotMatNum='#19981#21253#25324#30340#26448#26009#32232#34399',OnlyMatNum='#21482#21253#25324#30340#26448#26009#32232#34399
          '  SupplierNO='#24288#21830#32232#34399',Supplier='#24288#21830#38364#37749#23383',BuyNO=Buy'#21029
          ''
          #23376#26009#24288#21830#26356#25913' Son_Mat:'
          '1.'#30001#27597#26448#26009#24118#20986#23376#26448#26009
          '2.'#26781#20214#26159#23376#26448#26009#30340#26781#20214#65292#20294#27597#26448#26009#24517#38920#20063#35201#26377#36319#23376#26448#26009#19968#27171#30340#26781#20214#65292#25165#26371#21015#20986
          '3.'#27492#21151#33021#21482#25913#23376#26448#26009#24288#21830#65292#22240#27492#30059#38754#19978#21482#39023#31034#23376#26448#26009#35201#21246#36984#24460#25165#33021#36914#34892'Modify'
          ''
          'Only_Son:'
          '1.'#21482#26356#25913#23376#26448#26009#24288#21830
          '2.'#21482#20381#29031#23376#26448#26009#26781#20214#25628#23563#65292#19981#29309#28041#20219#20309#27597#26448#26009)
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Supplier Maintenance'
      ImageIndex = 4
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1412
        Height = 65
        Align = alTop
        TabOrder = 0
        object BitBtn10: TBitBtn
          Left = 8
          Top = 3
          Width = 49
          Height = 49
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
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
        object BitBtn11: TBitBtn
          Left = 56
          Top = 3
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
          TabOrder = 1
          OnClick = BitBtn11Click
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
        object BitBtn12: TBitBtn
          Left = 152
          Top = 3
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn12Click
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
        object BitBtn13: TBitBtn
          Left = 200
          Top = 3
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
          TabOrder = 3
          OnClick = BitBtn13Click
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
        object BitBtn14: TBitBtn
          Left = 248
          Top = 3
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
          TabOrder = 4
          OnClick = BitBtn14Click
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
        object BitBtn15: TBitBtn
          Left = 297
          Top = 3
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn15Click
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
        object Button6: TButton
          Left = 345
          Top = 3
          Width = 56
          Height = 49
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object BB3: TBitBtn
          Left = 104
          Top = 3
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
      end
      object Panel13: TPanel
        Left = 0
        Top = 65
        Width = 1412
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label29: TLabel
          Left = 21
          Top = 12
          Width = 85
          Height = 20
          Caption = 'Supplier NO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 205
          Top = 12
          Width = 47
          Height = 20
          Caption = 'GSBH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 349
          Top = 12
          Width = 45
          Height = 20
          Caption = 'zsywjc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button9: TButton
          Left = 672
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button9Click
        end
        object Edit7: TEdit
          Left = 112
          Top = 12
          Width = 65
          Height = 24
          TabOrder = 1
        end
        object Edit8: TEdit
          Left = 256
          Top = 12
          Width = 65
          Height = 24
          TabOrder = 2
        end
        object Edit9: TEdit
          Left = 400
          Top = 12
          Width = 65
          Height = 24
          TabOrder = 3
        end
      end
      object Panel14: TPanel
        Left = 329
        Top = 106
        Width = 1083
        Height = 634
        Align = alClient
        Caption = 'Panel14'
        TabOrder = 2
        object DBGridEh6: TDBGridEh
          Left = 1
          Top = 1
          Width = 1081
          Height = 632
          Align = alClient
          DataSource = DataSource6
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
              FieldName = 'zsdh'
              Footers = <>
              OnEditButtonClick = DBGridEh6Columns0EditButtonClick
            end
            item
              EditButtons = <>
              FieldName = 'GSBH'
              Footers = <>
              PickList.Strings = (
                ''
                'CDC'
                'VA12')
              Width = 37
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'zsqm'
              Footers = <>
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'zsywjc'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'release'
              Footers = <>
              Width = 46
            end>
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 106
        Width = 329
        Height = 634
        Align = alLeft
        Caption = 'Panel15'
        TabOrder = 3
        Visible = False
        object Panel16: TPanel
          Left = 1
          Top = 1
          Width = 327
          Height = 64
          Align = alTop
          TabOrder = 0
          object Label32: TLabel
            Left = 5
            Top = 12
            Width = 85
            Height = 20
            Caption = 'Supplier NO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 37
            Top = 36
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
          object Button10: TButton
            Left = 172
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Query'
            TabOrder = 0
            OnClick = Button10Click
          end
          object Edit10: TEdit
            Left = 96
            Top = 12
            Width = 65
            Height = 24
            TabOrder = 1
          end
          object Edit11: TEdit
            Left = 96
            Top = 36
            Width = 65
            Height = 24
            TabOrder = 2
          end
        end
        object Panel17: TPanel
          Left = 1
          Top = 65
          Width = 327
          Height = 568
          Align = alClient
          Caption = 'Panel17'
          TabOrder = 1
          object DBGridEh7: TDBGridEh
            Left = 1
            Top = 1
            Width = 325
            Height = 566
            Align = alClient
            DataSource = DataSource7
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
            OnCellClick = DBGridEh7CellClick
          end
        end
      end
    end
  end
  object MaterialQry: TQuery
    DatabaseName = 'TWDB'
    SQL.Strings = (
      'select xxzl.article,xxzl.khdh,xxzl.jijie from xxzl '
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao'
      'left join clzl on clzl.cldh=xxzls.clbh'
      
        'left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl' +
        '.shehao'
      'left join zszl on zszl.zsdh=xxzls.csbh'
      'where xxzl.article is not null and ddzl.ddlb<>'#39'B'#39
      'and xxzl.khdh = '#39'036'#39' '
      'and xxzl.jijie like '#39'%15%'#39
      'and ddzl.buyno = '#39'201502 15F'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' '
      'and xxzl.article not in'
      '(select xxzl.article from xxzl '
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao'
      'left join clzl on clzl.cldh=xxzls.clbh'
      'where xxzl.article is not null'
      'and xxzl.jijie like '#39'%15%'#39
      'and xxzl.khdh = '#39'036'#39' '
      'and CLZL.ywpm like '#39'%9mm%'#39' '
      'group by article)'
      'group by xxzl.article,xxzl.khdh,xxzl.jijie'
      'order by xxzl.article ')
    UpdateObject = updmat
    Left = 112
    Top = 296
    object MaterialQryarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object MaterialQrykhdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object MaterialQryjijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = MaterialQry
    Left = 112
    Top = 248
  end
  object Updcompany: TUpdateSQL
    ModifySQL.Strings = (
      'update xxzls'
      'set'
      '  csbh=:csbh'
      'where'
      '  clbh=:old_clbh and'
      '  xiexing=:old_xiexing  and'
      '  shehao=:old_shehao'
      ''
      '  ')
    Left = 232
    Top = 345
  end
  object gettime: TQuery
    DatabaseName = 'TWDB'
    Left = 72
    Top = 296
  end
  object startcreat: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 249
  end
  object updmat: TUpdateSQL
    ModifySQL.Strings = (
      'update clzl'
      'set'
      '  ywpm=:ywpm'
      'where'
      '  clbh=:old_clbh'
      '  ')
    Left = 112
    Top = 345
  end
  object csbhmod: TQuery
    DatabaseName = 'TWDB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xxzl.article,xx' +
        'zl.KHDH,xxzls.xiexing,xxzls.shehao from xxzl '
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao '
      'left join zszl on zszl.zsdh=xxzls.csbh '
      'left join clzl on clzl.cldh=xxzls.clbh'
      'where xxzl.article=:article  and xxzl.khdh='#39'036'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' ')
    UpdateObject = Updcompany
    Left = 232
    Top = 297
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'article'
        ParamType = ptUnknown
        Size = 21
      end>
    object csbhmodclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object csbhmodywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object csbhmodcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object csbhmodzsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object csbhmodarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object csbhmodKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object csbhmodxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object csbhmodshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
  end
  object DataSource2: TDataSource
    DataSet = csbhmod
    Left = 232
    Top = 249
  end
  object Database1: TDatabase
    AliasName = 'LY_SHOE'
    DatabaseName = 'TWDB'
    Params.Strings = (
      'USER NAME=su2')
    SessionName = 'Default'
    OnLogin = Database1Login
    Left = 72
    Top = 345
  end
  object VNrecord: TQuery
    DatabaseName = 'dB'
    Left = 288
    Top = 249
  end
  object quickexcel: TQuery
    DatabaseName = 'TWDB'
    Left = 152
    Top = 297
  end
  object DataSource3: TDataSource
    DataSet = quickexcel
    Left = 152
    Top = 249
  end
  object extramat: TQuery
    DatabaseName = 'TWDB'
    SQL.Strings = (
      'select XXZLS.* from( '
      
        '  select  XXZLS.XH,'#39'Assembly'#39' AS DType,'#39'Assembly'#39' as DTypeBH,xxz' +
        'ls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,'
      
        '  xxzl.article,xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls' +
        '.xiexing,xxzls.shehao from xxzl'
      
        '  left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=' +
        'xxzls.shehao '
      '  left join zszl on zszl.zsdh=xxzls.csbh '
      '  left join clzl on clzl.cldh=xxzls.clbh'
      
        '  left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=dd' +
        'zl.shehao'
      '  where xxzl.article in'
      '    (select xxzl.article from xxzl '
      
        '    left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.sheha' +
        'o=xxzls.shehao'
      '    left join clzl on clzl.cldh=xxzls.clbh'
      
        '    left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=' +
        'ddzl.shehao'
      '    left join zszl on zszl.zsdh=xxzls.csbh'
      '    where xxzl.article is not null'
      'and xxzl.khdh = '#39'036'#39' '
      'and xxzl.jijie like '#39'%16S%'#39
      'and ddzl.buyno = '#39'201508 16S'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' '
      '     group by xxzl.article)'
      ' and xxzl.khdh='#39'036'#39' '
      'and left(ddzl.ddbh,2) <> '#39'ZS'#39' '
      'and xxzl.jijie like '#39'%16S%'#39
      'and ddzl.buyno = '#39'201508 16S'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' '
      'AND CLZL.ywpm NOT like '#39'%black%'#39
      
        '  group by XXZLS.XH,xxzls.clbh,CLZL.ywpm,xxzls.csbh,zszl.zsqm,xx' +
        'zl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.shehao'
      'union all'
      
        'select XXZLS.XH,'#39'Extra'#39'AS DType,clzhzl.cldh as DTypeBH,clzhzl.cl' +
        'dh1,CLZL.ywpm,clzhzl.ZSDH as csbh,zszl.zsqm,xxzl.article,'
      
        'xxzl.KHDH as XXZLKHDH,clzl.kfdh as CLZLKHDH,xxzls.xiexing,xxzls.' +
        'shehao from xxzl '
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao'
      'inner join clzhzl on xxzls.clbh=clzhzl.cldh '
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.ZSDH  '
      
        'left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl' +
        '.shehao '
      'where clzhzl.cldh in( '
      'select  xxzls.clbh from xxzl'
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao '
      'left join zszl on zszl.zsdh=xxzls.csbh '
      'left join clzl on clzl.cldh=xxzls.clbh'
      
        'left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl' +
        '.shehao'
      'where xxzl.article in'
      '(select xxzl.article from xxzl '
      
        'left join xxzls on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xx' +
        'zls.shehao'
      'left join clzl on clzl.cldh=xxzls.clbh'
      
        'left join ddzl on xxzl.xiexing=ddzl.xiexing and xxzl.shehao=ddzl' +
        '.shehao'
      'left join zszl on zszl.zsdh=xxzls.csbh'
      'where xxzl.article is not null'
      'and xxzl.khdh = '#39'036'#39' '
      'and xxzl.jijie like '#39'%16S%'#39
      'and ddzl.buyno = '#39'201508 16S'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' '
      'group by xxzl.article)'
      ' and xxzl.khdh='#39'036'#39' '
      'and left(ddzl.ddbh,2) <> '#39'ZS'#39' '
      'and xxzl.jijie like '#39'%16S%'#39
      'and ddzl.buyno = '#39'201508 16S'#39' '
      'and CLZL.ywpm like '#39'%8mm%'#39' '
      'AND CLZL.ywpm NOT like '#39'%black%'#39
      'group by xxzls.clbh)'
      ' and xxzl.khdh='#39'036'#39' '
      'and ddzl.buyno = '#39'201508 16S'#39' '
      'and left(ddzl.ddbh,2) <> '#39'ZS'#39' '
      'and xxzl.jijie like '#39'%16S%'#39
      
        'group by XXZLS.XH,clzhzl.cldh,clzhzl.cldh1,CLZL.ywpm,clzhzl.ZSDH' +
        ',zszl.zsqm,xxzl.article,xxzl.KHDH,clzl.kfdh,xxzls.xiexing,xxzls.' +
        'shehao)XXZLS'
      'order by article,XH,dType')
    UpdateObject = Upextra
    Left = 352
    Top = 297
    object extramatXXZLKHDH: TStringField
      FieldName = 'XXZLKHDH'
      FixedChar = True
      Size = 4
    end
    object extramatXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object extramatDType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object extramatDTypeBH: TStringField
      FieldName = 'DTypeBH'
      FixedChar = True
      Size = 10
    end
    object extramatclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object extramatywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object extramatcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object extramatzsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object extramatarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object extramatCLZLKHDH: TStringField
      FieldName = 'CLZLKHDH'
      FixedChar = True
      Size = 4
    end
    object extramatxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 15
    end
    object extramatshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
  end
  object DataSource4: TDataSource
    DataSet = extramat
    Left = 348
    Top = 248
  end
  object Upextra: TUpdateSQL
    ModifySQL.Strings = (
      'update clzhzl'
      'set'
      '  zsdh=:zsdh'
      'where'
      '  cldh =:old_cldh and'
      '  cldh1=:old_cldh1   ')
    Left = 352
    Top = 337
  end
  object Onlyson: TQuery
    DatabaseName = 'TWDB'
    SQL.Strings = (
      
        'select clzhzl.cldh as mom,cldh1 as son,clzl.ywpm,clzhzl.zsdh,zsz' +
        'l.zsywjc as supplier,xxzl.KHDH from clzhzl'
      'left join clzl on clzl.cldh=clzhzl.cldh1 '
      'left join zszl on zszl.zsdh=clzhzl.zsdh'
      'left join xxzls on xxzls.clbh=clzhzl.cldh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      'where 1=1'
      'and clzl.ywpm like '#39'%8mm%'#39
      'and clzhzl.zsdh = '#39'A033'#39' '
      
        'group by clzhzl.cldh,cldh1,clzl.ywpm,clzhzl.zsdh,zszl.zsywjc,xxz' +
        'l.KHDH')
    UpdateObject = Updonlyson
    Left = 508
    Top = 296
    object Onlysonywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Onlysonzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object OnlysonKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object Onlysonmom: TStringField
      FieldName = 'mom'
      FixedChar = True
      Size = 10
    end
    object Onlysonson: TStringField
      FieldName = 'son'
      FixedChar = True
      Size = 10
    end
    object Onlysonsupplier: TStringField
      FieldName = 'supplier'
      FixedChar = True
    end
  end
  object DataSource5: TDataSource
    DataSet = Onlyson
    Left = 508
    Top = 248
  end
  object Updonlyson: TUpdateSQL
    ModifySQL.Strings = (
      'update clzhzl'
      'set'
      '  zsdh=:zsdh'
      'where'
      '  cldh =:old_cldh and'
      '  cldh1=:old_cldh1   ')
    Left = 512
    Top = 337
  end
  object maincompany: TQuery
    DatabaseName = 'dB'
    Left = 28
    Top = 249
  end
  object DataSource6: TDataSource
    DataSet = Supplier
    Left = 620
    Top = 242
  end
  object Supplier: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select zszl_DEV.zsdh,ZSZL_dev.GSBH,zszl.zsqm,zszl.zsywjc,zszl_de' +
        'v.release from zszl_DEV'
      'left join zszl on ZSZL.zsdh=zszl_DEV.zsdh'
      'where zszl_DEV.zsdh is not null'
      'and (zszl_DEV.GSBH='#39'CDC'#39' or zszl_DEV.GSBH='#39'VA12'#39')'
      
        'group by zszl_DEV.zsdh,ZSZL_dev.GSBH,zszl.zsqm,zszl.zsywjc,zszl_' +
        'dev.release')
    UpdateObject = Updsupplier
    Left = 620
    Top = 290
    object Supplierzsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl_DEV.zsdh'
      FixedChar = True
      Size = 6
    end
    object SupplierGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.zszl_DEV.GSBH'
      FixedChar = True
      Size = 4
    end
    object Supplierzsqm: TStringField
      FieldName = 'zsqm'
      Origin = 'DB.zszl.zsqm'
      FixedChar = True
      Size = 50
    end
    object Supplierzsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
    end
    object Supplierrelease: TBooleanField
      FieldName = 'release'
      Origin = 'DB.zszl_DEV.release'
    end
  end
  object Updsupplier: TUpdateSQL
    ModifySQL.Strings = (
      'update zszl_DEV'
      'set'
      '  release=:release'
      'where'
      '  zsdh=:old_zsdh and'
      '  GSBH=:old_GSBH'
      ''
      ''
      ''
      ''
      '')
    InsertSQL.Strings = (
      'insert into zszl_DEV'
      '  (zsdh, gsbh, release)'
      'values'
      '  (:zsdh, :gsbh, :release)')
    DeleteSQL.Strings = (
      'delete from zszl_DEV'
      'where'
      '  zsdh=:old_zsdh and'
      '  GSBH=:old_GSBH'
      '')
    Left = 620
    Top = 322
  end
  object DataSource7: TDataSource
    DataSet = QrySupplier
    Left = 700
    Top = 248
  end
  object QrySupplier: TQuery
    DatabaseName = 'dB'
    Left = 696
    Top = 288
  end
end
