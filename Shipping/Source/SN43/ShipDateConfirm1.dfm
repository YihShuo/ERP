object ShipDateConfirm: TShipDateConfirm
  Left = 343
  Top = 223
  Width = 1710
  Height = 746
  Caption = 'ShipDateConfirm'
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
  object Invoice: TPageControl
    Left = 0
    Top = 0
    Width = 1694
    Height = 707
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 0
    OnChange = InvoiceChange
    object TabSheet1: TTabSheet
      Caption = 'ShipDateConfirm'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1686
        Height = 679
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 104
          Width = 1684
          Height = 360
          Align = alTop
          TabOrder = 0
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1682
            Height = 358
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
            UseMultiTitle = True
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Testno'
                Footer.FieldName = 'Testno'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Testno|'#36890#22577#34399#30908
                Width = 83
              end
              item
                EditButtons = <>
                FieldName = 'SampleOrder'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SampleOrder|'#27171#21697#21934#34399
              end
              item
                EditButtons = <>
                FieldName = 'fd'
                Footers = <>
                Title.Caption = 'Developer|'#38283#30332#21729
                Width = 111
              end
              item
                EditButtons = <>
                FieldName = 'SR'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'SKU'
                Footers = <>
                Width = 142
              end
              item
                EditButtons = <>
                FieldName = 'siz'
                Footers = <>
                Title.Caption = 'Size|'#23610#23544
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Season|'#23395#31680
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Stage|'#38542#27573
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                Title.Caption = 'Complete|'#20837#24235#26085
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'ShipDate_original'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'DevelopTeam|ShipDate|'#38928#35336#20986#36008#26085
                Width = 89
              end
              item
                EditButtons = <>
                FieldName = 'Total_Qty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'Total_Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'DevelopTeam|TB Qty|'#36890#22577#25976#37327
                Width = 68
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'SPQty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'SPQty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ShippingTeamQty|Set up|'#24050#35373#23450
                Width = 81
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'cancelqty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'cancelqty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ShippingTeamQty|Cancel|'#21462#28040
                Width = 72
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'beforemonthqty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'beforemonthqty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ShippingTeamQty|Already|'#24050#20986#36008
                Width = 89
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'qty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ShippingTeamQty|Month'
                Width = 136
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'aftermonthqty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'aftermonthqty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'ShippingTeamQty|Wait|'#26410#20986#36008
              end>
          end
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1684
          Height = 103
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label4: TLabel
            Left = 916
            Top = 10
            Width = 50
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Year:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label6: TLabel
            Left = 1042
            Top = 10
            Width = 50
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Month:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label12: TLabel
            Left = 279
            Top = 74
            Width = 8
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 1174
            Top = 10
            Width = 50
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Year:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label13: TLabel
            Left = 1285
            Top = 10
            Width = 70
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Month:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label1: TLabel
            Left = 363
            Top = 11
            Width = 70
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 363
            Top = 37
            Width = 70
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 531
            Top = 11
            Width = 90
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SampleNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 551
            Top = 39
            Width = 70
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 392
            Top = 73
            Width = 74
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'InvoiceNo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 948
            Top = 75
            Width = 4
            Height = 16
            Caption = '-'
          end
          object Button1: TButton
            Left = 780
            Top = 8
            Width = 57
            Height = 49
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Visible = False
            OnClick = Button1Click
          end
          object CBX1: TComboBox
            Left = 975
            Top = 6
            Width = 65
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 1
            Text = '2007'
            Visible = False
            Items.Strings = (
              '2006'
              '2007'
              '2008'
              '2009'
              '2010'
              '2011'
              '2012'
              '2013'
              '2014'
              '2015'
              '2016'
              '2017'
              '2018'
              '2019'
              '2020')
          end
          object CBX2: TComboBox
            Left = 1100
            Top = 6
            Width = 49
            Height = 28
            CharCase = ecUpperCase
            DropDownCount = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 2
            Text = '01'
            Visible = False
            Items.Strings = (
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
          end
          object CBX4: TComboBox
            Left = 1231
            Top = 6
            Width = 65
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 3
            Text = '2007'
            Visible = False
            Items.Strings = (
              '2006'
              '2007'
              '2008'
              '2009'
              '2010'
              '2011'
              '2012'
              '2013'
              '2014'
              '2015'
              '2016'
              '2017'
              '2018'
              '2019'
              '2020')
          end
          object CBX5: TComboBox
            Left = 1360
            Top = 6
            Width = 49
            Height = 28
            CharCase = ecUpperCase
            DropDownCount = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 4
            Text = '01'
            Visible = False
            Items.Strings = (
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
          end
          object ComboBox1: TComboBox
            Left = 35
            Top = 67
            Width = 145
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 1
            ParentFont = False
            TabOrder = 5
            Text = 'ShippingTeam'
            Items.Strings = (
              'Developer'
              'ShippingTeam')
          end
          object mmodify: TBitBtn
            Left = 104
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
            TabOrder = 6
            OnClick = mmodifyClick
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
          object msave: TBitBtn
            Left = 152
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
            TabOrder = 7
            OnClick = msaveClick
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
          object mcancel: TBitBtn
            Left = 200
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
            TabOrder = 8
            OnClick = mcancelClick
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
          object Mquery: TBitBtn
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
            TabOrder = 9
            OnClick = MqueryClick
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
          object Minsert: TBitBtn
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
            TabOrder = 10
            OnClick = MinsertClick
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
          object Edit1: TEdit
            Left = 436
            Top = 8
            Width = 73
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object Edit2: TEdit
            Left = 436
            Top = 36
            Width = 73
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object mdelete: TBitBtn
            Left = 249
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
            TabOrder = 13
            OnClick = mdeleteClick
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
          object Button2: TButton
            Left = 844
            Top = 8
            Width = 57
            Height = 49
            Caption = 'EXCEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnClick = Button2Click
          end
          object Edit3: TEdit
            Left = 623
            Top = 8
            Width = 142
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object Edit4: TEdit
            Left = 623
            Top = 36
            Width = 142
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object CheckBox1: TCheckBox
            Left = 1200
            Top = 76
            Width = 97
            Height = 17
            Caption = 'ExcelCheck'
            TabOrder = 17
            Visible = False
          end
          object DTP1: TDateTimePicker
            Left = 183
            Top = 72
            Width = 97
            Height = 24
            Date = 44680.441026041670000000
            Format = 'yyyy/MM/dd'
            Time = 44680.441026041670000000
            TabOrder = 18
          end
          object DTP2: TDateTimePicker
            Left = 290
            Top = 72
            Width = 97
            Height = 24
            Date = 44680.441059456020000000
            Format = 'yyyy/MM/dd'
            Time = 44680.441059456020000000
            TabOrder = 19
          end
          object Ed_Invoice: TEdit
            Left = 471
            Top = 69
            Width = 142
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
          end
          object CheckBox2: TCheckBox
            Left = 755
            Top = 76
            Width = 90
            Height = 17
            Caption = 'Complete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
          end
          object DTP9: TDateTimePicker
            Left = 850
            Top = 70
            Width = 96
            Height = 24
            Date = 44680.431051550920000000
            Format = 'yyyy/MM/dd'
            Time = 44680.431051550920000000
            TabOrder = 22
          end
          object DTP10: TDateTimePicker
            Left = 956
            Top = 70
            Width = 103
            Height = 24
            Date = 44680.431356041660000000
            Format = 'yyyy/MM/dd'
            Time = 44680.431356041660000000
            TabOrder = 23
          end
          object CheckBox3: TCheckBox
            Left = 12
            Top = 78
            Width = 17
            Height = 17
            Checked = True
            State = cbChecked
            TabOrder = 24
          end
          object CheckBox4: TCheckBox
            Left = 627
            Top = 76
            Width = 118
            Height = 17
            Caption = 'No Complete'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
          end
          object Button10: TButton
            Left = 312
            Top = 10
            Width = 57
            Height = 47
            Caption = 'Import'
            Enabled = False
            TabOrder = 26
            OnClick = Button10Click
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 464
          Width = 1684
          Height = 214
          Align = alClient
          Caption = 'Panel7'
          TabOrder = 2
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 1
            Width = 1682
            Height = 212
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
            OnColExit = DBGridEh3ColExit
            OnGetCellParams = DBGridEh3GetCellParams
            Columns = <
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'TestNo'
                Footer.ValueType = fvtCount
                Footers = <>
              end
              item
                ButtonStyle = cbsEllipsis
                Color = clYellow
                EditButtons = <>
                FieldName = 'country'
                Footers = <>
                Title.Caption = 'Country|NO'
                Width = 67
                OnEditButtonClick = DBGridEh3Columns1EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'ywsm'
                Footers = <>
                Title.Caption = 'Country|Name'
                Width = 220
              end
              item
                EditButtons = <>
                FieldName = 'ShipDate_final'
                Footers = <>
                Title.Caption = 'ShipDate(Shipping)'
              end
              item
                DisplayFormat = '0.#'
                EditButtons = <>
                FieldName = 'Qty'
                Footer.DisplayFormat = '0.#'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'cancel'
                Footers = <>
                Title.Caption = 'Cancel'
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'InvoiceNo'
                Footers = <>
              end
              item
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'UnitPrice'
                Footers = <>
              end
              item
                DisplayFormat = '0.00'
                EditButtons = <>
                FieldName = 'Amount'
                Footer.ValueType = fvtSum
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'InvoiceDate'
                Footers = <>
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Memo'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1686
        Height = 679
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          '1.Shipping Team '#35373#23450#26368#24460#30906#35469#20986#36008#26085#23560#29992
          '2.Shipping Team Qty> Original Qty then color red'
          '  Shipping Team Qty< Original Qty then color green'
          
            '3.if use Develop to search then the result base on Develop N75 D' +
            'eveloper set up shipping date'
          
            '  if use ShippingTeam to search then the result base on shipping' +
            'Team set up shipping date'
          '4.Shipping Team TotalQty is mean all of Qty for Shipping set up.'
          '           but  MonthQty only by ShippingTeam search'#39's Month')
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CountryData'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1694
        Height = 687
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1692
          Height = 72
          Align = alTop
          TabOrder = 0
          object sQuery: TBitBtn
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
            OnClick = sQueryClick
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
          object sInsert: TBitBtn
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
            OnClick = sInsertClick
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
          object smodify: TBitBtn
            Left = 104
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
            OnClick = smodifyClick
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
          object sSave: TBitBtn
            Left = 152
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
            TabOrder = 3
            OnClick = sSaveClick
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
          object sCancel: TBitBtn
            Left = 200
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
            TabOrder = 4
            OnClick = sCancelClick
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
          object sDelete: TBitBtn
            Left = 248
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
            TabOrder = 5
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
        end
        object Panel6: TPanel
          Left = 1
          Top = 73
          Width = 1692
          Height = 613
          Align = alClient
          TabOrder = 1
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 1
            Width = 1690
            Height = 611
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
            Columns = <
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'YYBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'NO'
                Width = 105
              end
              item
                EditButtons = <>
                FieldName = 'YWSM'
                Footers = <>
                Title.Caption = 'English'
                Width = 154
              end
              item
                EditButtons = <>
                FieldName = 'ZWSM'
                Footers = <>
                Title.Caption = 'Chinese'
                Width = 154
              end
              item
                EditButtons = <>
                FieldName = 'VWSM'
                Footers = <>
                Title.Caption = 'Vietnamese'
                Width = 177
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'class'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Class'
                Width = 127
              end>
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Invoice/Packing'
      ImageIndex = 3
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1686
        Height = 679
        Align = alClient
        Caption = 'Panel8'
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1684
          Height = 64
          Align = alTop
          TabOrder = 0
          object Label3: TLabel
            Left = 8
            Top = 22
            Width = 50
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Year:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 134
            Top = 22
            Width = 50
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Month:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Button3: TButton
            Left = 248
            Top = 16
            Width = 49
            Height = 33
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 296
            Top = 16
            Width = 49
            Height = 33
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button4Click
          end
          object InvoiceYear: TComboBox
            Left = 67
            Top = 20
            Width = 65
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 2
            Text = '2007'
            Items.Strings = (
              '2006'
              '2007'
              '2008'
              '2009'
              '2010'
              '2011'
              '2012'
              '2013'
              '2014'
              '2015'
              '2016'
              '2017'
              '2018'
              '2019'
              '2020')
          end
          object InvoiceMonth: TComboBox
            Left = 192
            Top = 20
            Width = 49
            Height = 28
            CharCase = ecUpperCase
            DropDownCount = 12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 3
            Text = '01'
            Items.Strings = (
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
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 65
          Width = 1684
          Height = 613
          Align = alClient
          Caption = 'Panel10'
          TabOrder = 1
          object InvoiceGD: TDBGridEh
            Left = 1
            Top = 1
            Width = 1690
            Height = 619
            Align = alClient
            DataSource = InvoiceDS
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
                FieldName = 'Category'
                Footers = <>
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'Cut'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'MainMaterial'
                Footers = <>
                Width = 203
              end
              item
                EditButtons = <>
                FieldName = 'ColorwayName'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'GenderClass'
                Footers = <>
                Width = 108
              end
              item
                EditButtons = <>
                FieldName = 'ColorwayID'
                Footer.FieldName = 'ColorwayID'
                Footer.ValueType = fvtCount
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SKU'
                Footers = <>
              end
              item
                DisplayFormat = '0.##'
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'SampleSize'
                Footers = <>
                Width = 125
              end>
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'STOCK'
      ImageIndex = 4
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1686
        Height = 112
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label14: TLabel
          Left = 184
          Top = 10
          Width = 8
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 304
          Top = 8
          Width = 70
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 304
          Top = 37
          Width = 70
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 464
          Top = 8
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SampleNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 483
          Top = 37
          Width = 70
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 70
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button5: TButton
          Left = 664
          Top = 8
          Width = 57
          Height = 49
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button5Click
        end
        object Edit5: TEdit
          Left = 384
          Top = 8
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Edit6: TEdit
          Left = 384
          Top = 36
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button6: TButton
          Left = 720
          Top = 8
          Width = 57
          Height = 49
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button6Click
        end
        object Edit7: TEdit
          Left = 571
          Top = 8
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit8: TEdit
          Left = 571
          Top = 36
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DTP3: TDateTimePicker
          Left = 88
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441026041670000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441026041670000000
          TabOrder = 6
        end
        object DTP4: TDateTimePicker
          Left = 198
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441059456020000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441059456020000000
          TabOrder = 7
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 112
        Width = 1686
        Height = 360
        Align = alTop
        TabOrder = 1
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 1
          Width = 1684
          Height = 358
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
          UseMultiTitle = True
          OnDrawColumnCell = DBGridEh1DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Testno'
              Footer.FieldName = 'Testno'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Testno|'#36890#22577#34399#30908
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'SampleOrder'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'SampleOrder|'#27171#21697#21934#34399
            end
            item
              EditButtons = <>
              FieldName = 'fd'
              Footers = <>
              Title.Caption = 'Developer|'#38283#30332#21729
              Width = 111
            end
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'SKU'
              Footers = <>
              Width = 142
            end
            item
              EditButtons = <>
              FieldName = 'siz'
              Footers = <>
              Title.Caption = 'Size|'#23610#23544
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Season|'#23395#31680
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Stage|'#38542#27573
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'Complete'
              Footers = <>
              Title.Caption = 'Complete|'#20837#24235#26085
              Width = 81
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate_original'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'DevelopTeam|ShipDate|'#38928#35336#20986#36008#26085
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'Total_Qty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'Total_Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'DevelopTeam|TB Qty|'#36890#22577#25976#37327
              Width = 68
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'SPQty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'SPQty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'ShippingTeamQty|Set up|'#24050#35373#23450
              Width = 81
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'cancelqty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'cancelqty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'ShippingTeamQty|Cancel|'#21462#28040
              Width = 72
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'beforemonthqty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'beforemonthqty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'ShippingTeamQty|Already|'#24050#20986#36008
              Width = 89
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'qty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'ShippingTeamQty|Month'
              Width = 136
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'aftermonthqty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'aftermonthqty'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'ShippingTeamQty|Wait|'#26410#20986#36008
            end>
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 472
        Width = 1686
        Height = 207
        Align = alClient
        Caption = 'Panel7'
        TabOrder = 2
        object DBGridEh5: TDBGridEh
          Left = 1
          Top = 1
          Width = 1684
          Height = 204
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
          UseMultiTitle = True
          OnGetCellParams = DBGridEh3GetCellParams
          Columns = <
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
            end
            item
              ButtonStyle = cbsEllipsis
              Color = clYellow
              EditButtons = <>
              FieldName = 'country'
              Footers = <>
              Title.Caption = 'Country|NO'
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Caption = 'Country|Name'
              Width = 220
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate_final'
              Footers = <>
              Title.Caption = 'ShipDate(Shipping)'
            end
            item
              DisplayFormat = '0.#'
              EditButtons = <>
              FieldName = 'Qty'
              Footer.DisplayFormat = '0.#'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'cancel'
              Footers = <>
              Title.Caption = 'Cancel'
              Width = 80
            end>
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Exportconfirm'
      ImageIndex = 5
      object DBGridEh6: TDBGridEh
        Left = 0
        Top = 73
        Width = 1686
        Height = 606
        Align = alClient
        ColumnDefValues.Title.TitleButton = True
        DataSource = DataSource6
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnColExit = DBGridEh6ColExit
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnEditButtonClick = DBGridEh6EditButtonClick
        OnGetCellParams = DBGridEh6GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ExFtyDate'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample Order'
            Width = 126
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 45
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'UnitPrice'
            Footers = <>
            ReadOnly = True
            Width = 81
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'Amount'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 76
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'InvoiceNo'
            Footers = <>
            ReadOnly = True
            Width = 152
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'InvoiceDate'
            Footers = <>
            Width = 145
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'BookingNO'
            Footers = <>
            Width = 141
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CustomsNo'
            Footers = <>
            Width = 112
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'SailingDate'
            Footers = <>
            Width = 141
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'FCRNo_BillNo'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'KindLoading'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Company'
            Footers = <>
            ReadOnly = True
            Width = 221
          end
          item
            EditButtons = <>
            FieldName = 'TCPackingListSubmissionDate'
            Footers = <>
            ReadOnly = True
            Width = 237
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
          end
          item
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            ReadOnly = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            ReadOnly = True
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'IODate'
            Footers = <>
            ReadOnly = True
          end
          item
            EditButtons = <>
            FieldName = 'Complete'
            Footers = <>
          end>
      end
      object Panel14: TPanel
        Left = 0
        Top = 0
        Width = 1686
        Height = 73
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label16: TLabel
          Left = 576
          Top = 10
          Width = 8
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 384
          Top = 8
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ExFtyDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 368
          Top = 35
          Width = 105
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 688
          Top = 11
          Width = 105
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Invoice No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 704
          Top = 40
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BRAND'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn1: TBitBtn
          Left = 104
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
          TabOrder = 0
          OnClick = BitBtn1Click
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
        object BitBtn2: TBitBtn
          Left = 152
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
          OnClick = BitBtn2Click
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
          Left = 200
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
          TabOrder = 2
          OnClick = BitBtn3Click
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
        object BitBtn4: TBitBtn
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
          TabOrder = 3
          OnClick = BitBtn4Click
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
        object BitBtn5: TBitBtn
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
          Visible = False
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
        object BitBtn6: TBitBtn
          Left = 249
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
          TabOrder = 5
          OnClick = BitBtn6Click
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
        object Button8: TButton
          Left = 935
          Top = 16
          Width = 89
          Height = 41
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button8Click
        end
        object DTP5: TDateTimePicker
          Left = 480
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441026041670000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441026041670000000
          TabOrder = 7
        end
        object DTP6: TDateTimePicker
          Left = 590
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441059456020000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441059456020000000
          TabOrder = 8
        end
        object Edit9: TEdit
          Left = 480
          Top = 32
          Width = 121
          Height = 24
          TabOrder = 9
        end
        object Edit13: TEdit
          Left = 800
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 10
        end
        object ComboBox2: TComboBox
          Left = 800
          Top = 37
          Width = 81
          Height = 28
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 20
          ParentFont = False
          TabOrder = 11
          Items.Strings = (
            'VANS'
            'ALTRA'
            'The North Face'
            'Timberland')
        end
        object Button9: TButton
          Left = 1032
          Top = 16
          Width = 89
          Height = 41
          Caption = 'Import'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = Button9Click
        end
        object BitBtn13: TBitBtn
          Left = 297
          Top = 8
          Width = 72
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete All'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = BitBtn13Click
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
        object btnAnnex: TButton
          Left = 1131
          Top = 16
          Width = 89
          Height = 41
          Caption = 'Annex'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = btnAnnexClick
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Modify Exportconfirm Data and Export Excel'
      ImageIndex = 6
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1686
        Height = 73
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label21: TLabel
          Left = 520
          Top = 10
          Width = 8
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 328
          Top = 8
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ExFtyDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 312
          Top = 35
          Width = 105
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sample Order'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 632
          Top = 11
          Width = 105
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Invoice No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 632
          Top = 38
          Width = 105
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customs No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn7: TBitBtn
          Left = 104
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
          TabOrder = 0
          OnClick = BitBtn7Click
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
        object BitBtn8: TBitBtn
          Left = 152
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
          OnClick = BitBtn8Click
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
        object BitBtn9: TBitBtn
          Left = 200
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
          TabOrder = 2
          OnClick = BitBtn9Click
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
        object BitBtn10: TBitBtn
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
          TabOrder = 3
          OnClick = BitBtn10Click
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
          Visible = False
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
          Left = 249
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
          TabOrder = 5
          OnClick = BitBtn12Click
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
        object Button7: TButton
          Left = 880
          Top = 24
          Width = 113
          Height = 41
          Caption = 'EXCEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button7Click
        end
        object DTP7: TDateTimePicker
          Left = 424
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441026041670000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441026041670000000
          TabOrder = 7
        end
        object DTP8: TDateTimePicker
          Left = 534
          Top = 8
          Width = 97
          Height = 24
          Date = 44680.441059456020000000
          Format = 'yyyy/MM/dd'
          Time = 44680.441059456020000000
          TabOrder = 8
        end
        object Edit10: TEdit
          Left = 424
          Top = 32
          Width = 121
          Height = 24
          TabOrder = 9
        end
        object Edit12: TEdit
          Left = 744
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 10
        end
        object Edit11: TEdit
          Left = 744
          Top = 35
          Width = 121
          Height = 24
          TabOrder = 11
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 73
        Width = 1686
        Height = 606
        Align = alClient
        DataSource = DataSource7
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ExFtyDate'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample Order'
            Width = 126
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 45
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'UnitPrice'
            Footers = <>
            ReadOnly = True
            Width = 81
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'Amount'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 76
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'InvoiceNo'
            Footers = <>
            ReadOnly = True
            Width = 152
          end
          item
            Color = clWhite
            EditButtons = <>
            FieldName = 'InvoiceDate'
            Footers = <>
            Width = 145
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'BookingNO'
            Footers = <>
            Width = 141
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CustomsNo'
            Footers = <>
            Width = 112
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'SailingDate'
            Footers = <>
            Width = 141
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'FCRNo_BillNo'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'KindLoading'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Company'
            Footers = <>
            ReadOnly = True
            Width = 221
          end
          item
            EditButtons = <>
            FieldName = 'TCPackingListSubmissionDate'
            Footers = <>
            ReadOnly = True
            Width = 237
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
          end
          item
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            ReadOnly = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            ReadOnly = True
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'IODate'
            Footers = <>
            ReadOnly = True
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 129
    Top = 225
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select  shoetest.Testno,shoetest.Ypdh as SampleOrder,article as ' +
        'SR,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,'
      
        'Stage,Purpose,shoetest.shipdate as ShipDate_original,shoetest2.q' +
        'ty as Total_Qty,shoetestshipping.qty as spqty,shoetestshippingmo' +
        'nth.qty,warehousein,warehouseout,beforemonthqty,aftermonthqty,ca' +
        'ncelqty,Complete from shoetest'
      
        'left join (select testno,sum(qty) as qty from shoetestshipping g' +
        'roup by testno) shoetestshipping on shoetestshipping.testno=shoe' +
        'test.testno'
      
        'left join (select testno,shipdate_final from shoetestshipping) s' +
        'hoetestshippingdate on shoetestshippingdate.testno=shoetest.test' +
        'no'
      
        'left join (select testno,sum(qty) as warehousein from shoetestin' +
        ' group by testno) shoetestin on shoetestin.testno=shoetest.testn' +
        'o'
      
        'left join (select testno,sum(qty) as warehouseout from shoetesto' +
        'ut group by testno) shoetestout on shoetestout.testno=shoetest.t' +
        'estno'
      'left join (select testno,sum(qty) as qty   from shoetestshipping'
      
        ' where Convert(smalldatetime,convert(varchar,shipdate_final,111)' +
        ') between '
      '      '#39'2018/03/01'#39' and '#39'2018/03/31'#39
      
        'group by testno)shoetestshippingmonth on shoetestshippingmonth.t' +
        'estno=shoetest.testno'
      
        'left join (select testno,sum(qty) as cancelqty   from shoetestsh' +
        'ipping'
      'where cancel='#39'1'#39' '
      
        'group by testno)shippingcancel on shippingcancel.testno=shoetest' +
        '.testno'
      
        'left join (select testno,sum(qty) as beforemonthqty   from shoet' +
        'estshipping'
      
        'where Convert(smalldatetime,convert(varchar,shipdate_final,111))' +
        ' < '#39'2018/03/01'#39
      
        'group by testno)shippingbeforemonth on shippingbeforemonth.testn' +
        'o=shoetest.testno'
      
        'left join (select testno,sum(qty) as aftermonthqty   from shoete' +
        'stshipping'
      
        'where Convert(smalldatetime,convert(varchar,shipdate_final,111))' +
        ' > '#39'2018/03/31'#39
      
        'group by testno)shippingaftermonth on shippingaftermonth.testno=' +
        'shoetest.testno '
      
        'left join (select testno,sum(qty) as qty from shoetest2 group by' +
        ' testno )shoetest2 on  shoetest2.testno=shoetest.testno'
      
        'left join (select ypdh,ypzl.xiexing,ypzl.shehao,kfxxzl.article a' +
        's SKU from ypzl left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing ' +
        'and kfxxzl.shehao=ypzl.shehao)kfxxzl on kfxxzl.ypdh=shoetest.ypd' +
        'h'
      'where left(shoetest.Ypdh,4)='#39'LAIV'#39' '
      
        ' and Convert(smalldatetime,convert(varchar,shipdate,111)) betwee' +
        'n '
      '      '#39'2018/03/01'#39' and '#39'2018/03/31'#39
      
        'group by shoetest.Testno,shoetest.Ypdh,article,kfxxzl.SKU,shoete' +
        'st.siz,Season,shoetest.fd,beforemonthqty,aftermonthqty,'
      
        'Stage,Purpose,shoetest.shipdate,shoetest2.qty,shoetestshippingmo' +
        'nth.qty,shoetestshipping.qty,warehousein,warehouseout,cancelqty,' +
        'Complete  '
      'order by shipdate desc')
    Left = 129
    Top = 265
    object Query1Testno: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object Query1SampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1Purpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object Query1ShipDate_original: TDateTimeField
      FieldName = 'ShipDate_original'
    end
    object Query1Total_Qty: TFloatField
      FieldName = 'Total_Qty'
    end
    object Query1siz: TStringField
      FieldName = 'siz'
      FixedChar = True
      Size = 6
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query1SPQty: TCurrencyField
      FieldName = 'SPQty'
    end
    object Query1qty: TCurrencyField
      FieldName = 'qty'
    end
    object Query1warehousein: TFloatField
      FieldName = 'warehousein'
    end
    object Query1warehouseout: TFloatField
      FieldName = 'warehouseout'
    end
    object Query1fd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object Query1beforemonthqty: TCurrencyField
      FieldName = 'beforemonthqty'
    end
    object Query1aftermonthqty: TCurrencyField
      FieldName = 'aftermonthqty'
    end
    object Query1cancelqty: TCurrencyField
      FieldName = 'cancelqty'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update shoetestshipping Set'
      '    shipdate_final=:shipdate_final,'
      '    country=:country'
      'where'
      '  testno=:OLD_testno  and country=:OLD_country'
      '')
    Left = 129
    Top = 305
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 261
    Top = 217
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from shoetestdetail where class='#39'shipping'#39)
    UpdateObject = UpdateSQL2
    Left = 261
    Top = 265
    object Query2YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.shoetestdetail.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.shoetestdetail.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2ZWSM: TStringField
      FieldName = 'ZWSM'
      Origin = 'DB.shoetestdetail.ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query2VWSM: TStringField
      FieldName = 'VWSM'
      Origin = 'DB.shoetestdetail.VWSM'
      FixedChar = True
      Size = 50
    end
    object Query2class: TStringField
      FieldName = 'class'
      Origin = 'DB.shoetestdetail.class'
      FixedChar = True
      Size = 104
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetestdetail'
      'set'
      '  ywsm= :ywsm,'
      '  zwsm = :zwsm,'
      '  vwsm = :vwsm'
      'where'
      '  yybh = :OLD_yybh'
      '')
    InsertSQL.Strings = (
      'insert into shoetestdetail'
      '  (YYBH,YWSM, ZWSM, VWSM, Class)'
      'values'
      '  (:YYBH,:YWSM,:ZWSM, :VWSM, :Class)'
      ''
      ''
      '')
    Left = 261
    Top = 313
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 301
    Top = 265
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 197
    Top = 569
  end
  object Query3: TQuery
    BeforePost = Query3BeforePost
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        '  select shoetestshipping.testno,shoetestshipping.country,shoete' +
        'stdetail.ywsm,shoetestshipping.qty,shoetestshipping.shipdate_fin' +
        'al,'#39#39' as yn,shoetestshipping.cancel,'
      
        '  shoetestshipping.InvoiceNo,shoetestshipping.UnitPrice,shoetest' +
        'shipping.Amount,shoetestshipping.InvoiceDate'
      '  from shoetestshipping'
      
        '  left join shoetestdetail on  shoetestdetail.yybh=shoetestshipp' +
        'ing.country'
      '  where testno=:testno'
      '  order by shoetestshipping.InvoiceNo'
      '')
    UpdateObject = UpdateSQL3
    Left = 200
    Top = 609
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Testno'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query3country: TStringField
      FieldName = 'country'
      Origin = 'DB.shoetestshipping.country'
      FixedChar = True
      Size = 4
    end
    object Query3ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
      Origin = 'DB.shoetestshipping.TestNo'
      FixedChar = True
      Size = 10
    end
    object Query3ShipDate_final: TDateTimeField
      FieldName = 'ShipDate_final'
      Origin = 'DB.shoetestshipping.ShipDate_final'
    end
    object Query3Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.shoetestshipping.Qty'
    end
    object Query3yn: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
    object Query3cancel: TBooleanField
      FieldName = 'cancel'
    end
    object Query3UnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object Query3Amount: TFloatField
      FieldName = 'Amount'
    end
    object Query3InvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object Query3InvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      FixedChar = True
      Size = 30
    end
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetestshipping'
      'set'
      '  shipdate_final= :shipdate_final,'
      '  country = :country,'
      '  qty = :qty,'
      '  cancel=:cancel,'
      '  InvoiceNo=:InvoiceNo,'
      '  UnitPrice=:UnitPrice,'
      '  Amount=:Amount,'
      '  InvoiceDate=:InvoiceDate'
      'where'
      '  testno = :OLD_testno'
      '  and country=:OLD_country'
      '  and InvoiceNo=:OLD_InvoiceNo'
      '')
    InsertSQL.Strings = (
      'insert into shoetestshipping'
      
        '  (testno,ShipDate_final, country, qty,cancel,InvoiceNo,UnitPric' +
        'e,Amount,InvoiceDate)'
      'values'
      
        '  (:testno,:ShipDate_final,:country, :qty,:cancel,:InvoiceNo,:Un' +
        'itPrice,:Amount,:InvoiceDate)')
    DeleteSQL.Strings = (
      ''
      'delete from shoetestshipping'
      'where'
      '  TestNo = :OLD_TestNo and'
      '  country = :OLD_country and'
      '  InvoiceNo = :OLD_InvoiceNo')
    Left = 245
    Top = 609
  end
  object InvoiceQry: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select xxzlkf.Category,xxzlkf.Cut,xxzlkf.MMD as MainMaterial,kfx' +
        'xzl.yssm ColorwayName,kfxxzl.gender as GenderClass,shoetest.arti' +
        'cle as ColorwayID,kfxxzl.article as SKU,shoetestshipping.Qty,sho' +
        'etest.siz as SampleSize,shoetestshipping.testno,shoetestshipping' +
        '.shipDate_final,shoetestshipping.country,shoetestdetail.ywsm fro' +
        'm shoetestshipping'
      
        'left join shoetestdetail on shoetestdetail.yybh=shoetestshipping' +
        '.country'
      'left join shoetest on shoetest.testno=shoetestshipping.testno'
      'left join ypzl on ypzl.ypdh=shoetest.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.sheha' +
        'o=ypzl.shehao'
      ''
      'where 1=2')
    Left = 373
    Top = 273
    object InvoiceQryCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 30
    end
    object InvoiceQryCut: TStringField
      FieldName = 'Cut'
      FixedChar = True
      Size = 8
    end
    object InvoiceQryMainMaterial: TStringField
      FieldName = 'MainMaterial'
      FixedChar = True
      Size = 200
    end
    object InvoiceQryColorwayName: TStringField
      FieldName = 'ColorwayName'
      FixedChar = True
      Size = 40
    end
    object InvoiceQryGenderClass: TStringField
      FieldName = 'GenderClass'
      FixedChar = True
      Size = 10
    end
    object InvoiceQryColorwayID: TStringField
      FieldName = 'ColorwayID'
      FixedChar = True
    end
    object InvoiceQrySKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object InvoiceQryQty: TCurrencyField
      FieldName = 'Qty'
      EditFormat = '#.#'
    end
    object InvoiceQrySampleSize: TStringField
      FieldName = 'SampleSize'
      FixedChar = True
      Size = 6
    end
  end
  object InvoiceDS: TDataSource
    DataSet = InvoiceQry
    Left = 373
    Top = 225
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 457
    Top = 233
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select  shoetest.Testno,shoetest.Ypdh as SampleOrder,article as ' +
        'SR,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,'
      
        'Stage,Purpose,shoetest.shipdate as ShipDate_original,shoetest2.q' +
        'ty as Total_Qty,shoetestshipping.qty as spqty,shoetestshippingmo' +
        'nth.qty,warehousein,warehouseout,beforemonthqty,aftermonthqty,ca' +
        'ncelqty,Complete from shoetest'
      
        'left join (select testno,sum(qty) as qty from shoetestshipping g' +
        'roup by testno) shoetestshipping on shoetestshipping.testno=shoe' +
        'test.testno'
      
        'left join (select testno,shipdate_final from shoetestshipping) s' +
        'hoetestshippingdate on shoetestshippingdate.testno=shoetest.test' +
        'no'
      
        'left join (select testno,sum(qty) as warehousein from shoetestin' +
        ' group by testno) shoetestin on shoetestin.testno=shoetest.testn' +
        'o'
      
        'left join (select testno,sum(qty) as warehouseout from shoetesto' +
        'ut group by testno) shoetestout on shoetestout.testno=shoetest.t' +
        'estno'
      'left join (select testno,sum(qty) as qty   from shoetestshipping'
      
        ' where Convert(smalldatetime,convert(varchar,shipdate_final,111)' +
        ') between '
      '      '#39'2018/03/01'#39' and '#39'2018/03/31'#39
      
        'group by testno)shoetestshippingmonth on shoetestshippingmonth.t' +
        'estno=shoetest.testno'
      
        'left join (select testno,sum(qty) as cancelqty   from shoetestsh' +
        'ipping'
      'where cancel='#39'1'#39' '
      
        'group by testno)shippingcancel on shippingcancel.testno=shoetest' +
        '.testno'
      
        'left join (select testno,sum(qty) as beforemonthqty   from shoet' +
        'estshipping'
      
        'where Convert(smalldatetime,convert(varchar,shipdate_final,111))' +
        ' < '#39'2018/03/01'#39
      
        'group by testno)shippingbeforemonth on shippingbeforemonth.testn' +
        'o=shoetest.testno'
      
        'left join (select testno,sum(qty) as aftermonthqty   from shoete' +
        'stshipping'
      
        'where Convert(smalldatetime,convert(varchar,shipdate_final,111))' +
        ' > '#39'2018/03/31'#39
      
        'group by testno)shippingaftermonth on shippingaftermonth.testno=' +
        'shoetest.testno '
      
        'left join (select testno,sum(qty) as qty from shoetest2 group by' +
        ' testno )shoetest2 on  shoetest2.testno=shoetest.testno'
      
        'left join (select ypdh,ypzl.xiexing,ypzl.shehao,kfxxzl.article a' +
        's SKU from ypzl left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing ' +
        'and kfxxzl.shehao=ypzl.shehao)kfxxzl on kfxxzl.ypdh=shoetest.ypd' +
        'h'
      'where left(shoetest.Ypdh,4)='#39'LAIV'#39' '
      
        ' and Convert(smalldatetime,convert(varchar,shipdate,111)) betwee' +
        'n '
      '      '#39'2018/03/01'#39' and '#39'2018/03/31'#39
      
        'group by shoetest.Testno,shoetest.Ypdh,article,kfxxzl.SKU,shoete' +
        'st.siz,Season,shoetest.fd,beforemonthqty,aftermonthqty,'
      
        'Stage,Purpose,shoetest.shipdate,shoetest2.qty,shoetestshippingmo' +
        'nth.qty,shoetestshipping.qty,warehousein,warehouseout,cancelqty,' +
        'Complete  '
      'order by shipdate desc')
    Left = 457
    Top = 273
    object StringField1: TStringField
      FieldName = 'Testno'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField4: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ShipDate_original'
    end
    object FloatField1: TFloatField
      FieldName = 'Total_Qty'
    end
    object StringField7: TStringField
      FieldName = 'siz'
      FixedChar = True
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'SPQty'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'qty'
    end
    object FloatField2: TFloatField
      FieldName = 'warehousein'
    end
    object FloatField3: TFloatField
      FieldName = 'warehouseout'
    end
    object StringField9: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'beforemonthqty'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'aftermonthqty'
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'cancelqty'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Complete'
    end
  end
  object DataSource5: TDataSource
    DataSet = Query5
    Left = 765
    Top = 585
  end
  object Query5: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource4
    SQL.Strings = (
      
        '  select shoetestshipping.testno,shoetestshipping.country,shoete' +
        'stdetail.ywsm,shoetestshipping.qty,shoetestshipping.shipdate_fin' +
        'al,'#39#39' as yn,shoetestshipping.cancel from shoetestshipping'
      
        '  left join shoetestdetail on  shoetestdetail.yybh=shoetestshipp' +
        'ing.country'
      '   where testno=:testno')
    Left = 768
    Top = 625
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Testno'
        ParamType = ptUnknown
        Size = 11
      end>
    object StringField10: TStringField
      FieldName = 'country'
      Origin = 'DB.shoetestshipping.country'
      FixedChar = True
      Size = 4
    end
    object StringField11: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'TestNo'
      Origin = 'DB.shoetestshipping.TestNo'
      FixedChar = True
      Size = 10
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ShipDate_final'
      Origin = 'DB.shoetestshipping.ShipDate_final'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.shoetestshipping.Qty'
    end
    object StringField13: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
    object BooleanField1: TBooleanField
      FieldName = 'cancel'
    end
  end
  object DataSource6: TDataSource
    DataSet = Query6
    Left = 529
    Top = 241
  end
  object Query6: TQuery
    CachedUpdates = True
    AfterOpen = Query6AfterOpen
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from DEVTOSIMIS   '
      
        '--select ShipDate_final as ExFtyDate,YPDH,shoetestshipping.Qty,0' +
        '.0 as UnitPrice,0.0 as Amount,'#39#39' as InvoiceNo,'#39'FLOURISH THRIVE D' +
        'EVELOPMENTS LIMITED TAIWAN BRANCH'#39' as Company, '
      
        '--CAST(GETDATE() AS smalldatetime) as InvoiceDate,CAST(GETDATE()' +
        ' AS smalldatetime) as TCPackingListSubmissionDate,'#39#39' as BookingN' +
        'O,Article as SR,'#39#39' as CustomsNo,CAST(GETDATE() AS smalldatetime)' +
        ' as SailingDate,'#39#39' as FCRNo_BillNo,'#39'036'#39' as CUSTID,'
      
        '--shoetestdetail.YWSM as Country,'#39#39' as KindLoading,'#39#39' as Forward' +
        'er,'#39#39' as IODate,null as QTY1,'#39#39' as USERID,CAST(GETDATE() AS smal' +
        'ldatetime) as USERDATE,'#39#39' as YN,shoetestshipping.TestNo'
      '--from shoetestshipping'
      
        '--left join shoetestdetail on  shoetestdetail.yybh=shoetestshipp' +
        'ing.country'
      
        '--left join shoetest on shoetest.TestNo = shoetestshipping.TestN' +
        'o'
      '--where ShipDate_final = '#39'2022/05/05'#39
      ''
      '')
    UpdateObject = UpdateSQL6
    Left = 529
    Top = 281
    object Query6ExFtyDate: TDateTimeField
      FieldName = 'ExFtyDate'
    end
    object Query6YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query6QTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0'
    end
    object Query6UnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object Query6Amount: TFloatField
      FieldName = 'Amount'
    end
    object Query6InvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      FixedChar = True
      Size = 30
    end
    object Query6InvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object Query6BookingNO: TStringField
      FieldName = 'BookingNO'
      FixedChar = True
    end
    object Query6CustomsNo: TStringField
      FieldName = 'CustomsNo'
      FixedChar = True
      Size = 15
    end
    object Query6SailingDate: TDateTimeField
      FieldName = 'SailingDate'
    end
    object Query6FCRNo_BillNo: TStringField
      FieldName = 'FCRNo_BillNo'
      FixedChar = True
    end
    object Query6KindLoading: TStringField
      FieldName = 'KindLoading'
      FixedChar = True
      Size = 10
    end
    object Query6Forwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
    end
    object Query6Company: TStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 100
    end
    object Query6TCPackingListSubmissionDate: TDateTimeField
      FieldName = 'TCPackingListSubmissionDate'
    end
    object Query6SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query6CUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object Query6Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query6IODate: TStringField
      FieldName = 'IODate'
      FixedChar = True
      Size = 10
    end
    object Query6Complete: TDateTimeField
      FieldName = 'Complete'
    end
    object Query6QTY1: TFloatField
      FieldName = 'QTY1'
    end
    object Query6UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object Query6UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query6YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query6TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
  end
  object UpdateSQL6: TUpdateSQL
    ModifySQL.Strings = (
      'Update shoetestshipping Set'
      '    shipdate_final=:shipdate_final,'
      '    country=:country'
      'where'
      '  testno=:OLD_testno  and country=:OLD_country'
      '')
    DeleteSQL.Strings = (
      'Delete from DEVTOSIMIS '
      ''
      '      where YPDH = :OLD_YPDH'
      '      and InvoiceNo = :OLD_InvoiceNo'
      '      and TestNo = :OLD_TestNo')
    Left = 529
    Top = 329
  end
  object DataSource7: TDataSource
    DataSet = Query7
    Left = 697
    Top = 233
  end
  object Query7: TQuery
    AfterOpen = Query6AfterOpen
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from DEVTOSIMIS   '
      
        '--select ShipDate_final as ExFtyDate,YPDH,shoetestshipping.Qty,0' +
        '.0 as UnitPrice,0.0 as Amount,'#39#39' as InvoiceNo,'#39'FLOURISH THRIVE D' +
        'EVELOPMENTS LIMITED TAIWAN BRANCH'#39' as Company, '
      
        '--CAST(GETDATE() AS smalldatetime) as InvoiceDate,CAST(GETDATE()' +
        ' AS smalldatetime) as TCPackingListSubmissionDate,'#39#39' as BookingN' +
        'O,Article as SR,'#39#39' as CustomsNo,CAST(GETDATE() AS smalldatetime)' +
        ' as SailingDate,'#39#39' as FCRNo_BillNo,'#39'036'#39' as CUSTID,'
      
        '--shoetestdetail.YWSM as Country,'#39#39' as KindLoading,'#39#39' as Forward' +
        'er,'#39#39' as IODate,null as QTY1,'#39#39' as USERID,CAST(GETDATE() AS smal' +
        'ldatetime) as USERDATE,'#39#39' as YN,shoetestshipping.TestNo'
      '--from shoetestshipping'
      
        '--left join shoetestdetail on  shoetestdetail.yybh=shoetestshipp' +
        'ing.country'
      
        '--left join shoetest on shoetest.TestNo = shoetestshipping.TestN' +
        'o'
      '--where ShipDate_final = '#39'2022/05/05'#39
      ''
      '')
    UpdateObject = UpdateSQL4
    Left = 697
    Top = 273
    object DateTimeField4: TDateTimeField
      FieldName = 'ExFtyDate'
    end
    object StringField14: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object FloatField4: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '0.0'
    end
    object StringField15: TStringField
      FieldName = 'InvoiceNo'
      FixedChar = True
    end
    object StringField16: TStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 100
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'TCPackingListSubmissionDate'
    end
    object StringField17: TStringField
      FieldName = 'BookingNO'
      FixedChar = True
    end
    object StringField18: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object StringField19: TStringField
      FieldName = 'CustomsNo'
      FixedChar = True
      Size = 15
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'SailingDate'
    end
    object StringField20: TStringField
      FieldName = 'FCRNo_BillNo'
      FixedChar = True
    end
    object StringField21: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object StringField22: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object StringField23: TStringField
      FieldName = 'KindLoading'
      FixedChar = True
      Size = 10
    end
    object StringField24: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
    end
    object StringField25: TStringField
      FieldName = 'IODate'
      FixedChar = True
      Size = 10
    end
    object FloatField5: TFloatField
      FieldName = 'QTY1'
    end
    object StringField26: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'UserDate'
    end
    object StringField27: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField28: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object FloatField6: TFloatField
      FieldName = 'UnitPrice'
    end
    object FloatField7: TFloatField
      FieldName = 'Amount'
    end
  end
  object UpdateSQL4: TUpdateSQL
    ModifySQL.Strings = (
      'Update DEVTOSIMIS set'
      '      BookingNO = :BookingNO,'
      '      CustomsNo = :CustomsNo,'
      '      SailingDate = :SailingDate,'
      '      FCRNo_BillNo = :FCRNo_BillNo,'
      '      KindLoading = :KindLoading,'
      '      Forwarder = :Forwarder'
      ''
      '      where YPDH = :OLD_YPDH'
      '      and InvoiceNo = :OLD_InvoiceNo'
      '      and TestNo = :OLD_TestNo'
      '')
    DeleteSQL.Strings = (
      'Delete from DEVTOSIMIS '
      ''
      '      where YPDH = :OLD_YPDH'
      '      and InvoiceNo = :OLD_InvoiceNo'
      '      and TestNo = :OLD_TestNo')
    Left = 697
    Top = 321
  end
  object OpenDialog: TOpenDialog
    Left = 588
    Top = 368
  end
  object qrytemp2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'update INVOICE_M'
      'set'
      'CFM_USER = :CFM_USER,'
      'CFM_TIME = :CFM_TIME,'
      'CFMED = :CFMED'
      'where'
      'INV_NO = :INV_NO '
      '')
    Left = 856
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CFM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFM_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CFMED'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object qrytemp1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'update INVOICE_M'
      'set'
      'CFM_USER = :CFM_USER,'
      'CFM_TIME = :CFM_TIME,'
      'CFMED = :CFMED'
      'where'
      'INV_NO = :INV_NO '
      '')
    Left = 824
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CFM_USER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CFM_TIME'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CFMED'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
      end>
  end
  object qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 888
    Top = 201
  end
end
