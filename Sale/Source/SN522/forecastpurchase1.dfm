object forecastpurchase: Tforecastpurchase
  Left = 274
  Top = 183
  Width = 1358
  Height = 675
  Caption = 'forecastpurchase'
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
  object PageControl3: TPageControl
    Left = 0
    Top = 0
    Width = 1342
    Height = 636
    ActivePage = TabSheet7
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet5: TTabSheet
      Caption = 'Forecast'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1334
        Height = 65
        Align = alTop
        TabOrder = 0
        object ProcessInofLabel: TLabel
          Left = 504
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
        object Label16: TLabel
          Left = 496
          Top = 35
          Width = 72
          Height = 16
          Caption = 'Input BuyNo'
          Color = clYellow
          ParentColor = False
          Visible = False
        end
        object BD9: TButton
          Left = 440
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
          OnClick = BD9Click
        end
        object BuyNoEdit: TEdit
          Left = 572
          Top = 32
          Width = 61
          Height = 24
          Color = clYellow
          TabOrder = 1
          Visible = False
        end
        object BD7: TBitBtn
          Left = 305
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
        object BD6: TBitBtn
          Left = 256
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
        object BD5: TBitBtn
          Left = 208
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
        object BD4: TBitBtn
          Left = 160
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
        object BD3: TBitBtn
          Left = 112
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
        object BD2: TBitBtn
          Left = 64
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
        object BD1: TBitBtn
          Left = 16
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
          OnClick = BD1Click
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
        object BD8: TBitBtn
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
          OnClick = BD8Click
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
      object ImportPanel: TPanel
        Left = 0
        Top = 114
        Width = 505
        Height = 491
        Align = alLeft
        TabOrder = 1
        Visible = False
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 503
          Height = 489
          Align = alClient
          DataSource = ExcelDS_Pur
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
              FieldName = 'BUYNO'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Title.Caption = 'ARTICLE'
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footers = <>
              Title.Caption = 'Total'
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'GSBH'
              Footers = <>
            end>
        end
      end
      object Panel9: TPanel
        Left = 505
        Top = 114
        Width = 829
        Height = 491
        Align = alClient
        TabOrder = 2
        object DBGridEh4: TDBGridEh
          Left = 287
          Top = 1
          Width = 541
          Height = 489
          Align = alClient
          DataSource = DS_fc_xxzls_pur
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
              FieldName = 'buyno'
              Footers = <>
              Title.Caption = 'Buy No'
            end
            item
              EditButtons = <>
              FieldName = 'article'
              Footers = <>
              Title.Caption = 'ARTICLE'
              Width = 139
            end
            item
              EditButtons = <>
              FieldName = 'clbh'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'CLBH'
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'ywpm'
              Footers = <>
              Width = 340
            end
            item
              EditButtons = <>
              FieldName = 'cscl'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'pairs'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Caption = 'Unit'
            end
            item
              EditButtons = <>
              FieldName = 'total'
              Footer.FieldName = 'total'
              Footer.ValueType = fvtSum
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
              FieldName = 'clzmlb'
              Footers = <>
              Width = 28
            end
            item
              EditButtons = <>
              FieldName = 'CQDH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'BWLB'
              Footers = <>
              Title.Caption = 'Unit Class'
              Width = 70
            end>
        end
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 286
          Height = 489
          Align = alLeft
          Caption = 'Panel12'
          TabOrder = 1
          Visible = False
          object DBGridEh6: TDBGridEh
            Left = 1
            Top = 79
            Width = 284
            Height = 409
            Align = alClient
            DataSource = DS_not_XXZL
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
                FieldName = 'buyno'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Width = 97
              end
              item
                EditButtons = <>
                FieldName = 'Total'
                Footers = <>
                Width = 61
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
              Width = 203
              Height = 16
              Caption = 'Hint:some Artice dont have Usage'
            end
            object Memo3: TMemo
              Left = 12
              Top = 33
              Width = 213
              Height = 33
              Lines.Strings = (
                #27880#24847':'#20197#19979#21015#34920#27794#26377'Article'#29992#37327)
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
      end
      object Panel24: TPanel
        Left = 0
        Top = 65
        Width = 1334
        Height = 49
        Align = alTop
        TabOrder = 3
        Visible = False
        object Label15: TLabel
          Left = 8
          Top = 13
          Width = 50
          Height = 20
          Caption = 'BuyNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 133
          Top = 12
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
        object Label19: TLabel
          Left = 321
          Top = 12
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
        object Label20: TLabel
          Left = 500
          Top = 12
          Width = 44
          Height = 20
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 672
          Top = 13
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
        object BuyNoCoBox: TComboBox
          Left = 62
          Top = 11
          Width = 67
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          Items.Strings = (
            'SRA'
            'GTM')
        end
        object MatNO2Edit: TEdit
          Left = 374
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 1
        end
        object ArticleEdit: TEdit
          Left = 547
          Top = 11
          Width = 121
          Height = 24
          TabOrder = 2
        end
        object Button3: TButton
          Left = 831
          Top = 7
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button3Click
        end
        object zsywjcEdit: TEdit
          Left = 206
          Top = 11
          Width = 107
          Height = 24
          TabOrder = 4
        end
        object Loc2CoBox: TComboBox
          Left = 736
          Top = 12
          Width = 81
          Height = 24
          ItemHeight = 16
          TabOrder = 5
          Items.Strings = (
            'VN'
            'TW')
        end
        object CBSum: TCheckBox
          Left = 920
          Top = 16
          Width = 89
          Height = 17
          Caption = 'Total CLSL'
          TabOrder = 6
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Article_Check'
      ImageIndex = 2
      object Panel10: TPanel
        Left = 0
        Top = 65
        Width = 1334
        Height = 49
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label13: TLabel
          Left = 22
          Top = 14
          Width = 50
          Height = 20
          Caption = 'BuyNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 157
          Top = 14
          Width = 44
          Height = 20
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button6: TButton
          Left = 398
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button6Click
        end
        object BuyNo2CoBox: TComboBox
          Left = 78
          Top = 13
          Width = 67
          Height = 24
          ItemHeight = 16
          TabOrder = 1
          Items.Strings = (
            ''
            'SRA'
            'GTM')
        end
        object ARTICLE4Edit: TEdit
          Left = 208
          Top = 13
          Width = 177
          Height = 24
          TabOrder = 2
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 114
        Width = 1334
        Height = 491
        Align = alClient
        TabOrder = 1
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 1332
          Height = 489
          Align = alClient
          DataSource = DS_SR_check_pur
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
          OnGetCellParams = DBGridEh5GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'buyno'
              Footers = <>
              Title.Caption = 'Buy No'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'ARTICLE'
              Footer.FieldName = 'ARTICLE'
              Footer.ValueType = fvtCount
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Total'
              Footer.FieldName = 'Total'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
            end>
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1334
        Height = 65
        Align = alTop
        TabOrder = 2
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
          OnClick = BC2Click
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
    end
    object TabSheet6: TTabSheet
      Caption = 'Memo'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1334
        Height = 605
        Align = alClient
        Lines.Strings = (
          #21295#20837#26684#24335
          '1.SKU'
          '2.'#38617#25976
          #35531#20381#24207#22635#20837'EXCEL')
        TabOrder = 0
      end
    end
  end
  object ExcelDS_Pur: TDataSource
    DataSet = FC_Pur
    Left = 179
    Top = 309
  end
  object DS_fc_xxzls_pur: TDataSource
    DataSet = fc_xxzls_pur
    Left = 242
    Top = 311
  end
  object fc_xxzls_pur: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Buyno,article,clbh,clzl.ywpm,pairs,sum(total) as cscl,pai' +
        'rs*sum(total) as total,csbh,zsywjc,clzl.clzmlb,CLZL.CQDH,CLZL.DW' +
        'BH,BWLB  from('
      'select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,'
      
        '       xxzls.clbh,FC_import_pur.total as pairs,xxzls.clsl as tot' +
        'al,xxzls.csbh,zszl.zsywjc,xxzls.BWLB from FC_import_pur'
      'left join xxzl on xxzl.article=FC_import_pur.article '
      
        'left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=x' +
        'xzl.shehao '
      
        'left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=' +
        'kfxxzl.shehao '
      'left join zszl on zszl.zsdh=xxzls.csbh'
      'where    xxzls.clbh is not null'
      'and FC_import_pur.buyno='#39'202009'#39' '
      
        'group by xxzls.bwbh,xxzl.article,xxzls.clsl,FC_import_pur.buyno,' +
        'FC_import_pur.article,xxzls.clbh,FC_import_pur.total,xxzls.csbh,' +
        'zszl.zsywjc,xxzls.BWLB'
      'union'
      'select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,'
      
        '       clzhzl.cldh1,FC_import_pur.total as pairs,xxzls.clsl*clzh' +
        'zl.syl as total,clzhzl.zsdh,zszl.zsywjc,xxzls.BWLB'
      'FROM FC_import_pur'
      'left join xxzl on xxzl.article=FC_import_pur.article '
      
        'left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=x' +
        'xzl.shehao '
      
        'left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=' +
        'kfxxzl.shehao '
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      'LEFT JOIN BWZL  ON xxzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(xxzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  xxzls.clbh is not null'
      'and FC_import_pur.buyno='#39'202009'#39' '
      
        'GROUP BY xxzls.bwbh,xxzl.article,FC_import_pur.buyno,FC_import_p' +
        'ur.article,'
      
        '         clzhzl.cldh1,FC_import_pur.total,xxzls.clsl*clzhzl.syl,' +
        'clzhzl.zsdh,zszl.zsywjc,xxzls.BWLB'
      'union'
      
        'select bwbh,article,buyno,clzhzl.cldh1,pairs,total,clzhzl.zsdh,Z' +
        'SZL.zsywjc,bwlb from(  '
      'select xxzls.bwbh,xxzl.article,FC_import_pur.buyno,'
      
        '       clzhzl.cldh1,FC_import_pur.total as pairs,xxzls.clsl*clzh' +
        'zl.syl as total,clzhzl.zsdh,zszl.zsywjc,xxzls.BWLB'
      'FROM FC_import_pur'
      'left join xxzl on xxzl.article=FC_import_pur.article '
      
        'left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=x' +
        'xzl.shehao '
      
        'left join kfxxzl on xxzl.xiexing=kfxxzl.xiexing and xxzl.shehao=' +
        'kfxxzl.shehao '
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      'LEFT JOIN BWZL  ON xxzls.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL  ON clzhzl.cldh1 = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(xxzls.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'where  xxzls.clbh is not null'
      'and CLZHZL.SYL>0  and clzl.clzmlb='#39'Y'#39
      'and FC_import_pur.buyno='#39'202009'#39' '
      
        'GROUP BY xxzls.bwbh,xxzl.article,FC_import_pur.buyno,FC_import_p' +
        'ur.article,'
      
        '         clzhzl.cldh1,FC_import_pur.total,xxzls.clsl*clzhzl.syl,' +
        'clzhzl.zsdh,zszl.zsywjc,xxzls.BWLB)clzhzl2'
      'inner join clzhzl ON  clzhzl2.cldh1 = CLZHZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      'WHERE CLZHZL.cldh1 is not null'
      ' ) a '
      'left join clzl on clzl.cldh=a.clbh '
      'where clzl.clzmlb <>'#39'Y'#39
      
        'group by clzl.clzmlb,clzl.CQDH,CLZL.DWBH ,ywpm,buyno,article,clb' +
        'h,pairs,csbh,zsywjc,BWLB')
    Left = 242
    Top = 343
    object fc_xxzls_purbuyno: TStringField
      FieldName = 'buyno'
      FixedChar = True
      Size = 10
    end
    object fc_xxzls_purclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object fc_xxzls_purywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object fc_xxzls_purarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object fc_xxzls_purpairs: TFloatField
      FieldName = 'pairs'
    end
    object fc_xxzls_purcscl: TFloatField
      FieldName = 'cscl'
    end
    object fc_xxzls_purDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object fc_xxzls_purtotal: TFloatField
      FieldName = 'total'
    end
    object fc_xxzls_purcsbh: TStringField
      FieldName = 'csbh'
      FixedChar = True
      Size = 6
    end
    object fc_xxzls_purzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object fc_xxzls_purCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object fc_xxzls_purclzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object fc_xxzls_purBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
  end
  object FC_Pur: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from FC_import_PUR')
    UpdateObject = upFC_pur
    Left = 179
    Top = 341
    object FC_PurBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object FC_Purarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object FC_Purtotal: TFloatField
      FieldName = 'total'
    end
    object FC_PurGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object FC_PurUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object FC_PurUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object FC_PurYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.FC_import_pur.UserDate'
      FixedChar = True
      Size = 1
    end
  end
  object upFC_pur: TUpdateSQL
    InsertSQL.Strings = (
      ''
      'insert into FC_import_pur'
      '  (buyno,article,total,gsbh,userid,userdate,YN)'
      'values'
      '  (:buyno,:article,:total,:gsbh,:userid,:userdate,:YN)')
    Left = 179
    Top = 373
  end
  object SR_check_pur: TQuery
    AfterOpen = SR_check_purAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from FC_import_pur'
      'where Article is not null'
      'and FC_import_pur.buyno='#39'7'#39' ')
    UpdateObject = upSR_check_pur
    Left = 368
    Top = 338
    object SR_check_purGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.FC_import_pur.GSBH'
      FixedChar = True
      Size = 4
    end
    object SR_check_purARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.FC_import_pur.ARTICLE'
      FixedChar = True
    end
    object SR_check_purTotal: TFloatField
      FieldName = 'Total'
      Origin = 'DB.FC_import_pur.Total'
    end
    object SR_check_purUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.FC_import_pur.UserID'
      FixedChar = True
    end
    object SR_check_purUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.FC_import_pur.UserDate'
    end
    object SR_check_purbuyno: TStringField
      FieldName = 'buyno'
      Origin = 'DB.FC_import_pur.buyno'
      FixedChar = True
      Size = 10
    end
    object SR_check_purYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.FC_import_pur.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_SR_check_pur: TDataSource
    DataSet = SR_check_pur
    Left = 368
    Top = 306
  end
  object opendialog: TOpenDialog
    Left = 640
    Top = 56
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 145
    Top = 342
  end
  object upSR_check_pur: TUpdateSQL
    ModifySQL.Strings = (
      'update FC_import_pur'
      'set'
      '  article =:article,'
      '  total= :total,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  buyno = :OLD_buyno and'
      '  article = :OLD_article'
      '')
    InsertSQL.Strings = (
      'Insert into FC_import_pur'
      '  (BuyNO, GSBH, ARTICLE, Total, UserID, UserDate, YN)'
      'Values'
      '  (:BuyNO, :GSBH, :ARTICLE, :Total, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from FC_import_pur'
      'where'
      '  buyno = :OLD_buyno and'
      '  article = :OLD_article')
    Left = 370
    Top = 370
  end
  object DS_not_XXZL: TDataSource
    DataSet = not_XXZL
    Left = 210
    Top = 310
  end
  object not_XXZL: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select FC_import_pur.buyno,FC_import_pur.Article,Sum(convert(flo' +
        'at,FC_import_pur.Total)) as Total'
      'from FC_import_pur '
      'left join xxzl on xxzl.article=FC_import_pur.article'
      
        'left join xxzls on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=x' +
        'xzl.shehao'
      'where FC_import_pur.article is not null'
      '      and FC_import_pur.buyno='#39'7'#39
      'group by FC_import_pur.buyno,FC_import_pur.Article'
      'having Count(XXZLS.CLBH)=0')
    Left = 210
    Top = 342
    object not_XXZLbuyno: TStringField
      FieldName = 'buyno'
      FixedChar = True
      Size = 10
    end
    object not_XXZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object not_XXZLTotal: TFloatField
      FieldName = 'Total'
    end
  end
end
