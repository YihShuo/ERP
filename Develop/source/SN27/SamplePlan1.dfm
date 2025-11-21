object SamplePlan: TSamplePlan
  Left = 175
  Top = 113
  Width = 1382
  Height = 744
  Caption = 'SamplePlan'
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
    Width = 1366
    Height = 705
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TB Planning'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 677
        Align = alClient
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1356
          Height = 104
          Align = alTop
          Color = clGray
          TabOrder = 0
          object Label5: TLabel
            Left = 798
            Top = 75
            Width = 49
            Height = 20
            Caption = 'MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 402
            Top = 70
            Width = 140
            Height = 20
            Caption = 'Warehouse_MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 785
            Top = 52
            Width = 72
            Height = 27
            DataField = 'FD'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 1058
            Top = 75
            Width = 49
            Height = 20
            Caption = 'MEMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 1059
            Top = 59
            Width = 52
            Height = 20
            Caption = 'Plannig'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
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
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
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
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
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
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
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
            Font.Height = -15
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
            Font.Height = -15
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
          object FD_Memo: TDBMemo
            Left = 853
            Top = 8
            Width = 199
            Height = 90
            Color = clScrollBar
            DataField = 'DeveloperMemo'
            DataSource = MEMODS
            ReadOnly = True
            TabOrder = 6
          end
          object DBMemo1: TDBMemo
            Left = 551
            Top = 8
            Width = 196
            Height = 90
            Color = clScrollBar
            DataField = 'WarehoueMemo'
            DataSource = MEMODS
            TabOrder = 7
          end
          object BBB5: TBitBtn
            Left = 755
            Top = 8
            Width = 49
            Height = 39
            Hint = 'Save Current'
            Caption = 'Save'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Visible = False
            OnClick = BBB5Click
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
          object Button1: TButton
            Left = 12
            Top = 7
            Width = 45
            Height = 49
            Caption = 'Query'
            TabOrder = 9
            OnClick = Button1Click
          end
          object BBB6: TBitBtn
            Left = 804
            Top = 8
            Width = 49
            Height = 39
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            Visible = False
            OnClick = BBB6Click
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
          object DBMemo2: TDBMemo
            Left = 1117
            Top = 7
            Width = 202
            Height = 91
            Color = clScrollBar
            DataField = 'PlanningMemo'
            DataSource = DataSource1
            TabOrder = 11
          end
          object Button3: TButton
            Left = 13
            Top = 64
            Width = 61
            Height = 21
            Caption = 'Plan'
            TabOrder = 12
            Visible = False
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 75
            Top = 64
            Width = 61
            Height = 21
            Caption = 'PlanAll'
            TabOrder = 13
            Visible = False
            OnClick = Button4Click
          end
          object BDT6: TBitBtn
            Left = 370
            Top = 7
            Width = 52
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Excel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnClick = BDT6Click
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
          object BDT7: TBitBtn
            Left = 422
            Top = 7
            Width = 59
            Height = 49
            Hint = 'Modify Current'
            Caption = 'XLS KPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            OnClick = BDT7Click
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
        object ToolPanel: TPanel
          Left = 1
          Top = 105
          Width = 1356
          Height = 156
          Align = alTop
          Color = clGray
          TabOrder = 1
          object Label1: TLabel
            Left = 179
            Top = 11
            Width = 15
            Height = 13
            Caption = 'SR'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 157
            Top = 31
            Width = 37
            Height = 13
            Caption = 'TestNO'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label8: TLabel
            Left = 426
            Top = 31
            Width = 16
            Height = 13
            Caption = 'LAI'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label9: TLabel
            Left = 584
            Top = 16
            Width = 7
            Height = 13
            Caption = '~'
          end
          object Label2: TLabel
            Left = 21
            Top = 11
            Width = 36
            Height = 13
            Caption = 'Season'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 29
            Top = 31
            Width = 28
            Height = 13
            Caption = 'Stage'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label10: TLabel
            Left = 299
            Top = 11
            Width = 34
            Height = 13
            Caption = 'Groups'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 293
            Top = 31
            Width = 40
            Height = 13
            Caption = 'Groups2'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Frozen: TLabel
            Left = 535
            Top = 31
            Width = 32
            Height = 13
            Caption = 'Frozen'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 51
            Width = 49
            Height = 13
            Caption = 'Developer'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label14: TLabel
            Left = 150
            Top = 51
            Width = 44
            Height = 13
            Caption = 'DevType'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 290
            Top = 51
            Width = 43
            Height = 13
            Caption = 'SubType'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 421
            Top = 53
            Width = 30
            Height = 13
            Caption = 'Serino'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Edit1: TEdit
            Left = 196
            Top = 7
            Width = 85
            Height = 21
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 196
            Top = 27
            Width = 85
            Height = 21
            TabOrder = 1
          end
          object UserDatecheck: TCheckBox
            Left = 427
            Top = 10
            Width = 15
            Height = 17
            Caption = 'ReceiveDate:'
            Checked = True
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            State = cbChecked
            TabOrder = 3
          end
          object dtp1: TDateTimePicker
            Left = 538
            Top = 7
            Width = 87
            Height = 21
            Date = 41675.431051550920000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431051550920000000
            TabOrder = 4
          end
          object dtp2: TDateTimePicker
            Left = 625
            Top = 7
            Width = 87
            Height = 21
            Date = 41675.431356041660000000
            Format = 'yyyy/MM/dd'
            Time = 41675.431356041660000000
            TabOrder = 5
          end
          object Edit4: TEdit
            Left = 59
            Top = 7
            Width = 86
            Height = 21
            TabOrder = 6
          end
          object Edit5: TEdit
            Left = 59
            Top = 27
            Width = 86
            Height = 21
            TabOrder = 7
          end
          object Panel3: TPanel
            Left = 904
            Top = 104
            Width = 293
            Height = 66
            Caption = 'Panel3'
            TabOrder = 8
            Visible = False
            object DBGrid1: TDBGrid
              Left = 1
              Top = 1
              Width = 291
              Height = 64
              Align = alClient
              DataSource = MEMODS
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Visible = False
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TestNO'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Memo1'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Memo2'
                  Visible = True
                end>
            end
          end
          object Edit6: TEdit
            Left = 335
            Top = 7
            Width = 80
            Height = 21
            TabOrder = 9
          end
          object Edit7: TEdit
            Left = 335
            Top = 27
            Width = 80
            Height = 21
            TabOrder = 10
          end
          object DBGridEh2: TDBGridEh
            Left = 7
            Top = 72
            Width = 442
            Height = 98
            Color = clGray
            DataSource = REplanDS
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 11
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'type1'
                Footers = <>
                Title.Caption = 'Type'
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'CuttingPlanQty'
                Footers = <>
                Title.Caption = 'Cutting|Re-Plan'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'StitchingPlanQty'
                Footers = <>
                Title.Caption = 'Stitching|Re-Plan'
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'AssemblyPlanQty'
                Footers = <>
                Title.Caption = 'Assembly|Re-Plan'
                Width = 89
              end>
          end
          object DBGridEh3: TDBGridEh
            Left = 869
            Top = 13
            Width = 481
            Height = 53
            Color = clGray
            DataSource = DataSource3
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 12
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'PreparationDate_1'
                Footers = <>
                Title.Caption = 'Vat tu Mat'
                Width = 106
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'S_material'
                Footers = <>
                Title.Caption = 'Vat tu May'
                Width = 105
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'insole_send'
                Footers = <>
                Title.Caption = 'Vat tu Go'
                Width = 106
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'lace_send'
                Footers = <>
                Title.Caption = 'Vat tu BaoBi'
                Width = 106
              end>
          end
          object Edit3: TEdit
            Left = 572
            Top = 28
            Width = 27
            Height = 21
            TabOrder = 13
            Text = '14'
          end
          object ComboBox2: TComboBox
            Left = 444
            Top = 7
            Width = 88
            Height = 21
            ItemHeight = 13
            TabOrder = 14
            Text = 'TBreceive'
            Items.Strings = (
              'TBreceive'
              'TB_OK'
              'MaterialOG'
              'MaterialSQ'
              'MaterialOK'
              'CuttingSQ'
              'CuttingOK'
              'StitchingSQ'
              'StitchingOK'
              'AssemblySQ'
              'AssemblyOK'
              'PackingOK'
              'PrintingPlan')
          end
          object dtp11: TDateTimePicker
            Left = 546
            Top = 47
            Width = 83
            Height = 21
            Date = 41675.000000000000000000
            Format = 'HH:mm:ss'
            Time = 41675.000000000000000000
            Kind = dtkTime
            TabOrder = 15
            Visible = False
          end
          object dtp22: TDateTimePicker
            Left = 629
            Top = 47
            Width = 84
            Height = 21
            Date = 41675.999305555550000000
            Format = 'HH:mm:ss'
            Time = 41675.999305555550000000
            Kind = dtkTime
            TabOrder = 16
            Visible = False
          end
          object Edit8: TEdit
            Left = 59
            Top = 47
            Width = 86
            Height = 21
            TabOrder = 17
          end
          object Edit9: TEdit
            Left = 196
            Top = 47
            Width = 85
            Height = 21
            TabOrder = 18
          end
          object Edit10: TEdit
            Left = 335
            Top = 47
            Width = 80
            Height = 21
            TabOrder = 19
          end
          object CheckBox1: TCheckBox
            Left = 451
            Top = 72
            Width = 79
            Height = 13
            Caption = 'Planning'
            TabOrder = 20
            OnClick = CheckBox1Click
          end
          object GSDHCheckBox: TCheckBox
            Left = 613
            Top = 30
            Width = 116
            Height = 17
            Caption = 'Only this DC data'
            TabOrder = 21
          end
          object ComboBox3: TComboBox
            Left = 444
            Top = 27
            Width = 79
            Height = 21
            ItemHeight = 13
            TabOrder = 2
            Items.Strings = (
              ''
              'V'
              'K'
              'T')
          end
          object CB2: TCheckBox
            Left = 451
            Top = 86
            Width = 79
            Height = 14
            Caption = 'date change'
            TabOrder = 22
          end
          object CheckBox2: TCheckBox
            Left = 451
            Top = 102
            Width = 86
            Height = 14
            Caption = 'Done Empty'
            TabOrder = 23
          end
          object Edit11: TEdit
            Left = 457
            Top = 49
            Width = 65
            Height = 21
            TabOrder = 24
          end
          object CheckBox3: TCheckBox
            Left = 451
            Top = 118
            Width = 102
            Height = 14
            Caption = 'TestNO remake'
            TabOrder = 25
          end
          object Check_Delay: TCheckBox
            Left = 451
            Top = 134
            Width = 69
            Height = 14
            Caption = 'Delay TB'
            TabOrder = 26
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 261
          Width = 1356
          Height = 415
          Align = alClient
          TabOrder = 2
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1354
            Height = 413
            Align = alClient
            ColumnDefValues.Title.TitleButton = True
            DataSource = DataSource1
            EvenRowColor = clInfoText
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clBlack
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindow
            FooterFont.Height = -12
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnCellClick = DBGridEh1CellClick
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SQTBOK'
                Footers = <>
                Title.Caption = 'SQ|TB'
                Visible = False
                Width = 32
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'SQTBOKTime'
                Footers = <>
                Title.Caption = 'SQ|Time'
                Visible = False
                Width = 92
              end
              item
                ButtonStyle = cbsEllipsis
                EditButtons = <>
                FieldName = 'DP'
                Footers = <>
                Title.Caption = 'Delay|X'
                Visible = False
                Width = 31
                OnEditButtonClick = DBGridEh1Columns2EditButtonClick
              end
              item
                EditButtons = <>
                FieldName = 'DPEnglish'
                Footers = <>
                Title.Caption = 'Delay|Department'
                Visible = False
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'DR'
                Footers = <>
                Title.Caption = 'Delay|X'
                Visible = False
                Width = 35
              end
              item
                EditButtons = <>
                FieldName = 'DRTiengViet'
                Footers = <>
                Title.Caption = 'Delay|Ly do|Tieng Viet'
                Visible = False
                Width = 143
              end
              item
                EditButtons = <>
                FieldName = 'DREnglish'
                Footers = <>
                Title.Caption = 'Delay|Reason|English'
                Visible = False
                Width = 196
              end
              item
                EditButtons = <>
                FieldName = 'Serino'
                Footer.FieldName = 'Serino'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Serino no|'#24207#34399
                Width = 36
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Season|'#23395#31680
                Width = 45
              end
              item
                EditButtons = <>
                FieldName = 'stage'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Stage|Gigi Doan|'#38542#27573
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'groups'
                Footers = <>
                ReadOnly = True
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'groups2'
                Footers = <>
                ReadOnly = True
                Width = 49
              end
              item
                EditButtons = <>
                FieldName = 'testno'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Testno|'#36890#22577
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'SR'
                Width = 127
              end
              item
                EditButtons = <>
                FieldName = 'kflx'
                Footers = <>
                Title.Caption = 'Tech Level'
                Width = 36
              end
              item
                EditButtons = <>
                FieldName = 'shipdate'
                Footers = <>
                Title.Caption = 'Shipdate'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'ETC'
                Footers = <>
                Width = 130
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'TBReceiveDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'TB_Receive Planning team|SQ Nhan TB|TB Receive Date|'#36890#22577#25509#25910#26085
                Width = 107
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'warehousePL'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Pre-scheduling'
                Visible = False
                Width = 81
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'PreparationDate_first'
                Footers = <>
                Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Re-plan'
                Width = 69
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'PreparationDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Warehouse status|Kho trang thai|'#20489#24235#36914#24230#29376#24907'|Done (Scan)'
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'Print_Request'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Printing Color Sign|Need'
                Width = 30
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Print_Check'
                Footers = <>
                Title.Caption = 'Printing Color Sign|Finish'
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'E_embroidery'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Theu|Embroidery|'#38651#32353
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'E_embroidery_get'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Theu Ve|Embroidery Get|'#38936#38651#32353
                Visible = False
                Width = 83
              end
              item
                EditButtons = <>
                FieldName = 'printing'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'In|Printing|'#21360#21047
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'printing_get'
                Footers = <>
                ReadOnly = True
                Title.Caption = #128'In Ve|Printing Get|'#38936#21360#21047
                Visible = False
                Width = 81
              end
              item
                EditButtons = <>
                FieldName = 'printing_plan'
                Footers = <>
                Title.Caption = 'Printing_plan'
                Width = 110
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'cuttingPL'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Cutting status|Chat trang thai|'#35009#26039#36914#24230#29376#24907'|Pre-scheduling'
                Visible = False
                Width = 78
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'CutDate_first'
                Footers = <>
                Title.Caption = 'Cutting status|Chat trang thai|'#35009#26039#36914#24230#29376#24907'|Re-plan'
                Width = 130
              end
              item
                EditButtons = <>
                FieldName = 'CutDate_firstHour'
                Footers = <>
                PickList.Strings = (
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15'
                  '16')
                Title.Caption = 'Cutting status|Chat trang thai|'#35009#26039#36914#24230#29376#24907'|Hour'
                Width = 26
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'CutDate'
                Footer.FieldName = 'CutDate'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Cutting status|Chat trang thai|'#35009#26039#36914#24230#29376#24907'|Done (Scan)'
                Width = 90
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'StitchingPL'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Stitching status|May trang thai|'#37341#36554#36914#24230#29376#24907'|Pre-scheduling'
                Visible = False
                Width = 81
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'StitchingDate_first'
                Footers = <>
                Title.Caption = 'Stitching status|May trang thai|'#37341#36554#36914#24230#29376#24907'|Re-plan'
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'StitchingDate_firstHour'
                Footers = <>
                PickList.Strings = (
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15'
                  '16')
                Title.Caption = 'Stitching status|May trang thai|'#37341#36554#36914#24230#29376#24907'|Hour'
                Width = 29
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'StitchingDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Stitching status|May trang thai|'#37341#36554#36914#24230#29376#24907'|Done (Scan)'
                Width = 90
              end
              item
                EditButtons = <>
                FieldName = 'Rubber_Request'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Rubber Color Sign|Need'
                Width = 31
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'Rubber_Check'
                Footers = <>
                Title.Caption = 'Rubber Color Sign|Finish'
                Width = 33
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'AssemblyPL'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Assembly status|Go trang thai|'#25104#22411#36914#24230#29376#24907'|Pre-scheduling'
                Visible = False
                Width = 79
              end
              item
                Color = cl3DLight
                EditButtons = <>
                FieldName = 'AssembiyDate_first'
                Footers = <>
                Title.Caption = 'Assembly status|Go trang thai|'#25104#22411#36914#24230#29376#24907'|Re-plan'
                Width = 70
              end
              item
                EditButtons = <>
                FieldName = 'AssembiyDate_firstHour'
                Footers = <>
                PickList.Strings = (
                  '8'
                  '9'
                  '10'
                  '11'
                  '12'
                  '13'
                  '14'
                  '15'
                  '16')
                Title.Caption = 'Assembly status|Go trang thai|'#25104#22411#36914#24230#29376#24907'|Hour'
                Width = 28
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'Assemblecomplete'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Assembly status|Go trang thai|'#25104#22411#36914#24230#29376#24907'|Done (Scan)'
                Width = 91
              end
              item
                DisplayFormat = 'yyyy/MM/dd HH:mm'
                EditButtons = <>
                FieldName = 'Complete'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Packing Finished|Bao Bi OK|'#21253#35037#23436#25104#26085'|Done (Scan)'
                Width = 85
              end
              item
                EditButtons = <>
                FieldName = 'DevTp'
                Footers = <>
                ReadOnly = True
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'subTp'
                Footers = <>
                ReadOnly = True
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'FinishedShoe'
                Footer.FieldName = 'FinishedShoe'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Finished Shoe|'#25104#21697#38795
                Width = 50
              end
              item
                EditButtons = <>
                FieldName = 'HalfStitchingUpper'
                Footer.FieldName = 'HalfStitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Half Stitching Upper|'#21322#37341#36554#38795#38754
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'StitchingUpper'
                Footer.FieldName = 'StitchingUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Stitching Upper|'#37341#36554#38795#38754
                Width = 48
              end
              item
                EditButtons = <>
                FieldName = 'LastedUpper'
                Footer.FieldName = 'LastedUpper'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Lasted Upper|'#20837#26982#38795#38754
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'UpperComponent'
                Footer.FieldName = 'UpperComponent'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Upper Component|'#38754#37096#32068#20214
                Width = 61
              end
              item
                EditButtons = <>
                FieldName = 'BottomComponent'
                Footer.FieldName = 'BottomComponent'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Bottom Component|'#24213#37096#32068#20214
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'Sheet'
                Footer.FieldName = 'Sheet'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Sheet|'#35009#29255
                Width = 42
              end
              item
                EditButtons = <>
                FieldName = 'A4'
                Footer.FieldName = 'A4'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Width = 41
              end
              item
                EditButtons = <>
                FieldName = 'ColorSwatchBook'
                Footer.FieldName = 'ColorSwatchBook'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Color Swatch Book|'#33394#21345
                Width = 44
              end
              item
                EditButtons = <>
                FieldName = 'CFMSample'
                Footer.FieldName = 'CFMSample'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'CFM Sample|'#30906#35469#38795
                Width = 51
              end
              item
                EditButtons = <>
                FieldName = 'UpperAndBottomCE'
                Footer.FieldName = 'UpperAndBottomCE'
                Footer.ValueType = fvtSum
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Upper And BottomCE|'#38754#36319#24213'CE'
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Width = 117
              end
              item
                EditButtons = <>
                FieldName = 'Seetype'
                Footers = <>
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'LastNo'
                Footers = <>
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'Construction'
                Footers = <>
                Width = 120
              end
              item
                EditButtons = <>
                FieldName = 'YPDH'
                Footers = <>
                Title.Caption = 'MampleNo'
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Guide'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 0
        Top = 157
        Width = 1358
        Height = 97
        Align = alTop
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Grey background : Planning Team Check TB Finished '
          #28784#33394#32972#26223' : '#29983#31649#32080#26696#30340#36890#22577
          'nen xam : sinh quan da xac nhan hoan thanh thong bao')
        ParentFont = False
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 1358
        Height = 72
        Align = alTop
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Yellow background : See Stage and need 4 hours or 24 hours finis' +
            'h'
          #40643#33394#32972#26223' : SEE'#38542#27573#36890#22577#38656#35201#22312'4'#23567#26178#25110'24'#23567#26178#20839#23436#25104
          'nen mau vang : thu rap can tu 4 den 24 tieng')
        ParentFont = False
        TabOrder = 1
      end
      object Memo3: TMemo
        Left = 0
        Top = 72
        Width = 1358
        Height = 85
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          
            'Red Color : rubber color signed or printing color signed checkin' +
            'g not yet'
          #32005#33394#23383' : '#22823#24213#38991#33394#30906#35469#25110#32773#21360#21047#38991#33394#30906#35469#36996#26410#30906#35469#23436#25104
          'mau do : can ky mau de lon hoac in ky mau chua ok')
        ParentFont = False
        TabOrder = 2
      end
      object Memo4: TMemo
        Left = 0
        Top = 254
        Width = 1358
        Height = 85
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Green color: TB was delayed'
          'Mau xanh: TB bi tre tien do')
        ParentFont = False
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Daily Completion Rate'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1358
        Height = 73
        Align = alTop
        TabOrder = 0
        object ComboBox1: TComboBox
          Left = 20
          Top = 15
          Width = 88
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Cutting'
          Items.Strings = (
            'Cutting'
            'Stitching'
            'Assembly')
        end
        object DTP4: TDateTimePicker
          Left = 201
          Top = 15
          Width = 87
          Height = 21
          Date = 41675.431356041660000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431356041660000000
          TabOrder = 1
        end
        object DTP3: TDateTimePicker
          Left = 114
          Top = 15
          Width = 87
          Height = 21
          Date = 41675.431051550920000000
          Format = 'yyyy/MM/dd'
          Time = 41675.431051550920000000
          TabOrder = 2
        end
        object Button2: TButton
          Left = 320
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 73
        Width = 1358
        Height = 604
        Align = alClient
        Color = clBlack
        DataSource = DS2
        EvenRowColor = clBlack
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clBlack
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWhite
        FooterFont.Height = -12
        FooterFont.Name = 'Arial'
        FooterFont.Style = []
        HorzScrollBar.Visible = False
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        UseMultiTitle = True
        VertScrollBar.VisibleMode = sbNeverShowEh
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PlanD'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWhite
            Footer.Font.Height = -16
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Ngay|Date|'#26085#26399
            Width = 114
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'PlanQty'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWhite
            Footer.Font.Height = -16
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Ke Hoach|Plan|'#35336#30059
            Width = 118
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'OKQty'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWhite
            Footer.Font.Height = -16
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Hoan Thanh|Finish|'#23436#25104
            Width = 117
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'Complete'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWhite
            Footer.Font.Height = -16
            Footer.Font.Name = 'Arial'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = '%|Complete|'#36948#25104#29575
            Width = 115
          end>
      end
    end
  end
  object shoetest: TQuery
    AfterScroll = shoetestAfterScroll
    DatabaseName = 'dB'
    SQL.Strings = (
      ''
      'select'
      
        'shoetestplan.Serino,ypzl.YPDH,shoetest.Season,shoetest.stage,gro' +
        'ups,groups2,shoetest.testno,shoetest.Article,TBReceiveDate,'
      
        'PreparationDate_first,case when (isnull(PreparationDate,'#39#39')<>'#39#39')' +
        ' and (isnull(S_material,'#39#39')<>'#39#39')  and (isnull(insole_send,'#39#39')<>'#39 +
        #39')  and (isnull(lace_send,'#39#39')<>'#39#39')  then warehouse.Wdate else nu' +
        'll end PreparationDate,'
      'CutDate_first ,CutDate,'
      'StitchingDate_first,StitchingDate,'
      'AssembiyDate_first,Assemblecomplete,'
      'Complete,'
      'isnull(bw01.qty,0) FinishedShoe,'
      'isnull(bw02.qty,0) HalfStitchingUpper,'
      'isnull(bw03.qty,0) StitchingUpper,'
      'isnull(bw04.qty,0) LastedUpper,'
      'isnull(bw05.qty,0) UpperComponent,'
      'isnull(bw06.qty,0) BottomComponent,'
      'isnull(bw07.qty,0) Sheet,'
      'isnull(bw08.qty,0) A4,'
      'isnull(bw09.qty,0) ColorSwatchBook,'
      'isnull(bw10.qty,0) CFMSample,'
      
        'isnull(bw11.qty,0) UpperAndBottomCE,DevTp,subTp,shoetest.FD,Prep' +
        'arationDate,S_material,insole_send,lace_send,shoetest.ETC,shoete' +
        'st.shipdate,shoetest.MemoPL PlanningMemo,shoetest.warehousePL,sh' +
        'oetest.cuttingPL,shoetest.StitchingPL,shoetest.AssemblyPL,'
      
        'shoetest.Print_Request,shoetest.Print_Check,shoetest.Rubber_Chec' +
        'k,shoetest.Rubber_Request,Shoetest.Seetype,kfxxzl.kflx,printing,' +
        'E_embroidery,shoetest.SQTBOK,shoetest.SQTBOKTime,printing_get,E_' +
        'embroidery_get,shoetestdelay.DP,shoetestdelay.DR,'
      
        'DP.YWSM DPEnglish,DR.YWSM DREnglish,DR.VWSM DRTiengViet,kfxxzl.X' +
        'TMH as LastNo,shoetest.CutDate_firstHour,shoetest.StitchingDate_' +
        'firstHour,shoetest.AssembiyDate_firstHour'
      'from shoetest'
      'left join shoetestplan on shoetest.testno = shoetestplan.testno'
      'left join shoetestDelay on shoetestDelay.testno=shoetest.testno'
      'left join shoetestDetail DP on DP.YYBH=shoetestDelay.DP'
      'left join shoetestDetail DR on DP.YYBH=shoetestDelay.DR'
      'left join ypzl on ypzl.YPDH=shoetest.YPDH'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.XieXing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39
      #9'group by parts,testno)bw01 on bw01.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '02'#39
      #9'group by parts,testno)bw02 on bw02.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '03'#39
      #9'group by parts,testno)bw03 on bw03.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '04'#39
      #9'group by parts,testno)bw04 on bw04.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '05'#39
      #9'group by parts,testno)bw05 on bw05.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '06'#39
      #9'group by parts,testno)bw06 on bw06.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '07'#39
      #9'group by parts,testno)bw07 on bw07.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '08'#39
      #9'group by parts,testno)bw08 on bw08.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '09'#39
      #9'group by parts,testno)bw09 on bw09.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '10'#39
      #9'group by parts,testno)bw10 on bw10.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '11'#39
      #9'group by parts,testno)bw11 on bw11.testno=shoetest.testno'
      'left join ('
      '  select testno,'
      '  (select max(Wdate)'
      
        '  from (values (PreparationDate),(S_material),(insole_send),(lac' +
        'e_send)) as cvalues(Wdate)'
      '  )AS Wdate'
      '  from shoetest )warehouse on warehouse.testno=shoetest.testno'
      'where  1=2'
      ' and shoetest.TBreceiveDate between'
      ' convert(smalldatetime,'#39'2022/01/16 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2022/02/15 23:59:00'#39')  '
      '')
    UpdateObject = updqry1
    Left = 153
    Top = 305
    object shoetestSerino: TIntegerField
      FieldName = 'Serino'
    end
    object shoetestSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object shoeteststage: TStringField
      FieldName = 'stage'
      FixedChar = True
      Size = 15
    end
    object shoetestgroups: TStringField
      FieldName = 'groups'
      FixedChar = True
      Size = 6
    end
    object shoetestgroups2: TStringField
      FieldName = 'groups2'
      FixedChar = True
      Size = 6
    end
    object shoetesttestno: TStringField
      FieldName = 'testno'
      FixedChar = True
      Size = 10
    end
    object shoetestArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object shoetestkflx: TStringField
      FieldName = 'kflx'
      FixedChar = True
      Size = 3
    end
    object shoetestETC: TDateTimeField
      FieldName = 'ETC'
    end
    object shoetestshipdate: TDateTimeField
      FieldName = 'shipdate'
    end
    object shoetestTBReceiveDate: TDateTimeField
      FieldName = 'TBReceiveDate'
    end
    object shoetestCutDate_first: TDateTimeField
      FieldName = 'CutDate_first'
    end
    object shoetestCutDate: TDateTimeField
      FieldName = 'CutDate'
    end
    object shoetestStitchingDate_first: TDateTimeField
      FieldName = 'StitchingDate_first'
    end
    object shoetestStitchingDate: TDateTimeField
      FieldName = 'StitchingDate'
    end
    object shoetestAssembiyDate_first: TDateTimeField
      FieldName = 'AssembiyDate_first'
    end
    object shoetestAssemblecomplete: TDateTimeField
      FieldName = 'Assemblecomplete'
    end
    object shoetestComplete: TDateTimeField
      FieldName = 'Complete'
    end
    object shoetestDevTp: TStringField
      FieldName = 'DevTp'
      FixedChar = True
      Size = 15
    end
    object shoetestsubTp: TStringField
      FieldName = 'subTp'
      FixedChar = True
      Size = 15
    end
    object shoetestFinishedShoe: TFloatField
      FieldName = 'FinishedShoe'
    end
    object shoetestHalfStitchingUpper: TFloatField
      FieldName = 'HalfStitchingUpper'
    end
    object shoetestStitchingUpper: TFloatField
      FieldName = 'StitchingUpper'
    end
    object shoetestLastedUpper: TFloatField
      FieldName = 'LastedUpper'
    end
    object shoetestUpperComponent: TFloatField
      FieldName = 'UpperComponent'
    end
    object shoetestBottomComponent: TFloatField
      FieldName = 'BottomComponent'
    end
    object shoetestSheet: TFloatField
      FieldName = 'Sheet'
    end
    object shoetestA4: TFloatField
      FieldName = 'A4'
    end
    object shoetestColorSwatchBook: TFloatField
      FieldName = 'ColorSwatchBook'
    end
    object shoetestCFMSample: TFloatField
      FieldName = 'CFMSample'
    end
    object shoetestUpperAndBottomCE: TFloatField
      FieldName = 'UpperAndBottomCE'
    end
    object shoetestwarehousePL: TDateTimeField
      FieldName = 'warehousePL'
    end
    object shoetestPreparationDate_first: TDateTimeField
      FieldName = 'PreparationDate_first'
    end
    object shoetestPreparationDate: TDateTimeField
      FieldName = 'PreparationDate'
    end
    object shoetestFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object shoetestS_material: TDateTimeField
      FieldName = 'S_material'
    end
    object shoetestinsole_send: TDateTimeField
      FieldName = 'insole_send'
    end
    object shoetestlace_send: TDateTimeField
      FieldName = 'lace_send'
    end
    object shoetestcuttingPL: TDateTimeField
      FieldName = 'cuttingPL'
    end
    object shoetestStitchingPL: TDateTimeField
      FieldName = 'StitchingPL'
    end
    object shoetestAssemblyPL: TDateTimeField
      FieldName = 'AssemblyPL'
    end
    object shoetestPrint_Request: TBooleanField
      FieldName = 'Print_Request'
    end
    object shoetestPrint_Check: TBooleanField
      FieldName = 'Print_Check'
    end
    object shoetestRubber_Check: TBooleanField
      FieldName = 'Rubber_Check'
    end
    object shoetestRubber_Request: TBooleanField
      FieldName = 'Rubber_Request'
    end
    object shoetestSeetype: TStringField
      FieldName = 'Seetype'
      FixedChar = True
      Size = 3
    end
    object shoetestprinting: TBooleanField
      FieldName = 'printing'
    end
    object shoetestprinting_get: TDateTimeField
      FieldName = 'printing_get'
    end
    object shoetestE_embroidery: TBooleanField
      FieldName = 'E_embroidery'
    end
    object shoetestE_embroidery_get: TDateTimeField
      FieldName = 'E_embroidery_get'
    end
    object shoetestPreparationDate_1: TDateTimeField
      FieldName = 'PreparationDate_1'
    end
    object shoetestSQTBOKTime: TDateTimeField
      FieldName = 'SQTBOKTime'
    end
    object shoetestSQTBOK: TBooleanField
      FieldName = 'SQTBOK'
      OnChange = shoetestSQTBOKChange
    end
    object shoetestPlanningMemo: TStringField
      FieldName = 'PlanningMemo'
      FixedChar = True
      Size = 255
    end
    object shoetestDP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 4
    end
    object shoetestDR: TStringField
      FieldName = 'DR'
      FixedChar = True
      Size = 4
    end
    object shoetestDPEnglish: TStringField
      FieldName = 'DPEnglish'
      FixedChar = True
      Size = 50
    end
    object shoetestDREnglish: TStringField
      FieldName = 'DREnglish'
      FixedChar = True
      Size = 50
    end
    object shoetestDRTiengViet: TStringField
      FieldName = 'DRTiengViet'
      FixedChar = True
      Size = 50
    end
    object shoetestLastNo: TStringField
      FieldName = 'LastNo'
      FixedChar = True
      Size = 30
    end
    object shoetestCutDate_firstHour: TStringField
      FieldName = 'CutDate_firstHour'
      FixedChar = True
      Size = 2
    end
    object shoetestStitchingDate_firstHour: TStringField
      FieldName = 'StitchingDate_firstHour'
      FixedChar = True
      Size = 2
    end
    object shoetestAssembiyDate_firstHour: TStringField
      FieldName = 'AssembiyDate_firstHour'
      FixedChar = True
      Size = 2
    end
    object shoetestConstruction: TStringField
      FieldName = 'Construction'
    end
    object shoetestprinting_plan: TDateTimeField
      FieldName = 'printing_plan'
    end
    object shoetestYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = shoetest
    Left = 153
    Top = 281
  end
  object updqry1: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetest'
      'set'
      '   PreparationDate_first=:PreparationDate_first,'
      '   CutDate_first=:CutDate_first,'
      '   StitchingDate_first=:StitchingDate_first,'
      '   AssembiyDate_first=:AssembiyDate_first,'
      '  ETC=:ETC,'
      '  MemoPL=:PlanningMemo,'
      '  warehousePL=:warehousePL,'
      '  CuttingPL=:CuttingPL,'
      '  StitchingPL=:StitchingPL,'
      '  AssemblyPL=:AssemblyPL,'
      '  Print_Check=:Print_Check,'
      '  Rubber_Check=:Rubber_Check,'
      '  SQTBOK=:SQTBOK,'
      '  SQTBOKTime=:SQTBOKTime,'
      '  CutDate_firstHour=:CutDate_firstHour,'
      '  StitchingDate_firstHour=:StitchingDate_firstHour,'
      '  AssembiyDate_firstHour=:AssembiyDate_firstHour'
      '  where'
      '   testno = :OLD_testno ')
    Left = 153
    Top = 337
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 113
    Top = 305
  end
  object MEMODS: TDataSource
    DataSet = MemoQry
    Left = 265
    Top = 281
  end
  object MemoQry: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select   TestNO,Cast(Memo1 as text) as DeveloperMemo,Cast(Memo2 ' +
        'as text) as WarehoueMemo  from shoetest'
      'where testno=:testno')
    Left = 265
    Top = 313
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'testno'
        ParamType = ptUnknown
        Size = 11
      end>
    object MemoQryDeveloperMemo: TMemoField
      FieldName = 'DeveloperMemo'
      BlobType = ftMemo
    end
    object MemoQryWarehoueMemo: TMemoField
      FieldName = 'WarehoueMemo'
      BlobType = ftMemo
    end
    object MemoQryTestNO: TStringField
      FieldName = 'TestNO'
      FixedChar = True
      Size = 10
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SUM(FinishedShoe)FinishedShoe,SUM(HalfStitchingUpper)Half' +
        'StitchingUpper,SUM(StitchingUpper) StitchingUpper,'
      
        'SUM(LastedUpper)LastedUpper,SUM(UpperComponent)UpperComponent,SU' +
        'M(BottomComponent) BottomComponent,'
      'SUM(Sheet)Sheet,SUM(A4)A4,SUM(ColorSwatchBook) ColorSwatchBook,'
      'SUM(CFMSample)CFMSample,SUM(UpperAndBottomCE) UpperAndBottomCE'
      ' from('
      'select'
      'isnull(bw01.qty,0) FinishedShoe,'
      'isnull(bw02.qty,0) HalfStitchingUpper,'
      'isnull(bw03.qty,0) StitchingUpper,'
      'isnull(bw04.qty,0) LastedUpper,'
      'isnull(bw05.qty,0) UpperComponent,'
      'isnull(bw06.qty,0) BottomComponent,'
      'isnull(bw07.qty,0) Sheet,'
      'isnull(bw08.qty,0) A4,'
      'isnull(bw09.qty,0) ColorSwatchBook,'
      'isnull(bw10.qty,0) CFMSample,'
      'isnull(bw11.qty,0) UpperAndBottomCE'
      'from shoetest'
      'left join shoetestplan on shoetest.testno = shoetestplan.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '01'#39
      #9'group by parts,testno)bw01 on bw01.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '02'#39
      #9'group by parts,testno)bw02 on bw02.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '03'#39
      #9'group by parts,testno)bw03 on bw03.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '04'#39
      #9'group by parts,testno)bw04 on bw04.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '05'#39
      #9'group by parts,testno)bw05 on bw05.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '06'#39
      #9'group by parts,testno)bw06 on bw06.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '07'#39
      #9'group by parts,testno)bw07 on bw07.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '08'#39
      #9'group by parts,testno)bw08 on bw08.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '09'#39
      #9'group by parts,testno)bw09 on bw09.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '10'#39
      #9'group by parts,testno)bw10 on bw10.testno=shoetest.testno'
      'left join ('
      
        #9'select sum(qty) qty,parts,testno from shoetest2 where parts='#39'BW' +
        '11'#39
      #9'group by parts,testno)bw11 on bw11.testno=shoetest.testno'
      'where  1=2'
      'and shoetestplan.groups like '#39'%22HSMS%'#39
      ' and TBreceivedate between'
      ' convert(datetime,'#39'2021-11-02'#39')'
      ' and  '
      ' convert(datetime,'#39'2021-12-02'#39')'
      ' )main')
    Left = 377
    Top = 316
    object Query2FinishedShoe: TFloatField
      FieldName = 'FinishedShoe'
    end
    object Query2HalfStitchingUpper: TFloatField
      FieldName = 'HalfStitchingUpper'
    end
    object Query2StitchingUpper: TFloatField
      FieldName = 'StitchingUpper'
    end
    object Query2LastedUpper: TFloatField
      FieldName = 'LastedUpper'
    end
    object Query2UpperComponent: TFloatField
      FieldName = 'UpperComponent'
    end
    object Query2BottomComponent: TFloatField
      FieldName = 'BottomComponent'
    end
    object Query2Sheet: TFloatField
      FieldName = 'Sheet'
    end
    object Query2A4: TFloatField
      FieldName = 'A4'
    end
    object Query2ColorSwatchBook: TFloatField
      FieldName = 'ColorSwatchBook'
    end
    object Query2CFMSample: TFloatField
      FieldName = 'CFMSample'
    end
    object Query2UpperAndBottomCE: TFloatField
      FieldName = 'UpperAndBottomCE'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 377
    Top = 284
  end
  object DataSource3: TDataSource
    DataSet = shoetest
    Left = 897
    Top = 261
  end
  object REPLANQRY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CuttingPlanQty.type as type1,CuttingPlanQty.CuttingPlanQt' +
        'y,StitchingPlanQty,AssemblyPlanQty from ('
      
        'select '#39'Re-Plan'#39' type,CuttingPlanQty from (select SUM(Qty) Cutti' +
        'ngPlanQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      
        'left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DE' +
        'VCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where convert(varchar,cutdate_first, 111) between'
      ' convert(smalldatetime,'#39'2021/12/08 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2022/01/07 23:59:00'#39') '
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper And B' +
        'ottom(CE)'#39')'
      ')main'
      ')CuttingPlanQty)CuttingPlanQty'
      ''
      'left join('
      
        'select '#39'Re-Plan'#39' Type,StitchingPlanQty from (select SUM(Qty) Sti' +
        'tchingPlanQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      
        'left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DE' +
        'VCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where convert(varchar,StitchingDate_first, 111) between'
      ' convert(smalldatetime,'#39'2021/12/08 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2022/01/07 23:59:00'#39') '
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitching U' +
        'pper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper And B' +
        'ottom(CE)'#39')'
      ')main'
      
        ')StitchingPlanQty)StitchingPlanQty on StitchingPlanQty.type=Cutt' +
        'ingPlanQty.type'
      ''
      ''
      ''
      'left join('
      
        'select '#39'Re-Plan'#39' Type,AssemblyPlanQty from (select SUM(Qty) Asse' +
        'mblyPlanQty from ('
      
        'select ShoeTestPlan.Serino,shoetestplan.groups,shoetestplan.grou' +
        'ps2,shoetest.TestNo,shoetest.Article,kfxxzl.KFLX,'
      'case'
      'when kflx='#39'TN'#39'  then '#39'TotalNew'#39
      'when kflx='#39'TN+'#39' then '#39'TotalNew+'#39
      'when kflx='#39'CU'#39'  then '#39'NewColor'#39
      'when kflx='#39'NU'#39'  then '#39'NewUpper'#39
      'when kflx='#39'NU+'#39' then '#39'NewUpper+'#39
      'when kflx='#39'NU-'#39' then '#39'NewUpper-'#39
      'when kflx='#39'NG'#39'  then '#39'NewGraphic'#39
      'when kflx='#39'MU'#39'  then '#39'NewMaterial'#39
      'when kflx='#39'MU+'#39' then '#39'NewMaterial+'#39
      'when kflx='#39'NP'#39'  then '#39'NewProcess'#39
      'when kflx='#39'NT'#39'  then '#39'NewBottomComponentTooling'#39
      'when kflx='#39'ND'#39'  then '#39'NewCuttingDies'#39
      'else '#39'Error'#39' end Type,'
      'shoetest.stage,shoetest.Purpose,shoetest.FD,'
      'shoetest2.Qty,'
      'shoetestDetail.ywsm,'
      'shoetest.SeeStage,shoetest.YPDH'
      'from shoetest'
      'left join shoetestplan on shoetestplan.TestNo=shoetest.TestNo'
      
        'left join (SELECT DEVCODE,max(kflx) kflx FROM kfxxzl GROUP BY DE' +
        'VCODE)kfxxzl on kfxxzl.DEVCODE=shoetest.Article'
      'left join shoetest2 on shoetest2.testno=shoetest.testno'
      'left join shoetestDetail on shoetestDetail.yybh=shoetest2.parts'
      'where convert(varchar,AssembiyDate_first, 111) between'
      ' convert(smalldatetime,'#39'2021/12/08 00:00:00'#39') '
      ' and  '
      ' convert(smalldatetime,'#39'2022/01/07 23:59:00'#39') '
      
        'and YWSM in ('#39'Finished Shoe'#39','#39'Lasted upper'#39','#39'CFM sample'#39','#39'Upper ' +
        'And Bottom(CE)'#39')'
      ')main'
      
        ')AssemblyPlanQty)AssemblyPlanQty on AssemblyPlanQty.type=Cutting' +
        'PlanQty.type'
      ''
      ''
      '')
    Left = 81
    Top = 573
    object REPLANQRYCuttingPlanQty: TFloatField
      FieldName = 'CuttingPlanQty'
    end
    object REPLANQRYStitchingPlanQty: TFloatField
      FieldName = 'StitchingPlanQty'
    end
    object REPLANQRYAssemblyPlanQty: TFloatField
      FieldName = 'AssemblyPlanQty'
    end
    object REPLANQRYtype1: TStringField
      FieldName = 'type1'
      FixedChar = True
      Size = 7
    end
  end
  object REplanDS: TDataSource
    DataSet = REPLANQRY
    Left = 81
    Top = 533
  end
  object DS2: TDataSource
    DataSet = QDaily
    Left = 584
    Top = 160
  end
  object QDaily: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT CONVERT(varchar, StitchingPlan,111) AS PlanD, SUM(SQplanQ' +
        'ty) AS PlanQty, SUM(OKqty) AS OKQty, convert(varchar,cast(ROUND(' +
        'SUM(OKqty)/SUM(SQplanQty)*100,2) as numeric(5,2)))+'#39'%'#39' Complete ' +
        'FROM ('
      
        '  SELECT main.TestNo, main.groups, main.Serino, main.stage, main' +
        '.Article, main.CuttingOK, convert(varchar,main.StitchingPlan, 11' +
        '1) AS StitchingPlan,'
      
        '  case when CONVERT(varchar(8), StitchingOK, 108) = '#39'00:00:00'#39' t' +
        'hen 0 else isnull(SQplan.Qty,0) end AS SQplanQty, convert(varcha' +
        'r,main.StitchingOK, 111) AS StitchingOK,'
      
        '  case when StitchingOK is null then 0 when CONVERT(varchar(8), ' +
        'StitchingOK, 108) = '#39'00:00:00'#39' then 0 when convert(varchar, Stit' +
        'chingPlan, 111) <> convert(varchar, StitchingOK, 111) then 0 els' +
        'e isnull(SQplan.Qty,0) end OKQty from ('
      
        '    select groups,Serino,ShoeTest.testno,stage,ShoeTest.Article,' +
        'CutDate CuttingOK,StitchingDate_first StitchingPlan,StitchingDat' +
        'e StitchingOK from ShoeTest'
      
        '    left join ShoeTestPlan on ShoeTestPlan.TestNo=ShoeTest.TestN' +
        'o'
      
        '    where  convert(varchar, StitchingDate_first, 111) between co' +
        'nvert(varchar, getdate()-7, 111) and convert(varchar, getdate(),' +
        ' 111)'
      '  ) AS main'
      '  left join ('
      '    select shoetest2.testno,SUM(Qty) Qty from shoetest2'
      
        '    left join shoetestDetail on shoetestDetail.yybh=shoetest2.pa' +
        'rts'
      
        '    WHERE YWSM in ('#39'Finished Shoe'#39','#39'Half Stitching Upper'#39','#39'Stitc' +
        'hing Upper'#39','#39'Lasted upper'#39','#39'Upper Component'#39','#39'CFM sample'#39','#39'Upper' +
        ' And Bottom(CE)'#39')'
      '    group by shoetest2.testno'
      '  ) AS SQplan on SQplan.TestNo=main.testno'
      ') AS main2'
      'group by StitchingPlan'
      'order by StitchingPlan desc'
      '')
    Left = 585
    Top = 220
    object QDailyPlanD: TStringField
      FieldName = 'PlanD'
      FixedChar = True
      Size = 30
    end
    object QDailyPlanQty: TBCDField
      FieldName = 'PlanQty'
      Precision = 32
      Size = 1
    end
    object QDailyOKQty: TBCDField
      FieldName = 'OKQty'
      Precision = 32
      Size = 1
    end
    object QDailyComplete: TStringField
      FieldName = 'Complete'
      FixedChar = True
      Size = 31
    end
  end
end
