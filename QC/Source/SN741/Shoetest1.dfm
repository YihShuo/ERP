object ShoeTest: TShoeTest
  Left = 452
  Top = 312
  Width = 1300
  Height = 650
  Caption = 'ShoeTest'
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
    Width = 1292
    Height = 619
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'ShoeTest'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 360
          Top = 12
          Width = 49
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SCBH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 563
          Top = 51
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label18: TLabel
          Left = 520
          Top = 12
          Width = 104
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season/Buyno'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 704
          Top = 13
          Width = 58
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 829
          Top = 13
          Width = 37
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 664
          Top = 46
          Width = 138
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FD/ProductionLine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BB1: TBitBtn
          Left = 8
          Top = 8
          Width = 50
          Height = 50
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
        object BB2: TBitBtn
          Left = 57
          Top = 8
          Width = 49
          Height = 50
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
          Left = 106
          Top = 8
          Width = 49
          Height = 50
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
          Left = 154
          Top = 8
          Width = 50
          Height = 50
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
          Left = 203
          Top = 8
          Width = 50
          Height = 50
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
          Left = 252
          Top = 8
          Width = 49
          Height = 50
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
          Left = 301
          Top = 8
          Width = 49
          Height = 50
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
        object Edit1: TEdit
          Left = 411
          Top = 9
          Width = 97
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object userdatecheck: TCheckBox
          Left = 370
          Top = 49
          Width = 117
          Height = 13
          Caption = 'ReceiveDate'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DTP3: TDateTimePicker
          Left = 473
          Top = 43
          Width = 89
          Height = 24
          Date = 43553.674587893520000000
          Format = 'yyyy/MM/dd'
          Time = 43553.674587893520000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DTP4: TDateTimePicker
          Left = 573
          Top = 43
          Width = 89
          Height = 24
          Date = 43553.674587893520000000
          Format = 'yyyy/MM/dd'
          Time = 43553.674587893520000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object Edit2: TEdit
          Left = 626
          Top = 9
          Width = 69
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object Edit3: TEdit
          Left = 764
          Top = 9
          Width = 39
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object Edit4: TEdit
          Left = 868
          Top = 9
          Width = 133
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object Edit5: TEdit
          Left = 804
          Top = 43
          Width = 175
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object ComboBox1: TComboBox
          Left = 1008
          Top = 9
          Width = 81
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 15
          Text = 'ComboBox1'
          Items.Strings = (
            ''
            'CDC'
            'VA12')
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 73
        Width = 1284
        Height = 143
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 40
          Top = 50
          Width = 62
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 32
          Top = 82
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Serial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 240
          Top = 49
          Width = 77
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Result'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 260
          Top = 81
          Width = 57
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Comment'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 228
          Top = 114
          Width = 89
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FailureReason'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 27
          Top = 115
          Width = 75
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestReason'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 712
          Top = 49
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Remark'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 481
          Top = 82
          Width = 102
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ApprovedUserID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 511
          Top = 114
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'InspectedID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 528
          Top = 49
          Width = 55
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Standard'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 712
          Top = 81
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FilePath'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 55
          Top = 16
          Width = 47
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
        object Label15: TLabel
          Left = 216
          Top = 15
          Width = 55
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 429
          Top = 15
          Width = 37
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 712
          Top = 15
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 940
          Top = 16
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Department'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 704
          Top = 109
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ReportNO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 104
          Top = 46
          Width = 98
          Height = 24
          Color = clScrollBar
          DataField = 'TestID'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 104
          Top = 78
          Width = 98
          Height = 24
          Color = clScrollBar
          DataField = 'serial'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 111
          Width = 98
          Height = 24
          Color = clScrollBar
          DataField = 'testreason'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBComboBox1: TDBComboBox
          Left = 319
          Top = 46
          Width = 117
          Height = 24
          DataField = 'Result'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'Release'
            'Rejected')
          ParentFont = False
          TabOrder = 3
        end
        object DBComboBox2: TDBComboBox
          Left = 319
          Top = 78
          Width = 117
          Height = 24
          DataField = 'Comment'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          Items.Strings = (
            'Material failure'
            'Poor Priming'
            'Poor Pressing'
            'Poor Roughing'
            'Other')
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 319
          Top = 111
          Width = 117
          Height = 24
          DataField = 'FailureReason'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 585
          Top = 46
          Width = 118
          Height = 24
          DataField = 'Standard'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 585
          Top = 78
          Width = 118
          Height = 24
          DataField = 'ApprovedUserID'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 585
          Top = 111
          Width = 118
          Height = 24
          DataField = 'InspectedID'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 787
          Top = 46
          Width = 134
          Height = 24
          DataField = 'Remark'
          DataSource = DataSource2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object BBD: TBitBtn
          Left = 962
          Top = 63
          Width = 60
          Height = 40
          Caption = 'Download'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = BBDClick
          Glyph.Data = {
            BA030000424DBA030000000000003600000028000000130000000F0000000100
            18000000000084030000120B0000120B00000000000000000000FFFFFFFCFCFC
            7474741919190909090B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
            0B0B0B0B0B0B0B3A3A3AAEAEAEFFFFFFFFFFFF000000FEFEFE1212121616169F
            9F9FBDBDBDB9B9B9B9B9B9B9B9B9BABABAC1C1C1BABABAB9B9B9B9B9B9BBBBBB
            BABABA6A6A6A000000535353FFFFFF000000787878171717FAFAFAFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFCBCBCB000000B0B0B0000000121212B2B2B2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF9E9E9E000000959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF7E7E7E313131000000000000D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
            97970000000000000000008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9
            000000000000242424959595FFFFFFFFFFFFFFFFFFFFFFFF9191910000000000
            00000000000000000000898989FFFFFFFFFFFFFFFFFFFFFFFFD7D7D700000000
            0000919191000000E6E6E6FFFFFFFFFFFFFFFFFFBABABAC8C8C83D3D3D000000
            363636C8C8C8B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF8585852E2E2E000000FFFF
            FF3E3E3E000000505050D3D3D3FFFFFFFFFFFFFFFFFF545454000000494949FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2000000ADADAD000000FFFFFFFFFFFF
            A2A2A2000000CCCCCCFFFFFFFFFFFFFFFFFF4D4D4D000000434343FFFFFFFFFF
            FFFFFFFFFFFFFF828282000000626262FFFFFF000000FFFFFFFFFFFFFDFDFD0A
            0A0ABABABAFFFFFFFFFFFFFFFFFF5757570000004F4F4FFFFFFFFFFFFFFFFFFF
            FFFFFF4F4F4F373737FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4949492D2D
            2DFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF5B
            5B5B4F4F4FFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4F4F40000002F2F2F
            BBBBBBC0C0C0989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000009797
            97FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEDEDED3E3E3E05050507
            0707000000A2A2A2FFFFFFFFFFFFFFFFFFFFFFFF5F5F5F070707F5F5F5FFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9EFEFEF9393
            930000004F4F4FA8A8A89F9F9F2D2D2D000000C6C6C6FFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE
            4D4D4D1919191F1F1F5F5F5FEDEDEDFFFFFFFFFFFFFFFFFFFFFFFF000000}
          Layout = blGlyphTop
        end
        object DBEdit9: TDBEdit
          Left = 787
          Top = 78
          Width = 174
          Height = 24
          Color = clScrollBar
          DataField = 'FilePath'
          DataSource = DataSource2
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object BBU: TBitBtn
          Left = 1021
          Top = 63
          Width = 55
          Height = 40
          Caption = 'Upload'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = BBUClick
          Glyph.Data = {
            BA030000424DBA030000000000003600000028000000130000000F0000000100
            18000000000084030000120B0000120B00000000000000000000FFFFFFF9F9F9
            6363630000000000000000000000000000000000000000000000000000000000
            00000000000000222222A2A2A2FFFFFFFFFFFF000000FEFEFE000000212121AC
            ACACD0D0D0CCCCCCCCCCCCCDCDCDD8D8D8DEDEDED8D8D8CDCDCDCCCCCCCECECE
            CBCBCB7878780000004F4F4FFFFFFF0000007777771B1B1BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB2B2B2868686B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFD0D0D0000000AFAFAF000000050505AFAFAFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3B3B3B0000003B3B3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF7C7C7C2A2A2A000000000000DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF494949000000494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8
            000000000000212121898989FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFF4D4D
            4D0000004D4D4DFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFD1D1D100000000
            0000999999000000DEDEDEFFFFFFFFFFFFFFFFFF747474373737131313000000
            1313133939396D6D6DFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B2C2C2C000000FFFF
            FF4040400000004F4F4FD2D2D2FFFFFFECECEC25252500000000000000000022
            2222E8E8E8FFFFFFFFFFFFFFFFFFCACACA000000B2B2B2000000FFFFFFFFFFFF
            9D9D9D000000C5C5C5FFFFFFFFFFFFF8F8F82F2F2F000000292929F4F4F4FFFF
            FFFFFFFFFFFFFF818181000000616161FFFFFF000000FFFFFFFFFFFFFEFEFE12
            1212B8B8B8FFFFFFFFFFFFFFFFFFF2F2F2232323EDEDEDFFFFFFFFFFFFFFFFFF
            FFFFFF404040404040FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4949493131
            31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D
            4D4D5D5D5DFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFECECEC000000373737
            BBBBBBC0C0C0959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0707079393
            93FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE8E8E832323203030301
            0101000000AAAAAAFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C090909ECECECFFFFFF
            FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7ECECEC8383
            830000005C5C5CC2C2C2B3B3B33B3B3B000000BABABAFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4
            363636000000000000535353E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF000000}
          Layout = blGlyphTop
        end
        object DBEdit10: TDBEdit
          Left = 104
          Top = 12
          Width = 98
          Height = 24
          Color = clScrollBar
          DataField = 'Season'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit11: TDBEdit
          Left = 273
          Top = 12
          Width = 79
          Height = 24
          Color = clScrollBar
          DataField = 'Stage'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 468
          Top = 12
          Width = 235
          Height = 24
          Color = clScrollBar
          DataField = 'Article'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit13: TDBEdit
          Left = 787
          Top = 12
          Width = 134
          Height = 24
          Color = clScrollBar
          DataField = 'FD'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit14: TDBEdit
          Left = 1012
          Top = 12
          Width = 98
          Height = 24
          Color = clScrollBar
          DataField = 'Department'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit15: TDBEdit
          Left = 786
          Top = 106
          Width = 295
          Height = 24
          Color = clScrollBar
          DataField = 'reportNO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 216
        Width = 537
        Height = 375
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 2
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 535
          Height = 373
          Align = alClient
          DataSource = DataSource1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'TestNO'
              Footers = <>
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'SCBH'
              Footers = <>
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'reportNO'
              Footers = <>
              Title.Caption = 'ReportNO'
              Width = 201
            end
            item
              EditButtons = <>
              FieldName = 'Userdate'
              Footers = <>
              Width = 115
            end
            item
              EditButtons = <>
              FieldName = 'GSBH'
              Footers = <>
              Width = 61
            end>
        end
      end
      object Panel4: TPanel
        Left = 537
        Top = 216
        Width = 747
        Height = 375
        Align = alClient
        Caption = 'Panel4'
        TabOrder = 3
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 745
          Height = 373
          Align = alClient
          DataSource = DataSource2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'TestID'
              Footers = <>
              OnEditButtonClick = DBGridEh2Columns0EditButtonClick
            end
            item
              EditButtons = <>
              FieldName = 'serial'
              Footers = <>
              Title.Caption = 'Serial'
              Width = 85
            end
            item
              Color = clSilver
              EditButtons = <>
              FieldName = 'testreason'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'TestReason'
              Width = 144
            end
            item
              EditButtons = <>
              FieldName = 'Result'
              Footers = <>
              PickList.Strings = (
                'Release'
                'Rejected')
              Width = 98
            end
            item
              EditButtons = <>
              FieldName = 'Comment'
              Footers = <>
              PickList.Strings = (
                'Material failure'
                'Poor Priming'
                'Poor Pressing'
                'Poor Roughing'
                'Other')
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'Times'
              Footers = <>
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'FailureReason'
              Footers = <>
              Width = 126
            end
            item
              EditButtons = <>
              FieldName = 'Remark'
              Footers = <>
              Width = 91
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'UserID'
              Footers = <>
              ReadOnly = True
              Width = 75
            end
            item
              Color = clScrollBar
              EditButtons = <>
              FieldName = 'UserDate'
              Footers = <>
              ReadOnly = True
              Width = 88
            end
            item
              EditButtons = <>
              FieldName = 'ApprovedUserID'
              Footers = <>
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'InspectedID'
              Footers = <>
              Width = 79
            end
            item
              EditButtons = <>
              FieldName = 'Standard'
              Footers = <>
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'TestNO'
              Footers = <>
              Width = 102
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ShoeTestReport'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 73
        Align = alTop
        TabOrder = 0
        object Label28: TLabel
          Left = 8
          Top = 13
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 200
          Top = 46
          Width = 114
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FD/ProductionLine'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 8
          Top = 45
          Width = 42
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TestID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 643
          Top = 19
          Width = 7
          Height = 13
          Caption = '~'
        end
        object Label27: TLabel
          Left = 472
          Top = 14
          Width = 74
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DateRange'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 200
          Top = 14
          Width = 114
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Model(Internal)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn1: TBitBtn
          Left = 776
          Top = 8
          Width = 50
          Height = 50
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
        object BitBtn7: TBitBtn
          Left = 837
          Top = 8
          Width = 49
          Height = 50
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn7Click
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
        object Edit9: TEdit
          Left = 52
          Top = 9
          Width = 133
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Edit6: TEdit
          Left = 52
          Top = 41
          Width = 133
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DateTimePicker1: TDateTimePicker
          Left = 553
          Top = 11
          Width = 89
          Height = 24
          Date = 43553.674587893520000000
          Format = 'yyyy/MM/dd'
          Time = 43553.674587893520000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DateTimePicker2: TDateTimePicker
          Left = 653
          Top = 11
          Width = 89
          Height = 24
          Date = 43553.674587893520000000
          Format = 'yyyy/MM/dd'
          Time = 43553.674587893520000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit7: TEdit
          Left = 316
          Top = 41
          Width = 149
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 316
          Top = 9
          Width = 149
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 73
        Width = 1284
        Height = 143
        Align = alTop
        TabOrder = 1
        object Label29: TLabel
          Left = 360
          Top = 80
          Width = 119
          Height = 46
          Caption = 'Times:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 488
          Top = 96
          Width = 86
          Height = 29
          Caption = 'Label30'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label31: TLabel
          Left = 576
          Top = 80
          Width = 153
          Height = 46
          Caption = 'Passing:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 736
          Top = 96
          Width = 86
          Height = 29
          Caption = 'Label32'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label33: TLabel
          Left = 824
          Top = 80
          Width = 132
          Height = 46
          Caption = 'Failure:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 960
          Top = 96
          Width = 86
          Height = 29
          Caption = 'Label34'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label35: TLabel
          Left = 8
          Top = 8
          Width = 123
          Height = 46
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 360
          Top = 8
          Width = 218
          Height = 46
          Caption = 'Department:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 8
          Top = 80
          Width = 127
          Height = 46
          Caption = 'TestID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit16: TDBEdit
          Left = 132
          Top = 16
          Width = 200
          Height = 37
          Color = clScrollBar
          DataField = 'Article'
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 132
          Top = 88
          Width = 200
          Height = 37
          Color = clScrollBar
          DataField = 'TestID'
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 580
          Top = 16
          Width = 200
          Height = 37
          Color = clScrollBar
          DataField = 'ProductionLine'
          DataSource = DataSource3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 216
        Width = 1284
        Height = 375
        Align = alClient
        DataSource = DataSource3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'TestID'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'Model'
            Footers = <>
            Title.Caption = 'Model(Internal)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ProductionLine'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'Result'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'FailureReason'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select case when left(shoetest.ypdh,4)='#39'LAIV'#39' then '#39'DC'#39' when lef' +
        't(shoetest.ypdh,4)='#39'LAIK'#39' then '#39'DC'#39' when left(shoetest.ypdh,4)='#39 +
        'LAIT'#39' then '#39'TechRoom'#39' end Department,shoetest.Article,shoetest.S' +
        'eason,Shoetest.Stage,shoetest.FD,lab_shoetest.TestNO,lab_shoetes' +
        't.SCBH,lab_shoetest.Userdate,lab_shoetest.yn,lab_shoetest.GSBH,l' +
        'ab_shoetest.reportNO from lab_shoetest'
      'left join shoetest on shoetest.testno=lab_shoetest.scbh'
      'where 1=2  ')
    Left = 172
    Top = 388
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      Origin = 'DB.lab_shoetest.TestNO'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.lab_shoetest.SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Userdate: TDateTimeField
      FieldName = 'Userdate'
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
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1Department: TStringField
      FieldName = 'Department'
      FixedChar = True
      Size = 8
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object r: TStringField
      FieldName = 'reportNO'
      FixedChar = True
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 172
    Top = 340
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'Select lab_shoetests.TestNO,lab_shoetests.serial,lab_testreason.' +
        'testreason,lab_shoetests.TestID,lab_shoetests.Result,lab_shoetes' +
        'ts.Comment,lab_shoetests.FailureReason,'
      
        'lab_shoetests.Remark,lab_shoetests.UserID,lab_shoetests.UserDate' +
        ',lab_shoetests.ApprovedUserID,lab_shoetests.InspectedID,lab_shoe' +
        'tests.Standard, lab_shoetests.FilePath,'#39#39' YN,'
      'lab_shoetests.Times from lab_shoetests'
      
        'left join lab_testreason on lab_testreason.testid=lab_shoetests.' +
        'testid'
      'where TestNO=:TestNO')
    UpdateObject = UpdateSQL2
    Left = 669
    Top = 380
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object Query2TestID: TStringField
      FieldName = 'TestID'
      Origin = 'DB.lab_shoetests.TestID'
      FixedChar = True
    end
    object Query2Result: TStringField
      FieldName = 'Result'
      Origin = 'DB.lab_shoetests.Result'
      FixedChar = True
    end
    object Query2Comment: TStringField
      FieldName = 'Comment'
      Origin = 'DB.lab_shoetests.Comment'
      FixedChar = True
    end
    object Query2FailureReason: TStringField
      FieldName = 'FailureReason'
      Origin = 'DB.lab_shoetests.FailureReason'
      FixedChar = True
      Size = 200
    end
    object Query2Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.lab_shoetests.Remark'
      FixedChar = True
      Size = 200
    end
    object Query2UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.lab_shoetests.UserID'
      FixedChar = True
      Size = 50
    end
    object Query2UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.lab_shoetests.UserDate'
    end
    object Query2ApprovedUserID: TStringField
      FieldName = 'ApprovedUserID'
      Origin = 'DB.lab_shoetests.ApprovedUserID'
      FixedChar = True
      Size = 50
    end
    object Query2TestNO: TStringField
      FieldName = 'TestNO'
      Origin = 'DB.lab_shoetests.TestNO'
      FixedChar = True
      Size = 11
    end
    object Query2testreason: TStringField
      FieldName = 'testreason'
      FixedChar = True
      Size = 200
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2InspectedID: TStringField
      FieldName = 'InspectedID'
      FixedChar = True
      Size = 50
    end
    object Query2Standard: TStringField
      FieldName = 'Standard'
      FixedChar = True
      Size = 200
    end
    object Query2serial: TIntegerField
      FieldName = 'serial'
    end
    object Query2FilePath: TStringField
      FieldName = 'FilePath'
    end
    object Query2Times: TIntegerField
      FieldName = 'Times'
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update  lab_shoetests'
      'set'
      'result=:result,'
      'Comment=:Comment,'
      'FailureReason=:FailureReason,'
      'Remark=:Remark,'
      'UserID=:UserID,'
      'UserDate=:UserDate,'
      'ApprovedUserID=:ApprovedUserID,'
      'InspectedID=:InspectedID,'
      'Standard=:Standard,'
      'Times=:Times'
      
        'where TestID=:OLD_TestID and TestNO=:OLD_TestNO and serial=:OLD_' +
        'serial'
      '')
    InsertSQL.Strings = (
      'insert into Lab_ShoeTests'
      
        '(TestNO,TestID,serial,Result,Comment,FailureReason,Remark,UserID' +
        ',UserDate,ApprovedUserID,InspectedID,Standard,Times)'
      'Values'
      
        '(:TestNO,:TestID,:serial,:Result,:Comment,:FailureReason,:Remark' +
        ',:UserID ,:UserDate ,:ApprovedUserID,:InspectedID,:Standard,:Tim' +
        'es)'
      '')
    DeleteSQL.Strings = (
      'delete  lab_shoetests'
      
        'where  TestID=:OLD_TestID and TestNO=:OLD_TestNO and serial=:OLD' +
        '_serial'
      '')
    Left = 669
    Top = 428
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 669
    Top = 340
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 709
    Top = 380
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 1016
    Top = 352
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 1016
    Top = 392
    object Query3TestNo: TStringField
      FieldName = 'TestNo'
    end
    object Query3TestID: TStringField
      FieldName = 'TestID'
    end
    object Query3SCBH: TStringField
      FieldName = 'SCBH'
    end
    object Query3Result: TStringField
      FieldName = 'Result'
      Size = 0
    end
    object Query3FailureReason: TStringField
      FieldName = 'FailureReason'
    end
    object Query3Remark: TStringField
      FieldName = 'Remark'
    end
    object Query3UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query3Article: TStringField
      FieldName = 'Article'
    end
    object Query3Model: TStringField
      FieldName = 'Model'
    end
    object Query3ProductionLine: TStringField
      FieldName = 'ProductionLine'
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 1056
    Top = 392
  end
end
