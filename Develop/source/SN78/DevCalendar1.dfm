object DevCalenDar: TDevCalenDar
  Left = 340
  Top = 128
  Width = 1300
  Height = 740
  Caption = 'DevCalendar'
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
    Width = 1284
    Height = 701
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 673
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1274
          Height = 88
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 368
            Top = 10
            Width = 62
            Height = 20
            Caption = 'DevType'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
          object edit1: TComboBox
            Left = 440
            Top = 8
            Width = 65
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 1
            Items.Strings = (
              'Inline'
              'SMU')
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
            TabOrder = 2
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
            TabOrder = 3
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
            TabOrder = 4
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
            TabOrder = 6
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
        end
        object Panel3: TPanel
          Left = 1
          Top = 89
          Width = 1274
          Height = 583
          Align = alClient
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1272
            Height = 581
            Align = alClient
            DataSource = DataSource1
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
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                Color = clLime
                EditButtons = <>
                FieldName = 'Jijie'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Season'
                Width = 61
              end
              item
                Color = clLime
                EditButtons = <>
                FieldName = 'Devtype'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'DevType'
              end
              item
                EditButtons = <>
                FieldName = 'BuyMonth'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'PC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'PC Deadline'
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'RFC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'RFC Deadline'
              end
              item
                EditButtons = <>
                FieldName = 'Costing'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Costing Deadline'
                Width = 132
              end
              item
                EditButtons = <>
                FieldName = 'Pricing'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Pricing Deadline'
                Width = 127
              end
              item
                EditButtons = <>
                FieldName = 'BuyReady'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Buy Ready'
                Width = 87
              end
              item
                EditButtons = <>
                FieldName = 'Order_Buy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'Order Deadline|Buy Consolidation'
                Width = 147
              end
              item
                EditButtons = <>
                FieldName = 'PossibleRGAC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Width = 126
              end
              item
                EditButtons = <>
                FieldName = 'RDD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
              end
              item
                Color = clLime
                EditButtons = <>
                FieldName = 'ISD'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Width = 256
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 88
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 464
          Top = 26
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
        object Label4: TLabel
          Left = 344
          Top = 26
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
        object BitBtn1: TButton
          Left = 40
          Top = 16
          Width = 49
          Height = 49
          Caption = 'Import'
          Enabled = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object ComboBox1: TComboBox
          Left = 512
          Top = 24
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            ''
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object BitBtn2: TBitBtn
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
          TabOrder = 2
          OnClick = BitBtn2Click
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
          TabOrder = 3
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
        object BitBtn3: TBitBtn
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
          TabOrder = 4
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
        object BitBtn5: TBitBtn
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
        object ComboBox3: TComboBox
          Left = 384
          Top = 24
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 7
          Items.Strings = (
            ''
            '2017'
            '2018'
            '2019'
            '2020'
            '2021')
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 88
        Width = 1276
        Height = 585
        Align = alClient
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1274
          Height = 583
          Align = alClient
          DataSource = DataSource2
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
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'YPDH'
              Footers = <>
              Title.Caption = 'SampleOrder'
              Width = 112
            end
            item
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              Title.Caption = 'Qty'
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'month'
              Footers = <>
              Title.Caption = 'Month'
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'year'
              Footers = <>
              Title.Caption = 'Year'
              Width = 98
            end>
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 152
          Top = 10
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
        object Label5: TLabel
          Left = 24
          Top = 10
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
        object Label6: TLabel
          Left = 299
          Top = 11
          Width = 77
          Height = 20
          Caption = 'SampleNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 576
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object ComboBox2: TComboBox
          Left = 208
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            ''
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object ComboBox4: TComboBox
          Left = 64
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 2
          Items.Strings = (
            ''
            '2017'
            '2018'
            '2019'
            '2020'
            '2021')
        end
        object CheckBox1: TCheckBox
          Left = 760
          Top = 16
          Width = 97
          Height = 17
          Caption = 'detailMat'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Button2: TButton
          Left = 664
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = Button2Click
        end
        object Edit2: TEdit
          Left = 384
          Top = 8
          Width = 145
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CheckBox2: TCheckBox
          Left = 880
          Top = 16
          Width = 193
          Height = 17
          Caption = 'detailSampleNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = CheckBox2Click
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 49
        Width = 433
        Height = 624
        Align = alLeft
        Caption = 'Panel7'
        TabOrder = 1
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 431
          Height = 622
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
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh3CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'hgbh'
              Footers = <>
              Width = 102
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Width = 140
            end>
        end
      end
      object Panel8: TPanel
        Left = 433
        Top = 49
        Width = 843
        Height = 624
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 2
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 841
          Height = 422
          Align = alClient
          Caption = 'Panel9'
          TabOrder = 0
          object DBGridEh4: TDBGridEh
            Left = 1
            Top = 1
            Width = 839
            Height = 420
            Align = alClient
            DataSource = DataSource4
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
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
            OnCellClick = DBGridEh4CellClick
            Columns = <
              item
                EditButtons = <>
                FieldName = 'hgbh'
                Footers = <>
                Width = 222
              end
              item
                EditButtons = <>
                FieldName = 'clbh'
                Footer.FieldName = 'clbh'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 179
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 142
              end
              item
                EditButtons = <>
                FieldName = 'rateC'
                Footers = <>
                Width = 181
              end>
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 423
          Width = 841
          Height = 200
          Align = alBottom
          Caption = 'Panel10'
          TabOrder = 1
          Visible = False
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 1
            Width = 839
            Height = 198
            Align = alClient
            DataSource = DataSource5
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'YPDH'
                Footers = <>
                Width = 164
              end
              item
                EditButtons = <>
                FieldName = 'hgbh'
                Footers = <>
                Width = 148
              end
              item
                EditButtons = <>
                FieldName = 'clbh'
                Footer.FieldName = 'clbh'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'rateC'
                Footers = <>
                Width = 117
              end>
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Game Plan'
      ImageIndex = 3
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 129
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 136
          Top = 88
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
        object Label8: TLabel
          Left = 8
          Top = 88
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
        object Label9: TLabel
          Left = 312
          Top = 72
          Width = 59
          Height = 20
          Caption = 'Season:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 312
          Top = 96
          Width = 47
          Height = 20
          Caption = 'Stage:'
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
          Width = 1274
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
        object Ed_Season: TEdit
          Left = 64
          Top = 88
          Width = 57
          Height = 21
          Color = clYellow
          TabOrder = 1
        end
        object Ed_Stage: TEdit
          Left = 184
          Top = 88
          Width = 57
          Height = 21
          Color = clYellow
          TabOrder = 2
        end
      end
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 129
        Width = 1276
        Height = 544
        Align = alClient
        DataSource = DS6
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
            ButtonStyle = cbsDropDown
            EditButtons = <>
            FieldName = 'Gates'
            Footers = <>
            PickList.Strings = (
              'No TN'
              'TN with mock-up'
              'TN with real tooling'
              'Tech level w/o TN'
              'TN with real tooling')
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'CTS_TP_DEADLINE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'WearTestSamplePO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PurchasingPOtosupplierdeadline'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'first_2D_BP'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Purchasing_trackinglist'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Initial_Spec'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'New_Material_trackinglist'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'New_material_ETA'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'New_upper_pattern_confirmed'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Initinal_Last_upper_send'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Second_2D_Revision'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Tooling_2D_confirm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'first_3D_send'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'first_3D_Revision'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Second_3D_Revision'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Tooling_3D_confirm'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CFM_to_open_tooling'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Tooling_ready'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sampling_tooling_making'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Meeting_with_Production'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Material_ETA'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Pullover_confirm_deadline'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TB_to_Sample_Room'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Final_Spec_to_Costing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Final_Spec_to_Costing1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sample_starting'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sample_finished'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CTS_inspection'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sample_Packing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sample_XF'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Internal_Sample'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Sample_review'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PRODUCT_REVIEW'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Global_Costing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Internal_TDM'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TDM'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Wear_Test'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Key_features'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PTRSS_deadline'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PC_deadline'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RFC_of_first_buy'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RFC_of_2nd_buy'
            Footers = <>
            Title.Caption = 'RFC of 2nd buy'
          end
          item
            EditButtons = <>
            FieldName = 'RFC_of_3rd_buy'
            Footers = <>
            Title.Caption = 'RFC of 3rd buy'
          end
          item
            EditButtons = <>
            FieldName = 'CFM_transfer'
            Footers = <>
          end>
      end
    end
  end
  object FC: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select *,'#39'1'#39' as YN from devcalendar')
    UpdateObject = UpFC
    Left = 49
    Top = 169
    object FCJijie: TStringField
      FieldName = 'Jijie'
      Origin = 'DB.devcalendar.Jijie'
      FixedChar = True
      Size = 3
    end
    object FCDevtype: TStringField
      FieldName = 'Devtype'
      Origin = 'DB.devcalendar.Devtype'
      FixedChar = True
      Size = 10
    end
    object FCISD: TStringField
      FieldName = 'ISD'
      Origin = 'DB.devcalendar.ISD'
      FixedChar = True
      Size = 15
    end
    object FCBuyMonth: TStringField
      FieldName = 'BuyMonth'
      Origin = 'DB.devcalendar.BuyMonth'
      FixedChar = True
      Size = 3
    end
    object FCPC: TStringField
      FieldName = 'PC'
      Origin = 'DB.devcalendar.PC'
      FixedChar = True
      Size = 15
    end
    object FCRFC: TStringField
      FieldName = 'RFC'
      Origin = 'DB.devcalendar.RFC'
      FixedChar = True
      Size = 15
    end
    object FCCosting: TStringField
      FieldName = 'Costing'
      Origin = 'DB.devcalendar.Costing'
      FixedChar = True
      Size = 15
    end
    object FCPricing: TStringField
      FieldName = 'Pricing'
      Origin = 'DB.devcalendar.Pricing'
      FixedChar = True
      Size = 15
    end
    object FCBuyReady: TStringField
      FieldName = 'BuyReady'
      Origin = 'DB.devcalendar.BuyReady'
      FixedChar = True
      Size = 15
    end
    object FCOrder_Buy: TStringField
      FieldName = 'Order_Buy'
      Origin = 'DB.devcalendar.Order_Buy'
      FixedChar = True
      Size = 15
    end
    object FCPossibleRGAC: TStringField
      FieldName = 'PossibleRGAC'
      Origin = 'DB.devcalendar.PossibleRGAC'
      FixedChar = True
      Size = 15
    end
    object FCRDD: TStringField
      FieldName = 'RDD'
      Origin = 'DB.devcalendar.RDD'
      FixedChar = True
      Size = 15
    end
    object FCUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.devcalendar.USERDATE'
    end
    object FCUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.devcalendar.USERID'
      FixedChar = True
    end
    object FCYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = FC
    Left = 65
    Top = 281
  end
  object OpenDialog: TOpenDialog
    Left = 145
    Top = 129
  end
  object gettime: TQuery
    DatabaseName = 'dB'
    Left = 89
    Top = 169
  end
  object UpFC: TUpdateSQL
    ModifySQL.Strings = (
      'update devcalendar'
      'set'
      '    BuyMonth=:BuyMonth,'
      '    PC = :PC,'
      '    RFC = :RFC ,'
      '    Costing = :Costing ,'
      '    Pricing = :Pricing ,'
      '    BuyReady = :BuyReady ,'
      '    Order_Buy  = :Order_Buy ,'
      '    PossibleRGAC = :PossibleRGAC ,'
      '    RDD  = :RDD'
      '  where'
      '   Jijie= :OLD_Jijie and'
      '   Devtype = :OLD_Devtype  and'
      '   ISD =:OLD_ISD')
    InsertSQL.Strings = (
      ''
      'insert into devCalendar'
      
        '  (jijie, devtype, isd,buymonth,PC,RFC,Costing,Pricing,Buyready,' +
        'Order_Buy,PossibleRGAC,RDD,userdate,userid)'
      'values'
      
        '  (:jijie, :devtype,:isd,:buymonth,:PC,:RFC,:Costing,:Pricing,:B' +
        'uyready,:Order_Buy,:PossibleRGAC,:RDD,:userdate,:userid)')
    DeleteSQL.Strings = (
      'Delete From devcalendar'
      '  where'
      '   Jijie= :OLD_Jijie and'
      '   Devtype = :OLD_Devtype  and'
      '   ISD =:OLD_ISD')
    Left = 49
    Top = 209
  end
  object hai: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from ypzlhai where 1=2')
    UpdateObject = Updhai
    Left = 308
    Top = 168
    object haiYPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.ypzlhai.YPDH'
      FixedChar = True
      Size = 15
    end
    object haiqty: TFloatField
      FieldName = 'qty'
      Origin = 'DB.ypzlhai.qty'
    end
    object haimonth: TStringField
      FieldName = 'month'
      Origin = 'DB.ypzlhai.month'
      FixedChar = True
      Size = 2
    end
    object haiyear: TStringField
      FieldName = 'year'
      Origin = 'DB.ypzlhai.year'
      FixedChar = True
      Size = 4
    end
  end
  object Updhai: TUpdateSQL
    InsertSQL.Strings = (
      ''
      'insert into ypzlhai'
      '  (ypdh,qty,month,year)'
      'values'
      '  (:ypdh,:qty,:month,:year)')
    Left = 308
    Top = 200
  end
  object DataSource2: TDataSource
    DataSet = hai
    Left = 308
    Top = 248
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select hgbh,sum(ypzls.clsl*clhg.rateC) as Qty from ('
      
        'SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.' +
        'qty as clsl'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      ' WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39
      'union all'
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL'
      ',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39'  and CLZHZL.' +
        'SYL>0'
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.Relation+'#39'1'#39' as Relation ,clzhzl.CLD' +
        'H1 as CLBH'
      ',clzhzl2.CLSL*clzhzl.syl*qty as CLSL'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      ' from ('
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39'  and CLZHZL.' +
        'SYL>0   and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      ')  YPZLS'
      'left join clhg on clhg.clbh=YPZLS.clbh'
      'group by hgbh')
    Left = 388
    Top = 169
    object Query1hgbh: TStringField
      FieldName = 'hgbh'
      FixedChar = True
      Size = 40
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
  end
  object DataSource3: TDataSource
    DataSet = Query1
    Left = 388
    Top = 209
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource3
    SQL.Strings = (
      
        'select hgbh,ypzls.clbh,isnull(sum(ypzls.clsl*isnull(clhg.rateC,1' +
        ')),0) as Qty,rateC from ('
      
        'SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.' +
        'qty as clsl'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      ' WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' '
      'union all'
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL'
      ',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' and CLZHZL.S' +
        'YL>0'
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.Relation+'#39'1'#39' as Relation ,clzhzl.CLD' +
        'H1 as CLBH'
      ',clzhzl2.CLSL*clzhzl.syl*qty as CLSL'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      ' from ('
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' and CLZHZL.S' +
        'YL>0  and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      ')  YPZLS'
      'left join clhg on clhg.clbh=YPZLS.clbh'
      'where  hgbh='#39'FOAM'#39
      'group by hgbh,ypzls.clbh,rateC')
    Left = 598
    Top = 122
    object Query2hgbh: TStringField
      FieldName = 'hgbh'
      FixedChar = True
      Size = 40
    end
    object Query2clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query2Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query2rateC: TFloatField
      FieldName = 'rateC'
    end
  end
  object DataSource4: TDataSource
    DataSet = Query2
    Left = 598
    Top = 162
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource4
    SQL.Strings = (
      
        'select ypzls.YPDH,hgbh,ypzls.clbh,isnull(sum(ypzls.clsl*isnull(c' +
        'lhg.rateC,1)),0) as Qty,rateC from ('
      
        'SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.' +
        'qty as clsl'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh'
      ' WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' '
      'union all'
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL'
      ',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' and CLZHZL.S' +
        'YL>0'
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.Relation+'#39'1'#39' as Relation ,clzhzl.CLD' +
        'H1 as CLBH'
      ',clzhzl2.CLSL*clzhzl.syl*qty as CLSL'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      ' from ('
      
        'SELECT ypzls.YPDH  ,YPZLS.BWBH+'#39'-Child'#39' as Relation,clzhzl.CLDH1' +
        ' as CLBH'
      ' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty'
      ' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh'
      ',clzl.clzmlb'
      'FROM ypzlhai ypzlhai'
      'left join ypzls on ypzls.ypdh=ypzlhai.ypdh'
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      
        'WHERE ypzlhai.month ='#39'10'#39' and  ypzlhai.year ='#39'2017'#39' and CLZHZL.S' +
        'YL>0  and clzl.clzmlb='#39'Y'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh'
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      ')  YPZLS'
      'left join clhg on clhg.clbh=YPZLS.clbh'
      'where  hgbh='#39'FOAM'#39' and ypzls.clbh='#39'B010001557'#39
      'group by ypdh,hgbh,ypzls.clbh,rateC')
    Left = 606
    Top = 378
    object Query3YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query3hgbh: TStringField
      FieldName = 'hgbh'
      FixedChar = True
      Size = 40
    end
    object Query3clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query3Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query3rateC: TFloatField
      FieldName = 'rateC'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query3
    Left = 614
    Top = 418
  end
  object DS6: TDataSource
    DataSet = QGameplan
    Left = 470
    Top = 426
  end
  object QGameplan: TQuery
    AfterScroll = QGameplanAfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      'select *'
      'from gameplan'
      'where 1 = 0')
    UpdateObject = UPGameplan
    Left = 462
    Top = 386
    object QGameplanSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.GamePlan.Season'
      FixedChar = True
      Size = 4
    end
    object QGameplanStage: TStringField
      FieldName = 'Stage'
      Origin = 'DB.GamePlan.Stage'
      FixedChar = True
      Size = 15
    end
    object QGameplanGates: TStringField
      FieldName = 'Gates'
      Origin = 'DB.GamePlan.Gates'
      FixedChar = True
      Size = 50
    end
    object QGameplanCTS_TP_DEADLINE: TDateTimeField
      DisplayLabel = 
        'CTS TP Deadline (VN +1day) - TP received later than this date (V' +
        'N +1day)'
      FieldName = 'CTS_TP_DEADLINE'
      Origin = 'DB.GamePlan.CTS_TP_DEADLINE'
    end
    object QGameplanWearTestSamplePO: TDateTimeField
      DisplayLabel = 'Wear Test Sample PO'
      FieldName = 'WearTestSamplePO'
      Origin = 'DB.GamePlan.WearTestSamplePO'
    end
    object QGameplanPurchasingPOtosupplierdeadline: TDateTimeField
      DisplayLabel = 'Purchasing PO to supplier deadline'
      FieldName = 'PurchasingPOtosupplierdeadline'
      Origin = 'DB.GamePlan.PurchasingPOtosupplierdeadline'
    end
    object QGameplanfirst_2D_BP: TDateTimeField
      DisplayLabel = '1st 2D B/P revision for TN'
      FieldName = 'first_2D_BP'
      Origin = 'DB.GamePlan.first_2D_BP'
    end
    object QGameplanPurchasing_trackinglist: TDateTimeField
      DisplayLabel = 'Purchasing 1st material tracking list'
      FieldName = 'Purchasing_trackinglist'
      Origin = 'DB.GamePlan.Purchasing_trackinglist'
    end
    object QGameplanInitial_Spec: TDateTimeField
      DisplayLabel = 'Initial Spec to Costing'
      FieldName = 'Initial_Spec'
      Origin = 'DB.GamePlan.Initial_Spec'
    end
    object QGameplanNew_Material_trackinglist: TDateTimeField
      DisplayLabel = 'New material/ Material tracking list deadline for lab'
      FieldName = 'New_Material_trackinglist'
      Origin = 'DB.GamePlan.New_Material_trackinglist'
    end
    object QGameplanNew_material_ETA: TDateTimeField
      DisplayLabel = 'New material for pullover ETA'
      FieldName = 'New_material_ETA'
      Origin = 'DB.GamePlan.New_material_ETA'
    end
    object QGameplanNew_upper_pattern_confirmed: TDateTimeField
      DisplayLabel = 'New upper pattern confirmed for final 2D B/P'
      FieldName = 'New_upper_pattern_confirmed'
      Origin = 'DB.GamePlan.New_upper_pattern_confirmed'
    end
    object QGameplanInitinal_Last_upper_send: TDateTimeField
      DisplayLabel = 'Initinal Last upper send for 3D creation(Finail Construction)'
      FieldName = 'Initinal_Last_upper_send'
      Origin = 'DB.GamePlan.Initinal_Last_upper_send'
    end
    object QGameplanSecond_2D_Revision: TDateTimeField
      DisplayLabel = '2nd 2D Revision to HQ'
      FieldName = 'Second_2D_Revision'
      Origin = 'DB.GamePlan.Second_2D_Revision'
    end
    object QGameplanTooling_2D_confirm: TDateTimeField
      DisplayLabel = 'Tooling 2D confirm deadline'
      FieldName = 'Tooling_2D_confirm'
      Origin = 'DB.GamePlan.Tooling_2D_confirm'
    end
    object QGameplanfirst_3D_send: TDateTimeField
      DisplayLabel = '1st 3D send to HQ'
      FieldName = 'first_3D_send'
      Origin = 'DB.GamePlan.first_3D_send'
    end
    object QGameplanfirst_3D_Revision: TDateTimeField
      DisplayLabel = '1st 3D Revision'
      FieldName = 'first_3D_Revision'
      Origin = 'DB.GamePlan.first_3D_Revision'
    end
    object QGameplanSecond_3D_Revision: TDateTimeField
      DisplayLabel = '2nd 3D Revision'
      FieldName = 'Second_3D_Revision'
      Origin = 'DB.GamePlan.Second_3D_Revision'
    end
    object QGameplanTooling_3D_confirm: TDateTimeField
      DisplayLabel = 'Tooling 3D confirm deadline'
      FieldName = 'Tooling_3D_confirm'
      Origin = 'DB.GamePlan.Tooling_3D_confirm'
    end
    object QGameplanCFM_to_open_tooling: TDateTimeField
      DisplayLabel = 'CFM to open tooling deadline'
      FieldName = 'CFM_to_open_tooling'
      Origin = 'DB.GamePlan.CFM_to_open_tooling'
    end
    object QGameplanTooling_ready: TDateTimeField
      DisplayLabel = 'Tooling ready'
      FieldName = 'Tooling_ready'
      Origin = 'DB.GamePlan.Tooling_ready'
    end
    object QGameplanSampling_tooling_making: TDateTimeField
      DisplayLabel = 'TN-Sampling tooling making days'
      FieldName = 'Sampling_tooling_making'
      Origin = 'DB.GamePlan.Sampling_tooling_making'
    end
    object QGameplanMeeting_with_Production: TDateTimeField
      DisplayLabel = 'Meeting with Production for R3 SR making assignment'
      FieldName = 'Meeting_with_Production'
      Origin = 'DB.GamePlan.Meeting_with_Production'
    end
    object QGameplanMaterial_ETA: TDateTimeField
      DisplayLabel = 'Material ETA'
      FieldName = 'Material_ETA'
      Origin = 'DB.GamePlan.Material_ETA'
    end
    object QGameplanPullover_confirm_deadline: TDateTimeField
      DisplayLabel = 'Pullover confirm deadline (NG/NM)'
      FieldName = 'Pullover_confirm_deadline'
      Origin = 'DB.GamePlan.Pullover_confirm_deadline'
    end
    object QGameplanTB_to_Sample_Room: TDateTimeField
      DisplayLabel = 'Sample TB to Sample Room Deadline (All)'
      FieldName = 'TB_to_Sample_Room'
      Origin = 'DB.GamePlan.TB_to_Sample_Room'
    end
    object QGameplanFinal_Spec_to_Costing: TDateTimeField
      DisplayLabel = 'Final Spec to Costing (NM/NC/NG)'
      FieldName = 'Final_Spec_to_Costing'
      Origin = 'DB.GamePlan.Final_Spec_to_Costing'
    end
    object QGameplanFinal_Spec_to_Costing1: TDateTimeField
      DisplayLabel = 'Final Spec to Costing (TN/NU/NM+)'
      FieldName = 'Final_Spec_to_Costing1'
      Origin = 'DB.GamePlan.Final_Spec_to_Costing1'
    end
    object QGameplanSample_starting: TDateTimeField
      DisplayLabel = 'Sample starting inspection day'
      FieldName = 'Sample_starting'
      Origin = 'DB.GamePlan.Sample_starting'
    end
    object QGameplanSample_finished: TDateTimeField
      DisplayLabel = 'Sample finished deadline'
      FieldName = 'Sample_finished'
      Origin = 'DB.GamePlan.Sample_finished'
    end
    object QGameplanCTS_inspection: TDateTimeField
      DisplayLabel = 'CTS inspection deadline'
      FieldName = 'CTS_inspection'
      Origin = 'DB.GamePlan.CTS_inspection'
    end
    object QGameplanSample_Packing: TDateTimeField
      DisplayLabel = 'Sample Packing deadline'
      FieldName = 'Sample_Packing'
      Origin = 'DB.GamePlan.Sample_Packing'
    end
    object QGameplanSample_XF: TDateTimeField
      DisplayLabel = 'Sample X/F day'
      FieldName = 'Sample_XF'
      Origin = 'DB.GamePlan.Sample_XF'
    end
    object QGameplanInternal_Sample: TDateTimeField
      DisplayLabel = 'Internal Sample review meeting'
      FieldName = 'Internal_Sample'
      Origin = 'DB.GamePlan.Internal_Sample'
    end
    object QGameplanSample_review: TDateTimeField
      DisplayLabel = 
        'Sample review meeting (HQ Review date).(Triad: R1/R2 Sample Tear' +
        ' Down (HQ Costing & HQ Development))'
      FieldName = 'Sample_review'
      Origin = 'DB.GamePlan.Sample_review'
    end
    object QGameplanPRODUCT_REVIEW: TDateTimeField
      DisplayLabel = 'PRODUCT REVIEW & ASSORTMENT FINALIZATION'
      FieldName = 'PRODUCT_REVIEW'
      Origin = 'DB.GamePlan.PRODUCT_REVIEW'
    end
    object QGameplanGlobal_Costing: TDateTimeField
      DisplayLabel = 
        'Global Costing & HQ Development provide feedback on cost suggest' +
        'ions to CTS'
      FieldName = 'Global_Costing'
      Origin = 'DB.GamePlan.Global_Costing'
    end
    object QGameplanInternal_TDM: TDateTimeField
      DisplayLabel = 'Internal TDM'
      FieldName = 'Internal_TDM'
      Origin = 'DB.GamePlan.Internal_TDM'
    end
    object QGameplanTDM: TDateTimeField
      DisplayLabel = 'TDM (HQ TDM Review date)'
      FieldName = 'TDM'
      Origin = 'DB.GamePlan.TDM'
    end
    object QGameplanWear_Test: TDateTimeField
      DisplayLabel = 'Wear Test X/F day'
      FieldName = 'Wear_Test'
      Origin = 'DB.GamePlan.Wear_Test'
    end
    object QGameplanKey_features: TDateTimeField
      DisplayLabel = 'Key features deadline to CTS'
      FieldName = 'Key_features'
      Origin = 'DB.GamePlan.Key_features'
    end
    object QGameplanPTRSS_deadline: TDateTimeField
      DisplayLabel = 'PTRSS deadline to CTS'
      FieldName = 'PTRSS_deadline'
      Origin = 'DB.GamePlan.PTRSS_deadline'
    end
    object QGameplanPC_deadline: TDateTimeField
      DisplayLabel = 'PC deadline of 1st buy'
      FieldName = 'PC_deadline'
      Origin = 'DB.GamePlan.PC_deadline'
    end
    object QGameplanRFC_of_first_buy: TDateTimeField
      DisplayLabel = 'RFC of 1st buy'
      FieldName = 'RFC_of_first_buy'
      Origin = 'DB.GamePlan.RFC_of_first_buy'
    end
    object QGameplanRFC_of_2nd_buy: TDateTimeField
      FieldName = 'RFC_of_2nd_buy'
      Origin = 'DB.GamePlan.RFC_of_2nd_buy'
    end
    object QGameplanRFC_of_3rd_buy: TDateTimeField
      FieldName = 'RFC_of_3rd_buy'
      Origin = 'DB.GamePlan.RFC_of_3rd_buy'
    end
    object QGameplanCFM_transfer: TDateTimeField
      DisplayLabel = 'CFM transfer to mass production deadline'
      FieldName = 'CFM_transfer'
      Origin = 'DB.GamePlan.CFM_transfer'
    end
    object QGameplanUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.GamePlan.UserID'
      FixedChar = True
      Size = 15
    end
    object QGameplanUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.GamePlan.UserDate'
    end
    object QGameplanYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.GamePlan.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UPGameplan: TUpdateSQL
    ModifySQL.Strings = (
      'update GamePlan'
      'set'
      '    CTS_TP_DEADLINE=:CTS_TP_DEADLINE,'
      '    WearTestSamplePO = :WearTestSamplePO,'
      
        '    PurchasingPOtosupplierdeadline = :PurchasingPOtosupplierdead' +
        'line ,'
      '    first_2D_BP = :first_2D_BP ,'
      '    Purchasing_trackinglist = :Purchasing_trackinglist ,'
      '    Initial_Spec = :Initial_Spec ,'
      '    New_Material_trackinglist  = :New_Material_trackinglist ,'
      '    New_material_ETA = :New_material_ETA ,'
      
        '    New_upper_pattern_confirmed  = :New_upper_pattern_confirmed ' +
        ','
      '    Initinal_Last_upper_send  = :Initinal_Last_upper_send ,'
      '    Second_2D_Revision  = :Second_2D_Revision ,'
      '    Tooling_2D_confirm  = :Tooling_2D_confirm ,'
      '    first_3D_send  = :first_3D_send ,'
      '    first_3D_Revision  = :first_3D_Revision ,'
      '    Second_3D_Revision  = :Second_3D_Revision ,'
      '    Tooling_3D_confirm  = :Tooling_3D_confirm ,'
      '    CFM_to_open_tooling  = :CFM_to_open_tooling ,'
      '    Tooling_ready  = :Tooling_ready ,'
      '    Sampling_tooling_making  = :Sampling_tooling_making ,'
      '    Meeting_with_Production  = :Meeting_with_Production ,'
      '    Material_ETA  = :Material_ETA ,'
      '    Pullover_confirm_deadline  = :Pullover_confirm_deadline ,'
      '    TB_to_Sample_Room  = :TB_to_Sample_Room ,'
      '    Final_Spec_to_Costing  = :Final_Spec_to_Costing ,'
      '    Final_Spec_to_Costing1  = :Final_Spec_to_Costing1 ,'
      '    Sample_starting  = :Sample_starting ,'
      '    Sample_finished  = :Sample_finished ,'
      '    CTS_inspection  = :CTS_inspection ,'
      '    Sample_Packing  = :Sample_Packing ,'
      '    Sample_XF  = :Sample_XF ,'
      '    Internal_Sample  = :Internal_Sample ,'
      '    Sample_review  = :Sample_review ,'
      '    PRODUCT_REVIEW  = :PRODUCT_REVIEW ,'
      '    Global_Costing  = :Global_Costing ,'
      '    Internal_TDM  = :Internal_TDM ,'
      '    TDM  = :TDM ,'
      '    Wear_Test  = :Wear_Test ,'
      '    Key_features  = :Key_features ,'
      '    PTRSS_deadline  = :PTRSS_deadline ,'
      '    PC_deadline  = :PC_deadline ,'
      '    RFC_of_first_buy  = :RFC_of_first_buy ,'
      '    RFC_of_2nd_buy  = :RFC_of_2nd_buy ,'
      '    RFC_of_3rd_buy  = :RFC_of_3rd_buy ,'
      '    CFM_transfer  = :CFM_transfer'
      '  where'
      '   Season= :OLD_Season and'
      '   Stage = :OLD_Stage  and'
      '   Gates =:OLD_Gates')
    InsertSQL.Strings = (
      'insert into GamePlan'
      
        '  (Season,Stage,Gates,CTS_TP_DEADLINE,WearTestSamplePO,Purchasin' +
        'gPOtosupplierdeadline,first_2D_BP,Purchasing_trackinglist,Initia' +
        'l_Spec,New_Material_trackinglist,New_material_ETA,New_upper_patt' +
        'ern_confirmed'
      
        '  ,Initinal_Last_upper_send,Second_2D_Revision,Tooling_2D_confir' +
        'm,first_3D_send,first_3D_Revision,Second_3D_Revision,Tooling_3D_' +
        'confirm,CFM_to_open_tooling,Tooling_ready,Sampling_tooling_makin' +
        'g'
      
        '  ,Meeting_with_Production,Material_ETA,Pullover_confirm_deadlin' +
        'e,TB_to_Sample_Room,Final_Spec_to_Costing,Final_Spec_to_Costing1' +
        ',Sample_starting,Sample_finished,CTS_inspection,Sample_Packing'
      
        '  ,Sample_XF,Internal_Sample,Sample_review,PRODUCT_REVIEW,Global' +
        '_Costing,Internal_TDM,TDM,Wear_Test,Key_features,PTRSS_deadline,' +
        'PC_deadline,RFC_of_first_buy,RFC_of_2nd_buy,RFC_of_3rd_buy,CFM_t' +
        'ransfer,USERID,USERDATE,YN)'
      'values'
      
        '  (:Season,:Stage,:Gates,:CTS_TP_DEADLINE,:WearTestSamplePO,:Pur' +
        'chasingPOtosupplierdeadline,:first_2D_BP,:Purchasing_trackinglis' +
        't,:Initial_Spec,:New_Material_trackinglist,:New_material_ETA,:Ne' +
        'w_upper_pattern_confirmed'
      
        '  ,:Initinal_Last_upper_send,:Second_2D_Revision,:Tooling_2D_con' +
        'firm,:first_3D_send,:first_3D_Revision,:Second_3D_Revision,:Tool' +
        'ing_3D_confirm,:CFM_to_open_tooling,:Tooling_ready,:Sampling_too' +
        'ling_making'
      
        '  ,:Meeting_with_Production,:Material_ETA,:Pullover_confirm_dead' +
        'line,:TB_to_Sample_Room,:Final_Spec_to_Costing,:Final_Spec_to_Co' +
        'sting1,:Sample_starting,:Sample_finished,:CTS_inspection,:Sample' +
        '_Packing'
      
        '  ,:Sample_XF,:Internal_Sample,:Sample_review,:PRODUCT_REVIEW,:G' +
        'lobal_Costing,:Internal_TDM,:TDM,:Wear_Test,:Key_features,:PTRSS' +
        '_deadline,:PC_deadline,:RFC_of_first_buy,:RFC_of_2nd_buy,:RFC_of' +
        '_3rd_buy,:CFM_transfer,:USERID,:USERDATE,:YN)'
      '')
    DeleteSQL.Strings = (
      'Delete From GamePlan'
      'where'
      '  Season=:OLD_Season'
      '  and Stage =:OLD_Stage'
      '  and Gates = :OLD_Gates')
    Left = 412
    Top = 432
  end
end
