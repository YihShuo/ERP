object LeaveData: TLeaveData
  Left = 0
  Top = 0
  Caption = 'LeaveData'
  ClientHeight = 635
  ClientWidth = 1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1059
    Height = 635
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #22806#31821#24185#37096#20986#21220#22577#21578
      object Splitter1: TSplitter
        Left = 0
        Top = 364
        Width = 1051
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 237
        ExplicitWidth = 842
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BB1: TBitBtn
          Left = 8
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Truy v'#7845'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
        end
        object BB2: TBitBtn
          Left = 56
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Th'#234'm'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 1
        end
        object BB3: TBitBtn
          Left = 104
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'S'#7917'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
          OnClick = BB3Click
        end
        object BB4: TBitBtn
          Left = 152
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Xo'#769'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 3
        end
        object BB6: TBitBtn
          Left = 248
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Hu'#777'y'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 4
          OnClick = BB6Click
        end
        object BB5: TBitBtn
          Left = 200
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'L'#432'u'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 5
          OnClick = BB5Click
        end
        object BB7: TBitBtn
          Left = 321
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
          ParentFont = False
          TabOrder = 6
          OnClick = BB7Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1051
        Height = 168
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 22
          Top = 13
          Width = 26
          Height = 16
          Caption = 'Date'
        end
        object Label4: TLabel
          Left = 57
          Top = 41
          Width = 37
          Height = 16
          Caption = 'S'#7889' th'#7867
        end
        object Label5: TLabel
          Left = 14
          Top = 72
          Width = 80
          Height = 16
          Caption = 'H'#7885' v'#224' t'#234'n Hoa'
        end
        object Label6: TLabel
          Left = 232
          Top = 39
          Width = 44
          Height = 16
          Caption = 'khu v'#7921'c'
        end
        object Label8: TLabel
          Left = 231
          Top = 71
          Width = 46
          Height = 16
          Caption = 'Ch'#7913'c v'#7909
        end
        object Label11: TLabel
          Left = 416
          Top = 71
          Width = 52
          Height = 16
          Caption = 'Ph'#226'n lo'#7841'i'
        end
        object Label7: TLabel
          Left = 7
          Top = 107
          Width = 53
          Height = 16
          Caption = 'Qu'#7889'c t'#7883'ch'
        end
        object Label9: TLabel
          Left = 5
          Top = 140
          Width = 51
          Height = 16
          Caption = 'Ngh'#7881' vi'#7879'c'
        end
        object Label10: TLabel
          Left = 431
          Top = 38
          Width = 36
          Height = 16
          Caption = #272#417'n v'#7883
        end
        object Button1: TButton
          Left = 519
          Top = 134
          Width = 75
          Height = 25
          Caption = 'Truy v'#7845'n'
          TabOrder = 0
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 53
          Top = 9
          Width = 102
          Height = 24
          Date = 44576.668729398140000000
          Format = 'yyyy/MM/dd'
          Time = 44576.668729398140000000
          TabOrder = 1
          OnChange = DTP1Change
        end
        object ED_ID1: TEdit
          Left = 100
          Top = 39
          Width = 121
          Height = 24
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 100
          Top = 69
          Width = 121
          Height = 24
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 283
          Top = 35
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object Edit4: TEdit
          Left = 473
          Top = 35
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit5: TEdit
          Left = 283
          Top = 69
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object Edit6: TEdit
          Left = 473
          Top = 69
          Width = 121
          Height = 24
          TabOrder = 7
        end
        object GroupBox2: TGroupBox
          Left = 66
          Top = 99
          Width = 528
          Height = 29
          TabOrder = 8
          object RB11: TRadioButton
            Left = 3
            Top = 9
            Width = 73
            Height = 17
            Caption = 'Toa'#768'n B'#244#803
            TabOrder = 0
          end
          object RB12: TRadioButton
            Left = 82
            Top = 7
            Width = 73
            Height = 17
            Hint = 'TW'
            Caption = #272'a'#768'i Loan'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RB13: TRadioButton
            Left = 165
            Top = 7
            Width = 92
            Height = 17
            Hint = 'CN'
            Caption = 'Trung Qu'#7889'c'
            TabOrder = 2
          end
          object RB14: TRadioButton
            Left = 263
            Top = 7
            Width = 92
            Height = 17
            Hint = 'PH'
            Caption = 'Philippines'
            TabOrder = 3
          end
          object RB15: TRadioButton
            Left = 355
            Top = 6
            Width = 80
            Height = 17
            Hint = 'VN'
            Caption = 'VietNam'
            TabOrder = 4
          end
          object RB16: TRadioButton
            Left = 441
            Top = 6
            Width = 83
            Height = 17
            Hint = 'IN'
            Caption = 'Indonesia'
            TabOrder = 5
          end
        end
        object GroupBox1: TGroupBox
          Left = 67
          Top = 131
          Width = 434
          Height = 29
          TabOrder = 9
          object RB21: TRadioButton
            Left = 3
            Top = 6
            Width = 73
            Height = 17
            Caption = 'Toa'#768'n B'#244#803
            TabOrder = 0
          end
          object RB22: TRadioButton
            Left = 82
            Top = 6
            Width = 103
            Height = 17
            Caption = 'Ch'#432'a Ngh'#7881' vi'#7879'c'
            Checked = True
            TabOrder = 1
            TabStop = True
          end
          object RB23: TRadioButton
            Left = 202
            Top = 7
            Width = 104
            Height = 17
            Caption = #272'a'#771' Ngh'#7881' vi'#7879'c'
            TabOrder = 2
          end
        end
        object CheckBox1: TCheckBox
          Left = 600
          Top = 107
          Width = 154
          Height = 17
          Caption = 'kh'#244'ng hi'#7875'n th'#7883' vi'#7879't nam'
          Checked = True
          State = cbChecked
          TabOrder = 10
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 233
        Width = 1051
        Height = 131
        Align = alTop
        DataSource = DSMas
        DynProps = <>
        FooterRowCount = 1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 2
        OnGetFooterParams = DBGridEh2GetFooterParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Factory'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            HideDuplicates = True
            Title.Caption = #24288#21312
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.Value = #21512#35336
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #24288#21029
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 148
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21934#20301#32317#20154#25976
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21488#31821
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38520#31821
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #33778#31821
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Others'
            Footers = <>
            Title.Caption = #21360#23612
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Absence'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #20241#20551'/'#35531#20551
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BusinessTrip'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #20986#24046#20154#25976
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Attendance'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #23526#20986#21220#20154#25976
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AttendanceRate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #20986#21220#29575
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AbsenceRate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.ValueType = fvtStaticText
            Footers = <>
            Title.Caption = #32570#21220#29575
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 65
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 368
        Width = 1051
        Height = 239
        Align = alClient
        DataSource = DSDet
        DynProps = <>
        FooterRowCount = 1
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 3
        OnDblClick = DBGridEh3DblClick
        OnEditButtonClick = DBGridEh3EditButtonClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            HideDuplicates = True
            Title.Caption = #24288#21312
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FactoryS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            HideDuplicates = True
            Title.Caption = #24288#21029
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 105
            OnUpdateData = DBGridEh3Columns1UpdateData
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footer.FieldName = 'ID'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #24037#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Department'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #21934#20301
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Position'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #32887#31281
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 70
          end
          item
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #22995#21517
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 104
          end
          item
            ButtonStyle = cbsNone
            CellButtons = <>
            Color = clBtnFace
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <>
            FieldName = 'NID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #22283#31821
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Phone'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #25163#27231'('#24120#29992')'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Phone2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #25163#27231'('#20633#29992')'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TelExt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #20998#27231
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = 'E-Mail'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Leave'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #20241#20551'/'#35531#20551
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BusinessTrip'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #20986#24046
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Remark'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Footers = <>
            Title.Caption = #20633#35387
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Sequence'
            Footers = <>
            Title.Caption = #25490#24207
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #22806#31821#24185#37096#35531#20551#36039#26009
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object BB1_2: TBitBtn
          Left = 8
          Top = 8
          Width = 49
          Height = 49
          Caption = 'Truy v'#7845'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
        end
        object BB2_2: TBitBtn
          Left = 56
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Th'#234'm'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 1
          OnClick = BB2_2Click
        end
        object BB3_2: TBitBtn
          Left = 104
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'S'#7917'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 2
          OnClick = BB3_2Click
        end
        object BB4_2: TBitBtn
          Left = 152
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Xo'#769'a'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 3
          OnClick = BB4_2Click
        end
        object BB6_2: TBitBtn
          Left = 248
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Hu'#777'y'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 4
          OnClick = BB6_2Click
        end
        object BB5_2: TBitBtn
          Left = 200
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'L'#432'u'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 5
          OnClick = BB5_2Click
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 65
        Width = 1051
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 19
          Top = 12
          Width = 37
          Height = 16
          Caption = 'S'#7889' th'#7867
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 174
          Top = 11
          Width = 54
          Height = 16
          Caption = 'H'#7885' v'#224' t'#234'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 345
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Truy v'#7845'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = Button2Click
        end
        object ED_ID: TEdit
          Left = 60
          Top = 9
          Width = 71
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = ED_IDChange
          OnKeyPress = ED_IDKeyPress
        end
        object ED_Name: TEdit
          Left = 231
          Top = 9
          Width = 93
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 131
          Top = 8
          Width = 18
          Height = 23
          Caption = '...'
          TabOrder = 3
          OnClick = Button3Click
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 106
        Width = 1051
        Height = 501
        Align = alClient
        DataSource = DS2
        DynProps = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24037#34399'|S'#7889' th'#7867
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22995#21517'|H'#7885' v'#224' t'#234'n'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Type'
            Footers = <>
            PickList.Strings = (
              #36820#22283#20241#20551
              #22312#22320#20241#20551
              #31532#19977#22320#20241#20551
              #20986#24046
              #20854#20182#20551#21029)
            Title.Caption = #20551#21029'|Type'
          end
          item
            CellButtons = <>
            DisplayFormat = 'yyyy/MM/dd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'StartDate'
            Footers = <>
            Title.Caption = #35531#20551#26085#26399'|Ng'#224'y b'#7855't '#273#7847'u'
            Width = 89
          end
          item
            CellButtons = <>
            DisplayFormat = 'yyyy/MM/dd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'EndDate'
            Footers = <>
            Title.Caption = #35531#20551#26085#26399'|Ng'#224'y K'#7871't th'#250'c'
            Width = 102
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            PickList.Strings = (
              #22312#22320#20241
              #36820#21488#28771
              #36820#20013#22283
              #31532#19977#22320#20241
              #20986#24046
              #20107#20551
              #30149#20551
              #38548#38626#20013)
            Title.Caption = #35498#26126'|Memo'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Caption = #20633#35387'|Ghi ch'#250
            Width = 127
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Agent'
            Footers = <>
            Title.Caption = #20195#29702#20154'|Agent'
            Width = 49
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NO'
            Footers = <>
            Title.Caption = #31532#24190#27425'|NO'
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FYear'
            Footers = <>
            Title.Caption = #20241#20551#24180#24230'|Year'
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26356#26032#20154'|UserID'
          end
          item
            CellButtons = <>
            DisplayFormat = 'yyyy/MM/dd'
            DynProps = <>
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26356#26032#26085#26399'|UserDate'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Query2: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    OnNewRecord = Query2NewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT LeaveData.*, Certificate.Name'
      'FROM LeaveData'
      'Left join Certificate on Certificate.ID=LeaveData.ID'
      'LEFT JOIN Directory ON Directory.ID = LeaveData.ID'
      'WHERE 1=1')
    Left = 152
    Top = 248
    object Query2ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query2Name: TWideStringField
      FieldName = 'Name'
      Size = 10
    end
    object Query2Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query2StartDate: TDateTimeField
      FieldName = 'StartDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2EndDate: TDateTimeField
      FieldName = 'EndDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2Remark: TWideStringField
      FieldName = 'Remark'
      Size = 30
    end
    object Query2Agent: TWideStringField
      FieldName = 'Agent'
      Size = 200
    end
    object Query2Memo: TStringField
      FieldName = 'Memo'
      Size = 10
    end
    object Query2FYear: TStringField
      FieldName = 'FYear'
      Size = 4
    end
    object Query2NO: TSmallintField
      FieldName = 'NO'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 152
    Top = 200
  end
  object UpdateSQL2: TMyADOUpdateSQL
    DataSet = Query2
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'Type'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StartDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'Memo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Agent'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'NO'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'FYear'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'YN'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_Type'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_StartDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE LeaveData SET'
      '  Type = :Type,'
      '  StartDate = :StartDate,'
      '  EndDate = :EndDate,'
      '  Remark = :Remark,'
      '  Memo =:Memo,'
      '  Agent =:Agent,'
      '  NO =:NO,'
      '  FYear =:FYear,'
      '  UserID = :UserID,'
      '  UserDate = GETDATE(),'
      '  YN = :YN'
      'WHERE'
      '  ID = :OLD_ID AND'
      '  Type = :OLD_Type AND'
      '  StartDate = :OLD_StartDate')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_Type'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'OLD_StartDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    ZDeleteCommandObj.SQL.Strings = (
      'DELETE FROM LeaveData '
      'WHERE'
      '  ID = :OLD_ID AND'
      '  Type = :OLD_Type AND'
      '  StartDate = :OLD_StartDate')
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Type'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StartDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'EndDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'Agent'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end
      item
        Name = 'Memo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Remark'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'NO'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'FYear'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end
      item
        Name = 'UserID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZInsertCommandObj.SQL.Strings = (
      'INSERT INTO '
      
        '     LeaveData (ID, Type, StartDate, EndDate, Agent, Memo, Remar' +
        'k, NO, FYear, UserID, UserDate, YN)'
      'VALUES'
      
        '     (:ID, :Type, :StartDate, :EndDate,  :Agent, :Memo, :Remark,' +
        ' :NO, :FYear, :UserID, GETDATE(), '#39'1'#39')')
    SQLDelete = 
      'DELETE FROM LeaveData '#13#10'WHERE'#13#10'  ID = :OLD_ID AND'#13#10'  Type = :OLD' +
      '_Type AND'#13#10'  StartDate = :OLD_StartDate'
    SQLInsert = 
      'INSERT INTO '#13#10'     LeaveData (ID, Type, StartDate, EndDate, Agen' +
      't, Memo, Remark, NO, FYear, UserID, UserDate, YN)'#13#10'VALUES'#13#10'     ' +
      '(:ID, :Type, :StartDate, :EndDate,  :Agent, :Memo, :Remark, :NO,' +
      ' :FYear, :UserID, GETDATE(), '#39'1'#39')'
    SQLModify = 
      'UPDATE LeaveData SET'#13#10'  Type = :Type,'#13#10'  StartDate = :StartDate,' +
      #13#10'  EndDate = :EndDate,'#13#10'  Remark = :Remark,'#13#10'  Memo =:Memo,'#13#10'  ' +
      'Agent =:Agent,'#13#10'  NO =:NO,'#13#10'  FYear =:FYear,'#13#10'  UserID = :UserID' +
      ','#13#10'  UserDate = GETDATE(),'#13#10'  YN = :YN'#13#10'WHERE'#13#10'  ID = :OLD_ID AN' +
      'D'#13#10'  Type = :OLD_Type AND'#13#10'  StartDate = :OLD_StartDate'#13#10
    Left = 152
    Top = 296
  end
  object QSearch: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    Left = 200
    Top = 248
  end
  object QMaster: TADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Factory, Department, Total, TW, CN, PH,Others, Absence, B' +
        'usinessTrip, Total-Absence-BusinessTrip AS Attendance,'
      
        'CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4, 1)) ' +
        'AS AttendanceRate,'
      
        '100 - CAST((Total-Absence-BusinessTrip)*100.0/Total AS DECIMAL(4' +
        ', 1)) AS AbsenceRate FROM ('
      
        '  SELECT '#39'A'#24288#21312#39' AS Factory, '#39#38283#30332'-'#38795#24288'-'#24149#20698#39' AS Department, MAX(Total_T' +
        'W) + MAX(Total_CN) + MAX(Total_PH) + MAX(Total_Others) AS Total,'
      
        '  MAX(Total_TW) AS TW, MAX(Total_CN) AS CN, MAX(Total_PH) AS PH,' +
        ' MAX(Total_Others) AS Others,'
      
        '  ISNULL(Absence, 0) AS Absence, ISNULL(BusinessTrip, 0) AS Busi' +
        'nessTrip FROM ('
      
        '    SELECT ISNULL(CASE WHEN Certificate.NID = '#39'TW'#39' THEN COUNT(Ce' +
        'rtificate.NID) END, 0) AS Total_TW,'
      
        '    ISNULL(CASE WHEN Certificate.NID = '#39'CN'#39' THEN COUNT(Certifica' +
        'te.NID) END, 0) AS Total_CN,'
      
        '    ISNULL(CASE WHEN Certificate.NID = '#39'PH'#39' THEN COUNT(Certifica' +
        'te.NID) END, 0) AS Total_PH,'
      
        '    ISNULL(CASE WHEN Certificate.NID NOT IN ('#39'TW'#39', '#39'CN'#39', '#39'PH'#39') T' +
        'HEN COUNT(Certificate.NID) END, 0) AS Total_Others '
      #9'FROM Certificate'
      #9'left join Directory on Certificate.ID=Directory.ID'
      
        #9'Left join Directory_Nationality on Directory_Nationality.NID=Ce' +
        'rtificate.NID'
      
        '    WHERE  IsNull(Certificate.Resigned,0)=0 and Directory.Factor' +
        'yS IN ('#39'009'#39','#39'General'#39', '#39'003'#39','#39'004'#39','#39'002'#39','#39'DC'#39','#39'006'#39') and Direct' +
        'ory.FID = '#39'01'#39' and Certificate.NID<>'#39'VN'#39' '
      '    GROUP BY Certificate.NID'
      '  ) AS Nationality'
      '  LEFT JOIN ('
      
        '    SELECT '#39'A'#24288#21312#39' AS Factory, '#39#38283#30332'-'#38795#24288'-'#24149#20698#39' AS Department, SUM(Absen' +
        'ce) AS Absence, SUM(BusinessTrip) AS BusinessTrip FROM ('
      '      SELECT'
      
        '      CASE WHEN Type <> '#39#20986#24046#39' THEN COUNT(DISTINCT LeaveData.ID) E' +
        'ND AS Absence,'
      
        '      CASE WHEN Type = '#39#20986#24046#39' THEN COUNT(DISTINCT LeaveData.ID) EN' +
        'D AS BusinessTrip FROM LeaveData'
      '      LEFT JOIN Directory ON Directory.ID = LeaveData.ID'
      
        '      WHERE CONVERT(DATETIME, '#39'2023/08/04'#39') BETWEEN StartDate AN' +
        'D CASE WHEN ISNULL(EndDate, '#39#39') = '#39#39' THEN CONVERT(DATETIME, '#39'300' +
        '0/01/01'#39') ELSE EndDate END'
      
        '      and Directory.FactoryS IN ('#39'009'#39','#39'General'#39', '#39'003'#39','#39'004'#39','#39'0' +
        '02'#39','#39'DC'#39','#39'006'#39') and Directory.FID = '#39'01'#39
      '      GROUP BY Type'
      '    ) AS LeaveData'
      '  ) AS LeaveData ON 1 = 1'
      '  GROUP BY Absence, BusinessTrip'
      ') AS AttendanceData')
    Left = 96
    Top = 248
    object QMasterFactory: TStringField
      FieldName = 'Factory'
      ReadOnly = True
      Size = 10
    end
    object QMasterDepartment: TStringField
      FieldName = 'Department'
      ReadOnly = True
      Size = 25
    end
    object QMasterTotal: TIntegerField
      FieldName = 'Total'
      ReadOnly = True
    end
    object QMasterTW: TIntegerField
      FieldName = 'TW'
      ReadOnly = True
    end
    object QMasterCN: TIntegerField
      FieldName = 'CN'
      ReadOnly = True
    end
    object QMasterPH: TIntegerField
      FieldName = 'PH'
      ReadOnly = True
    end
    object QMasterOthers: TIntegerField
      FieldName = 'Others'
      ReadOnly = True
    end
    object QMasterAbsence: TIntegerField
      FieldName = 'Absence'
      ReadOnly = True
    end
    object QMasterBusinessTrip: TIntegerField
      FieldName = 'BusinessTrip'
      ReadOnly = True
    end
    object QMasterAttendance: TIntegerField
      FieldName = 'Attendance'
      ReadOnly = True
    end
    object QMasterAttendanceRate: TBCDField
      FieldName = 'AttendanceRate'
      ReadOnly = True
      DisplayFormat = '#0.0%'
      Precision = 4
      Size = 1
    end
    object QMasterAbsenceRate: TBCDField
      FieldName = 'AbsenceRate'
      ReadOnly = True
      DisplayFormat = '#0.0%'
      Precision = 5
      Size = 1
    end
  end
  object DSMas: TDataSource
    DataSet = QMaster
    Left = 96
    Top = 200
  end
  object DSDet: TDataSource
    DataSet = QDetail
    Left = 96
    Top = 296
  end
  object UpdateDetail: TMyADOUpdateSQL
    DataSet = QDetail
    ZModifyCommandObj.Connection = DM2.ADOConn2
    ZModifyCommandObj.Parameters = <
      item
        Name = 'ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'PID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'Phone'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'Phone2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end
      item
        Name = 'TelExt'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 5
        Value = Null
      end
      item
        Name = 'Email'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'FID'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'FactoryS'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'Sequence'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'OLD_ID'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    ZModifyCommandObj.SQL.Strings = (
      'UPDATE Directory'
      'SET'
      '  ID = :ID, '
      '  DID= :DID,'
      '  PID = :PID,'
      '  Phone = :Phone,'
      '  Phone2 = :Phone2,'
      '  TelExt = :TelExt,'
      '  Email = :Email,'
      '  FID= :FID,'
      '  FactoryS = :FactoryS,'
      '  Sequence =:Sequence'
      'WHERE'
      '  ID = :OLD_ID')
    ZDeleteCommandObj.Connection = DM2.ADOConn2
    ZDeleteCommandObj.Parameters = <>
    ZInsertCommandObj.Connection = DM2.ADOConn2
    ZInsertCommandObj.Parameters = <>
    SQLModify = 
      'UPDATE Directory'#13#10'SET'#13#10'  ID = :ID, '#13#10'  DID= :DID,'#13#10'  PID = :PID,' +
      #13#10'  Phone = :Phone,'#13#10'  Phone2 = :Phone2,'#13#10'  TelExt = :TelExt,'#13#10' ' +
      ' Email = :Email,'#13#10'  FID= :FID,'#13#10'  FactoryS = :FactoryS,'#13#10'  Seque' +
      'nce =:Sequence'#13#10'WHERE'#13#10'  ID = :OLD_ID'#13#10
    Left = 96
    Top = 392
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 342
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Orderby3: TMenuItem
      Caption = #23566#20837#21517#23383#28165#21934#25490#24207'nh'#7853'p danh s'#225'ch t'#234'n s'#7855'p x'#7871'p'
      OnClick = Orderby3Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object OrderbyN1: TMenuItem
      Caption = #20197#19979#38918#24207'+1 theo th'#7913' t'#7921' sau'
      OnClick = OrderbyN1Click
    end
    object OrderbyN2: TMenuItem
      Caption = #20197#19979#38918#24207'- 1 theo th'#7913' t'#7921' sau'
      OnClick = OrderbyN2Click
    end
  end
  object QDetail: TMyADOQuery
    Connection = DM2.ADOConn2
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Directory.ID,Directory.DID, Directory_Department.Name as ' +
        'Department,Directory.PID, Directory_Position.Name as Position, C' +
        'ertificate.Name, Directory.Phone, Directory.Phone2, Directory.Te' +
        'lExt, Directory.Email,'
      
        '     Certificate.NID,Directory_Nationality.NID as Nationality,Di' +
        'rectory.FID, Directory_Factory.Name as Factory,'
      
        '     Directory.FactoryS, LeaveData.Leave, LeaveData.BusinessTrip' +
        ', LeaveData.Remark,Directory.Sequence'
      'FROM Directory'
      'Left join Certificate on Certificate.ID=Directory.ID'
      
        'Left join Directory_Factory on Directory_Factory.FID=Directory.F' +
        'ID'
      
        'Left join Directory_Department on Directory_Department.DID=Direc' +
        'tory.DID'
      
        'Left join Directory_Position on Directory_Position.PID=Directory' +
        '.PID'
      
        'Left join Directory_Nationality on Directory_Nationality.NID=Cer' +
        'tificate.NID'
      'LEFT JOIN ('
      
        '  SELECT ID, CASE WHEN Type <> '#39#20986#24046#39' THEN CONVERT(VARCHAR, StartD' +
        'ate, 111) + CASE WHEN ISNULL(EndDate, '#39#39') <> '#39#39' THEN '#39' ~ '#39' + CON' +
        'VERT(VARCHAR, EndDate, 111) ELSE '#39#39' END END + '#39' '#39' + Type AS Leav' +
        'e,'
      
        '  CASE WHEN Type = '#39#20986#24046#39' THEN CONVERT(VARCHAR, StartDate, 111) + ' +
        'CASE WHEN ISNULL(EndDate, '#39#39') <> '#39#39' THEN '#39' ~ '#39' + CONVERT(VARCHAR' +
        ', EndDate, 111) ELSE '#39#39' END END AS BusinessTrip, Remark FROM Lea' +
        'veData'
      
        '  WHERE CONVERT(DATETIME, '#39'2023/04/28'#39' ) BETWEEN StartDate AND C' +
        'ASE WHEN ISNULL(EndDate, '#39#39') = '#39#39' THEN CONVERT(DATETIME, '#39'3000/0' +
        '1/01'#39') ELSE EndDate END'
      ') AS LeaveData ON LeaveData.ID = Directory.ID'
      'WHERE IsNull(Certificate.Resigned,0)=0 '
      'ORDER BY  Directory.Sequence')
    Left = 96
    Top = 344
    object QDetailID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object QDetailDID: TStringField
      FieldName = 'DID'
      Size = 3
    end
    object QDetailDepartment: TStringField
      FieldName = 'Department'
      Size = 30
    end
    object QDetailPID: TStringField
      FieldName = 'PID'
      Size = 3
    end
    object QDetailPosition: TWideStringField
      FieldName = 'Position'
    end
    object QDetailName: TWideStringField
      FieldName = 'Name'
      Size = 5
    end
    object QDetailPhone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object QDetailPhone2: TStringField
      FieldName = 'Phone2'
      Size = 15
    end
    object QDetailTelExt: TStringField
      FieldName = 'TelExt'
      Size = 5
    end
    object QDetailEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object QDetailNID: TStringField
      FieldName = 'NID'
      Size = 3
    end
    object QDetailNationality: TStringField
      FieldName = 'Nationality'
      Size = 3
    end
    object QDetailFID: TStringField
      FieldName = 'FID'
      Size = 3
    end
    object QDetailFactory: TStringField
      FieldName = 'Factory'
      Size = 30
    end
    object QDetailFactoryS: TStringField
      FieldName = 'FactoryS'
    end
    object QDetailLeave: TStringField
      FieldName = 'Leave'
      ReadOnly = True
      Size = 74
    end
    object QDetailBusinessTrip: TStringField
      FieldName = 'BusinessTrip'
      ReadOnly = True
      Size = 63
    end
    object QDetailRemark: TWideStringField
      FieldName = 'Remark'
      Size = 30
    end
    object QDetailSequence: TIntegerField
      FieldName = 'Sequence'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'TXT|*.txt'
    Left = 152
    Top = 392
  end
end
