object StockShoeMonth: TStockShoeMonth
  Left = 200
  Top = 134
  Width = 1300
  Height = 613
  Caption = 'StockShoeMonth'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1292
    Height = 582
    ActivePage = TS2
    Align = alClient
    TabOrder = 0
    object TS1: TTabSheet
      Caption = 'Monthly'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label4: TLabel
          Left = 8
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Year:'
        end
        object Label6: TLabel
          Left = 128
          Top = 17
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Month:'
        end
        object Label1: TLabel
          Left = 231
          Top = 16
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DBBH:'
        end
        object Button2: TButton
          Left = 568
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 472
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button3Click
        end
        object CBX2: TComboBox
          Left = 56
          Top = 13
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          ItemHeight = 16
          ItemIndex = 16
          TabOrder = 2
          Text = '2022'
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
            '2020'
            '2021'
            '2022'
            '2023'
            '2024'
            '2025'
            '2026'
            '2027'
            '2028'
            '2029')
        end
        object CBX3: TComboBox
          Left = 176
          Top = 12
          Width = 49
          Height = 24
          CharCase = ecUpperCase
          DropDownCount = 12
          ItemHeight = 16
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
        object Edit3: TEdit
          Left = 304
          Top = 12
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button5: TButton
          Left = 672
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Monthly'
          TabOrder = 5
          OnClick = Button5Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 1284
        Height = 502
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
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
            FieldName = 'KCYEAR'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24180'|KCYEAR'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26376'|KCMONTH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|DDBH'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38617#25976'|Qty'
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            ReadOnly = True
            Title.Caption = #36234#30462#21934#20729'|VNPrice'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footer.FieldName = 'VNACC'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #32317#37329#38989'|VNACC'
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20633#35387'|Memo'
            Width = 240
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Stock'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 829
        Top = 65
        Width = 4
        Height = 486
        Align = alRight
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label3: TLabel
          Left = 6
          Top = 39
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DDBH:'
        end
        object Label14: TLabel
          Left = 29
          Top = 12
          Width = 47
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 199
          Top = 39
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YSBH:'
        end
        object Label5: TLabel
          Left = 199
          Top = 9
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Memo:'
        end
        object DDBHEdit: TEdit
          Left = 80
          Top = 36
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Button1: TButton
          Left = 702
          Top = 16
          Width = 89
          Height = 33
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DTP: TDateTimePicker
          Left = 80
          Top = 7
          Width = 113
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button4: TButton
          Left = 798
          Top = 16
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button4Click
        end
        object CheckBox1: TCheckBox
          Left = 400
          Top = 9
          Width = 57
          Height = 17
          Caption = 'Qty>0'
          TabOrder = 4
        end
        object checkRY_Memo: TCheckBox
          Left = 576
          Top = 7
          Width = 121
          Height = 17
          Caption = 'Show RY Memo'
          TabOrder = 5
          OnClick = checkRY_MemoClick
        end
        object CheckBox2: TCheckBox
          Left = 400
          Top = 35
          Width = 81
          Height = 17
          Caption = 'Qty is null'
          TabOrder = 6
        end
        object TRQtyCK: TCheckBox
          Left = 490
          Top = 35
          Width = 137
          Height = 17
          Caption = 'TRQty>0'
          TabOrder = 7
          OnClick = checkRY_MemoClick
        end
        object MemoEdit: TEdit
          Left = 272
          Top = 6
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 8
        end
        object MergeYSBHCK: TCheckBox
          Left = 579
          Top = 37
          Width = 97
          Height = 17
          Caption = 'Merge YSBH'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
        object CheckBox3: TCheckBox
          Left = 488
          Top = 9
          Width = 57
          Height = 17
          Caption = 'Qty<0'
          TabOrder = 10
        end
        object Button6: TButton
          Left = 896
          Top = 16
          Width = 75
          Height = 33
          Caption = 'ExcelTB'
          TabOrder = 11
          OnClick = Button6Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 65
        Width = 829
        Height = 486
        Align = alClient
        Color = clMenu
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 1
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
            FieldName = 'DDBH'
            Footer.FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#32232#34399'|DDBH'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'YSBH'
            Footers = <>
            Title.Caption = #21046#20196#32232#34399'|YSBH'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20489#24235#20301#32622'|CKBH'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #35330#21934#38617#25976'|Pairs'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #26399#21021#24235#23384#25976#37327'|LastRem'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20837#24235#25976#37327'|RKQty'
          end
          item
            EditButtons = <>
            FieldName = 'TRQty'
            Footer.FieldName = 'TRQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25286#21934#20986#24235'|TRQty'
          end
          item
            EditButtons = <>
            FieldName = 'XHQty'
            Footer.FieldName = 'XHQty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#36008#25976#37327'|XHQty'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = #30446#21069#25976#37327'|Qty'
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footer.FieldName = 'ShipDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38928#35336#20132#26399'|ShipDate'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SKU#|ARTICLE'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footer.FieldName = 'DDZT'
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934#29376#24907'|DDZT'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = #20633#35387'|Memo'
            Width = 181
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end>
      end
      object Panel3: TPanel
        Left = 833
        Top = 65
        Width = 451
        Height = 486
        Align = alRight
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 1
          Top = 289
          Width = 449
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 292
          Width = 449
          Height = 193
          Align = alClient
          DataSource = DS4
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          PopupMenu = PopupMenu3
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
              FieldName = 'DDBH'
              Footers = <>
              Title.Caption = #27597#35330#21934#32232#34399'|DDBH'
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = #38617#25976'|Qty'
            end>
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 449
          Height = 288
          Align = alTop
          Caption = 'Panel4'
          TabOrder = 1
          object pnTop: TPanel
            Left = 1
            Top = 1
            Width = 447
            Height = 65
            Align = alTop
            TabOrder = 0
            object BB1: TBitBtn
              Left = 14
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
              TabOrder = 0
              OnClick = BB1Click
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
            object BB2: TBitBtn
              Left = 62
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
              TabOrder = 1
              OnClick = BB2Click
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
            object BB3: TBitBtn
              Left = 159
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
              OnClick = BB3Click
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
            object BB4: TBitBtn
              Left = 207
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
              OnClick = BB4Click
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
            object BB5: TBitBtn
              Left = 255
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
              OnClick = BB5Click
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
            object btnDelAll: TBitBtn
              Left = 110
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Delete one Record'
              Caption = 'Del-All'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = btnDelAllClick
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
            object BB7: TBitBtn
              Left = 310
              Top = 8
              Width = 49
              Height = 49
              Hint = 'Insert one New Record'
              Caption = 'Paste'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = BB7Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF666666A5A5A5A0A0A0A0A0A0A3A3
                A37C7C7CE1E1E1FFFFFFFFFFFFFFFFFFA6A6A69D9D9D9D9D9D9D9D9D9B9B9BBD
                BDBDA3A3A3FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0CACACAFFFFFFFFFFFFD3D3D3
                696969D3D3D3CACACACACACAC9C9C9E1E1E1A3A3A36B6B6B6C6C6C6C6C6C6565
                65B9B9B9CFCFCFFFFFFFFFFFFFD1D1D19A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF9B9B9B9D9D9D9C9C9C9D9D9D999999C0C0C0CECECEFFFFFFFFFFFFD1D1D1
                969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9AFAFAFAF2F2F2F2F2F2F4F4
                F4D5D5D5CCCCCCFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF9E9E9E636363646464656565606060B9B9B9CFCFCFFFFFFFFFFFFFD1D1D1
                969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696FFFFFFFFFFFFFFFFFFFFFF
                FFC8C8C8C9C9C9FFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF969696FFFFFFFFFFFFFFFFFF6A6A6A3E3E3EFFFFFFFFFFFFFFFFFFD1D1D1
                969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B8B9696969696969999998080
                80FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFB1B1B1BEBEBEFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1
                969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFB9B9
                B9FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1969696FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFAFAFAFB9B9B9FFFFFFFFFFFFFFFFFFFFFFFFD1D1D1
                979797FFFFFF6363637070707171717171717070705E5E5EFFFFFFB1B1B1B9B9
                B9FFFFFFFFFFFFFFFFFFFFFFFFD0D0D0A7A7A7DDDDDD6969693939393F3F3F3F
                3F3F393939727272C0C0C0C3C3C3B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8
                2B2B2B505050434343000000000000000000000000424242434343373737D1D1
                D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36363621
                2121FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Layout = blGlyphTop
            end
          end
          object DBGridEh3: TDBGridEh
            Left = 1
            Top = 66
            Width = 447
            Height = 221
            Align = alClient
            DataSource = DS3
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
            PopupMenu = PopupMenu3
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDrawColumnCell = DBGridEh3DrawColumnCell
            Columns = <
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'DDBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #27597#35330#21934'|DDBH'
                Width = 91
              end
              item
                EditButtons = <>
                FieldName = 'DDBH1'
                Footer.FieldName = 'DDBH1'
                Footer.ValueType = fvtCount
                Footers = <>
                Title.Caption = #23376#35330#21934'|DDBH1'
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footer.FieldName = 'Qty'
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = #38617#25976'|Qty'
              end
              item
                EditButtons = <>
                FieldName = 'KCYEAR'
                Footers = <>
                Title.Caption = #24180'|YEAR'
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'KCMONTH'
                Footers = <>
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
                Title.Caption = #26376'|MONTH'
                Width = 39
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Title.Caption = #20351#29992#32773'|UserID'
                Width = 53
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26356#26032#26085#26399'|UserDate'
                Width = 80
              end>
          end
        end
      end
      object YSBHEdit: TEdit
        Left = 272
        Top = 35
        Width = 113
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
  end
  object Query2: TQuery
    AfterOpen = Query2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select YWDDM.DDBH,YWDDM.YSBH,YWDDM.CKBH,IsNull(YWDD.Qty,DDZL.Pai' +
        'rs) as Pairs,YWDDM.LastRem,YWDDM.RKQty,YWDDM.XHQty,YWDDM.TRQty,Y' +
        'WDDM.Qty,'
      '       DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo  '
      'from ('
      
        '  Select YWCP.DDBH,IsNull(YWDD.YSBH,YWCP.DDBH) as YSBH,Max(YWCP.' +
        'CKBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as R' +
        'KQty,'
      
        '         Sum(YWCPXH.Qty) as XHQty,SUM(YWCPMONTH_DDZLTR.Qty) as T' +
        'RQty,Case when SUM(YWCP.Qty) is not null and SUM(YWCPMONTH_DDZLT' +
        'R.Qty) is not null then SUM(YWCP.Qty)-SUM(YWCPMONTH_DDZLTR.Qty) ' +
        'else SUM(YWCP.Qty) end as Qty'
      '  from ('
      #9'Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from ('
      
        '    Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB' +
        ' '
      '    From YWCPMONTH   '
      '    where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9#9'and YWCPMONTH.KCMONTH='#39'10'#39' '
      '    Union all '#9#9
      '    select null as CKBH,DDBH1,null as Qty,'#39'1'#39' as SB '
      '    from YWCPMONTH_DDZLTR'
      '    where YWCPMONTH_DDZLTR.KCYEAR='#39'2022'#39'  '
      #9'  and YWCPMONTH_DDZLTR.KCMONTH='#39'10'#39'   '
      #9'  and YWCPMONTH_DDZLTR.DDBH1 not in ('
      #9'       select DDBH from YWCPMONTH'
      '           where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9'       and YWCPMONTH.KCMONTH='#39'10'#39'  '#9
      #9#9')'#9
      #9'Group by DDBH1'
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH'
      #9'union all'
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,-1*Sum( Case when SB='#39'3' +
        #39' then YWCP.Qty else 0 end) as Qty,'#39'3'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH  '
      #9') YWCPMONTH'
      #9'Group by DDBH  ) YWCP  '
      '  Left join  ('
      
        '    Select YWCPMONTH.CKBH,YWCPMONTH.DDBH,YWCPMONTH.Qty,'#39'1'#39' as SB' +
        ' '
      #9'From YWCPMONTH   '
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      
        #9#9' and YWCPMONTH.KCMONTH='#39'10'#39'  ) YWCPMonth on YWCP.DDBH=YWCPMont' +
        'h.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum(YWCP.Qty) as Qty,'#39'2' +
        #39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) b' +
        'etween '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39' '
      #9'Group by YWCP.DDBH ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH'
      '  Left join  ('
      
        #9'Select Max(YWCP.KCBH) as CKBH,YWCP.DDBH,Sum( Case when SB='#39'3'#39' t' +
        'hen YWCP.Qty else 0 end) as Qty,'#39'5'#39' as SB'
      #9'from YWCP'
      
        #9'where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) ' +
        'between '#39'2022/11/01'#39' and '#39'2022/11/02'#39' and IsNull(SB,'#39#39')<>'#39#39
      #9'Group by YWCP.DDBH ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH'
      '  Left join ('
      
        '    Select null as CKBH,YWCPMONTH_DDZLTR.DDBH,Sum(YWCPMONTH_DDZL' +
        'TR.Qty) as Qty,'#39'6'#39' as SB '
      #9'From YWCPMONTH_DDZLTR   '
      #9'where YWCPMONTH_DDZLTR.KCYEAR='#39'2022'#39'  '
      #9#9' and YWCPMONTH_DDZLTR.KCMONTH='#39'10'#39
      #9'Group by YWCPMONTH_DDZLTR.DDBH  '
      '  ) YWCPMONTH_DDZLTR on YWCP.DDBH=YWCPMONTH_DDZLTR.DDBH'
      '  Left join YWDD on YWDD.DDBH=YWCP.DDBH '
      '  Group by YWDD.YSBH,YWCP.DDBH'
      '   ) YWDDM'
      'Left join YWCPMemo on YWCPMemo.DDBH=YWDDM.YSBH '
      'left join DDZL on YWDDM.YSBH=DDZL.DDBH '
      'left join YWDD on YWDDM.DDBH=YWDD.DDBH '
      'where 1=1 and DDZL.GSBH='#39'TBA'#39
      '   and YWDDM.DDBH like '#39'DV2207-0329%'#39)
    UpdateObject = UPDet2
    Left = 496
    Top = 192
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query2CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query2LastRem: TIntegerField
      FieldName = 'LastRem'
    end
    object Query2RKQty: TIntegerField
      FieldName = 'RKQty'
    end
    object Query2TRQty: TIntegerField
      FieldName = 'TRQty'
    end
    object Query2XHQty: TIntegerField
      FieldName = 'XHQty'
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query2ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query2DDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query2CTS: TIntegerField
      FieldName = 'CTS'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 496
    Top = 160
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '    Select YWCPMONTH.*,DDZL.ARTICLE,YWCPMemo.Memo '
      #9'From YWCPMONTH   '
      #9'Left join YWCPMemo on YWCPMemo.DDBH=YWCPMONTH.DDBH '
      #9'left join DDZL on YWCPMONTH.DDBH=DDZL.DDBH'
      #9'where YWCPMONTH.KCYEAR='#39'2022'#39'  '
      #9#9' and YWCPMONTH.KCMONTH='#39'06'#39)
    UpdateObject = UPDet1
    Left = 456
    Top = 192
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.YWCPMONTH.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.YWCPMONTH.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCPMONTH.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCPMONTH.Qty'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.YWCPMONTH.VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      Origin = 'DB.YWCPMONTH.VNACC'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.YWCPMONTH.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.YWCPMemo.Memo'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCPMONTH.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCPMONTH.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCPMONTH.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 160
  end
  object EXEQry: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 458
    Top = 266
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
    object RYMemo1: TMenuItem
      Caption = 'RY Memo'
    end
  end
  object UPDet1: TUpdateSQL
    ModifySQL.Strings = (
      'Update YWCPMONTH'
      'set'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  KCYEAR= :OLD_KCYEAR and'
      '  KCMONTH= :OLD_KCMONTH and'
      '  DDBH= :OLD_DDBH ')
    Left = 457
    Top = 227
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 498
    Top = 266
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object menu1: TMenuItem
      Caption = 'Dao tach don hang toan bo Thang'
      OnClick = menu1Click
    end
    object menu2: TMenuItem
      Caption = 'Xoa tach don hang toan bo Thang'
      OnClick = menu2Click
    end
    object menu3: TMenuItem
      Caption = 'Xem tach don hang chi tet'
      OnClick = menu3Click
    end
  end
  object UPDet2: TUpdateSQL
    ModifySQL.Strings = (
      'Update YWCPMemo'
      'set'
      '  Memo =:Memo,'
      '  UserID = :UserID,'
      '  UserDate =:UserDate'
      'where'
      '  DDBH =:OLD_DDBH')
    InsertSQL.Strings = (
      'Insert into YWCPMemo'
      '   (DDBH, Memo, UserID, UserDate, YN)'
      'Values'
      '   (:DDBH, :Memo, :UserID, :UserDate, :YN) ')
    Left = 497
    Top = 227
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 1234
    Top = 298
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select  DDBH,Sum(Qty) as Qty '
      'from YWCPMONTH_DDZLTR'
      'where DDBH1=:DDBH'
      'Group by DDBH')
    Left = 1248
    Top = 448
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object StringField1: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCPMONTH_DDZLTR.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query4Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCPMONTH_DDZLTR.Qty'
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 1248
    Top = 480
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'SELECT*'
      'FROM YWCPMONTH_DDZLTR')
    UpdateObject = UpdateSQL3
    Left = 1232
    Top = 232
    object StringField4: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCPMONTH_DDZL_TR.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1DDBH1: TStringField
      FieldName = 'DDBH1'
      Origin = 'DB.YWCPMONTH_DDZL_TR.DDBH1'
      FixedChar = True
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCPMONTH_DDZL_TR.Qty'
    end
    object Query3KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.YWCPMONTH_DDZLTR.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query3KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.YWCPMONTH_DDZLTR.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField5: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCPMONTH_DDZL_TR.USERID'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCPMONTH_DDZL_TR.USERDATE'
    end
    object StringField6: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCPMONTH_DDZL_TR.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 1272
    Top = 232
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCPMONTH_DDZLTR'
      'Set'
      '      KCYEAR=:KCYEAR,'
      '      KCMONTH=:KCMONTH,'
      '      DDBH= :DDBH, '
      '      DDBH1= :DDBH1,'
      '      Qty =:Qty,'
      '      UserID= :UserID,'
      '      UserDate= :UserDate'
      'where'
      '  DDBH=:OLD_DDBH'
      '  And   DDBH1=:OLD_DDBH1')
    InsertSQL.Strings = (
      'insert into YWCPMONTH_DDZLTR'
      '  (KCYEAR, KCMONTH, DDBH, DDBH1, Qty, UserID, UserDate,YN)'
      'values'
      
        '  (:KCYEAR, :KCMONTH, :DDBH, :DDBH1, :Qty, :UserID, :UserDate,:Y' +
        'N)'
      '')
    DeleteSQL.Strings = (
      'Delete YWCPMONTH_DDZLTR'
      'where '
      '       DDBH= :OLD_DDBH'
      'and     DDBH1=:OLD_DDBH1')
    Left = 1232
    Top = 264
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 1200
    Top = 232
  end
  object query_excelTBA: TQuery
    DatabaseName = 'DB'
    Left = 564
    Top = 195
  end
end
